<div class="productionManagers index">
	<h2><?php __('Production Managers');?></h2>
	<ul class="details">
		<li>Total production managers: <span class="number-count"><?php echo count($production_managers); ?></span></li>
	</ul>
	<table cellpadding="0" cellspacing="0">
	<tr>
<<<<<<< HEAD
			<th style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('type');?></th>
			<th><?php echo $this->Paginator->sort('fullname');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('location');?></th>
			<th><?php echo $this->Paginator->sort('offshore');?></th>
			<th><?php echo $this->Paginator->sort('total_working_projects'); ?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
=======
			<th valign="bottom" style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('name');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('email');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('location');?></th>
            <th valign="bottom"><?php echo $this->Paginator->sort('type');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('offshore');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('total_working_projects'); ?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
			<th valign="bottom" class="actions"><?php //__('Actions');?></th>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
	</tr>
	<?php
	$i = 0;
	foreach ($production_managers as $production_manager):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none"><?php echo $production_manager['ProductionManager']['id']; ?>&nbsp;</td>
<<<<<<< HEAD
		<td><?php echo $production_manager['ProductionManager']['type']; ?>&nbsp;</td>
		<td width="10%">
=======
		<td width="10%" class="cli">
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		<?php 
			if($production_manager['ProductionManager']['slug']){
				echo $this->Html->link(__($production_manager['ProductionManager']['fullname'],true),array('action'=>'view',$production_manager['ProductionManager']['slug'])); 
			}else{
				echo $this->Html->link(__($production_manager['ProductionManager']['fullname'],true),array('action'=>'view',$production_manager['ProductionManager']['id'])); 
			}
			
			?>&nbsp;</td>
		<td><?php echo $production_manager['ProductionManager']['email']; ?>&nbsp;</td>
		<td width="20%"><?php echo $production_manager['ProductionManager']['location']; ?>&nbsp;</td>
<<<<<<< HEAD
=======
        <td><?php echo $production_manager['ProductionManager']['type']; ?>&nbsp;</td>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		<td><?php 
			if($production_manager['ProductionManager']['offshore'] == 1){
				echo "Yes";
			}else{
				echo "No";
			}
		?>&nbsp;</td>
		<td width="23%"><?php 
			echo $production_manager['ProductionManager']['total_working_projects']; 
			?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($production_manager['ProductionManager']['created']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($production_manager['ProductionManager']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $production_manager['ProductionManager']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $production_manager['ProductionManager']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $production_manager['ProductionManager']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $production_manager['ProductionManager']['id'])); ?>
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
<<<<<<< HEAD
=======
</div>

>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Production Manager', true), array('action' => 'add')); ?></li>
	</ul>
</div>