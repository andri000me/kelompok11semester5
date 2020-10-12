<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Cicil1 extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_cicil1');
		$this->load->library('cetak_pdf');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		

		$config['total_rows'] = $this->m_cicil1->total_rows();
		$keluar = $this->m_cicil1->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'keluar_data' => $keluar,
          
            'total_rows' => $config['total_rows'],
           
        );
        $this->load->view('v_cicil1', $data); 
	}
	


	public function update_action($kode_penjualan) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'status' => "2"

                );
                
				$this->db->where('id_keluar', $kode_penjualan);
				$this->db->update('detail_keluar', $data);
				$this->db->where('id_keluar', $kode_penjualan);
           		 redirect(site_url('cicil1'));

		}
		

		public function hapus_penjualan($id)
	{
		
		$data = array(
			'del' => "1"

			);
			
			$this->db->where('id_keluar', $id);
			$this->db->update('cicil', $data);
			$this->db->where('id_keluar', $id);
				redirect(site_url('cicil1'));
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
           		 redirect(site_url('cicil1'));

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
           		 redirect(site_url('cicil1'));

		}

		public function simpancicil(){

	
	$id = $this->input->post('id_keluar');
	$cicil = $this->input->post('cicil');
	$periode = $this->input->post('periode');

		$nmfile = "cicil_".time();
		$config['upload_path'] = './image/cicil';
		$config['allowed_types'] = 'jpg|png';
		$config['max_size'] = '20000';
		$config['file_name'] = $nmfile;
		$this->load->library('upload');
		$this->upload->initialize($config);
		$this->upload->do_upload('foto_cicil');
		$result1 = $this->upload->data();
		$result = array('gambar'=>$result1);
		$dfile = $result['gambar']['file_name'];
		$data = array(
				
			'id_keluar'=> $id,
			'jumlah_cicil'=> $cicil,
			'periode'=>$periode,
			'foto_cicil'=>$dfile,
		);
		$this->db->insert('cicil', $data);
		redirect(site_url('cicil1'));
		}
    
}






