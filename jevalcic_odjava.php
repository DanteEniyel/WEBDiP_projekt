<?php
	include('bp_spajanje.php');
	session_start();
	//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik se odjavio.')";
		mysql_query($log) or die(mysql_error());
	//log
	$_SESSION = array();
	session_destroy();
	header('Location:jevalcic_prijava.php');
?>