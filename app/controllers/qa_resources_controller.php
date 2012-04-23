<?php
class QaResourcesController extends AppController {

	var $name = 'QaResources';

	function index() {
		$this->QaResource->recursive = 0;
		$this->set('qaResources', $this->paginate());
	}

	function view($id = null) {
		$this->QaResource->recursive = 2;
		if (!$id) {
			$this->Session->setFlash(__('Invalid qa resource', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('qaResource', $this->QaResource->read(null, $id));
	}

	function add() {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!empty($this->data)) {
			$this->QaResource->create();
			if ($this->QaResource->save($this->data)) {
				$this->Session->setFlash(__('The qa resource has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The qa resource could not be saved. Please, try again.', true));
			}
		}
		//$projects = $this->QaResource->Project->find('list');
		$all_projects = $this->QaResource->Project->find('all');
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
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid qa resource', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->QaResource->save($this->data)) {
				$this->Session->setFlash(__('The qa resource has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The qa resource could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->QaResource->read(null, $id);
		}
		//$projects = $this->QaResource->Project->find('list');
		$all_projects = $this->QaResource->Project->find('all');
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
			$this->Session->setFlash(__('Invalid id for qa resource', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->QaResource->delete($id)) {
			$this->Session->setFlash(__('Qa resource deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Qa resource was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	function exportxls($id=null){ 
		$this->QaResource->recursive = 2;
		$this->layout = 'ajax';
		$this->autoLayout = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0);
		if (!$id) {
			$this->Session->setFlash(__('Invalid QA Resource', true));
			$this->redirect(array('action' => 'index'));
		}
		
		//$this->QaResource->id = $id;
		$this->QaResource->QaResourcesProject->bindModel(array('belongsTo' => array('QaResource', 'Project')));
		$projects = $this->QaResource->QaResourcesProject->find('all',array('conditions'=>array('QaResourcesProject.qa_resource_id'=>$id)));
		
		$complete_projects = $this->cleanupUserProjectsArray($projects,'complete',1);
		//debug($complete_projects);
		$incomplete_projects = $this->cleanupUserProjectsArray($projects,'complete',0);
		//debug($incomplete_projects);
		$qaResource = $this->QaResource->read(null,$id);
		$qaResource['QaResource']['slug'] = $this->toSlug($qaResource['QaResource']['fullname']);
		//debug($qaResource);
		$this->set(compact('complete_projects','incomplete_projects','qaResource'));
	}
	
}
?>