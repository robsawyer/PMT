<div class="projects index">
	<h2><?php __($production_manager['ProductionManager']['fullname'].'\'s Projects');?></h2>
	<h3><?php __('Details');?></h3>
	<ul class="details">
		<li>Total projects: <span class="number-count"><?php echo count($projects) + count($completeProjects) ; ?></span></li>
		<li class="offshore-project-row"><?php echo $this->Html->link(__("Offshore projects",true),array('action'=>'offshore'));?>: <span class="number-count"><?php echo count($offshoreProjects); ?></span></li>
		<li><?php echo $this->Html->link(__("In-house projects",true),array('action'=>'inhouse'));?>: <span class="number-count"><?php echo count($inhouseProjects); ?></span></li>
		<li class="complete-project-row"><?php echo $this->Html->link(__("Complete projects",true),array('action'=>'complete'));?>: <span class="number-count"><?php echo count($completeProjects); ?></span></li>
		<li><?php echo $this->Html->link(__("Incomplete projects",true),array('action'=>'incomplete'));?>: <span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
		<li><?php echo $this->Html->link(__("Total progress (%)",true),'#');?>: <span class="number-count"><?php echo $this->Number->toPercentage($percentageComplete); ?></span></li>
	</ul>
	<ul class="details">
		<li>Standard media projects: <span class="number-count"><?php echo count($standardMedia); ?></span></li>
		<li>Rich media projects: <span class="number-count"><?php echo count($richMedia); ?></span></li>
		<li>Incomplete units: <span class="number-count"><?php echo $incompleteUnits; ?></span></li>
	</ul>
	<div class="panel">
		<h3><?php __('In-house');?></h3>
		<ul class="details-panel">
			<li><?php echo $this->Html->link("Incomplete projects",array('controller'=>'projects','action'=>'inhouse','incomplete')); ?>: <span class="number-count"><?php echo count($incompleteInhouseProjects); ?></span></li>
			<li class="complete-project-row"><?php echo $this->Html->link("Completed projects",array('controller'=>'projects','action'=>'inhouse','complete')); ?>: <span class="number-count"><?php echo count($completeInhouseProjects); ?></span></li>
		</ul>
	</div>
	<div class="panel last">
		<h3><?php __('Offshore');?></h3>
		<ul class="details-panel">
			<li><?php echo $this->Html->link("Incomplete projects",array('controller'=>'projects','action'=>'offshore','incomplete')); ?>: <span class="number-count"><?php echo count($incompleteOffshoreProjects); ?></span></li>
			<li class="complete-project-row"><?php echo $this->Html->link("Completed projects",array('controller'=>'projects','action'=>'offshore','complete')); ?>: <span class="number-count"><?php echo count($completeOffshoreProjects); ?></span></li>
		</ul>
	</div>
	<div class="panel">
		<h3><?php __('Priorities');?></h3>
		<ul class="details-panel">
			<li><?php echo $this->Html->link("Low priority projects",array('controller'=>'projects','action'=>'priority','low')); ?>: <span class="number-count"><?php echo count($lowPriorityProjects); ?></span></li>
			<li class="medium-priority-row"><?php echo $this->Html->link("Medium priority projects",array('controller'=>'projects','action'=>'priority','medium')); ?>: <span class="number-count"><?php echo count($mediumPriorityProjects); ?></span></li>
			<li class="high-priority-row"><?php echo $this->Html->link("High priority projects",array('controller'=>'projects','action'=>'priority','high')); ?>: <span class="number-count"><?php echo count($highPriorityProjects); ?></span></li>
			<li class="critical-priority-row"><?php echo $this->Html->link("Critical priority projects",array('controller'=>'projects','action'=>'priority','critical')); ?>: <span class="number-count"><?php echo count($criticalPriorityProjects); ?></span></li>
		</ul>
	</div>
	<div class="clear"></div>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('number');?></th>
			<th><?php echo $this->Paginator->sort('client_id');?></th>
			<th><?php echo $this->Paginator->sort('type');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('url');?></th>
			<th><?php echo $this->Paginator->sort('total_units');?></th>
			<th><?php echo $this->Paginator->sort('offshore');?></th>
			<th><?php echo $this->Paginator->sort('started');?></th>
			<th><?php echo $this->Paginator->sort('complete');?></th>
			<th><?php echo $this->Paginator->sort('on_hold');?></th>
			<th><?php echo $this->Paginator->sort('in_qa');?></th>
			<th><?php echo $this->Paginator->sort('progress');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('start');?></th>
			<th><?php echo $this->Paginator->sort('priority');?></th>
			<th><?php echo $this->Paginator->sort('due');?></th>
			<th><?php __('Production Manager(s)');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
<<<<<<< HEAD
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<th class="actions"><?php __('Actions');?></th>
			<?php endif; ?>
=======
			<th class="actions"><?php __('Actions');?></th>
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
	</tr>
	<?php
	$i = 0;
	foreach ($projects as $project):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
		if($project['Project']['complete']==1){ 
			$class = ' class="complete-project-row"';
			if($project['Project']['offshore']==1){ 
				//$class = ' class="offshore-project-complete-row"';
			}
		}else{
			if($project['Project']['offshore']==1){ 
				$class = ' class="offshore-project-row"';
			}
		}
		
	?>
	<?php
		if($project['Project']['complete'] != 1){
			switch($project['Project']['priority']){
				case 1:
					break;
				case 2:
					$class = ' class="medium-priority-row"';
					break;
				case 3:
					$class = ' class="high-priority-row"';
					break;
				case 4:
					$class = ' class="critical-priority-row"';
					break;
			}
		}
	?>
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
	<tr<?php echo $class; ?>>
		<td style="display:none"><?php echo $project['Project']['id']; ?>&nbsp;</td>
		<td><?php if($project['Project']['number']) echo $this->Html->link(__($project['Project']['number'], true), array('action' => 'view', $project['Project']['id'])); ?>&nbsp;</td>
		<td width="15%">
			<?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?>
		</td>
		<td><?php echo $project['Project']['type']; ?>&nbsp;</td>
		<td width="40%"><?php echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id']),array('title'=>$project['Project']['description'])); ?>&nbsp;</td>
		<td style="display:none"><?php //echo $project['Project']['description']; ?>&nbsp;</td>
		<td width="20%"><?php 
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
		<td style="display:none"><?php //echo $this->Time->relativeTime($project['Project']['start']); ?>&nbsp;</td>
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
		
		<td><?php echo $this->Time->relativeTime($project['Project']['due']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['created']); ?>&nbsp;</td>
		<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['modified']); ?>&nbsp;</td>
		<td width="10%">
		<?php 
			$counter = count($project['ProductionManager']);
			foreach($project['ProductionManager'] as $pm){
				echo $this->Html->link($pm['fullname'],array('controller'=>'production_managers','action'=>'view',$pm['slug'])); 
				if($counter > 1) {
					echo ", ";
					$counter--;
				}
			}
			?>&nbsp;</td>
<<<<<<< HEAD
		<?php if($userRole == "admin" || $userRole == "manager"): ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
		<td class="actions">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Duplicate', true), array('action' => 'duplicate', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $project['Project']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $project['Project']['id'])); ?>
		</td>
<<<<<<< HEAD
		<?php endif; ?>
=======
>>>>>>> c568480e3497dffdc91a3a55e4719ca190238935
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
		<li><?php echo $this->Html->link(__('New Project', true), array('action' => 'add')); ?></li>
	</ul>
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