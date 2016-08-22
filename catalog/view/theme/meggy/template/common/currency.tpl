
<?php if (count($currencies) > 1) { ?>

   <li class="in_item dropdown">
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">   
                <a href="#" class="menu_link dropdown-toggle" data-toggle="dropdown">
                  <span class="in_link_big"><?php echo $code; ?></span>
                  <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li>
                    <?php foreach ($currencies as $currency) { ?>
                    <button class="currency-select" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['title']; ?></button>
                    <?php } ?>
                  </li>
                </ul>
        <input type="hidden" name="code" value="" />
       <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
   </form>    
 </li>

<?php } ?>
