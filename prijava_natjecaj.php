<?php
	$natjecaj_prijava= 1;
	include('izbornik.php');
	session_start();
?>


<div id="content" >
	<?php
		$id = $_GET['id'];

					
		include('bp_spajanje.php');
		
		//echo'$id';
		//echo'$korisnik';
		echo '<div id="uredi">';
			echo '<form method="post" id="register" enctype="multipart/form-data" action="prijava_obrada.php?id='.$id.'"> ';
			echo '<table>';
			echo '<tr>'; 
			echo '<td> Ime i prezime</td> <td><textarea name="podaci" id="podaci" rows="1"></textarea></td></tr>';
			echo '<tr>';
			/*echo '<td> </br>Dokumentacija </td> <td></tr>
				
						<tr>
							<td> &nbsp; Odaberite dokument: 
							<input name="ufile[]" type="file" id="ufile[]" size="50" /></td>
						</tr>
						<tr>
							<td>  &nbsp; Odaberite dokument:
							<input name="ufile[]" type="file" id="ufile[]" size="50" /></td>
						</tr>
						<tr>
							<td> &nbsp; Odaberite dokument:
							<input name="ufile[]" type="file" id="ufile[]" size="50" /></td>
						</tr>
					
				';*/
			echo '<tr>';
			echo '<td> <input type="submit" value="Pošalji" name="send" /> </td></tr>';

			echo '</table>';
		echo '</div>';		
	?>

</div>
<?php include ('footer.php'); ?>