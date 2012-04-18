<?php
/* Developers Test cases generated on: 2011-03-03 01:20:30 : 1299144030*/
App::import('Controller', 'Developers');

class TestDevelopersController extends DevelopersController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class DevelopersControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.developer', 'app.project', 'app.producer');

	function startTest() {
		$this->Developers =& new TestDevelopersController();
		$this->Developers->constructClasses();
	}

	function endTest() {
		unset($this->Developers);
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