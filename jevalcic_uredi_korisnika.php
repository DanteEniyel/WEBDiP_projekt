<?php
	session_start();
	include('izbornik.php');
	echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>';	
	include('bp_spajanje.php');
	
	if(($_SESSION['Korisnik'] == 'admin') && $_GET['sent'] == 'p'){ 
		$korisnik= $_GET['korisnicko'];
	}
	else{
		$korisnik = $_SESSION['Korisnik'];
		
	}
	$q = "select * from Korisnik where Korisnicko_ime='$korisnik'";
	$r = mysql_query($q) or die(mysql_error());
	$row = mysql_fetch_row($r);

	
	echo '<div id="content">';
		
		echo '<div id="uredi">';
			echo '<form method="post" id="register" enctype="multipart/form-data" action="jevalcic_uredi_korisnika_obrada.php?id='.(string)$row[0].'"> ';
			echo '<table>';
			echo '<tr>'; 
			echo '<td> <b>Ime</b> </td> <td><input type="text" name="ime" id="ime" value="'.$row[4].'"/></td></tr>';
			echo '<tr>';
			echo '<td> <b>Prezime</b> </td> <td><input type="text" name="prezime" id="prezime" value="'.$row[5].'"/></td></tr>';
			echo '<tr>';
			echo '<td> <b>E-mail </b></td> <td> <input type="text" name="e_mail" id="e_mail" value="'.$row[8].'"/>';
			echo '</td></tr>';
			echo '<tr>';
			echo '<td> <b>Korisničko ime</b> </td><td> <input type="text" name="korisnicko" id="korisnicko"  value=" '.$row[6].'"/></td></tr>';
			echo '<tr>';
			echo '<td> <b>Lozinka </b></td> <td><input type="text" name="pass" id="pass" value="'.$row[7].'"/></td></tr>';
			echo '<tr>';
			echo '<td> <b>Blokiran </b></td> <td><input type="text" name="blokiran" id="blokiran" value="'.$row[12].'"/></td></tr>';
			echo '<tr>';
			echo '<td> <input type="submit" value="Pošalji" name="send" /> </td></tr>';

			echo '</table>';
			if(($_SESSION['Korisnik'])== 'admin'){
					echo '<table>';
						echo'<tr>';
							echo '<td><a href="dodaj_administratora.php?id_k='.$row[0].'">Dodaj administratora</a></td>';
						echo'</tr>';
						echo'<tr>';
							echo '<td><a href="makni_administratora.php?id_k='.$row[0].'">Makni administratora</a></td>';
						echo'</tr>';
					echo '</table>';
					
			}
		echo '</div>';
	echo '</div>';
	
	include('footer.php');

?>