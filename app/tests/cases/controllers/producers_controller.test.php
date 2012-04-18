<?php
/* Producers Test cases generated on: 2011-03-03 01:20:46 : 1299144046*/
App::import('Controller', 'Producers');

class TestProducersController extends ProducersController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class ProducersControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.producer', 'app.project', 'app.developer');

	function startTest() {
		$this->Producers =& new TestProducersController();
		$this->Producers->constructClasses();
	}

	function endTest() {
		unset($this->Producers);
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