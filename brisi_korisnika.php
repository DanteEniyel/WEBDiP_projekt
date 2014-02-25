<?php
	$id = $_GET['id'];
	session_start();
	include('bp_spajanje.php');
	
	$query = "delete from Korisnik where ID_korisnik=$id;";
	mysql_query($query) or die(mysql_error());
	$q = "delete from prijava where Korisnik_ID_korisnik=$id;";
	mysql_query($q) or die(mysql_error());
	//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Administrator obrisao korisnika.')";
		mysql_query($log) or die(mysql_error());
	//log
	//no more korisnik :D
	echo '<meta HTTP-EQUIV="REFRESH" content="0;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_korisnici_1.php">';
?>