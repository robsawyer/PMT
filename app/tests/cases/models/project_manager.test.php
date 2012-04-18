<?php
/* ProjectManager Test cases generated on: 2011-03-03 08:16:46 : 1299169006*/
App::import('Model', 'ProjectManager');

class ProjectManagerTestCase extends CakeTestCase {
	var $fixtures = array('app.project_manager', 'app.project', 'app.client', 'app.developer', 'app.developers_project', 'app.producer', 'app.producers_project');

	function startTest() {
		$this->ProjectManager =& ClassRegistry::init('ProjectManager');
	}

	function endTest() {
		unset($this->ProjectManager);
		ClassRegistry::flush();
	}

}
?>