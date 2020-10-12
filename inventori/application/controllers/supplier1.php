<?php
class Supplier1 extends CI_Controller {

     //load library, helper, dan model
	function __construct(){ 
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_supplier1');
        $this->load->library('pagination');
        $this->load->library('upload'); 
        $this->load->helper('form');
        $this->load->library('cetak_pdf');
    }
    
    //menampilkan data dan membuat halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
      
        $config['total_rows'] = $this->m_supplier1->total_rows();
        $supplier1 = $this->m_supplier1->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
        'supplier_data1' => $supplier1,
        'total_rows' => $config['total_rows'],
        );
        //menampilkan view supplier
        $this->load->view('v_supplier2', $data);

    } 

    public function restore($id) 
{
    //jika gambar tidak diinput oleh supplier 

        //masukkan data ke database
        $data = array(
            'del' => "0"

            );
            
            $this->db->where('id_supplier', $id);
            $this->db->update('supplier', $data);
            $this->db->where('id_supplier', $id);
                redirect(site_url('supplier1'));

}
    
    //fungsi delete data database
    public function delete($id) 
    {
        $row = $this->m_supplier->get_by_id($id);

        if ($row) {
            $this->m_supplier->delete($id);
            redirect(site_url('supplier'));
        }
    }

    
}
    ?>