<?php

ob_start(); //output buffer, This function will turn output buffering on. 
//While output buffering is active no output is sent from the script (other than headers), instead the output is stored in an internal buffer.
session_start();

if (isset($_POST)) {
    include('bp_spajanje.php');

    $korisnicko = mysql_real_escape_string($_POST['korisnicko']);
    $pass = mysql_real_escape_string($_POST['pass']);

    $korisnik = "SELECT * FROM Korisnik WHERE Korisnicko_ime='$korisnicko'  
    AND Lozinka ='$pass' AND Status_korisnika_ID_status_Korisnika=1 AND Login_pokusaj!=3";
 
    $rez = mysql_query($korisnik) or die(mysql_error());
    $row=mysql_fetch_row($rez);
	

    if ($row == 0) {
		$rs = "SELECT Login_pokusaj FROM Korisnik WHERE Korisnicko_ime='$korisnicko'";
		$rez2 = mysql_query($rs) or die(mysql_error());
		$row = mysql_fetch_row($rez2);
		$broj_pokusaja = $row[0];
		if($broj_pokusaja == 3){ //tell me are you locked?
			echo 'Vaš korisnički račun je zaključan, molim obratite se administratoru kako bi ponovno akrivirali račun.';
			echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/index.php">';
		}
		else{
		$broj_pokusaja = $broj_pokusaja + 1;
	
		$rs2 = "UPDATE Korisnik SET Login_pokusaj=$broj_pokusaja WHERE Korisnicko_ime='$korisnicko'";
		mysql_query($rs2) or die(mysql_error());
		
		echo 'Unijeli ste krivo korisničko ime ili lozinku!';
        echo '<meta HTTP-EQUIV="REFRESH" content="2;http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_prijava.php">';
		}
		
    }else {
		$rs3 = "UPDATE Korisnik SET Login_pokusaj=0 WHERE Korisnicko_ime='$korisnicko'";
		mysql_query($rs3) or die(mysql_error()); //back to 0, jer se nesretni događaji nisu ponovili tri puta za redom
       
        if (isset($_POST['zapamti'])) {
			$_SESSION['Korisnik'] = $korisnicko;
			
            setcookie("Korisnik", $korisnicko, time() + 3600);
			header('location: index.php');
			
        } else {
            setcookie("Korisnik", "", time() - 3600);
			$_SESSION['Korisnik'] = $korisnicko;
			header('location: index.php');
        }
		//log
			$datum=date("d.m.y.");
			$vrijeme= date("H:i:s");
			$k= $_SESSION['Korisnik'];
			$log="insert into dnevnik (ID_dnevnik,Korisnicko_ime, Datum, Vrijeme, Komentar)values (default, '$k', '$datum', '$vrijeme', 'Korisnik se uspješno prijavio.')";
			mysql_query($log) or die(mysql_error());
		//log
    }
}
?>












