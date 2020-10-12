<?php
class Sales extends CI_Controller {

     //load library, helper, dan model
	function __construct(){ 
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_sales');
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
      
        $config['total_rows'] = $this->m_sales->total_rows();
        $user = $this->m_sales->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
        //menampilkan data
        $data = array(
        'user_data' => $user,
        'total_rows' => $config['total_rows'],
        );
        //menampilkan view user
        $this->load->view('v_sales', $data);

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
        'action' => site_url('user/create_action'),
        'id_user' => set_value('id_user'),
        'email' => set_value('email'),
	    'nama' => set_value('nama'),
	    'username' => set_value('username'),
	    'password' => set_value('password'),
        'level' => set_value('level'),
        'tgl_lahir' => set_value('tgl_lahir'),
        'jenis_kelamin' => set_value('jenis_kelamin'),
        'alamat' => set_value('alamat'),
        'no_telp' => set_value('no_telp'),
    );
        //menampilkan view tambah user
        $this->load->view('v_sales1', $data);
    }


    //fungsi untuk insert ke database
    public function create_action() 
    {

        if (!empty($_FILES["foto"]["name"])) {  
            //konfigurasi upload gambar
            $nmfile = "user_".time();
            $config['upload_path'] = './image/user';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
    
            //memasukkan data ke database
            $data = array(
            'email' => $this->input->post('email',TRUE),
            'nama' => $this->input->post('nama',TRUE),
            'username' => $this->input->post('username',TRUE),
            'password' => md5($this->input->post('password',TRUE)),
            'level' => $this->input->post('level',TRUE),
            'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
            'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
            'alamat' => $this->input->post('alamat',TRUE),
            'no_telp' => $this->input->post('no_telp',TRUE),
            'foto' => $dfile,
	    );

            $this->m_sales->insert($data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Tambahkan');
                window.location = '<?php echo base_url('user'); ?>'
            </script>
            <?php
        
    } else {

        $data = array(
        'email' => $this->input->post('email',TRUE),
        'nama' => $this->input->post('nama',TRUE),
        'username' => $this->input->post('username',TRUE),
        'password' => md5($this->input->post('password',TRUE)),
        'level' => $this->input->post('level',TRUE),
        'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
        'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
        'alamat' => $this->input->post('alamat',TRUE),
        'no_telp' => $this->input->post('no_telp',TRUE),
        'foto' => "pp.jpg",
    );

        $this->m_sales->insert($data);
        ?>
        <script type="text/javascript">
            alert('Data Berhasil di Tambahkan');
            window.location = '<?php echo base_url('sales'); ?>'
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
        $row = $this->m_sales->get_by_id($id);
        //menampilkan data ke dalam form
        if ($row) {
            $data = array(
            'button' => 'Update',
            'action' => site_url('user/update_action'),
            'id_user' => set_value('id_user', $row->id_user),
            'email' => set_value('email', $row->email),
            'nama' => set_value('nama', $row->nama),
            'username' => set_value('username', $row->username),
            'password' => set_value('password', $row->password),
            'level' => set_value('level', $row->level),
            'jenis_kelamin' => set_value('jenis_kelamin', $row->jenis_kelamin),
            'tgl_lahir' => set_value('tgl_lahir', $row->tgl_lahir),
            'alamat' => set_value('alamat', $row->alamat),
            'no_telp' => set_value('no_telp', $row->no_telp),

        );
            //menampilkan form edit data
            $this->load->view('v_sales1', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('sales'));
        }
    }
    //fungsi update data ke database
    public function update_action() 
    {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto"]["name"])) {  
        $data = array(
        'nama' => $this->input->post('nama',TRUE),
        'email' => $this->input->post('email',TRUE),
		'username' => $this->input->post('username',TRUE),
        'password' => $this->input->post('password',TRUE),
        'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
        'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
        'alamat' => $this->input->post('alamat',TRUE),
        'no_telp' => $this->input->post('no_telp',TRUE),
		'level' => $this->input->post('level',TRUE),
	    );

            $this->m_sales->update($this->input->post('id_user', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('sales'); ?>'
            </script>
            <?php
        //jika gambar diinput oleh user
        } else {

            $nmfile = "user_".time();
            $config['upload_path'] = './image/user';
            $config['allowed_types'] = 'jpg|png';
            $config['max_size'] = '20000';
            $config['file_name'] = $nmfile;
            $this->load->library('upload');
            $this->upload->initialize($config);
            $this->upload->do_upload('foto');
            $result1 = $this->upload->data();
            $result = array('gambar'=>$result1);
            $dfile = $result['gambar']['file_name'];
            //masukkan data ke database
            $data = array(
                'nama' => $this->input->post('nama',TRUE),
                'email' => $this->input->post('email',TRUE),
                'username' => $this->input->post('username',TRUE),
                'password' => $this->input->post('password',TRUE),
                'level' => $this->input->post('level',TRUE),
                'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
                'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
                'alamat' => $this->input->post('alamat',TRUE),
                'no_telp' => $this->input->post('no_telp',TRUE),
                'foto' => $dfile,
                );
                
            $this->m_sales->update($this->input->post('id_user', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('Data Berhasil di Update');
                window.location = '<?php echo base_url('sales'); ?>'
            </script>
            <?php
        }
    
}

public function cetak_pdf() {

    $pdf = new FPDF('P', 'mm','Letter');

    $pdf->AddPage();

    $pdf->SetFont('Arial','B',16);
    $pdf->Cell(0,7,'DATA SALES',0,1,'C');
    $pdf->Cell(10,7,'',0,1);

    $pdf->SetFont('Arial','B',10);

    $pdf->Cell(8,6,'No',1,0,'C');
    $pdf->Cell(30,6,'Username',1,0,'C');
    $pdf->Cell(20,6,'Level',1,0,'C');
    $pdf->Cell(30,6,'Nama',1,0,'C');
    $pdf->Cell(30,6,'tanggal Lahir',1,0,'C');
    $pdf->Cell(25,6,'Jenis Kelamin',1,0,'C');
    $pdf->Cell(25,6,'Alamat',1,0,'C');
    $pdf->Cell(25,6,'No Telp',1,1,'C');
    
    

    $pdf->SetFont('Arial','',10);
    $barang= $this->db->query("SELECT * FROM user WHERE level='sales' and del='0'")->result();
    $no=1;
    foreach ($barang as $data){
        $pdf->Cell(8,6,$no,1,0);
        $pdf->Cell(30,6,$data->username,1,0);
        $pdf->Cell(20,6,$data->level,1,0);
        $pdf->Cell(30,6,$data->nama,1,0);
        $pdf->Cell(30,6,$data->tgl_lahir,1,0);
        $pdf->Cell(25,6,$data->jenis_kelamin,1,0);
        $pdf->Cell(25,6,$data->alamat,1,0);
        $pdf->Cell(25,6,$data->no_telp,1,1);
       
        $no++;
    }
    $pdf->Output();


}
    //fungsi delete data database
    public function delete($id) 
    {
        $data = array(
            'del' => "1"

            );
            
            $this->db->where('id_user', $id);
            $this->db->update('user', $data);
            $this->db->where('id_user', $id);
                redirect(site_url('sales'));
        }
    }

    

    ?>