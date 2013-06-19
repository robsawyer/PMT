<?php
class User extends AppModel {
	var $name = 'User';
	var $displayField = 'username';
	
	/**
	* Standard validation behaviour
	*/
	var $validate = array(
		'username' => array(
			'length' => array(
				'rule'		=> array('minLength', 5),
				'message'	=> 'Must be more than 5 characters',
				'required'	=> true
			),
			'alphanum' => array(
				'rule'		=> 'alphanumeric',
				'message'	=> 'May only contain letters and numbers'
			),
			'unique' => array(
				'rule'		=> 'isUnique',
				'message'	=> 'Already taken'
			)
		),
		'email' => array(
			'email' => array(
				'rule'		=> 'email',
				'message'	=> 'Must be a valid email address'
			),
			'unique' => array(
				'rule'		=> 'isUnique',
				'message'	=> 'Already taken'
			)
		),
		'password' => array(
			'empty' => array(
				'rule'		=> 'notEmpty',
				'message'	=> 'Must not be blank',
				'required'	=> true
			)
		),
		'password_confirm' => array(
			'compare'	 => array(
				'rule'		=> array('password_match', 'password', true),
				'message'	=> 'The password you entered does not match',
				'required'	=> true
			),
			'length' => array(
				'rule'		=> array('between', 6, 20),
				'message'	=> 'Use between 6 and 20 characters'
			),
			'empty' => array(
				'rule'		=> 'notEmpty',
				'message'	=> 'Must not be blank'
			)
		)
	);
	
	/**
	 * Extra form dependent validation rules
	 */
	var $validateChangePassword = array(
		'_import' => array('password', 'password_confirm'),
		'password_old' => array(
			'correct' => array(
				'rule'		=> 'password_old',
				'message'	=> 'Does not match',
				'required'	=> true,
			),
			'empty' => array(
				'rule'		=> 'notEmpty',
				'message'	=> 'Must not be blank',
			),
		),
	);
	
	/**
	 * Ensure two password fields match
	 *
	 * @param	array	data provided by the controller
	 * @param	string	the original (already hashed) password fieldname
	 * @param	bool	whether the password field has been hashed,
	 *					only hashed when a username input is present
	 */
	function password_match($data, $password_field, $hashed = true){
		$password		  = $this->data[$this->alias][$password_field];
		$keys			  = array_keys($data);
		$password_confirm = $hashed ?
			  Security::hash($data[$keys[0]], null, true) :
			  $data[$keys[0]];
		return $password === $password_confirm;
	}

	/**
	 * Dynamically adjust our validation behaviour
	 *
	 * Look for an _import key in new ruleset, and import
	 * those rules from the base validation ruleset
	 *
	 * @param	string	array key of the validation ruleset to use
	 */
	function useValidationRules($key) {
		$variable = 'validate' . $key;
		$rules = $this->$variable;

		if (isset($rules['_import'])) {
			foreach ($rules['_import'] as $key) {
				$rules[$key] = $this->validate[$key];
			}
			unset($rules['_import']);
		}

		$this->validate = $rules;
	}

	/**
	 * Ensure password matches the user session
	 *
	 * @param	array	data provided by the controller
	 */
	function password_old($data){
		$password = $this->field('password',
			array('User.id' => $this->id));
		return $password ===
			Security::hash($data['password_old'], null, true);
	}
	
	var $belongsTo = array(
		'ProjectManager' => array(
			'className' => 'ProjectManager',
			'foreignKey' => 'project_manager_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'OffshoreProjectManager' => array(
			'className' => 'OffshoreProjectManager',
			'foreignKey' => 'offshore_project_manager_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'ProductionManager' => array(
			'className' => 'ProductionManager',
			'foreignKey' => 'production_manager_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

}
?>