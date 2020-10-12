<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Home extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_keluar');
    }


    public function index_get(){

        if ($this->query('search')) {
            $penjualan = $this->db->select('detail_keluar.id_keluar, keluar.id_user, keluar.tgl_keluar, keluar.total_keluar, detail_keluar.id_barang, detail_keluar.qty_keluar, barang.nama_barang, barang.harga, user.nama')
            ->from('keluar')
            ->join('user', 'user.id_user=keluar.id_user')
            ->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar')
            ->join('barang', 'barang.id_barang=detail_keluar.id_barang')
            ->order_by('id_keluar', 'ASC')
            ->like('barang.nama_barang', $this->query('search'))
            ->get()
            ->result();
            $response['status'] = "success";
            $response['data'] = $penjualan;        
            $this->response($response, 200);
        } else {

    $id=$this->get('id');
    if($id==null) {
    $keluar=$this->m_keluar->getkeluar();
    }else {
        $keluar=$this->m_keluar->getkeluar($id);

    }
     
    
    if($keluar) {

            $this->response( [
                'status' => true,
                'data' => $keluar
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
            'message' => 'keluarkan id delete'
        ], 400 );
        }else {
            if($this->m_keluar->deletekeluar($id)>0) {
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
    'id_user' => $this->post('id_user'),
    'tgl_keluar' => date('Y-m-d h:i:sa'),
    'total_keluar' => $this->post('total_keluar'),
    ];

    $this->db->insert('keluar', $data);
  

    $d = [
        'id_keluar' => $this->db->insert_id(),
        'id_barang' => $this->post('id_barang'),
        'qty_keluar' => $this->post('qty_keluar'),
        ];
        $update= $this->db->insert('detail_keluar', $d);



    if ($update) {
        $this->response(['status' => 'success'], 200);
    } else {
        $this->response(['status' => 'fail'], 400);
    }


}



public function index_put($id) {

    $data = [
        'id_user' => $this->put('id_user'),
        'total_keluar' => $this->put('total_keluar'),
        ];

        $this->db->where('id_keluar', $id);
        $this->db->update('keluar', $data);
        $this->db->where('id_keluar', $id);
      
    
        $d = [
            'id_barang' => $this->put('id_barang'),
            'qty_keluar' => $this->put('qty_keluar'),
            ];
            $this->db->where('id_keluar', $id);
            $this->db->update('detail_keluar', $d);
            $this->db->where('id_keluar', $id);
    
    
    
        
    

}
}
