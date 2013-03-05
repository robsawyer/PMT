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
	//echo $this->Html->css('cake.generic') . "\n"; 
	//echo $this->Html->css('basic') . "\n";
	echo $this->Html->css('normalize') . "\n";
	echo $this->Html->css('foundation.min') . "\n";
	echo $this->Html->css('font-awesome.min') . "\n";
	echo $this->Html->css('jquery.autocomplete') . "\n" . "\n";
	
	echo "<!-- Include jquery 1.4.2 via google apis -->" . "\n";
	echo $this->Html->script('http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js') . "\n";
	//echo $javascript->link('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js');
	echo $this->Html->script('jquery-ui-1.7.2.custom.min') . "\n";
	echo $this->Html->script('jquery.autocomplete.min') . "\n";
	echo $this->Html->script('jquery.jeditable.mini') . "\n";
	echo $this->Html->script('jquery.form') . "\n";
	echo $this->Html->script('chosen/chosen.jquery.min') . "\n";
	echo $this->Html->script('foundation.min') . "\n";
	echo $this->Html->script('vendor/custom.modernizr.js') . "\n";
	echo $this->Html->script('common');
	
	echo $scripts_for_layout;
	
	$current_user = $this->Session->read('Auth.User');
	$username = $this->Session->read('Auth.User.username');
	?>
</head>
<body>
<!-- This is for the popup plugin -->
<div id="popups" style="z-index: 1000;"></div>
<?php if(!empty($username)): ?>
<?php echo $this->element('nav'); ?>
<?php endif; ?>
<div id="row">
	<!--<div id="header row">
		<div id="logo-container large-6 columns">
		<?php /*echo $this->Html->image("sa/razorfish.png", array(
							"alt" => "Razorfish",
							'class'=>"logo",
						    'url' => array('controller' => '/')
						));*/ ?>
		</div>
	</div>--><!-- end of header -->
	<div id="large-12 columns">
		<div class="alert"><?php echo $this->Session->flash(); ?></div>
		<?php echo $content_for_layout; ?>
	</div><!-- end of content -->

	<div class="large-12 columns">
		<div class="footer row">
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
	</div><!-- end of footer -->
	<div class="large-12 columns">
		<?php 
			echo $this->Js->writeBuffer(); // Write cached scripts
			echo $this->element('sql_dump'); 
		?>
	</div>
</div><!-- end of container -->
<script type="text/javascript">
	$(document).foundation();
</script>
</body>
</html>