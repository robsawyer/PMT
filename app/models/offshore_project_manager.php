<?php
class OffshoreProjectManager extends AppModel {
	var $name = 'OffshoreProjectManager';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	var $validate = array(
		'name' => array(
							'rule' => 'isUnique',
							'message' => 'This project manager is already in the database.'
							) 
	);
	
	var $hasAndBelongsToMany = array(
		'Project' => array(
			'className' => 'Project',
			'joinTable' => 'offshore_project_managers_projects',
			'foreignKey' => 'offshore_project_manager_id',
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