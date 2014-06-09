<?php 
	if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 
	$this->load->helper('html');
?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $title_for_layout; ?></title>
	<?php 
		foreach($css_list as $css_file)
		{
			echo link_tag($css_file) . "\n";	
		}	
	?>
</head>
<body class="pure-skin-voilet">
