<?php
	session_start();

	if($_SESSION["Korisnik"]=="admin"){
		$xml = file_get_contents("http://arka.foi.hr/PzaWeb/PzaWeb2004/config/pomak.xml");
		echo $xml;
		
		//$dat = $_SERVER['PHP_SELF']."jevalcic_pomak_vremena.xml";
		$file = fopen("jevalcic_pomak_vremena.xml", 'w') or die("Problem kod otvaranja datoteke!");
		fwrite($file, $xml);
		fclose($file);
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je promijenio vrijeme sustava.')";
			mysql_query($log) or die(mysql_error());
		//log
		echo 'Uspješno ste pomaknuli vrijeme!';
		echo '<meta HTTP-EQUIV="REFRESH" content="3;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
			
	}
	else{
		echo 'Nažalost vaše ovlasti ne dopuštaju mijenjanje vremena.';
	}

?>