function provjeriIme(){
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
        
    var name = this.value;
    console.log(name);
    var namePattern = /^[A-Z][a-z_-]{3,19}$/;
    var nameOk = namePattern.test(name);
    if(!nameOk){
        document.getElementById('label_ime').innerText =
        "Ime mora počinjati velikim slovom, ne smije sadržavati brojeve, duljina 4-19 znakova!";
        this.focus();
        this.className = 'pogresno';
    }
    else{
        document.getElementById('label_ime').innerText = "";
        this.className = 'ispunjeno_bojom';
    }
}

function provjeriPrezime(){
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
    var name = this.value;
    console.log(name);
    var namePattern = /^[A-Z][a-z_-]{3,19}$/;
    var nameOk = namePattern.test(name);
    if(!nameOk){
        document.getElementById('label_prezime').innerText =
        "Prezime mora počinjati velikim slovom, ne smije sadržavati brojeve, duljina 4-19 znakova!";
        this.focus();
        this.className = 'pogresno';
    }
    else{
        document.getElementById('label_prezime').innerText = "";
        this.className = 'ispunjeno_bojom';
    }
}


function provjeriE_mail(){
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
    var name = this.value;
    console.log(name);
    var namePattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    var nameOk = namePattern.test(name);
    if(!nameOk){
        document.getElementById('label_e_mail').innerText =
        "E-mail koji ste unijeli nije napisan na odgovarajući način!";
        this.focus();
        this.className = 'pogresno';
    }
    else{
        document.getElementById('label_e_mail').innerText = "";
        this.className = 'ispunjeno_bojom';
    }
}

function provjeriKorisnicko(event) {
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
    var self = this;
    // Mozilla/Safari
    if (window.XMLHttpRequest) {
        self.xmlHttpReq = new XMLHttpRequest();
    }
    // IE
    else if (window.ActiveXObject) {
        self.xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
    }
    self.xmlHttpReq.open('GET',
        'provjeriKorisnicko.php?korisnicko='+document.getElementById('korisnicko').value, true);
    self.xmlHttpReq.onreadystatechange = function() {
        if (self.xmlHttpReq.readyState == 4) {
            postoji=self.xmlHttpReq.responseXML.getElementsByTagName("postoji")[0].firstChild.nodeValue;
            if(postoji=='true'){
                document.getElementById('label_korisnicko').innerText =
                "Korisničko ime je već zauzeto!";
                document.getElementById('korisnicko').className = 'pogresno';
                document.getElementById('korisnicko').focus();
            }else{
                document.getElementById('label_korisnicko').innerText = "";
                document.getElementById('korisnicko').className = 'ispunjeno_bojom';
            }
        }
    }
    self.xmlHttpReq.send(null);
}

function posalji_formu(event){   
    if(!checkForm(document.getElementById("forma"))){
        event.preventDefault();
    }
}

function checkForm(forma){
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

function provjeriPass(){
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
    var pass = this.value;
    var passPattern = /^.*(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[\*\?\-\_\!\=\$\%\#\&]).{6,}$/;
    var passOk = passPattern.test(pass);
    if(!passOk){
        document.getElementById('label_pass').innerText = "Lozinka mora"+
        " sadržavati barem jedno veliko i jedno malo slovo, jedan broj i"+
        " jedan poseban znak (*?-_!=$%#&), te bit minimalno dugačka 6 znakova!";
        this.focus();
        this.className = 'pogresno';
    }
    else{
        document.getElementById('label_pass').innerText = "";
        this.className = 'ispunjeno_bojom';
    }
}

function usporediPass(){
    if(this.parentNode.getElementsByTagName("span").length>0){
        this.parentNode.removeChild(this.parentNode.getElementsByTagName("span")[0]);
    }
    var potvrda = document.getElementById('potvrda');
    var pass = document.getElementById('pass');
    if(potvrda.value != pass.value){
        document.getElementById('label_potvrda').innerText = "Lozinke se ne podudaraju!";
        potvrda.focus();
        potvrda.className = 'pogresno';
    }	
    else{
        document.getElementById('label_potvrda').innerText = "";
        this.className = 'ispunjeno_bojom';
    }
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


window.onload=function(){
	
    document.getElementById('ime').addEventListener('focus',obojano,true);
    document.getElementById('ime').addEventListener('blur',prazno,true);
    document.getElementById('ime').addEventListener('keyup', provjeriIme,true);
	
    document.getElementById('prezime').addEventListener('focus',obojano,true);
    document.getElementById('prezime').addEventListener('blur',prazno,true);
    document.getElementById('prezime').addEventListener('keyup', provjeriPrezime,true);
	
    document.getElementById('e_mail').addEventListener('focus',obojano,true);
    document.getElementById('e_mail').addEventListener('blur',prazno,true);
    document.getElementById('e_mail').addEventListener('keyup', provjeriE_mail,true);
	
    document.getElementById('korisnicko').addEventListener('focus',obojano,true);
    document.getElementById('korisnicko').addEventListener('blur',prazno,true);
    document.getElementById('korisnicko').addEventListener('keyup', provjeriKorisnicko, true);
	
    document.getElementById('pass').addEventListener('focus',obojano,true);
    document.getElementById('pass').addEventListener('blur',prazno,true);
    document.getElementById('pass').addEventListener('keyup', provjeriPass,true);
	
    document.getElementById('potvrda').addEventListener('focus',obojano,true);
    document.getElementById('potvrda').addEventListener('blur',prazno,true);
    document.getElementById('potvrda').addEventListener('keyup', usporediPass,true);
        
    document.getElementById('send').addEventListener('click',posalji_formu,true);
}






