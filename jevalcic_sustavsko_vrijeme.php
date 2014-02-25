<?php
	  $url = "http://arka.foi.hr/WebDiP/2011_projekti/WebDiP2011_126/jevalcic_pomak_vremena.xml";

	  if(! ($fp = fopen($url,'r'))) {
		echo "Problem kod otvaranja URL-a:  " . $url;
		exit;
	  }

	// XML data
	  $xml_string = fread($fp, 10000);
	  fclose($fp);

	// create a DOM object from the XML data
	  $domdoc = new DOMDocument;
	  $domdoc->loadXML($xml_string);

	  $params = $domdoc->getElementsByTagName('pomak');
	  $sati = 0;
	  
	  foreach ($params as $param) {
			  $attributes = $param->attributes;
			  foreach ($attributes as $attr => $val) {
				if($attr == "brojSati") {
					$sati = $val->value;
			  }
			}
	  }
			  
		$vrijeme_servera = time();
		$vrijeme_sustava = $vrijeme_servera + ($sati * 60 * 60);
	
?>