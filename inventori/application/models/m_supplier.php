<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_supplier extends CI_Model
{
	//deklarasi tabel
	public $table = 'supplier';
    public $id = 'id_supplier';
	public $order = 'DESC';
	
	//untuk tampilan home
	public function all(){  
		$hasil = $this->db->get('supplier'); 
		if($hasil->num_rows() > 0){ 
			return $hasil->result();
		} else {
			return array();
		}
    }


	//menghitung rows untuk pencarian dan dashboard
	public function total_rows() { 
        
	$this->db->or_like('nama_supplier');
    
	$this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data() { 
        $this->db->order_by($this->id, $this->order);
    
	$this->db->or_like('nama_supplier');
    $where = "supplier.del='0'";
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
    public function getsupplier($id=null){
        
        if($id==null) {

            $this->db->select('*');
            $this->db->from('supplier');

            return $this->db->get()->result();
        }else{
            $this->db->select('*');
            $this->db->from('supplier');


            return $this->db->get()->result();
        }
        
    }

   public function deletesupplier($id){
        $this->db->delete('supplier', ['id_supplier' =>$id]);
        return $this->db->affected_rows();
    }

    public function createsupplier($data){

        $this->db->insert('supplier', $data);
        return $this->db->affected_rows();
    }


    public function updatesupplier($data, $id){

        $this->db->update('supplier', $data, ['id_supplier' =>$id]);
        return $this->db->affected_rows();
    }
}