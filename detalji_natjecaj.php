<?php
	$users = 1;
	include("izbornik.php");
	session_start();
?>

<?php
	echo'<div id="natjecaj_d">';
		$id = $_GET['natjecaj_id'];			
				include('bp_spajanje.php');
								
				$query = "SELECT * FROM natjecaj where ID_natjecaj = $id";
				$rez = mysql_query($query) or die(mysql_error());
				$red = mysql_fetch_row($rez);
						
				$upit = "select Ime_fakulteta from fakultet where ID_fakultet=$red[2]";
				$result = mysql_query($upit) or die(mysql_error());
				$row = mysql_fetch_row($result);
									
				$kor = "select Korisnicko_ime from Korisnik where ID_korisnik=$red[1]";
				$rez_kor = mysql_query($kor) or die(mysql_error());
				$red_kor = mysql_fetch_row($rez_kor);
				
				
					//echo '<div id="natjecaj_d">';
					echo'
							<table>
								<tr><td><b>Naziv: </b></td><td>'.$red[3].'</td>
								</tr>
												
								<tr><td>Fakultet: </td><td>'.$row[0].'</td>
								</tr>
								
								<tr><td>Administrator: </td><td>'.$red_kor[0].'</td>
								</tr>
								
								<tr><td>Datum objave: </td><td>'.$red[4].'</td>
								</tr>
												
								<tr><td>Trajanje natječaja: </td><td> '.$red[5].' dana</td>
								</tr>
												
								<tr><td>Broj mjesta: </td><td>'.$red[8].'</td>
								</tr>
												
								<tr><td>Troškovi prijave: </td><td>'.$red[9].' kn</td>
								</tr>
								
								<tr><td>Cijena programa: </td><td>'.$red[10].' kn</td>
								</tr>
								
								<tr><td>Linija financiranja: </td><td>'.(string)$red[11].'</td>
								</tr>
								
								<tr><td>Dokumentacija: </td><td>'.(string)$red[12].'</td>
								</tr>
								
								<tr><td>Opis: </td><td>'.$red[7].'</td>
								</tr>'; 
												
								
						echo '</tr>
							</table>';
						//echo'</div>';
						
						if(isset($_SESSION['Korisnik'])){
							$korisnik = $_SESSION['Korisnik']; 
							$q = "select * from Korisnik where Korisnicko_ime='$korisnik'";
							$r = mysql_query($q) or die(mysql_error());
							$kor = mysql_fetch_row($r);
							
							/*echo'<tr>';
								echo '<td><button type="gumb"><a href="prijava_natjecaj.php?id='.$id.'">Prijava na natječaj</a></button></td>';
							echo'</tr>';*/		
							
							$korisnicko = $_SESSION['Korisnik']; 
							$upit ="SELECT Tip_korisnika_ID_tip_korisnika FROM Korisnik WHERE Korisnicko_ime='$korisnicko' AND Tip_korisnika_ID_tip_korisnika=3";
					
							$rezultat = mysql_query($upit) or die(mysql_error());
							
							if((mysql_fetch_row($rezultat) != 0) || $_SESSION['Korisnik'] == 'admin'){
								echo '<table>';
									echo'<tr>';
										echo '<td><button type="gumb"><a href="pregled_prijava.php?id_n='.$id.'">Pregledaj prijave</a></button></td>';
									echo'</tr>';
								echo '</table>';
								
							}
						}
				echo '<br/><br/>';
	echo'</div>';
		
	echo'<div id="content3">';
			
					
					$u = "select * from komentar where Natjecaj_ID_natjecaj=$id";
					$ur = mysql_query($u) or die(mysql_error());
					$noviu="select Ocjena from ocjena where ID_natjecaj=$id";
					$noviur = mysql_query($u) or die(mysql_error());
					echo'<h2>Komentari za natječaj: '.$red[3].'</h2>';
					
						echo '<div class="slidingDiv">';
								while($ured = mysql_fetch_row($ur)){
									$kk = "select Korisnicko_ime from Korisnik where ID_korisnik=$ured[1]";
									$kr = mysql_query($kk) or die(mysql_error());
									$krow = mysql_fetch_row($kr);
									echo'<table>';
										echo '<tr><td>Korisnik: <b>'.$krow[0].' </b>('.$ured[4].')</td>';
										echo '<td>';
										echo $ured[3];
									echo '</td></tr></table>';
								}//while
																
								if(isset($_SESSION['Korisnik'])){ //ako je korisnik registriran
								echo'<hr/>';
						
								echo'<form method="post" id="kome" enctype="multipart/form-data" action="obrada_komentari.php?vrati='.$id.'&kor='.$kor[0].'"> ';
								
									echo'<table>
									
										<tr><td><textarea name="komentar" id="komentar" cols="40" rows="5">
										</textarea></td></tr>
																
										<tr>
										<td><input type="submit" value="Komentiraj" name="send" id="posalji" /> </td>
										</tr>
										</table>
										</form>';
								}
							echo'</div>
							<div class="slidingDiv1">';
							if(isset($_SESSION['Korisnik'])){ //ako je korisnik registriran
								echo'<form method="post" id="oc" enctype="multipart/form-data" action="obradi_ocjeni_komentar.php?vrati='.$id.'&kor='.$kor[0].'"> 
									<table>
										<tr><td><select id="ocjena" name="ocjena">
												<option value="1"> 1</option>
												<option value="2"> 2 </option>
												<option value="3"> 3</option>
												<option value="4"> 4</option>
												<option value="5"> 5</option>
										</td><td><input type="submit" value="Ocijeni" name="send" id="posalji" /> </td></tr>
																	
									</table>
								</form>';
							}
							echo'</div>';
							
							echo'<a href="#" class="show_hide">Prikaži/sakrij komentare</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" class="show_hide1">Ocjeni komentar</a>';
						
					
				
	echo'</div>';
?>

<?php
include("footer.php");
?>