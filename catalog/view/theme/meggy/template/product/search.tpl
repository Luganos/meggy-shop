<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
<div class="container container_search">
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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><div id="mfilter-content-container">
      <h1><?php echo $heading_title; ?></h1>
      <label class="control-label" for="input-search"><?php echo $entry_search; ?></label>
      <div class="row">
        <div class="col-sm-4">
          <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="form-control" />
        </div>
        <div class="col-sm-3">
          <select name="category_id" class="form-control">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-sm-3">
          <label class="checkbox-inline">
            <?php if ($sub_category) { ?>
            <input type="checkbox" name="sub_category" value="1" checked="checked" />
            <?php } else { ?>
            <input type="checkbox" name="sub_category" value="1" />
            <?php } ?>
            <?php echo $text_sub_category; ?></label>
        </div>
      </div>
      <p>
        <label class="checkbox-inline">
          <?php if ($description) { ?>
          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
          <?php } else { ?>
          <input type="checkbox" name="description" value="1" id="description" />
          <?php } ?>
          <?php echo $entry_description; ?></label>
      </p>
      <div class="button_text_sea">
          <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button_text_search" />
      </div>
      <h2><?php echo $text_search; ?></h2>
      <?php if ($products) { ?>
      <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="row row_categori_sort">
        <div class="col-md-4 category_cort">
          <div class="btn-group">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-2 text-right cort_category">
          <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right text-right_category ">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-1 text-right col_show">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
      <!---->
      <div class="row row_category">
        <?php $n = 1; ?>
        <?php foreach ($products as $product)  { ?>
          <div id="categori_show" class="product-layout product-grid col-lg-4 col-md-4 col-sm-4 col-xs-12"><!--metod show in page-->
           <div class="sl_slide_<?php echo $n; ?> sl_slider_category">
           <div class="sli_img_<?php echo $n; ?> category_height_img">
               <a href="<?php echo $product['href']; ?>"><img id="sliii" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="sli_img_new" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
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
               <?php } ?>
               <?php if ($product['size']) { ?>
               <?php $out = FALSE; ?>
		     <?php foreach ($product['size'] as $options) { ?>
			  <?php foreach ($options as $option) { ?>
				<?php if ($option['name'] == strtolower("Размер") && $option['type'] == "image") { ?>
				      <?php foreach ($option as $sizes) { ?>
					    <?php if (is_array($sizes)) { ?>
					         <?php foreach ($sizes as $size) { ?>
						  <?php echo $size['name']; ?>
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
               <div class="sl_kor_<?php echo $n; ?>">
                      <span class="sl_kor_text" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span>
               </div>
            </div>

          </div>

        <?php $n++; ?>
        <?php } ?>
      </div>
      <!---->
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      </div><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>