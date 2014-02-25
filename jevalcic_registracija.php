<?php
$registracija = 1;
include('izbornik.php');
?>


<div id="content" >
	<div id="forma_okvir">
		<form id="forma" name="registracija" enctype="multipart/form-data" 
			  action="jevalcic_registracija_obrada.php" method="post">
			<table>
				<tr>
					<td>
						Ime:
					</td>
					<td>
						<input type="text" name="ime" id="ime"/>
					</td>

					<td>
						<label for="ime" id="label_ime"></label>
					</td>
				</tr>
				<tr>
					<td>
						Prezime:
					</td>
					<td>
						<input type="text" name="prezime" id="prezime"/>

					</td>
					<td>
						<label for="prezime" id="label_prezime"></label>
					</td>
				</tr>
				<tr>
					<td>
						E_mail: 
					</td>
					<td>
						<input type="text" name="e_mail" id="e_mail" />
					</td>
					<td>
						<label for="e_mail" id="label_e_mail"></label>
					</td>
				</tr>
				<tr>
					<td>
						Korisničko ime: 
					</td>
					<td>
						<input type="text" maxlength="30" name="korisnicko" id="korisnicko"/>
					</td>
					<td>
					   <label for="korisnicko" id="label_korisnicko"></label>
					</td>
				</tr>	
				<tr>
					<td>
						Lozinka: 
					</td>
					<td>
						<input type="password"  maxlength="15" name="pass" id="pass"/>
					</td>
					<td>
						<label for="pass" id="label_pass"></label>
					</td>
				</tr>
				<tr>
					<td>
						Potvrda lozinke: 
					</td>
					<td>
						<input type="password" maxlength="15" name="potvrda" id="potvrda"/>
					</td>
					<td>
						<label for="potvrda" id="label_potvrda"></label>
					</td>
				</tr>
				<tr>
					<td>
						Slika: 
					</td>
					<td>
						<input type="file" name="slika" id="slika"/>
					</td>
					<td>
						<label for="slika" id="label_slika"></label>
					</td>
				</tr>
				<tr>
					<td> 
						Prihvaćam uvjete korištenja aplikacije:  </td> <td> <input type="checkbox" id="uvjeti" name="uvjeti" class="stil"/>
					</td> 
				</tr>
				<tr>
					<td>
						<?php
							require_once('recaptcha/recaptchalib.php');
							$publickey = "6Ldf59ASAAAAAFSWgLe3HImUHkQCc4cmy0xQ5gBJ"; // you got this from the signup page
							echo recaptcha_get_html($publickey);
						?>
					</td>
					
				</tr>
				<tr>
					<td colspan="2">
						<input type="reset" name="reset" id="reset" value="Odustani"/> 
						<input type="submit" value="Pošalji" name="send" id="send" />
					</td>
					
					
				</tr>
				<tr>
					<td>Napomena: Sva polja su obavezna!</td>
				</tr>
				
			</table>
		</form>
	</div>
</div>
</div>
<?php include ('footer.php'); ?>