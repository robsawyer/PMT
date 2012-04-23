<?php
class DevelopersController extends AppController {

	var $name = 'Developers';
	
	function index() {
		App::import('Model', 'Project'); 
		$this->Developer->recursive = 1;
		//$projects = $this->Developer->Project->find('all',array('conditions'=>array('Project.complete'=>0)));
		$this->paginate = array(
							//'order' => array('Developer.total_projects'=>'desc')
							'order' => array('Developer.fullname'=>'asc'),
							'limit' => 100
							);
							
		
		//debug($developers);
		$developers = $this->Developer->find('all');
		$onshore_developers = $this->Developer->find('all',array('conditions'=>array('offshore'=>0)));
		$offshore_developers = $this->Developer->find('all',array('conditions'=>array('offshore'=>1)));
		$busiest_dev = array();
		$counter = 0;
		$total_working_projects = 0;
		if(!$this->Session->check('Temp.total_working_projects_set')){
			$this->Session->write('Temp.total_working_projects_set',1);
			/*
				TODO Figure out a more elegant solution.
			*/
			/*foreach($developers as $dev){
				foreach($dev['Project'] as $project){
					if($project['complete'] == 0 || $project['complete'] == '0'){
						$total_working_projects += 1;
					}
				}
			
				//Update the SQL table with final value
				//$this->Developer->read(null, $dev['Developer']['id']);
				$data = array(
									'Developer'=>array(
															'id'=>$dev['Developer']['id'],
															'total_working_projects'=>$total_working_projects
															)
									);
				$this->Developer->save($data);
				$total_working_projects = 0;
				$counter++;
			}*/
		}
		/*$developers = Set::sort($developers, '{n}.Developer.total_working_projects', 'desc');
		if($developers[0]['Developer']['total_working_projects'] == $developers[1]['Developer']['total_working_projects']){
			$busiest_dev[0] = $developers[0];
			$busiest_dev[1] = $developers[1];
		}else{
			$busiest_dev = $developers[0];
		}*/
	
		$this->paginate = array(
							'order' => array('Developer.total_projects'=>'desc'),
							'limit' => 100
							//'order' => array('Developer.total_working_projects'=>'desc')
							);
		$this->set('developers', $this->paginate('Developer'));
		$this->set(compact('busiest_dev','onshore_developers','offshore_developers'));
	}

	function view($id = null) {
		//App::import('Model', 'Project'); 
		$this->Developer->recursive = 2;
		if (!$id) {
			$this->Session->setFlash(__('Invalid developer', true));
			$this->redirect(array('action' => 'index'));
		}
		if(is_numeric($id)){
			$developer = $this->Developer->read(null, $id);
		}else{
			$developer = $this->Developer->findBySlug($id);
		}
		/*
		$this->Developer->Project->bindModel(array('hasOne' => array('DevelopersProject')));
		$completeProjects = $this->Developer->Project->find('all', array(
														'conditions'=>array(
																	'Project.complete'=>1,
																	'DevelopersProject.developer_id' => $developer['Developer']['id']
																	)
													));
		$this->Developer->Project->bindModel(array('hasOne' => array('DevelopersProject')));
		$incompleteProjects = $this->Developer->Project->find('all', array(
														'conditions'=>array(
															'Project.complete'=>0,
															'DevelopersProject.developer_id' => $developer['Developer']['id']
															)
													));
		*/
		foreach($developer['Project'] as $item=>$value){
			//debug($developer['Project'][$item]['complete']);
			if($developer['Project'][$item]['complete'] == 1){
				$completeProjects[] = $developer['Project'][$item];
			}else{
				$incompleteProjects[] = $developer['Project'][$item];
			}
		}
		if(empty($completeProjects)) $completeProjects = null;
		if(empty($incompleteProjects)) $incompleteProjects = null;
		$this->set(compact('developer','completeProjects','incompleteProjects'));
	}

	function add() {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!empty($this->data)) {
			$this->Developer->create();
			$this->data['Developer']['slug'] = $this->toSlug($this->data['Developer']['fullname']);
			if ($this->Developer->save($this->data)) {
				$this->Session->setFlash(__('The developer has been saved', true));
				$this->redirect(array('action' => 'add'));
			} else {
				$this->Session->setFlash(__('The developer could not be saved. Please, try again.', true));
			}
		}
		$all_projects = $this->Developer->Project->find('all');
		$projects = array();
		foreach($all_projects as $project){
			$projects[] = $project['Client']['name']." - ".$project['Project']['title'];
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
			$this->Session->setFlash(__('Invalid developer', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			//debug($this->data);
			$this->data['Developer']['slug'] = $this->toSlug($this->data['Developer']['fullname']);
			if ($this->Developer->save($this->data)) {
				$this->Session->setFlash(__('The developer has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The developer could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Developer->read(null, $id);
		}
		$all_projects = $this->Developer->Project->find('all');
		$projects = array();
		$counter = 0;
		/*foreach($all_projects as $project){
			$projects[$counter] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$counter = 0;*/
		foreach($all_projects as $project){
			$projects[$project['Project']['id']] = $project['Client']['name']." - ".$project['Project']['title'];
		}
		$this->set(compact('projects'));
	}
	
	function exportcsv($id = null) { 
		//$this->layout = 'ajax'; 
		//$this->autoLayout = false; 
		$this->Developer->recursive = 2;
		Configure::write('debug',0); 
		if (!$id) {
			$this->Session->setFlash(__('Invalid developer', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('developer', $this->Developer->read(null, $id));
	}
	
	function exportxls($id=null){ 
		$this->Developer->recursive = 2;
		$this->layout = 'ajax';
		$this->autoLayout = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0);
		if (!$id) {
			$this->Session->setFlash(__('Invalid developer', true));
			$this->redirect(array('action' => 'index'));
		}
		
		//$this->Developer->id = $id;
		$this->Developer->DevelopersProject->bindModel(array('belongsTo' => array('Developer', 'Project')));
		$projects = $this->Developer->DevelopersProject->find('all',array('conditions'=>array('DevelopersProject.developer_id'=>$id)));
		
		$complete_projects = $this->cleanupUserProjectsArray($projects,'complete',1);
		//debug($complete_projects);
		$incomplete_projects = $this->cleanupUserProjectsArray($projects,'complete',0);
		//debug($incomplete_projects);
		$developer = $this->Developer->read(null,$id);
		$this->set(compact('complete_projects','incomplete_projects','developer'));
	}
	
	
	function delete($id = null) {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for developer', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Developer->delete($id)) {
			$this->Session->setFlash(__('Developer deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Developer was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
	
	/**
	 * Static page that shows dev status.
	 * @param 
	 * @return 
	 * 
	*/
	function status(){
		
	}
}
?>