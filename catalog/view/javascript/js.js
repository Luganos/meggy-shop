console.log("OK2")

$(function() {

$('#search_smoll').on("mouseover", function(){console.log("tr")});
$('#search_smoll').on("click", function(){$("#search_big").css({"display": "inline"});});

/*$('#read_more').on("click", function(){$(".inet_shop_text-center")
    .css({"height": "200px"});});*/

$('#read_more').on("click", function(){$(".inet_shop_text-center p")
    .animate({"height": "+=150px"});});

$('#read_more').on("click", function(){$(".inet_shop_text-center")
    .animate({"height": "+=150px"});});


});

$('.sl').slick({
    /*vertical:true,
    verticalSwiping:true,
    autoplaySpeed:3000,
    autoplay:true*/
});


$('.sl_slide_1').on("mouseover", function(){$(".sl_kor_1").css({"visibility": "visible"});});
$('.sl_slide_1').on("mouseout", function(){$(".sl_kor_1").css({"visibility": "hidden"});});

$('.sl_img_1').on("mouseover", function(){$(".sl_img_1").css({"background-size": "180%"});});
$('.sl_img_1').on("mouseout", function(){$(".sl_img_1").css({"background-size": "90%"});});

$('.sl_slide_2').on("mouseover", function(){$(".sl_kor_2").css({"visibility": "visible"});});
$('.sl_slide_2').on("mouseout", function(){$(".sl_kor_2").css({"visibility": "hidden"});});

$('.sl_img_2').on("mouseover", function(){$(".sl_img_2").css({"background-size": "180%"});});
$('.sl_img_2').on("mouseout", function(){$(".sl_img_2").css({"background-size": "90%"});});

$('.sl_slide_3').on("mouseover", function(){$(".sl_kor_3").css({"visibility": "visible"});});
$('.sl_slide_3').on("mouseout", function(){$(".sl_kor_3").css({"visibility": "hidden"});});

$('.sl_img_3').on("mouseover", function(){$(".sl_img_3").css({"background-size": "180%"});});
$('.sl_img_3').on("mouseout", function(){$(".sl_img_3").css({"background-size": "90%"});});

$('.sl_slide_4').on("mouseover", function(){$(".sl_kor_4").css({"visibility": "visible"});});
$('.sl_slide_4').on("mouseout", function(){$(".sl_kor_4").css({"visibility": "hidden"});});

$('.sl_img_4').on("mouseover", function(){$(".sl_img_4").css({"background-size": "180%"});});
$('.sl_img_4').on("mouseout", function(){$(".sl_img_4").css({"background-size": "90%"});});

$('.sl_slide_5').on("mouseover", function(){$(".sl_kor_5").css({"visibility": "visible"});});
$('.sl_slide_5').on("mouseout", function(){$(".sl_kor_5").css({"visibility": "hidden"});});

$('.sl_img_5').on("mouseover", function(){$(".sl_img_5").css({"background-size": "180%"});});
$('.sl_img_5').on("mouseout", function(){$(".sl_img_5").css({"background-size": "90%"});});
