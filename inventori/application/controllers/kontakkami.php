<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Kontakkami extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		
	}
 //menampilkan barang pada home
	public function index(){	

		$this->load->view('v_header');
		$this->load->view('v_kontakkami'); 
		$this->load->view('v_footer'); 



	}
    
}