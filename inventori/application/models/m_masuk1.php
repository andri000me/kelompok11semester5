<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_masuk1 extends CI_Model
{
    public $id = 'id_masuk';
	public $order = 'DESC';
    public $table = 'masuk';

    public function total_rows($q = NULL)
    {
        $this->db->or_like('nama_supplier', $q);
    $this->db->select('*');
    $this->db->from('masuk');
    $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
    $where = "masuk.del='1'";
    $this->db->where($where);
            return $this->db->count_all_results();
    }


    function get_limit_data($limit, $per_page = 0, $q = NULL) { //membubat seacrh dan pagination
        $this->db->order_by($this->id, $this->order);
	$this->db->or_like('nama_supplier', $q);
    $this->db->select('*');
    $this->db->from('masuk');
    $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
    $where = "masuk.del='1'";
    $this->db->where($where);
	$this->db->limit($limit, $per_page);
        return $this->db->get()->result();
    }

    function get_by_id($id)
    {

    $this->db->select('*');
    $this->db->from('masuk');
    $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
    $this->db->where($this->id, $id);
        return $this->db->get()->row();
    }
}