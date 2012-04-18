<div class="upcomingProjects form">
<?php echo $this->Form->create('UpcomingProject');?>
	<fieldset>
		<legend><?php __('Edit Upcoming Project'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('project_manager');
		echo $this->Form->input('contact_email');
		echo $this->Form->input('project_number');
		echo $this->Form->input('name');
		echo $this->Form->input('total_units');
		echo $this->Form->input('start');
		echo $this->Form->input('due');
		echo $this->Form->input('url');
		echo $this->Form->input('production_manager_id');
		echo $this->Form->input('complete');
		echo $this->Form->input('notes');
		echo $this->Form->input('type');
	?>
	</fieldset>
<?php 
	echo $this->Form->end(__('Submit', true));
	echo $this->Form->button('Cancel', array(
											'type'=>'button',
											'action' => 'delete', 
											$this->Form->value('UpcomingProject.id')), 
											null, 
											sprintf(__('Are you sure you want to delete # %s?', true),$this->Form->value('UpcomingProject.id'))
											);
?>

</div>
<div class="actions">
	<ul>
		<li><?php //echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('UpcomingProject.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('UpcomingProject.id'))); ?></li>
	</ul>
</div>