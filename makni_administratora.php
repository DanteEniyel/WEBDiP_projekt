<?php
	session_start();
	$id = $_GET['id_k'];	
	include('bp_spajanje.php');
	$upit = "update Korisnik set Tip_korisnika_ID_tip_korisnika=2 where ID_korisnik=$id;";
	mysql_query($upit) or die(mysql_error());
	
	//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je oduzeo administratorska prava.')";
		mysql_query($log) or die(mysql_error());
	//log
	
	echo '<meta HTTP-EQUIV="REFRESH" content="0;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_korisnici_1.php">';
	
?>