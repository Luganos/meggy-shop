<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
<div class="container container_category">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="category_big_text">
    <div class="category_big_text_mid">
      <p><?php echo $heading_title; ?></p>
    </div>
  </div>
  <div class="row row_filter"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><div id="mfilter-content-container">
      <!--<h2><?php echo $heading_title; ?>555</h2>-->
      <?php if ($thumb) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
     <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>-->
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
      <hr>
      <br />
      <div class="row row_category">
        <?php $n = 1; ?>
        <?php foreach ($products as $product)  { ?>
          <div class="product-layout product-list col-xs-12"><!--metod show in page-->
           <div class="sl_slide_<?php echo $n; ?> sl_slider_category">
           <div class="sli_img_<?php echo $n; ?>">
                   <img id="sliii" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="sli_img_new">
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
               <div class="sl_kor_<?php echo $n; ?>">
                      <span class="sl_kor_text" onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></span>
               </div>
            </div>

          </div>

        <?php $n++; ?>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php if ($description) { ?>
        <div class="col-sm-10 category_text inet_shop_text-center"><?php echo $description; ?>
        <span id="read_more">Читать далее &gt&gt</span>
        </div>
        <?php } ?>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
