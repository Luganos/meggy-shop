                        
   <?php $size = count($products); ?>
   <?php if ($size > 0) { ?>  
   <div class="main_bottom_text">
      <div class="menu_main">
          <ul class="ww">
             <li class="menu_main_text">
                <a href="#">
                  <span>новинки</span>
                </a>
             </li>
             <li class="menu_main_text">
                <a href="#">
                   <span>акции</span>
                </a>
             </li>
             <li class="menu_main_text">
                <a href="#">
                  <span>со скидкой -10%</span>
                </a>
             </li>
          </ul>
     </div>   
      <div class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
          <?php $n = 1; ?>
          <?php foreach ($products as $product)  { ?>
           <div class="sl_slide_<?php echo $n; ?>">
               <div class="sl_img_<?php echo $n; ?>">
                   <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="sl_img_new">
               </div>
               <span class="sl_text">
                    <p class="sl_id"><?php echo $product['name']; ?></p>
               </span>
               <?php if ($product['price']) { ?>
               <span class="sl_text">
                   <?php if (!$product['special']) { ?>
                   <p class="sl_price_left"><?php echo $product['price']; ?></p>
                   <?php } else { ?>
                   <p class="sl_price_left"><?php echo $product['price']; ?></p>
                   <p class="sl_price_right"><?php echo $product['special']; ?></p>
                   <?php } ?> 
               </span>
               <?php } ?>
               <div class="sl_kor_<?php echo $n; ?>">
                      <span class="sl_kor_text" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span>
               </div>
            </div>
        <?php $n++; ?>  
        <?php } ?> 
        </div>
         <!--End slider-->  
   </div>
   <?php } ?>
