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
			$this->data = $this->ProjectManager->read(null, $id);
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