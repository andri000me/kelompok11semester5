<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Masuk extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_masuk');
    }


    public function index_get(){

        if ($this->query('search')) {
            $penjualan = $this->db->select('detail_masuk.id_masuk, masuk.id_supplier, masuk.tgl_masuk, masuk.total_masuk, detail_masuk.id_barang, detail_masuk.qty_masuk, barang.nama_barang, barang.harga, supplier.nama_supplier')
            ->from('masuk')
            ->join('supplier', 'supplier.id_supplier=masuk.id_supplier')
            ->join('detail_masuk', 'masuk.id_masuk=detail_masuk.id_masuk')
            ->join('barang', 'barang.id_barang=detail_masuk.id_barang')
            ->order_by('id_masuk', 'ASC')
            ->like('barang.nama_barang', $this->query('search'))
            ->get()
            ->result();
            $response['status'] = "success";
            $response['data'] = $penjualan;        
            $this->response($response, 200);
        } else {
    $id=$this->get('id');
    if($id==null) {
    $masuk=$this->m_masuk->getmasuk();
    }else {
        $masuk=$this->m_masuk->getmasuk($id);

    }
     
     

    if($masuk) {

            $this->response( [
                'status' => true,
                'data' => $masuk
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
            if($this->m_masuk->deletemasuk($id)>0) {
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
    'id_supplier' => $this->post('id_supplier'),
    'tgl_masuk' => date('Y-m-d h:i:sa'),
    'total_masuk' => $this->post('total_masuk'),
    ];

    $this->db->insert('masuk', $data);
  

    $d = [
        'id_masuk' => $this->db->insert_id(),
        'id_barang' => $this->post('id_barang'),
        'qty_masuk' => $this->post('qty_masuk'),
        ];
        $update= $this->db->insert('detail_masuk', $d);



    if ($update) {
        $this->response(['status' => 'success'], 200);
    } else {
        $this->response(['status' => 'fail'], 400);
    }


}


public function index_put($id) {

    $data = [
        'id_supplier' => $this->put('id_supplier'),
        'total_masuk' => $this->put('total_masuk'),
        ];

        $this->db->where('id_masuk', $id);
        $this->db->update('masuk', $data);
        $this->db->where('id_masuk', $id);
      
    
        $d = [
            'id_barang' => $this->put('id_barang'),
            'qty_masuk' => $this->put('qty_masuk'),
            ];
            $this->db->where('id_masuk', $id);
            $this->db->update('detail_masuk', $d);
            $this->db->where('id_masuk', $id);
    
    
        }
}