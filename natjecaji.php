<?php

session_start();

    $no_ajax = '<div id="content">';
    $ajax = '<table border="1" id="natjecaji">
            <thead>
                <tr>
                    <th>Naziv</th>
                    <th>Datum objave</th>
                    <th>Trajanje natječaja</th>
                    <th>Opis</th>
                    <th>Broj mjesta</th>
                    <th>Troškovi prijave</th>
                    <th>Cijena programa</th>
                </tr>
            </thead>
            <tbody>';

    include('bp_spajanje.php');

    $raspon = 10;

    $sql = "SELECT COUNT(*) FROM natjecaj";
    $rezultat_1 = mysql_query($sql) or die(mysql_error());
    $red = mysql_fetch_row($rezultat_1);
    $br_redova = $red[0];

    $redovi_po_stranici = 10;
    $ukupno_stranica = ceil($br_redova / $redovi_po_stranici);

//    if (!(isset($trenutna_stranica))) {
//        $trenutna_stranica = 1;
//        
//        
//    }
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

    $sql = "SELECT * FROM natjecaj LIMIT $offset, $redovi_po_stranici";
    $rezultat_2 = mysql_query($sql) or die(mysql_error());


    while ($red = mysql_fetch_object($rezultat_2)) {

        $ajax.= "<tr id='natjecaj_$red->ID_natjecaj' class='tiptipClass' title='Kliknite da biste vidjeli komentare za
        natječaj $red->Naziv'><td>$red->Naziv</td><td>$red->Datum_objave</td>
                <td>$red->Trajanje_natjecaja</a></td>";

        $ajax.= "<td>$red->Opis</td>";
        $ajax.= "<td>$red->Broj_mjesta</td>";
        $ajax.= "<td>$red->Troskovi_prijave</td>";
        $ajax.= "<td>$red->Cijena_programa</td></tr>";
    }
    
    if ($trenutna_stranica > 1) {
        //echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=1'><<</a> ";

        $ajax.= " <a href='#' id='trenutna_1' class='stranica_link'><<</a> ";

        $prethodna = $trenutna_stranica - 1;
        //echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$prethodna'><</a> ";

        $ajax.= " <a href='#' id='trenutna_$prethodna' class='stranica_link'><<</a> ";
    }

    for ($i = ($trenutna_stranica - $raspon); $i < (($trenutna_stranica + $raspon) + 1); $i++) {
        if (($i > 0) && ($i <= $ukupno_stranica)) {

            if ($i == $trenutna_stranica) {
                $ajax.= " [<b>$i</b>] ";
            } else {
                //echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$i'>$i</a> ";
                $ajax.= " <a href='#' id='trenutna_$i' class='stranica_link'>$i</a> ";
            }
        }
    }

    if ($trenutna_stranica != $ukupno_stranica) {
        $slijedeca = $trenutna_stranica + 1;

        //echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$slijedeca'>></a> ";
        //echo " <a href='{$_SERVER['PHP_SELF']}?trenutna_stranica=$ukupno_stranica'>>></a> ";

        $ajax.= " <a href='#' id='trenutna_$slijedeca' class='stranica_link'>></a> ";
        $ajax.= " <a href='#' id='trenutna_$ukupno_stranica' class='stranica_link'>>></a> ";
    }

    mysql_close();


$ajax.='</tbody></table>';
$no_ajax .=$ajax;

$no_ajax.='</div>';

if (isset($_GET['trenutna_stranica']) && is_numeric($_GET['trenutna_stranica'])) {
    echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?><sadrzaj><![CDATA[".$ajax."]]></sadrzaj>";
}else{
    $natjecaji = 1;
    include("izbornik.php");
    echo $no_ajax;
    include("footer.php");
}
?>
