<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_nourut extends CI_Model
{


     function buat_kode_penjualan()   {    
      $this->db->select('RIGHT(keluar.id_keluar,5) as kode', FALSE);
      $this->db->order_by('id_keluar','DESC');    
      $this->db->limit(1);     
      $query = $this->db->get('keluar');      //cek dulu apakah ada sudah ada kode di tabel.    
      if($query->num_rows() <> 0){       
       //jika kode ternyata sudah ada.      
       $data = $query->row();      
       $kode = intval($data->kode) + 1;     
      }
      else{       
       //jika kode belum ada      
       $kode = 1;     
      }   
      return $kode;  
     }

     function buat_kode_pembelian()   {    
        $this->db->select('RIGHT(masuk.id_masuk,5) as kode', FALSE);
        $this->db->order_by('id_masuk','DESC');    
        $this->db->limit(1);     
        $query = $this->db->get('masuk');      //cek dulu apakah ada sudah ada kode di tabel.    
        if($query->num_rows() <> 0){       
         //jika kode ternyata sudah ada.      
         $data = $query->row();      
         $kode = intval($data->kode) + 1;     
        }
        else{       
         //jika kode belum ada      
         $kode = 1;     
        }   
        return $kode;  
       }
    
}
