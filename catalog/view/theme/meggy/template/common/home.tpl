<?php echo $header; ?>
<div class="carusel_big">
                <div id="carousel" class="carousel slide">
                   <!--Индикаторы слайдов-->
                   <ol class="carousel-indicators">
                     <li class="active" data-target="#carousel" data-slide-to="0"></li>
                     <li data-target="#carousel" data-slide-to="1"></li>
                     <li data-target="#carousel" data-slide-to="2"></li>
                   </ol>
                   <div class="carousel-inner">
                     <div class="item active" >
                       <a href="#">
                         <img src="catalog/view/theme/meggy/image/carusel_big_1.png"  alt="">
                       </a>
                     </div>
                     <div class="item" >
                       <a href="#">
                         <img src="catalog/view/theme/meggy/image/carusel_big_1.png"  alt="">
                       </a>
                     </div>
                     <div class="item" >
                       <a href="#">
                         <img src="catalog/view/theme/meggy/image/carusel_big_1.png"  alt="">
                       </a>
                     </div>
                   </div>
                   <!--Стрелки переключения слайда-->
                    <a href="#carousel" class="left carousel-control" data-slide="prev">
                    <!-- <span class="glyphicon glyphicon-chevron-left"></span>-->
                        <img src="catalog/view/theme/meggy/image/tr_carusel_big_left.png" alt="" class="tr_carusel_big_left">
                    </a>
                    <a href="#carousel" class="right carousel-control"data-slide="next">
                        <img src="catalog/view/theme/meggy/image/tr_carusel_big_right.png" alt="" class="tr_carusel_big_right">
                    </a>
                </div>
            </div>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>