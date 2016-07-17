<div class="panel panel-default feature-box <?php echo $addition_cls; ?> <?php echo $background;?>">
    <div class="fbox-icon">
        <?php if(isset($linkurl) && $linkurl){ ?>
        <a href="<?php echo $linkurl; ?>" title="<?php if(isset($widget_heading)&&!empty($widget_heading)){ echo $widget_heading; } ?>">
        <?php }?>
            <?php if (isset($iconurl) && $iconfile){ ?>
                <img class="img" src="<?php echo $iconurl; ?>" alt="">
            <?php }elseif($iconclass){ ?>
                <i class="<?php echo $iconclass; ?>"></i>
            <?php }?>
        <?php if(isset($linkurl) && $linkurl){?>
        </a>
        <?php } ?>
    </div>
    <div class="fbox-body">
        <?php if(isset($widget_heading)&&!empty($widget_heading) ){ ?>
        <h1 class="heading">
            <?php echo $widget_heading; ?>
        </h1>
        <?php } ?>

        <?php if(isset($htmlcontent) && $htmlcontent){ ?>
        <?php echo html_entity_decode($htmlcontent, ENT_QUOTES, 'UTF-8'); ?>
        <?php } ?>
    </div>
</div>