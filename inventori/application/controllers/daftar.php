<?php
class Daftar extends CI_Controller {
    //menampilkan form pendaftaran
    public function index() 
    { 
            $this->load->view('v_header');
            $this->load->view('v_daftar');
    } 
    //untuk menyimpan registrasi
    public function simpan_daftar() 
	{
        if ($_POST['password']==$_POST['password1'] ) {
		$email = $this->input->post('email');
		$username = $this->input->post('username');
		$password = md5($this->input->post('password'));
		$level = $this->input->post('level');
		$nama = $this->input->post('nama');
		$tgl_lahir = $this->input->post('tgl_lahir');
		$jenis_kelamin = $this->input->post('jenis_kelamin');
		$data = array(
			'email' => $email,
			'username' => $username,
			'password' => $password,
			'level' => $level,
			'nama' => $nama,
			'tgl_lahir' => $tgl_lahir,
			'jenis_kelamin' => $jenis_kelamin,
			'foto' => "pp.jpg",
		);

		$this->db->insert('user', $data);
        ?>

		<script type="text/javascript">
			alert('Pendaftaran Berhasil, Silahkan Login');
			window.location = '<?php echo base_url('login'); ?>'
        </script>
        
         <?php  }else {
            echo "<script>alert('Password yang Anda Masukan Tidak Sama');history.go(-1)</script>";
            }
       
	    }
  
    }
        ?>