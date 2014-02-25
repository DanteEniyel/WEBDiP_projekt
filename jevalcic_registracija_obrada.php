<?php

	ob_start();
	session_start();

	require_once('recaptcha/recaptchalib.php');
	$privatekey = "6Ldf59ASAAAAAAmdGRcap9EpChF81ZZxM2dZZnxr";
	$resp = recaptcha_check_answer ($privatekey,
									$_SERVER["REMOTE_ADDR"],
									$_POST["recaptcha_challenge_field"],
									$_POST["recaptcha_response_field"]);

	if (!$resp->is_valid) {
		// What happens when the CAPTCHA was entered incorrectly
		echo "CAPTCHA je krivo unesena. Molim pokušajte ponovo.";
		echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_registracija.php">';
		
  } else {

		if (isset($_POST['ime'])) {

			include('bp_spajanje.php');

			$ime = $_POST['ime'];
			$prezime = $_POST['prezime'];
			$e_mail = $_POST['e_mail'];
			$korisnicko = $_POST['korisnicko'];
			$pass = $_POST['pass'];
			$potvrda = $_POST['potvrda'];
			$slika_tmp = $_FILES['slika']['tmp_name'];
			$slika_name = $_FILES['slika']['name'];
			$slika_type = $_FILES['slika']['type'];

			if (empty($ime)) {
				$greske['ime'] = "Ime nije unešeno!";
			}

			if (empty($prezime)) {
				$greske['prezime'] = "Prezime nije unešeno!";
			}

			if (empty($e_mail)) {
				$greske['e_mail'] = "E_mail nije unešen!";
			}

			if (empty($korisnicko)) {
				$greske['korisnicko'] = "Niste unijeli korisnicko ime!";
			}

			if (strlen($korisnicko) < 5) {
				$greske['korisnicko'] = "Korisničko ime mora sadržavati minimalno 5 znakova!";
			}

			if (strlen($korisnicko) > 30) {
				$greske['korisnicko'] = "Korisničko ime može kasimalno biti dugo 30 znakova!";
			}

			$rs = "SELECT * FROM Korisnik WHERE Korisnicko_ime LIKE '" . $korisnicko . "';";
			$taken = mysql_query($rs);
			if (mysql_num_rows($taken) > 0) {
				echo "Korisnik s tim korisničkim imenom već postoji!";
			}

			if (empty($pass)) {
				$greske['pass'] = "Lozinka nije unešena!";
			}

			if (!preg_match("/^.*(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\*\?\-\_\!\=\$\%\#\&]).{6,}$/", $pass)) {
				$greske['pass'] = "Lozinka se mora sastojati od velikih, malih slova te posebnih znakova!";
			}

			if (strlen($pass) < 6) {
				$greske['pass'] = "Lozinka mora sadržavati barem 6 znakova!";
			}

			if (strlen($pass) > 15) {
				$greske['pass'] = "Lozinka ne smije biti duža od 15 znakova!";
			}

			if (empty($potvrda)) {
				$greske['potvrda'] = "Niste potvrdili lozinku!";
			}

			if ($pass != $potvrda) {
				$greske['pass'] = "Zaporke se ne podudaraju!";
				$greske['potvrda'] = "";
			}

			
			if ((empty($greske)) & (mysql_num_rows($taken) == 0) & (preg_match("/^.*(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\*\?\-\_\!\=\$\%\#\&]).{6,}$/", $pass)) & ($pass == $potvrda)) {
				if ($slika_type == "image/jpeg") {
					$source = imagecreatefromjpeg($slika_tmp);
				} elseif ($slika_type == "image/png") {
					$source = imagecreatefrompng($slika_tmp);
				} elseif ($slika_type == "image/gif") {
					$source = imagecreatefromgif($slika_tmp);
				}

				list($width, $height) = getimagesize($slika_tmp);
				
				if ($width > $height) {
					$new_width = $width - ($width - 40);
					$new_heigth = ($height / $width) * $new_width;
				} else {
					$new_heigth = $height - ($height - 40);
					$new_width = ($width / $height) * $new_heigth;
				}
				$destination = imagecreatetruecolor($new_width, $new_heigth);
				imagecopyresampled($destination, $source, 0, 0, 0, 0, $new_width, $new_heigth, $width, $height);

				if ($slika_type == "image/jpeg") {
					imagejpeg($destination, "slike/thumbs/" . $slika_name, 100);
				} elseif ($slika_type == "image/png") {
					imagepng($destination, "slike/thumbs/" . $slika_name, 100);
				} elseif ($slika_type == "image/gif") {
					imagegif($destination, "slike/thumbs/" . $slika_name);
				}

				
				move_uploaded_file($slika_tmp, "slike/" . $slika_name);


				$token = time(); 


				$upit = "insert into Korisnik(ID_korisnik, Status_korisnika_ID_status_Korisnika, Tip_korisnika_ID_tip_korisnika, Fakultet_ID_fakultet,
						Ime, Prezime, Korisnicko_ime, Lozinka, Email_korisnik, Slika_korisnik, Token, Login_pokusaj, Blokiran)
						values('NULL','2', '2', 'NULL', '$ime', '$prezime', '$korisnicko', '$pass', '$e_mail', '$slika_name', '$token', 'NULL', '$t')" or die(mysql_error());

				
				if (mysql_query($upit)) {
					//log
						$datum=date("d.m.y.");
						$vrijeme= date("H:i:s");
						$k= $_SESSION['Korisnik'];
						$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik se registrirao.')";
						mysql_query($log) or die(mysql_error());
					//log
					
					$saljem = "$e_mail";
					$naziv = "Aktivacija korisničkog računa!";
					$salje = "Jelena Valčić";
					$headers = "From: ".$salje;

					$message = 'Kako bi uspješno aktivirali svoj korisnički račun molimo kliknite na slijedeći link: http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_aktivacija.php?korisnik=' . $korisnicko . '&token=' . $token;

					mail($saljem, $naziv, $headers, $message);
					echo "E-mail za aktivaciju je uspješno poslan!";
				}
			} else {
				echo "greska zapisa u bazu";
				print_r($greske);
				echo ($greske);
				die(mysql_error());
			}
		}

		else {
			echo "Huston we have a problem!";
			include('jevalcic_registracija.php');
		}

		if ($greske > 0) {
			echo "postoje greske >0";
			header('Location: jevalcic_registracija.php');
		} else {
			
			echo ($greske);
			print_r($greske);

			header('Location: index.php');
		}

	}
?>
