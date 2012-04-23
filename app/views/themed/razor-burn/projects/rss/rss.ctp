<?php
	function transform_rss($projects) {
		return array(
			'title' => $projects['Project']['title'],
			'link'  => array('action' => 'view', $projects['Project']['id']),
			'guid'  => array('action' => 'view', $projects['Project']['id']),
			'description' => $projects['Project']['description'],
			'author' => "PMT Admin",
			'pubDate' => $projects['Project']['modified']
		);
	}
	echo $this->Rss->items($projects, 'transform_rss');
?>