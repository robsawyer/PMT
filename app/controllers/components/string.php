<?php
/** 
 * string.php
 *
 * A CakePHP Component that handles multiple string related 
 *
 * @author 				Rob Sawyer - www.robksawyer.com
 * @copyright			Copyright 2010
 * @license 			http://www.opensource.org/licenses/mit-license.php - Licensed under The MIT License
 * @package				AutoLogin Component
 * @version 			1.0
 * @fullname parser		http://code.google.com/p/php-name-parser/source/checkout
 */
class StringComponent extends Object{
	
	/***
		split full names into the following parts:
		- prefix / salutation  (Mr., Mrs., etc)
		- given name / first name
		- middle initials
		- surname / last name
		- suffix (II, Phd, Jr, etc) 
	*/
	function split_full_name($full_name) {
		 $full_name = trim($full_name);
		 
		 $fname = '';
		 $lname = '';
		 $initials = '';
		
		 // split into words
		 $unfiltered_name_parts = explode(" ",$full_name);
		 // completely ignore any words in parentheses
		 foreach ($unfiltered_name_parts as $word) {
			  if ($word{0} != "(")
					$name_parts[] = $word;
		 }
		 $num_words = sizeof($name_parts);

		 // is the first word a title? (Mr. Mrs, etc)
		 $salutation = $this->is_salutation($name_parts[0]);
		 $suffix = $this->is_suffix($name_parts[sizeof($name_parts)-1]);

		 // set the range for the middle part of the name (trim prefixes & suffixes)
		 $start = ($salutation) ? 1 : 0;
		 $end = ($suffix) ? $num_words-1 : $num_words;

		 // concat the first name
		 for ($i=$start; $i < $end-1; $i++) {
			  $word = $name_parts[$i];
			  // move on to parsing the last name if we find an indicator of a compound last name (Von, Van, etc)
			  // we use $i != $start to allow for rare cases where an indicator is actually the first name (like "Von Fabella")
			  if ($this->is_compound_lname($word) && $i != $start)
					break;
			  // is it a middle initial or part of their first name?
			  // if we start off with an initial, we'll call it the first name
			  if ($this->is_initial($word)) {
					// is the initial the first word?  
					if ($i == $start) {
						 // if so, do a look-ahead to see if they go by their middle name
						 // for ex: "R. Jason Smith" => "Jason Smith" & "R." is stored as an initial
						 // but "R. J. Smith" => "R. Smith" and "J." is stored as an initial
						 if ($this->is_initial($name_parts[$i+1]))
							  $fname .= " ".strtoupper($word);
						 else
							  $initials .= " ".strtoupper($word);
					// otherwise, just go ahead and save the initial
					} else {
						 $initials .= " ".strtoupper($word);
					}
			  } else {
					$fname .= " ".$this->fix_case($word);
			  }  
		 }

		 // check that we have more than 1 word in our string
		 if ($end-$start > 1) {
			  // concat the last name
			  for ($i; $i < $end; $i++) {
					$lname .= " ".$this->fix_case($name_parts[$i]);
			  }
		 } else {
			  // otherwise, single word strings are assumed to be first names
			  $fname = $this->fix_case($name_parts[$i]);
		 }

		 // return the various parts in an array
		 $name['salutation'] = $salutation;
		 $name['fname'] = trim($fname);
		 $name['initials'] = trim($initials);
		 $name['lname'] = trim($lname);
		 $name['suffix'] = $suffix;
		
		 return $name;
	}

	// detect and format standard salutations
	// I'm only considering english honorifics for now & not words like
	function is_salutation($word) {
		 // ignore periods
		 $word = str_replace('.','',strtolower($word));
		 // returns normalized values
		 if ($word == "mr" || $word == "master" || $word == "mister")
			  return "Mr.";
		 else if ($word == "mrs")
			  return "Mrs.";
		 else if ($word == "miss" || $word == "ms")
			  return "Ms.";
		 else if ($word == "dr")
			  return "Dr.";
		 else if ($word == "rev")
			  return "Rev.";
		 else if ($word == "fr")
			  return "Fr.";
		 else
			  return false;
	}

	//	 detect and format common suffixes
	function is_suffix($word) {
		 // ignore periods
		 $word = str_replace('.','',$word);
		 // these are some common suffixes - what am I missing?
		 $suffix_array = array('I','II','III','IV','V','Senior','Junior','Jr','Sr','PhD','APR','RPh','PE','MD','MA','DMD','CME');
		 foreach ($suffix_array as $suffix) {
			  if (strtolower($suffix) == strtolower($word))
					return $suffix;
		 }
		 return false;
	}

	// detect compound last names like "Von Fange"
	function is_compound_lname($word) {
		 $word = strtolower($word);
		 // these are some common prefixes that identify a compound last names - what am I missing?
		 $words = array('vere','von','van','de','del','della','di','da','pietro','vanden','du','st.','st','la','ter');
		 return array_search($word,$words);
	}

	// single letter, possibly followed by a period
	function is_initial($word) {
		 return ((strlen($word) == 1) || (strlen($word) == 2 && $word{1} == "."));
	}

	// detect mixed case words like "McDonald"
	// returns false if the string is all one case
	function is_camel_case($word) {
		 if (preg_match("|[A-Z]+|s", $word) && preg_match("|[a-z]+|s", $word))
			  return true;
		 return false;
	}

	// ucfirst words split by dashes or periods
	// ucfirst all upper/lower strings, but leave camelcase words alone
	function fix_case($word) {
		 // uppercase words split by dashes, like "Kimura-Fay"
		 $word = $this->safe_ucfirst("-",$word);
		 // uppercase words split by periods, like "J.P."
		 $word = $this->safe_ucfirst(".",$word);
		 return $word;
	}

	// helper function for fix_case
	function safe_ucfirst($seperator, $word) {
		 // uppercase words split by the seperator (ex. dashes or periods)
		 $parts = explode($seperator,$word);
		 foreach ($parts as $word) {
			  $words[] = ($this->is_camel_case($word)) ? $word : ucfirst(strtolower($word));
		 }
		 return implode($seperator,$words);
	}
	
	/**
	* slug()
	* creates a slug from a string
	*/
	function slug($str) {
		// replace spaces with dash, all to lowercase
		$str = trim($str);
		$str = strtolower(str_replace(' ', '-', $str));
		// create regex pattern
		$pattern = "/[^a-zA-Z0-9-]/";
		// replace non alphanumeric characters
		$str = preg_replace($pattern, '', $str);
		$str = preg_replace('/:/','',$str);
		$plusCheck = substr($str, -1);
		if($plusCheck=='+'){
			$stlen = strlen($str);
			$stlen = $stlen-1;
			$str = substr($str, 0,$stlen);
		}
		return $str;
	}
	
	
	function str_rand($length = 8, $output = 'alphanum'){
		// Possible seeds
		$outputs['alpha'] = 'abcdefghijklmnopqrstuvwqyz';
		$outputs['numeric'] = '0123456789';
		$outputs['alphanum'] = 'abcdefghijklmnopqrstuvwqyz0123456789';
		$outputs['hexadec'] = '0123456789abcdef';

		// Choose seed
		if (isset($outputs[$output])) {
			$output = $outputs[$output];
		}

		// Seed generator
		list($usec, $sec) = explode(' ', microtime());
		$seed = (float) $sec + ((float) $usec * 100000);
		mt_srand($seed);

		// Generate
		$str = '';
		$output_count = strlen($output);
		for ($i = 0; $length > $i; $i++) {
			$str .= $output{mt_rand(0, $output_count - 1)};
		}

		return $str;
	}
	
	function generateUniqueFilename($fileName, $path='') { 
		$path = empty($path) ? WWW_ROOT.'/files/' : $path; 
		$no = 1; 
		$newFileName = $fileName; 
		while (file_exists("$path/".$newFileName)) { 
			$no++; 
			$newFileName = substr_replace($fileName, "_$no.", strrpos($fileName, "."), 1); 
		} 
		return $newFileName; 
	}
	
	function generateUniqueImagename($fileName, $path='') { 
		$path = empty($path) ? WWW_ROOT.'/img/' : $path; 
		$no = 1; 
		$newFileName = $fileName; 
		while (file_exists("$path/".$newFileName)) { 
			$no++; 
			$newFileName = substr_replace($fileName, "_$no.", strrpos($fileName, "."), 1); 
		} 
		return $newFileName; 
	}
}

?>