<?php include('izbornik.php');?>
			
			<div id="content2">
			
					
						
						<div id="dokumentacija" >
							<h2 class="naslov">Dokumentacija</h2>
							<br/>
							<br/>
							<div id="sadrzaj_text" style="width: 610px;">
								<h3>1. Opis projektnog zadatka</h3>
								<p>
									Ovaj sustav je namijenjen prijavama na studijske programe koje obavljuju fakulteti. Vrste korisnika koje imamo su Neregistrirani korisnik, Registrirani korisnik, Administrator fakulteta, Administrator sustava, te svaki od njih ima svoje uloge i mogućnosti tokom korištenja sustava.
									Korisnik, po prvom dolasku na stranicu ima status Neregistriranog korisnika te tako ima i ograničen pristup funkcionalnostima stranice. Dopušteno mu je samo pregled natječaja, što uključuje potrebnu dokumentaciju i rokove za njihovu predaju. Ukoliko želi koristiti ostale funkcionalnosti mora se registrirati putem ugrađenog sustava za registraciju ili putem OpenID računa. Po registraciji on dobiva akrivacijsku poruku na svoj e-mail putem koje on postaje Registrirani korisnik ukoliko aktivaciju obavi unutar 24 sata koliko traje aktivacijska poruka. Sama registracija je dodatno zaštićena CAPTCHA sustavom kako se ne bi bilo tko ili bilo što moglo registrirati. Također se provjerava dostupnost korisničkog imena, te ukoliko je korisničko ime zauzeto korisnika će se upozoriti da napiše neko drugo korisničko ime. Pri prijavi se stvara sesija koja traje dok se korisnik ne odjavi ili ne prođe vrijeme definirano od strane servera. 
									Registrirani korisnici imaju iste mogućnosti kao i Neregistrirani korisnici uz dodatne funkcionalnosti kao što su kreiranje vlastitog protfelja dokumenata koji su potrebni za prijave na natječaje. Također imaju mogućnost pregleda vlastitih prijava na natječaje kao i uvid u sve trenutno aktivne natječaje. Broj natječaja koji se prikazuju na jednoj stranici je ograničen na 10, a ukoliko on prelazi taj broj, putem straničenja se dodaje više stranica. Također korisnik ima mogućnost pregleda galerije slika aktivnog natječaja, prijave na aktivne natječaje i komentiranje pojedinog natječaja ili komentara na natječaj, također može i ocjenjivati komentare. Korisnik prijavu realizira kreiranjem vlastitog protfelja za pojedini natječaj i prilaganjem potrebnih dokumenata koji se odabiru između onih koji su pohranjeni u sustav. 
									Također se može priložiti pismo preporuke, no nakon što se pošalje poruka na e-mail preporučivača koji tada dobiva korisnikče podatke kako bi mogao pristupiti sustavu za slanje dokumenata. Korisnik ima mogućnost prijaviti se na jedan ili više natječaja s različitih fakulteta ili sveučilišta. U konačnici se natječaj smješta u košaricu sa osnovnim podacima kako bi se obavila konačna provjera podataka prije stvarnog slanja prijave na natječaj.
									Administrator fakulteta ima sve ovlasti kao i prije navedeni korisnici, no ujedno i mogućnost kreiranja natječaje za diplomske i poslijediplomske studije. Pri kreiranju pojedinog natječaja definiraju se neka njegova svojstva poput broj slobodnih mjesta, trajanje samog natječaja, troškovi programa, način financiranja, cijena prijave, galerija slika i slično. Jedan administrator fakulteta može upravljati natječajima na samo jednom fakultetu, dok jedan fakultet može imati više administratora natječaja. Onaj korisnik koji kreira natječaj ima ovlasti nad korisnicima koji se prijavljuju na taj natječaj, ali nakon što isteka roka za prijavu. Može pregledavati priložene dokumente i osobno podatke, te može prihvatiti ili odbiti prijavu na natječaj. Svakom korisniku se šalje automatska poruka putem e-maila sa imenom, prezimenom i statusom prijave. Te također ima uvid u statistiku natječaja koji je kreirao.
									Administrator sustava ima sva prava kao i ostali korisnici uz dodatak magućnosti upravljanja svim korisnicima, uvid u statistiku rada sustava ili pojedinog korisnika poput statusa prijave, korisničkog računa, uvid u dokumente. Također može blokirati korisničke račune, zamrznuti korištenje korisničkog računa na neko određeno vrijeme, deaktiviranje računa, kreiranje fakulteta, odobravanje natječaja i moderatora za pojedini fakultet, brisanje moderatora, te također mogućnost upravljanja sustavskim vremenom.

								</p>
									 <hr/>
								<h3>2. Opis projektnog rješenja</h3>
								<p>
									Projektno rješenje poprilično prati specifikacije navedene u opisu projekta, noduše neke funkcionalnosti nisu obrađene. Većinom su definirane uloge korisnika koje se dijele na neregistriranog korisnika, registriranog korisnika, administratora fakulteta i administratora sustava.
									Neregistrirani korisnik može samo pogledati detalje o natječaju kao što su zahtjevani dokumenti, do kada traje i slično, ukoliko se ne registrira ili prijavi. Registracija je ostvarena putem HTML forme čiji se podaci zatim obrađuju pomoću php skripte, također je uključena ajax validacija korisničkog imena.
									Također postoji verificiranje na korisničkoj strani za sve forme. Dizajn je vlastiti uz pomoć CSS-a. Nakon što se korisnik registrira mora se aktivirati kako bi dobio status registriranog korisnika. Aktivacijski kod vrijedi 24 sata, nakon toga se korisnik ne može aktivirati. 
									Nakon aktivacije korisnik ima status registriranog korisnika i ima mogućnost uvida u popis registriranih korisnika, kao i mijenjanja vlastitih podataka. Može pregledavati natječaje te ih komentirati ili ocijeniti. Registrirani korisnik može postati administrator fakulteta ukoliko 
									ga administrator sustava postavi za jednog, u tom slučaju je on u mogućnosti kreirati novi natječaj te upravljati prijavama na određenom natječaju. U ovom slučaju može odobriti ili odbiti prijavu korisnika te se u tom slučaju korisniku čija je prijava u pitanju šalje e-mail sa obavjesti o stanju prijave.
									Administrator sustava može dodavati ili micati administratore fakulteta, može uređivati podatke bilo kojeg korisnika, može blokirati, deblokirati ili obrisati nekog korisnika, može mijenjati sustavsko vrijeme, te pregledavati dnevnik aktivnosti. Te je zapravo administratorska uloga u većem dijelu implementirana.
								</p>
									<hr/>
								<h3>3. Bitne odrednice projektnog rješenja</h3>
								<p>
									Modeli koji su izrađeni za ovaj projekt obuhvaćaju: slučajeve korištenja (Use Case Diagram), dijagram slijeda za za svakog korisnika i prijavu te registraciju, navigacijski dijagram mjesta i ERA model.
								<h4>3.1 Use case model </h4>
									Na dijagramu možemo vidjeti uloge pojedinih sudionika u ovom sustavu, te aktivnosti koje mogu obavljati. Također možemo vidjeti interakciju sudionika sa sustavom.
									<br/>
									<img src="slike/dijagrami/UseCaseDiagram.jpg" height="" width="600">
									<br/>
								<h4>3.2 Navigacijski dijagram </h4>
									Preko navigacijskog dijagrama možemo vidjeti kako koji sudionik može upravljati sustavom, ovisno o njegovoj ulozi i pravima dodijeljenih pojedinoj ulozi, a polazi od neregistriranog korisnika.
									<br/>
									<img src="slike/dijagrami/NavigacijskiDijagram.jpg" width="600">
									<br/>
								<h4>3.3 Dijagram slijeda Neregistrirani korisnik</h4>
									Sudjeluju neregistrirani korisnik, korisničko sučelje i sustav te prikazuje tok događaja, a sve počinje kada neregistrirani korisnik pristupi sustavu. 
									<br/>
									<img src="slike/dijagrami/SekvencaNeregistriraniKorisnik.jpg" width="600">
									<br/>
								<h4>3.4 Dijagram slijeda Registrirani korisnik </h4>
									Sudionici su registrirani korisnik, korisničko sučelje i sustav te definira slijed događaja za registriranog korisnika, a počinje od njegovog pristupanja sustavu.
									<br/>
									<img src="slike/dijagrami/SekvencaRegistriraniKorisnik.jpg" width="600">
									<br/>
								<h4>3.5 Dijagram slijeda Administrator fakulteta </h4>
									Sudionici su administrator fakulteta, korisničko sučelje i sustav te definira slijed događaja za administratora fakulteta, a počinje od njegovog pristupanja sustavu.
									<br/>
									<img src="slike/dijagrami/SekvencaAdministratorFakulteta.jpg" width="600">
									<br/>
								<h4>3.6 Dijagram slijeda Administrator sustava </h4>
									Sudionici su adminstrator sustava, korisničko sučelje i sustav te definira slijed događaja za administratora sustava, a počinje od njegovog pristupanja sustavu.
									<br/>
									<img src="slike/dijagrami/SekvencaAdministratorSustava.jpg" width="600">
									<br/>
								<h4>3.7 Dijagram slijeda Preporučivač </h4>
									Sudionici su preporučivač i sustav, a definira slijed događaja za preporučivača. Počinje slanje poruke preporučivaču sa korisničkim podacima.
									<br/>
									<img src="slike/dijagrami/SekvencaPreporucivac.jpg" width="600">
									<br/>
								<h4>3.8 Dijagram slijeda Registracija </h4>
									Sudionici su neregistrirani korisnik, sustav i modul za registraciju, te definira slijed događaja koji se odvijaju tokom registracije. Započinje korisnikovim pristupanjem sustavu.
									<br/>
									<img src="slike/dijagrami/SekvencaRegistracija.jpg" width="600">
									<br/>
								<h4>3.9 Dijagram slijeda Prijava </h4>
									Sudionici su registrirani korisnik, sustav i modul za prijavu, te definira slijed događaja koji se odvijaju tokom prijave. Započinje korisnikovim slanjem zahtjeva za prijavu.
									<br/>
									<img src="slike/dijagrami/SekvencaPrijava.jpg" width="600">
									<br/>
								<h4>3.10 ERA model </h4>
									Model baze podataka koju sustav koristi, napravljen pomoću alata DBDesigner. U modelu se nalazi 13 tablica.
									<br/>
									<img src="slike/dijagrami/ERA.png" width="600">
								</p>
									<br/>
								<hr/>
								<h4>4. Popis i opis skripata, mapa mjesta </h4>
									dnevnik.js- skripta za prikaz dnevnika(efekti)<br/>
									dodaj_natjecaj.js-skripta za prikaz natjecaja(efekti)<br/>
									jevalcic_galerija.js-skripta za prikaz galerije(efekti)<br/>
									jevalcic_korisnici_1.js-skripta za prikaz korisnika(efekti)<br/>
									jevalcic_natjecaji.js-skripta za prikaz tablice korisnika i definira što će se dogoditi kada kliknemo na neki red<br/>
									jevalcic_prijava.js-skripta za validitanje podataka na strani korisnika prilikom registracije<br/>
									jevalcic_prijava.js-skripta za validaciju unosa podataka na strani korisnika prilikom prijave<br/>
									jquery.lightbox-0.5.min.js-skripta korištena za ostvarenje galerije<br/>
									jquery.paginatetable.js-skripta za ostvarenje straničenja kod tablica<br/>
									jquery.tablesorter.min.js-skripta korištena za većinu tablica koje se koriste pri ispisu podataka iz baze<br/>
									jquery.tipTip.js-skripta korištena kod prikaza tablice s natječajima, omogućava otvaranje linka preko ajaxa<br/>
									jquery-1.7.1.min.js-jQuery korišten za razne sitnice<br/>
									menu.js-skripta za ostvarenje izbornika<br/>
									pregled_prijava.js-skripta za prikaz prijava<br/>
									blokiranje_korisnika.php-skripta koja obrađuje zahtjev za blokiranjem korisnika <br/>
									bp_spajanje.php-skripta koja omogućuje spajanje na bazu<br/>
									brisi_korisnika.php-skripta koja obrađuje zahtjeva za brisanje korisnika<br/>
									deblokiraj_korisnika.php-skripta koja obrađuje zahtjev za deblokiranjem korisnika<br/>
									detalji_natjecaj.php-skripta koja omogućuje detaljan prikaz natječaja<br/>
									dnevnik.php-skripta koja omogućuje prikaz podataka vezanih uz dnevnik aktivnosti<br/>
									dodaj_administratora.php-skripta koja obrađuje zahtjev za dodavanjem nekog korisnika kao administratora fakulteta<br/>
									dodaj_natjecaj.php-skripta koja omogućuje unos podataka za kreiranje novog natječaja<br/>
									dokumentacija.php-skripta za prikaz dokumentacije vezane uz projekt<br/>
									footer.php-skripta koja uključuje podnožje u ostale skripte<br/>
									galerija.php-skripta za prikaz galerije<br/>
									index.php-skripta za prikaz početne stranice<br/>
									izbornik.php-skripta koja uključuje izbornik u ostale skripte<br/>
									jevalcic_aktivacija.php-skripta koja obrađuje aktivaciju korisnika<br/>
									jevalcic_korisnici_1.php-skripta za ispis registriranih korisnika<br/>
									jevalcic_odjava.php-skripta koja obrađuje zahtjev za odjavom korisnika<br/>
									jevalcic_postaviti_pomak.php-skripta koja uzima vrijeme sa pzaWeb i zapisuje u lokalnu xml datoteku<br/>
									jevalcic_prijava.php-skripta koja omogućuje formu za prijavu<br/>
									jevalcic_prijava_obrada.php-skripta koja obrađuje zahtjev za prijavu korisnija<br/>
									jevalcic_registracija.php-skripta koja omogućuje formu za registraciju korisnika<br/>
									jevalcic_registracija_obrada.php-skripta koja obrađuje zahtjev za registraciju korisnika<br/>
									jevalcic_sustavsko_vrijeme.php-skripta kojom dohvaćamo trenutno vrijeme sustava <br/>
									jevalcic_uredi_korisnika.php-skripta koja omogućava uređivanje korisničkih podataka<br/>
									jevalcic_uredi_korisnika_obrada.php-skripta koja obrađuje zahtjev za promjenom korisničkih podataka<br/>
									makni_administratora.php-skripta koja obrađuje zahtjev za micanjem korisnika kao administratora fakulteta<br/>
									natjecaji.php-skripta za tablični prikaz natječaja (ajax dohvaćanjepodataka za slijedeću stranicu)<br/>
									obrada_dodaj_natjecaj.php-skripta koja obrađuje zahtjev za kreiranje novog natječaja<br/>
									obrada_komentari.php-skripta koja obrađuje zahtjev za komentiranjem<br/>
									obradi_ocjeni_komentar.php-skripta koja obrađuje zahtjev za ocjenjivanjem<br/>
									odbij_prijavu.php-skripta koja obrađuje zahtjev za odbijanjem prijave<br/>
									odobri_prijavu.php-skripta koja obađuje zahtjev za odobravanjem prijave<br/>
									pregled_prijava.php-skripta koja prikazuje prijave vezane uz natječaj<br/>
									prijava_natjecaj.php-skripta koja prikazuje formu za prijavu na natječaj<br/>
									prijava_obrada.php-skripta koja obrađuje zahtjev za prijavom na natječaj<br/>
									provjeriKorisnicko.php-skripta kojom preko ajax-a provjeravamo postojanje korisničkog imena u bazi<br/>
									recaptchalib.php-biblioteka za rad sa CAPTCHA sustavom<br/>
									zaboravljena_lozinka.php-skripta koja omogućava formu za zaboravljenu lozinku<br/>
									zaboravljena_lozinka_obrada.php-skripta koja obrađuje zahtjev za promjenom lozinke ako je zaboravljena<br/>
									jevalcic_pomak_vremena.xml-lokalna skripta koja zapisuje pomak vremena, kako drugi korisnici ne bi ometali u radu sustava<br/>
									<br/>
									<br/>
									
								<hr/>
									<b>Mapa mjesta:</b>

									<ul>
										<li> Home
										<li> Korisnici:
										<ul>
											<li> Registracija
											<li> Prijava
											<li> Odjava
											<li> Pregled korisnika
										</ul>
										<li> Natječaji:
										<ul>
											<li> Kreiranje natječaja
											<li> Pregled natječaja
										</ul>
										<li> Portfolio
										<li> Galerija
										<li> Dokumentacija
										<li> Pomak vremena
										<ul>
											<li> Postaviti pomak vremena
											<li> Postaviti vrijeme kao sustavsko
										</ul>
									</ul>
									<br/>
									<br/>
								<hr/>
								<h4>5. Popis i opis korištenih tehnologija i alata </h4>
									Korišteni alati:<br/>
										Notepad++ - korišten u svrhu pisanja koda<br/>
										WinSCP i SSH Secure Shell- korišten za spajanje na server i prijenos datoteka<br/>
										DBDesigner- korišten za kreiranje ERA model-a i skripte za kreiranje baze<br/>
										VisualParadigm- korišten za izradu UML dijagrama<br/>
										Gliffy- online alat za izradu dijagrama, u ovom slučaju korišten za izradu navigacijskog dijagrama<br/>
									<br/>
									<b>Korištene tehnologije:</b><br/><br/>
										HTML- osnovni programski jezik, korišten za stranice, forme, tablice i slično<br/>
										PHP- programski jezik za programiranje na serverskoj strani<br/>
										Javascript- programski jezik za programiranje na korisničkoj strani, uglavnom korišten pri validaciji podataka i dohvaćanje XML podataka<br/>
										AJAX- metode za programiranje na korisničkoj strani, korištene pri validaciji korisničkog imena, ispisa podataka i slično<br/>
									<br/>
								<hr/>
								<h4>6. Popis vanjskih/tuđih skripti </h4>

										jquery-1.7.1.min.js- jQuery bilbioteka<br/>
										recaptchalib.php – kako bi se moglo ostvariti korištenje CAPTCHA sustava<br/>
										ostalo – modul za galeriju, izbornik i sortiranje korisnika(jquery.lightbox-0.5.min, jquery.paginatetable, jquery.tablesorter.min)<br/>

							</div>
						</div>
						
						
					
				
			</div>

			
<?php include('footer.php');?>