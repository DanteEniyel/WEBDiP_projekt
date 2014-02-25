{include file="izbornik.tpl"}
				<div id="content">
				
					<div id="login">
					
						<p>Prijava</p>
						
							<form method="post" action="prijava.php">
							
								<div class="username">
								
									<label for="korisnicko">
												Korisnicko ime:
									</label>
									
									<br/>
									<input type="text" name="korisnicko" id="korisnicko" value="{$prijava_korisnik}"/>
								</div>
								
								<div class="pass">
								
										<label for="lozinka">
											Lozinka:
										</label>
											
										<br/>
										<input type="password" name="lozinka" id="lozinka"/>
								</div>
								
								<div class="zapamti">
										
											<label for="box"> Zapamti me</label>
										
											<input type="checkbox" name="box" id="box"
											  
												{if $prijava_korisnik != ""} 
												checked="checked"
												{/if}
												
											/>
								</div>
								<input type="submit" name="ok" value="Prijava"/>

							</form>
					</div>
				</div>
{include file="footer.tpl"}