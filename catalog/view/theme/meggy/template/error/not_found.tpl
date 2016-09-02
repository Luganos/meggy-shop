<?php echo $header; ?>
<div class="error">
  <span data-picture data-alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia">
      <span data-src="catalog/view/theme/meggy/image/404_big.png"></span>
      <span data-src="catalog/view/theme/meggy/image/404_big.png" data-media="(min-width: 481px)"></span>
      <span data-src="catalog/view/theme/meggy/image/404_big.png" data-media="(min-width: 769px)"></span>
      <span data-src="catalog/view/theme/meggy/image/404_extra.png" data-media="(min-width: 855px)"></span>

      <!-- Fallback content for non-JS browsers. Same img src as the initial, unqualified source element. -->
      <noscript><img src="external/imgs/small.jpg" alt="A giant stone face at The Bayon temple in Angkor Thom, Cambodia"></noscript>
    </span>
 <!-- <img src="catalog/view/theme/meggy/image/404.png" alt="">-->
</div>
<!--
<div class="container">
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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <p><?php echo $text_error; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>-->
<!--<?php echo $footer; ?>-->