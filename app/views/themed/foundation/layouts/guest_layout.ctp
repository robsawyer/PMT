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
	//echo $this->Html->css('cake.generic'); 
	//echo $this->Html->css('basic');
	//echo $this->Html->css('jquery.autocomplete')

	echo $this->Html->script('http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js');
	echo $this->Html->script('foundation.min');
	echo $this->Html->script('vendor/custom.modernizr.js');
	echo $this->Html->script('common');
	
	//echo $javascript->link('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js');
	//echo $this->Html->script('jquery-ui-1.7.2.custom.min');
	//echo $this->Html->script('jquery.autocomplete.min');
	//echo $this->Html->script('jquery.jeditable.mini');
	//echo $this->Html->script('jquery.form');
	//echo $this->Html->script('chosen/chosen.jquery.min');
	
	echo $scripts_for_layout;
	
	$current_user = $this->Session->read('Auth.User');
	$username = $this->Session->read('Auth.User.username');
	?>
</head>
<body>
<!-- This is for the popup plugin -->
<div id="popups" style="z-index: 1000;"></div>
<div id="row">
	<!--<div id="header row">
		<div id="logo-container large-6 columns">
		<?php /*echo $this->Html->image("sa/razorfish.png", array(
							"alt" => "Razorfish",
							'class'=>"logo",
						    'url' => array('controller' => '/')
						));*/ ?>
		</div>
	</div>-->
	<div id="row">
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
</div><!-- end of container -->
<script type="text/javascript">
	$(document).foundation();
</script>
</body>
</html>