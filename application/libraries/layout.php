<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Layout extends CI_Controller {
	public function common_header($data)
	{		
		$this->load->view('layout/common_header',$data);
		$this->load->view('layout/common_menus');
	}

	public function common_footer()
	{		
		$this->load->view('layout/common_footer');
	}	

	public function index()
	{
		
		$this->load->view('layout/main_entry');
	}
}
?>