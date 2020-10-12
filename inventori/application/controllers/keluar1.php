<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Keluar1 extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_keluar1');
		$this->load->library('cetak_pdf');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		
		
		
   
		$config['total_rows'] = $this->m_keluar1->total_rows();
		$keluar = $this->m_keluar1->get_limit_data();

		$data = array(
            'keluar_data' => $keluar,
            'total_rows' => $config['total_rows'],
  
        );
        $this->load->view('v_keluar4', $data); 
	}
	
	
	public function restore($id)
{
	$data = array(
		'del' => "0"

		);

	$this->db->where('id_keluar', $id);
	$this->db->update('keluar',$data);
	$this->db->where('id_keluar', $id);
	
	redirect(site_url('keluar1'));

} 

public function hapus_penjualan($kode_penjualan)
	{
		
        $this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('keluar');
		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('detail_keluar');
		redirect('keluar1');
		
	}
	

}