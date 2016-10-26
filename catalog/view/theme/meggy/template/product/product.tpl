<?php echo $header; ?>
<div class="open_table_size"><img class="close_table_size" src="catalog/view/theme/meggy/image/close.png" alt=""></div>
<div class="open_big_img"><img class="close_table_size" src="catalog/view/theme/meggy/image/close.png" alt=""></div>
<div id="container_product" class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> content_product "><?php echo $content_top; ?>
      <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-8'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
        <div id="xs_product" class="<?php echo $class; ?>">

          <?php if ($thumb || $images) { ?>
          <ul class="thumbnails thumbnails_product">
          <?php } ?>
            <?php if ($images) { ?>

            <?php foreach ($images as $image) { ?>
            <li class="image-additional vertical_slider_small"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
            <?php } ?>


            <div class="container vertical_slider_big">
             <div id="va-accordion" class="va-container">
              <div class="va-nav">
               <span id="va-nav-prev" class="va-nav-prev">Назад</span>
               <span id="va-nav-next" class="va-nav-next">Дальше</span>
              </div>
             <div class="va-wrapper">
            <?php $l = 1; ?>
            <?php foreach ($images as $image) { ?>
            <div class="va-slice va-slice-<?php echo $l; ?>">
            <img id="ttest-<?php echo $l; ?>" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
            </div>
            <?php $l++; ?>
            <?php } ?>
              </div>
            </div>
          </div>
          <?php } ?>
          <?php if ($thumb) { ?>
          <li class="tovar_img thumbnails"><a class="thumbnail thumbnails" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img id="zse" class="tovar_img_img " src="<?php echo $thumb; ?>" data-imagezoom="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
          <!-- AddThis Button BEGIN -->
          <div class="addthis_toolbox addthis_default_style ">
          <a class="addthis_button_compact"></a><p>Поделится в соц. сетях</p>
          </div>
          <script type="text/javascript">var addthis_config = {"data_track_clickback":true};</script>
          <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=YOUR_ACCOUNT_ID!!"></script>
          <!-- AddThis Button END -->
          <?php if ($new_goods_flag) { ?>
          <img id="produc_new" src="catalog/view/theme/meggy/image/new.png" class="label_new" alt="">
          <?php } ?>
          <?php if ($discount_goods_flag) { ?>
          <img id="produc_discont" src="catalog/view/theme/meggy/image/sale.png" class="label_new" alt="">
          <?php } ?>
          <?php if ($action_goods_flag) { ?>
          <img id="produc_action" src="catalog/view/theme/meggy/image/action.png" class="label_new" alt="">
          <?php } ?>
          </li>
          </ul>
          <?php } ?>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
        <div id="xs_product" class="<?php echo $class; ?> xs_product_right">
          <h1 class="cart_tovar_procuct"><?php echo $heading_title; ?>
          <?php if($sku) { ?>
          <?php echo "-" . " " . $sku; ?>
          <?php } ?>
          </h1>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <span><img src="catalog/view/theme/meggy/image/text_ot.png" alt=""></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>

              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> | <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
          </div>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span class="product_price_discont"><?php echo $price; ?></span><span class="product_price"><?php echo $special; ?></span></li>
            <li>
              <h2></h2>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
          <div class="col_price">
            <div class="col_price_header">
                <p>количество (шт)</p>
                <span>цена</span>
            </div>
             <div class="col_price_tr">
                <p>1 - 4</p>
                <?php if (!$special) { ?>
                <span><?php echo $price; ?></span>
                <?php } else { ?>
                <span><?php echo $special; ?><span>
                <?php } ?>
            </div>
             <div class="col_price_tr">
                <p>5+</p>
                <?php if(is_array($discounts)) { ?>
                <?php foreach ($discounts as $discount) { ?>
                <?php if(intval($discount['quantity']) == 5) { ?>
                <span><?php echo $discount['price']; ?><span>
                <?php break; ?>
                <?php } ?>
                <?php } ?>
                <?php } else { ?>
                <?php if (!$special) { ?>
                <span><?php echo $price; ?></span>
                <?php } else { ?>
                <span><?php echo $special; ?><span>
                <?php } ?>
                <?php } ?>
            </div>
          </div>
          <div id="product">
            <?php if ($options) { ?>

            <h3 hidden="true"><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>44</label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?>66</label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <?php $unique_id = 0; ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <?php if (strtolower($option['name']) == strtolower("Размер")) { ?>
              <label class="control-label"><?php echo $option['name']; ?></label><span class="table_size"><img src="catalog/view/theme/meggy/image/table_size.png" alt="">таблица размеров</span>
              <?php } ?>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <?php if (strtolower($option['name']) == strtolower("Размер")) { ?>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" hidden="true" />
                    <img src="<?php echo $option_value['image']; ?>" id = "size-image-<?php echo $unique_id; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" />
                    <?php } else if (strtolower($option['name']) == strtolower("Связать с")) { ?>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" hidden="true" />
                    <a href = "<?php echo $option_value['bind_id']; ?>"><img src="<?php echo $option_value['bind_image']; ?>" id = "color-image-<?php echo $unique_id; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /></a>
                    <?php } ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php $unique_id++; ?>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>88</label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?>99</label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>

            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class=""><div class="button-cart-border"><span ><?php echo $button_cart; ?></span></div></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="menu_main_product hidden-md hidden-sm hidden-xs ">
               <ul class="ww">
                  <?php if ($attribute_groups) { ?>
                  <li class="menu_main_text_product">
                      <span><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></span>
                  </li>
                  <?php } ?>
                  <?php if ($tab_description) { ?>
                  <li class="menu_main_text_product">
                      <span><a href="#tab-description" data-toggle="tab">доставка и оплата</a></span>
                  </li>
                  <?php } ?>
                  <?php if ($review_status) { ?>
                  <li  class="menu_main_text_product">
                      <span id="menu_main_text_product_last"><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></span>
                  </li>
                  <?php } ?>
               </ul>
      </div>
      <div class="main_bottom_text_slider hidden-lg ">
        <ul class="bxslider">
          <li id="menu_main_text_slider_procuct" class="menu_main_text">
                <a href="#tab-specification" data-toggle="tab">
                  <span id="news_bottom_slider" class="news_bottom"><?php echo $tab_attribute; ?></span>
                </a>
             </li>
             <li id="menu_main_text_slider_procuct" class="menu_main_text">
                <a href="#tab-description" data-toggle="tab">
                   <span id="news_bottom_slider">доставка и оплата</span>
                </a>
             </li>
             <li id="menu_main_text_slider_procuct_discont" class="menu_main_text">
                <a href="#tab-review" data-toggle="tab">
                  <span id="news_bottom_slider_discont"><?php echo $tab_review; ?></span>
                </a>
             </li>
        </ul>
     </div>
      <div class="tab-content">
            <div class="tab-pane" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups || $sku) { ?>
            <div class="tab-pane active" id="tab-specification">
              <table id="table_small" class="table table-bordered_product">
               </thead>
                <tbody>
                 <?php if ($sku) { ?>
                 <tr>
                    <td><span id="d_block"><?php echo $entry_sku; ?></span><span id="table_text_smoll"><?php echo $sku; ?></span></td>

                 </tr>
                <?php } ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><span id="d_block"><?php echo $attribute['name']; ?></span><span id="table_text_smoll"><?php echo $attribute['text']; ?></span></td>

                  </tr>
                  <?php } ?>
                <?php } ?>
                 </tbody>
             </table>
             <table id="table_big" class="table table-bordered_product">
               </thead>
                <tbody>
                 <?php if ($sku) { ?>
                 <tr>
                    <td><?php echo $entry_sku; ?></td>
                    <td id="table_text_smoll"><?php echo $sku; ?></td>
                 </tr>
                <?php } ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                  <tr>
                    <td><?php echo $attribute['name']; ?></td>
                    <td id="table_text_smoll"><?php echo $attribute['text']; ?></td>
                  </tr>
                  <?php } ?>
                <?php } ?>
                 </tbody>
              </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <form class="form-horizontal" id="form-review">
                <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <span><img src="catalog/view/theme/meggy/image/text_ot.png" alt=""></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>

              <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> | <a href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
          </div>
          <p id="send_ot">Оставьте отзыв</p>
               <div id="review"></div>
                <h2 id ="text-above-review"><?php echo $text_write; ?></h2>
                <?php if ($review_guest) { ?>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                  </div>
                </div>
                <div class="form-group required">
                  <div class="col-sm-12">
                    <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                    <!--<div class="help-block"><?php echo $text_note; ?></div>-->
                  </div>
                </div>
                <div class="form-group required">
                 <div class="col-sm-12" hidden ="true">
                    <label class="control-label"><?php echo $entry_rating; ?></label>
                    &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                    <input type="radio" name="rating" value="1" />
                    &nbsp;
                    <input type="radio" name="rating" value="2" />
                    &nbsp;
                    <input type="radio" name="rating" value="3" />
                    &nbsp;
                    <input type="radio" name="rating" value="4" />
                    &nbsp;
                    <input type="radio" checked name="rating" value="5" />
                    &nbsp;<?php echo $entry_good; ?></div>
                </div>
                <?php echo $captcha; ?>
                <div class="buttons clearfix">
                  <div class="pull-right">
                    <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class=""><div class="button-cart-border_otz"><span ><?php echo $button_continue; ?></span></div></button>
                    <!--<button type="button" id="button-review2" ><div class="button-cart-border_otz"><span >AJAX</span></div></button>-->
                  </div>
                </div>
                <?php } else { ?>
                <?php echo $text_login; ?>
                <?php } ?>
              </form>
            </div>
            <?php } ?>
      </div>
      <?php if ($products) { ?>
      <h3 id="you_can_help"><?php echo $text_related; ?></h3>
      <div class="you_can_help_line"></div>
      <div class="row">
      <!---slider_big-->
      <div id="srcoll" class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'>
          <?php $n = 1; ?>
          <?php foreach ($products as $product)  { ?>
           <div class="sli_slide_<?php echo $n; ?>">
               <div class="sli_img_<?php echo $n; ?>">
                   <a href ="<?php echo $product['href']; ?>"><img id="sliii" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; echo ($product['sku'])? ' - ' . $product['sku']: ''; ?>" title ="<?php echo $product['name']; echo ($product['sku'])? ' - ' . $product['sku']: ''; ?>" class="sli_img_new"></a>
                   <?php if ($product['new_goods_flag']) { ?>
                   <img id="product_new_large" src="catalog/view/theme/meggy/image/new.png" class="label_new category_new_large" alt="">
                   <?php } ?>
                   <?php if ($product['discount_goods_flag']) { ?>
                   <img id="product_discont_large" src="catalog/view/theme/meggy/image/sale.png" class="label_new" alt="">
                   <?php } ?>
                   <?php if ($product['action_goods_flag']) { ?>
                   <img id="product_action_large" src="catalog/view/theme/meggy/image/action.png" class="label_new category_discont_large" alt="">
                   <?php } ?>
               </div>
               <span class="sl_text">
                    <p class="sl_id"><?php echo $product['name']; ?>
                     <?php if ($product['sku']) { ?>
                     - <?php echo $product['sku']; ?>
                     <?php } ?>
                     </p>
               </span>
               <?php if ($product['price']) { ?>
               <span class="sl_text">
                   <?php if (!$product['special']) { ?>
                   <p class="sl_price_center"><?php echo $product['price']; ?></p>
                   <?php } else { ?>
                   <p class="sl_price_left"><?php echo $product['price']; ?></p>
                   <p class="sl_price_right"><?php echo $product['special']; ?></p>
                   <?php } ?>
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
        <!---END_slider_big-->
        <?php $i = 0; ?>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</div>
<script type="text/javascript"><!--

/*---show_product.tpl_click_img----*/
/*
var wep = 0;
$("#ver").on("click",function(){
       if(!wep){
       $("#zse").removeAttr("data-imagezoom");
        console.log("1");
       // console.log(event);
      //  console.log(event.clientX);
        event.clientX += event.clientX
     //   console.log(event.clientX);
        event.pageX += event.pageX;
        event.clientX = 100;
        wep = 1;
      }else{
        var img = $("#zse").attr("src");
        //var img = event.srcElement.src;
        //console.log(event.srcElement.src);
         $("#zse").attr("data-imagezoom", img);
        wep = 0;
        console.log("2");
        img = $(this).attr("src");
      //  $(".mfp-img").attr("data-imagezoom", "<?php echo $thumb; ?>");
      }

});*/
/*
$('body').on("mouseover",'.mfp-close', function(){
     // var rty = document.getElementById("zse");
     // rty.setAttribute("data-imagezoom", "<?php echo $thumb; ?>");
      $(".tovar_img_img").attr("data-imagezoom", "<?php echo $thumb; ?>");
});*/


/*---END_show_product.tpl_click_img----*/

var timerId = setTimeout(function() {
 //location.reload();
}, 5000);

setTimeout(clearTimer(),6000);

function clearTimer(){
  clearTimeout(timerId);
};
clearTimer();

$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html('<i><img src="catalog/view/theme/meggy/image/noun.png" alt=""></i><div class="number_of_purchases"><span >' + json['quantity'] + '</span></div>'+ json['total']);

				//$('#cart > button').html('<i><img src="catalog/view/theme/meggy/image/noun.png" alt=""></i>' + json['total']);

//<div class="number_of_purchases"><span ><?php echo $cart_value; ?></span></div>

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>', function(data) {
    if (/Нет отзывов о данном товаре./i.test(data)) {

       $("#text-above-review").css("visibility", "visible");
    } else {
        $("#text-above-review").css("visibility", "hidden");
    }
});

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
/*
$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});*/
</script>
<div id="srcoll" class="sl" data-slick='{"slidesToShow": 4, "slidesToScroll": 1}'></div>
<?php echo $footer; ?>