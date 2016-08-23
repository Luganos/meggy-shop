<footer>
  <div id="footer" class="container col-xs-12">
      <div class="row">
        <div class="news">
          <div class="news_text">
            <p>ПОДПИШИСЬ НА НОВОСТИ</p>
            <div class="input">
              <form action="">
              <input type="text" name="email"  class="input_text" placeholder="     ВВЕДИТЕ E-MAIL" >
              <input id="submit" type="submit" value="" class="submit_email">
            </form>
            </div>
          </div>
        </div>
        <div class="footer_text">
          <div class="footer_top">
            <div class="footer_top_logo">
              <div class="footer_top_logo_img">
             <!-- <img src="www\catalog\view\theme\meggy\image\logo.png" alt="">-->
              <img src="catalog/view/theme/meggy/image/logo.png" alt="">
              </div>
              <div class="footer_top_logo_text">
              <span>
                Интернет-магазин «MEGGI» - специализированный онлайн магазин по оптовой продаже женской одежды собственного производства.
              </span>
              </div>
            </div>
            <div class="footer_top_katalog">
              <div class="footer_top_one">
                <span>КАТАЛОГ</span>
              </div>
              <div class="line">
              </div>
              <div class="footer_top_ul">
              <?php if ($categories) { ?>
                <ul>
                    <?php foreach ($categories as $category) { ?>
                    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                    <?php } ?>
                </ul>
                <?php } ?> 
              </div>
            </div>
            <div class="footer_top_work">
              <div class="footer_top_one">
                <span>УСЛОВИЯ РАБОТЫ</span>
              </div>
              <div class="line">
              </div>
              <div class="footer_top_ul">
                <ul>
                  <li><a href="index.php?route=information/information&information_id=6">оплата и доставка</a></li>
                  <li><a href="index.php?route=information/information&information_id=11">партнерам</a></li>
                  <li><a href="index.php?route=information/information&information_id=12">дилерам</a></li>
                </ul>
              </div>
            </div>
            <div class="footer_top_compani">
              <div class="footer_top_one">
                <span>О КОМПАНИИ</span>
              </div>
              <div class="line">
              </div>
              <div class="footer_top_ul">
                <ul>
                  <li><a href="index.php?route=information/information&information_id=4">о нас</a></li>
                  <li><a href="index.php?route=information/information&information_id=7">статьи</a></li>
                  <li><a href="index.php?route=information/information&information_id=8">акции</a></li>
                  <li><a href="index.php?route=information/information&information_id=9">новости</a></li>
                  <li><a href="index.php?route=information/contact">контакты</a></li>
                  <li><a href="index.php?route=information/information&information_id=10">задать вопрос</a></li>
                </ul>
              </div>
            </div>
          </div>

          <div class="footer_med">
            <div class="footer_med_seil">
              <span class="footer_med_one">
                ОПТОВЫЙ ОТДЕЛ
              </span>
              <span class="footer_med_two">
                +38 (050) 307-78-64
              </span>
              <span class="footer_med_three">
                Пн-Пт с 09:00 до 18:00. Сб-Вc выходной
              </span>
            </div>
            <div class="footer_med_get">
              <span class="footer_med_one">
                ПРИЕМ ЗАЯВОК
              </span>
              <span class="footer_med_three">
                meggi.com.ua@gmail.com
              </span>
            </div>
            <div class="footer_med_net">
              <span class="footer_med_four">
                Следите за нами
              <a href="https://twitter.com/">
              <img src="catalog/view/theme/meggy/image/Twitter.png" alt="">
              </a>
              <a href="https://www.facebook.com/?ref=logo">
              <img src="catalog/view/theme/meggy/image/fb.png" alt="">
              </a>
              <a href="https://vk.com/">
              <img src="catalog/view/theme/meggy/image/vk.png" alt="">
              </a>
              <a href="https://m.ok.ru/">
              <img src="catalog/view/theme/meggy/image/Odnoklasniki.png" alt="">
              </a>
              <a href="https://accounts.google.com">
              <img src="catalog/view/theme/meggy/image/g.png" alt="">
              </a>
              </span>
            </div>
          </div>
          <div class="footer_down">
            <div class="footer_down_cop">
              <span>&copy 2011—2016 Производитель женской одежды «MEGGI»
              </span>
              <span id="geeker">&copy Developer by «MEGGI»
              <a href="#">
                <img src="catalog/view/theme/meggy/image/logo_little.png" alt="">
              </a>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->
<script src="catalog/view/javascript/js.js" type="text/javascript"></script>
</body></html>