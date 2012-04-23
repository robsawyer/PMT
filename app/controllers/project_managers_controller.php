<?php
class ProjectManagersController extends AppController {

	var $name = 'ProjectManagers';

	function index() {
		$this->ProjectManager->recursive = 0;
		$this->set('projectManagers', $this->paginate());
	}

	function view($id = null) {
		$this->ProjectManager->recursive = 2;
		if (!$id) {
			$this->Session->setFlash(__('Invalid project manager', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('projectManager', $this->ProjectManager->read(null, $id));
	}

	function add() {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!empty($this->data)) {
			$this->ProjectManager->create();
			if ($this->ProjectManager->save($this->data)) {
				$this->Session->setFlash(__('The project manager has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The project manager could not be saved. Please, try again.', true));
			}
		}
		//$projects = $this->ProjectManager->Project->find('list');
		$all_projects = $this->ProjectManager->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}

	function edit($id = null) {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		// Set User's ID in model which is needed for validation
		$this->ProjectManager->id = $this->Auth->user('id');
		$this->ProjectManager->role = $this->Auth->user('role');

		$admin = false;
		if(!empty($this->ProjectManager->role)){
			//Only allow the user to update his own profile unless the person has the admin role
			if($this->ProjectManager->role != "admin"){
				$id = $this->ProjectManager->id;
			}else{
				$admin = true;
			}
		}else{
			$this->Session->setFlash(__('There was an error with your role. Please contact the administrator.', true));
			$this->redirect(array('action' => 'index'));
		}
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid project manager', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->ProjectManager->save($this->data)) {
				$this->Session->setFlash(__('The project manager has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The project manager could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			//Find the user's account 
			$userAccount = $this->ProjectManager->User->find('first',array('conditions'=>array(
																					'User.project_manager_id'=>$id
																					)));
			$this->data = $this->ProjectManager->read(null, $id);
			$this->set(compact('userAccount'));
		}
		//$projects = $this->ProjectManager->Project->find('list');
		$all_projects = $this->ProjectManager->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}

	function delete($id = null) {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for project manager', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->ProjectManager->delete($id)) {
			$this->Session->setFlash(__('Project manager deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Project manager was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>