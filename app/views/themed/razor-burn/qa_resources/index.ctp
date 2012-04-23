<div class="qaResources index">
	<h2><?php __('Qa Resources');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th class="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('type');?></th>
			<th><?php echo $this->Paginator->sort('fullname');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('location');?></th>
			<th><?php echo $this->Paginator->sort('offshore');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($qaResources as $qaResource):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td class="display:none"><?php echo $qaResource['QaResource']['id']; ?>&nbsp;</td>
		<td><?php echo $qaResource['QaResource']['type']; ?>&nbsp;</td>
		<td><?php echo $this->Html->link(__($qaResource['QaResource']['fullname'],true),array('action'=>'view',$qaResource['QaResource']['id'])); ?>&nbsp;</td>
		<td><?php echo $qaResource['QaResource']['email']; ?>&nbsp;</td>
		<td><?php echo $qaResource['QaResource']['location']; ?>&nbsp;</td>
		<td><?php 
			if($qaResource['QaResource']['offshore']==1){
				echo "Yes";
			}else{
				echo "No";
			}
		?>&nbsp;</td>
		<td><?php echo $this->Time->relativeTime($qaResource['QaResource']['created']); ?>&nbsp;</td>
		<td><?php echo $this->Time->relativeTime($qaResource['QaResource']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $qaResource['QaResource']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $qaResource['QaResource']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $qaResource['QaResource']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $qaResource['QaResource']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Qa Resource', true), array('action' => 'add')); ?></li>
	</ul>
</div>