<?php
	session_start();
	$vrati = $_GET['vrati'];
	$kor = $_GET['kor'];
	$ocjena = $_POST['ocjena'];
	
	include('bp_spajanje.php');
	
	$upit = "select * from ocjena where ID_korisnik=$kor AND ID_natjecaj=$vrati;"; //da vidimo dal je korisnik vec ocijenio
	$rez = mysql_query($upit) or die(mysql_error());
	
	if(mysql_num_rows($rez) == 0){ //vidi, pa nisi ocijenio, ajde onda mozes
	
		$q = "insert into ocjena(ID_korisnik,ID_natjecaj,Ocjena) values($kor,$vrati,$ocjena);";
		mysql_query($q) or die(mysql_error());
		
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je ocijenio komentar.')";
			mysql_query($log) or die(mysql_error());
		//log
		
		echo 'Ocijenili ste komentar!';
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/detalji_natjecaj.php?id='.$vrati.'">';
		}
	else{//ipak jesi, ajd mozes promijeniti misljenje
		$q = "update ocjena set Ocjena=$ocjena where ID_korisnik=$kor AND ID_natjecaj=$vrati;";
		mysql_query($q) or die(mysql_error());
		
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je promijenio ocjenu komentara.')";
			mysql_query($log) or die(mysql_error());
		//log
		
		echo 'Vaša prethodna ocjena je promijenjena!';
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/detalji_natjecaj.php?natjecaj_id='.$vrati.'">';
	}
?>