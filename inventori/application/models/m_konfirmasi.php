<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_konfirmasi extends CI_Model
{



    public function total_rows()
    {
        if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
    
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0') or (detail_keluar.status='1' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0')";
        $this->db->where($where);

        }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
   ;
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is null and user.id_user=$id and keluar.del='0' and keluar.status='0') or (detail_keluar.status='1' and keluar.foto_keluar is null and user.id_user=$id and keluar.del='0' and keluar.status='0')";
        $this->db->where($where);
        
    }
            return $this->db->count_all_results();
}

   
    function get_limit_data() { //membubat seacrh dan pagination
    if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
    $this->db->order_by('keluar.id_keluar', 'DESC');
 
    $this->db->distinct();
    $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
    $this->db->from('keluar');
    $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
    $this->db->join('user', 'user.id_user=keluar.id_user');
    $where = "(detail_keluar.status='0' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0') or (detail_keluar.status='1' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0')";
    $this->db->where($where);


    }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
        $this->db->order_by('keluar.id_keluar', 'DESC');

        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is null and user.id_user=$id and keluar.del='0' and keluar.status='0') or (detail_keluar.status='1' and keluar.foto_keluar is null and user.id_user=$id and keluar.del='0' and keluar.status='0')";
        $this->db->where($where);


        
    }

    return $this->db->get()->result();
}



 //API API API
 public function getkonfirmasi($id=null){
        
    if($id==null) {

        $this->db->select('detail_keluar.id_keluar, keluar.id_user, keluar.tgl_keluar, keluar.total_keluar, detail_keluar.id_barang, detail_keluar.qty_keluar, barang.nama_barang, barang.harga, user.nama');
        $this->db->from('keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('barang', 'barang.id_barang=detail_keluar.id_barang');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0') or (detail_keluar.status='1' and keluar.foto_keluar is null and keluar.del='0' and keluar.status='0')";
        $this->db->order_by('keluar.id_keluar', 'DESC');
        $this->db->where($where);

        return $this->db->get()->result();
    }else{
        $this->db->select('*');
        $this->db->from('keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('barang', 'barang.id_barang=detail_keluar.id_barang');

        $where = "id_keluar=$id";
        $this->db->where($where);
        return $this->db->get()->result();
    }
    
}

public function deletekonfirmasi($id){
    $this->db->delete('keluar', ['id_keluar' =>$id]);
    return $this->db->affected_rows();
}

public function createkonfirmasi($data){

    $this->db->insert('keluar', $data);
    return $this->db->affected_rows();
}


public function updatekonfirmasi($data, $id){

    $this->db->update('keluar', $data, ['id_keluar' =>$id]);
    return $this->db->affected_rows();
}


}
