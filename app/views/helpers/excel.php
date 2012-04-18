<?php	 
//App::import('Vendor','PHPExcel',array('file' => 'phpexcel/Classes/PHPExcel.php')); 
//App::import('Vendor','PHPExcelWriter',array('file' => 'phpexcel/Classes/PHPExcel/Writer/Excel2007.php')); 
App::import('Vendor','phpexcel/Classes',array('file' => 'PHPExcel.php'));
App::import('Vendor','phpexcel/Classes/PHPExcel/Writer', array('file' =>'Excel2007.php'));

/**
 * //Loading Example
 * if (!file_exists('file.xls')) { 
 * 	exit('Please run file.xls first.\n'); 
 *	} 
 *	//$excel->newFile(); //Used for creating new xls file. 
 *	$excel->loadFile('file.xls'); 
 *	$excel->changeCell('some text', 'A1'); 
 *	$excel->_output('newFilename');
*/

class ExcelHelper extends AppHelper { 
	  
	var $xls; 
	var $reader;
	var $sheet; 
	var $data; 
	var $blacklist = array(); 
	  
	function excelHelper() { 
		$this->xls = new PHPExcel(); 
		$this->sheet = $this->xls->getActiveSheet(); 
		$this->sheet->getDefaultStyle()->getFont()->setName('Verdana'); 
	} 
	
	function loadFile($file) { 
		$this->reader = new PHPExcel_Reader_Excel5(); 
		$this->xls = $this->reader->load("{$file}"); 

		$this->xls->setActiveSheetIndex(0); 
		$this->sheet = $this->xls->getActiveSheet(); 
		$this->sheet->getDefaultStyle()->getFont()->setName('Verdana'); 
	} 

	function newFile() { 
		$this->xls = new PHPExcel(); 
		$this->sheet = $this->xls->getActiveSheet(); 
		$this->sheet->getDefaultStyle()->getFont()->setName('Verdana'); 
	} 

	function changeCell($value = null, $cell = null) { 
		$this->sheet->setCellValue($cell, $value);    
	} 

	function generate(&$data, $title = 'Report',$filename='Ad Creative Report') { 
		$this->data =& $data; 
		$this->_title($title); 
		$this->_headers(); 
		$this->_rows(); 
		$this->_output($title,$filename); 
		return true; 
	} 

	function _title($title) { 
		$this->sheet->setCellValue('A2', $title); 
		$this->sheet->getStyle('A2')->getFont()->setSize(14); 
		$this->sheet->getRowDimension('2')->setRowHeight(23); 
	} 

	function _headers() { 
		$i=0; 
		if(isset($this->data[0])){
			foreach ($this->data[0] as $field => $value) { 
				if (!in_array($field,$this->blacklist)) { 
				 $columnName = Inflector::humanize($field); 
				 $this->sheet->setCellValueByColumnAndRow($i++, 4, $columnName); 
				} 
			}
		}else{
			foreach ($this->data as $field => $value) { 
				//debug($field." => ".$value);
				if(is_array($value)){
					foreach ($value as $item => $itemValue) { 
						if (!in_array($item,$this->blacklist)) { 
							$columnName = Inflector::humanize($item); 
							$this->sheet->setCellValueByColumnAndRow($i++, 4, $columnName); 
						}
					}
				}else{
					if (!in_array($field,$this->blacklist)) { 
						$columnName = Inflector::humanize($field); 
						$this->sheet->setCellValueByColumnAndRow($i++, 4, $columnName); 
					}
				}
				
			}
		}
		$this->sheet->getStyle('A4')->getFont()->setBold(true); 
		$this->sheet->getStyle('A4')->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID); 
		$this->sheet->getStyle('A4')->getFill()->getStartColor()->setRGB('969696'); 
		$this->sheet->duplicateStyle( $this->sheet->getStyle('A4'), 'B4:'.$this->sheet->getHighestColumn().'4'); 
		for ($j=1; $j<$i; $j++) { 
			$this->sheet->getColumnDimension(PHPExcel_Cell::stringFromColumnIndex($j))->setAutoSize(true); 
		}
	} 

	function _rows() { 
		$i=5; 
		foreach ($this->data as $row) { 
			//debug($row);
			$j=0; 
			foreach ($row as $field => $value) { 
				if(is_array($value) != 1){
					if(!in_array($field,$this->blacklist)) { 
						$this->sheet->setCellValueByColumnAndRow($j++,$i, $value); 
					} 
				}
			} 
			$i++; 
		} 
	} 
				 
	//Replace the _output function with this one: 
	function _output($title,$filename) {
		header('Content-Type: application/vnd.openXMLformats-officedocument.spreadsheetml.sheet'); 
		header('Cache-Control: max-age=0');
		header('Content-Disposition: attachment;filename="'.$filename.'.xlsx"'); 
		
		//header('Content-Length: '.filesize($filename.'xlsx'));
		$objWriter = new PHPExcel_Writer_Excel2007($this->xls); 
		$objWriter->save('php://output'); 
	}
} 
?>