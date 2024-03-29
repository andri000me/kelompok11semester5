<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Konfirmasi3 extends CI_Controller
{


	//load library, helper, dan model
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('html');
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_konfirmasi3');
		$this->load->library('cetak_pdf');
	}
	//menampilkan barang pada home
	public function index()
	{
		$this->load->view('v_header');
		$this->load->view('v_sidebar');




		$config['total_rows'] = $this->m_konfirmasi3->total_rows();
		$keluar3 = $this->m_konfirmasi3->get_limit_data();
		$this->load->library('pagination');
		$this->pagination->initialize($config);
		$data = array(
			'keluar_data3' => $keluar3,

			'total_rows' => $config['total_rows'],

		);
		$this->load->view('v_konfirmasi3', $data);
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
		redirect(site_url('konfirmasi'));
	}


	public function hapus_penjualan($kode_penjualan)
	{

		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('keluar');
		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('detail_keluar');
		redirect('konfirmasi3');
	}

	public function restore($id)
	{
		//jika gambar tidak diinput oleh user 

		//masukkan data ke database
		$data = array(
			'del' => "0"

		);

		$this->db->where('id_keluar', $id);
		$this->db->update('keluar', $data);
		$this->db->where('id_keluar', $id);
		redirect(site_url('konfirmasi3'));
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
		redirect(site_url('konfirmasi'));
	}
}
