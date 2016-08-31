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
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/meggy/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/slick/slick.css" rel="stylesheet">
<link href="catalog/view/javascript/slick/slick-theme.css" rel="stylesheet" >
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
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
<body class="<?php echo $class; ?>">
  <header class="header">
      <div class="container col-xs-12">
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
                <a href="index.php?route=information/contact" class="menu_link">
                  <span class="menu_link_text">ПАРТНЕРАМ</span>
                </a>
              </li>
                <li class="menu_item">
                <a href="index.php?route=information/contact" class="menu_link">
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
                   <div class="btn-group">
                      <button id="button_catalog" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"><img src="catalog/view/theme/meggy/image/menu_smoll.png" alt=""></button>
                     <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown">
                         <li class="dropdown-submenu">
                          <a tabindex="-1" href="#">Каталог
                          </a>
                          <?php if ($categories) { ?>
                           <ul class="dropdown-menu">
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
                  <li id="search_big" class="in_item">
                  <?php echo $search; ?>
                  </li>
                  <!--search end-->
                  <div>
                  <?php echo $currency; ?>
                  </div>
                  <li id="login" class="in_item">
                     <?php if ($logged) { ?>
                      <a href="<?php echo $text_logout; ?>" class="in_in">
                      <span id="login" class="glyphicon glyphicon-user">
                        <img src="catalog/view/theme/meggy/image/face.png" alt="">
                      </span>
                      <span class="in_link_text hidden-xs "><?php echo $text_logout; ?></span>
                      </a>
                     <?php } else { ?>
                      <a href="<?php echo $login; ?>" class="in_in">
                      <span><img src="catalog/view/theme/meggy/image/face.png" alt=""></span>
                      <span class="in_link_text hidden-xs hidden-sm"><?php echo $text_login; ?>
                      </span>
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
          <div class="header_tel col-xs-12 col-lg-2">
            <a href="<?php echo $contact; ?>">
            <p><?php echo $telephone; ?></p></a>
            <span id="time">Пн-Пт с 09:00 до 18:00. Сб-Вc выходной</span>
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
          <a href="#">
          <div class="search_bottom col-xs-12 hidden-lg hidden-md">
            <p>Поиск</p>
              <span class="glyphicon glyphicon-search"></span>
          </div>
          </a>
        </div>
        </div>
      </div>
    </header>
	<div></div>
 <script type =text/javascript>
 </script>
