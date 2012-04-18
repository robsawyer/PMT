<?php
class QaResource extends AppModel {
	var $name = 'QaResource';
	var $displayField = 'fullname';
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	var $validate = array(
		'fullname' => array(
							'rule' => 'isUnique',
							'message' => 'This QA resource is already in the database.'
							) 
	);
	
	var $hasAndBelongsToMany = array(
		'Project' => array(
			'className' => 'Project',
			'joinTable' => 'qa_resources_projects',
			'foreignKey' => 'qa_resource_id',
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