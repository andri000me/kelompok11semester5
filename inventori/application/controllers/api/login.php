<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Login extends RestController{


    public function index_post() {

        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $cek_user = $this->db->query("SELECT * FROM user WHERE username='$username' and password='$password' ");
        foreach ($cek_user->result() as $row) {
            $data['id_user'] = $row->id_user;
            $data['email'] = $row->email;
            $data['username'] = $row->username;
            $data['password'] = $row->password;
            $data['level'] = $row->level;
            $data['nama'] = $row->nama;
            $data['tgl_lahir'] = $row->tgl_lahir;
            $data['jenis_kelamin'] = $row->jenis_kelamin;
            $data['alamat'] = $row->alamat;
            $data['no_telp'] = $row->no_telp;
            $data['foto'] = $row->foto;
      
        }
        
        if ($cek_user->num_rows() == 1) {

                $this->response( [
                    'status' => true,
                    'message' => 'anda berhasil login',
                    'id_user' => $data['id_user'],
                    'email' => $data['email'],
                    'username' => $data['username'],
                    'password' => $data['password'],
                    'level' => $data['level'],
                    'nama' => $data['nama'],
                    'tgl_lahir' => $data['tgl_lahir'],
                    'jenis_kelamin' => $data['jenis_kelamin'],
                    'alamat' => $data['alamat'],
                    'no_telp' => $data['no_telp'],
                    'foto' => $data['foto'],
                    
                   
                ], 200 );
            } else {
                $this->response( [
                    'status' => false,
                    'message' => 'login gagal'
                ], 400 );
        
            }
        }
    }

        
        