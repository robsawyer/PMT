<?php
/* Developer Fixture generated on: 2011-03-03 01:19:09 : 1299143949 */
class DeveloperFixture extends CakeTestFixture {
	var $name = 'Developer';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'type' => array('type' => 'string', 'null' => true, 'default' => NULL, 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'fullname' => array('type' => 'string', 'null' => false, 'default' => 'NULL', 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'location' => array('type' => 'string', 'null' => false, 'default' => 'NULL', 'collate' => 'latin1_swedish_ci', 'charset' => 'latin1'),
		'created' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'modified' => array('type' => 'datetime', 'null' => true, 'default' => NULL),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'MyISAM')
	);

	var $records = array(
		array(
			'id' => 1,
			'type' => 'Lorem ipsum dolor sit amet',
			'fullname' => 'Lorem ipsum dolor sit amet',
			'location' => 'Lorem ipsum dolor sit amet',
			'created' => '2011-03-03 01:19:09',
			'modified' => '2011-03-03 01:19:09'
		),
	);
}
?>