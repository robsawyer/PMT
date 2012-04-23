<div class="clients form">
<?php echo $this->Form->create('Client');?>
	<fieldset>
 		<legend><?php __('Add A New Client'); ?></legend>
	<?php
		echo $this->Form->input('name');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		
		<li><?php echo $this->Html->link(__('List Clients', true), array('action' => 'index'));?></li>
	</ul>
</div>