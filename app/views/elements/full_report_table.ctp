<h3><?php echo $table_name; ?></h3>

<table cellpadding="0" cellspacing="0">
<?php 
	$projects = $this->requestAction('projects/full_report/'.$type); 
	//debug($projects);
?>
<tr>
		<th valign="bottom"><?php echo $this->Paginator->sort('client');?></th>
        <th valign="bottom"><?php echo $this->Paginator->sort('type');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('name');?></th>
        <th valign="bottom"><?php echo $this->Paginator->sort('number');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('offshore');?></th>
		<th valign="bottom" nowrap><?php echo $this->Paginator->sort('in_QA');?></th>
		<th valign="bottom" nowrap><?php echo $this->Paginator->sort('on_hold');?></th>
		<th valign="bottom" nowrap><?php echo $this->Paginator->sort('total_units');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('progress');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('due');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('PMs');?></th>
		<th valign="bottom" nowrap><?php echo $this->Paginator->sort('OS PMs');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('production_managers');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('QAs');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('developers');?></th>
		<th valign="bottom"><?php echo $this->Paginator->sort('notes');?></th>
</tr>
<?php
$i = 0;
foreach ($projects as $project):
	$countPM = count($project['ProjectManager']); 
	$countOPM = count($project['OffshoreProjectManager']);
	$countQA = count($project['QaResource']); 
	$countDev = count($project['Developer']);
	$countProductionManager = count($project['ProductionManager']);

	$class = null;
	if ($i++ % 2 == 0) {
		$class = ' class="altrow"';
	}
?>
<tr<?php echo $class;?>>
	<td class="cli">
		<?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?>
	</td>
    <td><?php echo $project['Project']['type']; ?>&nbsp;</td>
	<td><?php echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id'])); ?>&nbsp;</td>
    <td><?php if($project['Project']['number']) echo $this->Html->link(__($project['Project']['number'], true), array('action' => 'view', $project['Project']['id'])); ?>&nbsp;</td>
	<td><?php 
		if($project['Project']['offshore'] == 1){
			echo "Yes"; 
		}else{
			echo "No"; 
		}
	?>&nbsp;</td>
    
	<td><?php 
		if($project['Project']['in_qa'] == 1){
			echo "Yes"; 
		}else{
			echo "No"; 
		}
	?>&nbsp;</td>
	<td><?php 
		if($project['Project']['on_hold'] == 1){
			echo "Yes"; 
		}else{
			echo "No"; 
		}
	?>&nbsp;</td>
	<td><?php 
		echo $project['Project']['total_units'];
	?>&nbsp;</td>
	<td><?php 
		echo $project['Project']['progress']."%";
	?>&nbsp;</td>
	<td><?php echo $this->Time->relativeTime($project['Project']['due']); ?>&nbsp;</td>
	<td>
		<?php
			$i = 0;
			foreach($project['ProjectManager'] as $pm):
				if($countPM > 1){
					if($i < $countPM && $i != ($countPM-1)){
						echo $pm['name'].", ";
					}else{
						echo $pm['name'];
					}
				}else{
					echo $pm['name'];
				}
				$i++;
			endforeach;
		?>
		&nbsp;</td>
	<td>
			<?php 
				$i = 0;
				foreach($project['OffshoreProjectManager'] as $opm):
					if($countOPM > 1){
						if($i < $countOPM && $i != ($countOPM-1)){
							echo $opm['name'].", ";
						}else{
							echo $opm['name'];
						}
					}else{
						echo $opm['name'];
					}
					$i++;
				endforeach;
			?>
		&nbsp;</td>
		<td>
			<?php
				$i = 0;
				foreach($project['ProductionManager'] as $production_manager):
					if($countProductionManager > 1){
						if($i < $countProductionManager && $i != ($countProductionManager-1)){
							echo $production_manager['fullname'].", ";
						}else{
							echo $production_manager['fullname'];
						}
					}else{
						echo $production_manager['fullname'];
					}
					$i++;
				endforeach;
			?>
		&nbsp;</td>
		<td>
			<?php
				$i = 0;
				foreach($project['QaResource'] as $qa):
					if($countQA > 1){
						if($i < $countQA && $i != ($countQA-1)){
							echo $qa['fullname'].", ";
						}else{
							echo $qa['fullname'];
						}
					}else{
						echo $qa['fullname'];
					}
					$i++;
				endforeach;
			?>
		&nbsp;</td>
			<td>
			<?php
				$i = 0;
				foreach($project['Developer'] as $dev):
					if($countDev > 1){
						if($i < $countDev && $i != ($countDev-1)){
							echo $dev['fullname'].", ";
						}else{
							echo $dev['fullname'];
						}
					}else{
						echo $dev['fullname'];
					}
					$i++;
				endforeach;
			?>
		&nbsp;</td>
		<td class="act"><?php echo $project['Project']['notes']; ?></td>
</tr>
<?php endforeach; ?>
</table>
<p>
<?php
/*echo $this->Paginator->counter(array(
'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
));*/
?>	</p>

<div class="paging" style="display:none">
	<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
 | 	<?php echo $this->Paginator->numbers();?>
|
	<?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
</div>