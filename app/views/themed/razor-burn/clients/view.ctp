<div class="clients view">
<h2><?php  __($client['Client']['name']);?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $client['Client']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $client['Client']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $client['Client']['modified']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Client', true), array('action' => 'edit', $client['Client']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Client', true), array('action' => 'delete', $client['Client']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $client['Client']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Clients', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Client', true), array('action' => 'add')); ?> </li>
		<li style="display:none"><?php //echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li style="display:none"><?php //echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php echo 'Working Projects'." (".count($incompleteProjects).")";?></h3>
	<?php if (!empty($client['Project'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php //__('Id'); ?></th>
		<th><?php __('Number'); ?></th>
		<th><?php __('Title'); ?></th>
		<th><?php __('Description'); ?></th>
		<th><?php __('Url'); ?></th>
		<th><?php __('Offshore'); ?></th>
		<th><?php __('Started'); ?></th>
		<th><?php __('Complete'); ?></th>
		<th><?php __('Start'); ?></th>
		<th><?php __('Due'); ?></th>
		<th style="display:none"><?php __('Created'); ?></th>
		<th style="display:none"><?php __('Modified'); ?></th>
		<th class="actions" style="display:none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		//debug($developer['Project']);
		$client['Project'] = Set::sort($client['Project'], '{n}.complete', 'asc');
		foreach ($client['Project'] as $project):
			$class = null;
			if($project['complete']==0){
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
		?>
		<?php //if($project['complete']==0): ?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php //echo $project['id'];?></td>
			<td><?php echo $project['number'];?></td>
			<td><?php echo $this->Html->link(__($project['title'],true),array('controller'=>'projects','action'=>'view',$project['id']));?></td>
			<td><?php echo $project['description'];?></td>
			<td><?php 
				//Clean up the Jira link
				//Remove the 'https://razorfish.jira.com/browse/' and replace with just the task URL
				if(isset($project['Project']['url'])){
					$cleanURL = str_replace("https://razorfish.jira.com/browse/","",$project['Project']['url']);
					echo $this->Html->link($cleanURL,$project['Project']['url'],array('target'=>'_blank'));
				}
				
			?>
			</td>
			<td><?php 
				if($project['offshore']==1){
					echo "Yes";
				}else{
					echo "No";
				}
			?></td>
			<td><?php
			if($project['started']==1){
				echo "Yes";
			}else{
				echo "No";
			}
			?></td>
			<td><?php if($project['complete']==1){
				echo "Yes";
			}else{
				echo "No";
			}?></td>
			<td><?php echo $this->Time->format($format='m/d/Y',$project['start']);?></td>
			<td><?php echo $this->Time->format($format='m/d/Y',$project['due']);?></td>
			<td style="display: none"><?php echo $project['created'];?></td>
			<td style="display: none"><?php echo $project['modified'];?></td>
			<td class="actions" style="display:none">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'projects', 'action' => 'view', $project['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'projects', 'action' => 'edit', $project['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'projects', 'action' => 'delete', $project['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['id'])); ?>
			</td>
		</tr>
		<?php //endif; ?>
	<?php endforeach; ?>
	</table>
	<?php endif; ?>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>