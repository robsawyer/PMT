<?php
/* OffshoreProjectManagers Test cases generated on: 2011-03-03 08:19:30 : 1299169170*/
App::import('Controller', 'OffshoreProjectManagers');

class TestOffshoreProjectManagersController extends OffshoreProjectManagersController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class OffshoreProjectManagersControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.offshore_project_manager', 'app.project', 'app.client', 'app.project_manager', 'app.developer', 'app.developers_project', 'app.producer', 'app.producers_project', 'app.offshore_project_managers_project');

	function startTest() {
		$this->OffshoreProjectManagers =& new TestOffshoreProjectManagersController();
		$this->OffshoreProjectManagers->constructClasses();
	}

	function endTest() {
		unset($this->OffshoreProjectManagers);
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