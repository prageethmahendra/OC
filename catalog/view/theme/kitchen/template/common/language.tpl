<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">
    <p><?php echo $text_language; ?></p>
    <ul class="language-body">
      <?php foreach ($languages as $language) { ?>
      <li><button class="language-select btn-link btn" type="button" name="<?php echo $language['code']; ?>"><img src="catalog/language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></button></li>
      <?php } ?>
    </ul>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>

<?php } ?>
