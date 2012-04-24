<?php
//Replace the Source paging array if a Tagged array exists
if(!empty($this->Paginator->params['paging']['Projects'])){
	$this->Paginator->params['paging'] = $this->Paginator->params['paging']['Projects'];
}
?>
<div class="productionManagers view">
<<<<<<< HEAD
	<h2>
	<?php 
		__($production_manager['ProductionManager']['fullname']); 
		if(isset($production_manager['ProductionManager']['location'])) echo " - ".$production_manager['ProductionManager']['location'];
	?>
	<?php
	if($admin && $production_manager['ProductionManager']['id'] != $userAccount['User']['production_manager_id']):
		if(!empty($userAccount)):
			echo " - ".$this->Html->link('Edit Profile',array('action'=>'edit',$production_manager['ProductionManager']['id'])); 
		endif;
	else:
		echo " - ".$this->Html->link('Edit Profile',array('action'=>'edit',$production_manager['ProductionManager']['id']));
	endif;
	?>
	</h2>
=======
<h2><?php 
		__($production_manager['ProductionManager']['fullname']); 
		if(isset($production_manager['ProductionManager']['location'])) echo " - ".$production_manager['ProductionManager']['location'];
	?>- <span><?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $production_manager['ProductionManager']['id'])); ?> </span></h2> 
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
<ul class="details">
	<li>Total projects: <span class="number-count"><?php echo count($incompleteProjects) + count($completeProjects) ; ?></span></li>
	<li class="complete-project-row"><?php echo __("Complete projects",true); ?>: <span class="number-count"><?php echo count($completeProjects); ?></span></li>
	<li><?php echo __("Incomplete projects",true);?>: <span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
</ul>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Employee Type'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $production_manager['ProductionManager']['type']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Email'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				$email_addresses = split(",",$production_manager['ProductionManager']['email']);
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
					echo $this->Html->link($production_manager['ProductionManager']['email'],'mailto:'.$production_manager['ProductionManager']['email']);
				}

			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Phone Number'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				echo $production_manager['ProductionManager']['phone_number'];
			?>
			&nbsp;
		</dd>
		<!--<dt<?php //if ($i % 2 == 0) echo $class;?>><?php //__('Location'); ?></dt>
		<dd<?php //if ($i++ % 2 == 0) echo $class;?>>
			<?php //echo $production_manager['ProductionManager']['location']; ?>
			&nbsp;
		</dd>-->
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Offshore'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php 
				if($production_manager['ProductionManager']['offshore'] == 0){
					echo "No";
				}else{
					echo "Yes";
				}
			?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($production_manager['ProductionManager']['created']); ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Time->nice($production_manager['ProductionManager']['modified']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<<<<<<< HEAD
<?php //if($userRole == "admin" || $userRole == "manager"): ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
<div class="download-actions">
	Export options:
	<?php
		echo $this->Html->image('excel_icon.gif',array('title'=>'Download xls version',
																	'url'=>array('../exportxls/'.$production_manager['ProductionManager']['id']),
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
<<<<<<< HEAD
<?php //endif; ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
<div class="related">
	<h3><?php echo $this->Html->link('Working Projects'." (".count($incompleteProjects).")",array('controller'=>'projects','action'=>'bypm',$production_manager['ProductionManager']['slug']),array('title'=>'Click to see your working projects'));?></h3>
	<?php 
		if (!empty($projects)): 
	?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th style="display:none"><?php //__('Id'); ?></th>
		<th><?php echo $this->Paginator->sort('number'); ?></th>
		<th><?php echo $this->Paginator->sort('client'); ?></th>
		<th><?php echo $this->Paginator->sort('title'); ?></th>
		<th><?php echo $this->Paginator->sort('url');?></th>
		<th><?php echo $this->Paginator->sort('total_units');?></th>
		<th><?php echo $this->Paginator->sort('offshore');?></th>
		<th><?php echo $this->Paginator->sort('started');?></th>
		<th><?php echo $this->Paginator->sort('complete');?></th>
		<th><?php echo $this->Paginator->sort('on_hold');?></th>
		<th><?php echo $this->Paginator->sort('in_qa');?></th>
		<th><?php echo $this->Paginator->sort('progress');?></th>
		<th><?php echo $this->Paginator->sort('priority');?></th>
		<th><?php echo $this->Paginator->sort('start'); ?></th>
		<th><?php echo $this->Paginator->sort('due'); ?></th>
		<th><?php echo $this->Paginator->sort('notes'); ?></th>
		<th style="display:none"><?php __('Created'); ?></th>
		<th style="display:none"><?php __('Modified'); ?></th>
<<<<<<< HEAD
		<?php if($userRole == "admin" || $userRole == "manager"): ?>
		<th class="actions" style="display:none"><?php __('Actions');?></th>
		<?php endif; ?>
=======
		<th class="actions" style="display:none"><?php __('Actions');?></th>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
	</tr>
	<?php
		$i = 0;
		//debug($production_manager['Project']);
		//$projects['Project'] = Set::sort($projects, '{n}.Project.complete', 'asc');
		//debug($projects['Project']);
		foreach ($projects as $project):
			if(!empty($project['ProductionManager'][0])):
			if($project['ProductionManager'][0]['id'] == $production_manager['ProductionManager']['id']):
				$class = null;
				if($project['Project']['complete']==0){
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
			<td><?php echo $project['Project']['number'];?></td>
			<td><?php echo $project['Client']['name'];?></td>
			<td width="25%"><?php echo $this->Html->link(__($project['Project']['title'],true),array('controller'=>'projects','action'=>'view',$project['Project']['id']),array('title'=>$project['Project']['description']));?></td>
			<?php
				if($project['Project']['on_hold']==1){ 
					$class = ' class="onhold-project-row"';
					if($project['Project']['on_hold']==1){ 
						//$class = ' class="offshore-project-complete-row"';
					}
				}else{
					if($project['Project']['on_hold']==1){ 
						$class = ' class="onhold-project-row"';
					}
				}
			?>
			<td width="15%"><?php 
				//Clean up the Jira link
				//Remove the 'https://razorfish.jira.com/browse/' and replace with just the task URL
				$cleanURL = str_replace("https://razorfish.jira.com/browse/","",$project['Project']['url']);

				if($project['Project']['url']){
					echo $this->Html->link($cleanURL,$project['Project']['url'],array('target'=>'_blank'));
				} 
				?>&nbsp;</td>
				<td width="5%"><?php 
					echo $project['Project']['total_units'];
					?>&nbsp;</td>
				<td><?php 
					if($project['Project']['offshore'] == 1){
						$offshoreVal = "&#x2713;"; 
					}else{
						$offshoreVal = "X"; 
					}
					echo $this->Js->link($offshoreVal,'/projects/ajax_toggle_offshore/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_offshore','success'=>'toggleOffshore(data);','escape'=>false));
				?>&nbsp;</td>
				<td><?php 
					if($project['Project']['started'] == 1){
						$startedVal = "&#x2713;"; 
					}else{
						$startedVal = "X"; 
					}
					echo $this->Js->link($startedVal,'/projects/ajax_toggle_started/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_started','success'=>'toggleStarted(data);','escape'=>false));
				?>&nbsp;</td>
				<td><?php 
					if($project['Project']['complete'] == 1){
						$completeVal = "&#x2713;"; 
					}else{
						$completeVal = "X"; 
					}
					echo $this->Js->link($completeVal,'/projects/ajax_toggle_complete/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_complete','success'=>'toggleComplete(data);','escape'=>false));
				?>&nbsp;</td>
				<?php 
					if($project['Project']['on_hold'] == 1){
						$holdVal = "&#x2713;"; 
						$holdClass = ' class="on-hold"';
					}else{
						$holdVal = "X"; 
						$holdClass = '';
					}
				?>
				<td<?php echo $holdClass; ?>><?php 
					echo $this->Js->link($holdVal,'/projects/ajax_toggle_hold/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_hold','success'=>'toggleHold(data);','escape'=>false));
				?>&nbsp;</td>
				<?php
				if($project['Project']['in_qa'] == 1){
					$qaVal = "&#x2713;";
					$QAClass = ' class="in-qa"';
				}else{
					$qaVal = "X"; 
					$QAClass = '';
				}
				?>
				<td<?php echo $QAClass; ?>><?php 
					echo $this->Js->link($qaVal,'/projects/ajax_toggle_qa/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_qa','success'=>'toggleQA(data);','escape'=>false));
				?>&nbsp;</td>
			<td><?php 
					echo $project['Project']['progress']."%";
			?>&nbsp;</td>
			<td style="display:none"><?php //echo $this->Time->relativeTime($project['start']); ?>&nbsp;</td>
			<td><?php 
					switch($project['Project']['priority']){
						case 1:
							echo "Low";
							break;
						case 2:
							echo "Medium";
							break;
						case 3:
							echo "High";
							break;
						case 4:
							echo "Critical";
							break;
					}
				?>&nbsp;</td>
			
			<td><?php echo $this->Time->format($format='m/d/Y',$project['Project']['start']);?></td>
			<td><?php echo $this->Time->format($format='m/d/Y',$project['Project']['due']);?></td>
			<td width="25%"><?php echo $project['Project']['notes'];?></td>
<<<<<<< HEAD
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
			<td class="actions" style="display:none">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'projects', 'action' => 'view', $project['Project']['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'projects', 'action' => 'edit', $project['Project']['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'projects', 'action' => 'delete', $project['Project']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['id'])); ?>
			</td>
<<<<<<< HEAD
			<?php endif; ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		</tr>
		<?php 
			endif;
		endif; 
	?>
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
	<?php 
	endif; 
	?>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
<script type="text/javascript">
function toggleHold(data){
	console.log(data);
	var val;
	var targetClass = 'on-hold';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.onHold){
		val = "✓";
		$("#"+returnData.id+"_hold").text(val);
		$("#"+returnData.id+"_hold").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_hold").text(val);
		$("#"+returnData.id+"_hold").removeClass(targetClass);
	}
}

function toggleQA(data){
	console.log(data);
	var val;
	var targetClass = 'in-qa';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.inQA){
		val = "✓";
		$("#"+returnData.id+"_qa").text(val);
		$("#"+returnData.id+"_qa").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_qa").text(val);
		$("#"+returnData.id+"_qa").removeClass(targetClass);
	}
}

function toggleComplete(data){
	console.log(data);
	var val;
	var targetClass = 'completed';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.completed){
		val = "✓";
		$("#"+returnData.id+"_complete").text(val);
		$("#"+returnData.id+"_complete").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_complete").text(val);
		$("#"+returnData.id+"_complete").removeClass(targetClass);
	}
}

function toggleStarted(data){
	console.log(data);
	var val;
	var targetClass = 'started';
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.hasStarted){
		val = "✓";
		$("#"+returnData.id+"_started").text(val);
		$("#"+returnData.id+"_started").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_started").text(val);
		$("#"+returnData.id+"_started").removeClass(targetClass);
	}
}

function toggleOffshore(data){
	console.log(data);
	var val;
	var targetClass = 'offshore';
	//offshore-project-row
	//var returnData = jQuery.parseJSON(data);
	returnData = data.data;
	console.log(returnData);
	if(returnData.isOffshore){
		val = "✓";
		$("#"+returnData.id+"_offshore").text(val);
		$("#"+returnData.id+"_offshore").addClass(targetClass);
	}else{
		val = "X";
		$("#"+returnData.id+"_offshore").text(val);
		$("#"+returnData.id+"_offshore").removeClass(targetClass);
	}
}
</script>
