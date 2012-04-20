<div class="projects reports">
	<h2><?php __('Ad Creative Project Development Report');?> - <?php echo date('M d, Y'); ?></h2>
	<h3><?php __('Details');?></h3>
	<ul class="details">
		<li>Total projects: <span class="number-count"><?php echo count($projects); ?></span></li>
		<li>Offshore projects: <span class="number-count"><?php echo count($offshoreProjects); ?></span></li>
		<li>In-house only projects: <span class="number-count"><?php echo count($inhouseProjects); ?></span></li>
		<li>Completed projects: <span class="number-count"><?php echo count($completeProjects); ?></span></li>
		<li>Incomplete projects: <span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
	</ul>
	<ul class="details">
		<li>Standard media projects: <span class="number-count"><?php echo count($standardMedia); ?></span></li>
		<li>Rich media projects: <span class="number-count"><?php echo count($richMedia); ?></span></li>
	</ul>
	<div class="clear"></div>
	<div class="download-actions">
		Export options:
		<?php
			echo $this->Html->image('excel_icon.gif',array('title'=>'Download xls version',
																		'url'=>array('../exportxls'),
																		'alt'=>'Excel version'
																		));
			echo $this->Html->image('pdf_icon.gif',array('title'=>'Download pdf version',
																		'url'=>array('../exportpdf'),
																		'alt'=>'PDF version'
																		));
			/*echo $this->Html->image('rtf_icon.gif',array('title'=>'Download rtf version',
																		'url'=>array(),
																		'alt'=>'rtf version'
																		));*/
		?>
	</div>
	<?php 
		echo $this->element('full_report_table',array(
																'table_name' => 'Incomplete Projects',
																'type'=>'incomplete'
																)); 
	?>
	<br/>
	<?php
		echo $this->element('full_report_table',array(
																'table_name' => 'Complete Projects (Past 2 Weeks)',
																'type'=>'complete'
																));
	?>
</div>

