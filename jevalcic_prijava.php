<?php
//session_start();
$prijava = 1;
include ('izbornik.php');
?>

<div id="content">
    <div id="login">
        <p>Prijava</p>

        <form name='lforma' method="post" id="register"
              enctype="multipart/form-data" action="jevalcic_prijava_obrada.php">
            <table>
                <tr>
                    <td>
                        Korisničko ime:
                        <input type="text" name="korisnicko" id="korisnicko" 
                        <?php if (isset($_COOKIE['Korisnik']) != "") { ?> 
                                   value="<?php echo $_COOKIE['Korisnik']; ?>"
                               <?php } ?> />
                    </td>

                    <td>
                        <label for="korisnicko" id="label_korisnicko"></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Lozinka:
                        <input type="password" name="pass" id="pass" />
                    </td>

                    <td>
                        <label for="lozinka" id="label_pass"></label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="ok" value="Prijava" id="ok"/>
                        
						<label for="box"> Zapamti me</label>
						<input type="checkbox" name="zapamti" id="zapamti" />
                    </td>
					<td><a href="zaboravljena_lozinka.php">Zaboravljena lozinka</a></td>
                </tr>
            </table>
        </form>
    </div>
</div>

</div>

<?php include('footer.php'); ?>

</body>	
</html>


