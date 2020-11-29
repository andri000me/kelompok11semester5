<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_komplain extends CI_Model
{
    //deklarasi tabel
    public $table = 'komplain';
    public $id = 'id_komplain';
    public $order = 'DESC';

    //untuk tampilan home
    public function all()
    {
        $hasil = $this->db->get('komplain');
        if ($hasil->num_rows() > 0) {
            return $hasil->result();
        } else {
            return array();
        }
    }


    //menghitung rows untuk pencarian dan dashboard
    public function total_rows()
    {
        $this->db->like('id_komplain');
        $this->db->or_like('id_keluar');
        $this->db->or_like('tgl_komplain');
        $this->db->or_like('isi_komplain');
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // untuk limit halaman dan pencarian
    function get_limit_data()
    {

        if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') {
            $this->db->order_by($this->id, $this->order);
            $this->db->like('id_komplain');
            $this->db->select('user.nama, komplain.id_keluar, komplain.isi_komplain, komplain.tgl_komplain, komplain.id_komplain');
            $this->db->from('komplain');
            $this->db->join('keluar', 'keluar.id_keluar=komplain.id_keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            return $this->db->get()->result();
        }
        if ($this->session->userdata('level') == 'sales' or $this->session->userdata('level') == 'customer') {
            $id = $this->session->userdata('id_user');
            $this->db->order_by($this->id, $this->order);
            $this->db->like('id_komplain');
            $this->db->select('user.nama, komplain.id_keluar, komplain.isi_komplain, komplain.tgl_komplain, komplain.id_komplain');
            $this->db->from('komplain');
            $this->db->join('keluar', 'keluar.id_keluar=komplain.id_keluar');
            $this->db->join('user', 'user.id_user=keluar.id_user');
            $where = "user.id_user=$id";
            $this->db->where($where);
            return $this->db->get()->result();
        }
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
