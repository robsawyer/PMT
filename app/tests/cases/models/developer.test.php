<?php
/* Developer Test cases generated on: 2011-03-03 01:19:11 : 1299143951*/
App::import('Model', 'Developer');

class DeveloperTestCase extends CakeTestCase {
	var $fixtures = array('app.developer', 'app.project', 'app.producer');

	function startTest() {
		$this->Developer =& ClassRegistry::init('Developer');
	}

	function endTest() {
		unset($this->Developer);
		ClassRegistry::flush();
	}

}
?>