<?php
class Barang1 extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang1');
        $this->load->model('m_barang1');
        $this->load->library('pagination');
        $this->load->library('upload'); 
        $this->load->helper('form'); 
        $this->load->library('cetak_pdf');
    }
    
    //fungsi menampilkan data barang dan halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
       
        $config['total_rows'] = $this->m_barang1->total_rows();
        $barang1 = $this->m_barang1->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'barang_data1' => $barang1,
            'total_rows' => $config['total_rows'],
        );
        //menampilkan view barang
        $this->load->view('v_barang3', $data);

    } 

    public function restore($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'del' => "0"

                );
                
				$this->db->where('id_barang', $id);
				$this->db->update('barang', $data);
				$this->db->where('id_barang', $id);
           		 redirect(site_url('barang1'));

	}

    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_barang1->get_by_id($id);

    if ($row) {
        $this->m_barang1->delete($id);
        redirect(site_url('barang1'));
       
            }
       
	    }
  
        
    }
        ?>


