<?php
session_start();

if (!(isset($_SESSION['Korisnik']))) {
    echo '<div id="poruka"><div id="poruka2">Nedozvoljeni pristup stranici! Molimo prijavite se! </div></div>';
    echo '<meta HTTP-EQUIV="REFRESH" content="3;jevalcic_prijava.php">';
} else {
    $galerija = 1;
    include("izbornik.php");
    include_once ("bp_spajanje.php");

    $result = mysql_query("select Slika_korisnik from Korisnik");

    echo "<h2>Galerija slika</h2>";
    while ($row = mysql_fetch_object($result)) {
        ?>
        <a class="lightbox" href="slike/<?php echo $row->Slika_korisnik; ?>">
            <img class="centar" src="slike/thumbs/<?php echo $row->Slika_korisnik; ?>"
                 width="40" height="40" alt="" />
        </a>
        <?php
    }
    include("footer.php");
}
?>
