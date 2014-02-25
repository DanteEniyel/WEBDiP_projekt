<?php

	session_start();
	include('bp_spajanje.php');
	
	$korisnicko=$_SESSION['Korisnik'];
	$natjecaj=$_GET['id'];
	$podaci = $_POST['podaci'];
	
	/*$file_tmp1 = $_FILES['slika']['tmp_name'];
	$file_name1 = $_FILES['slika']['name'];
	$fila_type1 = $_FILES['slika']['type'];
	$path1= "upload/".$HTTP_POST_FILES['ufile']['name'][0];
	$path2= "upload/".$HTTP_POST_FILES['ufile']['name'][1];
	$path3= "upload/".$HTTP_POST_FILES['ufile']['name'][2];
	
				if ($dokumentacija_type == "image/jpeg") {
					$source = imagecreatefromjpeg($slika_tmp);
				} elseif ($slika_type == "image/png") {
					$source = imagecreatefrompng($slika_tmp);
				} elseif ($slika_type == "image/gif") {
					$source = imagecreatefromgif($slika_tmp);
				}

				if ($slika_type == "image/jpeg") {
					imagejpeg($destination, "slike/thumbs/" . $slika_name, 100);
				} elseif ($slika_type == "image/png") {
					imagepng($destination, "slike/thumbs/" . $slika_name, 100);
				} elseif ($slika_type == "image/gif") {
					imagegif($destination, "slike/thumbs/" . $slika_name);
				}

				
				move_uploaded_file($slika_tmp, "slike/" . $slika_name);*/
		
	$datum_izrade = date("d.m.y.");
	
	//$k = $_SESSION['Korisnik'];
	$id_kor=mysql_query("select ID_korisnik from Korisnik where Korisnicko_ime = '$korisnicko'");
	$id_k=mysql_fetch_row($id_kor);
	
	
	$query1="insert into portfelj(ID_portfelj,Korisnik_ID_korisnik,Podaci,Datum_izrade)
		values(default, $id_k[0],'$podaci','$datum_izrade')";
		mysql_query($query1) or die(mysql_error());	
	echo $id_k[0];
	
	$id_p="select ID_portfelj from portfelj where Korisnik_ID_korisnik='$korisnicko'";
	$i_p=mysql_query($id_p) or die(mysql_error());	
	$p_i=mysql_fetch_row($i_p);
	echo $id_p;
	
	$query2 = "insert into prijava(ID_prijava,Natjecaj_ID_natjecaj,Korisnik_ID_korisnik,Portfelj_ID_portfelj) 
	values(default,$id,$id_k[0],$p_i[0])";

	if(mysql_query($query2)){
		
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik se prijavio na natječaj.')";
			mysql_query($log) or die(mysql_error());
		//log
		
		echo 'Uspješno ste se prijavili na natječaj.';	
		echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
	}
	else{
		die(mysql_error());
	}
?>

