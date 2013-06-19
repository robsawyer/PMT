<!DOCTYPE html>
<!--[if IE 8]> 				 <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
<?php echo $this->Html->charset();?>
<meta name="viewport" content="width=device-width" />
<title>
<?php __('Razorfish: Production Management Tool | '); ?>
<?php echo $title_for_layout;?>
</title>
<link rel="icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
<?php 
	echo $this->Html->css('normalize');
	echo $this->Html->css('foundation.min');
	echo $this->Html->css('font-awesome.min');
	echo $this->Html->css('globals');
	echo $this->Html->css('typography');
	echo $this->Html->css('grid');
	echo $this->Html->css('ui');
	echo $this->Html->css('orbit');
	echo $this->Html->css('reveal');
	echo $this->Html->css('mobile');
	echo $this->Html->css('responsive-tables');

	echo $this->Html->script('//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js');

	echo $this->Html->script('vendor/modernizr.foundation.js');
	echo $this->Html->script('foundation.min');
	echo $this->Html->script('responsive-tables');

	echo $scripts_for_layout;
	
	$current_user = $this->Session->read('Auth.User');
	$username = $this->Session->read('Auth.User.username');
?>
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body>
<!-- This is for the popup plugin -->
<div class="popups" style="z-index: 1000;"></div>
<div class="container">
	<div class="row">
		<!--<div id="header row">
			<div id="logo-container large-6 columns">
			<?php /*echo $this->Html->image("sa/razorfish.png", array(
								"alt" => "Razorfish",
								'class'=>"logo",
							    'url' => array('controller' => '/')
							));*/ ?>
			</div>
		</div>-->
		<div class="row">
			<?php echo $this->Session->flash(); ?>
			<?php echo $content_for_layout; ?>
		</div><!-- end of content -->

		<div class="row">
			<div class="footer row"></div>
		</div><!-- end of footer -->
		<div class="row">
			<div class="large-12">
			<?php 
				echo $this->Js->writeBuffer(); // Write cached scripts
				echo $this->element('sql_dump'); 
			?>
			</div>
		</div>
	</div>
</div><!-- end of container -->
<script type="text/javascript">
	$(document).foundation();
</script>
</body>
</html>