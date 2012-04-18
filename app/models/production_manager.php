<?php
class ProductionManager extends AppModel {
	var $name = 'ProductionManager';
	var $displayField = 'fullname';
	
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $validate = array(
		'fullname' => array(
							'rule' => 'isUnique',
							'message' => 'This produciton manager is already in the database.'
							) 
	);
	
	var $hasAndBelongsToMany = array(
		'Project' => array(
			'className' => 'Project',
			'joinTable' => 'production_managers_projects',
			'foreignKey' => 'production_manager_id',
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