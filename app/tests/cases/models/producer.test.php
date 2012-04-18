<?php
/* Producer Test cases generated on: 2011-03-03 01:19:33 : 1299143973*/
App::import('Model', 'Producer');

class ProducerTestCase extends CakeTestCase {
	var $fixtures = array('app.producer', 'app.project', 'app.developer');

	function startTest() {
		$this->Producer =& ClassRegistry::init('Producer');
	}

	function endTest() {
		unset($this->Producer);
		ClassRegistry::flush();
	}

}
?>