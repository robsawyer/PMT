<?php
class Developer extends AppModel {
	var $name = 'Developer';
	var $displayField = 'fullname';
	
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	var $validate = array(
		'fullname' => array(
							'rule' => 'isUnique',
							'message' => 'This developer is already in the database.'
							) 
	);
	
	var $virtualFields = array(
		//'total_projects' => 'SELECT COUNT(*) FROM developers_projects as Project WHERE Project.developer_id = Developer.id',
		//'total_working_projects' => 'Developer.id - Developer.id' //This is temporary
		//'incomplete_projects' => 'SELECT COUNT(*) FROM projects INNER JOIN (developers_projects INNER JOIN projects ON developers_projects.project_id = projects.id AND projects.complete = 0) ON developers_projects.developer_id = Developer.id'
		);
	
	
	var $hasAndBelongsToMany = array(
		'Project' => array(
			'className' => 'Project',
			'joinTable' => 'developers_projects',
			'foreignKey' => 'developer_id',
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