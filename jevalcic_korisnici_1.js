function prazno() {
	console.log('no color');
	this.className = 'neispunjeno_bojom';
}

function obojano() {
	console.log('adding color');
	this.className = 'ispunjeno_bojom';
}

window.onload=function(){
	
	document.getElementById('red').addEventListener('onMouseOver', obojano, true);
	document.getElementById('red').addEventListener('blur', prazno, true);

	
}

$(document).ready(function() 
    { 
        $("#korisnici").tablesorter(); 
    } 
);