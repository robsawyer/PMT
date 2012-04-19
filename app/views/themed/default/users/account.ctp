<div class="users form">
	<h2>Account Page</h2>
	<p>You are logged in as <strong><?php echo $current_user['User']['username']; ?></strong> who last logged in <?php echo $this->Time->timeAgoInWords($current_user['User']['lastlogin']); ?>.</p>
<?php echo $this->Form->create('User',array('action' => 'account'));?>
	<fieldset>
 		<legend>
		<?php __('Change your password'); ?>
		</legend>
	<?php
		echo $this->Form->input('password_old',     array('label' => 'Old password', 'type' => 'password', 'autocomplete' => 'off'));
		echo $this->Form->input('password_confirm', array('label' => 'New password', 'type' => 'password', 'autocomplete' => 'off'));
		echo $this->Form->input('password',         array('label' => 'Re-enter new password', 'type' => 'password', 'autocomplete' => 'off'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Update Password', true));?>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>