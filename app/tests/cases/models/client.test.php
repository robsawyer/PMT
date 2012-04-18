<?php
/* Client Test cases generated on: 2011-03-03 01:48:53 : 1299145733*/
App::import('Model', 'Client');

class ClientTestCase extends CakeTestCase {
	var $fixtures = array('app.client', 'app.project', 'app.developer', 'app.developers_project', 'app.producer', 'app.producers_project');

	function startTest() {
		$this->Client =& ClassRegistry::init('Client');
	}

	function endTest() {
		unset($this->Client);
		ClassRegistry::flush();
	}

}
?>