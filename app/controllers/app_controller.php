<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2010, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.cake.libs.controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

/**
 * This is a placeholder class.
 * Create the same file in app/app_controller.php
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       cake
 * @subpackage    cake.cake.libs.controller
 * @link http://book.cakephp.org/view/957/The-App-Controller
 */
class AppController extends Controller {
	
	var $components = array(
		'Auth',
		'RequestHandler','Session','Email','Search.Prg','AjaxHandler'
	);
	var $helpers = array(
		'Js' => array('Jquery'),
		'Form', 'Html','Number','Time','Session','Csv','Excel','Xls','Rss','Text'
	);
	
	public $view = 'theme';
	public $theme = 'foundation';	
	
	/**
	* Before Render
	*/
	function beforeRender(){
		if(!empty($this->data['User'])){
			unset($this->data['User']['password']);
			unset($this->data['User']['password_confirm']);
		}
		//Gives $userRole to all views
		$current_user = $this->Auth->user();
		$logged_in = !empty($current_user) ? true : false;
		$userRole = $this->Auth->user('role');
		$this->set(compact('userRole','current_user','logged_in'));
	}
	
	//Alow everything and in each controller set specific permissions
	function beforeFilter() {
		//$this->Auth->allow('*');
		$user = $this->Auth->user();
		if(!empty($user)){
			if($this->Auth->user('role') == "admin"){
				$admin = true;
			}else{
				$admin = false;
			}
			$this->set(compact('admin'));
		}
	}
	
	function toSlug($string) {
		return Inflector::slug(utf8_encode(strtolower($string)), '-');
	}
	
	//Reset temporary variables
	function resetTempSessionVariables(){
		//Reset the session variables
		$this->Session->write('Temp.total_working_projects_set',null);
	}
	
	/**
	 * Handles checking the user role
	 * $rolesToAllow : Roles that should be allowed to access a certain section
	 */
	function checkUserRoles($rolesToAllow = array('admin')){
		//User permission check
		$userRole = $this->Auth->user('role');
		$totalRoles = count($rolesToAllow) - 1;
		//for($i = 0; $i<$totalRoles; $i++){
			if($userRole != "admin" && $userRole != "manager"){
				$this->Session->setFlash(__('You do not have permission to do this.', true));
				$this->redirect(array('controller'=>'users','action' => 'login'));
			}
		//}
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
				$project['Project']['producers'] = $this->modelDataToString($project,'Producer','fullname');
				$project['Project']['developers'] = $this->modelDataToString($project,'Developer','fullname');
				$project['Project']['qa_resources'] = $this->modelDataToString($project,'QaResource','fullname');

				$updatedProjects[] = $project;
			}
		}
		return $updatedProjects;
	}
	
	
	function cleanupUserProjectsArray($projects,$item,$val){
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
				
				$updatedProjects[] = $project;
			}
		}
		return $updatedProjects;
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
}
