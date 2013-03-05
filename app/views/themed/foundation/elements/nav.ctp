<nav class="top-bar">
	<ul class="title-area">
		<!-- Title Area -->
		<li class="name">
			<h1><?php echo $this->Html->link('Production Manager Tool',array('controller'=>'projects','action'=>'index')); ?></h1>
		</li>
		<!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
		<li class="toggle-topbar menu-icon"><span><?php echo $this->Html->link('Menu',array('controller'=>'projects','action'=>'index')); ?></span></li>
	</ul>
	<section class="top-bar-section">
		<!-- Left Nav Section -->
		<ul class="left">
			<li class="divider"></li>
			<li><?php echo $html->link('projects',array('controller'=>'projects','action'=>'index'), array('class'=>'closer grn'));?></li>
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<li class='has-dropdown'>
				<?php echo $html->link('add something','#');?>
				<ul id='nav-browsedrop-1' class="dropdown" index='100'>
					<li><?php echo $html->link('project',array('controller'=>'projects','action'=>'add'));?></li>
					<li><?php echo $html->link('developer',array('controller'=>'developers','action'=>'add'));?></li>
					<li><?php echo $html->link('production manager',array('controller'=>'production_managers','action'=>'add'));?></li>
					<li><?php echo $html->link('client',array('controller'=>'clients','action'=>'add'));?></li>
					<li><?php echo $html->link('project manager',array('controller'=>'project_managers','action'=>'add'));?></li>
					<li><?php echo $html->link('offshore project manager',array('controller'=>'offshore_project_managers','action'=>'add'));?></li>
					<li><?php echo $html->link('qa resource',array('controller'=>'qa_resources','action'=>'add'));?></li>
				</ul>
			</li>
			<?php endif; ?>

			<li class='has-dropdown'>
				<?php echo $html->link('list items','#');?>
				<ul id='nav-browsedrop-2' class="dropdown" index='100'>
					<li><?php echo $html->link('clients',array('controller'=>'clients','action'=>'index'));?></li>
					<li><?php echo $html->link('production managers',array('controller'=>'production_managers','action'=>'index'));?></li>
					<li><?php echo $html->link('project managers',array('controller'=>'project_managers','action'=>'index'));?></li>
					<li><?php echo $html->link('offshore project managers',array('controller'=>'offshore_project_managers','action'=>'index'));?></li>
					<li><?php echo $html->link('developers',array('controller'=>'developers','action'=>'index'));?></li>
					<li><?php echo $html->link('QA resources',array('controller'=>'qa_resources','action'=>'index'));?></li>
				</ul>
			</li>

			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<li class='has-dropdown'>
				<?php echo $html->link('reports','#');?>
				<ul id='nav-browsedrop-3' class="dropdown" index='100'>
				<li><?php echo $html->link('full report',array('controller'=>'projects','action'=>'full_report'));?></li>
				<li><?php echo $html->link('offshore report',array('controller'=>'projects','action'=>'offshore_report'));?></li>
				<li><?php echo $html->link('dev status',array('controller'=>'developers','action'=>'status'));?></li>
				<li><?php echo $html->link('calendar',array('controller'=>'projects','action'=>'calendar'));?></li>
				</ul>
			</li>
			<?php endif; ?>
			<li class="divider"></li>
			<li><?php echo $html->link('upcoming',array('controller'=>'upcoming_projects','action'=>'index'));?></li>
			<li><?php echo $html->link('search',array('controller'=>'projects','action'=>'find'), array('class'=>'closer'));?></li>
		</ul>
	</section>
</nav>