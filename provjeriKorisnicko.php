<?php

if (isset($_GET['korisnicko'])) {
    include('bp_spajanje.php');

    $korisnicko = mysql_real_escape_string($_GET['korisnicko']);

    $korisnik = "SELECT * FROM Korisnik WHERE Korisnicko_ime='$korisnicko'";
    
    $rez = mysql_query($korisnik) or die(mysql_error());

    echo '<?xml version="1.0"?>';
    echo '<postoji>';
    
    if (mysql_fetch_row($rez) == 0) {
        echo 'false';
    } else {
        echo 'true';
    }
    echo '</postoji>';
}
?>
