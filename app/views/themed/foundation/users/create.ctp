<div class="users form">
<?php echo $this->Form->create('User');?>
	<fieldset>
 		<legend><?php __('Create an account'); ?></legend>
	<?php
		echo $this->Form->input('username');
		echo $this->Form->input('email',array('after'=>'Please use your Razorfish email.'));
		echo $this->Form->input('password_confirm', array('label' => 'Password', 'type' => 'password'));
		echo $this->Form->input('password', array('label' => 'Password Confirm'));	
	?>
	</fieldset>
<?php echo $this->Form->end(__('Register', true));?>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>