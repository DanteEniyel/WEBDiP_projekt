<?php	

	include('bp_spajanje.php');
	include('jevalcic_sustavsko_vrijeme.php');
	$message = "";
	$korisnik = $_GET["korisnik"];
	
	if(isset($korisnik)){
		$rs = "SELECT * FROM Korisnik WHERE Korisnicko_ime='$korisnik'";
		$rezultat = mysql_query($rs);
		if(mysql_num_rows($rezultat) == 1){
		$red = mysql_fetch_object($rezultat);
			if(($vrijeme_sustava - ($red->token)) < (24*60*60)){
			$upit = "UPDATE Korisnik SET Status_korisnika_ID_status_Korisnika = 1 WHERE Korisnicko_ime='$korisnik'";
				if(mysql_query($upit)){
					//log
						$datum=date("d.m.y.");
						$vrijeme= date("H:i:s");
						$k= $_SESSION['Korisnik'];
						$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je aktiviran.')";
						mysql_query($log) or die(mysql_error());
					//log
					$message= "Aktivacija je uspješno odrađena!";
					header('Location: index.php');
				}else{
					$message = "Nešto je pošlo u krivo!";
				}
			}else{
				$message= "Vaš token više ne vrijedi!";
			}
		}else{
			$message = "Korisnik s korisničkim imenom:". $korisnik ." ne postoji!";
		}
	}else{
		$message = "Kako bi se aktivirali potrebno je korisničko ime!";
	}
	mysql_close();
	echo $message;
	
?>