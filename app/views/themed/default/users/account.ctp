<div class="users form">
	<h2>Account Page</h2>
	<?php
	if(!$admin):
	?>
		<p>You are logged in as <strong><?php echo $current_user['User']['username']; ?></strong> who last logged in <?php echo $this->Time->timeAgoInWords($current_user['User']['lastlogin']); ?>.</p>
	<?php
	endif;
	?>
<?php echo $this->Form->create('User',array('action' => 'account'));?>
	<fieldset>
 		<legend>
		<?php
		if($admin):
		?>
			<?php if($current_user['User']['id'] != $this->Session->read('Auth.User.id')): ?>
			<p style="color:red">Warning: You are editing someone else's password.</p>
			<?php __('Change '.$current_user['User']['username'].'\'s password'); ?>
			<?php 
				else:
			?>
			<?php __('Change your password'); ?>
			<?php endif; ?>
		<?php
		else:
		?>
			<?php __('Change your password'); ?>
		<?php
		endif;
		?>
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