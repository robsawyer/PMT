<div class="developers index">
<h2><?php __('Developers');?></h2>
    
<ul id="accordion" style="margin:20px 0 0 0;">
<li>
<div><?php __('Details');?></div>
<ul>
		<li>Total Developers: <span class="number-count"><?php echo count($developers); ?></span></li>
		<li>Onshore: <span class="number-count"><?php echo count($onshore_developers); ?></span></li>
		<li>Offshore: <span class="number-count"><?php echo count($offshore_developers); ?></span></li>
		<?php
			if(!empty($busiest_dev)):
				if(!isset($busiest_dev[1]['Developer']['fullname'])):
		?>
		<li>Busiest dev:<?php echo $this->Html->link(__($busiest_dev['Developer']['fullname'],true),array('action'=>'view',$busiest_dev['Developer']['slug']));?> (<span class="number-count"><?php echo $busiest_dev['Developer']['total_working_projects']; ?> projects)</span></li>
		<?php else: ?>
		<li>
			Busiest devs:<?php 
								echo $this->Html->link(__($busiest_dev[0]['Developer']['fullname'],true),array('action'=>'view',$busiest_dev[0]['Developer']['slug']));
								echo ", ";
								echo $this->Html->link(__($busiest_dev[1]['Developer']['fullname'],true),array('action'=>'view',$busiest_dev[1]['Developer']['slug']));
							?>
							(<span class="number-count"><?php echo $busiest_dev[0]['Developer']['total_working_projects']; ?> projects)</span>
		</li>
		<?php 
			endif; 
		endif;
		?>
	</ul>
</li>

<li>
<div>Workload Distribution (Coming Soon)</div>
<ul>
		<li>Onshore Capacity: <span class="number-count"><?php echo "100%" ?></span>
		<li>Offshore Capacity: <span class="number-count"><?php echo "100%" ?></span>
</ul>
</li>
</ul>

<SCRIPT>
$("#accordion > li > div").click(function(){
	if(false == $(this).next().is(':visible')) {
		//$('#accordion ul').slideUp(200);
	}
	$(this).next().slideToggle(180);
});
$('#accordion ul:eq(0)').show();
$('#accordion ul:eq(1)').show();
</SCRIPT>

<div class="clear" style="padding-bottom:10px;"></div>
   
    
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('location');?></th>
            <th><?php echo $this->Paginator->sort('type');?></th>
			<th><?php echo $this->Paginator->sort('offshore');?></th>
			<th nowrap><?php echo $this->Paginator->sort('projects'); ?></th>
			<th><?php echo $this->Paginator->sort('notes'); ?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php //__('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($developers as $developer):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td style="display:none"><?php echo $developer['Developer']['id']; ?>&nbsp;</td>
		<td width="10%"><?php echo $developer['Developer']['title']; ?>&nbsp;</td>
		<td width="10%" class="cli">
		<?php 
			if($developer['Developer']['slug']){
				echo $this->Html->link(__($developer['Developer']['fullname'],true),array('action'=>'view',$developer['Developer']['slug'])); 
			}else{
				echo $this->Html->link(__($developer['Developer']['fullname'],true),array('action'=>'view',$developer['Developer']['id'])); 
			}
			
			?>&nbsp;</td>
		<td width="25%"><?php echo $developer['Developer']['email']; ?>&nbsp;</td>
		<td width="10%"><?php echo $developer['Developer']['location']; ?>&nbsp;</td>
        <td width="3%"><?php echo $developer['Developer']['type']; ?>&nbsp;</td>
		<td width="5%"><?php 
			if($developer['Developer']['offshore'] == 1){
				echo "Yes";
			}else{
				echo "No";
			}
		?>&nbsp;</td>
		<td><?php 
			/*if($developer['Project']){
				$developer['Developer']['total_working_projects'] = 0;
				foreach($developer['Project'] as $project){
					//debug($project);
					if($project['complete'] == 0){
						$developer['Developer']['total_working_projects'] += 1;
					}
				}
			}else{
				$developer['Developer']['total_working_projects'] = 0;
			}*/
			echo $developer['Developer']['total_working_projects']; 
			//debug($developer['Developer']);
			?>&nbsp;</td>
		<td width="50%" class="trunc"><?php echo $developer['Developer']['notes']; ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($developer['Developer']['created']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($developer['Developer']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $developer['Developer']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $developer['Developer']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $developer['Developer']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $developer['Developer']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Developer', true), array('action' => 'add')); ?></li>
	</ul>
</div>