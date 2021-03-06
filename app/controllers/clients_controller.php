<?php
class ClientsController extends AppController {

	var $name = 'Clients';
	
	function index() {
		$this->Client->recursive = 0;
		$this->set('clients', $this->paginate());
	}

	function view($id = null) {
		$this->Client->recursive = 2;
		if (!$id) {
			$this->Session->setFlash(__('Invalid client', true));
			$this->redirect(array('action' => 'index'));
		}
		if(is_numeric($id)){
			$client = $this->Client->read(null, $id);
		}else{
			$client = $this->Client->findBySlug($id);
		}
		
		foreach($client['Project'] as $item=>$value){
			//debug($developer['Project'][$item]['complete']);
			if($client['Project'][$item]['complete'] == 1){
				$completeProjects[] = $client['Project'][$item];
			}else{
				$incompleteProjects[] = $client['Project'][$item];
			}
		}
		if(empty($completeProjects)) $completeProjects = null;
		if(empty($incompleteProjects)) $incompleteProjects = null;
		$this->set(compact('client','completeProjects','incompleteProjects'));
	}

	function add() {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!empty($this->data)) {
			$this->Client->create();
			if ($this->Client->save($this->data)) {
				$this->Session->setFlash(__('The client has been saved', true));
				$this->redirect(array('action' => 'add'));
			} else {
				$this->Session->setFlash(__('The client could not be saved. Please, try again.', true));
			}
		}
	}

	function edit($id = null) {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid client', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Client->save($this->data)) {
				$this->Session->setFlash(__('The client has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The client could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Client->read(null, $id);
		}
	}

	function delete($id = null) {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for client', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Client->delete($id)) {
			$this->Session->setFlash(__('Client deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Client was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>