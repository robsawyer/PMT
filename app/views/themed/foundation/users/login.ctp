<div class="container">
	<div class="users form row" style="margin-top: 20px;">
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
			echo $this->Form->submit('Login', array(
				'name' => 'login',
				'class' => 'button',
				'div' => false
			));
			echo $this->Form->end();
		?>
		<p class="alert">Don't have an account? You can create one <?php echo $this->Html->link('here',array('action'=>'create')); ?>.</p>
	</div>
</div>
<script type="text/javascript"> 
//$(".chzn-select").chosen(); 
</script>
