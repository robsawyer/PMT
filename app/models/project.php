<?php
class Project extends AppModel {
	var $name = 'Project';
	var $displayField = 'title';
	var $actsAs = array('Containable','Search.Searchable');
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	
	var $filterArgs = array(
				array('name' => 'number', 'type' => 'like'),
				array('name' => 'title', 'type' => 'like'),
				array('name' => 'description', 'type' => 'like'),
				//array('name' => 'search', 'type' => 'like', 'field' => 'Project.description'),
				array('name' => 'priority', 'type' => 'value'),
				array('name' => 'complete', 'type' => 'value'),
				array('name' => 'offshore', 'type' => 'value')
				/*
				array('name' => 'range_start', 'type' => 'expression', 'method' => 'makeRangeStartCondition', 'field' => 'Project.start BETWEEN ? AND ?'),
				array('name' => 'range_due', 'type' => 'expression', 'method' => 'makeRangeDueCondition', 'field' => 'Project.due BETWEEN ? AND ?')*/
			);
				
	var $belongsTo = array(
		'Client' => array(
			'className' => 'Client',
			'foreignKey' => 'client_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'User' => array(
			'className' => 'User',
			'foreignKey' => 'user_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	var $hasAndBelongsToMany = array(
		'Developer' => array(
			'className' => 'Developer',
			'joinTable' => 'developers_projects',
			'foreignKey' => 'project_id',
			'associationForeignKey' => 'developer_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'OffshoreProjectManager' => array(
			'className' => 'OffshoreProjectManager',
			'joinTable' => 'offshore_project_managers_projects',
			'foreignKey' => 'project_id',
			'associationForeignKey' => 'offshore_project_manager_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'ProductionManager' => array(
			'className' => 'ProductionManager',
			'joinTable' => 'production_managers_projects',
			'foreignKey' => 'project_id',
			'associationForeignKey' => 'production_manager_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'ProjectManager' => array(
			'className' => 'ProjectManager',
			'joinTable' => 'project_managers_projects',
			'foreignKey' => 'project_id',
			'associationForeignKey' => 'project_manager_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'QaResource' => array(
			'className' => 'QaResource',
			'joinTable' => 'qa_resources_projects',
			'foreignKey' => 'project_id',
			'associationForeignKey' => 'qa_resource_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		)
	);
	
	
	/**
	 * Toggles whether or not the project is on hold
	 * @param int id The project id
	 * @return string isOnHold The new hold val
	 * 
	*/
	function toggleHold($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['Project']['on_hold'] == 1){
				$this->id = $id;
				$this->saveField('on_hold',0);
				return 'no';
			}else{
				$this->id = $id;
				$this->saveField('on_hold',1);
				return 'yes';
			}
		}
	}
	
	/**
	 * Toggles whether or not the project is in QA
	 * @param int id The project id
	 * @return string isOnHold The new QA val
	 * 
	*/
	function toggleQA($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['Project']['in_qa'] == 1){
				$this->id = $id;
				$this->saveField('in_qa',0);
				return 'no';
			}else{
				$this->id = $id;
				$this->saveField('in_qa',1);
				return 'yes';
			}
		}
	}
	
	/**
	 * Toggles whether or not the project is complete
	 * @param int id The project id
	 * @return string isOnHold The new val
	 * 
	*/
	function toggleComplete($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['Project']['complete'] == 1){
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
	
	/**
	 * Toggles whether or not the project has started
	 * @param int id The project id
	 * @return string isOnHold The new val
	 * 
	*/
	function toggleStarted($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['Project']['started'] == 1){
				$this->id = $id;
				$this->saveField('started',0);
				return 'no';
			}else{
				$this->id = $id;
				$this->saveField('started',1);
				return 'yes';
			}
		}
	}
	
	/**
	 * Toggles whether or not the project is offshore
	 * @param int id The project id
	 * @return string isOnHold The new val
	 * 
	*/
	function toggleOffshore($id=null){
		$project = $this->read(null,$id);
		if(!empty($project)){
			if($project['Project']['offshore'] == 1){
				$this->id = $id;
				$this->saveField('offshore',0);
				return 'no';
			}else{
				$this->id = $id;
				$this->saveField('offshore',1);
				return 'yes';
			}
		}
	}

}
?>