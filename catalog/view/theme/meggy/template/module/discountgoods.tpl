
   <?php $size = count($products); ?>
   <?php if ($size > 0) { ?>
   <div class="main_bottom_text">
      <div class="menu_main hidden-xs">
          <ul class="ww">
             <li class="menu_main_text">
                <a href="index.php?route=common/home&news=1" >
                  <span>новинки</span>
                </a>
             </li>
             <li class="menu_main_text">
                <a href="index.php?route=common/home&actions=1">
                   <span>акции</span>
                </a>
             </li>
             <li class="menu_main_text">
                <a href="index.php?route=common/home&discounts=1">
                  <span class="news_bottom">со скидкой -10%</span>
                </a>
             </li>
          </ul>
     </div>
     <div class="main_bottom_text_slider hidden-lg hidden-md hidden-sm ">
        <ul class="bxslider">
          <li id="menu_main_text_slider" class="menu_main_text">
                <a href="index.php?route=common/home&news=1" >
                  <span id="news_bottom_slider" class="news_bottom">новинки</span>
                </a>
             </li>
             <li id="menu_main_text_slider" class="menu_main_text">
                <a href="index.php?route=common/home&actions=1">
                   <span id="news_bottom_slider">акции</span>
                </a>
             </li>
             <li id="menu_main_text_slider" class="menu_main_text">
                <a href="index.php?route=common/home&discounts=1">
                  <span id="news_bottom_slider_discont">со скидкой -10%</span>
                </a>
             </li>
         <!-- <li><img src="catalog/view/theme/meggy/image/new.png" /></li>
          <li><img src="catalog/view/theme/meggy/image/new.png" /></li>
          <li><img src="catalog/view/theme/meggy/image/new.png" /></li>
          <li><img src="catalog/view/theme/meggy/image/new.png" /></li>-->
        </ul>
     </div>
      <div id="srcoll" class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'>
          <?php $n = 1; ?>
          <?php foreach ($products as $product)  { ?>
           <div id="sl_slide" class="sl_slide_<?php echo $n; ?>">
               <div class="sl_img_<?php echo $n; ?>">
                    <a href = "<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="sl_img_new"></a>
                   <img src="catalog/view/theme/meggy/image/sale.png" class="label_new" alt="">
               </div>
               <span class="sl_text">
                    <p class="sl_id"><?php echo $product['name']; ?>
                     <?php if ($product['sku']) { ?>
                     - <?php echo $product['sku']; ?>
                     <?php } ?>
                     </p>
               </span>
               <?php if ($product['discount']) { ?>
               <span class="sl_text">
                   <p class="sl_price_right"><?php echo $product['discount']; ?></p>
               </span>
               <p class="sl_price_bottom">
               <?php } ?>
               <?php if ($product['size']) { ?>
               <?php $out = FALSE; ?>
		     <?php foreach ($product['size'] as $options) { ?>
			  <?php foreach ($options as $option) { ?>
				<?php if (strtolower($option['name']) == strtolower("Размер") && $option['type'] == "image") { ?>
				      <?php foreach ($option as $sizes) { ?>
					    <?php if (is_array($sizes)) { ?>
					         <?php foreach ($sizes as $size) { ?>
						  <?php echo $size['name']; ?>|
                                                  <?php $out = TRUE; ?>
						  <?php } ?>
					     <?php } ?>
					  <?php if ($out) { ?>
					  <?php break; ?>
					  <?php } ?>
				      <?php } ?>
				<?php if ($out) { ?>
			        <?php break; ?>
				<?php } ?>
				<?php } ?>
				<?php if ($out) { ?>
				<?php break; ?>
				<?php } ?>
			   <?php } ?>
			<?php if ($out) { ?>
			<?php break; ?>
			<?php } ?>
			<?php } ?>
	        <?php } ?>
          </p>
               <div class="sl_kor_<?php echo $n; ?>">
                      <span class="sl_kor_text" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span>
               </div>
            </div>
        <?php $n++; ?>
        <?php } ?>
        </div>
         <!--End slider-->
   </div>
<script type =text/javascript>
$(function() {
scrollHomeDown();
})
   </script>
   <?php } ?>
