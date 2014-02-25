function provjeriKorisnicko(){
    korisnicko=document.getElementById('korisnicko');
    if(korisnicko.value==""){
        document.getElementById('label_korisnicko').innerText = "Potrebno je unijeti korisničko ime!";
        //korisnicko.focus();
        korisnicko.className = 'pogresno';
    }
    else{
        document.getElementById('label_korisnicko').innerText = "";
        korisnicko.className = '';
    }
}

function provjeriPass(){
    pass=document.getElementById('pass');
    if(pass.value==""){
        document.getElementById('label_pass').innerText = "Potrebno je unijeti lozinku!";
        //pass.focus();
        pass.className = 'pogresno';
    }
    else{
        document.getElementById('label_pass').innerText = "";
        pass.className = '';
    }
}

function prijava(event){
    
    provjeriKorisnicko();
    provjeriPass();
    
    forma=document.getElementById('register');
    
    var isOk=true;
    imafokus=false;
    for(i=0;i<forma.elements.length;i++){
        var el=forma.elements[i];
        if(el.value==''){
            if(!imafokus){
                el.focus();
                imafokus=true;
            }
            isOk=false;		
        }
    }
    
    if(!isOk){
        event.preventDefault();
    }
}

//function prazno() {
//	console.log('no color');
//	this.className = 'neispunjeno_bojom';
//}
//
//function obojano() {
//	console.log('adding color');
//	this.className = 'ispunjeno_bojom';
//}

function prazno() {
    console.log('no color');
    this.className = this.className.replace("ispunjeno_bojom","");
    
}

function obojano() {
    console.log('adding color');
    this.className =this.className+ ' ispunjeno_bojom';
}


window.onload=function(){
	
    document.getElementById('korisnicko').addEventListener('focus',obojano,true);
    //document.getElementById('korisnicko').addEventListener('blur', provjeriKorisnicko, true);
    document.getElementById('korisnicko').addEventListener('blur',prazno,true);
	
    document.getElementById('pass').addEventListener('focus',obojano,true);
    //document.getElementById('pass').addEventListener('blur', provjeriPass,true);
    document.getElementById('pass').addEventListener('blur',prazno,true);
	
    document.getElementById('ok').addEventListener('click',prijava,true);
}


