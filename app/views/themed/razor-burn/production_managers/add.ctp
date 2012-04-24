<div class="productionManagers form">
<?php echo $this->Form->create('ProductionManager');?>
	<fieldset>
 		<legend><?php __('Add Production Manager'); ?></legend>
	<?php
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
<<<<<<< HEAD
		echo '<div class="side-by-side clearfix"><div>';
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'selected' => 0,
<<<<<<< HEAD
													'empty' => 'Please Select',
													'style'=>'width:300px',
													'class'=>'chzn-select'
													));
		echo '</div></div>';
=======
													'empty' => 'Please Select'
													));
		//echo $this->Form->input('type');
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		echo $this->Form->input('fullname',array('label'=>'Full Name'));
		echo $this->Form->input('email');
		echo $this->Form->input('phone_number');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		echo $this->Form->input('offshore');
<<<<<<< HEAD
		//echo $this->Form->input('Project');
=======
		echo $this->Form->input('Project');
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Production Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
<<<<<<< HEAD
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>
=======
</div>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
