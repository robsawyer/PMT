<?php
class UpcomingProject extends AppModel {
	var $name = 'UpcomingProject';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'ProductionManager' => array(
			'className' => 'ProductionManager',
			'foreignKey' => 'production_manager_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
		/*'Project' => array(
			'className' => 'Project',
			'foreignKey' => 'project_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)*/
	);
	
	/**
	 * Toggles whether or not the project is complete
	 * @param int id The project id
	 * @return string isOnHold The new complete val
	 * 
	*/
	function toggleComplete($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['UpcomingProject']['complete'] == 1){
				$this->id = $id;
				$this->saveField('complete',0);
				return 'no';
			}else{
				$this->id = $id;
				$this->saveField('complete',1);
				return 'yes';
			}
		}
	}
}
