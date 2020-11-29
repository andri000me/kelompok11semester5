<?php
class Komplain extends CI_Controller
{

    //load library, helper, dan model
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('html');
        $this->load->model('m_komplain');
        $this->load->model('m_komplain');
        $this->load->library('pagination');
        $this->load->library('upload');
        $this->load->helper('form');
        $this->load->library('cetak_pdf');
    }

    //fungsi menampilkan data komplain dan halaman
    public function index()
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        //konfigurasi url saat klik halaman


        //konfigurasi banyak row dalam satu halaman

        $config['total_rows'] = $this->m_komplain->total_rows();
        $komplain = $this->m_komplain->get_limit_data();

        //menampilkan data
        $data = array(
            'komplain_data' => $komplain,
            'total_rows' => $config['total_rows'],

        );
        //menampilkan view komplain
        $this->load->view('v_komplain', $data);
    }

    //fungsi delete data database
    public function delete($id)
    {
        $row = $this->m_komplain->get_by_id($id);

        if ($row) {
            $this->m_komplain->delete($id);
            redirect(site_url('komplain'));
        }
    }




    public function isi($id)
    {
        //insert dan konfigurasi gambar

        $data = array(
            'isi_komplain' => $this->input->post('isi_komplain', TRUE),
            'id_keluar' => $id,
        );

        $this->m_komplain->insert($data);
?>
        <script type="text/javascript">
            alert('Data Berhasil di kirim');
            window.location = '<?php echo base_url('komplain'); ?>'
        </script>
<?php


    }
}
