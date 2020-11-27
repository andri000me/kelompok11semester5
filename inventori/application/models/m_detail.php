<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_detail extends CI_Model
{
    //deklarasi tabel
    public $table = 'barang';
    public $id = 'id_barang';
    public $ids = 'barang.id_barang';
    public $terjual = 'terjual';
    public $order = 'DESC';


    function get_by_id($id)
    {
        $this->db->select('*');
        $this->db->from('barang');
        $this->db->join('supplier', 'supplier.id_supplier=barang.id_supplier');
        $this->db->where($this->id, $id);
        return $this->db->get()->row();
    }

    function diskusi($id)
    {
        $this->db->select('*');
        $this->db->from('diskusi');
        $this->db->join('user', 'user.id_user=diskusi.id_user');
        $this->db->join('barang', 'barang.id_barang=diskusi.id_barang');
        $this->db->where($this->ids, $id);
        return $this->db->get()->result();
    }

    function rating($id)
    {
        $this->db->select('*');
        $this->db->from('rating');
        $this->db->join('user', 'user.id_user=rating.id_user');
        $this->db->join('barang', 'barang.id_barang=rating.id_barang');
        $this->db->where($this->ids, $id);
        return $this->db->get()->result();
    }

    function bintang($id)
    {
        $this->db->select_avg('bintang_rating');
        $this->db->from('rating');
        $this->db->where($this->id, $id);
        return $this->db->get()->result();
    }
}
