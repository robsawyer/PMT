<div class="offshoreProjectManagers index">
	<h2><?php __('Offshore Project Managers');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none;"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('location');?></th>
            <th><?php echo $this->Paginator->sort('type');?></th>
			<th style="display:none;"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none;"><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php #__('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($offshoreProjectManagers as $offshoreProjectManager):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none;"><?php echo $offshoreProjectManager['OffshoreProjectManager']['id']; ?>&nbsp;</td>
		<td class="cli"><?php echo $this->Html->link(__($offshoreProjectManager['OffshoreProjectManager']['name'], true), array('action' => 'view', $offshoreProjectManager['OffshoreProjectManager']['id'])); ?>&nbsp;</td>
		<td><?php echo $offshoreProjectManager['OffshoreProjectManager']['email']; ?>&nbsp;</td>
		<td><?php echo $offshoreProjectManager['OffshoreProjectManager']['location']; ?>&nbsp;</td>
        <td><?php echo $offshoreProjectManager['OffshoreProjectManager']['type']; ?>&nbsp;</td>
		<td style="display:none;"><?php echo $offshoreProjectManager['OffshoreProjectManager']['created']; ?>&nbsp;</td>
		<td style="display:none;"><?php echo $offshoreProjectManager['OffshoreProjectManager']['modified']; ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $offshoreProjectManager['OffshoreProjectManager']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $offshoreProjectManager['OffshoreProjectManager']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $offshoreProjectManager['OffshoreProjectManager']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $offshoreProjectManager['OffshoreProjectManager']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Offshore Project Manager', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('New Project Manager', true), array('controller'=>'project_managers','action' => 'add')); ?></li>
	</ul>
</div>