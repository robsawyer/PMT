<div class="projectManagers view">
<h2><?php  __('Project Manager');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $projectManager['ProjectManager']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $projectManager['ProjectManager']['type']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $projectManager['ProjectManager']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Email'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $projectManager['ProjectManager']['email']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Location'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $projectManager['ProjectManager']['location']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->format($format='d/m/Y',$projectManager['ProjectManager']['created']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->format($format='d/m/Y',$projectManager['ProjectManager']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Project Manager', true), array('action' => 'edit', $projectManager['ProjectManager']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Project Manager', true), array('action' => 'delete', $projectManager['ProjectManager']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $projectManager['ProjectManager']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Project Managers', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Associated Projects');?></h3>
	<?php if (!empty($projectManager['Project'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Number'); ?></th>
		<th><?php __('Client'); ?></th>
		<th><?php __('Type'); ?></th>
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
		foreach ($projectManager['Project'] as $project):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $project['id'];?></td>
			<td><?php echo $project['number'];?></td>
			<td><?php if(isset($project['Client']['name'])) echo $project['Client']['name'];?></td>
			<td><?php echo $project['type'];?></td>
			<td><?php echo $this->Html->link($project['title'],array('controller'=>'projects','action'=>'view',$project['id']));?></td>
			<td><?php if(isset($project['description'])) echo $project['description'];?></td>
			<td><?php echo $this->Html->link($project['url'],$project['url'],array('target'=>'_blank'));?></td>
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
			<td><?php 
			if($project['complete']==1){
				echo "Yes";
			}else{
				echo "No";
			}?></td>
			<td><?php echo $this->Time->format($format='m/d/Y',$project['start']);?></td>
			<td><?php echo $this->Time->format($format='m/d/Y',$project['due']);?></td>
			<td class="actions" style="display:none">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'projects', 'action' => 'view', $project['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'projects', 'action' => 'edit', $project['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'projects', 'action' => 'delete', $project['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
