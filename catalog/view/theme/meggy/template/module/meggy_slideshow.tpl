
<?php if (count($banners) > 0) { ?>
<div class="carusel_big">
                <div id="carousel" class="carousel slide">
                   <!--Индикаторы слайдов-->
                   <ol class="carousel-indicators">
                     <?php if (count($banners) > 1) { ?>
                     <li class="active" data-target="#carousel" data-slide-to="0"></li>
                     <?php } ?>
                     <?php for ($n = 1; $n <= count($banners) - 1; $n++) { ?>
                     <li data-target="#carousel" data-slide-to="<?php echo $n; ?>"></li>
                      <?php } ?>
                   </ol>
                   <div class="carousel-inner">
                     <div class="item active" >
                     <?php if ($banners[0]['link']) { ?>
                       <a href="<?php echo $banners[0]['link']; ?>">
                         <img src="<?php echo $banners[0]['image']; ?>"  alt="<?php echo $banners[0]['title']; ?>">
                       </a>
                     <?php } else { ?>
                     <a href="#">
                         <img src="<?php echo $banners[0]['image']; ?>"  alt="<?php echo $banners[0]['title']; ?>">
                     </a>
                     <?php } ?>
                     </div>
                     <?php if (count($banners) > 1) { ?>
                        <?php for ($l = 1; $l <= count($banners) - 1; $l++) { ?> 
                            <div class="item">
                            <?php if ($banners[$l]['link']) { ?>
                            <a href="<?php echo $banners[$l]['link']; ?>">
                               <img src="<?php echo $banners[$l]['image']; ?>"  alt="<?php echo $banners[$l]['title']; ?>">
                            </a>
                            <?php } else { ?>
                            <a href="#">
                               <img src="<?php echo $banners[$l]['image']; ?>"  alt="<?php echo $banners[$l]['title']; ?>">
                            </a>
                           <?php } ?>
                          </div>
                         <?php } ?>
                     <?php } ?>
                   </div>
                   <!--Стрелки переключения слайда-->
                    <a href="#carousel" class="left carousel-control" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                        <img src="catalog/view/theme/meggy/image/tr_carusel_big_left.png" alt="" class="tr_carusel_big_left">
                    </a>
                    <a href="#carousel" class="right carousel-control"data-slide="next">
                        <img src="catalog/view/theme/meggy/image/tr_carusel_big_right.png" alt="" class="tr_carusel_big_right">
                    </a>
                </div>
            </div>
       <?php } ?>
