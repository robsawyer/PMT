<div class="qaResources form">
<?php echo $this->Form->create('QaResource');?>
	<fieldset>
 		<legend><?php __('Add Qa Resource'); ?></legend>
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
		//echo $this->Form->input('type');
		echo $this->Form->input('fullname',array('label'=>'Full Name'));
		echo $this->Form->input('email');
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

		<li><?php echo $this->Html->link(__('List Qa Resources', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>