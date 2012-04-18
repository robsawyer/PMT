<?php	 

class CsvHelper extends AppHelper { 
	  
	 var $delimiter = ','; 
	 var $enclosure = '"'; 
	 var $filename = 'Export.csv'; 
	 var $line = array(); 
	 var $buffer; 
	  
	 function CsvHelper() { 
		  $this->clear(); 
	 } 
	  
	 function clear() { 
		  $this->line = array(); 
		  $this->buffer = ''; 
	 } 
	  
	 function makecsv($fields = array(), $delimiter = ',', $enclosure = '"') { 
		  $str = ''; 
		  $escape_char = '\\'; 
		  foreach ($fields as $value) { 
			 if (strpos($value, $delimiter) !== false || 
				  strpos($value, $enclosure) !== false || 
				  strpos($value, "\n") !== false || 
				  strpos($value, "\r") !== false || 
				  strpos($value, "\t") !== false || 
				  strpos($value, ' ') !== false) { 
				$str2 = $enclosure; 
				$escaped = 0; 
				$len = strlen($value); 
				for ($i=0;$i<$len;$i++) { 
				  if ($value[$i] == $escape_char) { 
					 $escaped = 1; 
				  } else if (!$escaped && $value[$i] == $enclosure) { 
					 $str2 .= $enclosure; 
				  } else { 
					 $escaped = 0; 
				  } 
				  $str2 .= $value[$i]; 
				} 
				$str2 .= $enclosure; 
				$str .= $str2.$delimiter; 
			 } else { 
				$str .= $value.$delimiter; 
			 } 
		  } 
		  $str = substr($str,0,-1); 
		  $str .= "\n"; 
		  return ($str); 
	 } 
	  
	 function addField($value) { 
		  $this->line[] = $value; 
	 } 
	  
	 function endRow() { 
		  $this->addRow($this->line); 
		  $this->line = array(); 
	 } 
	  
	 function addRow($row) { 
		  $this->buffer .= $this->makecsv($row, $this->delimiter, $this->enclosure); 
	 } 
	  
	 function renderHeaders() { 
		  header("Content-type:application/vnd.ms-excel"); 
		  header("Content-disposition:attachment;filename=".$this->filename); 
	 } 
	  
	 function setFilename($filename) { 
		  $this->filename = $filename; 
		  if (strtolower(substr($this->filename, -4)) != '.csv') { 
				$this->filename .= '.csv'; 
		  } 
	 } 
	  
	 function render($outputHeaders = true) { 
		  if ($outputHeaders) { 
				if (is_string($outputHeaders)) { 
					 $this->setFilename($outputHeaders); 
				} 
				$this->renderHeaders(); 
		  } 
		  return $this->output($this->buffer); 
	 } 
} 

?>