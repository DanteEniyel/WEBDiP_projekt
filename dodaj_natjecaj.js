window.onload=function(){
	
	document.getElementById('naziv').addEventListener('focus', obojano, true);
	document.getElementById('naziv').addEventListener('blur', prazno, true);
	document.getElementById('naziv').addEventListener('blur', provjeriNaziv,true);
	
	document.getElementById('fakultet').addEventListener('focus', obojano, true);
	document.getElementById('fakultet').addEventListener('blur', prazno, true);
	document.getElementById('fakultet').addEventListener('blur', provjeri,true);
	
	document.getElementById('trajanje').addEventListener('focus', obojano, true);
	document.getElementById('trajanje').addEventListener('blur', prazno, true);
	document.getElementById('trajanje').addEventListener('blur', provjeriTrajanje,true);
	document.getElementById('trajanje').addEventListener('blur', provjeri,true);
	
	document.getElementById('opis').addEventListener('focus', obojano, true);
	document.getElementById('opis').addEventListener('blur', prazno, true);
	document.getElementById('opis').addEventListener('blur', provjeri,true);
	
	document.getElementById('broj').addEventListener('focus', obojano, true);
	document.getElementById('broj').addEventListener('blur', prazno, true);
	document.getElementById('broj').addEventListener('blur', provjeri,true);
	document.getElementById('broj').addEventListener('blur', provjeriBroj,true);
	
	document.getElementById('trosak').addEventListener('focus', obojano, true);
	document.getElementById('trosak').addEventListener('blur', prazno, true);
	document.getElementById('trosak').addEventListener('blur', provjeri,true);
	document.getElementById('trosak').addEventListener('blur', provjeriTrosak,true);
	
	document.getElementById('cijena').addEventListener('focus', obojano, true);
	document.getElementById('cijena').addEventListener('blur', prazno, true);
	document.getElementById('cijena').addEventListener('blur', provjeri,true);
	document.getElementById('cijena').addEventListener('blur', provjeriCijenu,true);
	
	document.getElementById('financiranje').addEventListener('focus', obojano, true);
	document.getElementById('financiranje').addEventListener('blur', prazno, true);
	document.getElementById('financiranje').addEventListener('blur', provjeri,true);
	document.getElementById('financiranje').addEventListener('blur', provjeriFinanciranje,true);
	
	document.getElementById('dok').addEventListener('focus', obojano, true);
	document.getElementById('dok').addEventListener('blur', prazno, true);
	document.getElementById('dok').addEventListener('blur', provjeri,true);
	
	document.getElementById('posalji').addEventListener('click',posalji_formu,true);
}

function provjeri(){
	if(!(document.getElementById('naziv').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('fakultet').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('trajanje').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('opis').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('broj').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('trosak').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('cijena').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('financiranje').value)){
		document.getElementById('posalji').disabled = true;
	}
	else if(!(document.getElementById('dok').value)){
		document.getElementById('posalji').disabled = true;
	}
	else{
		document.getElementById('posalji').disabled = false;
	}

}

function provjeriNaziv(){
    naziv=document.getElementById('naziv');
    if(naziv.value==""){
        document.getElementById('label_naziv').innerText = "Potrebno je unijeti naziv!";
        naziv.className = 'pogresno';
    }
    else{
        document.getElementById('label_naziv').innerText = "";
        naziv.className = '';
    }
}

function provjeriTrajanje(){
    trajanje=document.getElementById('trajanje');
    if(trajanje.value==""){
        document.getElementById('label_trajanje').innerText = "Potrebno je unijeti trajanje natječaja!";
        trajanje.className = 'pogresno';
    }
    else{
        document.getElementById('label_trajanje').innerText = "";
        trajanje.className = '';
    }
}

function provjeriBroj(){
    broj=document.getElementById('broj');
    if(broj.value==""){
        document.getElementById('label_broj').innerText = "Potrebno je unijeti broj slobodnih mjesta!";
        broj.className = 'pogresno';
    }
    else{
        document.getElementById('label_broj').innerText = "";
        broj.className = '';
    }
}

function provjeriTrosak(){
    trosak=document.getElementById('trosak');
    if(trosak.value==""){
        document.getElementById('label_trosak').innerText = "Potrebno je unijeti trošak prijave!";
        trosak.className = 'pogresno';
    }
    else{
        document.getElementById('label_trosak').innerText = "";
        trosak.className = '';
    }
}

function provjeriCijenu(){
    cijena=document.getElementById('cijena');
    if(cijena.value==""){
        document.getElementById('label_cijena').innerText = "Potrebno je unijeti cijenu programa!";
        cijena.className = 'pogresno';
    }
    else{
        document.getElementById('label_cijena').innerText = "";
        cijena.className = '';
    }
}

function provjeriFinanciranje(){
    financiranje=document.getElementById('financiranje');
    if(financiranje.value==""){
        document.getElementById('label_financiranje').innerText = "Potrebno je unijeti liniju financiranja!";
        financiranje.className = 'pogresno';
    }
    else{
        document.getElementById('label_financiranje').innerText = "";
        financiranje.className = '';
    }
}

function posalji_formu(event){   
    if(!checkForm(document.getElementById("unos"))){
        event.preventDefault();
    }
}

function checkForm(unos){
    var isOk=true;
	
    var stareGreske=document.querySelectorAll('span.greska');
    for(i=0; i<stareGreske.length;i++){
        stareGreske[i].parentNode.removeChild(stareGreske[i]);
    }

    imafokus=false;
    for(i=0;i<forma.elements.length;i++){
        var el=forma.elements[i];
        //echo(el);
        if(el.value==''){
            if(!imafokus){
                el.focus();
                imafokus=true;
            }
            isOk=false;
            el.className=el.className+' greskainput';
            var greska=document.createElement('span');
            greska.className='greska';
            greska.innerHTML='Polje '+el.name+' je prazno';
            el.parentNode.appendChild(greska);		
        }else if(el.className.indexOf("pogresno")!=-1){
            isOk=false;
        }
    }
    return isOk;
}


function prazno() {
    console.log('no color');
    //this.className = 'neispunjeno_bojom';
    this.className = this.className.replace("ispunjeno_bojom","");
    
}

function obojano() {
    console.log('adding color');
    this.className =this.className+ ' ispunjeno_bojom';
}