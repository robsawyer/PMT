<div class="upcomingProjects form">
<?php echo $this->Form->create('UpcomingProject');?>
	<fieldset>
		<legend><?php __('Add Upcoming Project'); ?></legend>
	<?php
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
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Upcoming Projects', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Production Managers', true), array('controller' => 'production_managers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Production Manager', true), array('controller' => 'production_managers', 'action' => 'add')); ?> </li>
	</ul>
</div>