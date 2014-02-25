<?php
	$id = $_GET['prijava'];
	session_start();
	include('bp_spajanje.php');
	$q = "update prijava set Status='Odbijeno' where ID_prijava=$id";
	mysql_query($q) or die(mysql_error());
	
	if (mysql_query($q)) {
						
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Administrator je odbio prijavu.')";
			mysql_query($log) or die(mysql_error());
		//log
		
		$k_id=mysql_query("select Korisnik_ID_korisnik from prijava where ID_prijava=$id");
		$k_r=mysql_fetch_row($k_id);
		
		$korisnik="select * from Korisnik where ID_korisnik =$k_r[0]";
		$p=mysql_query($korisnik) or die(mysql_error());
		$podaci=mysql_fetch_row($p);
		
		$saljem = $podaci[8];
		$naziv = "Vaša prijava je odobrena!";
		$salje = "Jelena Valčić";
		$headers = "From: ".$salje;

		$message = 'Poštovani '.$podaci[4].' '.$podaci[5].', vaša prijava je odbijena.';

		mail($saljem, $naziv, $headers, $message);
		echo "Prijava je uspješno odobrena!";
			
	} else {
		echo "greska zapisa u bazu";
		print_r($greske);
		echo ($greske);
		die(mysql_error());
	}
	echo '<meta HTTP-EQUIV="REFRESH" content="3;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/pregled_prijava.php?id_n='.$id.'">';
?>