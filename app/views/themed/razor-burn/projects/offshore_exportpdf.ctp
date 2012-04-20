<?php 
	App::import('Vendor','xtcpdf');
	
	$tcpdf = new XTCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false); 
	$font = 'helvetica'; // looks better, finer, and more condensed than 'dejavusans' 
	
	// Alcal: $font2cache modification
	// This modification creates utf-8 fonts only the first time,
	// after that it uses cache file which dramatically reduces execution time
	/*if (!file_exists($fontfile.'.cached')){
		// calculate $font first time
		$subsetchars = array_fill(0, 512, true); // fill subset for all chars 0-512
		$font = $this->_getTrueTypeFontSubset($font, $subsetchars); // this part is actually slow!
		// and then save $font to file for further use
		$fp=fopen($fontfile.'.cached','w');
		$flat_array = serialize($font); //
		fwrite($fp,$flat_array);
		fclose($fp);
	}else {
		// cache file exist, load file
		$fp=fopen($fontfile.'.cached','r');
		$flat_array = fread($fp,filesize($fontfile.'.cached'));
		fclose($fp);
		$font = unserialize($flat_array);
	}*/
	
	$tcpdf->SetAuthor("Razorfish @ http://razorfish.com"); 
	//$tcpdf->xheadercolor = array(0,0,0);
	$tcpdf->xheadertext = 'Offshore Ad Creative Project Development Report - '.date('m/d/Y'); 
	$tcpdf->xfootertext = 'Copyright © %d Razorfish. All rights reserved.'; 
	
	// set header and footer fonts
	$tcpdf->setHeaderFont(array($font, '', 12));
	$tcpdf->setFooterFont(array($font, '', 8));
	
	// set default monospaced font
	//$tcpdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
	
	//set margins
	$tcpdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
	$tcpdf->SetHeaderMargin(PDF_MARGIN_HEADER);
	$tcpdf->SetFooterMargin(PDF_MARGIN_FOOTER);
	
	$tcpdf->SetAutoPageBreak(true,PDF_MARGIN_BOTTOM); 
	
	//set image scale factor
	$tcpdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
	
	//set some language-dependent strings
	//$tcpdf->setLanguageArray($l);
	
	$tcpdf->SetFont($font,'',10); 
	
	// add a page (required with recent versions of tcpdf) 
	$tcpdf->AddPage(); 

	// Now you position and print your page content 
	// example:  
	//$tcpdf->SetTextColor(0, 0, 0); 
	//$tcpdf->SetFont($textfont,'B',20); 
	//$tcpdf->Cell(0,14, "Hello World", 0,1,'L'); 
	
	// create some HTML content
	$html = "<h3>Details</h3>";
	//$html .= '<ul class="details">';
	debug(count($offshoreProjects));
	$html .= 'Total projects: <span class="number-count">'.count($projects).'</span> | ';
	$html .= 'Completed projects: <span class="number-count">'.count($completeProjects).'</span> | ';
	$html .= 'Incomplete projects: <span class="number-count">'.count($incompleteProjects).'</span><br/>';
	//$html .= '</ul>';
	
	//$html .= '<ul class="details">';
	$html .= 'Standard media projects: <span class="number-count">'.count($standardMedia).'</span> | ';
	$html .= 'Rich media projects: <span class="number-count">'.count($richMedia).'</span>';
	//$html .= '</ul>';
	
	foreach($updatedProjects as $project){
		//debug($project);
		$html .= "<h3>".$project['Project']['number']." ".$project['Project']['client']." ".$project['Project']['title']."</h3>";
		if($project['Project']['description'] != "")
			$html .= "<p>".$project['Project']['description']."</p>";
		$html .= "<ul style='padding:0; margin: 0;'>";
		$html .= "<li>Started: ".$project['Project']['started']."</li>";
		$html .= "<li>Completed: ".$project['Project']['complete']."</li>";
		$html .= "<li>Due date: ".$project['Project']['due']."</li>";
		$html .= "<li>Project manager(s): ".$project['Project']['project_managers']."</li>";
		if($project['Project']['offshore_project_managers'] != "") 
			$html .= "<li>Offshore project manager(s): ".$project['Project']['offshore_project_managers']."</li>";
		if($project['Project']['producers'] != "") 
			$html .= "<li>Producer(s): ".$project['Project']['producers']."</li>";
		if($project['Project']['developers'] != "") 
			$html .= "<li>Developer(s): ".$project['Project']['developers']."</li>";
		if($project['Project']['qa_resources'] != "") 
			$html .= "<li>QA resources(s): ".$project['Project']['qa_resources']."</li>";
		$html .= "</ul>";
	}
	//debug($html);
	// output the HTML content
	$tcpdf->writeHTML($html, true, false, true, false, '');
	
	// reset pointer to the last page
	$tcpdf->lastPage();
	
	echo $tcpdf->Output('offshore_ad_creative_report_'.date('Y-m-d').'.pdf', 'D'); 
?>