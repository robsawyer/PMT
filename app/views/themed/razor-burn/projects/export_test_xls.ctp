<?php
	/**
	* Export all member records in .xls format
	* with the help of the xlsHelper
	*/
	//debug($dataToExport);
	/*foreach($dataToExport as $item => $value){
		foreach($dataToExport[$item]['Project'] as $item => $value){
			debug($item." => ".$value);
		}
	}*/
	
	//input the export file name
	$xls->setHeader('ad_creative_report_'.date('m_d_Y').'.xls');

	$xls->BOF();
	//$xls->setWorkSheetName('Projects');

	//1st row for columns name
	//foreach($dataToExport[0] as $item => $value){
		/*$xls->openRow();
		foreach($dataToExport[0]['Project'] as $item => $value){
			$xls->writeString($item);
		}
		$xls->closeRow();*/
	//}
	//rows for data
	$notSet = true;
	foreach($dataToExport as $itemCount => $value){
		if($notSet == false) $i = 0; else $i = 0;
 		//debug($itemCount."=>".$value);
		foreach($dataToExport[$itemCount]['Project'] as $item => $value){
			
			//Set labels
			if($notSet == true){
				//debug($item."=>".$value." => i:".$i);
				$xls->writeLabel(0,$i,Inflector::humanize($item));
				if($i == count($dataToExport[$itemCount]['Project'])-1){
					$notSet = false;
				}
			}
			if(is_numeric($value)){
				$xls->writeNumber($itemCount+1,$i,$value);
			}else{
				$xls->writeLabel($itemCount+1,$i,$value);
			}
			$i++;
		}
	}
	
	// XLS Data Cell 
	/*$xls->BOF(); 
	$xls->writeLabel(0,0,"Student Register"); 
	$xls->writeLabel(2,0,"COURSENO : "); 
	$xls->writeLabel(2,1,"123"); 
	$xls->writeLabel(3,0,"TITLE : "); 
	$xls->writeLabel(3,1,"BlaBlaBla"); 
	$xls->writeLabel(4,0,"SETION : "); 
	$xls->writeLabel(6,0,"NO"); 
	$xls->writeLabel(6,1,"ID"); 
	$xls->writeLabel(6,2,"Gender"); 
	$xls->writeLabel(6,3,"Name"); 
	$xls->writeLabel(6,4,"Lastname"); 
	$xls->EOF(); */
	
	
	$xls->EOF();
	exit();
?>