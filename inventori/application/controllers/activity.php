<?php
class Activity extends CI_Controller
{

    function __construct()
    {
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

    public function index()
    {
        $this->load->view('v_header');
        $this->load->view('v_sidebar');

        $config['total_rows'] = $this->m_activity->total_rows();
        $activity = $this->m_activity->get_limit_data();

        $data = array(
            'activity_data' => $activity,
            'total_rows' => $config['total_rows'],

        );
        $this->load->view('v_activity', $data);
    }

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
        $data = array(
            'status' => "1"
        );

        $this->db->where('id_activity', $id);
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
