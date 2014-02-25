{include file="izbornik.tpl"}
	<div id="content" >
				
				<form id="forma" name="registracija" action="jevalcic_obrada.php" method="post">
					
					<table>
						
							<tr>
								<td>
									<label for="ime">Ime:</label>
								</td>
								
								<td>
									<input type="text" name="ime" id="ime" value="<?php echo $_REQUEST['ime'] ?>"
									<?php if (isset($greske['ime'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['ime'])) {echo "<span class='greska'>{$greske['ime']}</span>";}?>
								</td>
						
							</tr>
							
							<tr>
								<td>
									<label for="prezime">Prezime:</label>
								</td>
								
								<td>
									<input type="text" name="prezime" id="prezime" value="<?php echo $_REQUEST['prezime'] ?>"
									<?php if (isset($greske['prezime'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['prezime'])) {echo "<span class='greska'>{$greske['prezime']}</span>";}?>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="e_mail">E-mail:</label>
								</td>
								
								<td>
									<input type="text" name="e_mail" id="e_mail" value="<?php echo $_REQUEST['e_mail'] ?>"
									<?php if (isset($greske['e_mail'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['e_mail'])) {echo "<span class='greska'>{$greske['e_mail']}</span>";}?>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="korisnicko">Korisničko ime:</label>
								</td>
								
								<td>
									<input type="text" maxlength="30" name="korisnicko" id="korisnicko" value="<?php echo $_REQUEST['korisnicko'] ?>"
									<?php if (isset($greske['korisnicko'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['korisnicko'])) {echo "<span class='greska'>{$greske['korisnicko']}</span>";}?>
									
								</td>
							</tr>	
							
							<tr>
								<td>
									<label for="pass">Lozinka:</label>
								</td>
								
								<td>
									<input type="password"  maxlength="15" name="pass" id="pass" value="<?php echo $_REQUEST['pass'] ?>"
									<?php if (isset($greske['pass'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['pass'])) {echo "<span class='greska'>{$greske['pass']}</span>";}?>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="potvrda">Potvrda lozinke:</label>
								</td>
								
								<td>
									<input type="password" maxlength="15" name="potvrda" id="potvrda" value="<?php echo $_REQUEST['potvrda'] ?>"
									<?php if (isset($greske['potvrda'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['potvrda'])) {echo "<span class='greska'>{$greske['potvrda']}</span>";}?>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<label for="slika">Slika:</label>
								</td>
								
								<td>
									<input type="file" name="slika" id="slika"
									<?php if (isset($greske['slika'])) {echo 'class="greskainput"';}?>/>
									
									<?php if (isset($greske['slika'])) {echo "<span class='greska'>{$greske['slika']}</span>";}?>
									
								</td>
							</tr>
							
							<tr>
								<td>
									<input type="submit" name="ok" value="Pošalji podatke"/>
								</td>
								
								<td>Napomena: Sva polja su obavezna!</td>
								
							</tr>
						
					</table>
					
				</form>
				
			</div>
		
		</div>

{include file="footer.tpl"}