<div class="nav-main">
<ul  id="nav-one" class="nav">
<!--<li><?php echo $html->link('home',array('admin'=>false,'graph'=>false,'controller'=>'/'), array('class'=>'closer'));?></li>-->

<li><?php echo $html->link('projects',array('admin'=>false,'graph'=>false,'controller'=>'projects','action'=>'index'), array('class'=>'closer grn'));?></li>
<?php if($userRole == "admin" || $userRole == "manager"): ?>
<li class='nav-browsedrop-link-1'>
<?php echo $html->link('add something','#',array('id'=>'nav-browsedrop-1-link','class'=>'nav-browsedrop-lz'));?>
<ul id='nav-browsedrop-1' class="nav-browsedrop" style='display:none' index='100'>
<li><?php echo $html->link('project',array('admin'=>false,'graph'=>false,'controller'=>'projects','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('developer',array('admin'=>false,'graph'=>false,'controller'=>'developers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('production manager',array('admin'=>false,'graph'=>false,'controller'=>'production_managers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('client',array('admin'=>false,'graph'=>false,'controller'=>'clients','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('project manager',array('admin'=>false,'graph'=>false,'controller'=>'project_managers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('offshore project manager',array('admin'=>false,'graph'=>false,'controller'=>'offshore_project_managers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('qa resource',array('admin'=>false,'graph'=>false,'controller'=>'qa_resources','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
</ul>
</li>
<?php endif; ?>

<li class='nav-browsedrop-link-2'>
<?php echo $html->link('list items','#',array('id'=>'nav-browsedrop-2-link','class'=>'nav-browsedrop-lz'));?>
<?php 
	//Applies when the other items don't show and makes the sub-menu align properly.
	if($userRole == "admin" || $userRole == "manager"): 
?>
<ul id='nav-browsedrop-2' class="nav-browsedrop" style='display:none' index='100'>
<?php 
	else: 
?>
<ul id='nav-browsedrop-2' class="nav-browsedrop" style='display:none; margin-left: -103px;' index='100'>
<?php endif; ?>
<li><?php echo $html->link('clients',array('admin'=>false,'graph'=>false,'controller'=>'clients','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('production managers',array('admin'=>false,'graph'=>false,'controller'=>'production_managers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('project managers',array('admin'=>false,'graph'=>false,'controller'=>'project_managers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('offshore project managers',array('admin'=>false,'graph'=>false,'controller'=>'offshore_project_managers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('developers',array('admin'=>false,'graph'=>false,'controller'=>'developers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('QA resources',array('admin'=>false,'graph'=>false,'controller'=>'qa_resources','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
</ul>
</li>

<?php if($userRole == "admin" || $userRole == "manager"): ?>
<li class='nav-browsedrop-link-3'>
<?php echo $html->link('reports','#',array('id'=>'nav-browsedrop-3-link','class'=>'nav-browsedrop-lz'));?>
<ul id='nav-browsedrop-3' class="nav-browsedrop" style='display:none' index='100'>
<li><?php echo $html->link('full report',array('admin'=>false,'graph'=>false,'controller'=>'projects','action'=>'full_report'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('offshore report',array('controller'=>'projects','action'=>'offshore_report'), array('class'=>'nav-browsedrop-indy'));?></li>
<li><?php echo $html->link('dev status',array('admin'=>false,'graph'=>false,'controller'=>'developers','action'=>'status'));?></li>
<li><?php echo $html->link('calendar',array('admin'=>false,'graph'=>false,'controller'=>'projects','action'=>'calendar'));?></li>
</ul>
</li>
<?php endif; ?>
<li><?php echo $html->link('upcoming',array('admin'=>false,'graph'=>false,'controller'=>'upcoming_projects','action'=>'index'));?></li>
<li><?php echo $html->link('search',array('admin'=>false,'graph'=>false,'controller'=>'projects','action'=>'find'), array('class'=>'closer'));?></li>
</ul>
</div>
<div class='clear'>
</div>