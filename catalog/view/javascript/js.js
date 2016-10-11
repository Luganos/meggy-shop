console.log("OK2");


/*---product_window_up-----*/
    //$('.table_size').on("click", function(){console.log("Hello")});
    $('.table_size').on("click", function(){$(".open_table_size").css({"visibility": "visible"});});
    $('.close_table_size').on("click", function(){$(".open_table_size").css({"visibility": "hidden"});});
    $('.open_big_img').on("click", function(){$(".open_table_size").css({"visibility": "hidden"});});
/*--END_product_window_up-----*/

//$('.img-thumbnail').on("click", function(){$(".img-thumbnail").css({"border": "1px solid rgb(245,154,154)"});});
/*
$(document).ready(function(){
$("#image_for_choose-0").toggle(function(){$(this).css("border", "1px solid red");},function(){$(this).css("border", "0px solid red")});
});*/

var click = 1;

function Click(){
    if(click){
        $('#size-image-0').css({"border": "3px solid white"});
        $('#size-image-1').css({"border": "3px solid white"});
        $('#size-image-2').css({"border": "3px solid white"});
        $('#size-image-3').css({"border": "3px solid white"});
        $('#size-image-4').css({"border": "3px solid white"});
        $('#size-image-5').css({"border": "3px solid white"});
        $('#size-image-6').css({"border": "3px solid white"});
        $(this).css({"border": "3px solid rgb(201,230,238)"});
        click = 0;
    }
    else{
        $(this).css({"border": "3px solid white"});
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


var click_two = 1;

function Click_color(){
    if(click_two){
        $('#color-image-0').css({"border": "3px solid white"});
        $('#color-image-1').css({"border": "3px solid white"});
        $('#color-image-2').css({"border": "3px solid white"});
        $('#color-image-3').css({"border": "3px solid white"});
        $('#color-image-4').css({"border": "3px solid white"});
        $('#color-image-5').css({"border": "3px solid white"});
        $('#color-image-6').css({"border": "3px solid white"});
        $(this).css({"border": "3px solid rgb(201,230,238)"});
        click_two = 0;
    }
    else{
        $(this).css({"border": "3px solid white"});
        click_two = 1;
    }
};

$('#color-image-0').on("click", Click_color);
$('#color-image-1').on("click", Click_color);
$('#color-image-2').on("click", Click_color);
$('#color-image-3').on("click", Click_color);
$('#color-image-4').on("click", Click_color);
$('#color-image-5').on("click", Click_color);
$('#color-image-6').on("click", Click_color);


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
var col_tovar_0 = +$(".input_col_0").val();

function cart_m_0(){
    $(".input_col_0").val(col_tovar_0-1);
};

function cart_p_0(){
    $(".input_col_0").val(col_tovar_0+1);
};

$('.cart_m_0').on("click", cart_m_0);
$('.cart_p_0').on("click", cart_p_0);

//console.log(col_tovar);
var col_tovar_1 = +$(".input_col_1").val();

function cart_m_1(){
    $(".input_col_1").val(col_tovar_1-1);
};

function cart_p_1(){
    $(".input_col_1").val(col_tovar_1+1);
};

$('.cart_m_1').on("click", cart_m_1);
$('.cart_p_1').on("click", cart_p_1);

//console.log(col_tovar);
var col_tovar_2 = +$(".input_col_2").val();

function cart_m_2(){
    $(".input_col_2").val(col_tovar_2-1);
};

function cart_p_2(){
    $(".input_col_2").val(col_tovar_2+1);
};

$('.cart_m_2').on("click", cart_m_2);
$('.cart_p_2').on("click", cart_p_2);

//console.log(col_tovar);
var col_tovar_3 = +$(".input_col_3").val();

function cart_m_3(){
    $(".input_col_3").val(col_tovar_3-1);
};

function cart_p_3(){
    $(".input_col_3").val(col_tovar_3+1);
};

$('.cart_m_3').on("click", cart_m_3);
$('.cart_p_3').on("click", cart_p_3);

//console.log(col_tovar);
var col_tovar_4 = +$(".input_col_4").val();

function cart_m_4(){
    $(".input_col_4").val(col_tovar_4-1);
};

function cart_p_4(){
    $(".input_col_4").val(col_tovar_4+1);
};

$('.cart_m_4').on("click", cart_m_4);
$('.cart_p_4').on("click", cart_p_4);

//console.log(col_tovar);
var col_tovar_5 = +$(".input_col_5").val();

function cart_m_5(){
    $(".input_col_5").val(col_tovar_5-1);
};

function cart_p_5(){
    $(".input_col_5").val(col_tovar_5+1);
};

$('.cart_m_5').on("click", cart_m_5);
$('.cart_p_5').on("click", cart_p_5);

//console.log(col_tovar);
var col_tovar_6 = +$(".input_col_6").val();

function cart_m_6(){
    $(".input_col_6").val(col_tovar_6-1);
};

function cart_p_6(){
    $(".input_col_6").val(col_tovar_6+1);
};

$('.cart_m_6').on("click", cart_m_6);
$('.cart_p_6').on("click", cart_p_6);

//console.log(col_tovar);
var col_tovar_7 = +$(".input_col_7").val();

function cart_m_7(){
    $(".input_col_7").val(col_tovar_7-1);
};

function cart_p_7(){
    $(".input_col_7").val(col_tovar_7+1);
};

$('.cart_m_7').on("click", cart_m_7);
$('.cart_p_7').on("click", cart_p_7);

//console.log(col_tovar);
var col_tovar_8 = +$(".input_col_8").val();

function cart_m_8(){
    $(".input_col_8").val(col_tovar_8-1);
};

function cart_p_8(){
    $(".input_col_8").val(col_tovar_8+1);
};

$('.cart_m_8').on("click", cart_m_8);
$('.cart_p_8').on("click", cart_p_8);

//console.log(col_tovar);
var col_tovar_9 = +$(".input_col_9").val();

function cart_m_9(){
    $(".input_col_9").val(col_tovar_9-1);
};

function cart_p_9(){
    $(".input_col_9").val(col_tovar_9+1);
};

$('.cart_m_9').on("click", cart_m_9);
$('.cart_p_9').on("click", cart_p_9);

//console.log(col_tovar);
var col_tovar_10 = +$(".input_col_10").val();

function cart_m_10(){
    $(".input_col_10").val(col_tovar_10-1);
};

function cart_p_10(){
    $(".input_col_10").val(col_tovar_10+1);
};

$('.cart_m_10').on("click", cart_m_10);
$('.cart_p_10').on("click", cart_p_10);

//console.log(col_tovar);

/*---End add_tocar----*/

/*------adoptiv slaider-----*/
if(width < 454){
    console.log("small");
    teg = document.getElementById('srcoll');
    teg.setAttribute('data-slick','{"slidesToShow": 1, "slidesToScroll": 1}')
}
else if(width < 517){
     teg = document.getElementById('srcoll');
     teg.setAttribute('data-slick','{"slidesToShow": 2, "slidesToScroll": 1}')
}
else if(width < 944){
     teg = document.getElementById('srcoll');
     teg.setAttribute('data-slick','{"slidesToShow": 3, "slidesToScroll": 1}')
}
else{
    console.log("big");
   // $('.sl_slide_1').on("mouseover", function(){$(".sl_kor_1").css({"visibility": "visible"});})
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
    //$('#button-cart').on("click", function(){location.reload()});

    $('#search_smoll').on("mouseover", function(){console.log("tr")});
   // $('#search_smoll').on("click", function(){$("#search_big").css({"display": "inline"});});
    $('#search_smoll').on("click", function(){$("#search_big").toggle()});

    //$('.search_bottom').on("click", function(){$("#search_big").css({"display": "inline"});});
    $('.search_bottom').on("click", function(){$("#search_big").toggle()});


    $('#read_more').on("click", function(){$(".inet_shop_text-center p")
        .animate({"height": "+300px"});});

    $('#read_more').on("click", function(){$(".inet_shop_text-center")
        .animate({"height": "+300px"});});

    $('.idTop').click(function(){
           $('html, body').animate({scrollTop:0}, 'slow');
    });

});


$('body').on("mouseover",'#sl_slide', function(){
    var sl_kor_x;
    var last_number_slide;
    var sl_slide_x = $(this).attr("class");
    sl_slide_x = sl_slide_x.split(' ');
    sl_slide_x = "."+sl_slide_x[0];
    var ww = sl_slide_x.slice(-2, -1);
    ww = +ww;
    if(!isNaN(ww)){
    var two_last_word = sl_slide_x.slice(-2, -1);
    console.log(two_last_word);
    sl_kor_x = ".sl_kor_"+ww;
    console.log(sl_kor_x);
    last_number_slide = sl_slide_x.split("");
    last_number_slide = last_number_slide.pop();
    sl_kor_x = sl_kor_x+last_number_slide;
    var qwe = sl_kor_x;
    sl_kor_x = qwe;
    $('body').on("mouseover",sl_slide_x, function(){$(sl_kor_x).css({"visibility": "visible"});});
    $('body').on("mouseout", sl_slide_x,function(){$(sl_kor_x).css({"visibility": "hidden"});});
    }else{
    last_number_slide = sl_slide_x.split("");
    last_number_slide = last_number_slide.pop();
    sl_kor_x = ".sl_kor_"+last_number_slide;
    }
    //var sl_kor_x = "sl_kor_2";
    console.log(typeof(sl_kor_x));
    console.log(sl_kor_x);
    $('body').on("mouseover",sl_slide_x, function(){$(sl_kor_x).css({"visibility": "visible"});});
    $('body').on("mouseout", sl_slide_x,function(){$(sl_kor_x).css({"visibility": "hidden"});});
   //console.log(typeof(sl_slide_x));
   //console.log(sl_slide_x);

});


/*
$('body').on("mouseover",'.sl_slide_1', function(){$(".sl_kor_1").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_1',function(){$(".sl_kor_1").css({"visibility": "hidden"});});

$('.sl_img_1').on("mouseover", function(){$(".sl_img_1").css({"background-size": "180%"});});
$('.sl_img_1').on("mouseout", function(){$(".sl_img_1").css({"background-size": "90%"});});

$('body').on("mouseover",'.sl_slide_2', function(){$(".sl_kor_2").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_2',function(){$(".sl_kor_2").css({"visibility": "hidden"});});

$('.sl_img_2').on("mouseover", function(){$(".sl_img_2").css({"background-size": "180%"});});
$('.sl_img_2').on("mouseout", function(){$(".sl_img_2").css({"background-size": "90%"});});

$('body').on("mouseover",'.sl_slide_3', function(){$(".sl_kor_3").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_3',function(){$(".sl_kor_3").css({"visibility": "hidden"});});

$('.sl_img_3').on("mouseover", function(){$(".sl_img_3").css({"background-size": "180%"});});
$('.sl_img_3').on("mouseout", function(){$(".sl_img_3").css({"background-size": "90%"});});

$('body').on("mouseover",'.sl_slide_4', function(){$(".sl_kor_4").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_4',function(){$(".sl_kor_4").css({"visibility": "hidden"});});

$('.sl_img_4').on("mouseover", function(){$(".sl_img_4").css({"background-size": "180%"});});
$('.sl_img_4').on("mouseout", function(){$(".sl_img_4").css({"background-size": "90%"});});

$('body').on("mouseover",'.sl_slide_5', function(){$(".sl_kor_5").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_5',function(){$(".sl_kor_5").css({"visibility": "hidden"});});

$('.sl_img_5').on("mouseover", function(){$(".sl_img_5").css({"background-size": "180%"});});
$('.sl_img_5').on("mouseout", function(){$(".sl_img_5").css({"background-size": "90%"});});

$('body').on("mouseover",'.sl_slide_6', function(){$(".sl_kor_6").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_6',function(){$(".sl_kor_6").css({"visibility": "hidden"});});

$('.sl_slide_7').on("mouseover", function(){$(".sl_kor_7").css({"visibility": "visible"});});
$('.sl_slide_7').on("mouseout", function(){$(".sl_kor_7").css({"visibility": "hidden"});});

$('body').on("mouseover",'.sl_slide_7', function(){$(".sl_kor_7").css({"visibility": "visible"});});
$('body').on("mouseout", '.sl_slide_7',function(){$(".sl_kor_7").css({"visibility": "hidden"});});

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
*/
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

/*---vertical_slider----*/
$(function() {
    $('#va-accordion').vaccordion({
        accordionH:320,
        animSpeed:0,
        animOpacity:1

      //  expandedHeight:50
    });
     });

/*---END_vertical_slider----*/

$('.va-nav-next').on('mouseover',function(){
    $('.va-nav-next').css("background-image","url(../image/next_click.png)")
});
$('.va-nav-next').on('mouseout',function(){
    $('.va-nav-next').css("background-image","url(../image/next.png)")
});

$('.va-nav-prev').on('mouseover',function(){
    $('.va-nav-prev').css("background-image","url(../image/prev_click.png)")
});
$('.va-nav-prev').on('mouseout',function(){
    $('.va-nav-prev').css("background-image","url(../image/prev.png)")
});

$('#ttest-1').on('click',function(){
    var img = $('#ttest-1').attr("src");
    //var data_imagezoom =
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-2').on('click',function(){
    var img = $('#ttest-2').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-3').on('click',function(){
    var img = $('#ttest-3').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-4').on('click',function(){
    var img = $('#ttest-4').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-5').on('click',function(){
    var img = $('#ttest-5').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-6').on('click',function(){
    var img = $('#ttest-6').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-7').on('click',function(){
    var img = $('#ttest-7').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-8').on('click',function(){
    var img = $('#ttest-8').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});

$('#ttest-9').on('click',function(){
    var img = $('#ttest-9').attr("src");
    $('.tovar_img_img').attr("src",img);
    $('.tovar_img_img').attr("data-imagezoom",img);
    console.log(img);
});
/*
$('.tovar_img_img').on("click", function(){
    var big_img = $('.tovar_img_img').attr("src");

    $(".open_big_img").css("background-image","url("+big_img+")");
    $(".open_big_img").css({"visibility": "visible"});
console.log(big_img);
});
$('.close_table_size').on("click", function(){$(".open_big_img").css({"visibility": "hidden"});});
$('.open_big_img').on("click", function(){$(".open_big_img").css({"visibility": "hidden"});});
*/
/*-----maska_fo_tel------*/
jQuery(function($){
   $("#phone").mask("+38(999) 999-9999");
   $("#input-telephone").mask("+38(999) 999-9999");
});
/*-----END_maska_fo_tel------*/

$(".checkout_button_text_coupon").on("click", function(){
    $(".enter_for_user").css({"margin-top":"15px"});
    console.log("jkljk");
})

/*
var screen = window.navigator;
//var screen2 = window.navigator[appVersion];
var web_client = screen["appVersion"];
console.log(screen);
console.log(web_client);
if(/chrome/i.test(web_client)){
    console.log("YES");
}
else{
console.log("No");};

if(web_client.search(/Chrome/)){
    console.log("YES");
}
else{
console.log("No")};

function tet(){
console.log("eeeeeeeee");
};

var link = document.links;
console.log(link.length);

var click = document.getElementById('search_smoll');
console.log(click);
*/


/*
Number.prototype.pow = function(x){
    return Math.pow(this.valueOf(),x);
};

pow(5);


function User(name,age){
    this.name = name;
    this.age = age;
    this.admin = false;
  //  return age + 10;
}

var constructor = new User("term", 10);
console.log(constructor);

console.log(User("max",25));
User.prototype.say = function(w){console.log(this.age + w)};
console.log(User("terminator",10));
User.say("terminator",10,20);*/


/*
$('#button-review2').click(function(){
        $.ajax({
            type: "GET",
            url: "js_test.js",
            dataType: "script"
        });
    });
*/
/*
$('#button-review2').click(function(){
        $.ajax({
            type: "GET",
            url: "js_test.js",
            dataType: "script",
            success: function(response){console.log(response)}
        });
    });
*/
/*
$('#button-review2').click(function(){
        $.ajax({
            type: "POST",
            url: "index.php?route=product/product/write&product_id=44",
           //dataType: "script",
            success: function(response){console.log(response)}
        });
    });
*/
/*
var b;
$('#button-review2').click(function(){
      $.ajax({
    type: 'POST',
    url: 'response.php?action=sample2',
    data: 'name=Andrew&nickname=Aramis',
    success: function(response){console.log(response)}
    });
});
*/
/*
var p;
var text = [];
$('#button-review2').click(function(){
      $.ajax({
    type: 'POST',
    url: 'response.php?action=sample2',
    data: 'name=Andrew&nickname=Aramis',
    success: function(response){
        p = response;
        console.log (typeof p);
        var arr = p.split(' ');
        console.log (typeof arr);
        console.log (arr);
        console.log (arr.length);
        console.log (arr[8]);
        for(var i = 0; i < arr.length; i++){
            if(arr[i] === "="){
               text.push(arr[++i]);
            }
        }
       console.log(text);
    }

    });
});
*/

/*
var p;
var text = [];
function post(){
      $.ajax({
    type: 'POST',
    url: 'response.php?action=sample2',
    data: 'name=Andrew&nickname=Aramis',
    success: function(response){
        p = response;
        console.log (typeof p);
        var arr = p.split(' ');
        console.log (typeof arr);
        console.log (arr);
        console.log (arr.length);
        console.log (arr[8]);
        for(var i = 0; i < arr.length; i++){
            if(arr[i] === "="){
               text.push(arr[++i]);
            }
        }
       console.log(text);
    }

    });
};

setTimeout(post,2000);
*/


/*
var items = [];
$('#button-review2').click(function(){
    $.getJSON('example.json', function(data) {
        $.each(data, function(key, val) {
        items.push(val);})});
        console.log(items);
});
*/
$('#button-review2').click(function(){
    $.getJSON('example.json', function(data) {console.log(data)});
});

/*
var numbers = "[name, age, 2, 3]";

numbers = JSON.stringify(numbers);
//console.log(typeof(numbers));
//console.log(numbers);

var obj = {name:'max', age:30, city:'Dnepr'};
var json = JSON.stringify(obj);
console.log(typeof(json));
console.log(json);

var parse = JSON.parse(json);
console.log(typeof(pasre));
console.log(parse);*/

