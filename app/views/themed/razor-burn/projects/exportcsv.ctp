<?php
	//$csv->preserveLeadingZerosInExcel = true;
	$csv->addGrid($dataToExport);
	echo $csv->render('ad_creative_report_'.date('Y-m-d').'.csv');
?>