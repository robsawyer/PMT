<?php 
	$excel->blacklist = array('id','created','modified'); 
	//debug($developer);
	$excel->generate($developer['Project'],'Projects for '.$developer['Developer']['fullname'],'ad_creative_report_for_'.$developer['Developer']['fullname']); 
?>