<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Supplier extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_supplier');
    }


    public function index_get(){

        if ($this->query('search')) {
            $penjualan = $this->db->select('*')
            ->from('supplier')
            ->order_by('id_supplier', 'ASC')
            ->like('supplier.nama_supplier', $this->query('search'))
            ->get()
            ->result();
            $response['status'] = "success";
            $response['data'] = $penjualan;        
            $this->response($response, 200);
        } else {
    $id=$this->get('id');
    if($id==null) {
    $supplier=$this->m_supplier->getsupplier();
    }else {
        $supplier=$this->m_supplier->getsupplier($id);

    }
     
     

    if($supplier) {

            $this->response( [
                'status' => true,
                'data' => $supplier
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
                    ->select('id_supplier, nama_supplier')
                    ->get('supplier')
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
            if($this->m_supplier->deletesupplier($id)>0) {
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
    $data = [
    'nama_supplier' => $this->post('nama_supplier'),
    'alamat' => $this->post('alamat'),
    'no_telp' => $this->post('no_telp'),

    ];

    if($this->m_supplier->createsupplier($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data supplier berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data supplier gagal ditambahkan'
        ], 400 );

    }


}


public function index_put($id) {
    $data = [
        'nama_supplier' => $this->put('nama_supplier'),
        'alamat' => $this->put('alamat'),
        'no_telp' => $this->put('no_telp'),
        ];

        if($this->m_supplier->updatesupplier($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data supplier berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data supplier gagal diupdate'
            ], 400 );
    
        }
}
}