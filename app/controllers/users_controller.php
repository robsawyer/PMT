<?php
class UsersController extends AppController {

	var $name = 'Users';    
	var $components = array('Auth'); // Not necessary if declared in your app controller
	
	/**
	 * Runs automatically before the controller action is called
	*/
	function beforeFilter(){
		$this->Auth->allow('create');
		parent::beforeFilter();
	}
	
	/**
	 * Handles user account creation.
	 */
	function create() {
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
			$passValidation = false;
			if(!empty($production_manager)){
				$this->data['User']['production_manager_id'] = $production_manager['ProductionManager']['id'];
				$passValidation = true;
			}
			if(!empty($project_manager)){
				$this->data['User']['project_manager_id'] = $production_manager['ProjectManager']['id'];
				$passValidation = true;
			}
			if($passValidation == true){
				if ($this->User->save($this->data)) {
					
					$this->Auth->login($this->data); //Log the new user in
					
					$this->Session->setFlash(__('Your account has been created.', true));
					$this->redirect(array('controller'=>'projects','action' => 'index'));
				} else {
					$this->Session->setFlash(__('Your account could not be create. Please contact <a href="mailto:rob.sawyer@razorfish.com">rob.sawyer@razorfish.com</a>.', true));
				}
			}
		}
	}
	
    /**
     *  The AuthComponent provides the needed functionality
     *  for login, so you can leave this function blank.
     */
	function login() { 
		debug($this->Auth->user());
	}

	function logout() {
		$this->redirect($this->Auth->logout());
	}
}
?>