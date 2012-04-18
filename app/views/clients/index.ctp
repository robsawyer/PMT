<div class="clients index">
	<h2><?php __('Clients');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none"><?php //echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th style="display:none"><?php //echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php //echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($clients as $client):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none"><?php //echo $client['Client']['id']; ?>&nbsp;</td>
		<td width="75%"><?php echo $this->Html->link(__($client['Client']['name'], true), array('action' => 'view', $client['Client']['id'])); ?>&nbsp;</td>
		<td style="display:none"><?php //echo $client['Client']['created']; ?>&nbsp;</td>
		<td style="display:none"><?php //echo $client['Client']['modified']; ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $client['Client']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $client['Client']['id'])); ?>
			<?php //echo $this->Html->link(__('Delete', true), array('action' => 'delete', $client['Client']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $client['Client']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Client', true), array('action' => 'add')); ?></li>
	</ul>
</div>