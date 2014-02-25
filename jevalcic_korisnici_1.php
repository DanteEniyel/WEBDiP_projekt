<?php
$users = 1;
include("izbornik.php");
?>
<div id="content">

    <?php
    if (!(isset($_SESSION['Korisnik']))) {
        echo '<div id="poruka2">Nedozvoljeni pristup stranici! Molimo prijavite se! </div>';
        echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_prijava.php">';
    } else {
        ?>
        <table border="1" id="korisnici">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>E-mail</th>
                    <th>Korisničko ime</th>
					<th>Login pokušaj</th>
					<th>Blokiranje </th>
					<th>Deblokiranje</th>
					<th>Brisanje</th>				
                    <th>Lozinka</th>
                    <th>Slika</th>
				
					
					
                </tr>
            </thead>
            <tbody>
                <tr id="red" class="">
                    <?php
                    include('bp_spajanje.php');

                    
                    if (!(isset($trenutna_stranica))) {
                        $trenutna_stranica = 1;
                    }

                    $raspon = 10;

                    $sql = "SELECT COUNT(*) FROM Korisnik";
                    $rezultat_1 = mysql_query($sql) or die(mysql_error());
                    $red = mysql_fetch_row($rezultat_1);
                    $br_redova = $red[0];

                    $redovi_po_stranici = 10;
                    $ukupno_stranica = ceil($br_redova / $redovi_po_stranici);

                    // dohvaća trenutnu stranicu ili postavlja definiranu
                    if (isset($_GET['trenutna_stranica']) && is_numeric($_GET['trenutna_stranica'])) {
                        $trenutna_stranica = (int) $_GET['trenutna_stranica'];
                    } else {
                        $trenutna_stranica = 1;
                    }

                    if ($trenutna_stranica > $ukupno_stranica) {
                        $trenutna_stranica = $ukupno_stranica;
                    }

                    if ($trenutna_stranica < 1) {
                        $trenutna_stranica = 1;
                    }

                    $offset = ($trenutna_stranica - 1) * $redovi_po_stranici;

                    $sql = "SELECT * FROM Korisnik LIMIT $offset, $redovi_po_stranici";
                    $rezultat_2 = mysql_query($sql) or die(mysql_error());


                    while ($red = mysql_fetch_object($rezultat_2)) {

                        echo "
							<td>$red->ID_korisnik</td>
                            <td>$red->Ime</td>
                            <td>$red->Prezime</td>";
							require_once("recaptchalib.php");
							$mailhide_pubkey = '01KPLdUA6bYkx83TWi1RacZA==';
							$mailhide_privkey = '0b03bfb2cea6ef86987850044e37b8f5';
							echo "
													<td>" . recaptcha_mailhide_html($mailhide_pubkey, $mailhide_privkey, $red->Email_korisnik) . "</td>";
							if (($_SESSION['Korisnik']) == 'admin') {
								echo '<td><a href="jevalcic_uredi_korisnika.php?korisnicko='.$red->Korisnicko_ime.'&sent=p">'.$red->Korisnicko_ime.'</a></td>';
								echo "<td>$red->Login_pokusaj</td>";
								echo '<td><button type="gumb"><a href="blokiranje_korisnika.php?id='.$red->ID_korisnik.'">Blokiraj korisnika</a></button></td>';
								echo '<td><button type="gumb"><a href="deblokiraj_korisnika.php?id='.$red->ID_korisnik.'">Deblokiraj korisnika</a></button></td>';
								echo '<td><button type="gumb"><a href="brisi_korisnika.php?id='.$red->ID_korisnik.'">Obriši korisnika</a></button></td>';
								
							} else {
								if (($_SESSION['Korisnik'] == $red->Korisnicko_ime)) {
									echo '<td><a href="jevalcic_uredi_korisnika.php?korisnicko='.$red->Korisnicko_ime.'&sent=p">'.$red->Korisnicko_ime.'</a></td>';
									
									echo "<td>$red->Login_pokusaj</td>";
									echo '<td>Nemate ovlasti</td>';
									echo '<td>Nemate ovlasti</td>';
									echo '<td>Nemate ovlasti</td>';
									
								} else {
									echo "<td>$red->Korisnicko_ime</td>";
									echo "<td>$red->Login_pokusaj</td>";
									echo '<td>Nemate ovlasti</td>';
									echo '<td>Nemate ovlasti</td>';
									echo '<td>Nemate ovlasti</td>';
									
								}
							}
							echo "<td>$red->Lozinka</td>";
							echo "<td><img src='slike/thumbs/" . $red->Slika_korisnik . "'/></td></tr>";  
							
                    }
					
					
                    if ($trenutna_stranica > 1) {
                        echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=1'><<</a> ";
                        $prethodna = $trenutna_stranica - 1;
                        echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$prethodna'><</a> ";
                    }

                    for ($i = ($trenutna_stranica - $raspon); $i < (($trenutna_stranica + $raspon) + 1); $i++) {
                        if (($i > 0) && ($i <= $ukupno_stranica)) {

                            if ($i == $trenutna_stranica) {
                                echo " [<b>$i</b>] ";
                            } else {
                                echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$i'>$i</a> ";
                            }
                        }
                    }

                    if ($trenutna_stranica != $ukupno_stranica) {
                        $slijedeca = $trenutna_stranica + 1;

                        echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$slijedeca'>></a> ";
                        echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$ukupno_stranica'>>></a> ";
                    }

                    mysql_close();
                }
                ?>
        </tbody>
    </table>
</div>

<?php
include("footer.php");
?>
