<nav class="top-bar">
	<ul class="title-area">
		<!-- Title Area -->
		<li class="name">
			<h1><?php echo $this->Html->link('Production Manager Tool',array('controller'=>'projects','action'=>'index')); ?></h1>
			<!--<div id="small-6 columns">
			<?php /*echo $this->Html->image("sa/razorfish.png", array(
								"alt" => "Razorfish",
								'class'=>"logo",
							    'url' => array('controller' => '/')
							));*/ ?>
			</div>-->
		</li>
		<!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
		<li class="toggle-topbar menu-icon"><span><?php echo $this->Html->link('Menu',array('controller'=>'projects','action'=>'index')); ?></span></li>
	</ul>
	<section class="top-bar-section">
		<!-- Left Nav Section -->
		<ul class="left">
			<li class="divider"></li>
			<li><?php echo $this->Html->link('Projects',array('controller'=>'projects','action'=>'index'), array('class'=>'closer grn'));?></li>
			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<li class='has-dropdown'>
				<?php echo $this->Html->link('<i class="icon-plus"></i>Add','#',array('escape'=>false));?>
				<ul id='nav-browsedrop-1' class="dropdown" index='100'>
					<li><?php echo $this->Html->link('Project',array('controller'=>'projects','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('Developer',array('controller'=>'developers','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('Production Manager',array('controller'=>'production_managers','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('Client',array('controller'=>'clients','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('Project Manager',array('controller'=>'project_managers','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('Offshore Project Manager',array('controller'=>'offshore_project_managers','action'=>'add'));?></li>
					<li><?php echo $this->Html->link('QA Resource',array('controller'=>'qa_resources','action'=>'add'));?></li>
				</ul>
			</li>
			<?php endif; ?>

			<li class='has-dropdown'>
				<?php echo $this->Html->link('<i class="icon-group"></i>Browse','#',array('escape'=>false));?>
				<ul id='nav-browsedrop-2' class="dropdown" index='100'>
					<li><?php echo $this->Html->link('Clients',array('controller'=>'clients','action'=>'index'));?></li>
					<li><?php echo $this->Html->link('Production Managers',array('controller'=>'production_managers','action'=>'index'));?></li>
					<li><?php echo $this->Html->link('Project Managers',array('controller'=>'project_managers','action'=>'index'));?></li>
					<li><?php echo $this->Html->link('Offshore Project Managers',array('controller'=>'offshore_project_managers','action'=>'index'));?></li>
					<li><?php echo $this->Html->link('Developers',array('controller'=>'developers','action'=>'index'));?></li>
					<li><?php echo $this->Html->link('QA Resources',array('controller'=>'qa_resources','action'=>'index'));?></li>
				</ul>
			</li>

			<?php if($userRole == "admin" || $userRole == "manager"): ?>
			<li class='has-dropdown'>
				<?php echo $this->Html->link('<i class="icon-file-alt"></i>Reports','#',array('escape'=>false));?>
				<ul id='nav-browsedrop-3' class="dropdown" index='100'>
				<li><?php echo $this->Html->link('Full Report',array('controller'=>'projects','action'=>'full_report'));?></li>
				<li><?php echo $this->Html->link('Offshore Report',array('controller'=>'projects','action'=>'offshore_report'));?></li>
				<li><?php echo $this->Html->link('Dev Status',array('controller'=>'developers','action'=>'status'));?></li>
				<li><?php echo $this->Html->link('Calendar',array('controller'=>'projects','action'=>'calendar'));?></li>
				</ul>
			</li>
			<?php endif; ?>
			<li class="divider"></li>
			<li><?php echo $this->Html->link('Upcoming',array('controller'=>'upcoming_projects','action'=>'index'));?></li>
			<li><?php echo $this->Html->link('Search',array('controller'=>'projects','action'=>'find'), array('class'=>'closer'));?></li>
		</ul>
	</section>
</nav>