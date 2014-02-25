<?php
	session_start();
	$id = $_GET['id_k'];	
	include('bp_spajanje.php');
	$q = "update Korisnik set Tip_korisnika_ID_tip_korisnika=3 where ID_korisnik=$id;";
	mysql_query($q) or die(mysql_error());
	//log
		$datum=date("d.m.y.");
		$vrijeme= date("H:i:s");
		$k= $_SESSION['Korisnik'];
		$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Administrator dodao administratora fakulteta.')";
		mysql_query($log) or die(mysql_error());
	//log
	echo '<meta HTTP-EQUIV="REFRESH" content="0;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_korisnici_1.php">';
?>