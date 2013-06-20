<form>
<?php echo $this->Form->create('Project');?>
	<fieldset>
 		<legend><?php __('Edit Project'); ?></legend>
			<?php
				echo $this->Form->input('id');
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
			?>
		<div class='row'>
			<div class="side-by-side clearfix"><div>
		<?php
		echo $this->Form->input('type', array(
													'label'=>'Media Type',
													'type' =>'select', 
													'options' => $options,
													'selected' => $this->data['Project']['type'],
													'empty' => 'Please Select',
													'class'=>'chzn-select',
													'style'=>'width:200px;'
													));
		?>
			</div></div>
		</div>
		<div class='row'>
		<?php echo $this->Form->input('number',array(
															'label'=>'Project #',
															'style'=>'width: 150px'
															));
		?>
		<div class="side-by-side clearfix"><div>
		<?php echo $this->Form->input('client_id',array(
																'empty'=>' Please Select ',
																'class'=>'chzn-select',
																'style'=>'width:200px;'
																)); ?>
		</div></div>
		<?php
		$priority_options = array(
			'1' => 'Low', 
			'2' => 'Medium',
			'3' => 'High',
			'4' => 'Critical'
		); ?>
		<div class="row">
			<div class="side-by-side clearfix"><div>
			<?php echo $this->Form->input('priority', array(
														'type' =>'select', 
														'options' => $priority_options,
														'selected' => $this->data['Project']['priority'],
														'class'=>'chzn-select',
														'style'=>'width:100px;'
														)); ?>
			</div></div>
		</div>
		<?php
		echo $this->Form->input('title',array('label'=>'Project Name'));
		echo $this->Form->input('description');
		echo $this->Form->input('url');
		echo $this->Form->input('total_units', array('style'=>'width:150px','label'=>"Total # of units"));
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
		echo $this->Form->input('start',array('empty' => ''));
		echo $this->Form->input('due',array('empty' => ''));
		?>
		<div class="row">
			<div class="side-by-side clearfix"><div>
				<fieldset class="checkboxes">
					<legend>Project Manager</legend>
					<?php
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
		</div>
		<div class="row"><?php echo $this->Form->input('notes'); ?></div>
	</fieldset>
	<?php echo $this->Form->end(__('Submit', true));?>
</form>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>