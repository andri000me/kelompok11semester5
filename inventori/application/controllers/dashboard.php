<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url'));
        $this->load->model('m_barang');
		$this->load->model('m_user');
		$this->load->model('m_gudang');
		$this->load->model('m_sales');
		$this->load->model('m_pelanggan');
		$this->load->model('m_keluar');
		$this->load->model('m_masuk');
		$this->load->model('m_supplier');
		$this->load->model('m_konfirmasi');
		$this->load->model('m_carousel');
	}
	//menampilkan dashboard dan jumlah row
	public function index() 
	{
		$this->load->view('v_header');
		$this->load->view('v_sidebar');
		if ($this->session->userdata('level') == "") {
            redirect('login');
		} 
		//memaggil total row dari tabel barang dan user


		 
		if ($this->session->userdata('level') == 'manajer') {
		
		$data = array(
            'total_asset_barang'=> $this->m_barang->total_rows(),
			'total_asset_pelanggan'=> $this->m_user->total_rows(),
			'total_asset_admin'=> $this->m_user->total_rows(),
			'total_asset_sales'=> $this->m_sales->total_rows(),
			'total_asset_gudang'=> $this->m_gudang->total_rows(),
			'total_asset_masuk'=> $this->m_masuk->total_rows(),
			'total_asset_keluar'=> $this->m_keluar->total_rows(),
			'total_asset_supplier'=> $this->m_supplier->total_rows(),
			'total_asset_konfirmasi'=> $this->m_konfirmasi->total_rows(),
			'total_asset_carousel'=> $this->m_carousel->total_rows(),
		);

	}else if ($this->session->userdata('level') == 'admin') {
		
			$data = array(
				'total_asset_barang'=> $this->m_barang->total_rows(),
				'total_asset_pelanggan'=> $this->m_user->total_rows(),
				'total_asset_sales'=> $this->m_sales->total_rows(),
				'total_asset_gudang'=> $this->m_gudang->total_rows(),
				'total_asset_masuk'=> $this->m_masuk->total_rows(),
				'total_asset_keluar'=> $this->m_keluar->total_rows(),
				'total_asset_supplier'=> $this->m_supplier->total_rows(),
				'total_asset_konfirmasi'=> $this->m_konfirmasi->total_rows(),
				'total_asset_carousel'=> $this->m_carousel->total_rows(),
			);
	


	}else if($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
		$data = array(
			'total_asset_konfirmasi'=> $this->m_konfirmasi->total_rows(),
			'total_asset_keluar'=> $this->m_keluar->total_rows(),

		);


	}



		$this->load->view('v_dashboard', $data);
	}
}