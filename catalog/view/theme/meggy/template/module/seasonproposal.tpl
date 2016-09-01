<?php if (count($banners) > 0) { ?>
<div class="baner_all">
    <?php if (isset($banners[0]['image'])) { ?>
    <div class="baner_one">
        <a href ="<?php echo $banners[0]['link']; ?>">
        <img src="<?php echo $banners[0]['image']; ?>" alt="<?php echo $banners[0]['title']; ?>">
        </a>
    </div>
    <?php } ?>
    <?php if (isset($banners[1]['image'])) { ?>
    <div class="baner_two">
         <a href ="<?php echo $banners[1]['link']; ?>">
        <img src="<?php echo $banners[1]['image']; ?>" alt="<?php echo $banners[1]['title']; ?>">
        </a>
    </div>
    <?php } ?>
    <?php if (isset($banners[2]['image'])) { ?>
    <div class="baner_three">
        <a href ="<?php echo $banners[2]['link']; ?>">
        <img src="<?php echo $banners[2]['image']; ?>" alt="<?php echo $banners[2]['title']; ?>">
        </a>
    </div>
    <?php } ?>
</div>
 <?php } ?>


