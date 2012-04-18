<div class="users form">
<?php 
	echo $this->Session->flash('auth');
	echo $this->Form->create('User');
?>
	<fieldset>
 		<legend><?php __('Login to your account'); ?></legend>
	<?php
		echo $this->Form->input('username');
		echo $this->Form->input('password');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Login', true));?>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>
