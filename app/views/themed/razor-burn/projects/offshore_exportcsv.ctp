<?php
	//$csv->preserveLeadingZerosInExcel = true;
	$csv->addGrid($dataToExport);
	echo $csv->render('offshore_ad_creative_report_'.date('Y-m-d').'.csv');
?>