<?php
/**
* Export all member records in .xls format
* with the help of the xlsHelper
*/
//input the export file name
$xls->setHeader('ad_creative_development_report_for_'.$production_manager['ProductionManager']['slug'].'_'.date('m_d_Y').'.xls');

$xls->BOF();
//rows for working projects
$notSet = true;
$xls->writeLabel(0,0,'Incomplete Projects');
foreach($incomplete_projects as $itemCount => $value){
	if($notSet == false) $i = 0; else $i = 0;
	//debug($itemCount."=>".$value);
	foreach($incomplete_projects[$itemCount]['Project'] as $item => $value){
		
		//Set labels
		if($notSet == true){
			//debug($item."=>".$value." => i:".$i);
			$xls->writeLabel(1,$i,Inflector::humanize($item));
			if($i == count($incomplete_projects[$itemCount]['Project'])-1){
				$notSet = false;
			}
		}
		$positionRow = $itemCount + 2;
		if(is_numeric($value)){
			$xls->writeNumber($positionRow,$i,$value);
		}else{
			$output = preg_replace('/[^(\x20-\x7F)]*/','', $value);
			$xls->writeLabel($positionRow,$i,$output);
		}
		$i++;
	}
}

//rows for complete projects
$notSet = true;
$itemCount = null;
$value = null;
$item = null;
$positionRow = null;
$startFrom = count($incomplete_projects)+3;
$xls->writeLabel($startFrom,0,'Complete Projects');
foreach($complete_projects as $itemCount => $value){
	if($notSet == false) $i = 0; else $i = 0;
	//debug($itemCount."=>".$value);
	foreach($complete_projects[$itemCount]['Project'] as $item => $value){
		//Set labels
		if($notSet == true){
			//debug($item."=>".$value." => i:".$i);
			$xls->writeLabel($startFrom+1,$i,Inflector::humanize($item));
			if($i == count($complete_projects[$itemCount]['Project'])-1){
				$notSet = false;
			}
		}
		$positionRow = $startFrom+$itemCount + 2;
		if(is_numeric($value)){
			$xls->writeNumber($positionRow,$i,$value);
		}else{
			$output = preg_replace('/[^(\x20-\x7F)]*/','', $value);
			$xls->writeLabel($positionRow,$i,$output);
		}
		$i++;
	}
}

$xls->EOF();
exit();
?>