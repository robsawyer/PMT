<div class="projects view">
<h2><?php  echo __($project['Project']['title'].' &mdash; '.$project['Project']['id']);?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Number'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['number']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Client'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['type']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Description'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['description']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Url'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php if($project['Project']['url']) echo $this->Html->link($project['Project']['url'],null,array('target'=>'_blank'));  ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Total # of units'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['total_units']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Offshore'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php
				if($project['Project']['offshore'] == 1){
					echo "Yes"; 
				}else{
					echo "No"; 
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Started'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				if($project['Project']['started'] == 1){
					echo "Yes"; 
				}else{
					echo "No"; 
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Complete'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				if($project['Project']['complete'] == 1){
					echo "Yes"; 
				}else{
					echo "No"; 
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('On hold'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php
				if($project['Project']['on_hold'] == 1){
					echo "Yes"; 
				}else{
					echo "No"; 
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('In QA'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php
				if($project['Project']['in_qa'] == 1){
					echo "Yes"; 
				}else{
					echo "No"; 
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Total progress'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['progress']."%"; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Start'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($project['Project']['start']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Due'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($project['Project']['due']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($project['Project']['created']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($project['Project']['modified']); ?>
			&nbsp;
		</dd>
		<dt style="background-color:#ffffe5;"<?php if ($i % 2 == 0) echo $class;?>><?php __('Notes'); ?></dt>
		<dd style="background-color:#ffffe5;"<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $project['Project']['notes']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<?php if($userRole == "admin" || $userRole == "manager"): ?>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Duplicate Project', true), array('action' => 'duplicate', $project['Project']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Edit Project', true), array('action' => 'edit', $project['Project']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Project', true), array('action' => 'delete', $project['Project']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['Project']['id'])); ?> </li>
		<li style="display:none;"><?php echo $this->Html->link(__('List Projects', true), array('action' => 'index')); ?> </li>

	</ul>
</div>
<?php endif; ?>
<div class="related">
	<h3><?php __('Developers');?></h3>
	<?php if (!empty($project['Developer'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Fullname'); ?></th>
		<th><?php __('Location'); ?></th>
		<th><?php __('Offshore'); ?></th>
		<th style="display:none"><?php __('Created'); ?></th>
		<th style="display:none"><?php __('Modified'); ?></th>
		<th class="actions" style="display:none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($project['Developer'] as $developer):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $developer['id'];?></td>
			<td><?php echo $developer['type'];?></td>
			<td><?php echo $this->Html->link($developer['fullname'],array('controller'=>'developers','action'=>'view',$developer['id']));?></td>
			<td><?php echo $developer['location'];?></td>
			<td><?php 
				if($developer['offshore'] == 1){
					echo "Yes";
				}else{
					echo "No";
				}
				?></td>
			<td style="display:none"><?php echo $developer['created'];?></td>
			<td style="display:none"><?php echo $developer['modified'];?></td>
			<td class="actions" style="display:none">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'developers', 'action' => 'view', $developer['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'developers', 'action' => 'edit', $developer['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'developers', 'action' => 'delete', $developer['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $developer['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
	<?php endif; ?>
	<?php if($userRole == "admin" || $userRole == "manager"): ?>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Developer', true), array('controller' => 'developers', 'action' => 'add'));?> </li>
		</ul>
	</div>
	<?php endif; ?>
</div>
<div class="related">
	<h3><?php __('Production Managers');?></h3>
	<?php if (!empty($project['ProductionManager'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Fullname'); ?></th>
		<th><?php __('Location'); ?></th>
		<th><?php __('Offshore'); ?></th>
		<th style="display:none"><?php __('Created'); ?></th>
		<th style="display:none"><?php __('Modified'); ?></th>
		<th class="actions" style="display:none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($project['ProductionManager'] as $production_manager):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $production_manager['id'];?></td>
			<td><?php echo $production_manager['type'];?></td>
			<td><?php echo $this->Html->link($production_manager['fullname'],array('controller'=>'production_managers','action'=>'view',$production_manager['id']));?></td>
			<td><?php echo $production_manager['location'];?></td>
			<td><?php 
				if($production_manager['offshore'] == 1){
					echo "Yes";
				}else{
					echo "No";
				}
			?></td>
			<td style="display:none"><?php echo $producer['created'];?></td>
			<td style="display:none"><?php echo $producer['modified'];?></td>
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<td class="actions" style="display:none">
				<?php //echo $this->Html->link(__('View', true), array('controller' => 'producers', 'action' => 'view', $producer['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'producers', 'action' => 'edit', $producer['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'producers', 'action' => 'delete', $producer['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $producer['id'])); ?>
			</td>
			<?php endif; ?>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
<div class="related">
	<h3><?php __('Project Managers');?></h3>
	<?php if (!empty($project['ProjectManager'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Location'); ?></th>
		<th style="display:none"><?php __('Created'); ?></th>
		<th style="display:none"><?php __('Modified'); ?></th>
		<th class="actions" style="display:none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($project['ProjectManager'] as $project_manager):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $project_manager['id'];?></td>
			<td><?php echo $project_manager['type'];?></td>
			<td><?php echo $this->Html->link($project_manager['name'],array('controller'=>'project_managers','action'=>'view',$project_manager['id']));?></td>
			<td><?php echo $project_manager['location'];?></td>
			<td style="display:none"><?php echo $project_manager['created'];?></td>
			<td style="display:none"><?php echo $project_manager['modified'];?></td>
			<td class="actions" style="display:none">
				<?php //echo $this->Html->link(__('View', true), array('controller' => 'project_managers', 'action' => 'view', $project_manager['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'project_managers', 'action' => 'edit', $project_manager['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'project_managers', 'action' => 'delete', $project_manager['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project_manager['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
<?php if($userRole == "admin" || $userRole == "manager"): ?>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('controller' => 'project_managers', 'action' => 'add'));?> </li>
	</ul>
</div>
<?php endif; ?>
<div class="related">
	<h3><?php __('Offshore Project Managers');?></h3>
	<?php if (!empty($project['OffshoreProjectManager'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Location'); ?></th>
		<th style="display: none"><?php __('Created'); ?></th>
		<th style="display: none"><?php __('Modified'); ?></th>
		<th class="actions" style="display: none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($project['OffshoreProjectManager'] as $offshore_project_manager):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $offshore_project_manager['id'];?></td>
			<td><?php echo $offshore_project_manager['type'];?></td>
			<td><?php echo $this->Html->link($offshore_project_manager['name'],array('controller'=>'offshore_project_managers','action'=>'view',$offshore_project_manager['id']));?></td>
			<td><?php echo $offshore_project_manager['location'];?></td>
			<td style="display: none"><?php echo $offshore_project_manager['created'];?></td>
			<td style="display: none"><?php echo $offshore_project_manager['modified'];?></td>
			<td class="actions" style="display:none">
				<?php //echo $this->Html->link(__('View', true), array('controller' => 'offshore_project_managers', 'action' => 'view', $offshore_project_manager['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'offshore_project_managers', 'action' => 'edit', $offshore_project_manager['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'offshore_project_managers', 'action' => 'delete', $offshore_project_manager['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $offshore_project_manager['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
<?php if($userRole == "admin" || $userRole == "manager"): ?>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Offshore Project Manager', true), array('controller' => 'offshore_project_managers', 'action' => 'add'));?> </li>
		</ul>
	</div>
<?php endif; ?>
</div>

<div class="related">
	<h3><?php __('QA Resources');?></h3>
	<?php if (!empty($project['QaResource'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Location'); ?></th>
		<th style="display: none"><?php __('Created'); ?></th>
		<th style="display: none"><?php __('Modified'); ?></th>
		<th class="actions" style="display: none"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($project['QaResource'] as $qa_resource):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td style="display:none"><?php echo $qa_resource['id'];?></td>
			<td><?php echo $qa_resource['type'];?></td>
			<td><?php echo $this->Html->link($qa_resource['fullname'],array('controller'=>'qa_resources','action'=>'view',$qa_resource['id']));?></td>
			<td><?php echo $qa_resource['location'];?></td>
			<td style="display: none"><?php echo $qa_resource['created'];?></td>
			<td style="display: none"><?php echo $offshore_project_manager['modified'];?></td>
			<td class="actions" style="display:none">
				<?php //echo $this->Html->link(__('View', true), array('controller' => 'offshore_project_managers', 'action' => 'view', $offshore_project_manager['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'qa_resources', 'action' => 'edit', $qa_resource['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'qa_resources', 'action' => 'delete', $qa_resource['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $qa_resource['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>
<?php if($userRole == "admin" || $userRole == "manager"): ?>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New QA Resource', true), array('controller' => 'qa_resources', 'action' => 'add'));?> </li>
		</ul>
	</div>
<?php endif; ?>
</div>
