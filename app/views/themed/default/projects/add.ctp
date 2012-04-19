<div class="projects form">
<?php echo $this->Form->create('Project');?>
	<fieldset>
 		<legend><?php __('Add A New Project'); ?></legend>
	<?php
		$options = array(
			'Rich Media' => 'Rich Media', 
			'Standard Media' => 'Standard Media',
			'Both' => 'Both',
			'Other' => 'Other'
		);
		echo '<div class="side-by-side clearfix"><div>';
		
		echo $this->Form->input('type', array(
													'type' =>'select', 
													'options' => $options,
													'selected' => $this->data['Project']['type'],
													'class'=>'chzn-select',
													'style'=>'width:200px;',
													'empty' => 'Please Select'
													));
		echo '</div></div>';
		echo $this->Form->input('number',array(
												'label'=>'Project #',
												'style'=>'width: 150px',
												//'value'=>$this->params['named']['ProjectNumber']
												));
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('client_id',array(
												'empty'=>' Please Select ',
												//'selected' => $this->params['named']['Client'],
												'class'=>'chzn-select',
												'style'=>'width:200px;'
												));
		echo '</div></div>';
		$priority_options = array(
			'1' => 'Low', 
			'2' => 'Medium',
			'3' => 'High',
			'4' => 'Critical'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('priority', array(
													'type' =>'select', 
													'options' => $priority_options,
													'class'=>'chzn-select',
													'style'=>'width:100px;',
													'selected' => 1
													));
		echo '</div></div>';
		echo $this->Form->input('title',array('label'=>'Project Name'));
		echo $this->Form->input('description');
		echo $this->Form->input('url', array('after'=>''));
		echo $this->Form->input('total_units', array('value'=>'0','style'=>'width:150px','label'=>"Total # of units"));
		echo $this->Form->input('offshore');
		
		echo $this->Form->input('started');
		
		echo $this->Form->input('complete');
		echo $this->Form->input('on_hold');
		echo $this->Form->input('in_qa', array('label'=>'In QA'));
		echo $this->Form->input('progress',array(
															'label'=>'Total progress (%)',
															'style'=>'width: 150px',
															'after'=>'<span class="next-to" style="font-size: 18px; font-weight: bold;margin-left:10px;">%</span>'
															));
		echo $this->Form->input('start', array('type'  => 'date',
														'label' => 'Start Date',
														'minYear' => 2011,
														'maxYear' => 2020,
														# default order m/d/y,
														));
		//echo $this->Form->input('due');
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
				<legend>Project Manager</legend>
				<?php
					if(!empty($this->data['Project']['project_manager'])){
						echo "<h3>Check to see if <span style='color:red;'>".$this->data['Project']['project_manager']."</span> exists. If not, please add him/her.";
					}
					echo $this->Form->input('ProjectManager',array(
																		'label'=>'',
																		'type' => 'select', 
																		'multiple' => 'multiple',
																		'options' => $projectManagers,
																		'class' => 'chzn-select'
																		)
																	);
				?>
			</fieldset>
			<fieldset class="checkboxes">
				<legend>Offshore Project Manager</legend>
				<?php
					echo $this->Form->input('OffshoreProjectManager',array(
																		'label'=>'',
																		'type' => 'select', 
																		'multiple' => 'multiple',
																		'options' => $offshoreProjectManagers,
																		'class' => 'chzn-select'
																		)
																	);
				?>
			</fieldset>
			<fieldset class="checkboxes">
				<legend>Developer</legend>
				<?php
					echo $this->Form->input('Developer',array(
																		'label'=>'',
																		'type' => 'select', 
																		'multiple' => 'multiple',
																		'options' => $developers,
																		'class' => 'chzn-select'
																		)
																	);
				?>
			</fieldset>
			<fieldset class="checkboxes">
				<legend>Production Manager</legend>
				<?php
					echo $this->Form->input('ProductionManager',array(
																		'label'=>'',
																		'type' => 'select', 
																		'multiple' => 'multiple',
																		'options' => $production_managers,
																		'class' => 'chzn-select'
																		//'value' => $this->params['named']['ProductionManager']
																		)
																	);
				?>
			</fieldset>
			<fieldset class="checkboxes">
				<legend>QA Resource</legend>
				<?php
					echo $this->Form->input('QaResource',array(
																		'label'=>'',
																		'type' => 'select', 
																		'multiple' => 'multiple',
																		'options' => $qaResources,
																		'class' => 'chzn-select'
																		)
																	);
				?>
			</fieldset>
		</div></div>
		<?php
		echo $this->Form->input('notes');
		if(!empty($upcomingProjectID)){
			echo $this->Form->input('upcoming_project_id',array('type'=>'hidden','value'=>$upcomingProjectID));
		}
		//Get the current user logged in
		echo $this->Form->input('user_id',array('type'=>'hidden','value'=>$session->read('Auth.User.id')));
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions" style="display:none">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('List Clients', true), array('controller' => 'clients','action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('New Client', true), array('controller' => 'clients','action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Project Managers', true), array('controller' => 'project_managers','action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('controller' => 'project_managers','action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Developers', true), array('controller' => 'developers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Developer', true), array('controller' => 'developers', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Producers', true), array('controller' => 'producers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Producer', true), array('controller' => 'producers', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>