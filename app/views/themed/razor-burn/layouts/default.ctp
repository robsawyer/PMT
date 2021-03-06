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
<!DOCTYPE html>
<html>
	<head>
		<?php echo $this->Html->charset();?>
		<title>
			<?php __('Razorfish: Production Managment Tool | '); ?>
			<?php echo $title_for_layout;?>
		</title>
		<link rel="icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
		<link rel="shortcut icon" href="<?php echo $this->webroot;?>favicon.ico" type="image/x-icon" />
		<?php 
			echo $this->Html->css('cake.generic') . "\n"; 
			echo $this->Html->css('basic') . "\n";
			echo $this->Html->css('razor-burn') . "\n";
			echo $this->Html->css('jquery.autocomplete') . "\n" . "\n";
			
			echo "<!-- Include jquery 1.4.2 via google apis -->" . "\n";
			echo $this->Html->script('http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js') . "\n";
			//echo $this->Html->script('http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js');
			echo $this->Html->script('jquery-ui-1.7.2.custom.min') . "\n";
			echo $this->Html->script('jquery.autocomplete.min') . "\n";
			echo $this->Html->script('jquery.jeditable.mini') . "\n";
			echo $this->Html->script('jquery.form') . "\n";
			echo $this->Html->script('chosen/chosen.jquery.min') . "\n";
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
					<?php echo $this->Html->image("sa/razorfish.png", array(
									"alt" => "Razorfish",
									'class'=>"logo",
								    'url' => array('controller' => '/')
								)); ?>
				</div>
				<h1>Production Manager Tool</h1>
				<?php
					$current_user = $this->Session->read('Auth.User');
					$username = $this->Session->read('Auth.User.username');
				?>
				<div id='navbar'>
					<?php echo $this->element('nav',array('cache'=>false)); ?>
				</div><!-- end of navbar -->
			</div><!-- end of header -->

			<div id="content">
				<?php echo $this->Session->flash(); ?>
				<?php echo $content_for_layout; ?>
			</div><!-- end of content -->

		</div><!-- end of container -->
		<br>
		<div class="clear">&nbsp;</div>
		<div id="footer">
			<div class="user-info">
			<?php if(!empty($current_user)): ?>
			<p><?php 
					if(!empty($current_user['project_manager_id'])){
						$controller = "project_managers";
						$id = $current_user['project_manager_id'];
					}
					if(!empty($current_user['production_manager_id'])){
						$controller = "production_managers";
						$id = $current_user['production_manager_id'];
					}
					if($current_user['role'] == "admin"){
						echo "Logged in as $username (Admin) &nbsp;|&nbsp; ".$this->Html->link('Edit Your Profile',array('controller'=>$controller,'action'=>'edit',$id))." &nbsp;|&nbsp; ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
					}else{
						echo "Welcome $username! &nbsp;|&nbsp; ".$this->Html->link('Edit Your Profile',array('controller'=>$controller,'action'=>'edit',$id))." &nbsp;|&nbsp; ".$this->Html->link("Logout",array('controller'=>'users','action'=>'logout'));
					}
				?><p>
			<?php else: ?>
			<p><?php 
					echo "This is private, you are not allowed here.";
				?><p>
			<?php endif; ?>
			</div>
		</div><!-- end of footer -->
		<?php 
			echo $this->Js->writeBuffer(); // Write cached scripts
			echo $this->element('sql_dump'); 
		?>
	</body>
</html>