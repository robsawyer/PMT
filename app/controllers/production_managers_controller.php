<?php
class ProductionManagersController extends AppController {

	var $name = 'ProductionManagers';
	
	function index() {
		$this->ProductionManager->recursive = 2;
		$production_managers = $this->ProductionManager->find('all');
		$busiest_dev = array();
		$counter = 0;
		$total_working_projects = 0;
		if(!$this->Session->read('TempProd.total_working_projects_set')){
			$this->Session->write('TempProd.total_working_projects_set',1);
			foreach($production_managers as $prod){
				foreach($prod['Project'] as $project){
					if($project['complete'] == 0 || $project['complete'] == '0'){
						$total_working_projects += 1;
					}
				}
			
				//Update the SQL table with final value
				//$this->Developer->read(null, $dev['Developer']['id']);
				$data = array(
									'ProductionManager'=>array(
															'id'=>$prod['ProductionManager']['id'],
															'total_working_projects'=>$total_working_projects
															)
									);
				$this->ProductionManager->save($data);
				$total_working_projects = 0;
				$counter++;
			}
		}
		$production_managers = Set::sort($production_managers, '{n}.ProductionManager.total_working_projects', 'desc');
		if($production_managers[0]['ProductionManager']['total_working_projects'] == $production_managers[1]['ProductionManager']['total_working_projects']){
			$busiest_prod[0] = $production_managers[0];
			$busiest_prod[1] = $production_managers[1];
		}else{
			$busiest_prod = $production_managers[0];
		}
	
		$this->paginate = array(
							//'order' => array('Developer.total_projects'=>'desc')
							'order' => array('ProductionManager.total_working_projects'=>'desc')
							);
		$this->set('production_managers', $this->paginate());
	}

	function view($id = null) {
		$this->ProductionManager->recursive = 2;
		
		// Set User's ID in model which is needed for validation
		$this->ProductionManager->id = $this->Auth->user('id');
		$this->ProductionManager->role = $this->Auth->user('role');
		
		$admin = false;
		if(!empty($this->ProductionManager->role)){
			//Only allow the user to update his own profile unless the person has the admin role
			if($this->ProductionManager->role != "admin"){
				$id = $this->ProductionManager->id;
			}else{
				$admin = true;
			}
		}
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		if(is_numeric($id)){
			$production_manager = $this->ProductionManager->read(null, $id);
		}else{
			$production_manager = $this->ProductionManager->findBySlug($id);
		}
		
		//Find the user's account id
		$userAccount = $this->ProductionManager->User->find('first',array('conditions'=>array(
																				'User.production_manager_id'=>$production_manager['ProductionManager']['id']
																				)));
																				
		foreach($production_manager['Project'] as $item => $value){
			//debug($production_manager['Project'][$item]['complete']);
			if($production_manager['Project'][$item]['complete'] == 1){
				$completeProjects[] = $production_manager['Project'][$item];
			}else{
				$incompleteProjects[] = $production_manager['Project'][$item];
			}
		}
		if(empty($completeProjects)) $completeProjects = null;
		if(empty($incompleteProjects)) $incompleteProjects = null;
		$this->paginate['Project'] = array(
														'recursive'=>2,
														'order'=>array('Project.complete'=>'asc'),
														'limit' => 150,
														'contain'=>array(
																		'ProductionManager'=>array(
																				'conditions'=>array(
																					'ProductionManager.id ='=>$production_manager['ProductionManager']['id']
																				)
																		),
																		'Client'
															)
														);
		$projects = Set::filter($this->paginate('Project'));
		for($i=0;$i<count($projects);$i++){
			if(!empty($projects[$i]['ProductionManager'][0])){
				if($projects[$i]['ProductionManager'][0]['id'] != $production_manager['ProductionManager']['id']){
					unset($projects[$i]);
				}
			}else{
				unset($projects[$i]);
			}
		}
		//debug($projects);
		$projects = array_values($projects);
		//debug($projects);
		$this->set(compact('production_manager','projects','completeProjects','incompleteProjects','userAccount'));
		
		//$this->set('production_manager', $this->ProductionManager->read(null, $id));
	}
	
	function exportcsv($id = null) {
		//$this->layout = 'ajax'; 
		//$this->autoLayout = false; 
		$this->ProductionManager->recursive = 2;
		Configure::write('debug',0); 
		if (!$id) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('production_manager', $this->ProductionManager->read(null, $id));
	}
	
	function exportxls($id=null){ 
		$this->ProductionManager->recursive = 2;
		$this->layout = 'ajax';
		$this->autoLayout = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0);
		if (!$id) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		
		//$this->ProductionManager->id = $id;
		$this->ProductionManager->ProductionManagersProject->bindModel(array('belongsTo' => array('ProductionManager', 'Project')));
		$projects = $this->ProductionManager->ProductionManagersProject->find('all',array('conditions'=>array('ProductionManagersProject.producer_manager_id'=>$id)));
		
		$complete_projects = $this->cleanupUserProjectsArray($projects,'complete',1);
		//debug($complete_projects);
		$incomplete_projects = $this->cleanupUserProjectsArray($projects,'complete',0);
		//debug($incomplete_projects);
		$production_manager = $this->ProductionManager->read(null,$id);
		$this->set(compact('complete_projects','incomplete_projects','production_manager'));
	}
	
	function add() {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		if (!empty($this->data)) {
			$this->ProductionManager->create();
			$this->data['ProductionManager']['slug'] = $this->toSlug($this->data['ProductionManager']['fullname']);
			$this->data['ProductionManager']['total_working_projects'] = 0;
			if ($this->ProductionManager->save($this->data)) {
				$this->Session->setFlash(__('The production manager has been saved', true));
				$this->redirect(array('action' => 'add'));
			} else {
				$this->Session->setFlash(__('The production manager could not be saved. Please, try again.', true));
			}
		}
		$all_projects = $this->ProductionManager->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}

	function edit($id = null) {
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		// Set User's ID in model which is needed for validation
		$this->ProductionManager->id = $this->Auth->user('id');
		$this->ProductionManager->role = $this->Auth->user('role');
		
		$admin = false;
		if(!empty($this->ProductionManager->role)){
			//Only allow the user to update his own profile unless the person has the admin role
			if($this->ProductionManager->role != "admin"){
				$id = $this->ProductionManager->id;
			}else{
				$admin = true;
			}
		}else{
			$this->Session->setFlash(__('There was an error with your role. Please contact the administrator.', true));
			$this->redirect(array('action' => 'index'));
		}
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			$this->data['ProductionManager']['slug'] = $this->toSlug($this->data['ProductionManager']['fullname']);
			if ($this->ProductionManager->save($this->data)) {
				$this->Session->setFlash(__('The production manager has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The production manager could not be saved. Please, try again.', true));
			}
		}
		
		//Set the default user data
		if (empty($this->data)) {
			//Find the user's account id
			$userAccount = $this->ProductionManager->User->find('first',array('conditions'=>array(
																					'User.production_manager_id'=>$id
																					)));
			$this->data = $this->ProductionManager->read(null, $id);
			$this->set(compact('userAccount'));
		}
		
		//Find associated projects
		$all_projects = $this->ProductionManager->Project->find('all');
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
			$this->Session->setFlash(__('Invalid id for production manager', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->ProductionManager->delete($id)) {
			$this->Session->setFlash(__('ProductionManager deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('ProductionManager was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
?>