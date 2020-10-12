<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_activity extends CI_Model
{
	//deklarasi tabel
	public $table = 'activity';
    public $id = 'id_activity';
	public $order = 'DESC';
	
	//untuk tampilan home
	public function all(){  
		$hasil = $this->db->get('activity'); 
		if($hasil->num_rows() > 0){ 
			return $hasil->result();
		} else {
			return array();
		}
    }


	//menghitung rows untuk pencarian dan dashboard
	public function total_rows() { 
        $this->db->like('id_activity');
	$this->db->or_like('tgl_activity');
	$this->db->or_like('keterangan');
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data() { 
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_activity');
	$this->db->or_like('tgl_activity');
	$this->db->or_like('keterangan');
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
	}
	
	 // memanggil id yang akan digunakan untuk edit dan delete
	function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
}