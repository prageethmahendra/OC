<?php if(true) { ?>
<?php  $id = "formNewLestter" . uniqid(); ?>

<div class="newsletter hidden-xs hidden-sm text-center" id="<?php echo $id; ?>">
    <div class="newsletter-content">
        <div class="newsletter-content-inside">
            <div class="newsletter-heading">
                <div class="welcome"><?php echo $text_welcome;?></div>
                <h3 class="heading_title"><?php echo $heading_title;?></h3>
            </div>

            <div class="newlestter-description">
                <?php echo $text_description; ?>
            </div>

            <div class="button-group margin-top-40">
                <input type="text" placeholder="Enter your email..." class="form-control email" <?php if(!isset($customer_email)): ?> <?php endif; ?> size="18" name="email">
                <button id="bt<?php echo $id; ?>" type="button" name="submitNewsletter" class="margin-top-20 btn btn-primary active"><?php echo $text_subcribe; ?></button>
                <div class="valid" id="valid<?php echo $id; ?>"></div>
            </div>
            <input type="hidden" value="1" name="action">

            <div id="newclose">
                <i class="fa fa-times"></i>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript"><!--
$('#bt<?php echo $id ?>').on('click', function() {
    $.ajax({
        url: 'index.php?route=module/pavnewsletter/subs',
        type: 'post',
        dataType: 'json',
        data: $("#<?php echo $id ?> input"),
        beforeSend: function() {
            $('#valid<?php echo $id; ?>').html('');
        },
        success: function(json) {
            $('.alert-success, .alert-danger').remove();

            if (json['error']) {
                $('#valid<?php echo $id; ?>').html('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i>' + json['error'] + '<button type="button" class="close" data-dismiss="alert">×</button></div>');
            }

            if (json['success']) {
                $('#valid<?php echo $id; ?>').html('<div class="alert alert-success"><i class="fa fa-check-circle"></i>' + json['success'] + '<button type="button" class="close" data-dismiss="alert">×</button></div>');
            }
        }
    });
});

--></script>

<script type="text/javascript"><!--

    $(document).ready(function() {
        var popup_show = "<?php echo $popup_show; ?>";
        var popup_status = "<?php echo $popup_status; ?>";
        var popup_time_after_show_popup = <?php echo $popup_time_after_show_popup; ?>;
        var id = "#<?php echo $id; ?>";

        if (popup_show == "always") {
            Cookies.set('popup', 'true', { expires: 7, path: '' });
        }

        // alert(Cookies.get('popup'));

        if (Cookies.get('popup') != 'false' || Cookies.get('popup') == 'undefined') {
            $(id).delay(popup_time_after_show_popup).fadeIn('medium');
            $("#newclose").click(function(){
                $(id).stop().fadeOut('medium');
            });
        }

        if (popup_show == "once") {
            Cookies.set('popup', 'false', { expires: 7, path: '' });
        }
    });

--></script>

<?php } ?>