<div class="projects reports">
	<h2><?php __('Ad Creative Development Offshore Report');?> - <?php echo date('M d, Y'); ?></h2>
	<h3><?php __('Details');?></h3>
	<ul class="details">
		<li>Total projects: <span class="number-count"><?php echo count($projects); ?></span></li>
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
																		'url'=>array('../offshore_exportxls'),
																		'alt'=>'Excel version'
																		));
			echo $this->Html->image('pdf_icon.gif',array('title'=>'Download pdf version',
																		'url'=>array('../offshore_exportpdf'),
																		'alt'=>'PDF version'
																		));
			/*echo $this->Html->image('rtf_icon.gif',array('title'=>'Download rtf version',
																		'url'=>array(),
																		'alt'=>'rtf version'
																		));*/
		?>
	</div>
	<?php 
		echo $this->element('offshore_report_table',array(
																'table_name' => 'Current Projects',
																'type'=>'incomplete'
																));
	?>
	<br/>
	<?php 
		echo $this->element('offshore_report_table',array(
																'table_name' => 'Complete Projects (Past 2 Weeks)',
																'type'=>'complete'
																));
	?>
</div>

