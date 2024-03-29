<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Konfirmasi1 extends CI_Controller
{


	//load library, helper, dan model
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('html');
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_konfirmasi1');
		$this->load->library('cetak_pdf');
	}
	//menampilkan barang pada home
	public function index()
	{
		$this->load->view('v_header');
		$this->load->view('v_sidebar');





		$config['total_rows'] = $this->m_konfirmasi1->total_rows();
		$keluar = $this->m_konfirmasi1->get_limit_data();
		$this->load->library('pagination');
		$this->pagination->initialize($config);
		$data = array(
			'keluar_data' => $keluar,
			'total_rows' => $config['total_rows'],

		);
		$this->load->view('v_konfirmasi1', $data);
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
		redirect(site_url('konfirmasi1'));
	}


	public function hapus_penjualan($id)
	{

		$data = array(
			'del' => "1"

		);

		$this->db->where('id_keluar', $id);
		$this->db->update('keluar', $data);
		$this->db->where('id_keluar', $id);
		redirect(site_url('konfirmasi1'));
	}
}
