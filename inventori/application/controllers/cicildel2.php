<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Cicildel2 extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->helper('url');
		$this->load->helper('html');
		$this->load->helper(array('form', 'url'));
		$this->load->model('m_cicildel2');
		$this->load->library('cetak_pdf');
	}
	public function index()
	{
		$this->load->view('v_header');
		$this->load->view('v_sidebar');

		$config['total_rows'] = $this->m_cicildel2->total_rows();
		$keluar2 = $this->m_cicildel2->get_limit_data();
		$this->load->library('pagination');
		$this->pagination->initialize($config);
		$data = array(
			'keluar_data2' => $keluar2,

			'total_rows' => $config['total_rows'],
		);
		$this->load->view('v_cicildel2', $data);
	}

	public function update_action($kode_penjualan)
	{
		$data = array(
			'status' => "1"
		);

		$this->db->where('id_cicildel2', $kode_penjualan);
		$this->db->update('cicildel2', $data);
		$this->db->where('id_cicildel2', $kode_penjualan);
		redirect(site_url('cicildel2'));
	}

	public function hapus_penjualan1($kode_penjualan)
	{

		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('keluar');
		$this->db->where('id_keluar', $kode_penjualan);
		$this->db->delete('detail_keluar');
		redirect('cicildel2');
	}

	public function hapus_penjualan($id)
	{
		$data = array(
			'del' => "0"
		);

		$this->db->where('id_keluar', $id);
		$this->db->update('cicildel2', $data);
		$this->db->where('id_keluar', $id);
		redirect(site_url('cicildel2'));
	}

	public function status($id)
	{
		$data = array(
			'status' => "1"
		);

		$this->db->where('id_keluar', $id);
		$this->db->update('detail_keluar', $data);
		$this->db->where('id_keluar', $id);
		redirect(site_url('cicildel2'));
	}

	public function restore($id)
	{
		$data = array(
			'del' => "0"
		);

		$this->db->where('id_cicil', $id);
		$this->db->update('cicil', $data);
		$this->db->where('id_cicil', $id);
		redirect(site_url('cicildel2'));
	}

	public function statusall()
	{
		$data = array(
			'status' => "1"

		);

		$this->db->where('status', 0);
		$this->db->update('detail_keluar', $data);
		$this->db->where('status', 0);
		redirect(site_url('cicildel2'));
	}
}
