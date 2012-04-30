<?php
class ProjectsController extends AppController {

	var $name = 'Projects';
	
	// Include the RequestHandler, it makes sure the proper layout and views files are used 
	var $components = array('Search.Prg','AjaxHandler');
	//var $helpers = array('Number');
	var $paginate = array(
								'limit' => 100,
								'order' => array(
													'Project.priority' => 'desc',
													'Client.name' => 'asc'
													//'Project.type' => 'asc'
													)
								);

	var $presetVars = array(
		array('field' => 'number', 'type' => 'value'),
		array('field' => 'title', 'type' => 'value'),
		array('field' => 'description', 'type' => 'value'),
		array('field' => 'complete', 'type' => 'checkbox'),
		array('field' => 'priority', 'type' => 'checkbox'),
		array('field' => 'offshore', 'type' => 'checkbox'),
	);

	/************** AJAX CALLS *******************/
	function ajax_toggle_hold($id=null){
		//Get the current hold status and swap it.
		if($this->RequestHandler->isAjax()) {
			Configure::write ( 'debug', 0);
			$this->autoLayout = false;
			$this->autoRender = false;
			$isOnHold = $this->Project->toggleHold($id); //Update the DB
			
			if(!empty($isOnHold)){
				$data = array();
				$data['id'] = $id;
				if($isOnHold == "yes") $isOnHold = 1; else $isOnHold = 0;
				$data['onHold'] = $isOnHold;
				$this->AjaxHandler->response(true, $data);
			}else{
				$this->AjaxHandler->response(false, array('message'=>'Failed to find the project.'));
			}
			
			$this->AjaxHandler->respond();
		}
	}
	
	
	function ajax_toggle_qa($id=null){
		//Get the current hold status and swap it.
		if($this->RequestHandler->isAjax()) {
			Configure::write ( 'debug', 0);
			$this->autoLayout = false;
			$this->autoRender = false;
			$isInQA = $this->Project->toggleQA($id); //Update the DB
			
			if(!empty($isInQA)){
				$data = array();
				$data['id'] = $id;
				if($isInQA == "yes") $isInQA = 1; else $isInQA = 0;
				$data['inQA'] = $isInQA;
				$this->AjaxHandler->response(true, $data);
			}else{
				$this->AjaxHandler->response(false, array('message'=>'Failed to find the project.'));
			}
			
			$this->AjaxHandler->respond();
		}
	}
	
	function ajax_toggle_complete($id=null){
		//Get the current hold status and swap it.
		if($this->RequestHandler->isAjax()) {
			Configure::write ('debug', 0);
			$this->autoLayout = false;
			$this->autoRender = false;
			$completed = $this->Project->toggleComplete($id); //Update the DB
			
			if(!empty($completed)){
				$data = array();
				$data['id'] = $id;
				if($completed == "yes") $completed = 1; else $completed = 0;
				$data['completed'] = $completed;
				$this->AjaxHandler->response(true, $data);
			}else{
				$this->AjaxHandler->response(false, array('message'=>'Failed to find the project.'));
			}
			
			$this->AjaxHandler->respond();
		}
	}
	
	function ajax_toggle_offshore($id=null){
		//Get the current hold status and swap it.
		if($this->RequestHandler->isAjax()) {
			Configure::write ( 'debug', 0);
			$this->autoLayout = false;
			$this->autoRender = false;
			$isOffshore = $this->Project->toggleOffshore($id); //Update the DB
			
			if(!empty($isOffshore)){
				$data = array();
				$data['id'] = $id;
				if($isOffshore == "yes") $isOffshore = 1; else $isOffshore = 0;
				$data['isOffshore'] = $isOffshore;
				$this->AjaxHandler->response(true, $data);
			}else{
				$this->AjaxHandler->response(false, array('message'=>'Failed to find the project.'));
			}
			
			$this->AjaxHandler->respond();
		}
	}
	
	function ajax_toggle_started($id=null){
		//Get the current hold status and swap it.
		if($this->RequestHandler->isAjax()) {
			Configure::write ( 'debug', 0);
			$this->autoLayout = false;
			$this->autoRender = false;
			$hasStarted = $this->Project->toggleStarted($id); //Update the DB
			
			if(!empty($hasStarted)){
				$data = array();
				$data['id'] = $id;
				if($hasStarted == "yes") $hasStarted = 1; else $hasStarted = 0;
				$data['hasStarted'] = $hasStarted;
				$this->AjaxHandler->response(true, $data);
			}else{
				$this->AjaxHandler->response(false, array('message'=>'Failed to find the project.'));
			}
			
			$this->AjaxHandler->respond();
		}
	}
	
	
	/************** END AJAX CALLS *******************/
	
	function rss() {
		Configure::write ('debug', 0);
		$this->viewPath .= '/rss';
		$this->layoutPath = 'rss';
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.complete'=>0)));
		$channel_data = array(
				'title' => "PMT | Production Manager Tool",
				'description' => '',
				'link' => '/projects/rss',
				'url' => '/projects/rss',
				'language' => 'en',
				'image' => "<url>http://pmt.razorfishcreative.com/img/sa/razorfish.png</url><title>PMT | Production Manager Tool</title><link>http://pmt.razorfishcreative.com/</link><width>203</width><height>56</height>"
		);
		$this->set('channel', $channel_data);
		$this->set(compact('projects'));
		$this->RequestHandler->respondAs('rss');
	}
	
	function offshore_rss() {
		Configure::write ('debug', 0);
		$this->viewPath .= '/rss';
		$this->layoutPath = 'rss';
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.complete'=>0,'Project.offshore'=>1)));
		$channel_data = array(
				'title' => "PMT | Production Manager Tool",
				'description' => '',
				//'link' => '/projects/offshore/rss',
				//'url' => '/projects/offshore/rss',
				'language' => 'en',
				'image' => "<url>http://pmt.razorfishcreative.com/img/sa/razorfish.png</url><title>PMT | Production Manager Tool</title><link>http://pmt.razorfishcreative.com/</link><width>203</width><height>56</height>"
		);
		$this->set('channel', $channel_data);
		$this->set(compact('projects'));
		$this->RequestHandler->respondAs('rss');
	}
	
	function find() {
		$this->Prg->commonProcess();
		$this->paginate['conditions'] = $this->Project->parseCriteria($this->passedArgs);
		$this->data['Project'] = $this->params['named'];
		$this->set('projects', $this->paginate());
	}
	
	/**
	 * Main project index. This is currently the landing page.
	 * @param 
	 * @return 
	 * 
	*/
	function index() {
		$this->resetTempSessionVariables();
		
		$this->Project->recursive = 0;
		
		$lowPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.priority'=>1,'Project.complete'=>0)
		));
		$mediumPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.priority'=>2,'Project.complete'=>0)
		));
		$highPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.priority'=>3,'Project.complete'=>0)
		));
		$criticalPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.priority'=>4,'Project.complete'=>0)
		));
		
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1)
		));
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0)
		));
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0)
		));
		$completeOffshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1,'Project.offshore'=>1)
		));
		$incompleteOffshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0,'Project.offshore'=>1)
		));
		$completeInhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1,'Project.offshore'=>0)
		));
		$incompleteInhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0,'Project.offshore'=>0)
		));
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media')
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media')
		));
		
		$percentageComplete = 0;
		$totalProjectsIncompleteCounter = 0;
		$incompleteUnits = 0;
		foreach($incompleteProjects as $project){
			//if(intval($project['Project']['progress']) < 100){
				$percentageComplete += intval($project['Project']['progress']);
				$incompleteUnits += intval($project['Project']['total_units']);
				$totalProjectsIncompleteCounter++;
			//}
		}
		$percentageComplete = $percentageComplete / $totalProjectsIncompleteCounter;	$this->set(compact('inhouseProjects','offshoreProjects','completeProjects','incompleteProjects','richMedia','standardMedia','incompleteOffshoreProjects','completeOffshoreProjects','completeInhouseProjects','incompleteInhouseProjects','lowPriorityProjects','mediumPriorityProjects','highPriorityProjects','criticalPriorityProjects','percentageComplete','incompleteUnits'));
		
		$this->paginate = array( 
							'limit' => 100,
							'conditions' => array('Project.complete' =>0),
							'order' => array(
												'Project.priority' => 'desc',
												'Client.name' => 'asc'
												//'Project.type' => 'asc'
												),
							'contain' => array('Client','ProductionManager')
							);
							
		$this->set('projects', $this->paginate('Project'));
	}
	
	/**
	 * Individual production manager project index. 
	 * @param Int or String id Production Manager id
	 * @return 
	 * 
	*/
	function bypm($id = null) {
		$this->resetTempSessionVariables();
		$this->Project->recursive = 2;
		$this->Project->ProductionManager->recursive = -1;
		//Check the id passed
		if (!$id) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		if(is_numeric($id)){
			$production_manager = $this->Project->ProductionManager->read(null, $id);
		}else{
			$production_manager = $this->Project->ProductionManager->findBySlug($id);
		}
		if (empty($production_manager)) {
			$this->Session->setFlash(__('Invalid production manager', true));
			$this->redirect(array('action' => 'index'));
		}
		
		$lowPriorityProjects = $this->Project->find('all',array(
			'conditions' => array(
				'AND'=>array(
					array('Project.priority'=>1),
					array('Project.complete'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$lowPriorityProjects = $this->removeProjectsWithNoPM($lowPriorityProjects);
		
		$mediumPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.priority'=>2),
					array('Project.complete'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
			
		));
		$mediumPriorityProjects = $this->removeProjectsWithNoPM($mediumPriorityProjects);
		
		$highPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.priority'=>3),
					array('Project.complete'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$highPriorityProjects = $this->removeProjectsWithNoPM($highPriorityProjects);
		
		$criticalPriorityProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.priority'=>4),
					array('Project.complete'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$criticalPriorityProjects = $this->removeProjectsWithNoPM($criticalPriorityProjects);
		
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$offshoreProjects = $this->removeProjectsWithNoPM($offshoreProjects);
		
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$inhouseProjects = $this->removeProjectsWithNoPM($inhouseProjects);
		
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$completeProjects = $this->removeProjectsWithNoPM($completeProjects);
		
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$incompleteProjects = $this->removeProjectsWithNoPM($incompleteProjects);
		
		$completeOffshoreProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.complete'=>1),
					array('Project.offshore'=>1)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$completeOffshoreProjects = $this->removeProjectsWithNoPM($completeOffshoreProjects);
		
		$incompleteOffshoreProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.complete'=>0),
					array('Project.offshore'=>1)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$incompleteOffshoreProjects = $this->removeProjectsWithNoPM($incompleteOffshoreProjects);
		
		$completeInhouseProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.complete'=>1),
					array('Project.offshore'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$completeInhouseProjects = $this->removeProjectsWithNoPM($completeInhouseProjects);
		
		$incompleteInhouseProjects = $this->Project->find('all',array(
			'conditions'=>array(
				'AND'=>array(
					array('Project.complete'=>0),
					array('Project.offshore'=>0)
				)
			),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$incompleteInhouseProjects = $this->removeProjectsWithNoPM($incompleteInhouseProjects);
		
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media'),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$standardMedia = $this->removeProjectsWithNoPM($standardMedia);
		
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media'),
			'contain' => array(
									'ProductionManager'=>array(
										'conditions'=>array(
											'AND'=>array(
												'ProductionManager.id' => $production_manager['ProductionManager']['id']
											)
										)
									),'Client'
			)
		));
		$richMedia = $this->removeProjectsWithNoPM($richMedia);
		
		$percentageComplete = 0;
		$totalProjectsIncompleteCounter = 0;
		$incompleteUnits = 0;
		foreach($incompleteProjects as $project){
			//if(intval($project['Project']['progress']) < 100){
				$percentageComplete += intval($project['Project']['progress']);
				$incompleteUnits += intval($project['Project']['total_units']);
				$totalProjectsIncompleteCounter++;
			//}
		}
		$percentageComplete = $percentageComplete / $totalProjectsIncompleteCounter;	$this->set(compact('inhouseProjects','offshoreProjects','completeProjects','incompleteProjects','richMedia','standardMedia','incompleteOffshoreProjects','completeOffshoreProjects','completeInhouseProjects','incompleteInhouseProjects','lowPriorityProjects','mediumPriorityProjects','highPriorityProjects','criticalPriorityProjects','percentageComplete','incompleteUnits','production_manager'));
		
		$this->paginate = array(
							'conditions' => array(
														'Project.complete' =>0
														),
							'order' => array(
												'Project.priority' => 'desc',
												'Client.name' => 'asc'
												//'Project.type' => 'asc'
												),
							'contain' => array('Client','ProductionManager'=>array(
								'conditions'=>array(
									'AND'=>array(
										array('ProductionManager.id'=>$production_manager['ProductionManager']['id'])
									)
								)
							)),
							'limit' => 100
							);
		$projects = $this->paginate('Project');
		$projects = $this->removeProjectsWithNoPM($projects);
		
		$this->set('projects', $projects);
	}
	
	/**
	 * Removes projects that do not contain a production manager
	 * @param 
	 * @return 
	 * 
	*/
	function removeProjectsWithNoPM($projects = null){
		$newProjects = array();
		for($i=0;$i<count($projects);$i++){
			if(!empty($projects[$i]['ProductionManager'])){
				$newProjects[] = $projects[$i];
			}
		}
		return $newProjects;
	}
	
	
	/**
	 * 
	 * @param 
	 * @return 
	 * 
	*/
	function incomplete() {
		$this->Project->recursive = 0;
		
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1,'Project.complete'=>0)
		));
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0,'Project.complete'=>0)
		));
		
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media','Project.complete'=>0)
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media','Project.complete'=>0)
		));
		
		$projects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0)
		));
		//$this->set(compact('incompleteProjects'));
		$this->paginate = array( 
							'conditions' => array('Project.complete' =>0)
							);
		$this->set(compact('offshoreProjects','inhouseProjects','standardMedia','richMedia'));
		$this->set('projects', $this->paginate('Project'));
	}
	
	/**
	 * 
	 * @param 
	 * @return 
	 * 
	*/
	function complete() {
		$this->Project->recursive = 0;
		
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1,'Project.complete'=>1)
		));
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0,'Project.complete'=>1)
		));
		
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media','Project.complete'=>1)
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media','Project.complete'=>1)
		));
		
		$projects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1)
		));
		//$this->set(compact('incompleteProjects'));
		$this->paginate = array( 
							'conditions' => array('Project.complete' =>1)
							);
		$this->set(compact('offshoreProjects','inhouseProjects','standardMedia','richMedia'));
		$this->set('projects', $this->paginate('Project'));
	}
	
	
	function priority() {
		$this->Project->recursive = 0;
		
		if(isset($this->params['pass'][0])){
			if($this->params['pass'][0]=="low"){
			
				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.complete' => 0,'Project.priority' => 1)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions'=>array('Project.complete' => 0,'Project.priority' => 1)
									);
			}else if($this->params['pass'][0]=="medium"){
				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.complete' => 0,'Project.priority' => 2)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions'=>array('Project.complete' => 0,'Project.priority' => 2)
									);
			}else if($this->params['pass'][0]=="high"){
				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.complete' => 0,'Project.priority' => 3)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions'=>array('Project.complete' => 0,'Project.priority' => 3)
									);
			}else if($this->params['pass'][0]=="critical"){
				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.complete' => 0,'Project.priority' => 4)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions'=>array('Project.complete' => 0,'Project.priority' => 4)
									);
			}
		}else{
			$projects = $this->Project->find('all',array(
				'conditions'=>array('Project.complete' => 0,'Project.priority' => 4)
			));
			//$this->set(compact('incompleteProjects'));
			$this->paginate = array( 
								'conditions'=>array('Project.complete' => 0,'Project.priority' => 4)
								);
		}
		
		$this->set('projects', $this->paginate('Project'));
	}
	
	function inhouse() {
		$this->Project->recursive = 0;
		
		if(isset($this->params['pass'][0])){
			if($this->params['pass'][0]=="complete"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>0,'Project.complete' => 1)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>0,'Project.complete' => 1)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>0,'Project.complete' => 1)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>0,'Project.complete' => 1)
									);
			}else if($this->params['pass'][0]=="incomplete"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>0,'Project.complete' => 0)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>0,'Project.complete' => 0)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>0,'Project.complete' => 0)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>0,'Project.complete' => 0)
									);
			}else if($this->params['pass'][0]=="rich"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>0)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>0)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>0,'Project.type' => 'Rich Media')
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>0,'Project.type' => 'Rich Media')
									);
			}else if($this->params['pass'][0]=="standard"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>0)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>0)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>0,'Project.type' => 'Standard Media')
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>0,'Project.type' => 'Standard Media')
									);
			}
		}else{
			$standardMedia = $this->Project->find('all',array(
				'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>0)
			));
			$richMedia = $this->Project->find('all',array(
				'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>0)
			));

			$projects = $this->Project->find('all',array(
				'conditions'=>array('Project.offshore'=>0)
			));
			//$this->set(compact('incompleteProjects'));
			$this->paginate = array( 
								'conditions' => array('Project.offshore'=>0)
								);
		}
		
		$this->set(compact('standardMedia','richMedia'));
		$this->set('projects', $this->paginate('Project'));
	}
	
	function offshore() {
		$this->Project->recursive = 0;
		if(isset($this->params['pass'][0])){
			if($this->params['pass'][0]=="complete"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1,'Project.complete' => 1)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1,'Project.complete' => 1)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>1,'Project.complete' => 1)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>1,'Project.complete' => 1)
									);
			}else if($this->params['pass'][0]=="incomplete"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1,'Project.complete' => 0)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1,'Project.complete' => 0)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>1,'Project.complete' => 0)
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>1,'Project.complete' => 0)
									);
			}else if($this->params['pass'][0]=="rich"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>1,'Project.type' => 'Rich Media')
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>1,'Project.type' => 'Rich Media')
									);
			}else if($this->params['pass'][0]=="standard"){
				$standardMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1)
				));
				$richMedia = $this->Project->find('all',array(
					'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1)
				));

				$projects = $this->Project->find('all',array(
					'conditions'=>array('Project.offshore'=>1,'Project.type' => 'Standard Media')
				));
				//$this->set(compact('incompleteProjects'));
				$this->paginate = array( 
									'conditions' => array('Project.offshore'=>1,'Project.type' => 'Standard Media')
									);
			}
		}else{
			$standardMedia = $this->Project->find('all',array(
				'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1)
			));
			$richMedia = $this->Project->find('all',array(
				'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1)
			));

			$projects = $this->Project->find('all',array(
				'conditions'=>array('Project.offshore'=>1)
			));
			//$this->set(compact('incompleteProjects'));
			$this->paginate = array( 
								'conditions' => array('Project.offshore'=>1)
								);
		}
		
		$this->set(compact('standardMedia','richMedia'));
		$this->set('projects', $this->paginate('Project'));
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid project', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('project', $this->Project->read(null, $id));
	}

	function add() {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!empty($this->data)) {
			//debug($this->data);
			$this->Project->create();
			if(empty($this->data['Project']['progress'])){
				$this->data['Project']['progress'] = "0";
			}
			
			if ($this->Project->save($this->data)) {
				//If the project was submitted via the Add to PMT button on upcoming projects, ensure that complete is now set for that upcoming project.
				if(!empty($this->data['Project']['upcoming_project_id'])){
					//debug($this->data['Project']['upcoming_project_id']);
					$this->loadModel('UpcomingProject');
					$this->UpcomingProject->toggleComplete($this->data['Project']['upcoming_project_id']);
					unset($this->data['Project']['upcoming_project_id']);
				}
				
				$this->Session->setFlash(__('The project has been saved', true),'default',array('style' => 'background: green'));
				//$this->redirect(array('action' => 'index'));
				$id = $this->Project->getLastInsertId();
				$this->redirect(array('action' => 'view',$id));
				//$this->redirect($this->referer());
			} else {
				$this->Session->setFlash(__('The project could not be saved. Please, try again.', true));
			}
		}
		if(!empty($this->params['named']['UpcomingProjectID'])){
			$upcomingProjectID = $this->params['named']['UpcomingProjectID'];
			$this->loadModel('UpcomingProject');
			$upcomingProject = $this->UpcomingProject->read(null, $upcomingProjectID);
			//debug($upcomingProject);
			//Set defaults if params do not exist
			$this->data['Project']['type'] = $upcomingProject['UpcomingProject']['type'];
			$this->data['Project']['number'] = $upcomingProject['UpcomingProject']['project_number'];
			$this->data['Project']['title'] = $upcomingProject['UpcomingProject']['name'];
			$this->data['Project']['total_units'] = $upcomingProject['UpcomingProject']['total_units'];
			$this->data['Project']['start'] = $upcomingProject['UpcomingProject']['start'];
			$this->data['Project']['due'] = $upcomingProject['UpcomingProject']['due'];
			$this->data['ProductionManager']['id'] = $upcomingProject['UpcomingProject']['production_manager_id'];
			$this->data['Project']['notes'] = $upcomingProject['UpcomingProject']['notes'];
			$this->data['Project']['project_manager'] = $upcomingProject['UpcomingProject']['project_manager'];
			$this->data['Project']['url'] = $upcomingProject['UpcomingProject']['url'];
			$this->data['Project']['progress'] = "0";
			
			//debug($this->data);
			$this->set(compact('upcomingProjectID'));
		}
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		$this->set(compact('clients', 'projectManagers','offshoreProjectManagers', 'developers', 'production_managers','qaResources'));
	}

	function edit($id = null) {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid project', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if(empty($this->data['Project']['progress'])){
				$this->data['Project']['progress'] = "0";
			}
			
			if ($this->Project->save($this->data)) {
				$this->Session->setFlash(__('The project has been saved', true));
				//$this->redirect(array('action' => 'index'));
				$this->redirect(array('action' => 'view',$id));
			} else {
				$this->Session->setFlash(__('The project could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Project->read(null, $id);
		}
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		$this->set(compact('clients', 'projectManagers','offshoreProjectManagers', 'developers', 'production_managers','qaResources'));
	}
	
	function duplicate($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid project', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			unset($this->data['Project']['id']);
			$this->Project->create();
			if ($this->Project->save($this->data)) {
				$this->Session->setFlash(__('The project has been saved', true));
				$did = $this->Project->getLastInserId();
				$this->redirect(array('action' => 'view',$did));
				//$this->redirect($this->referer());
			} else {
				$this->Session->setFlash(__('The project could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Project->read(null, $id);
		}
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		$this->set(compact('clients', 'projectManagers','offshoreProjectManagers', 'developers', 'production_managers','qaResources'));
	}

	function delete($id = null) {
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for project', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Project->delete($id)) {
			$this->Session->setFlash(__('Project deleted', true));
			$this->redirect(array('action'=>'index'));
			//$this->redirect($this->referer());
		}
		$this->Session->setFlash(__('Project was not deleted', true));
		$this->redirect(array('action' => 'index'));
		//$this->redirect($this->referer());
	}
	
	function full_report(){
		//User permission check
		$userRole = $this->Auth->user('role');
		if($userRole != "admin" || $userRole != "manager"){
			$this->Session->setFlash(__('You do not have permission to do this.', true));
			$this->redirect(array('controller'=>'users','action' => 'login'));
		}
		
		$this->Project->recursive = 1;
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1)
		));
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0)
		));
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0)
		));
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media')
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media')
		));
															
		$projects = $this->paginate();
		$this->set(compact('inhouseProjects','offshoreProjects',
								'completeProjects','incompleteProjects',
								'richMedia','standardMedia','projects'));
	
		if(isset($this->params['requested'])){
			if(isset($this->params['pass'][0])){
				if($this->params['pass'][0] == 'incomplete'){
					$projects = $this->paginate('Project',array(
														'Project.complete'=>0
														)
													);
				}else if(isset($this->params['pass'][0]['complete'])){
					$projects = $this->paginate('Project',array(
												'Project.complete'=>1,
												'Project.created <=' => date('Y-m-d', strtotime('-2 weeks'))
												)
												);
				}
			}
			return $projects;
		}
	}
	
	function offshore_report(){
		
		//Check to see if the user has permission to access
		$this->checkUserRoles(array('admin','manager'));
		
		$this->Project->recursive = 1;
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1)
		));
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1,'Project.offshore'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0,'Project.offshore'=>1)
		));
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media','Project.offshore'=>1)
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media','Project.offshore'=>1)
		));
		
		$projects = $this->paginate('Project',array(
											'Project.offshore'=>1
											)
										);
		$this->set(compact('completeProjects','incompleteProjects',
								'richMedia','standardMedia','projects'));
								
		if(isset($this->params['requested'])){
			if(isset($this->params['pass'][0])){
				if($this->params['pass'][0] == 'incomplete'){
					$projects = $this->paginate('Project',array(
														'Project.offshore'=>1,
														'Project.complete'=>0
														)
													);
				}else if(isset($this->params['pass'][0]['complete'])){
					$projects = $this->paginate('Project',array(
												'Project.complete'=>1,
												'Project.offshore'=>1,
												'Project.created <=' => date('Y-m-d', strtotime('-2 weeks'))
												)
												);
				}
			}
			return $projects;
		}
	}
	
	/*function export_test_xls(){ 
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all');
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$updatedProjects = array();
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		//debug($updatedProjects);
		$this->set('dataToExport', $updatedProjects);
	}*/
	
	function exportxls(){ 
		
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all');
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0)
		));
		
		$complete_projects = $this->cleanupProjectsArray($projects,'complete',1);
		$incomplete_projects = $this->cleanupProjectsArray($projects,'complete',0);
		
		//debug($updatedProjects);
		$this->set(compact('complete_projects','incomplete_projects'));
	}
	
	function cleanupProjectsArray($projects,$item,$val){
		$updatedProjects = array();
		foreach($projects as $project){
			if($project['Project'][$item] == $val){
				unset($project['Project']['client_id']);
				unset($project['Project']['id']);
				unset($project['Project']['created']);
				unset($project['Project']['modified']);
				if($project['Project']['started'] == 1){
					$project['Project']['started'] = "Yes";
				}else{
					$project['Project']['started'] = "No";
				}
				if($project['Project']['complete'] == 1){
					$project['Project']['complete'] = "Yes";
				}else{
					$project['Project']['complete'] = "No";
				}
				if($project['Project']['offshore'] == 1){
					$project['Project']['offshore'] = "Yes";
				}else{
					$project['Project']['offshore'] = "No";
				}
				if($project['Project']['on_hold'] == 1){
					$project['Project']['on_hold'] = "Yes";
				}else{
					$project['Project']['on_hold'] = "No";
				}
				if($project['Project']['in_qa'] == 1){
					$project['Project']['in_qa'] = "Yes";
				}else{
					$project['Project']['in_qa'] = "No";
				}
				
				if(empty($project['Project']['progress'])){
					$project['Project']['progress'] = "0";
				}
				$project['Project']['progress'] = $project['Project']['progress'].'%';
				
				switch($project['Project']['priority']){
					case 1:
						$project['Project']['priority'] = "Low";
						break;
					
					case 2:
						$project['Project']['priority'] = "Medium";
						break;
						
					case 3:
						$project['Project']['priority'] = "High";
						break;
					
					case 4:
						$project['Project']['priority'] = "Critical";
						break;
						
					default:
						$project['Project']['priority'] = "Low";
						break;
				}
				
				$project['Project']['client']= $project['Client']['name'];

				$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
				$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
				$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
				$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
				$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');

				$updatedProjects[] = $project;
			}
		}
		return $updatedProjects;
	}
	
	/*function exportcsv(){ 
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all');
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$updatedProjects = array();
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		//debug($updatedProjects);
		$this->set('dataToExport', $updatedProjects);
	}*/
	
	function exportPdf(){
		$this->layout = 'pdf'; //this will use the pdf.ctp layout 
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all');
		
		$offshoreProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>1)
		));
		$inhouseProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.offshore'=>0)
		));
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0)
		));
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Standard Media')
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array('Project.type'=>'Rich Media')
		));
		
		$updatedProjects = array();
		
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		
		$this->set(compact('inhouseProjects','offshoreProjects',
								'completeProjects','incompleteProjects',
								'richMedia','standardMedia','projects','updatedProjects'));
		$this->render();
	}
	
	/*function offshore_exportxls(){ 
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.offshore'=>'1')));
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$updatedProjects = array();
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		//debug($updatedProjects);
		$this->set('dataToExport', $updatedProjects);
	}*/
	
	function offshore_exportxls(){
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.offshore'=>1)));
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>1,'Project.offshore'=>1)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array('Project.complete'=>0,'Project.offshore'=>1)
		));
		
		$complete_projects = $this->cleanupProjectsArray($projects,'complete',1);
		$incomplete_projects = $this->cleanupProjectsArray($projects,'complete',0);
		//debug($incomplete_projects);
		//debug($updatedProjects);
		$this->set(compact('complete_projects','incomplete_projects'));
	}
	
	function offshore_exportcsv(){ 
		$this->layout = 'ajax';
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.offshore'=>'1')));
		//debug($projects);
		$clients = $this->Project->Client->find('list');
		$projectManagers = $this->Project->ProjectManager->find('list');
		$offshoreProjectManagers = $this->Project->OffshoreProjectManager->find('list');
		$developers = $this->Project->Developer->find('list');
		$production_managers = $this->Project->ProductionManager->find('list');
		$qaResources = $this->Project->QaResource->find('list');
		
		$updatedProjects = array();
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		//debug($updatedProjects);
		$this->set('dataToExport', $updatedProjects);
	}
	
	function offshore_exportPdf(){
		
		$this->layout = 'pdf'; //this will use the pdf.ctp layout 
		$this->autoLayout = false;
		//$this->autoRender = false;
		// Stop Cake from displaying action's execution time 
		Configure::write('debug',0); 
		
		$projects = $this->Project->find('all',array('conditions'=>array('Project.offshore'=>'1')));
		
		$completeProjects = $this->Project->find('all',array(
			'conditions'=>array(
									'Project.complete'=>1,
									'Project.offshore'=>1
									)
		));
		$incompleteProjects = $this->Project->find('all',array(
			'conditions'=>array(
									'Project.complete'=>0,
									'Project.offshore'=>1
									)
		));
		$standardMedia = $this->Project->find('all',array(
			'conditions'=>array(
										'Project.type'=>'Standard Media',
										'Project.offshore'=>1
										)
		));
		$richMedia = $this->Project->find('all',array(
			'conditions'=>array(
									'Project.type'=>'Rich Media',
									'Project.offshore'=>1
									)
		));
		
		$updatedProjects = array();
		
		foreach($projects as $project){
			unset($project['Project']['client_id']);
			unset($project['Project']['id']);
			unset($project['Project']['created']);
			unset($project['Project']['modified']);
			if($project['Project']['started'] == 1){
				$project['Project']['started'] = "Yes";
			}else{
				$project['Project']['started'] = "No";
			}
			if($project['Project']['complete'] == 1){
				$project['Project']['complete'] = "Yes";
			}else{
				$project['Project']['complete'] = "No";
			}
			if($project['Project']['offshore'] == 1){
				$project['Project']['offshore'] = "Yes";
			}else{
				$project['Project']['offshore'] = "No";
			}
			$project['Project']['client']= $project['Client']['name'];
			
			$project['Project']['project_managers'] = $this->modelDataToString($project,'ProjectManager','name');
			$project['Project']['offshore_project_managers'] = $this->modelDataToString($project,'OffshoreProjectManager','name');
			$project['Project']['production_managers'] = $this->modelDataToString($project,'ProductionManager','fullname');
			$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
			$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');
			
			$updatedProjects[] = $project;
		}
		
		$this->set(compact('inhouseProjects','offshoreProjects',
								'completeProjects','incompleteProjects',
								'richMedia','standardMedia','projects','updatedProjects'));
		$this->render();
	}
	
	function modelDataToString($project,$model,$field){
		$i=0;
		$model = (string)$model;
		$countResource = count($project[$model]);
		$the_string = "";
		foreach($project[$model] as $resource){
			if($countResource > 1){
				if($i < $countResource && $i != ($countResource-1)){
					$the_string .= $resource[$field].", ";
				}else{
					$the_string .= $resource[$field];
				}
			}else{
				$the_string .= $resource[$field];
			}
			$i++;
		}
		return $the_string;
	}
	
	function calendar(){
		//
	}
}
?>