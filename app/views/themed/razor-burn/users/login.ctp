<h2><?php __('Login to Your Account'); ?></h2>

<div class="users form">
<?php 
	echo $this->Session->flash('auth');
	echo $this->Form->create('User');
?>
<fieldset>
<table cellpadding="0" cellspacing="0" border="0">
<tr>    
<td width="33%"> 		
<?php echo $this->Form->input('username'); ?>
<?php echo $this->Form->input('password'); ?>
</td>
<td width="69%"></td>
</tr>
</table>
		
<?php echo $this->Form->end(__('Login', true));?>
</fieldset>

<p>Don't have an account? You can create one <?php echo $this->Html->link('here',array('action'=>'create')); ?>.</p>

</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>




