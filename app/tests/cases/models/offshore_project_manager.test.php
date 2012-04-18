<?php
/* OffshoreProjectManager Test cases generated on: 2011-03-03 08:12:08 : 1299168728*/
App::import('Model', 'OffshoreProjectManager');

class OffshoreProjectManagerTestCase extends CakeTestCase {
	var $fixtures = array('app.offshore_project_manager', 'app.project', 'app.client', 'app.project_manager', 'app.developer', 'app.developers_project', 'app.producer', 'app.producers_project', 'app.offshore_project_managers_project');

	function startTest() {
		$this->OffshoreProjectManager =& ClassRegistry::init('OffshoreProjectManager');
	}

	function endTest() {
		unset($this->OffshoreProjectManager);
		ClassRegistry::flush();
	}

}
?>