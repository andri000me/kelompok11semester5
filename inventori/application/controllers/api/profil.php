<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Profil extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_user');
    }


    public function index_get($id_user){


        $user=$this->m_user->getprofil($id_user);

    
    if($user) {

            $this->response( [
                'status' => true,
                'data' => $user
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}

public function index_delete($id){


    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_user->deleteuser($id)>0) {
                $this->response( [
                    'status' => true,
                    'id'=> $id,
                    'message' => 'data berhasil dihapus'
                ], 200 );
            }else{
                $this->response( [
                    'status' => false,
                    'message' => 'id tidak ditemukan'
                ], 404 );

            }
        }
}

public function index_post(){

    $nmfile = "user_".time();
    $config['upload_path'] = './image/user/';
    $config['allowed_types'] = 'gif|jpg|png|jpeg';
    $config['max_size'] = '160000000';
    $config['file_name'] = $nmfile;

    $this->load->library('upload');
    $this->upload->initialize($config);
    $this->upload->do_upload('foto');
    $result1 = $this->upload->data();
    $result = array('user'=>$result1);
    $dfile = $result['user']['file_name'];
    
    $data = [
    'email' => $this->post('email'),
    'username' => $this->post('username'),
    'password' => $this->post('password'),
    'level' => "admin",
    'nama' => $this->post('nama'),
    'tgl_lahir' => $this->post('tgl_lahir'),
    'jenis_kelamin' => $this->post('jenis_kelamin'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),
    'foto' => $dfile
    
    ];

    if($this->m_user->createuser($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data user berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data user gagal ditambahkan'
        ], 400 );

    }


}


public function update_post($id_user) {

    $data = [
        'email' => $this->post('email'),
        'username' => $this->post('username'),
        'password' => $this->post('password'),
        'level' => $this->post('level'),
        'nama' => $this->post('nama'),
        'tgl_lahir' => $this->post('tgl_lahir'),
        'jenis_kelamin' => $this->post('jenis_kelamin'),
        'alamat' => $this->post('alamat'),
        'no_telp' => $this->post('no_telp'),
   
        ];

        $config['upload_path'] = './image/user/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['encrypt_name'] = TRUE;
        $config['max_size'] = '160000000';
        $config['max_width']  = '1110024';
        $config['max_height']  = '115768';
    
        $this->load->library('upload');
        $this->upload->initialize($config);
        
        if ($this->upload->do_upload('foto')) {            
            $foto_barang = array('upload_data' => $this->upload->data());
            $file_name = $foto_barang['upload_data']['file_name'];
            $data['foto'] = $file_name;
    
            $this->db->where('id_user', $id_user);
            $data_foto_barang = $this->db->get('user')->row_array();
            $foto_barang = $data_foto_barang['foto'];
            $path = './image/user/'.$foto_barang;
            unlink($path);
        }



        $this->db->where('id_user', $id_user);
        $update = $this->db->update('user', $data);
    
        if ($update) {
            $this->response(['status' => 'success'], 200);
        } else {
            $this->response(['status' => 'fail'], 200);
        }
    
    }
}