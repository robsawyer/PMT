<?php
/**
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.view.templates.pages
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<?php echo $this->Html->charset();?>
	<title>
		<?php __(':: Razorfish: Production Manager Tool :: '); ?>
		<?php echo $title_for_layout;?>
	</title>

	<link rel="icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
	<?php 
	echo $this->Html->css('cake.generic');
	echo $this->Html->css('basic');
	echo $this->Html->css('chosen/chosen');
	echo $this->Html->css('jquery.autocomplete');
	
	echo "<!-- Include jquery 1.4.2 via google apis -->";
	echo $this->Html->script('http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js');
	//echo $javascript->link('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js');
	echo $this->Html->script('jquery-ui-1.7.2.custom.min');
	echo $this->Html->script('jquery.autocomplete.min');
	echo $this->Html->script('jquery.jeditable.mini');
	echo $this->Html->script('jquery.form');
	echo $this->Html->script('chosen/chosen.jquery.min');
	echo $this->Html->script('common');
	
	echo $scripts_for_layout;
	
	?>
</head>
<body>
	<!-- This is for the popup plugin -->
	<div id="popups" style="z-index: 1000;"></div> 
	<div id="container">
		<div id="header">
				<div id="logo-container">
				<?php 
				echo $this->Html->image("sa/razorfish.png", array(
					"alt" => "Razorfish",
					'class'=>"logo",
				    'url' => array('controller' => '/')
				));
				?>
<<<<<<< HEAD
				<div class="app-name">Production Manager Tool</div>
				<?php
					$current_user = $this->Session->read('Auth.User');
					$username = $this->Session->read('Auth.User.username');
					if(!empty($username)):
				?>
				<div class="user-info">
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
						echo "You are logged in as". $this->Html->link($username." (Admin)",array('controller'=>$controller,'action'=>'edit',$id)).". | ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
					}else{
						echo "Welcome". $this->Html->link($username,array('controller'=>$controller,'action'=>'edit',$id))."! | ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
					}
				?>
				</div>
				<?php
					endif;
				?>
=======
				<div class="app-name">Production Manager Tool YYY</div>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
				</div>
				<div class="clear"></div>
				<?php
					if(!empty($username)):
				?>
			<div id='navbar'>
					<?php echo $this->element('nav',array('cache'=>false)); ?>
			</div><!-- end of navbar -->
				<?php
					endif;
				?>
		</div><!-- end of header? -->
		
		<div id="content">
			
			<?php echo $this->Session->flash(); ?>
			<?php echo $this->Session->flash('auth'); ?>
			<?php echo $content_for_layout; ?>
		</div>
		<div id="footer">
			&copy; 2010 Production Manager Tool All Rights Reserved. PMT is a <?php echo $this->Html->link('Rob Sawyer','#',array('title'=>'Rob Sawyer')); ?> Production. 
		</div>
	</div>
	<?php 
		echo $this->Js->writeBuffer(); // Write cached scripts
		echo $this->element('sql_dump'); 
	?>
</body>
</html>