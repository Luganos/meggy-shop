console.log("OK2");


/*---product_window_up-----*/
    //$('.table_size').on("click", function(){console.log("Hello")});
    $('.table_size').on("click", function(){$(".open_table_size").css({"visibility": "visible"});});
    $('.close_table_size').on("click", function(){$(".open_table_size").css({"visibility": "hidden"});});
/*--END_product_window_up-----*/

//$('.img-thumbnail').on("click", function(){$(".img-thumbnail").css({"border": "1px solid rgb(245,154,154)"});});
/*
$(document).ready(function(){
$("#image_for_choose-0").toggle(function(){$(this).css("border", "1px solid red");},function(){$(this).css("border", "0px solid red")});
});*/

var click = 1;

function Click(){
    if(click){
        $(this).css({"border": "1px solid red"});
        click = 0;
    }
    else{
        $(this).css({"border": "0px solid red"});
        click = 1;
    }
};


$('#size-image-0').on("click", Click);
$('#size-image-1').on("click", Click);
$('#size-image-2').on("click", Click);
$('#size-image-3').on("click", Click);
$('#size-image-4').on("click", Click);
$('#size-image-5').on("click", Click);
$('#size-image-6').on("click", Click);


$('#color-image-0').on("click", Click);
$('#color-image-1').on("click", Click);
$('#color-image-2').on("click", Click);
$('#color-image-3').on("click", Click);
$('#color-image-4').on("click", Click);
$('#color-image-5').on("click", Click);
$('#color-image-6').on("click", Click);


/*
$('#image_for_choose-0').on("click", function(){$("#image_for_choose-0").css({"border": "1px solid red"});});
$('#image_for_choose-1').on("click", function(){$("#image_for_choose-1").css({"border": "1px solid red"});});
$('#image_for_choose-2').on("click", function(){$("#image_for_choose-2").css({"border": "1px solid red"});});
$('#image_for_choose-3').on("click", function(){$("#image_for_choose-3").css({"border": "1px solid red"});});
$('#image_for_choose-4').on("click", function(){$("#image_for_choose-4").css({"border": "1px solid red"});});
$('#image_for_choose-5').on("click", function(){$("#image_for_choose-5").css({"border": "1px solid red"});});
$('#image_for_choose-6').on("click", function(){$("#image_for_choose-6").css({"border": "1px solid red"});});
*/
var width = document.documentElement.clientWidth;
console.log(width);

if(width < 517){
    $('#table_big').css({"display": "none"});
    $('#table_small').css({"display": "table"});
};
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
    $('.sl_slide_1').on("mouseover", function(){$(".sl_kor_1").css({"visibility": "visible"});})
};

/*------END_adoptiv slaider-----*/

$('.sl').slick({
    /*vertical:true,
    verticalSwiping:true,
    autoplaySpeed:3000,
    autoplay:true*/
});

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

$('.sl_slide_6').on("mouseover", function(){$(".sl_kor_6").css({"visibility": "visible"});});
$('.sl_slide_6').on("mouseout", function(){$(".sl_kor_6").css({"visibility": "hidden"});});

$('.sl_slide_7').on("mouseover", function(){$(".sl_kor_7").css({"visibility": "visible"});});
$('.sl_slide_7').on("mouseout", function(){$(".sl_kor_7").css({"visibility": "hidden"});});

$('.sl_slide_8').on("mouseover", function(){$(".sl_kor_8").css({"visibility": "visible"});});
$('.sl_slide_8').on("mouseout", function(){$(".sl_kor_8").css({"visibility": "hidden"});});

$('.sl_slide_9').on("mouseover", function(){$(".sl_kor_9").css({"visibility": "visible"});});
$('.sl_slide_9').on("mouseout", function(){$(".sl_kor_9").css({"visibility": "hidden"});});

$('.sl_slide_10').on("mouseover", function(){$(".sl_kor_10").css({"visibility": "visible"});});
$('.sl_slide_10').on("mouseout", function(){$(".sl_kor_10").css({"visibility": "hidden"});});

$('.sl_slide_11').on("mouseover", function(){$(".sl_kor_11").css({"visibility": "visible"});});
$('.sl_slide_11').on("mouseout", function(){$(".sl_kor_11").css({"visibility": "hidden"});});

$('.sl_slide_12').on("mouseover", function(){$(".sl_kor_12").css({"visibility": "visible"});});
$('.sl_slide_12').on("mouseout", function(){$(".sl_kor_12").css({"visibility": "hidden"});});

$('.sl_slide_13').on("mouseover", function(){$(".sl_kor_13").css({"visibility": "visible"});});
$('.sl_slide_13').on("mouseout", function(){$(".sl_kor_13").css({"visibility": "hidden"});});

$('.sl_slide_14').on("mouseover", function(){$(".sl_kor_14").css({"visibility": "visible"});});
$('.sl_slide_14').on("mouseout", function(){$(".sl_kor_14").css({"visibility": "hidden"});});

$('.sl_slide_15').on("mouseover", function(){$(".sl_kor_15").css({"visibility": "visible"});});
$('.sl_slide_15').on("mouseout", function(){$(".sl_kor_15").css({"visibility": "hidden"});});

$('.sl_slide_16').on("mouseover", function(){$(".sl_kor_16").css({"visibility": "visible"});});
$('.sl_slide_16').on("mouseout", function(){$(".sl_kor_16").css({"visibility": "hidden"});});

$('.sl_slide_17').on("mouseover", function(){$(".sl_kor_17").css({"visibility": "visible"});});
$('.sl_slide_17').on("mouseout", function(){$(".sl_kor_17").css({"visibility": "hidden"});});

$('.sl_slide_18').on("mouseover", function(){$(".sl_kor_18").css({"visibility": "visible"});});
$('.sl_slide_18').on("mouseout", function(){$(".sl_kor_18").css({"visibility": "hidden"});});

$('.sl_slide_19').on("mouseover", function(){$(".sl_kor_19").css({"visibility": "visible"});});
$('.sl_slide_19').on("mouseout", function(){$(".sl_kor_19").css({"visibility": "hidden"});});

$('.sl_slide_20').on("mouseover", function(){$(".sl_kor_20").css({"visibility": "visible"});});
$('.sl_slide_20').on("mouseout", function(){$(".sl_kor_20").css({"visibility": "hidden"});});

$('.sl_slide_21').on("mouseover", function(){$(".sl_kor_21").css({"visibility": "visible"});});
$('.sl_slide_21').on("mouseout", function(){$(".sl_kor_21").css({"visibility": "hidden"});});

$('.sl_slide_22').on("mouseover", function(){$(".sl_kor_22").css({"visibility": "visible"});});
$('.sl_slide_22').on("mouseout", function(){$(".sl_kor_22").css({"visibility": "hidden"});});

$('.sl_slide_23').on("mouseover", function(){$(".sl_kor_23").css({"visibility": "visible"});});
$('.sl_slide_23').on("mouseout", function(){$(".sl_kor_23").css({"visibility": "hidden"});});

$('.sl_slide_24').on("mouseover", function(){$(".sl_kor_24").css({"visibility": "visible"});});
$('.sl_slide_24').on("mouseout", function(){$(".sl_kor_24").css({"visibility": "hidden"});});

$('.sl_slide_25').on("mouseover", function(){$(".sl_kor_25").css({"visibility": "visible"});});
$('.sl_slide_25').on("mouseout", function(){$(".sl_kor_25").css({"visibility": "hidden"});});

/*-----Big_slider_fo_page_product*/
$('.sli_slide_1').on("mouseover", function(){$(".sl_kor_1").css({"visibility": "visible"});});
$('.sli_slide_1').on("mouseout", function(){$(".sl_kor_1").css({"visibility": "hidden"});});

$('.sli_slide_2').on("mouseover", function(){$(".sl_kor_2").css({"visibility": "visible"});});
$('.sli_slide_2').on("mouseout", function(){$(".sl_kor_2").css({"visibility": "hidden"});});

$('.sli_slide_3').on("mouseover", function(){$(".sl_kor_3").css({"visibility": "visible"});});
$('.sli_slide_3').on("mouseout", function(){$(".sl_kor_3").css({"visibility": "hidden"});});

$('.sli_slide_4').on("mouseover", function(){$(".sl_kor_4").css({"visibility": "visible"});});
$('.sli_slide_4').on("mouseout", function(){$(".sl_kor_4").css({"visibility": "hidden"});});

$('.sli_slide_5').on("mouseover", function(){$(".sl_kor_5").css({"visibility": "visible"});});
$('.sli_slide_5').on("mouseout", function(){$(".sl_kor_5").css({"visibility": "hidden"});});

$('.sli_slide_6').on("mouseover", function(){$(".sl_kor_6").css({"visibility": "visible"});});
$('.sli_slide_6').on("mouseout", function(){$(".sl_kor_6").css({"visibility": "hidden"});});

$('.sli_slide_7').on("mouseover", function(){$(".sl_kor_7").css({"visibility": "visible"});});
$('.sli_slide_7').on("mouseout", function(){$(".sl_kor_7").css({"visibility": "hidden"});});

$('.sli_slide_8').on("mouseover", function(){$(".sl_kor_8").css({"visibility": "visible"});});
$('.sli_slide_8').on("mouseout", function(){$(".sl_kor_8").css({"visibility": "hidden"});});

/*----END_Big_slider_fo_page_product*/

$(document).ready(function(){
  $('.bxslider').bxSlider();
});

/*----filter_size----*/
if(width < 855){
           var filter_sie = document.getElementById('column-left');
            filter_sie.setAttribute('class','col-sx-12');
            var cart_hr_top = document.getElementById('cart_hr_top');
            cart_hr_top.setAttribute('display','none');
            console.log("ccc")
};
/*----END_filter_size----*/
