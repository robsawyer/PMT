<?php echo $this->Html->meta('RSS Feed', '/projects/rss'); ?>
<div class="row">
	<div class="section-container accordion" data-section="accordion">

		<section>
			<p class="title" data-section-title><?php echo $this->Html->link('All Projects','#all'); ?></p>
			<div class="content" data-slug="all" data-section-content>
				<ul class="inline-list">
					<li>
						<span class="label">Total Projects:</span> <?php echo count($projects) + count($completeProjects); ?>
					</li>
					<li>
						<span class="label">Incomplete Projects:</span> <?php echo $this->Html->link(count($incompleteProjects),array('action'=>'incomplete'));?>
					</li>
					<li>
						<span class="label">Complete Projects:</span> <?php echo $this->Html->link(count($completeProjects),array('action'=>'complete'));?>
					</li>
					<li>
						<span class="label">In-house Projects:</span> <?php echo $this->Html->link(count($inhouseProjects),array('action'=>'inhouse'));?>
					</li>
				</ul>
				<ul class="inline-list">						
					<li>
						<span class="label">Offshore Projects:</span> <?php echo $this->Html->link(count($offshoreProjects),array('action'=>'offshore'));?>
					</li>
					<li>
						<span class="label">Total Progress:</span> <?php echo $this->Html->link($this->Number->toPercentage($percentageComplete),'#');?>
					</li>
					<li>
						<span class="label">Incomplete Units:</span> <?php echo $incompleteUnits; ?>
					</li>
					<li>
						<?php 
						$totalCount = $this->requestAction('/upcoming_projects/latest'); 
						if($totalCount > 0):
						?>
							<span class="label">Upcoming Projects:</span> <a href='/upcoming_projects'>$totalCount</a>
						<?php else: ?>
							<span class="label">Upcoming Projects:</span> <a href='/upcoming_projects'><?php echo $totalCount; ?></a>
						<?php endif; ?>
					</li>
				</ul>
			</div>
		</section>
		
		<section>
			<p class="title" data-section-title><?php echo $this->Html->link('Projects by Type','#type'); ?></p>
			<div class="content" data-slug="type" data-section-content>
				<ul class="inline-list">
					<li><span class="label">Standard Media Projects:</span> <?php echo count($standardMedia); ?></li>
					<li><span class="label">Rich Media Projects:</span> <?php echo count($richMedia); ?></li>
					<li><span class="label">Social Media Projects:</span> 0</li>
					<li><span class="label">Project Updates:</span> 0</li>
					<li><span class="label">Other Projects:</span> 0</li>
				</ul>
			</div>
		</section>
		
		<section>
			<p class="title" data-section-title><?php echo $this->Html->link('In-House vs Offshore','#invout'); ?></p>
			<div class="content" data-slug="invout" data-section-content>
				<ul class="inline-list">
					<li><span class="label">In-house Incomplete Projects:</span> <?php echo $this->Html->link(count($incompleteInhouseProjects), array('controller'=>'projects','action'=>'inhouse','incomplete')); ?></li>
					<li><span class="label">In-house Completed Projects:</span> <?php echo $this->Html->link(count($completeInhouseProjects), array('controller'=>'projects','action'=>'inhouse','complete')); ?></li>
					<li class="divider"></li>
					<li><span class="label">Offshore Incomplete Projects:</span> <?php echo $this->Html->link(count($incompleteOffshoreProjects), array('controller'=>'projects','action'=>'offshore','incomplete')); ?></li>
					<li><span class="label">Offshore Completed Projects:</span> <?php echo $this->Html->link(count($completeOffshoreProjects), array('controller'=>'projects','action'=>'offshore','complete')); ?></li>
				</ul>
			</div>
		</section>
		
		<section>
			<p class="title" data-section-title><?php echo $this->Html->link('Projects by Priority','#priority'); ?></p>
			<div class="content" data-slug="priority" data-section-content>
				<ul class="inline-list">
					<li><span class="label">Low Priority Projects:</span> <?php echo $this->Html->link(count($lowPriorityProjects),array('controller'=>'projects','action'=>'priority','low')); ?></li>
					<li><span class="label">Medium Priority Projects:</span> <?php echo $this->Html->link(count($mediumPriorityProjects),array('controller'=>'projects','action'=>'priority','medium')); ?></li>
					<li><span class="label">High Priority Projects:</span> <?php echo $this->Html->link(count($highPriorityProjects),array('controller'=>'projects','action'=>'priority','high')); ?></li>
					<li><span class="label">Critical Priority Projects:</span> <?php echo $this->Html->link(count($criticalPriorityProjects),array('controller'=>'projects','action'=>'priority','critical')); ?></li>
					<li><span class="label">Projects On-Hold:</span>0</li>
				</ul>
			</div>
		</section>
		
	</div>
</div>
<div class="row">
	<hr>
	<table class="responsive">
		<thead>
			<tr>
				<th><?php echo $this->Paginator->sort('client_id');?></th>
				<th><?php echo $this->Paginator->sort('type');?></th>
				<th><?php echo $this->Paginator->sort('name');?></th>
				<th><?php echo $this->Paginator->sort('URL');?></th>
				<th><?php echo $this->Paginator->sort('number');?></th>
				<th><?php echo $this->Paginator->sort('offshore');?></th>
				<th><?php echo $this->Paginator->sort('started');?></th>
				<th><?php echo $this->Paginator->sort('on_hold');?></th>
				<th><?php echo $this->Paginator->sort('complete');?></th>
				<th><?php echo $this->Paginator->sort('priority');?></th>
				<th><?php echo $this->Paginator->sort('due');?></th>
				<th><?php __('Production Manager(s)');?></th>
				<?php if($userRole == "admin" || $userRole == "manager"): ?>
				<th class="actions"><?php // __('Actions');?></th>
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
				<td class="cli"><?php echo $this->Html->link($project['Client']['name'], array('controller' => 'clients', 'action' => 'view', $project['Client']['id'])); ?></td>
				<td><?php echo $project['Project']['type']; ?>&nbsp;</td>
				<td><span><?php echo $this->Html->link(__($project['Project']['title'], true), array('action' => 'view', $project['Project']['id']));?></span>&nbsp;</td>
				<td>
				<?php 
				//Clean up the Jira link
				//Remove the 'https://razorfish.jira.com/browse/' and replace with just the task URL
				$cleanURL = str_replace("https://razorfish.jira.com/browse/","",$project['Project']['url']);
				$cleanURL = str_replace("https://razorfish-nw.atlassian.net/browse/","",$project['Project']['url']);
	
				if($project['Project']['url']){
					echo $this->Html->link($cleanURL,$project['Project']['url'],array('target'=>'_blank'));
				} 
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
				<td title="Due date"><?php echo $this->Time->relativeTime($project['Project']['due']); ?>&nbsp;</td>
				<td class="prod">
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
</div>
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