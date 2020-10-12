<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_detail extends CI_Model
{
	//deklarasi tabel
	public $table = 'barang';
    public $id = 'id_barang';
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
}