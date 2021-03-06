<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width,target-densityDpi=device-dpi">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>

<script src="http://code.jquery.com/ui/1.8.24/jquery-ui.js"   integrity="sha256-xWbKoNW9eZkm1RodPMQHsVyql6jqeiD6IYvsGyKEW78="   crossorigin="anonymous"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
 <link href="http://allfont.ru/allfont.css?fonts=open-sans-condensed-bold" rel="stylesheet" type="text/css" />
 <link href="http://allfont.ru/allfont.css?fonts=open-sans-semibold" rel="stylesheet" type="text/css" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery.bxslider/jquery.bxslider.min.js"></script>
<link href="catalog/view/javascript/jquery.bxslider/jquery.bxslider.css" rel="stylesheet" />
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/meggy/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/slick/slick.css" rel="stylesheet">
<link href="catalog/view/javascript/slick/slick-theme.css" rel="stylesheet" >
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/imagezoom.js" type="text/javascript"></script>
<script type="text/javascript" src="catalog/view/javascript/vertical_slider/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="catalog/view/javascript/vertical_slider/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="catalog/view/javascript/vertical_slider/js/jquery.vaccordion.js"></script>
<script src="catalog/view/javascript/maskedinput.js"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<?php $url = "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']; ?>
<body id="ver" class="<?php echo $class; ?>">
<!--<div><a href="<?php echo $url; ?>"></a></div>
<div>
  <a href="<?php echo $url; ?>" class="idTop"><img src='catalog/view/theme/meggy/image/button_up.png'/></a>
</div>-->
<div><a href="#"></a></div>
<div>
  <a class="idTop"><img src='catalog/view/theme/meggy/image/button_up.png'/></a>
</div>
  <header class="header">
      <div class="container col-xs-12 container_header">
        <div class="header_top">
          <nav>
          <div id="header_menu" class="col-xs-12 col-lg-5 col-lg-push-2 hidden-sm">
          <div class="header_menu hidden-md hidden-sm hidden-xs">
            <ul class="menu">
              <li class="menu_item dropdown">
                <a href="index.php?route=product/product" class="menu_link dropdown-toggle" data-toggle="dropdown">
                  <span class="menu_link_text">КАТАЛОГ</span>
                  <b class="caret"></b>
                </a>
                <?php if ($categories) { ?>
                <ul class="dropdown-menu">
                  <li>
                    <?php foreach ($categories as $category) { ?>
                    <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                    <?php } ?>
                  </li>
                </ul>
                <?php } ?>
              </li>
                <li class="menu_item">
                <a href="<?php echo $affiliate; ?>" class="menu_link">
                  <span class="menu_link_text">ПАРТНЕРАМ</span>
                </a>
              </li>
                <li class="menu_item qqq">
                <a href="index.php?route=information/information&information_id=6" class="menu_link">
                  <span class="menu_link_text">ДОСТАВКА И ОПЛАТА</span>
                </a>
              </li>
                <li class="menu_item">
                <a href="index.php?route=information/contact" class="menu_link">
                  <span class="menu_link_text">КОНТАКТЫ</span>
                </a>
              </li>
            </ul>
          </div>
          </div>
          </nav>
          <div id="header_in" class="col-xs-12 col-lg-3 col-lg-push-3">
          <div class="header_in">
                <ul class="header_men_in">
                  <!--search begin-->
                  <li id="search" class="in_item dropdown hidden-lg">
                   <div id="zx" class="btn-group">
                      <button id="button_catalog" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><img src="catalog/view/theme/meggy/image/menu_smoll.png" alt=""></button>
                     <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown">
                         <li class="dropdown-submenu pop">
                          <a tabindex="-1" href="#">Каталог
                          </a>
                          <?php if ($categories) { ?>
                           <ul class="dropdown-menu ert">
                           <?php foreach ($categories as $category) { ?>
                           <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                           <?php } ?>
                           </ul>
                           <?php } ?>
                        </li>
                        <li><a href="index.php?route=information/contact">Партнерам</a></li>
                        <li><a href="index.php?route=information/contact">Доставка и Оплата</a></li>
                        <li><a href="index.php?route=information/contact">Контакты</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="in_item">
                    <span id="search_smoll" class="glyphicon glyphicon-search hidden-sm hidden-xs"></span>
                  </li>
                  <li id="search_big" class=""><!--was_class_in_item-->
                  <?php echo $search; ?>
                  </li>
                  <!--search end-->
                  <div>
                  <?php echo $currency; ?>
                  </div>
                  <li id="login" class="in_item">
                     <?php if ($logged) { ?>
                     <span class="in_link_text  dropdown">
                        <a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="catalog/view/theme/meggy/image/face.png" alt="">
                      <span class="caret caret_login"></span>
                        </a>
                        <ul class="dropdown-menu">
                          <a href="<?php echo $account; ?>" class="in_in">
                          <li class="in_link_text in_link_text_login "><?php echo $text_account; ?></li></a>
                          <a href="<?php echo $logout; ?>" class="in_in">
                          <li class="in_link_text"><?php echo $text_logout; ?></li></a>
                        </ul>
                      </span>
                      <?php } else { ?>
                      <a href="<?php echo $login; ?>" class="in_in">
                      <span><img src="catalog/view/theme/meggy/image/face.png" alt=""></span>
                      </a>
                     <?php } ?>
                  </li>
                  <!--Cart begin-->
                  <li id="cart" class="in_item">
                 <?php echo $cart; ?>
                  </li>
                  <!--cart end-->
                </ul>
              </div>
              </div>
          <div id="tel" class="col-xs-12 col-lg-2 col-lg-pull-2">
            <div class="container-fluid">
          <div class="header_tel col-xs-12 col-lg-2">
            <a href="<?php echo $contact; ?>">
            <p><?php echo $telephone; ?></p></a>
            <span id="time">Пн-Пт с 09:00 до 18:00. Сб-Вc выходной</span>
          </div>
          </div>
          </div>
          <div id="logo" class="col-xs-12 col-lg-2 col-lg-pull-10">
          <div class="header_logo col-lg-2">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>" class="logo">
            <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="logo_pic">
          </a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
          </div>
          </div>

          <div class="search_bottom col-xs-12 hidden-lg hidden-md">
            <p>Поиск</p>
              <span class="glyphicon glyphicon-search"></span>
          </div>

        </div>
        </div>
      </div>
      <div class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'></div>
      <div id="column-left" class="col-sx-12"></div>
      <div id="cart_hr_top" style="display: block;"></div>

    </header>
 <script type =text/javascript>
   $('.ert').css({"display":"block"});
 </script>

