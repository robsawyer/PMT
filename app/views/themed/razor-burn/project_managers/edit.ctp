<div class="projectManagers form">
<?php echo $this->Form->create('ProjectManager');?>
	<fieldset>
		<legend><?php __('Editing '.$this->data['ProjectManager']['name'].'\'s Profile'); ?></legend>
	<?php
		echo $this->Form->input('id');
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'style'=>'width:300px',
													'empty' => 'Please Select',
													'class'=>'chzn-select'
													));
		echo '</div></div>';
		echo $this->Form->input('name');
		echo $this->Form->input('email');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		//echo $this->Form->input('Project',array('type'=>'hidden'));
	?>
	<?php
	if($admin && $this->data['ProjectManager']['id'] != $userAccount['User']['project_manager_id']):
		if(!empty($userAccount)):
	?>
		<p>If you'd like to update the account password, click <?php echo $this->Html->link('here',array('controller'=>'users','action'=>'account',$userAccount['User']['id'])); ?>.</p>
	<?php
		else:
	?>
		<p style="color:red">This user does not have a user account setup.</p>
	<?php
		endif;
	else:
	?>
		<p>If you'd like to update your password, click <?php echo $this->Html->link('here',array('controller'=>'users','action'=>'account')); ?>.</p>
	<?php
	endif;
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('ProjectManager.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('ProjectManager.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Project Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>