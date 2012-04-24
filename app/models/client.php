<?php
class Client extends AppModel {
	var $name = 'Client';
	var $displayField = 'name';
	//The Associations below have been created with all possible keys, those that are not needed can be removed
	var $validate = array(
		'name' => array(
							'rule' => 'isUnique',
							'message' => 'This client is already in the database.'
							) 
	);
	
	var $hasMany = array(
		'Project' => array(
			'className' => 'Project',
			'foreignKey' => 'client_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);

}
?>