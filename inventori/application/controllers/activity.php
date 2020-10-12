<?php
class Activity extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_activity');
        $this->load->model('m_activity');
        $this->load->library('pagination');
        $this->load->library('upload'); 
        $this->load->helper('form'); 
        $this->load->library('cetak_pdf');
    }
    
    //fungsi menampilkan data activity dan halaman
    public function index() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman
        
        
        //konfigurasi banyak row dalam satu halaman
    
        $config['total_rows'] = $this->m_activity->total_rows();
        $activity = $this->m_activity->get_limit_data();

        //menampilkan data
        $data = array(
            'activity_data' => $activity,
            'total_rows' => $config['total_rows'],
    
        );
        //menampilkan view activity
        $this->load->view('v_activity', $data);

    } 
    
    //fungsi delete data database
    public function delete($id) 
{
    $row = $this->m_activity->get_by_id($id);

    if ($row) {
        $this->m_activity->delete($id);
        redirect(site_url('activity'));
    }
}
    

public function status($id) 
{
    //jika gambar tidak diinput oleh user 

        //masukkan data ke database
        $data = array(
            'status' => "1"

            );
            
            $this->db->where('id_activity',$id);
            $this->db->update('activity', $data);
            $this->db->where('id_activity', $id);
                redirect(site_url('activity'));

    }

    public function statusall() 
    {
 
            $data = array(
                'status' => "1"

                );
                
				$this->db->where('status', '0');
				$this->db->update('activity', $data);
				$this->db->where('status', '0');
           		 redirect(site_url('activity'));

		}

}
    ?>


