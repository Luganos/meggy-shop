<?php echo $header; ?>
<div class="container">
  <ul id="breadcrumb" class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> content_checkout "><?php echo $content_top; ?>
     <div class="checkout">
        <div class="header_title">
            <h1><?php echo $heading_title; ?> в 2 шага</h1>
        </div>
        <!--customer check-->
        <?php if (!$logged && $account != 'guest') { ?>
        <div class="contakt_data">
            <p>Шаг 1. Укажите свои контактные данные</p>
        </div>
        <hr>
        <div class="checkout_client">
            <div class="new_client col-sm-6 col-sx-12">
                <p>Я новый покупатель</p>
                <div id="message-about-guest"></div>
                <div class="checkout-input" id ="guest-form">
                        <p><b>имя и фамилия</b><br>
                        <input type="text" size="30" class="form-control" name ="firstname" minlength="5">
                        <span id="input_error_name"></span>
                        </p>
                        <p><b>город</b><br>
                        <input type="text" size="30" class="form-control" name="city" placeholder="Ваш город"><span id="input_error_city"></span>
                        </p>
                        <p><b>мобильный телефон</b><br>
                        <input id="phone" type="text" size="30" class="form-control" name="telephone" placeholder="Введите ваш телефон">
                        <span id="input_error_telephone"></span>
                        </p>
                        <p><b>e-mail</b><br>
                        <input id="input_email_guest" type="email" size="30" class="form-control" name ="email" placeholder="Введите ваш email">
                        <span id="input_error_email"></span>
                        </p>
                        <input type="text" size="30" style = "display: none;" class="form-control" name ="lastname">
                        <input type="text" size="30" style = "display: none;" class="form-control" name ="address_1">
                        <input type="text" size="30" style = "display: none;" class="form-control" name ="country_id">
                        <div class="checkout_button_text_coupon">
                        <input type="button" value="далее" id="button-guest" class="checkout_button_text_coupon2" >
                        <!--<input type="reset" value="Очистить">-->
                        </div>
                </div>
            </div>
            <div class="new_client col-sm-6 col-sx-12">
                <p>Я постоянный клиент</p>
                <div id="message-about-login"></div>
                <div class="checkout-input" id = "login-form">
                        <p><b>e-mail</b><br>
                        <input type="email" size="30" class="form-control" name ="email" placeholder="Введите ваш email"/>
                        <span id="input_email_login"></span>
                        </p>
                        <p><b>пароль</b><br>
                        <input type="password" size="30" class="form-control" name="password"/>
                        <span id="input_error_password"></span>
                        </p>
                        <div class="checkout_button_text_coupon">
                        <input type="button" value="войти" id="button-login" class="checkout_button_text_coupon2" />
                        </div>
                         <a href="<?php echo $forgotten; ?>">
                            <span class="forgotten">Я забыл пароль</span>
                         </a>
                        <div class="enter_for_user">
                            <p>Войти как пользователь</p>
                           <!-- <a id = "button_facebook" href="#" role ="button">
                            <img src="catalog/view/theme/meggy/image/fb_checkout.png" alt=""></a>
                            <a id = "button_vkontakte" href="#" role ="button">
                            <img src="catalog/view/theme/meggy/image/vk_checkout.png" alt=""></a>-->
                        </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <!--end check of customer-->
        <?php if ($logged || $account == 'guest') { ?>
        <div class="contakt_data">
            <p>Шаг 2. Выбор способа доставки и оплаты</p>
            <hr>
            <div class="deliveri">
                <div id="message-about-delivery"></div>
                <p>Доставка</p>
                <div class="pickup">
                    <p>самовывоз</p>
                    <label><input class="new_post_input" type="radio" checked ="checked" name="pickup" value="1"><span>из Новой Почты</span><br>
                    </label>
                    <label>
                    <input class="pickup_input" type="radio" name="pickup" value="2"><span>из точки выдачи</span>
                    </label>
                </div>
                <div class="courier">
                    <p>курьер</p>
                    <label>
                    <input class="Mist_e" type="radio" name="pickup" value="3"><span>Мист Экспресс</span><br>
                    </label>
                </div>
            </div>
            <div class="payment">
            <hr>
                <p>Оплата</p>
                <div id="message-about-payment"></div>
                <div class="cash">
                    <input class="new_post_input" type="radio" name="payment_method" checked ="checked" value="1"><span>Наличными</span><br>
                    <input class="pickup_input" type="radio" name="payment_method" value="2"><span>Безналичными</span><br>
                    <label>
                    <input class="pickup_input" type="radio" name="payment_method" value="3"><span>Visa/MasterCard</span>
                    </label>
                    <input class="pickup_input" type="text" name="agree" value="1" style ="visibility: hidden;">
                </div>
            </div>
            <div class="client_address">
            <hr>
                <p>Адрес получателя/отделения новой почты.<br> Со списком отделений можно ознакомится по <a href="https://novaposhta.ua/office">ссылки</a></p>
                <div id="message-about-buyer"></div>
                <div class="street">
                    <div class="streen_inline nstreet_input_w">
                    <span>улица</span>
                    <input  class="form-control nstreet_input" type="text" name="street" value="<?php echo $street; ?>">
                    <p id="nstreet_input"></p>
                    </div>
                    <div class="streen_inline house_input_w">
                    <span>дом</span>
                    <input class="form-control house_input" type="number" min="1" max="1000" name="house" value="<?php echo $house; ?>">
                    <p id="house_input"></p>
                    </div>
                    <div class="streen_inline r_input_w">
                    <span>квартира</span>
                     <input class="form-control k_input" type="text" name="flat" value="<?php echo $flat; ?>">
                     <p id="k_input"></p>
                     </div>
                     <div class="streen_inline NP_input_w">
                    <span>№ отделения</span>
                     <input id="checked_NP" class="form-control NP_input " type="text" name="department" value="">
                     <p id="NP_input"></p>
                     </div>
                </div>
            </div>
            <div class="order">
            <div id ="main-message-field"></div>
            <hr>
              <div class="checkout_button_text_coupon checkout_button_text_coupon_right">
                <input type="button" value="подтвердить заказ" id="confirm-buy" class="checkout_button_text_coupon2" >
              </div>
            </div>
         </div>
        <?php } ?>
      </div>
    </div>

      <?php echo $content_bottom; ?></div>

    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript">

// Login
$(document).ready(function() {
$('#button-login').on('click', function() {
    $.ajax({
        url: 'index.php?route=checkout/login/save',
        type: 'post',
        data: $('#login-form :input'),
        dataType: 'json',
        beforeSend: function() {
            $('#button-login').button('loading');
        },
        complete: function() {
            $('#button-login').button('reset');
        },
        success: function(json) {
            $('#message-about-login').html('');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
               /* $('#message-about-login').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');*/

                // Highlight any found errors
                $('#input_email_login').parent().addClass('has-error');
                $('input[name=\'password\']').parent().addClass('has-error');

                $('#input_error_password').html(json['error']['password']);
                $('#input_email_login').html(json['error']['email']);
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
});


// Guest
$(document).ready(function() {
$('#button-guest').on('click', function() {
    $.ajax({
        url: 'index.php?route=checkout/guest/save',
        type: 'post',
        data: $('#guest-form :input'),
        dataType: 'json',
        beforeSend: function() {
            $('#button-guest').button('loading');
        },
        complete: function() {
            $('#button-guest').button('reset');
        },
        success: function(json) {
            $('#message-about-guest').html('');

            if (json['redirect']) {
                location = json['redirect'];
                 alert(json['redirect']);
            } else if (json['error']) {
               /* $('#message-about-guest').html('<div class=""><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');*/

                // Highlight any found errors
                if(json['error']['email']){
                $('#input_email_guest').parent().addClass('has-error');}
              //  $('input[name=\'password\']').parent().addClass('has-error');
                if(json['error']['firstname']){
                $('input[name=\'firstname\']').parent().addClass('has-error');}
                if(json['error']['city']){
                $('input[name=\'city\']').parent().addClass('has-error');}
                if(json['error']['telephone']){
                $('input[name=\'telephone\']').parent().addClass('has-error');}

                $('#input_error_name').html(json['error']['firstname']);
                $('#input_error_city').html(json['error']['city']);
                $('#input_error_telephone').html(json['error']['telephone']);
                $('#input_error_email').html(json['error']['email']);
               // console.log(json['error']['city']);
               console.log(json['error']);
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
});

// Shipping and payment
<?php if ($logged || $account) { ?>
$(document).ready(function() {
     $('#confirm-buy').on('click',function(e){
         if($('.new_post_input').prop('checked') && !$('#checked_NP').val()){
            $("#NP_input").html('Введите № отделения');
        }else{
    $.ajax({
        url: 'index.php?route=checkout/shipping_address/save',
        type: 'post',
        data: $('.street :input'),
        dataType: 'json',
        success: function(json) {
            $('#message-about-buyer').html('');

            if (json['redirect']) {
                location = json['redirect'];
            } else if (json['error']) {
              // $('#message-about-buyer').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                    $('#nstreet_input').html(json['error']['street'] );
                    $('#house_input').html(json['error']['house'] );
                    $('#k_input').html(json['error']['flat'] );
           } else if (json['success']) {

             $.ajax({
                 url: 'index.php?route=checkout/shipping_method/save',
                type: 'post',
                data: $('.deliveri :input[type="radio"]:checked'),
                dataType: 'json',
                success: function(json) {
                $('#message-about-delivery').html('');

                 if (json['redirect']) {
                    location = json['redirect'];
                 } else if (json['error']) {
                       $('#message-about-delivery').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                 } else if (json['success']) {

                         $.ajax({
                              url: 'index.php?route=checkout/payment_method/save',
                              type: 'post',
                              data: $('.payment :input[type="radio"]:checked'),
                              dataType: 'json',
                              success: function(json) {
                              $('#message-about-payment').html('');

                                  if (json['redirect']) {
                                        location = json['redirect'];
                                  } else if (json['error']) {
                                       $('#message-about-payment').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
                                  } else if (json['success']) {

                                         window.location.href = 'index.php?route=checkout/confirm/index';
                                  }
                              }
                         });
                     }
                }
            });
          }
       }
    });
 };

    });


});
 <?php } else { ?>
 $(document).ready(function() {
  $('#confirm-buy').on('click', function() {

      $('#main-message-field').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>Войдите как постоянный клиент или новый покупатель<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
  });
});

 <?php } ?>
</script>
<?php echo $footer; ?>

