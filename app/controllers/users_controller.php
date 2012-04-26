<?php
class UsersController extends AppController {

	var $name = 'Users';    
	var $components = array('Auth'); // Not necessary if declared in your app controller
	
	/**
	 * Runs automatically before the controller action is called
	*/
	function beforeFilter(){
		parent::beforeFilter();
		$this->Auth->allow('create');
		$this->Auth->fields = array('username' => 'username', 'password' => 'password');
		$this->Auth->autoRedirect = false;
		$this->Auth->loginRedirect = array('controller' => 'projects', 'action' => 'index');
	}
	
	/**
	 * Handles user account creation.
	 */
	function create() {
		$this->layout="guest_layout";
		
		if (!empty($this->data)) {
			$this->User->create();
			//Check to see if the email address exist in the system. Be sure to check against lowercase version.
			//Scan project managers and production managers. If they're not in the system, do not add 'em and send a warning.
			//The person must be in the system before they can create an account
			$user_email = trim($this->data['User']['email']);
			$production_manager = $this->User->ProductionManager->find('first',array(
																					'conditions'=>array('ProductionManager.email' => $user_email),
																					'recursive' => -1
																					));
			$project_manager = $this->User->ProjectManager->find('first',array(
																				'conditions'=>array('ProjectManager.email' => $user_email),
																				'recursive' => -1
																				));
			$offshore_project_manager = $this->User->OffshoreProjectManager->find('first',array(
																				'conditions'=>array('OffshoreProjectManager.email' => $user_email),
																				'recursive' => -1
																				));
																																				
			$passValidation = false;
			if(!empty($production_manager)){
				$this->data['User']['production_manager_id'] = $production_manager['ProductionManager']['id'];
				$passValidation = true;
			}
			if(!empty($project_manager)){
				$this->data['User']['project_manager_id'] = $production_manager['ProjectManager']['id'];
				$passValidation = true;
			}
			if(!empty($offshore_project_manager)){
				$this->data['User']['offshore_project_manager_id'] = $offshore_production_manager['OffshoreProjectManager']['id'];
				$passValidation = true;
			}
			if($passValidation == true){
				//Set initial last_login
				$this->data['User']['lastlogin'] = date('Y-m-d H:i:s');
				
				if ($this->User->save($this->data)) {
					$this->Session->setFlash(__('Your account has been created.', true));
					
					$user['User']['username'] = $this->data['User']['username'];
					$user['User']['password'] = $this->data['User']['password'];
					$this->Auth->login($user); //Log the new user in
					
					$this->redirect($this->Auth->loginRedirect);
				} else {
					$this->Session->setFlash(__('Your account could not be created. Please contact an administrator.', true));
				}
			}else{
				$this->Session->setFlash(__('Your account could not be created because you are not currently in the system. Please contact an administrator to have your information added.', true));
			}
		}
	}
	
    /**
     *  The AuthComponent provides the needed functionality
     *  for login, so you can leave this function blank.
     */
	function login() { 
		$this->layout="guest_layout";
		
		// Check for a successful login
		if (!empty($this->data) && $id = $this->Auth->user('id')) {

			// Set the lastlogin time
			$fields = array('lastlogin' => date('Y-m-d H:i:s'), 'modified' => false);
			$this->User->id = $id;
			$this->User->save($fields, false, array('lastlogin'));
			
			// Redirect the user
			if ($this->Session->check('Auth.redirect')) {
				$url = $this->Session->read('Auth.redirect');
			}
			$this->redirect($this->Auth->loginRedirect);
		}
	}

	function logout() {
		$this->redirect($this->Auth->logout());
	}
	
	/**
	 * Account details page (change password)
	 * @param model The model to target
	 * @param id The user account id to edit
	 */
	function account($id=null) {
		$role = $this->Auth->user('role');
		// Set User's ID in model which is needed for validation
		$this->User->id = $this->Auth->user('id');
		
		if($role == "admin" && !empty($id)){
			$this->User->id = $id;
		}
		
		// Load the user (avoid populating $this->data)
		$current_user = $this->User->findById($this->User->id);
		$this->set('current_user', $current_user);

		$this->User->useValidationRules('ChangePassword');
		$this->User->validate['password_confirm']['compare']['rule'] = array('password_match', 'password', false);

		$this->User->set($this->data);
		if (!empty($this->data) && $this->User->validates()) {
			$password = $this->Auth->password($this->data['User']['password']);
			$this->User->saveField('password', $password);

			$this->Session->setFlash('Your password has been updated');
			$this->redirect(array('action' => 'account'));
		}
	}
}
?>