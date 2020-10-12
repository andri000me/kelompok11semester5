
<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_masuk extends CI_Model
{
	//deklarasi tabel
	public $table = 'masuk';
    public $id = 'id_masuk';
    
	public $order = 'DESC';
	
	//untuk tampilan home


	//menghitung rows untuk pencarian dan dashboard
	public function total_rows() { //untuk memunculkan record
        $this->db->like('id_masuk');
        $this->db->select('*');
        $this->db->from('masuk');
        $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
        $where = "masuk.del='0'";
    $this->db->where($where);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data() { //membubat seacrh dan pagination
        
    
    $this->db->select('*');
    $this->db->from('masuk');
    $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
    $where = "masuk.del='0'";
    $this->db->where($where);
        return $this->db->get()->result();
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
        $this->db->select('*');
        $this->db->from('masuk');
        $this->db->join('detail_masuk', 'masuk.id_masuk=detail_masuk.id_masuk');
        $this->db->where($this->id, $id);
        return $this->db->get()->row();
    }











  //API API API
    public function getmasuk($id=null){
        
        if($id==null) {

            $this->db->select('detail_masuk.id_masuk, masuk.id_supplier, masuk.tgl_masuk, masuk.total_masuk, detail_masuk.id_barang, detail_masuk.qty_masuk, barang.nama_barang, barang.harga, supplier.nama_supplier');
            $this->db->from('masuk');
            $this->db->join('detail_masuk', 'masuk.id_masuk=detail_masuk.id_masuk');
            $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
            $this->db->join('barang', 'barang.id_barang=detail_masuk.id_barang');
           
            return $this->db->get()->result();
        }else{
            $this->db->select('*');
            $this->db->from('masuk');
            $this->db->join('detail_masuk', 'masuk.id_masuk=detail_masuk.id_masuk');
            $this->db->join('supplier', 'supplier.id_supplier=masuk.id_supplier');
            $this->db->join('barang', 'barang.id_barang=detail_masuk.id_barang');
            $where = "id_masuk=$id";
            $this->db->where($where);
            return $this->db->get()->result();
        }
        
    }

   public function deletemasuk($id){
        $this->db->delete('masuk', ['id_masuk' =>$id]);
        return $this->db->affected_rows();
    }

    public function createmasuk($data){

        $this->db->insert('masuk', $data);
        return $this->db->affected_rows();
    }


    public function updatemasuk($data, $id){

        $this->db->update('masuk', $data, ['id_masuk' =>$id]);
        return $this->db->affected_rows();
    }
}