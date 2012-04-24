<div class="projects reports">
<<<<<<< HEAD
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
=======

<div class="download-actions">
		<strong>Export:</strong> <?php
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
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
<<<<<<< HEAD
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
=======
</div>

<h2><?php __('Ad Creative Development Offshore Report');?>: <?php echo date('M d, Y'); ?></h2>

<ul id="accordion" style="margin:20px 0 0 0;">
<li>
<div><?php __('Details');?></div>
<ul>
<li>Total projects:<span class="number-count"><?php echo count($projects); ?></span></li>
<li>Completed projects:<span class="number-count"><?php echo count($completeProjects); ?></span></li>
<li>Incomplete projects:<span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
</ul>
</li>

<li>
<div>Projects by Type</div>
<ul>
<li>Standard media projects:<span class="number-count"><?php echo count($standardMedia); ?></span></li>
<li>Rich media projects:<span class="number-count"><?php echo count($richMedia); ?></span></li>
<li>Social Media Projects:<span class="number-count">0</span></li>
<li>Project Updates:<span class="number-count">0</span></li>
<li>Other Projects:<span class="number-count">0</span></li>
</ul>
</li>
</ul>

<SCRIPT>
$("#accordion > li > div").click(function(){
	if(false == $(this).next().is(':visible')) {
		//$('#accordion ul').slideUp(200);
	}
	$(this).next().slideToggle(180);
});
$('#accordion ul:eq(0)').show();
//$('#accordion ul:eq(1)').show();
</SCRIPT>

<div class="clear" style="padding-bottom:10px;"></div>


<?php 
		echo $this->element('offshore_report_table',array(
																'table_name' => '<h2>Current Projects</h2>',
																'type'=>'incomplete'
																));
	?>
<br/>
<?php 
		echo $this->element('offshore_report_table',array(
																'table_name' => '<h2>Complete Projects (Past 2 Weeks)</h2>',
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
																'type'=>'complete'
																));
	?>
</div>

