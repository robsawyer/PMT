<?php
App::import('Sanitize');

class UpcomingProjectsController extends AppController {

	var $name = 'UpcomingProjects';
	var $emailTo = 'Rob Sawyer <rob.sawyer@razorfish.com>';
	var $emailSubject = 'PMT: New Project Submitted';
	
	function index() {
		$this->UpcomingProject->recursive = 0;
		$this->set('upcomingProjects', $this->paginate());
	}

	function view($id = null) {
		$this->layout="simple_layout";
		
		if (!$id) {
			$this->Session->setFlash(__('Invalid upcoming project', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('upcomingProject', $this->UpcomingProject->read(null, $id));
	}

	function add() {
		$this->layout="simple_layout";
		
		if (!empty($this->data)) {
			$this->UpcomingProject->create();
			
			//Remove alphanumeric characters
			$this->data['UpcomingProject']['project_number'] = Sanitize::clean($this->data['UpcomingProject']['project_number']);
			$this->data['UpcomingProject']['project_number'] = ereg_replace("[^0-9]", "", $this->data['UpcomingProject']['project_number']);
			
			//Remove alphanumeric characters
			$this->data['UpcomingProject']['total_units'] = Sanitize::clean($this->data['UpcomingProject']['total_units']);
			$this->data['UpcomingProject']['total_units'] = ereg_replace("[^0-9]", "", $this->data['UpcomingProject']['total_units']);
			
			if ($this->UpcomingProject->save($this->data)) {
				$id = $this->UpcomingProject->getLastInsertId();
				//$this->_sendEmailNotification($id,false);
				$this->Session->setFlash(__('The upcoming project has been saved, please verify below.', true));
				$this->redirect(array('action' => 'view',$id));
			} else {
				$this->Session->setFlash(__('The upcoming project could not be saved. Please, try again.', true));
			}
		}
		$productionManagers = $this->UpcomingProject->ProductionManager->find('list');
		//$developers = $this->UpcomingProject->Developer->find('list');
		$this->set(compact('productionManagers'));
	}

	function edit($id = null) {
		$this->layout="simple_layout";
		
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid upcoming project', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->UpcomingProject->save($this->data)) {
				//$this->_sendEmailNotification($id,true);
				$this->Session->setFlash(__('The upcoming project has been saved', true));
				$this->redirect(array('action' => 'view',$id));
			} else {
				$this->Session->setFlash(__('The upcoming project could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->UpcomingProject->read(null, $id);
		}
		$productionManagers = $this->UpcomingProject->ProductionManager->find('list');
		$this->set(compact('productionManagers'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for upcoming project', true));
			$this->redirect(array('action'=>'add'));
		}
		if ($this->UpcomingProject->delete($id)) {
			$this->Session->setFlash(__('The upcoming project was cancelled.', true));
			$this->redirect(array('action'=>'add'));
		}
		$this->Session->setFlash(__('The upcoming project could not be canceled. Please contact rob.sawyer@razorfish.com with the error.', true));
		$this->redirect(array('action' => 'add'));
	}
	
	function thanks(){
		$this->layout="simple_layout";
		
	}
	
	/**
	 * Sends a notification email that a project was submitted.
	 * @id The id of the document
	 *  @edited Whether or not the submission was edited
	 */
	function _sendEmailNotification($id = null,$edited = false){
		/* SMTP Options */
	   /*$this->Email->smtpOptions = array(
	        'port'=>'25', 
	        'timeout'=>'30',
	        'host' => 'por1dc01.main.corp',
	        'username'=>'main\robsa',
	        'password'=>'Password2' //Super secret
	        //'client' => 'smtp_helo_hostname'
	   );*/
	    /* Set delivery method */
	    //$this->Email->delivery = 'smtp';
	    /* Check for SMTP errors. */
	    //$this->set('smtp_errors', $this->Email->smtpError);
	   
		$this->Email->from = 'Do Not Reply <donotreply@razorfish.com>';
		$this->Email->to = $this->emailTo;
		$this->Email->subject = $this->emailSubject;
		$this->Email->sendAs = 'both'; // because we like to send pretty mail
		$this->Email->template = 'upcoming_project'; // note no '.ctp'
		//$messageData = "An upcoming project was submitted via the PMT.";
		
		if(!empty($id)){
			$projectDetails = $this->UpcomingProject->read(null,$id);
			if(!empty($projectDetails)){
				$this->set('project', $projectDetails);
			}
		}
		
		/* Do not pass any args to send() */
		$this->Email->send();
	}
	
	/* Returns the number of active upcoming projects */
	function latest() {
		$this->UpcomingProject->recursive = 0;
		$totalActive = $this->UpcomingProject->find('count',array('conditions'=>array('UpcomingProject.complete'=>'0')));
		if (!empty($this->params['requested'])) {
			return $totalActive;
		} else {
			$this->set('count', $totalActive);
		}
	}
	
}
