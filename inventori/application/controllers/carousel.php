<?php
class Carousel extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_carousel');
        $this->load->model('m_carousel');
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
        //konfigurasi url saat klik halaman
        $q = urldecode($this->input->get('q', TRUE)); //search 
        $per_page = intval($this->input->get('per_page')); //membuat halaman baru
        if ($q <> '') {
            $config['base_url'] = base_url() . 'carousel/?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'carousel/?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'carousel';
            $config['first_url'] = base_url() . 'carousel';
        }
        //konfigurasi banyak row dalam satu halaman
        $config['per_page'] = 15;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->m_carousel->total_rows($q);
        $carousel = $this->m_carousel->get_limit_data($config['per_page'], $per_page, $q);
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
            'carousel_data' => $carousel,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'per_page' => $per_page,
        );
        //menampilkan view barang
        $this->load->view('v_carousel1', $data);

    } 

    //untuk menampilkan form insert data
    public function create() 
    {
        //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');

        //memanggil value dari form yang diinputkan user
        $data = array(
        'button' => 'Create',
        'action' => site_url('carousel/create_action'),
	    'id_carousel' => set_value('id_carousel'),
	    'judul' => set_value('judul'),
        'isi' => set_value('isi'),
       
    );  
        //menampilkan view tambah barang
        $this->load->view('v_carousel2', $data);
    }

    //fungsi untuk insert ke database
    public function create_action() 
    {
        //insert dan konfigurasi gambar

        if (empty($_FILES["gambar"]["name"])) {   
            $data = array(
                'judul' => $this->input->post('judul',TRUE),
                'isi' => $this->input->post('isi',TRUE),
                'gambar' => "hh.jpg",
                );
        
                $this->m_carousel->insert($data);
                ?>
                <script type="text/javascript">
                    alert('Data Berhasil di Tambahkan');
                    window.location = '<?php echo base_url('carousel'); ?>'
                </script>
                <?php


        } else {
        $nmfile = "carousel_".time();
        $config['upload_path'] = './image/carousel';
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = '20000';
        $config['file_name'] = $nmfile;
        $this->load->library('upload');
        $this->upload->initialize($config);
        $this->upload->do_upload('gambar');
        $result1 = $this->upload->data();
        $result = array('gambar'=>$result1);
        $dfile = $result['gambar']['file_name'];

        //memasukkan data ke database
        $data = array(
            'judul' => $this->input->post('judul',TRUE),
            'isi' => $this->input->post('isi',TRUE),
		    'gambar' => $dfile,
	    );

        $this->m_carousel->insert($data);
        ?>
        <script type="text/javascript">
			alert('Data Berhasil di Tambahkan');
			window.location = '<?php echo base_url('carousel'); ?>'
        </script>
        <?php
        }
    }
    
    //untuk menampilkan data pada form edit
    public function update($id) 
    {
         //menampilkan header dan sidebar
        $this->load->view('v_header');
        $this->load->view('v_sidebar');
        $row = $this->m_carousel->get_by_id($id);
        //menampilkan data ke dalam form
        if ($row) {
            $data = array(
            'button' => 'Update',
            'action' => site_url('carousel/update_action'),
            'id_carousel' => set_value('id_carousel', $row->id_carousel),
            'judul' => set_value('judul', $row->judul),
            'isi' => set_value('isi', $row->isi),

            );
            //menampilkan form edit data
            $this->load->view('v_carousel3', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('carousel'));
            }
        }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["gambar"]["name"])) {    
            $data = array(
            'judul' => $this->input->post('judul',TRUE),
            'isi' => $this->input->post('isi',TRUE),
            
            );
            $this->m_carousel->update($this->input->post('id_carousel', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('carousel'); ?>'
            </script>
            <?php
        //jika gambar diinput oleh user
        } else {
            $nmfile = "carousel_".time();
            $config['upload_path'] = './image/carousel';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('gambar');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
            'judul' => $this->input->post('judul',TRUE),
            'isi' => $this->input->post('isi',TRUE),
            'gambar' => $dfile,
            );

        $this->m_carousel->update($this->input->post('id_carousel', TRUE), $data);
        ?>
        <script type="text/javascript">
            alert('Data Berhasil di Update');
            window.location = '<?php echo base_url('carousel'); ?>'
        </script>
        <?php
        }

           
    }

   

    public function delete($id) 
{
    $row = $this->m_carousel->get_by_id($id);

    if ($row) {
        $this->m_carousel->delete($id);
        redirect(site_url('carousel'));
       
            }
       
	    }
  
        
}
        


