<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Barang extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_barang');
    }


    public function index_get(){
        if ($this->query('search')) {
            $penjualan = $this->db->select('*')
            ->from('barang')
            ->order_by('id_barang', 'ASC')
            ->like('barang.nama_barang', $this->query('search'))
            ->get()
            ->result();
            $response['status'] = "success";
            $response['data'] = $penjualan;        
            $this->response($response, 200);
        } else {

    $id=$this->get('id');
    if($id==null) {
    $barang=$this->m_barang->getbarang();
    }else {
        $barang=$this->m_barang->getbarang($id);

    }
     
     

    if($barang) {

            $this->response( [
                'status' => true,
                'data' => $barang
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}
    }
public function list_get()
{
    $barang = $this->db
                    ->select('id_barang, nama_barang, harga')
                    ->get('barang')
                    ->result();
    $response['status'] = "success";
    $response['data'] = $barang;
    
    $this->response($response, 200);
}

public function index_delete($id){


    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_barang->deletebarang($id)>0) {
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
    $nmfile = "barang_".time();
    $config['upload_path'] = './image/barang/';
    $config['allowed_types'] = 'gif|jpg|png|jpeg';
    $config['max_size'] = '160000000';
    $config['file_name'] = $nmfile;

    $this->load->library('upload');
    $this->upload->initialize($config);
    $this->upload->do_upload('foto_barang');
    $result1 = $this->upload->data();
    $result = array('barang'=>$result1);
    $dfile = $result['barang']['file_name'];

    $data = [
    'nama_barang' => $this->post('nama_barang'),
    'harga' => $this->post('harga'),
    'stok' => $this->post('stok'),
    'kemasan' => $this->post('kemasan'),
    'jenis' => $this->post('jenis'),
    'merk' => $this->post('merk'),
    'id_supplier' => $this->post('id_supplier'),
    'terjual'=> $this->post('terjual'),
    'foto_barang' => $dfile,
    ];

    if($this->m_barang->createbarang($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data barang berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data barang gagal ditambahkan'
        ], 400 );

    }


}


public function update_post($id_barang){

    $data = [
        'nama_barang' => $this->post('nama_barang'),
        'harga' => $this->post('harga'),
        'stok' => $this->post('stok'),
        'kemasan' => $this->post('kemasan'),
        'jenis' => $this->post('jenis'),
        'merk' => $this->post('merk'),
        'id_supplier' => $this->post('id_supplier'),
        'terjual'=> $this->post('terjual'),
 
        ];

    $config['upload_path'] = './image/barang/';
    $config['allowed_types'] = 'gif|jpg|png|jpeg';
    $config['encrypt_name'] = TRUE;
    $config['max_size'] = '160000000';
    $config['max_width']  = '1110024';
    $config['max_height']  = '115768';

    $this->load->library('upload');
    $this->upload->initialize($config);
    
    if ($this->upload->do_upload('foto_barang')) {            
        $foto_barang = array('upload_data' => $this->upload->data());
        $file_name = $foto_barang['upload_data']['file_name'];
        $data['foto_barang'] = $file_name;

        $this->db->where('id_barang', $id_barang);
        $data_foto_barang = $this->db->get('barang')->row_array();
        $foto_barang = $data_foto_barang['foto_barang'];
        $path = './image/barang/'.$foto_barang;
        unlink($path);
    }
    
    $this->db->where('id_barang', $id_barang);
    $update = $this->db->update('barang', $data);

    if ($update) {
        $this->response(['status' => 'success'], 200);
    } else {
        $this->response(['status' => 'fail'], 200);
    }

}

}
