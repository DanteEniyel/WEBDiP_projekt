<?php
	session_start();
	
	
	include('bp_spajanje.php');
	//$k=$_GET['korisnicko'];
	
	$naziv = $_POST['naziv'];
	$fakultet = $_POST['fakultet'];	
	$trajanje = $_POST['trajanje'];
	$opis = $_POST['opis'];
	$broj = $_POST['broj'];
	$trosak = $_POST['trosak'];
	$cijena = $_POST['cijena'];
	$financiranje = $_POST['financiranje'];
	$dokumentacija = $_POST['dok'];
	
	$datum_objave = date("dmyhis");
	$admin = $_SESSION['Korisnik'];
	$id_admin=mysql_query("select * from Korisnik where Korisnicko_ime = '$admin'");
	$id_a=mysql_fetch_row($id_admin);
	
	//echo $admin;
	
	
	$query = "insert into natjecaj(ID_natjecaj,ID_administrator,Fakultet_ID_fakultet,Naziv,Datum_objave,Trajanje_natjecaja,Opis,Broj_mjesta,Troskovi_prijave,Cijena_programa,Linije_financiranja,Dokumentacija) 
	values(default,$id_a[0],$fakultet,'$naziv','$datum_objave',$trajanje,'$opis',$broj,$trosak,$cijena,'$financiranje','$dokumentacija')";
	
	
	if(mysql_query($query)){
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik je kreirao natječaj.')";
			mysql_query($log) or die(mysql_error());
		//log
		echo 'Uspješno ste kreirali natječaj.';	
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
	}
	else{
		die(mysql_error());
	}


?>