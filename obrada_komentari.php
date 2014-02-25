<?php
	session_start();
	$vrati = $_GET['vrati'];
	$kor = $_GET['kor'];
	$komentar = $_POST['komentar'];

	include('bp_spajanje.php');
	
	$q = "insert into komentar(ID_komentar,Korisnik_ID_korisnik,Komentar_ID_komentar,Natjecaj_ID_natjecaj,Komentar) 
			values(default,$kor,1,$vrati,'$komentar')";
	mysql_query($q) or die(mysql_error());
	
	//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je komentirao natječaj.')";
			mysql_query($log) or die(mysql_error());
	//log
	echo '<meta HTTP-EQUIV="REFRESH" content="0;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/detalji_natjecaj.php?natjecaj_id='.$vrati.'">';
?>