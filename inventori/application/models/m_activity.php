<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_activity extends CI_Model
{
    public $table = 'activity';
    public $id = 'id_activity';
    public $order = 'DESC';

    public function all()
    {
        $hasil = $this->db->get('activity');
        if ($hasil->num_rows() > 0) {
            return $hasil->result();
        } else {
            return array();
        }
    }

    public function total_rows()
    {
        $this->db->like('id_activity');
        $this->db->or_like('tgl_activity');
        $this->db->or_like('keterangan');
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    function get_limit_data()
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_activity');
        $this->db->or_like('tgl_activity');
        $this->db->or_like('keterangan');
        return $this->db->get($this->table)->result();
    }

    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
}
