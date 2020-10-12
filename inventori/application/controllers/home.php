<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Home extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_home');
	}
 //menampilkan barang pada home
	public function index(){	

        $this->load->view('v_header');
        
       
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home';
            $config['first_url'] = base_url() . 'home';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows($q);
        $home = $this->m_home->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 
	}
    
    public function makanan(){	

        $this->load->view('v_header');
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/makanan/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/makanan/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home/makanan';
            $config['first_url'] = base_url() . 'home/makanan';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows_makanan($q);
        $home = $this->m_home->get_limit_data_makanan($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 



    }
    
    public function minuman(){	

        $this->load->view('v_header');
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/minuman/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/minuman/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home/minuman';
            $config['first_url'] = base_url() . 'home/minuman';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows_minuman($q);
        $home = $this->m_home->get_limit_data_minuman($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 



    }
    
    public function kecantikan(){	

        $this->load->view('v_header');
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/kecantikan/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/kecantikan/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home/kecantikan';
            $config['first_url'] = base_url() . 'home/kecantikan';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows_pembalut($q);
        $home = $this->m_home->get_limit_data_pembalut($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 



    }
    
    public function dapur(){	

        $this->load->view('v_header');
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/dapur/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/dapur/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home/dapur';
            $config['first_url'] = base_url() . 'home/dapur';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows_kosmetik($q);
        $home = $this->m_home->get_limit_data_kosmetik($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 



    }

    public function permen(){	

        $this->load->view('v_header');
        
		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'home/permen/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'home/permen/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'home/permen';
            $config['first_url'] = base_url() . 'home/permen';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 8;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_home->total_rows_permen($q);
        $home = $this->m_home->get_limit_data_permen($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'home_data' => $home,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
		);
        $this->load->view('v_home',$data);
        $this->load->view('v_carousel');
        $this->load->view('v_home1',$data);
		$this->load->view('v_footer'); 



    }
    
}