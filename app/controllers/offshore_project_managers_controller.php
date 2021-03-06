<?php
class OffshoreProjectManagersController extends AppController {

	var $name = 'OffshoreProjectManagers';

	function index() {
		$this->OffshoreProjectManager->recursive = 0;
		$this->set('offshoreProjectManagers', $this->paginate());
	}

	function view($id = null) {
		$this->OffshoreProjectManager->recursive = 2;
		if (!$id) {
			$this->Session->setFlash(__('Invalid offshore project manager', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('offshoreProjectManager', $this->OffshoreProjectManager->read(null, $id));
	}

	function add() {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!empty($this->data)) {
			$this->OffshoreProjectManager->create();
			if ($this->OffshoreProjectManager->save($this->data)) {
				$this->Session->setFlash(__('The offshore project manager has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The offshore project manager could not be saved. Please, try again.', true));
			}
		}
		$all_projects = $this->OffshoreProjectManager->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}

	function edit($id = null) {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid offshore project manager', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->OffshoreProjectManager->save($this->data)) {
				$this->Session->setFlash(__('The offshore project manager has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The offshore project manager could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->OffshoreProjectManager->read(null, $id);
		}
		$all_projects = $this->OffshoreProjectManager->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}

	function delete($id = null) {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for offshore project manager', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->OffshoreProjectManager->delete($id)) {
			$this->Session->setFlash(__('Offshore project manager deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Offshore project manager was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>