<?php
class Sales1 extends CI_Controller {

     //load library, helper, dan model
	function __construct(){ 
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_sales1');
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
      
        $config['total_rows'] = $this->m_sales1->total_rows();
        $user1 = $this->m_sales1->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
        'user_data1' => $user1,
        'total_rows' => $config['total_rows'],
        );
        //menampilkan view user
        $this->load->view('v_sales2', $data);

    } 

    public function restore($id) 
{
    //jika gambar tidak diinput oleh user 

        //masukkan data ke database
        $data = array(
            'del' => "0"

            );
            
            $this->db->where('id_user', $id);
            $this->db->update('user', $data);
            $this->db->where('id_user', $id);
                redirect(site_url('sales1'));

}
    
    //fungsi delete data database
    public function delete($id) 
    {
        $row = $this->m_sales->get_by_id($id);

        if ($row) {
            $this->m_sales->delete($id);
            redirect(site_url('sales'));
        }
    }

    
}
    ?>