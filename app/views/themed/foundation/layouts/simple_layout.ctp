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
				<div class="app-name">Upcoming Project Submission</div>
				</div>
				<div class="clear"></div>
			<div id='navbar'>
					<?php //echo $this->element('nav',array('cache'=>false)); ?>
			</div><!-- end of navbar -->
	
		</div><!-- end of header? -->
		
		<div id="content">

			<?php echo $this->Session->flash(); ?>
			
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