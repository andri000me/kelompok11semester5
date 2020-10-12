<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;
class Carousel extends RestController{

    function __construct()
    {
        // Construct the parent class
        parent::__construct();
        $this->load->model('m_carousel');
    }


    public function index_get(){


    $id=$this->get('id');
    if($id==null) {
    $carousel=$this->m_carousel->getcarousel();
    }else {
        $carousel=$this->m_carousel->getcarousel($id);

    }
     
     

    if($carousel) {

            $this->response( [
                'status' => true,
                'data' => $carousel
            ], 200 );
     
    }else {
        $this->response( [
            'status' => false,
            'message' => 'id tidak ditemukan'
        ], 404 );
    }
}

public function index_delete(){
    $id=$this->delete('id');

    if($id==null) {
        $this->response ([
            'status' => false,
            'message' => 'masukkan id delete'
        ], 400 );
        }else {
            if($this->m_carousel->deletecarousel($id)>0) {
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
    'judul' => $this->post('judul'),
    'isi' => $this->post('isi'),
    'gambar' => $this->post('gambar'),

    ];

    if($this->m_carousel->createcarousel($data) >0){

        $this->response( [
            'status' => true,
            'message' => 'data carousel berhasil ditambah'
        ], 200 );
    } else {
        $this->response( [
            'status' => false,
            'message' => 'data carousel gagal ditambahkan'
        ], 400 );

    }


}


public function index_put() {
    $id=$this->put('id');
    $data = [
    'judul' => $this->put('judul'),
    'isi' => $this->put('isi'),
    'gambar' => $this->put('gambar'),
        ];

        if($this->m_carousel->updatecarousel($data, $id) >0){

            $this->response( [
                'status' => true,
                'message' => 'data carousel berhasil diupdate'
            ], 200 );
        } else {
            $this->response( [
                'status' => false,
                'message' => 'data carousel gagal diupdate'
            ], 400 );
    
        }
    }
}