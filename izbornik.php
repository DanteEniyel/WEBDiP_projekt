<?php
if(!isset($_SESSION)){
    session_start();
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
    <head>
        <title> Prijava na diplomske i poslijediplomske studije </title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="jevalcic.css"/>
        <script type="text/javascript" 
        src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
        <script type="text/javascript" 
        src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.11/jquery-ui.min.js"></script>
        <link type="text/css" rel="stylesheet" 
              href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7/themes/smoothness/jquery-ui.css"/>
        <link type="text/css" rel="stylesheet" href="tipTip.css"/>
        <script type="text/javascript" src="jquery.tipTip.js"></script>
        <script type="text/javascript" src="jquery.paginatetable.js"></script>
        <script type="text/javascript" src="jquery.lightbox-0.5.min.js" ></script>
        <link href="jquery.lightbox-0.5.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="jquery.tablesorter.min.js" ></script>
		<link type="text/css" href="menu.css" rel="stylesheet" />
		<script type="text/javascript" src="jquery.js"></script>
		<script type="text/javascript" src="menu.js"></script>
		<link href="http://fonts.googleapis.com/css?family=Waiting for the Sunrise" rel="stylesheet" type="text/css" >
		<script type="text/javascript">
			$(document).ready(function(){
		 
				$(".slidingDiv").hide();
				$(".slidingDiv1").hide();
				$(".show_hide").show();
				$(".show_hide1").show();
				$(".show_hide2").show();
				$(".slidingDiv2").hide();
		 
			$('.show_hide').click(function(){
			$(".slidingDiv").slideToggle();
			});
			
			$('.show_hide1').click(function(){
			$(".slidingDiv1").slideToggle();
			});
			
			$('.show_hide2').click(function(){
			$(".slidingDiv2").slideToggle();
			});
		 
		});

		</script>

        
        

        <?php
        if (isset($registracija)) {
            echo '<script type="text/javascript" src="jevalcic_registracija.js"></script>';
        } elseif (isset($prijava)) {
            echo '<script type="text/javascript" src="jevalcic_prijava.js"></script>';
        } elseif (isset($users)) {
            echo '<script type="text/javascript" src="jevalcic_korisnici_1.js"></script>';
        } elseif (isset($natjecaj_dodaj)) {
            echo '<script type="text/javascript" src="dodaj_natjecaj.js"></script>';
        }elseif (isset($natjecaji)) {
            echo '<script type="text/javascript" src="jevalcic_natjecaji.js"></script>';
        }elseif (isset($portfolio)) {
            echo '<script type="text/javascript" src="portfolio.js"></script>';
        }elseif (isset($dnevnik)) {
            echo '<script type="text/javascript" src="dnevnik.js"></script>';
        }elseif (isset($komentari)) {
            echo '<script type="text/javascript" src="jevalcic_komentari.js"></script>';
        }elseif (isset($galerija)) {
            echo '<script type="text/javascript" src="jevalcic_galerija.js"></script>';
        }elseif (isset($pregled)) {
            echo '<script type="text/javascript" src="pregled_prijava.js"></script>';
        }
        ?>
    </head>
	<div id="poruka">
		<div id="tekst">
			<?php
				if (isset($_SESSION['Korisnik'])) {
					echo 'Lijep pozdrav,' . ' ' . $_SESSION['Korisnik'];
					echo '<br />';
					echo '<b><i><a href="jevalcic_odjava.php" class="link">Odjava</a></i></b>';
					echo '<br/>';
					if(($_SESSION['Korisnik'] != 'admin')){ 
						echo '<b><i><a href="jevalcic_uredi_korisnika.php" class="link">Uredi profil</a></i></b>';
					}
				} else {
					echo 'Dobrodošli! Trenutačno imate status gosta, molim prijavite se ili registrirajte kako biste mogli koristiti usluge na ovom mjestu.';
					echo '</br><b><i><a href="jevalcic_prijava.php" class="link">Prijava</a></i></b>';
				}	
			?>
		</div>
	</div>
    <body>
        <div id="container">
			<div id="header-okvir">
				<div id="header">
					
				</div>
			</div>
			<div id="menu">
				<ul class="menu">
					<li><a href="index.php" class="parent"><span>Home</span></a>
						
					</li>
					<li><a href="#"><span>Korisnici</span></a>
						<div><ul>
							<li><a href="jevalcic_registracija.php" ><span>Registracija</span></a></li>
							
							<li><a href="jevalcic_prijava.php" ><span>Prijava</span></a></li>
							
							<li><a href="jevalcic_odjava.php" ><span>Odjava</span></a></li>
							
							<li><a href="jevalcic_korisnici_1.php"><span>Prikaz korisnika</span></a></li>
							
						</ul></div>
					</li>
					<li><a href="#"><span>Natječaji</span></a>
						<div><ul>
							<li><a href="dodaj_natjecaj.php" ><span>Kreiranje natječaja</span></a>
								
							</li>
							<li><a href="natjecaji.php" ><span>Pregled natječaja</span></a>
								
							</li>
						</ul></div>
					</li>
					<li><a href="#"><span>Portfolio</span></a>
						<div><ul>
							<li><a href="#"><span>Pregled portfolia</span></a>
								
							</li>
							
						</ul></div>
					</li>
										
					<li><a href="galerija.php"><span>Galerija</span></a></li>
							
					<li><a href="dokumentacija.php"><span>Dokumentacija</span></a></li>
					<?php
						if (isset($_SESSION['Korisnik']) && ($_SESSION["Korisnik"]) == "admin") {
							echo '<li><a href="#" class="parent"><span>Pomak vremena</span></a>
								<div><ul>
							
								<li>	<a href="http://arka.foi.hr/PzaWeb/PzaWeb2004/config/vrijeme.html" ><span> Postavi pomak vremena</span> </a> </li>
								<li>	<a href="jevalcic_postaviti_pomak.php" > <span>Postaviti pomak kao sustavsko vrijeme</span> </a> </li>
							
							</ul></div>
							</li>';
						
					
					
							echo'<li class="last"><a href="dnevnik.php"><span>Dnevnik</span></a></li>';
						}
					?>
				</ul>
			</div>
			
			

            
			
