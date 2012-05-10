<div class="developers form">
<?php echo $this->Form->create('Developer');?>
	<fieldset>
 		<legend><?php __('Add A New Developer'); ?></legend>
	<?php
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'empty' => 'Please Select',
													'class'=>'chzn-select',
													'style'=>'width:300px'
													));
		echo '</div></div>';
		$title_options = array(
			'Associate Developer' => 'Associate Developer',
			'Developer' => 'Developer',
			'Flash Developer' => 'Flash Developer',
			'Senior Flash Developer' => 'Senior Flash Developer',
			'Motion Designer' => 'Motion Designer',
			'Senior Motion Designer' => 'Senior Motion Designer',
			'Presentation Layer Developer' => 'Presentation Layer Developer (PLD)',
			'Presentation Layer Architect' => 'Presentation Layer Architect',
			'Senior Presentation Layer Developer' => 'Senior Presentation Layer Developer',
			'Senior Presentation Layer Architect' => 'Senior Presentation Layer Architect',
			'Principal Developer' => 'Principal Developer',
			'Senior Developer' => 'Senior Developer',
			'Technical Architect' => 'Technical Architect',
			'Senior Technical Architect' => 'Senior Technical Architect'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('title', array(
													'type' =>'select', 
													'options' => $title_options,
													'empty' => 'Please Select',
													'class'=>'chzn-select',
													'style'=>'width:300px'
													));
		echo '</div></div>';
		echo $this->Form->input('fullname',array('label'=>'Full Name'));
		echo $this->Form->input('email');
		echo $this->Form->input('phone_number');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		echo $this->Form->input('offshore');
		echo $this->Form->input('notes');
		//echo $this->Form->input('Project');
	?>
	<div class="side-by-side clearfix"><div>
		<fieldset class="checkboxes">
			<legend>Projects</legend>
			<?php
				echo $this->Form->input('Collection',array(
																	'label'=>'',
																	'type' => 'select', 
																	'multiple' => 'multiple',
																	'options' => $projects,
																	'class' => 'chzn-select'
																	)
																);
			?>
		</fieldset>
	</div></div>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Developers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>