<?php
/* QaResource Test cases generated on: 2011-03-03 17:56:29 : 1299203789*/
App::import('Model', 'QaResource');

class QaResourceTestCase extends CakeTestCase {
	var $fixtures = array('app.qa_resource', 'app.project', 'app.client', 'app.developer', 'app.developers_project', 'app.offshore_project_manager', 'app.offshore_project_managers_project', 'app.producer', 'app.producers_project', 'app.project_manager', 'app.project_managers_project', 'app.qa_resources_project');

	function startTest() {
		$this->QaResource =& ClassRegistry::init('QaResource');
	}

	function endTest() {
		unset($this->QaResource);
		ClassRegistry::flush();
	}

}
?>