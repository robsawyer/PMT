<div class="nav-main">
	<ul  id="nav-one" class="nav">
		<li><?php echo $html->link('home',array('controller'=>'/'), array('class'=>'closer'));?></li>
		<li><?php echo $html->link('projects',array('controller'=>'projects','action'=>'index'), array('class'=>'closer'));?></li>
		<li class='nav-browsedrop-link-1'><?php echo $html->link('+ add something','#',array('id'=>'nav-browsedrop-1-link','class'=>'nav-browsedrop-lz'));?>
				<ul id='nav-browsedrop-1' class="nav-browsedrop" style='display:none' index='100'>
					<li><?php echo $html->link('add a project',array('controller'=>'projects','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a developer',array('controller'=>'developers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a producer',array('controller'=>'producers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a client',array('controller'=>'clients','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a project manager',array('controller'=>'project_managers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a offshore project manager',array('controller'=>'offshore_project_managers','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('add a qa resource',array('controller'=>'qa_resources','action'=>'add'), array('class'=>'nav-browsedrop-indy'));?></li>
				</ul>
		</li>
		<li class='nav-browsedrop-link-2'><?php echo $html->link('+ list items','#',array('id'=>'nav-browsedrop-2-link','class'=>'nav-browsedrop-lz'));?>
				<ul id='nav-browsedrop-2' class="nav-browsedrop" style='display:none' index='100'>
					<li><?php echo $html->link('clients',array('controller'=>'clients','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('developers',array('controller'=>'developers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('offshore project managers',array('controller'=>'offshore_project_managers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('producers',array('controller'=>'producers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('project managers',array('controller'=>'project_managers','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('qa resources',array('controller'=>'qa_resources','action'=>'index'), array('class'=>'nav-browsedrop-indy'));?></li>
				</ul>
		</li>
		<li class='nav-browsedrop-link-3'><?php echo $html->link('+ reports','#',array('id'=>'nav-browsedrop-3-link','class'=>'nav-browsedrop-lz'));?>
				<ul id='nav-browsedrop-3' class="nav-browsedrop" style='display:none' index='100'>
					<li><?php echo $html->link('full report',array('controller'=>'projects','action'=>'full_report'), array('class'=>'nav-browsedrop-indy'));?></li>
					<li><?php echo $html->link('offshore report',array('controller'=>'projects','action'=>'offshore_report'), array('class'=>'nav-browsedrop-indy'));?></li>
				</ul>
		</li>
		<li><?php echo $html->link('calendar',array('controller'=>'projects','action'=>'calendar'));?></li>
		<li><?php echo $html->link('search',array('controller'=>'projects','action'=>'find'), array('class'=>'closer'));?></li>
	</ul>
</div>

<div class='clear'></div>