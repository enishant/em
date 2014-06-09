<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Main extends CI_Controller {
	public function index()
	{
		$css_list = array( 	'assets/css/normalize.css' , 
							'assets/css/pure-min.css' ,
							'assets/css/pure-skin-voilet.css' );
		$data = array(	'title_for_layout'=>'This is main page' , 
						'css_list' => $css_list );
		
		$this->load->library('Layout');
		$this->layout->common_header($data);
		$this->layout->index();
		$this->layout->common_footer();
	}
}