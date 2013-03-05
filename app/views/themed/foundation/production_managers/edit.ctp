<div class="productionManagers form">
<?php echo $this->Form->create('ProductionManager');?>
	<fieldset>
 		<legend><?php __('Editing '.$this->data['ProductionManager']['fullname'].'\'s Profile'); ?></legend>
	<?php
		echo $this->Form->input('id');
		$options = array(
			'CWK' => 'Contractor (CWK)', 
			'FTE' => 'Employee (FTE)'
		);
		echo '<div class="side-by-side clearfix"><div>';
		echo $this->Form->input('type', array(
											'type' =>'select', 
											'options' => $options,
											'empty' => 'Please Select',
											'style'=>'width:300px',
											'class'=>'chzn-select'
											));
		echo '</div></div>';
		echo $this->Form->input('fullname',array('label'=>'Full Name'));
		echo $this->Form->input('email');
		echo $this->Form->input('phone_number');
		echo $this->Form->input('location',array('after'=>'<div class="subtext">Example: Portland, OR.</div>'));
		echo $this->Form->input('offshore');
		//echo $this->Form->input('Project');

	?>
	<?php
	if($admin && $this->data['ProductionManager']['id'] != $userAccount['User']['production_manager_id']):
		if(!empty($userAccount)):
	?>
		<p>If you'd like to update the account password, click <?php echo $this->Html->link('here',array('controller'=>'users','action'=>'account',$userAccount['User']['id'])); ?>.</p>
	<?php
		else:
	?>
		<p style="color:red">This user does not have a user account setup.</p>
	<?php
		endif;
	else:
	?>
		<p>If you'd like to update your password, click <?php echo $this->Html->link('here',array('controller'=>'users','action'=>'account')); ?>.</p>
	<?php
	endif;
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions" style="display: none">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('ProductionManager.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('ProductionManager.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Production Managers', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Projects', true), array('controller' => 'projects', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Project', true), array('controller' => 'projects', 'action' => 'add')); ?> </li>
	</ul>
</div>
<script type="text/javascript"> $(".chzn-select").chosen(); </script>
