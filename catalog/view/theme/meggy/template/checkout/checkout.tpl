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
            <h1><?php echo $heading_title; ?></h1>
        </div>
        <!--customer check-->
        <?php if (!$logged && $account != 'guest') { ?>
        <div class="contakt_data">
            <p>Контактные данные</p>
        </div>
        <hr>
        <div class="checkout_client">
            <div class="new_client col-sm-6 col-sx-12">
                <p>Я новый покупатель</p>
                <div id="message-about-guest"></div>
                <div class="checkout-input" id ="guest-form">
                        <p><b>имя и фамилия</b><br>
                        <input type="text" size="30" class="form-control" name ="firstname">
                        </p>
                        <p><b>город</b><br>
                        <input type="text" size="30" class="form-control" name="city">
                        </p>
                        <p><b>мобильный телефон</b><br>
                        <input type="text" size="30" class="form-control" name="telephone">
                        </p>
                        <p><b>e-mail</b><br>
                        <input type="text" size="30" class="form-control" name ="email">
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
                        <input type="text" size="30" class="form-control" name ="email"/>
                        </p>
                        <p><b>пароль</b><br>
                        <input type="text" size="30" class="form-control" name="password"/>
                        </p>
                        <div class="checkout_button_text_coupon">
                        <input type="button" value="войти" id="button-login" class="checkout_button_text_coupon2" />
                        <!--<input type="reset" value="Очистить">-->
                         <a href="<?php echo $forgotten; ?>">
                         <span>Я забыл пароль</span>
                         </a>
                        </div>
                        <div class="enter_for_user">
                            <p>Войти как пользователь</p>
                            <a href="">
                            <img src="catalog/view/theme/meggy/image/fb_checkout.png" alt=""></a>
                            <a href="">
                            <img src="catalog/view/theme/meggy/image/vk_checkout.png" alt=""></a>
                        </div>
                </div>
            </div>
        </div>
        <?php } ?>
        <!--end check of customer-->
        <div class="contakt_data">
            <p>Выбор способа доставки и оплаты</p>
            <hr>
            <form name="delivery" method="post" action="">
            <div class="deliveri">
                <p>Доставка</p>
                <div class="pickup">
                    <p>самовывоз</p>
                    <input class="new_post_input" type="radio" name="pickup" value="new_post"><span>из Новой Почты</span><br>
                    <input class="pickup_input" type="radio" name="pickup" value="point"><span>из точки выдачи</span>
                </div>
                <div class="courier">
                    <p>курьер</p>
                    <input class="Mist_e" type="radio" name="courier" value="Mist_e"><span>Мист Экспресс</span><br>
                </div>
            </div>
            <div class="payment">
            <hr>
                <p>Оплата</p>
                <div class="cash">
                    <input class="new_post_input" type="radio" name="pay" value="cash"><span>Наличными</span><br>
                    <input class="pickup_input" type="radio" name="pay" value="no-cash"><span>Безналичными</span><br>
                    <input class="pickup_input" type="radio" name="pay" value="card"><span>Visa/MasterCard</span>
                </div>
            </div>
            <div class="client_address">
            <hr>
                <p>Адрес получателя</p>
                <div class="street">
                    <div class="streen_inline nstreet_input_w">
                    <span>улица</span>
                    <input class="form-control nstreet_input" type="text" name="street" value="">
                    </div>
                    <div class="streen_inline house_input_w">
                    <span>дом</span>
                    <input class="form-control house_input" type="text" name="street" value="">
                    </div>
                    <div class="streen_inline r_input_w">
                    <span>квартира</span>
                     <input class="form-control k_input" type="text" name="street" value="">
                     </div>
                </div>
            </div>
            <div class="order">
            <hr>
              <div class="checkout_button_text_coupon checkout_button_text_coupon_right">
                <input type="submit" value="подтвердить заказ" id="checkout_button-coupon" class="checkout_button_text_coupon2" >
              </div>
            </div>
            </form>
         </div>
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
                $('#message-about-login').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                // Highlight any found errors
                $('input[name=\'email\']').parent().addClass('has-error');
                $('input[name=\'password\']').parent().addClass('has-error');
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
            } else if (json['error']) {
                $('#message-about-guest').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error']['warning'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                // Highlight any found errors
                $('input[name=\'email\']').parent().addClass('has-error');
                $('input[name=\'password\']').parent().addClass('has-error');
           }
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
});
});

</script>
<?php echo $footer; ?>

