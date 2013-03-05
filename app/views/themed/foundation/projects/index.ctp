<?php echo $this->Html->meta('RSS Feed', '/projects/rss'); ?>
<div class="large-12 columns">
	<div class="section-container tabs" data-section>
		
		<section class="section">
			<p class="title"><?php echo $this->Html->link('All Projects','#all'); ?></p>
			<div class="content">
				<ul class="side-nav">
					<li>Total Projects: <span class="number-count"><?php echo count($projects) + count($completeProjects) ; ?></span></li>
					<li><?php echo $this->Html->link(__("Incomplete Projects",true),array('action'=>'incomplete'));?>:<span class="number-count"><?php echo count($incompleteProjects); ?></span></li>
					<li><?php echo $this->Html->link(__("Complete Projects",true),array('action'=>'complete'));?>:<span class="number-count"><?php echo count($completeProjects); ?></span></li>
					<li><?php echo $this->Html->link(__("In-house Projects",true),array('action'=>'inhouse'));?>:<span class="number-count"><?php echo count($inhouseProjects); ?></span></li>
					<li><?php echo $this->Html->link(__("Offshore Projects",true),array('action'=>'offshore'));?>:<span class="number-count"><?php echo count($offshoreProjects); ?></span></li>
					<li><?php echo $this->Html->link(__("Total Progress",true),'#');?>:<span class="number-count"><?php echo $this->Number->toPercentage($percentageComplete); ?></span></li>
					<li>Incomplete Units:<span class="number-count"><?php echo $incompleteUnits; ?></span></li>
					<li><a href='/upcoming_projects'>
					<?php 
						$totalCount = $this->requestAction('/upcoming_projects/latest'); 
						if($totalCount > 0){
							echo "<span class='grn'>Upcoming Projects:</span>
			<span class='grn' style='font-weight:400 !important;'>$totalCount</span>";
						}else{
							echo "Upcoming Projects: ".$totalCount;
						}
					?></a></li>
				</ul>
			</div>
		</section>
		
		<section class="section">
			<p class="title"><?php echo $this->Html->link('Projects by Type','#type'); ?></p>
			<div class="content">
				<ul>
					<li>Standard Media Projects:<span class="number-count"><?php echo count($standardMedia); ?></span></li>
					<li>Rich Media Projects:<span class="number-count"><?php echo count($richMedia); ?></span></li>
					<li>Social Media Projects:<span class="number-count">0</span></li>
					<li>Project Updates:<span class="number-count">0</span></li>
					<li>Other Projects:<span class="number-count">0</span></li>
				</ul>
			</div>
		</section>
		
		<section class="section">
			<p class="title"><?php echo $this->Html->link('In-House vs Offshore','#invout'); ?></p>
			<div class="content">
				<ul class="side-nav">
					<li><?php echo $this->Html->link("In-house Incomplete Projects",array('controller'=>'projects','action'=>'inhouse','incomplete')); ?>:<span class="number-count"><?php echo count($incompleteInhouseProjects); ?></span></li>
					<li><?php echo $this->Html->link("In-house Completed Projects",array('controller'=>'projects','action'=>'inhouse','complete')); ?>:<span class="number-count"><?php echo count($completeInhouseProjects); ?></span></li>
					<li class="divider"></li>
					<li><?php echo $this->Html->link("Offshore Incomplete Projects",array('controller'=>'projects','action'=>'offshore','incomplete')); ?>:<span class="number-count"><?php echo count($incompleteOffshoreProjects); ?></span></li>
					<li><?php echo $this->Html->link("Offshore Completed Projects",array('controller'=>'projects','action'=>'offshore','complete')); ?>:<span class="number-count"><?php echo count($completeOffshoreProjects); ?></span></li>
				</ul>
			</div>
		</section>
		
		<section class="section">
			<p class="title"><?php echo $this->Html->link('Projects by Priority','#priority'); ?></p>
			<div class="content">
				<ul class="side-nav">
					<li><?php echo $this->Html->link("Low Priority Projects",array('controller'=>'projects','action'=>'priority','low')); ?>:<span class="number-count"><?php echo count($lowPriorityProjects); ?></span></li>
					<li><?php echo $this->Html->link("Medium Priority Projects",array('controller'=>'projects','action'=>'priority','medium')); ?>:<span class="number-count"><?php echo count($mediumPriorityProjects); ?></span></li>
					<li><?php echo $this->Html->link("High Priority Projects",array('controller'=>'projects','action'=>'priority','high')); ?>:<span class="number-count"><?php echo count($highPriorityProjects); ?></span></li>
					<li><?php echo $this->Html->link("Critical Priority Projects",array('controller'=>'projects','action'=>'priority','critical')); ?>:<span class="number-count grn"><strong><?php echo count($criticalPriorityProjects); ?></strong></span></li>
					<li>Projects On-Hold:<span class="number-count">0</span></li>
				</ul>
			</div>
		</section>
		
	</div>
</div>
<hr>
<table cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th style="display:none"><?php echo $this->Paginator->sort('id');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('client_id');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('type');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('name');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('description');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('URL');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('number');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('total_units');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('offshore');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('started');?></th>
			<th valign="bottom" nowrap><?php echo $this->Paginator->sort('on_hold');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('complete');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('in_qa');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('progress');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('start');?></th>
			<th valign="bottom" nowrap><?php echo $this->Paginator->sort('priority');?></th>
			<th valign="bottom"><?php echo $this->Paginator->sort('due');?></th>
			<th valign="bottom"><?php __('Production Manager(s)');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('created');?></th>
			<th style="display:none"><?php echo $this->Paginator->sort('modified');?></th>
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<th valign="bottom" class="actions"><?php // __('Actions');?></th>
			<?php endif; ?>
		</tr>
	</thead>
	<tbody>
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
			<?php 
			if($project['Project']['on_hold'] == 1){
				$holdVal = "<i class='icon-ok'></i>"; 
				$holdClass = ' class="on-hold"';
				$holdClassCla = 'on-hold';
			}else{
				$holdVal = "<i class='icon-remove'></i>"; 
				$holdClass = '';
				$holdClassCla = '';
			}
			?>
			<?php
			if($project['Project']['complete'] != 1){
				switch($project['Project']['priority']){
					case 1:
						$class = ' class="low-priority-row"';
						$classCla = 'low-priority-row';
						break;
					case 2:
						$class = ' class="medium-priority-row"';
						$classCla = 'medium-priority-row';
						break;
					case 3:
						$class = ' class="high-priority-row"';
						$classCla = 'high-priority-row';
						break;
					case 4:
						$class = ' class="critical-priority-row"';
						$classCla = 'critical-priority-row';
						break;
				}
			}
		?>
		<tr class="<?php echo $classCla; ?> <?php echo $holdClassCla; ?>">
			<td style="display:none"><?php echo $project['Project']['id']; ?>&nbsp;</td>
			<td width="15%" class="cli"><?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?></td>
			<td><?php echo $project['Project']['type']; ?>&nbsp;</td>

			<td width="40%">
			<?php //echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id']),array('title'=>$project['Project']['description'])); ?>
			<?php //   ^ Replaced with v   ?>

			<span class="trunc3"><?php echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id']));?></span> 
      
			&nbsp;</td>
			<td style="display:none"><?php //echo $project['Project']['description']; ?>&nbsp;</td>
			<td width="20%">
			<?php 
					//Clean up the Jira link
					//Remove the 'https://razorfish.jira.com/browse/' and replace with just the task URL
					$cleanURL = str_replace("https://razorfish.jira.com/browse/","",$project['Project']['url']);
		
					if($project['Project']['url']){
						echo $this->Html->link($cleanURL,$project['Project']['url'],array('target'=>'_blank'));
					} 
					?>&nbsp;</td>
			<td width="5%" title="Total units" style="display:none"><?php 
					echo $project['Project']['total_units'];
					?>&nbsp;</td>
			<td><?php if($project['Project']['number']) echo $this->Html->link(__($project['Project']['number'], true), array('action' => 'view', $project['Project']['id'])); ?>&nbsp;</td>
			<td><?php 
					if($project['Project']['offshore'] == 1){
						$offshoreVal = "<i class='icon-ok'></i>"; 
					}else{
						$offshoreVal = "<i class='icon-remove'></i>"; 
					}
					echo $this->Js->link($offshoreVal,'/projects/ajax_toggle_offshore/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_offshore','success'=>'toggleOffshore(data);','escape'=>false,'title'=>"Offshore"));
				?>&nbsp;</td>
			<td><?php 
					if($project['Project']['started'] == 1){
						$startedVal = "<i class='icon-ok'></i>"; 
					}else{
						$startedVal = "<i class='icon-remove'></i>"; 
					}
					echo $this->Js->link($startedVal,'/projects/ajax_toggle_started/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_started','success'=>'toggleStarted(data);','escape'=>false,'title'=>"Started"));
				?>&nbsp;</td>
			<td<?php echo $holdClass; ?>>
			<?php 
					echo $this->Js->link($holdVal,'/projects/ajax_toggle_hold/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_hold','success'=>'toggleHold(data);','escape'=>false,'title'=>"On hold"));
				?>&nbsp;</td>
			<td><?php 
					if($project['Project']['complete'] == 1){
						$completeVal = "<i class='icon-ok'></i>"; 
					}else{
						$completeVal = "<i class='icon-remove'></i>"; 
					}
					echo $this->Js->link($completeVal,'/projects/ajax_toggle_complete/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_complete','success'=>'toggleComplete(data);','escape'=>false,'title'=>"Complete"));
				?>&nbsp;</td>
			<?php
				if($project['Project']['in_qa'] == 1){
					$qaVal = "<i class='icon-ok'></i>";
					$QAClass = ' class="in-qa"';
				}else{
					$qaVal = "<i class='icon-remove'></i>"; 
					$QAClass = '';
				}
				?>
			<td style="display:none"<?php echo $QAClass; ?>>
			<?php 
					echo $this->Js->link($qaVal,'/projects/ajax_toggle_qa/'.$project['Project']['id'],array('id'=>$project['Project']['id'].'_qa','success'=>'toggleQA(data);','escape'=>false,'title'=>"In QA"));
				?>&nbsp;</td>
			<!--<td title="Progress">
			<?php //echo $project['Project']['progress']."%";?>&nbsp;</td>-->
			<!--<td><?php //echo $this->Time->relativeTime($project['Project']['start']); ?>&nbsp;</td>-->
			<td class="stat">
			<?php 
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
			<td title="Due date">
			<?php echo $this->Time->relativeTime($project['Project']['due']); ?>&nbsp;</td>
			<!--<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['created']); ?>&nbsp;</td>
			<td style="display:none"><?php echo $this->Time->relativeTime($project['Project']['modified']); ?>&nbsp;</td>-->
			<td width="10%" class="prod">
			<?php 
					$counter = count($project['ProductionManager']);
					foreach($project['ProductionManager'] as $pm){
						echo $this->Html->link($pm['fullname'],array('controller'=>'projects','action'=>'bypm',$pm['slug'])); 
						if($counter > 1) {
							echo ", ";
							$counter--;
						}
					}
					?>&nbsp;</td>
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<td class="actions" class="prod">
			<?php //echo $this->Html->link(__('View', true), array('action' => 'view', $project['Project']['id'])); ?>
			<?php echo $this->Html->link(__('Duplicate', true), array('action' => 'duplicate', $project['Project']['id']),array('class'=>'small button')); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $project['Project']['id']),array('class'=>'small button')); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $project['Project']['id']), array('class'=>'small alert button'), sprintf(__('Are you sure you want to delete the project named %s?', true), $project['Project']['title'])); ?></td>
			<?php endif; ?>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>

<div class="row">
	<p><?php
		echo $this->Paginator->counter(array(
		'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
		));
		?></p>
	<div class="pagination">
	<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?> | <?php echo $this->Paginator->numbers();?> | <?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
	</div><!-- end of paging -->
</div>
<hr>
<div class="row actions">
	<ul class="inline-list">
		<li><?php echo $this->Html->link('RSS Feed', '/projects/rss',array('class'=>'small button')); ?></li>
		<li><?php echo $this->Html->link(__('New Project', true), array('action' => 'add'),array('class'=>'small button')); ?></li>
	</ul>
</div><!-- end of actions -->
<script type="text/javascript">
$(document).foundation(
	'section', 
	{ deep_linking: true }, 
	function (response) {
		console.log(response.errors);
	}
);
</script>