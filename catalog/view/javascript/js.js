console.log("OK2");

/*---product_window_up-----*/
    //$('.table_size').on("click", function(){console.log("Hello")});
    $('.table_size').on("click", function(){$(".open_table_size").css({"visibility": "visible"});});
    $('.close_table_size').on("click", function(){$(".open_table_size").css({"visibility": "hidden"});});
/*--END_product_window_up-----*/

//$('.img-thumbnail').on("click", function(){$(".img-thumbnail").css({"border": "1px solid rgb(245,154,154)"});});

var width = document.documentElement.clientWidth;
console.log(width);
/*
if(width < 517){
    console.log("eeeeeeeeeeee");
    teg_big = document.getElementById('table_big');
    teg_big.setAttribute('hidden','true');
    var a = teg_big.getAttribute('hidden');
    console.log(a);

    teg_small = document.getElementById('table_small');

    teg_small.setAttribute('hidden','false');
    var b = teg_small.getAttribute('hidden');
    console.log(b);
};*/
/*var teg = [];
teg = document.getElementById('srcoll');
var r = teg.hasAttribute('data-slick');
var e = teg.getAttribute('data-slick');
teg.setAttribute('data-slick','{"slidesToShow": 4, "slidesToScroll": 1}')
console.log(teg);
console.log(r);
console.log(e);*/

/*---add_tovar--*/
var col_tovar = +$(".input_col").val();

function cart_m(){
    $(".input_col").val(col_tovar-1);
};

function cart_p(){
    $(".input_col").val(col_tovar+1);
};

$('.cart_m').on("click", cart_m);
$('.cart_p').on("click", cart_p);

//console.log(col_tovar);


/*---End add_tocar----*/

/*------adoptiv slaider-----*/
if(width < 371){
    console.log("small");
    teg = document.getElementById('srcoll');
    teg.setAttribute('data-slick','{"slidesToShow": 1, "slidesToScroll": 1}')
}
else if(width < 517){
     teg = document.getElementById('srcoll');
     teg.setAttribute('data-slick','{"slidesToShow": 2, "slidesToScroll": 1}')
}
else if(width < 837){
     teg = document.getElementById('srcoll');
     teg.setAttribute('data-slick','{"slidesToShow": 3, "slidesToScroll": 1}')
}
else{
    console.log("big");
    $('.sl_slide_1').on("mouseover", function(){$(".sl_kor_1").css({"visibility": "visible"});});
};

/*------END_adoptiv slaider-----*/

/*------product_table_big/small-----*/

if(width < 535){
    console.log("eeeeeeeeeeee");
   /* teg = document.getElementById('srcoll');
    teg.setAttribute('data-slick','{"slidesToShow": 1, "slidesToScroll": 1}')*/
};

/*------END_product_table_big/small-----*/


function scrollDown2() {
    var scrollHeight = document.documentElement.scrollHeight;
    var clientHeight = document.documentElement.clientHeight;
    scrollHeight = Math.max(scrollHeight, clientHeight);
    window.scrollTo(0, scrollHeight - document.documentElement.clientHeight)
};
/*
function scrollDown(){
    scrollBy(0,0);
};*/


$(function() {

    $('#button-cart').on("click", function(){location.reload()});

    $('#search_smoll').on("mouseover", function(){console.log("tr")});
    $('#search_smoll').on("click", function(){$("#search_big").css({"display": "inline"});});

    $('#read_more').on("click", function(){$(".inet_shop_text-center p")
        .animate({"height": "+300px"});});

    $('#read_more').on("click", function(){$(".inet_shop_text-center")
        .animate({"height": "+300px"});});

    $('.idTop').click(function(){
           $('html, body').animate({scrollTop:0}, 'slow');
    });


});

$('.sl').slick({
    /*vertical:true,
    verticalSwiping:true,
    autoplaySpeed:3000,
    autoplay:true*/
});

$('.sl_vert').slick({
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
