<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Masuk1 extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_masuk1');
		$this->load->library('cetak_pdf');

	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		$q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'masuk1/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'masuk1/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'masuk1';
            $config['first_url'] = base_url() . 'masuk1';
		}


		$config['per_page'] = 10000;
        $config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->m_masuk1->total_rows();
		$keluar = $this->m_masuk1->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'masuk_data1' => $keluar,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        $this->load->view('v_masuk4', $data); 
	}
	

	public function hapus_penjualan($id)
	{
		
        $this->db->where('id_masuk', $id);
		$this->db->delete('masuk');
		$this->db->where('id_masuk', $id);
		$this->db->delete('detail_masuk');
		redirect('masuk1');

	}

	public function restore($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'del' => "0"

                );
                
				$this->db->where('id_masuk', $id);
				$this->db->update('masuk', $data);
				$this->db->where('id_masuk', $id);
           		 redirect(site_url('masuk1'));

	}

}