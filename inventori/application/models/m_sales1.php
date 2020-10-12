<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_sales1 extends CI_Model
{
	//deklarasi tabel
    public $table = 'user';
    public $id = 'id_user';
	public $order = 'DESC';
	

	//menghitung rows untuk pencarian dan dashboard
	public function total_rows() {
    $this->db->or_like('nama');
    $where = "level='sales' and user.del='1'";
    $this->db->where($where);
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data() {
        $this->db->order_by($this->id, $this->order);
	$this->db->or_like('nama');
    $where = "level='sales' and user.del='1'";
    $this->db->where($where);
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

    
    //API API API
    public function getsales($id=null){
        
        if($id==null) {

            $this->db->select('*');
            $this->db->from('user');
            $where = "level='sales'";
            $this->db->where($where);
            return $this->db->get()->result();
        }else{
            $this->db->select('*');
            $this->db->from('user');
            $where = "level='sales' and id_user=$id";
            $this->db->where($where);
            return $this->db->get()->result();
        }
        
    }

   public function deletesales($id){
        $this->db->delete('user', ['id_user' =>$id]);
        return $this->db->affected_rows();
    }

    public function createsales($data){

        $this->db->insert('user', $data);
        return $this->db->affected_rows();
    }


    public function updatesales($data, $id){

        $this->db->update('user', $data, ['id_user' =>$id]);
        return $this->db->affected_rows();
    }
}