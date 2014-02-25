<?php
	$host = 'localhost';
	$ja = 'WebDiP2011_126';
	$pass = 'admin_6qj9';
	$ime = 'WebDiP2011_126';

	$connect = mysql_connect($host, $ja, $pass) or die('Došlo je do greške sa spajanjem na bazu!');
	mysql_select_db($ime);
	mysql_query("set names utf8");
?>