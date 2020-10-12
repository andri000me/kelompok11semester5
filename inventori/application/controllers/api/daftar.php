<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Daftar extends RestController{

public function index_post(){
    $data = [
    'email' => $this->post('email'),
    'username' => $this->post('username'),
    'password' => md5($this->post('password')),
    'level' => $this->post('level'),
    'nama' => $this->post('nama'),
    'tgl_lahir' => $this->post('tgl_lahir'),
    'jenis_kelamin' => $this->post('jenis_kelamin'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),
    'foto' => "pp.jpg"
    ];

    if($this->db->insert('user', $data) >0){

        $this->response( [
            'status' => true,
            'message' => 'anda berhasil daftar'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'gagal daftar'
        ], 400 );

    }


}


}