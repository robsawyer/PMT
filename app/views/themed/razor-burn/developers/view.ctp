<div class="developers view">
<h2><?php 
		__($developer['Developer']['fullname']); 
		if(isset($developer['Developer']['location'])) echo " - ".$developer['Developer']['location'];
	?></h2>
<ul class="details">
	<li>Total projects: <span class="number-count"><?php echo count($incompleteProjects) + count($completeProjects) ; ?></span></li>
	<li class="complete-project-row"><?php echo __("Complete projects",true); ?>: <span class="number-count"><?php echo count($completeProjects); ?></span></li>
	<li><?php echo __("Incomplete projects",true);?>: <span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
</ul>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Employee Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $developer['Developer']['type']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Email'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				$email_addresses = split(",",$developer['Developer']['email']);
				if(count($email_addresses)>1){
					$counter = 0;
					foreach($email_addresses as $address){
						if($counter == count($email_addresses)-1){
							echo $this->Html->link($address,'mailto:'.$address);
						}else{
							echo $this->Html->link($address,'mailto:'.$address).", ";
						}
						$counter++;
					}
				}else{
					echo $this->Html->link($developer['Developer']['email'],'mailto:'.$developer['Developer']['email']);
				}
				
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Phone Number'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				//debug($developer['Developer']);
				echo $developer['Developer']['phone_number'];
			?>
			&nbsp;
		</dd>
		<!--<dt<?php //if ($i % 2 == 0) echo $class;?>><?php //__('Location'); ?></dt>
		<dd<?php //if ($i++ % 2 == 0) echo $class;?>>
			<?php //echo $developer['Developer']['location']; ?>
			&nbsp;
		</dd>-->
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Offshore'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				if($developer['Developer']['offshore'] == 0){
					echo "No";
				}else{
					echo "Yes";
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Notes'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				//debug($developer['Developer']);
				echo $developer['Developer']['notes'];
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $developer['Developer']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $developer['Developer']['modified']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="download-actions">
	Export options:
	<?php
		echo $this->Html->image('excel_icon.gif',array('title'=>'Download xls version',
																	'url'=>array('../exportxls/'.$developer['Developer']['id']),
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
<?php if($userRole == "admin" || $userRole == "manager"): ?>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Developer', true), array('action' => 'edit', $developer['Developer']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Developer', true), array('action' => 'delete', $developer['Developer']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $developer['Developer']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Developers', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Developer', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
<?php endif; ?>
<div class="related">
	<h3><?php echo 'Working Projects'." (".count($incompleteProjects).")";?></h3>
	<?php if (!empty($developer['Project'])):?>
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
		$developer['Project'] = Set::sort($developer['Project'], '{n}.complete', 'asc');
		foreach ($developer['Project'] as $project):
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
