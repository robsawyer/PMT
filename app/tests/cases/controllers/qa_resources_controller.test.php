<?php
/* QaResources Test cases generated on: 2011-03-03 17:57:25 : 1299203845*/
App::import('Controller', 'QaResources');

class TestQaResourcesController extends QaResourcesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class QaResourcesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.qa_resource', 'app.project', 'app.client', 'app.developer', 'app.developers_project', 'app.offshore_project_manager', 'app.offshore_project_managers_project', 'app.producer', 'app.producers_project', 'app.project_manager', 'app.project_managers_project', 'app.qa_resources_project');

	function startTest() {
		$this->QaResources =& new TestQaResourcesController();
		$this->QaResources->constructClasses();
	}

	function endTest() {
		unset($this->QaResources);
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