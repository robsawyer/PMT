<div class="users form">
<?php 
	echo $this->Session->flash('auth');
	echo $this->Form->create('User');
?>
	<fieldset>
 		<legend><?php __('Login to your account'); ?></legend>
	<?php
		echo "<div class='large-12 columns'>".$this->Form->input('username',array('div' => false)).'</div>';
		echo "<div class='large-12 columns'>".$this->Form->input('password',array('div' => false)).'</div>';
	?>
	</fieldset>
	<?php
	 	echo $this->Html->link('Login','#',array('type'=>'submit','class'=>'button'));
		echo $this->Form->end();
	?>
	<p class="alert">Don't have an account? You can create one <?php echo $this->Html->link('here',array('action'=>'create')); ?>.</p>
</div>
<script type="text/javascript"> 
//$(".chzn-select").chosen(); 
</script>
