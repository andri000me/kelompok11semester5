<?php
class Barang extends CI_Controller {

    //load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_barang');
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

        //konfigurasi banyak row dalam satu halaman

        $config['total_rows'] = $this->m_barang->total_rows();
        $barang = $this->m_barang->get_limit_data();

        //menampilkan data
        $data = array(
            'barang_data' => $barang,
            'total_rows' => $config['total_rows'],
        );
        //menampilkan view barang
        $this->load->view('v_barang', $data);

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
        'action' => site_url('barang/create_action'),
	    'id_barang' => set_value('id_barang'),
	    'nama_barang' => set_value('nama_barang'),
        'harga' => set_value('harga'),
        'kemasan' => set_value('kemasan'),
        'stok' => set_value('stok'),
        'jenis' => set_value('jenis'),
        'merk' => set_value('merk'),
	    'id_supplier' => set_value('id_supplier'),
       
    );  
        //menampilkan view tambah barang
        $this->load->view('v_barang1', $data);
    }

    //fungsi untuk insert ke database
    public function create_action() 
    {
        //insert dan konfigurasi gambar

        if (empty($_FILES["foto_barang"]["name"])) {   
            $data = array(
                'nama_barang' => $this->input->post('nama_barang',TRUE),
                'harga' => $this->input->post('harga',TRUE),
                'stok' => $this->input->post('stok',TRUE),
                'jenis' => $this->input->post('jenis',TRUE),
                'merk' => $this->input->post('merk',TRUE),
                'kemasan' => $this->input->post('kemasan',TRUE),
                'id_supplier' => $this->input->post('id_supplier',TRUE),
                'foto_barang' => "gg.jpg",
                );
        
                $this->m_barang->insert($data);
                ?>
                <script type="text/javascript">
                alert('Data Berhasil di Tambahkan');
                window.location = '<?php echo base_url('barang'); ?>'
                </script>
                <?php


        } else {
        $nmfile = "barang_".time();
        $config['upload_path'] = './image/barang';
        $config['allowed_types'] = 'jpg|png';
        $config['max_size'] = '20000';
        $config['file_name'] = $nmfile;
        $this->load->library('upload');
        $this->upload->initialize($config);
        $this->upload->do_upload('foto_barang');
        $result1 = $this->upload->data();
        $result = array('gambar'=>$result1);
        $dfile = $result['gambar']['file_name'];

        //memasukkan data ke database
        $data = array(
		'nama_barang' => $this->input->post('nama_barang',TRUE),
		'harga' => $this->input->post('harga',TRUE),
        'stok' => $this->input->post('stok',TRUE),
        'jenis' => $this->input->post('jenis',TRUE),
        'merk' => $this->input->post('merk',TRUE),
        'kemasan' => $this->input->post('kemasan',TRUE),
        'id_supplier' => $this->input->post('id_supplier',TRUE),
		'foto_barang' => $dfile,
	    );

        $this->m_barang->insert($data);
        ?>
        <script type="text/javascript">
			alert('Data Berhasil di Tambahkan');
			window.location = '<?php echo base_url('barang'); ?>'
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
        $row = $this->m_barang->get_by_id($id);
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
            'id_supplier' => set_value('id_supplier', $row->nama_supplier),

            );
            //menampilkan form edit data
            $this->load->view('v_barang2', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('barang'));
            }
        }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto_barang"]["name"])) {    
            $data = array(
            'nama_barang' => $this->input->post('nama_barang',TRUE),
            'harga' => $this->input->post('harga',TRUE),
            'stok' => $this->input->post('stok',TRUE),
            'kemasan' => $this->input->post('kemasan',TRUE),
            'jenis' => $this->input->post('jenis',TRUE),
            'merk' => $this->input->post('merk',TRUE),
            'id_supplier' => $this->input->post('id_supplier',TRUE),
            );
            $this->m_barang->update($this->input->post('id_barang', TRUE), $data);
            ?>
           <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('barang'); ?>'
            </script>
            <?php
        //jika gambar diinput oleh user
        } else {
            $nmfile = "barang_".time();
            $config['upload_path'] = './image/barang';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto_barang');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
            'nama_barang' => $this->input->post('nama_barang',TRUE),
            'harga' => $this->input->post('harga',TRUE),
            'stok' => $this->input->post('stok',TRUE),
            'kemasan' => $this->input->post('kemasan',TRUE),
            'jenis' => $this->input->post('jenis',TRUE),
            'merk' => $this->input->post('merk',TRUE),
            'id_supplier' => $this->input->post('id_supplier',TRUE),
            'foto_barang' => $dfile,
            );

        $this->m_barang->update($this->input->post('id_barang', TRUE), $data);
        ?>
         <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('barang'); ?>'
            </script>
        <?php
        }

           
    }

    public function cetak_pdf() {

        $pdf = new FPDF('P', 'mm','Letter');

        $pdf->AddPage();

        $pdf->SetFont('Arial','B',16);
        $pdf->Cell(0,7,'DATA BARANG',0,1,'C');
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);

        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(75,6,'Nama Barang',1,0,'C');
  
        $pdf->Cell(25,6,'Kemasan',1,0,'C');
 
        $pdf->Cell(30,6,'Jenis',1,0,'C');
        $pdf->Cell(25,6,'Harga',1,0,'C');
        $pdf->Cell(15,6,'Stok',1,0,'C');
        $pdf->Cell(15,6,'Terjual',1,1,'C');
        
        
        

        $pdf->SetFont('Arial','',10);
        $barang= $this->db->query("SELECT * FROM barang inner join supplier on barang.id_supplier=supplier.id_supplier where barang.del='0'")->result();
        $no=1;
        foreach ($barang as $data){
            $pdf->Cell(8,6,$no,1,0);
            $pdf->Cell(75,6,$data->nama_barang,1,0);
  
            $pdf->Cell(25,6,$data->kemasan,1,0);

            $pdf->Cell(30,6,$data->jenis,1,0);
            $pdf->Cell(25,6,"Rp ".number_format($data->harga, 0, ".", "."),1,0);
            $pdf->Cell(15,6,$data->stok,1,0);
            $pdf->Cell(15,6,$data->terjual,1,1);
           
            $no++;
        }
        $pdf->Output();
	

    }

    public function delete($id) 
    {
        //jika gambar tidak diinput oleh user 

            //masukkan data ke database
            $data = array(
                'del' => "1"

                );
                
				$this->db->where('id_barang', $id);
				$this->db->update('barang', $data);
				$this->db->where('id_barang', $id);
           		 redirect(site_url('barang'));

	}
  
        
}
        


