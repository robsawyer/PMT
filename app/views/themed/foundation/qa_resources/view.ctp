<div class="qaResources view">
<h2><?php  __('Qa Resource');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $qaResource['QaResource']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $qaResource['QaResource']['type']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Fullname'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $qaResource['QaResource']['fullname']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Location'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $qaResource['QaResource']['location']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Offshore'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				if($qaResource['QaResource']['offshore']==1){
					echo "Yes";
				}else{
					echo "No";
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->relativeTime($qaResource['QaResource']['created']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->relativeTime($qaResource['QaResource']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="download-actions">
	Export options:
	<?php
		echo $this->Html->image('excel_icon.gif',array('title'=>'Download xls version',
																	'url'=>array('../exportxls/'.$qaResource['QaResource']['id']),
																	'alt'=>'Excel version'
																	));
		/*echo $this->Html->image('pdf_icon.gif',array('title'=>'Download pdf version',
																	'url'=>array('../exportpdf'),
																	'alt'=>'PDF version'
																	));*/
		/*echo $this->Html->image('rtf_icon.gif',array('title'=>'Download rtf version',
																	'url'=>array(),
																	'alt'=>'rtf version'
																	));*/
	?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Qa Resource', true), array('action' => 'edit', $qaResource['QaResource']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Qa Resource', true), array('action' => 'delete', $qaResource['QaResource']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $qaResource['QaResource']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Qa Resources', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Qa Resource', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Projects');?></h3>
	<?php if (!empty($qaResource['Project'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php __('Id'); ?></th>
		<th><?php __('Number'); ?></th>
		<th><?php __('Type'); ?></th>
		<th><?php __('Client'); ?></th>
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
		foreach ($qaResource['Project'] as $project):
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
