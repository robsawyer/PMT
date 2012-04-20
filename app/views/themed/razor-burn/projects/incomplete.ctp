<div class="projects index">
	<h2><?php __('Incomplete Projects');?></h2>
	<h3><?php __('Details');?></h3>
	<ul class="details">
		<li>Total projects: <span class="number-count"><?php echo count($projects); ?></span></li>
		<li class="offshore-project-row">Offshore projects: <span class="number-count"><?php echo count($offshoreProjects); ?></span></li>
		<li>In-house projects: <span class="number-count"><?php echo count($inhouseProjects); ?></span></li>
	</ul>
	<ul class="details">
		<li>Standard media projects: <span class="number-count"><?php echo count($standardMedia); ?></span></li>
		<li>Rich media projects: <span class="number-count"><?php echo count($richMedia); ?></span></li>
	</ul>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('number');?></th>
			<th><?php echo $this->Paginator->sort('client_id');?></th>
			<th><?php echo $this->Paginator->sort('type');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('url');?></th>
			<th><?php echo $this->Paginator->sort('offshore');?></th>
			<th><?php echo $this->Paginator->sort('started');?></th>
			<th><?php echo $this->Paginator->sort('complete');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('start');?></th>
			<th><?php echo $this->Paginator->sort('priority');?></th>
			<th><?php echo $this->Paginator->sort('due');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($projects as $project):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
		if($project['Project']['complete']==1){ 
			$class = ' class="complete-project-row"';
			if($project['Project']['offshore']==1){ 
				//$class = ' class="offshore-project-complete-row"';
			}
		}else{
			if($project['Project']['offshore']==1){ 
				$class = ' class="offshore-project-row"';
			}
		}
		
	?>
	<?php
		if($project['Project']['complete'] != 1){
			switch($project['Project']['priority']){
				case 1:
					break;
				case 2:
					$class = ' class="medium-priority-row"';
					break;
				case 3:
					$class = ' class="high-priority-row"';
					break;
				case 4:
					$class = ' class="critical-priority-row"';
					break;
			}
		}
	?>
	<tr<?php echo $class; ?>>
		<td style="display:none"><?php echo $project['Project']['id']; ?>&nbsp;</td>
		<td><?php if($project['Project']['number']) echo $this->Html->link(__($project['Project']['number'], true), array('action' => 'view', $project['Project']['id'])); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?>
		</td>
		<td><?php echo $project['Project']['type']; ?>&nbsp;</td>
		<td><?php echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id']),array('title'=>$project['Project']['description'])); ?>&nbsp;</td>
		<td style="display:none"><?php //echo $project['Project']['description']; ?>&nbsp;</td>
		<td><?php if($project['Project']['url']) echo $this->Html->link($project['Project']['url'],null,array('target'=>'_blank')); ?>&nbsp;</td>
		<td><?php 
			if($project['Project']['offshore'] == 1){
				echo "Yes"; 
			}else{
				echo "No"; 
			}
		?>&nbsp;</td>
		<td><?php 
			if($project['Project']['started'] == 1){
				echo "Yes"; 
			}else{
				echo "No"; 
			}
		
		?>&nbsp;</td>
		<td><?php 
			if($project['Project']['complete'] == 1){
				echo "Yes"; 
			}else{
				echo "No"; 
			}
		?>&nbsp;</td>
		<td style="display:none"><?php //echo $this->Time->relativeTime($project['Project']['start']); ?>&nbsp;</td>
		<td><?php 
				switch($project['Project']['priority']){
					case 1:
						echo "Low";
						break;
					case 2:
						echo "Medium";
						break;
					case 3:
						echo "High";
						break;
					case 4:
						echo "Critical";
						break;
				}
			?>&nbsp;</td>
		<td><?php echo $this->Time->relativeTime($project['Project']['due']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['created']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Duplicate', true), array('action' => 'duplicate', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $project['Project']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['Project']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Project', true), array('action' => 'add')); ?></li>
	</ul>
</div>