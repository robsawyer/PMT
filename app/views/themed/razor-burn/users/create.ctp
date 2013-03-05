<h2><?php __('Create an account'); ?></h2>

<div class="users form">
<?php echo $this->Form->create('User');?>
	<fieldset>
<table cellpadding="0" cellspacing="0" border="0">
<tr>    
<td width="33%"> 
	<?php
		echo $this->Form->input('username');
		echo $this->Form->input('email'); ?>
        
    <?php    
		echo $this->Form->input('password_confirm', array('label' => 'Password', 'type' => 'password'));
		echo $this->Form->input('password', array('label' => 'Password Confirm')); ?>
</td>
<td width="69%"></td>
</tr>
</table> 

<?php echo $this->Form->end(__('Register', true));?>   

</fieldset>

</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>