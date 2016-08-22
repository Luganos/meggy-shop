console.log("OK2")

/*$('#search_big').css({"visibility": "visible"});*/

$(function() {

$('#search_smoll').on("mouseover", function(){console.log("tr")});
$('#search_smoll').on("click", function(){$("#search_big").css({"display": "inline"});});


});

$('#search_big').on("mouseover", function(){$("#search_big").css({"visibility": "visible"});});
$('.sl_slide_1').on("mouseout", function(){$(".sl_kor_1").css({"visibility": "hidden"});});

