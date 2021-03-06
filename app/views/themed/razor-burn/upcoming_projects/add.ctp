<div class="upcomingProjects form">
<?php echo $this->Form->create('UpcomingProject');?>
	<fieldset>
		<legend><?php __('Add Upcoming Project'); ?></legend>
	<?php
		echo $this->Form->input('project_manager',array('label'=>'Project Manager Name or Your Name'));
		echo $this->Form->input('contact_email',array('label'=>'Please leave an email to contact.','after'=>'Example: someone@whoisresponsible.com'));
		$options = array(
			'Rich Media' => 'Rich Media', 
			'Standard Media' => 'Standard Media',
			'All Media Types' => 'All Media Types',
			'Maintenance' => 'Maintenance',
			'Facebook' => 'Facebook',
			'Microsite' => 'Microsite',
			'Mobile' => 'Mobile',
			'Other' => 'Other (Please explain in notes.)'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'selected' => 0,
													'class'=>'chzn-select',
													'style'=>'width:200px;',
													'empty' => 'Please Select',
													'label'=>'Type <a href="http://www.iab.net/iab_products_and_industry_services/508676/508767" target="_blank">Confused?</a>'
													));
		echo '</div></div>';
		echo $this->Form->input('project_number',array(
															'label'=>'Project #',
															'style'=>'width: 150px'
															));
		echo $this->Form->input('name',array('label'=>'Project Name'));
		echo $this->Form->input('url', array('label'=>'Jira task','after'=>'Add the Jira task after this project has been created in Jira.'));
		echo $this->Form->input('total_units', array('value'=>'0','style'=>'width:150px','label'=>"Total # of units"));
		echo $this->Form->input('complete');
		echo $this->Form->input('start', array('type'  => 'date',
														'label' => 'Start Date',
														'minYear' => 2011,
														'maxYear' => 2020,
														# default order m/d/y,
														));
		echo $this->Form->input('due', array('type'  => 'date',
														'label' => 'Due Date',
														'minYear' => 2011,
														'maxYear' => 2020,
														# default order m/d/y,
														'empty' => true
														));
		?>
		<div class="side-by-side clearfix"><div>
			<fieldset class="checkboxes">
				<legend>Production Manager</legend>
				<?php
					echo $this->Form->input('production_manager_id',array(
																		'label'=>'',
																		'type' => 'select',
																		'selected' => 0,
																		'empty' => 'Please Select',
																		'style'=>'width: 250px',
																		'class' => 'chzn-select'
																		)
																	);
				?>
			</fieldset>
		</div></div>
		<?php echo $this->Form->input('notes'); ?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions" style="display:none">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Upcoming Projects', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Production Managers', true), array('controller' => 'production_managers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Production Manager', true), array('controller' => 'production_managers', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen();</script>