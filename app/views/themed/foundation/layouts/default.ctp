<!DOCTYPE html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
<?php echo $this->Html->charset();?>
<!-- Set the viewport width to device width for mobile -->
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
	echo $this->Html->css('responsive-tables');
	echo $this->Html->css('app');
	echo $this->Html->css('chosen/chosen');

	echo $this->Html->script('https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js');

	echo $this->Html->script('vendor/modernizr.foundation.js');
	echo $this->Html->script('foundation.min');
	echo $this->Html->script('responsive-tables');
	echo $this->Html->script('chosen/chosen.jquery.min');

	echo $scripts_for_layout;
	
	$current_user = $this->Session->read('Auth.User');
	$username = $this->Session->read('Auth.User.username');
?>
<!-- IE Fix for HTML5 Tags -->
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
</head>
<body class="antialiased">
	<!-- This is for the popup plugin -->
	<div class="container popups" style="z-index: 1000;"></div>
	<?php if(!empty($username)): ?>
	<?php echo $this->element('nav'); ?>
	<?php endif; ?>
	<div class="row">
		<?php echo $this->Session->flash(); ?>
		<?php echo $content_for_layout; ?>
	</div>
	<div class="row">
		<div class="footer">
		<?php 
			if(!empty($current_user['project_manager_id'])){
				$controller = "project_managers";
				$id = $current_user['project_manager_id'];
			}
			if(!empty($current_user['production_manager_id'])){
				$controller = "production_managers";
				$id = $current_user['production_manager_id'];
			}
			if($current_user['role'] == "admin"){
				echo "Logged in as $username (Admin) - ".$this->Html->link('Edit your profile',array('controller'=>$controller,'action'=>'edit',$id))." - ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
			}else{
				echo "Welcome $username! - ".$this->Html->link('Edit your profile',array('controller'=>$controller,'action'=>'edit',$id))." - ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
			}
		?>
		</div>
	</div>
	<div class="row">
	<?php 
		echo $this->Js->writeBuffer(); // Write cached scripts
		echo $this->element('sql_dump'); 
	?>
	</div>
	<?php
	echo $this->Html->script('jquery.form');
	echo $this->Html->script('common');
	?>
	<script type="text/javascript">
		$(document)
			.foundation();
	</script>
</body>
</html>