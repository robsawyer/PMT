<div class="users form row">
<?php 
	echo $this->Session->flash('auth');
	echo $this->Form->create('User');
?>
	<fieldset>
 		<legend><?php __('Login to your account'); ?></legend>
	<?php
		echo $this->Form->input('username',array('class' => 'large-12 columns'));
		echo $this->Form->input('password',array('class' => 'large-12 columns'));
	?>
	</fieldset>
	<?php
		echo $this->Form->end(array(
			'label' => 'Login',
			'name' => 'login',
			'div' => array(
				'class' => 'button'
			)
		));
	?>
	<p class="alert">Don't have an account? You can create one <?php echo $this->Html->link('here',array('action'=>'create')); ?>.</p>
</div>
<script type="text/javascript"> 
//$(".chzn-select").chosen(); 
</script>
