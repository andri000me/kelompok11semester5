<?php
class Detail extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 

        $this->load->model('m_detail');

        $this->load->library('upload'); 
        $this->load->helper('form'); 

    }
    

    public function index($id) 
    {
         //menampilkan header dan sidebar
        $this->load->view('v_header');
        $row = $this->m_detail->get_by_id($id);
        //menampilkan data ke dalam form
        if ($row) {
            $data = array(
            'button' => 'Update',
            'action' => site_url('barang/update_action'),
            'id_barang' => set_value('id_barang', $row->id_barang),
            'nama_barang' => set_value('nama_barang', $row->nama_barang),
            'harga' => set_value('harga', $row->harga),
            'stok' => set_value('stok', $row->stok),
            'kemasan' => set_value('kemasan', $row->kemasan),
            'jenis' => set_value('jenis', $row->jenis),
            'merk' => set_value('merk', $row->merk),
            'id_supplier' => set_value('id_supplier', $row->id_supplier),
            'nama_supplier' => set_value('nama_supplier', $row->nama_supplier),
            'foto_barang' => set_value('foto_barang', $row->foto_barang),
            );
            //menampilkan form edit data
            $this->load->view('v_detail', $data);
            $this->load->view('v_footer'); 
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
            }
        }

        
    }
     


