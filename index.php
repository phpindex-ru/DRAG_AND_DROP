<?php
//include database class
include_once 'db.php';
$db = new DB();
?>
<!DOCTYPE HTML>
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.reorder_link').on('click',function(){
		$("ul.reorder-photos-list").sortable({ tolerance: 'pointer' });
		$('.reorder_link').html('Сохранить изменения');
		$('.reorder_link').attr("id","save_reorder");
		$('#reorder-helper').slideDown('slow');
		$('.image_link').attr("href","javascript:void(0);");
		$('.image_link').css("cursor","move");
		$("#save_reorder").click(function( e ){
			if( !$("#save_reorder i").length ){
				$(this).html('').prepend('<img src="images/refresh-animated.gif"/>');
				$("ul.reorder-photos-list").sortable('destroy');
				$("#reorder-helper").html( "" ).removeClass('light_box').addClass('notice notice_error');
	
				var h = [];
				$("ul.reorder-photos-list li").each(function() {  h.push($(this).attr('id').substr(9));  });
				
				$.ajax({
					type: "POST",
					url: "orderUpdate.php",
					data: {ids: " " + h + ""},
					success: function(){
						window.location.reload();
					}
				});	
				return false;
			}	
			e.preventDefault();		
		});
	});
});
</script>
</head>
<body>
<div style="margin-top:50px;">
	<a href="javascript:void(0);" class="reorder_link" id="save_reorder">Изменить порядок фотографий</a>
    <div id="reorder-helper" class="light_box" style="display:none;">1. Перенесите мышкой для изменения.<br>2. Гажмите 'Сохранить изменения'.</div>
    <div class="gallery">
        <ul class="reorder_ul reorder-photos-list">
        <?php 
			//Fetch all images from database
			$images = $db->getRows();
			if(!empty($images)){
				foreach($images as $row){
		?>
            <li id="image_li_<?php echo $row['id']; ?>" class="ui-sortable-handle"><a href="javascript:void(0);" style="float:none;" class="image_link"><img src="images/<?php echo $row['img_name']; ?>" alt=""></a></li>
        <?php } } ?>
        </ul>
    </div>
</div>
</body>
</html>
