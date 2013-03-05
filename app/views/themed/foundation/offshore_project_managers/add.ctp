<div class="offshoreProjectManagers form">
<?php echo $this->Form->create('OffshoreProjectManager');?>
	<fieldset>
 		<legend><?php __('Add Offshore Project Manager'); ?></legend>
	<?php
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'selected' => 0,
													'empty' => 'Please Select'
													));
		echo $this->Form->input('name');
		echo $this->Form->input('email');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		echo $this->Form->input('Project');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('controller'=>'project_managers','action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Offshore Project Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Project Managers', true), array('controller'=>'project_managers','action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>