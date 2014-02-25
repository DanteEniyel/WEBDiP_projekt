$(document).ready(function(){
    
    $(".stranica_link").click(function(){
        ucitaj_stranicu($(this).attr("id").replace("trenutna_",""));
    });
    $(".tiptipClass").tipTip();
    $(".tiptipClass").click(function(){
        window.location="detalji_natjecaj.php?natjecaj_id="+$(this).attr("id").replace("natjecaj_","");
    });
	
});

function ucitaj_stranicu(stranica){
    $.ajax({
        url: "natjecaji.php",
        type: "GET",
        dataType: "xml",
        data: "trenutna_stranica="+stranica,
        success: function(xml){
            $("#content").html($(xml).find('sadrzaj').text());
            $(".stranica_link").click(function(){
                ucitaj_stranicu($(this).attr("id").replace("trenutna_",""));
            });
            $(".tiptipClass").tipTip();
        }
    });
}