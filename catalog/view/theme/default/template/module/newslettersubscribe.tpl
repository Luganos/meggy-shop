<div id="subscribe<?= $module ?>">
  <div class="subscribe-section">
    <h5><?php echo $heading_title; ?></h5>
  </div>
  <div class="subscribe-section clearfix">
    <form class="form-inline" name="subscribe<?= $module ?>">
      <div class="form-group">
        <label class="sr-only" for="exampleInputEmail3">Email address</label>
        <input type="email" id="subscribe_email" name="subscribe_email" class="form-control subscribe my-top-banner-mail-input" placeholder="<?php echo $entry_email; ?>">
      </div>
      <?php if ($option_unsubscribe) { ?>
        <button type="button" class="btn btn-primary" id="subscribe-btn" onclick="email_subscribe<?= $module ?>()"><?php echo $entry_button; ?></button>
        <button type="button" class="btn btn-primary" id="subscribe-btn" onclick="email_unsubscribe<?= $module ?>()"><?php echo $entry_unbutton; ?></button>
      <?php } else { ?>
        <button type="button" class="btn btn-primary" id="subscribe-btn" onclick="email_subscribe<?= $module ?>()"><?php echo $entry_button; ?></button>
      <?php } ?>
      <p class="col-sm-12" id="subscribe_result<?= $module ?>"></p>
    </form>
  </div>
</div><!-- /#subscribe -->
<script language="javascript">
  function email_subscribe<?= $module ?>() {
    $.ajax({
      type: 'post',
      url: 'index.php?route=module/newslettersubscribe/subscribe',
      dataType: 'json',
      data: $("form[name=subscribe<?= $module ?>]").serialize(),
      success: function (json) {
        if (json['status']) {
          $('#subscribe_result<?= $module ?>').html(json['message']);
        } else {
          $('#subscribe_result<?= $module ?>').html('<span class=\"text-danger\">' + json['message'] + '</span>');
        }
      }
    });
  }
  function email_unsubscribe<?= $module ?>() {
    $.ajax({
      type: 'post',
      url: 'index.php?route=module/newslettersubscribe/unsubscribe',
      dataType: 'json',
      data: $("form[name=subscribe<?= $module ?>]").serialize(),
      success: function (json) {
        if (json['status']) {
          $('#subscribe_result<?= $module ?>').html(json['message']);
        } else {
          $('#subscribe_result<?= $module ?>').html('<span class=\"text-danger\">' + json['message'] + '</span>');
        }
      }
    });
  }
</script>
