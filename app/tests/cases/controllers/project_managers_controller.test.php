<?php
/* ProjectManagers Test cases generated on: 2011-03-03 08:39:29 : 1299170369*/
App::import('Controller', 'ProjectManagers');

class TestProjectManagersController extends ProjectManagersController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class ProjectManagersControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.project_manager', 'app.project', 'app.client', 'app.developer', 'app.developers_project', 'app.producer', 'app.producers_project');

	function startTest() {
		$this->ProjectManagers =& new TestProjectManagersController();
		$this->ProjectManagers->constructClasses();
	}

	function endTest() {
		unset($this->ProjectManagers);
		ClassRegistry::flush();
	}

	function testIndex() {

	}

	function testView() {

	}

	function testAdd() {

	}

	function testEdit() {

	}

	function testDelete() {

	}

}
?>