<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Sales extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_sales');
    }


    public function index_get(){

        if ($this->query('search')) {
            $penjualan = $this->db->select('*')
            ->from('user')
            ->where('level', 'sales')
            ->order_by('id_user', 'ASC')
            ->like('user.nama', $this->query('search'))
            ->get()
            ->result();
            $response['status'] = "success";
            $response['data'] = $penjualan;        
            $this->response($response, 200);
        } else {
    $id=$this->get('id');
    if($id==null) {
    $sales=$this->m_sales->getsales();
    }else {
        $sales=$this->m_sales->getsales($id);

    }
     
     

    if($sales) {

            $this->response( [
                'status' => true,
                'data' => $sales
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}
    }

public function index_delete($id){
  

    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_sales->deletesales($id)>0) {
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
    'level' => "sales",
    'nama' => $this->post('nama'),
    'tgl_lahir' => $this->post('tgl_lahir'),
    'jenis_kelamin' => $this->post('jenis_kelamin'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),
    'foto' => $dfile
    ];

    if($this->m_sales->createsales($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data sales berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data sales gagal ditambahkan'
        ], 400 );

    }


}


public function update_post($id_user) {

    $data = [
        'email' => $this->post('email'),
        'username' => $this->post('username'),
        'password' => $this->post('password'),
        'level' => "sales",
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
            $this->response(['status' => 'fail'], 400);
        }
    
    }
}