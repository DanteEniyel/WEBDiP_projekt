<?php
	$dnevnik = 1;
	include("izbornik.php");
	session_start();
?>
<div id="content">

    <?php
    if (!(isset($_SESSION['Korisnik']))) {
        echo '<div id="poruka"><div id="poruka2">Nedozvoljeni pristup stranici! Molimo prijavite se! </div></div>';
        echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_prijava.php">';
    } else {
        ?>
        <table border="1" id="dnevnik">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Korisničko ime</th>
                    <th>Datum</th>
                    <th>Vrijeme</th>
                    <th>Komentar</th>
					
				
					
					
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

                    $sql = "SELECT COUNT(*) FROM dnevnik";
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

                    $sql = "SELECT * FROM dnevnik LIMIT $offset, $redovi_po_stranici";
                    $rezultat_2 = mysql_query($sql) or die(mysql_error());


                    while ($red = mysql_fetch_object($rezultat_2)) {

                        echo "
							<td>$red->ID_dnevnik</td>
                            <td>$red->Korisnicko_ime</td>
                            <td>$red->Datum</td>
							<td>$red->Vrijeme</td>";
							
						echo "<td>$red->Komentar</td></tr>";
						
							
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
