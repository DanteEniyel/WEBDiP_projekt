<?php

	session_start();
	include('bp_spajanje.php');
	
	$id = $_GET['id'];
	$ime = $_POST['ime'];
	$prezime = $_POST['prezime'];
	$e_mail = $_POST['e_mail'];
	$korisnicko = $_POST['korisnicko'];
	$pass = $_POST['pass'];
	$blokiran = $_POST['blokiran'];
	
	$upit = "update Korisnik SET Korisnicko_ime='$korisnicko', Ime='$ime', Prezime='$prezime', Email_korisnik='$e_mail', Lozinka='$pass' WHERE ID_korisnik='$id'";
	mysql_query($upit) or die(mysql_error);
	
	//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je promijenio podatke.')";
		mysql_query($log) or die(mysql_error());
	//log
	
	echo 'Uspješna izmjena korisnika!';
	echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
		

?>