<?php echo $header; ?>
<?php if (!empty($meggy_slideshow)) { ?>
<?php echo $meggy_slideshow; ?>
<?php } ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="main_bottom_text">       
    <div class="main_big_text_top">
                    <div class="inet_shop">
                        <span>Интернет-магазин &laquoMEGGI&raquo</span>
                    </div>
                    <div class="inet_shop_text_left">
                        <p>Интернет-магазин &laquoMEGGI&raquo - специализированный онлайн магазин по
                        оптовой продаже женской одежды собственного производства. Мы не занимаемся розницей. Сотрудничаем только с оптовыми клиентами. Для кого-то опт только одно из направлений работы. Для нас все иначе</p>
                        <p>Предлагая Вам оптовую покупку женской одежды, мы четко осознаем насколько важны качество нашего товара и сервиса для развития вашего бизнеса.
                        <p>Для того чтоб упростить процесс обслуживания клиентов, фабрика &laquoMEGGI&raquo открыла свой интернет-магазин.</p>
                    </div>
                    <div class="inet_shop_text_right">
                        <p>Здесь Вы в любое удобное время можете детально ознакомится с:</p>
                        <ul>
                            <li class="inet_shop_text_right_li">ассортиментом товара;</li>
                            <li class="inet_shop_text_right_li">внешним видом каждого изделия;</li>
                            <li class="inet_shop_text_right_li">оптовыми ценами на женскую одежду</li>
                            <li class="inet_shop_text_right_li">наличием интересующие модели одежды;</li>
                            <li class="inet_shop_text_right_li">проводимыми акциями;</li>
                            <li class="inet_shop_text_right_li">условиями сотрудничества.</li>
                        </ul>
                    </div>
                    <div class="inet_shop_text-center">
                        <p>Всю женскую одежду, представленную на нашем сайте, мы шьем сами. Практически весь ассортимент - это эксклюзивные модели, дизайн которых разрабатывается на фабрике &laquoMEGGI&raquo Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores ad facilis similique quae quaerat iste obcaecati expedita ipsam suscipit, accusantium ex laborum sunt minus rerum? Optio, dicta, dolorem. Ex, officia?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam eius ut asperiores impedit nostrum, dolorum optio delectus minima debitis amet! Ipsam nostrum iusto quasi officiis nulla voluptates, minima quaerat nemo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores ad facilis similique quae quaerat iste obcaecati expedita ipsam suscipit, accusantium ex laborum sunt minus rerum? Optio, dicta, dolorem. Ex, officia?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam eius ut asperiores impedit nostrum, dolorum optio delectus minima debitis amet! Ipsam nostrum iusto quasi officiis nulla voluptates, minima quaerat nemo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores ad facilis similique quae quaerat iste obcaecati expedita ipsam suscipit, accusantium ex laborum sunt minus rerum? Optio, dicta, dolorem. Ex, officia?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam eius ut asperiores impedit nostrum, dolorum optio delectus minima debitis amet! Ipsam nostrum iusto quasi officiis nulla voluptates, minima quaerat nemo?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maiores ad facilis similique quae quaerat iste obcaecati expedita ipsam suscipit, accusantium ex laborum sunt minus rerum? Optio, dicta, dolorem. Ex, officia?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam eius ut asperiores impedit nostrum, dolorum optio delectus minima debitis amet! Ipsam nostrum iusto quasi officiis nulla voluptates, minima quaerat nemo?</p>
                        <!--<a href="#">-->
                        <span id="read_more">Читать далее &gt&gt</span>
                        <!--</a>-->
                    </div>
                </div>
</div>
<?php echo $footer; ?>