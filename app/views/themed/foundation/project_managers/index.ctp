<div class="projectManagers index">
	<h2><?php __('Project Managers');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none;"><?php echo $this->Paginator->sort('id');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('name');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('email');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('location');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('type');?></th>
			<th style="display:none;"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none;"><?php echo $this->Paginator->sort('modified');?></th>
			<th valign="bottom" class="actions"><?php //__('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($projectManagers as $projectManager):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none;"><?php echo $projectManager['ProjectManager']['id']; ?>&nbsp;</td>
		<td class="cli" nowrap><?php echo $this->Html->link(__($projectManager['ProjectManager']['name'], true), array('action' => 'view', $projectManager['ProjectManager']['id'])); ?>&nbsp;</td>
		<td><?php echo $projectManager['ProjectManager']['email']; ?>&nbsp;</td>
		<td nowrap><?php echo $projectManager['ProjectManager']['location']; ?>&nbsp;</td>
        <td><?php echo $projectManager['ProjectManager']['type']; ?>&nbsp;</td>

		<td style="display:none;"><?php echo $projectManager['ProjectManager']['created']; ?>&nbsp;</td>
		<td style="display:none;"><?php echo $projectManager['ProjectManager']['modified']; ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $projectManager['ProjectManager']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $projectManager['ProjectManager']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $projectManager['ProjectManager']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $projectManager['ProjectManager']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('controller'=>'project_managers','action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('New Offshore Project Manager', true), array('controller'=>'offshore_project_managers','action' => 'add')); ?></li>
	</ul>
</div>