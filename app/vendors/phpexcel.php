<?php
	
	//the constant VENDORS should be the path we want
	//but cake was setting it incorrectly
	/*$vendorPath = APP . 'vendors'. DS;
	ini_set('include_path', ini_get('include_path') . PATH_SEPARATOR . $vendorPath);

	App::import('Vendor', 'phpexcel', array('file' => 'PHPExcel.php'));
	App::import('Vendor', 'phpexcelwriter', array('file' => 'PHPExcel'.DS.'Writer'.DS.'Excel2007.php')); // loads PHPExcel/Writer/Excel2007.php*/
	
	
	//App::import('Vendor','phpexcel/Classes',array('file' => 'PHPExcel.php'));
	//App::import('Vendor','phpexcel/Classes/PHPExcel/Writer', array('file' =>'Excel2007.php')); 
	
	/*var $title = ''; 
	var $subject = ''; 
	var $keywords = '';
	var $filename = 'Report';
	
	function initialize($filename="Report",$title="Test",$subject="Test Subject",$keywords=""){
		
		$filename=$this->filename;
		$subject=$this->subject;
		$keywords=$this->keywords;
		$title=$this->title;
		
		// Create new PHPExcel object
		$objPHPExcel = new PHPExcel();
		$objPHPExcel->getProperties()->setTitle($this->title);
		$objPHPExcel->getProperties()->setSubject($this->subject);
		$objPHPExcel->getProperties()->setKeywords($this->keywords);
	}
	
	function setSheet($val=0){
		// Add some data
		$objPHPExcel->setActiveSheetIndex($val);
	}

	function _output(){
		// redirect output to client browser
		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="'.$this->filename.'.xlsx"');
		header('Cache-Control: max-age=0');

		$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$objWriter->save('php://output');
	}*/
?>