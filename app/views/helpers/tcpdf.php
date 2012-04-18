<?php 
App::import('Vendor','xtcpdf'); 

class TcpdfHelper extends AppHelper { 
	var $pdf; 
	function setup() { 
		$this->pdf = new XTCPDF(); 
	} 
}
?>