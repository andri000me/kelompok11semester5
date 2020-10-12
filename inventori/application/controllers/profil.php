<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Profil extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url');
		$this->load->helper('html'); 
        $this->load->model('m_barang');
        $this->load->model('m_user');
        $this->load->library('pagination');
        $this->load->library('upload'); 
		$this->load->helper('form');
	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
        $this->load->view('v_profil'); 
    }
    
    public function update_action() 
    {
        $p=$this->input->post('password');
        $p1=$this->input->post('password1');
        if (!empty($p) && !empty($p1)) {
            if  ($p==$p1) {
        //jika gambar tidak diinput oleh user 
        if (empty($_FILES["foto"]["name"])) {  
        $data = array(
        'nama' => $this->input->post('nama',TRUE),
        'email' => $this->input->post('email',TRUE),
		'username' => $this->input->post('username',TRUE),
        'password' => md5($this->input->post('password',TRUE)),
        'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
        'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
        'alamat' => $this->input->post('alamat',TRUE),
        'no_telp' => $this->input->post('no_telp',TRUE),
		'level' => $this->input->post('level',TRUE),
	    );

            $this->m_user->update($this->input->post('id_user', TRUE), $data);
            ?>
        <script type="text/javascript">
			alert('data profil berhasil di update');
			window.location = '<?php echo base_url('profil'); ?>'
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
                'password' => md5($this->input->post('password',TRUE)),
                'level' => $this->input->post('level',TRUE),
                'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
                'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
                'alamat' => $this->input->post('alamat',TRUE),
                'no_telp' => $this->input->post('no_telp',TRUE),
                'foto' => $dfile,
                );
                
            $this->m_user->update($this->input->post('id_user', TRUE), $data);
            ?>
            <script type="text/javascript">
                alert('data profil berhasil di update');
                window.location = '<?php echo base_url('profil'); ?>'
            </script>
            <?php

        }
    }else{
        echo "<script>alert('Password yang Anda Masukan Tidak Sama');history.go(-1)</script>";
        
}
    }else{
           
        if (empty($_FILES["foto"]["name"])) {  
            $data = array(
            'nama' => $this->input->post('nama',TRUE),
            'email' => $this->input->post('email',TRUE),
            'username' => $this->input->post('username',TRUE),
            
            'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
            'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
            'alamat' => $this->input->post('alamat',TRUE),
            'no_telp' => $this->input->post('no_telp',TRUE),
            'level' => $this->input->post('level',TRUE),
            );
    
                $this->m_user->update($this->input->post('id_user', TRUE), $data);
                ?>
            <script type="text/javascript">
                alert('data profil berhasil di update');
                window.location = '<?php echo base_url('profil'); ?>'
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
                   
                    'level' => $this->input->post('level',TRUE),
                    'tgl_lahir' => $this->input->post('tgl_lahir',TRUE),
                    'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
                    'alamat' => $this->input->post('alamat',TRUE),
                    'no_telp' => $this->input->post('no_telp',TRUE),
                    'foto' => $dfile,
                    );
                    
                $this->m_user->update($this->input->post('id_user', TRUE), $data);
                ?>
                <script type="text/javascript">
                   alert('data profil berhasil di update');
                    window.location = '<?php echo base_url('profil'); ?>'
                </script>
                <?php
    
            }   
    }
    
}
}
?>