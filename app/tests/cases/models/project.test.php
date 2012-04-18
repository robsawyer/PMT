<?php
/* Project Test cases generated on: 2011-03-03 17:57:07 : 1299203827*/
App::import('Model', 'Project');

class ProjectTestCase extends CakeTestCase {
	var $fixtures = array('app.project', 'app.client', 'app.developer', 'app.developers_project', 'app.offshore_project_manager', 'app.offshore_project_managers_project', 'app.producer', 'app.producers_project', 'app.project_manager', 'app.project_managers_project');

	function startTest() {
		$this->Project =& ClassRegistry::init('Project');
	}

	function endTest() {
		unset($this->Project);
		ClassRegistry::flush();
	}

}
?>