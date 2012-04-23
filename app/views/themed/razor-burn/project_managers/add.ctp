<div class="projectManagers form">
<?php echo $this->Form->create('ProjectManager');?>
	<fieldset>
 		<legend><?php __('Add Project Manager'); ?></legend>
	<?php
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'selected' => 0,
													'empty' => 'Please Select',
													'style'=>'width:300px',
													'class'=>'chzn-select'
													));
		echo '</div></div>';
		echo $this->Form->input('name');
		echo $this->Form->input('email');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		//echo $this->Form->input('Project' array('type'=>'hidden'));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Offshore Project Manager', true), array('controller'=>'offshore_project_managers','action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Project Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Offshore Project Managers', true), array('controller'=>'offshore_project_managers','action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>