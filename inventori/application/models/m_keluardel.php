<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_keluardel extends CI_Model
{

    public $table = 'keluar';

    public function total_rows()
    {
        if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
        $this->db->or_like('nama');
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(keluar.del='1' and detail_keluar.status='2' and keluar.status='0' and keluar.foto_keluar is null) or (detail_keluar.status='3' and keluar.del='1' and keluar.status='0' and keluar.foto_keluar is null)";
        $this->db->where($where);
        
        }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
            $id = $this->session->userdata('id_user');
            $this->db->or_like('nama');
            $this->db->distinct();
            $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
            $this->db->from('keluar');
            $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            $where = "(keluar.del='1' and detail_keluar.status='2' and user.id_user=$id and keluar.status='0' and keluar.foto_keluar is null) or (keluar.del='1' and detail_keluar.status='3' and user.id_user=$id and keluar.status='0' and keluar.foto_keluar is null)";
            $this->db->where($where);
                 
    }
    return $this->db->count_all_results();   
}



 



    function get_limit_data() { //membubat seacrh dan pagination

    if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
    $this->db->order_by('keluar.id_keluar', 'DESC');
    $this->db->or_like('nama');
    $this->db->distinct();
    $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
    $this->db->from('keluar');
    $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
    $this->db->join('user', 'user.id_user=keluar.id_user');
    $where = "(keluar.del='1' and detail_keluar.status='2' and keluar.status='0' and keluar.foto_keluar is null) or (detail_keluar.status='3' and keluar.del='1' and keluar.status='0' and keluar.foto_keluar is null)";
    $this->db->where($where);
        return $this->db->get()->result();
    }

    else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
        $this->db->order_by('keluar.id_keluar', 'DESC');
        $this->db->or_like('nama');
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(keluar.del='1' and detail_keluar.status='2' and user.id_user=$id and keluar.status='0' and keluar.foto_keluar is null) or (keluar.del='1' and detail_keluar.status='3' and user.id_user=$id and keluar.status='0' and keluar.foto_keluar is null)";
        $this->db->where($where);
            return $this->db->get()->result();
}
    }

    //API API API
    public function getkeluar($id=null){
        
        if($id==null) {

            $this->db->select('*');
            $this->db->from('keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            return $this->db->get()->result();
        }else{
            $this->db->select('*');
            $this->db->from('keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            $where = "id_keluar=$id";
            $this->db->where($where);
            return $this->db->get()->result();
        }
        
    }

   public function deletekeluar($id){
        $this->db->delete('keluar', ['id_keluar' =>$id]);
        return $this->db->affected_rows();
    }

    public function createkeluar($data){

        $this->db->insert('keluar', $data);
        return $this->db->affected_rows();
    }


    public function updatekeluar($data, $id){

        $this->db->update('keluar', $data, ['id_keluar' =>$id]);
        return $this->db->affected_rows();
    }
}

