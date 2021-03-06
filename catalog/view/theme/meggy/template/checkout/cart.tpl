<?php echo $header; ?>
<!--<div class="cart_main">

</div>-->
<div class="container container_cart">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
    <hr id="cart_hr_top" style="display: block;">
  </ul>
  <div class="contetn_main">
    <div class="text_top text_top_cart">
      <p>Корзина покупателя</p>
    </div>
  </div>

  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
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
    <div id="content" class="<?php echo $class; ?> content_cart"><?php echo $content_top; ?>
      <!--<h1><?php /*echo $heading_title;*/ ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php /*echo $weight;*/ ?>)
        <?php } ?>
      </h1>-->
      <form class="cart_table_big_visible" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table id="border_table" class="table table-bordered">
            <thead>
              <tr class="tr">
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody id="border_table_height">
              <?php $count = 0; ?>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left text-left_cart"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left text_left_cart_product"><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 120px;min-width: 100px;">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_m_<?php echo $count; ?>"><i>-</i></button>
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="input_col_<?php echo $count; ?>" />

                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_p_<?php echo $count; ?>"><i >+</i></button>
                    </div></td>
                <td class="text-right cart_table_price"><?php echo $product['price']; ?></td>
                <td class="text-right cart_table_total"><?php echo $product['total']; ?><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class=" del btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></td>
              </tr>
              <?php $count++; ?>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
  <form class="cart_table_small_visible" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table id="border_table" class="table table-bordered">
            <thead>
              <tr class="tr">
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody id="border_table_height">
              <?php foreach ($products as $product) { ?>
              <tr class="cart_table_start">
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>

                <td class="text-left"><?php echo $product['model']; ?><div class="input-group btn-block" style="max-width: 120px;">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_m_<?php echo $count; ?>"><i>-</i></button>
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="input_col_<?php echo $count; ?>" />

                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_p_<?php echo $count; ?>"><i >+</i></button>
                    </div></td>

              </tr>
              <tr class="cart_table_small_tr">

                <td class="text-right cart_table_price"><?php echo $product['price']; ?></td>
                <td class="text-right cart_table_total"><?php echo $product['total']; ?></td>
                <td><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class=" del btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>

<form class="cart_table_small_320_visible" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table id="border_table" class="table table-bordered">
            <thead>
              <tr class="tr">
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody id="border_table_height">
              <?php foreach ($products as $product) { ?>
              <tr class="cart_table_start">
                <td class="text-center cart_table_start_img"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
              </tr>
              <tr class="cart_table_small_320_button">
                <td class="text-left "><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 120px;">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_m_<?php echo $count; ?>"><i>-</i></button>
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="input_col_<?php echo $count; ?>" />

                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="cart_p_<?php echo $count; ?>"><i >+</i></button>
                    </div></td>
              </tr>
              <tr class="cart_table_small_tr">
                <td class="text-right cart_table_price"><?php echo $product['price']; ?></td>

              </tr>
              <tr>
                <td class="text-right cart_table_total"><?php echo $product['total']; ?></td>
                <td class="cart_table_320_button_del"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class=" del btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <div class="row table-bordered_size">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">

            <!--<tr>
              <td class="text-right"><strong><?php echo $totals[1]['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $totals[1]['text']; ?></td>
            </tr>-->
            <tr>
              <td class="text-right table_cart_total"><strong>Итого:</strong></td>
              <td class="text-right table_cart_number"><?php echo $text_items; ?></td>
            </tr>
          </table>
        </div>
      </div>
      <hr class="zas">
      <?php if ($coupon) { ?>
      <div class="panel-group" id="accordion"><?php echo $coupon; ?></div>
      <?php } ?>
      <br />
      <div class="buttons">
        <div class="button_text pull-left button_text_cart"><a href="<?php echo $continue; ?>"><span><?php echo $button_shopping; ?></span></a></div>
        <div id="button_text_right" class="button_text_right pull-right button_text_right_cart "><a href="<?php echo $checkout; ?>"><span><?php echo $button_checkout; ?></span></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
  <div id="srcoll" class="sl" data-slick='{"slidesToShow": 3, "slidesToScroll": 1}'>
</div>
</div>
<?php echo $footer; ?>
<script>
  if(width < 855){
            $("#cart_hr_top").css({"display":"none"});
};
</script>