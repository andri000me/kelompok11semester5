<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class cicil extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_cicil');
		$this->load->library('cetak_pdf');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 


		

  
		$config['total_rows'] = $this->m_cicil->total_rows();
		$keluar = $this->m_cicil->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'keluar_data' => $keluar,
           
            'total_rows' => $config['total_rows'],
       
        );
        $this->load->view('v_cicil', $data); 
	}
	


	public function update_action($kode_penjualan) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('id_cicil', $kode_penjualan);
				$this->db->update('cicil', $data);
				$this->db->where('id_cicil', $kode_penjualan);
           		 redirect(site_url('cicil'));

		}
		

		public function hapus_penjualan($id)
	{
		
		$data = array(
			'del' => "1"

			);
			
			$this->db->where('id_keluar', $id);
			$this->db->update('cicil', $data);
			$this->db->where('id_keluar', $id);
				redirect(site_url('cicil'));
	}


	public function status($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('id_keluar', $id);
				$this->db->update('detail_keluar', $data);
				$this->db->where('id_keluar', $id);
           		 redirect(site_url('cicil'));

		}


		public function statusall() 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('status', 0);
				$this->db->update('detail_keluar', $data);
				$this->db->where('status', 0);
           		 redirect(site_url('cicil'));

		}
    
}






