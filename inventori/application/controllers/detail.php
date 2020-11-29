<?php
class Detail extends CI_Controller
{

    //load library, helper, dan model
    function __construct()
    {
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
        $diskusi = $this->m_detail->diskusi($id);
        $rating = $this->m_detail->rating($id);
        $bintang = $this->m_detail->bintang($id);
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
                'terjual' => set_value('terjual', $row->terjual),
                'foto_barang' => set_value('foto_barang', $row->foto_barang),
                'diskusi_data' => $diskusi,
                'rating_data' => $rating,
                'bintang_data' => $bintang,
            );
            //menampilkan form edit data
            $this->load->view('v_detail', $data);
            $this->load->view('v_footer');
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
        }
    }


    public function diskusi()
    {

        if ($this->session->userdata('username') != NULL) {

            $data = array(
                'id_user'    => $this->input->post('id_user'),
                'id_barang'   => $this->input->post('id_barang'),
                'isi_diskusi' => $this->input->post('isi_diskusi'),
            );
            $id = $this->input->post('id_barang');

            $this->m_detail->insert_diskusi($data);
            redirect(base_url() . "detail/index/" . $id);
        } else {
?>
            <script type="text/javascript">
                alert('Anda harus login dulu');
                window.location = '<?php echo base_url('login'); ?>'
            </script>
        <?php

        }
    }



    public function rating()
    {
        if ($this->session->userdata('username') != NULL) {
            $data = array(
                'id_user'    => $this->input->post('id_user'),
                'id_barang'   => $this->input->post('id_barang'),
                'isi_rating' => $this->input->post('isi_rating'),
                'bintang_rating' => $this->input->post('bintang_rating'),

            );
            $id = $this->input->post('id_barang');
            $this->m_detail->insert_rating($data);
            redirect(base_url() . "detail/index/" . $id);
        } else {
        ?>
            <script type="text/javascript">
                alert('Anda harus login dulu');
                window.location = '<?php echo base_url('login'); ?>'
            </script>
<?php

        }
    }



    public function delete_rating($id, $idb)
    {

        $this->m_detail->delete_rating($id);
        redirect(base_url() . "detail/index/" . $idb);
    }



    public function delete_diskusi($id, $idb)
    {

        $this->m_detail->delete_diskusi($id);
        redirect(base_url() . "detail/index/" . $idb);
    }
}
