<?php
$pregled = 1;
include("izbornik.php");
?>
<div id="content">

    <?php
    if (!(isset($_SESSION['Korisnik']))) {
        echo '<div id="poruka2">Nedozvoljeni pristup stranici! Molimo prijavite se! </div>';
        echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_prijava.php">';
    } else {
		?>
        <table border="1" id="pregled">
            <thead>
                <tr>
                    <th>Broj prijava</th>
					<th>ID korisnik</th>
                    <th>Korisnicko ime</th>
					<th>Status prijave</th>
					<th>Odobri</th>
					<th>Odbij</th>
				
					
					
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

                    $sql = "SELECT COUNT(*) FROM prijava";
                    $rezultat_1 = mysql_query($sql) or die(mysql_error());
                    $red = mysql_fetch_row($rezultat_1);
                    $br_redova = $red[0];

                    $redovi_po_stranici = 10;
                    $ukupno_stranica = ceil($br_redova / $redovi_po_stranici);

                    // dohvaca trenutnu stranicu ili postavlja definiranu
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

                    $sql = "SELECT * FROM prijava LIMIT $offset, $redovi_po_stranici";
                    $rezultat_2 = mysql_query($sql) or die(mysql_error());

					$korisnicko = $_SESSION['Korisnik']; 
					$upit ="SELECT Tip_korisnika_ID_tip_korisnika FROM Korisnik WHERE Korisnicko_ime='$korisnicko' AND Tip_korisnika_ID_tip_korisnika=3";
					
					$rezultat = mysql_query($upit) or die(mysql_error());
					
					
                    while ($red = mysql_fetch_object($rezultat_2)) {

                        
						echo "
							<td>$red->ID_prijava</td>
                            <td>$red->Korisnik_ID_korisnik</td>
                            <td>$red->Korisnicko_imep</td>
							 <td>$red->Status</td>";
								if ((mysql_fetch_row($rezultat) != 0) || $_SESSION['Korisnik'] == 'admin') {
									echo '<td><button type="gumb"><a href="odobri_prijavu.php?prijava='.$red->ID_prijava.'">Odobri</a></button></td>';
									echo '<td><button type="gumb"><a href="odbij_prijavu.php?prijava='.$red->ID_prijava.'">Odbij</a></button></td>';
									
								} else {
									
										
										
										echo '<td>Nemate ovlasti</td>';
										echo '<td>Nemate ovlasti</td>';
										echo '<td>Nemate ovlasti</td>';
										
								}
								
						echo"</tr>";  
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
