<div class="productionManagers form">
<?php echo $this->Form->create('ProductionManager');?>
	<fieldset>
 		<legend><?php __('Edit Production Manager'); ?></legend>
	<?php
		echo $this->Form->input('id');
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'empty' => 'Please Select'
													));
													
		echo $this->Form->input('fullname',array('label'=>'Full Name'));
		echo $this->Form->input('email');
		echo $this->Form->input('phone_number');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		echo $this->Form->input('offshore');
		echo $this->Form->input('Project');

	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('ProductionManager.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('ProductionManager.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Production Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>