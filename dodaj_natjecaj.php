<?php
	$natjecaj_dodaj= 1;
	include('izbornik.php');
	session_start();
?>

		

<div id="content" >
	<?php
		
		if (!(isset($_SESSION['Korisnik']))) { //provjera da li je korisnik prijavljen
			echo '<div id="poruka2">Nedozvoljeni pristup stranici! Molimo prijavite se! </div>';
			echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_prijava.php">';
		} else{
		
			include('bp_spajanje.php');
			
			$korisnicko = $_SESSION['Korisnik']; 
			$upit ="SELECT Tip_korisnika_ID_tip_korisnika FROM Korisnik WHERE Korisnicko_ime='$korisnicko' AND Tip_korisnika_ID_tip_korisnika=3";
			
			$rezultat = mysql_query($upit) or die(mysql_error());
			
			if((mysql_fetch_row($rezultat) != 0) || $_SESSION['Korisnik'] == 'admin'){//provjeravam da li je korisnik administrator sustava ili fakulteta
				$f = "select* from fakultet";
				$r = mysql_query($f) or die(mysql_error());
				$row = mysql_fetch_row($r);
				echo '
					<div id="forma_okvir2">
						<form method="post" id="unos" enctype="multipart/form-data" action="obrada_dodaj_natjecaj.php?korisnicko='.$_SESSION['Korisnik'].'"> 
							<table>
								<tr> 
									<td> <b>Naziv</b> </td> <td><input type="text" name="naziv" id="naziv" />   </td><td><label for="naziv" id="label_naziv"> </label></td>
								</tr>
								<tr>
									<td> <b>Fakultet</b> </td> <td><select id="fakultet" name="fakultet">';
										while($red = mysql_fetch_row($r)){
											echo '
											<option value="'.$red[0].'">'.$red[1].' </option>';
															
										}			
						echo '
										</select>
									</td></td><td><label for="fakultet" id="label_fakultet"> </label></td>
								</tr>
								
								<tr>
									<td>Trajanje natječaja u danima </td><td> <input type="text" name="trajanje" id="trajanje"  /></td><td><label for="trajanje" id="label_trajanje"> </label><td> </td></td>
								</tr>
								<tr>
									<td> Opis</td><td> <textarea name="opis" id="opis" rows="10"></textarea></td><td><label for="opis" id="label_opis"> </label></td>
								</tr>
								<tr>
									<td> Broj mjesta </td><td> <input type="text" name="broj" id="broj"  /></td><td><label for="broj" id="label_broj"> </label></td>
								</tr>
								<tr>
									<td>Troškovi prijave </td><td> <input type="text" name="trosak" id="trosak"/></td><td><label for="trosak" id="label_trosak"> </label></td>
								</tr>
								<tr>
									<td> Cijena programa </td><td> <input type="text" name="cijena" id="cijena"/></td><td><label for="cijena" id="label_cijena"> </label></td>
								</tr>
								<tr>
									<td> Linija financiranja </td><td> <input type="text" name="financiranje" id="financiranje"  /></td><td><label for="financiranje" id="label_financiranje"> </label></td>
								</tr>
								<tr>
									<td>Potrebna dokumentacija </td><td> <textarea name="dok" id="dok" rows="5"></textarea></td><td><label for="dok" id="label_dok"> </label></td>
								</tr>
									
								<tr>
									<td><input type="submit" value="Kreiraj" name="send" id="posalji" onclick="provjeri()" /> </td>
								</tr>
							</table>
						</form>
					</div>';		
			}else{
				echo 'Nažalost vaše ovlasti ne dopuštaju korištenje ove mogućnosti!';
			}
		}	
	?>

</div>
<?php include ('footer.php'); ?>