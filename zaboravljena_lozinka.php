<?php

$prijava = 1;
include ('izbornik.php');
?>

<div id="content">
    <div id="new_pass">
        <p>Zahtjev za novom lozinkom</p>

        <form name='lforma' method="post" id="register"
              enctype="multipart/form-data" action="zaboravljena_lozinka_obrada.php">
            <table>
                <tr>
                    <td>
                        Korisničko ime:
                        <input type="text" name="korisnicko" id="korisnicko" 
                    </td>

                    <td>
                        <label for="korisnicko" id="label_korisnicko"></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        E-mail:
                        <input type="text" name="e_mail" id="e_mail" />
                    </td>

                    <td>
                        <label for="e_mail" id="label_e_mail"></label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="ok" value="Pošalji" id="ok"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

</div>

<?php include('footer.php'); ?>

</body>	
</html>


