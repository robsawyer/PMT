<div class="upcomingProjects index">
	<h2><?php __('Upcoming Projects');?></h2>
	<p><strong>Note:</strong> Projects in <span class="grn"><strong>green</strong></span> need to be added to the PMT.</p>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<!--<th valign="bottom" style="display:none"><?php echo $this->Paginator->sort('ID');?></th>-->
			<th valign="bottom"><?php echo $this->Paginator->sort('PM');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('email');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('type');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('name');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('URL');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('project_number');?></th>
			<!--<th valign="bottom"><?php echo $this->Paginator->sort('total_units');?></th>-->
			<th valign="bottom"><?php echo $this->Paginator->sort('start');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('due');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('production_manager_id');?></th>
			<th valign="bottom" nowrap><?php echo $this->Paginator->sort('In PMT');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('created');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('modified');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('notes');?></th>
			<th valign="bottom" class="act"><?php //__('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	$upcomingProjects = Set::sort($upcomingProjects, '{n}.complete', 'asc');
	foreach ($upcomingProjects as $upcomingProject):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = null;
			if($upcomingProject['UpcomingProject']['complete']==0){
				if ($i++ % 2 == 0) {
					$class = ' class="altrow"';
				}
			}else{
				if ($i++ % 2 == 0) {
					$class = ' class="altrow complete-project-row"';
				}else{
					$class = ' class="complete-project-row"';
				}
			}
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none"><?php echo $upcomingProject['UpcomingProject']['id']; ?>&nbsp;</td>
		<td class="cli"><?php echo $upcomingProject['UpcomingProject']['project_manager']; ?>&nbsp;</td>
		<td><?php echo $upcomingProject['UpcomingProject']['contact_email']; ?>&nbsp;</td>
        <td><?php echo $upcomingProject['UpcomingProject']['type']; ?>&nbsp;</td>
        <td><?php echo $upcomingProject['UpcomingProject']['name']; ?>&nbsp;</td>
        <td><?php echo $upcomingProject['UpcomingProject']['url']; ?>&nbsp;</td>
		<td><?php echo $upcomingProject['UpcomingProject']['project_number']; ?>&nbsp;</td>
		<!--<td><?php echo $upcomingProject['UpcomingProject']['total_units']; ?>&nbsp;</td>-->
		<td><?php echo $upcomingProject['UpcomingProject']['start']; ?>&nbsp;</td>
		<td><?php echo $upcomingProject['UpcomingProject']['due']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($upcomingProject['ProductionManager']['fullname'], array('controller' => 'production_managers', 'action' => 'view', $upcomingProject['ProductionManager']['id'])); ?>
		</td>
		<td><?php 
			if($upcomingProject['UpcomingProject']['complete']==1){
				echo "<strong>Yes<strong>";
			}else{
				echo "<span class='grn'><strong>No<strong></span>";
			}
		?>&nbsp;</td>
		<td><?php echo $upcomingProject['UpcomingProject']['created']; ?>&nbsp;</td>
		<td><?php echo $upcomingProject['UpcomingProject']['modified']; ?>&nbsp;</td>
        <td class="notes"><?php echo $upcomingProject['UpcomingProject']['notes']; ?>&nbsp;</td>
		<td class="actions">
			<?php
			 	/*	$this->params['named']['ProjectType'] = "";
				$this->params['named']['ProjectNumber'] = "";
				$this->params['named']['Client'] = "";
				$this->params['named']['ProjectName'] = "";
				$this->params['named']['ProjectDescription'] = "";
				$this->params['named']['ProjectUrl'] = "";
				$this->params['named']['ProjectTotalUnits'] = "";
				$this->params['named']['ProjectManager'] = "";
				$this->params['named']['ProductionManager'] = "";
				$this->params['named']['ProjectNotes'] = "";
				*/
				if($upcomingProject['UpcomingProject']['complete'] < 1){
					echo $this->Html->link(__('Add to PMT', true), array(
																		'controller'=>'projects',
																		'action' => 'add',
																		'UpcomingProjectID' => $upcomingProject['UpcomingProject']['id'])); 
																	
				}
			?>
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $upcomingProject['UpcomingProject']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $upcomingProject['UpcomingProject']['id'])); ?>
			<?php //echo $this->Html->link(__('Delete', true), array('action' => 'delete', $upcomingProject['UpcomingProject']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $upcomingProject['UpcomingProject']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
    
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
	));
	?>	</p>

	<div class="paging">
		<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
	 | 	<?php echo $this->Paginator->numbers();?>
 |
		<?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
	</div>
</div>

<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Upcoming Project', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Production Managers', true), array('controller' => 'production_managers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Production Manager', true), array('controller' => 'production_managers', 'action' => 'add')); ?> </li>
	</ul>
</div>
<?php
function deepEncode($myurlstr) {
	$myurlstr = urlencode($myurlstr);
	
	//replace the % first
	$myurlstr = str_replace(chr(37), "%25", $myurlstr);
	
	for ($i=33;$i<=36;$i++) {
		$myurlstr = str_replace(chr($i), "%" . dechex($i), $myurlstr);
	}
	for ($i=38;$i<=47;$i++) {
		$myurlstr = str_replace(chr($i), "%" . dechex($i), $myurlstr);
	}
	for ($i=58;$i<=64;$i++) {
		$myurlstr = str_replace(chr($i), "%" . dechex($i), $myurlstr);
	}
	for ($i=91;$i<=96;$i++) {
		$myurlstr = str_replace(chr($i), "%" . dechex($i), $myurlstr);
	}
	for ($i=123;$i<=126;$i++) {
		$myurlstr = str_replace(chr($i), "%" . dechex($i), $myurlstr);
	}
	return $myurlstr;
}
?>
