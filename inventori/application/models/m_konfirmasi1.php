<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_konfirmasi1 extends CI_Model
{



    public function total_rows()
    {
        if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
        $this->db->or_like('nama');
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is not null and keluar.del='0') or (detail_keluar.status='1' and keluar.foto_keluar is not null and keluar.del='0')";
        $this->db->where($where);

        }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
        $this->db->or_like('nama');
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is not null and user.id_user=$id and keluar.del='0') or (detail_keluar.status='1' and keluar.foto_keluar is not null and user.id_user=$id and keluar.del='0')";
        $this->db->where($where);
        
    }
            return $this->db->count_all_results();
}

   
    function get_limit_data() { //membubat seacrh dan pagination
    if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
    $this->db->order_by('keluar.id_keluar', 'DESC');
    $this->db->or_like('nama');
    $this->db->distinct();
    $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
    $this->db->from('keluar');
    $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
    $this->db->join('user', 'user.id_user=keluar.id_user');
    $where = "(detail_keluar.status='0' and keluar.foto_keluar is not null and keluar.del='0') or (detail_keluar.status='1' and keluar.foto_keluar is not null and keluar.del='0')";
    $this->db->where($where);
   

    }else if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
        $id = $this->session->userdata('id_user');
        $this->db->order_by('keluar.id_keluar', 'DESC');
        $this->db->or_like('nama');
        $this->db->distinct();
        $this->db->select("keluar.id_keluar, keluar.foto_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp");
        $this->db->from('keluar');
        $this->db->join('detail_keluar', 'keluar.id_keluar=detail_keluar.id_keluar');
        $this->db->join('user', 'user.id_user=keluar.id_user');
        $where = "(detail_keluar.status='0' and keluar.foto_keluar is not null and user.id_user=$id and keluar.del='0') or (detail_keluar.status='1' and keluar.foto_keluar is not null and user.id_user=$id and keluar.del='0')";
        $this->db->where($where);


        
    }

    return $this->db->get()->result();
}

}
