<?php
class Barang1 extends CI_Controller
{

    function __construct()
    {
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

    public function index()
    {
        $this->load->view('v_header');
        $this->load->view('v_sidebar');

        $config['total_rows'] = $this->m_barang1->total_rows();
        $barang1 = $this->m_barang1->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        $data = array(
            'barang_data1' => $barang1,
            'total_rows' => $config['total_rows'],
        );
        $this->load->view('v_barang3', $data);
    }

    public function restore($id)
    {
        $data = array(
            'del' => "0"

        );

        $this->db->where('id_barang', $id);
        $this->db->update('barang', $data);
        $this->db->where('id_barang', $id);
        redirect(site_url('barang1'));
    }
    public function delete($id)
    {
        $row = $this->m_barang1->get_by_id($id);

        if ($row) {
            $this->m_barang1->delete($id);
            redirect(site_url('barang1'));
        }
    }
}
