<h3><?php __('Welcome to the Production Manager Tool!') ?></h3>
<p>
	<div class="actions">
		<h3><?php __('View Items'); ?></h3>
		<ul>
			<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects','action' => 'index')); ?> </li>
			<li><?php echo $this->Html->link(__('List Developers', true), array('controller' => 'developers', 'action' => 'index')); ?> </li>
			<li><?php echo $this->Html->link(__('List Producers', true), array('controller' => 'producers', 'action' => 'index')); ?> </li>
		</ul>
		<h3><?php __('Add Items'); ?></h3>
		<ul>
			<li><?php echo $this->Html->link(__('Add A Project', true), array('controller' => 'projects','action' => 'add')); ?> </li>
			<br/>
			<li><?php echo $this->Html->link(__('Add A Developer', true), array('controller' => 'developers', 'action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('Add A Producer', true), array('controller' => 'producers', 'action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('Add A Project Manager', true), array('controller' => 'project_managers', 'action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('Add A Offshore Project Manager', true), array('controller' => 'offshore_project_managers', 'action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('Add A Client', true), array('controller' => 'clients', 'action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('Add A QA Resource', true), array('controller' => 'qa_resources', 'action' => 'add')); ?> </li>
		</ul>
	</div>
</p>