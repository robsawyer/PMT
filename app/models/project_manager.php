<?php
class ProjectManager extends AppModel {
	var $name = 'ProjectManager';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	var $validate = array(
		'name' => array(
							'rule' => 'isUnique',
							'message' => 'This project manager is already in the database.'
							) 
	);
	
	var $hasOne = array(
						'User'=>array(
							'className' => 'User',
							'foreignKey' => 'project_manager_id',
							'dependent'    => false
						)
					); 
	
	var $hasAndBelongsToMany = array(
		'Project' => array(
			'className' => 'Project',
			'joinTable' => 'project_managers_projects',
			'foreignKey' => 'project_manager_id',
			'associationForeignKey' => 'project_id',
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

}
?>