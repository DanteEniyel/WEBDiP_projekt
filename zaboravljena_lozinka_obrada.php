<?php
	$korisnicko = $_POST['korisnicko'];
	$e_mail = $_POST['e_mail'];
	include('bp_spajanje.php');
	
	$rs = "select * from Korisnik where Korisnicko_ime='$korisnicko' and Email_korisnik='$e_mail';"; //saftey triger, da ne bi svatko mijenjao kako mu dođe
	$res = mysql_query($rs) or die(mysql_error());
	
	if(mysql_fetch_row($res)==0){ //ako ne postoji korisnik
		echo 'Korisnik registriran s tom e-mail adresom ne postoji ili je adresa krivo unesena!';
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/zaboravljena_lozinka.php">';
	}
	else{ //ako imamo korisnika
	
		$upit = "select Email_korisnik from Korisnik where Korisnicko_ime='$korisnicko';";
		$rez = mysql_query($upit) or die(mysql_error());
		$red = mysql_fetch_row($rez);
		$e_mail = $red[0]; //we have e-mail :D
		
		function genRandomString() { //generiramo lozinku preko random stringa budući da je time funkcija tricky i nesigurna
		$duljina = 10;
		$znakovi = '0123456789abcdefghijklmnopqrstuvwxyz';
		$string = "";    
		for ($i = 0; $i < $duljina; $i++) {
			$string .= $znakovi[mt_rand(0, strlen($znakovi))];
		}
		return $string;
		}
		
		$novi_pass = genRandomString(); //u novi_pass varijablu spremamo novu lozinku
		
		$saljem = "$e_mail";
		$naziv = "Nova lozinka";
		$salje = "Jelena Valčić";
		$headers = "From: ".$salje;

		$message = 'Vaša lozinka je uspješno resetirana. Ona glasi: "'. $novi_pass . '" !';

		mail($saljem, $naziv, $headers, $message);
		
		$query = "update Korisnik set Lozinka='$novi_pass' where Korisnicko_ime='$korisnicko'";
		mysql_query($query) or die(mysql_error());
		
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisniku promijenjena lozinka.')";
			mysql_query($log) or die(mysql_error());
		//log
		
		echo 'Resetiranje lozinke uspješno. Kako bi saznali novu lozinku provjerite svoj e-mail.';
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
		echo "E-mail za aktivaciju je uspješno poslan!";
		
		
	}
?>
