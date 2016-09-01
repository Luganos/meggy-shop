<?php if (count($banners) > 0) { ?>
<div class="baner_all">
    <div class="baner_one col-lg-4 col-md-4 col-xs-12">
        <a href ="<?php echo $banners[0]['link']; ?>">
        <img src="<?php echo $banners[0]['image']; ?>" alt="<?php echo $banners[0]['title']; ?>">
        </a>
    </div>
    <div class="baner_two col-lg-4 col-md-4 col-xs-12">
         <a href ="<?php echo $banners[1]['link']; ?>">
        <img src="<?php echo $banners[1]['image']; ?>" alt="<?php echo $banners[1]['title']; ?>">
        </a>
    </div>
    <div class="baner_three col-lg-4 col-md-4 col-xs-12">
        <a href ="<?php echo $banners[2]['link']; ?>">
        <img src="<?php echo $banners[2]['image']; ?>" alt="<?php echo $banners[2]['title']; ?>">
        </a>
    </div>
</div>
 <?php } ?>


