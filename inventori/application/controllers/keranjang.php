<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Keranjang extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
		$this->load->helper(array('form', 'url')); 
		$this->load->model('m_keluar');
		
	}
 //menampilkan barang pada home
	public function index(){	

		$this->load->view('v_header');
		$this->load->model('m_nourut');

		$data = array(

			'kode' => $this->m_nourut->buat_kode_penjualan(),
			
		);

	
		if ($this->session->userdata('level') != NULL) {
			$this->load->view('v_keranjang',$data);
        }else{
			?>
			<script type="text/javascript">
				alert('Anda harus login dulu');
				window.location = '<?php echo base_url('login'); ?>'
			</script>
			<?php
			
		}
				 
		
		$this->load->view('v_footer'); 

	}


	public function simpan()
	{
		
		if($this->input->post('jumlah')<$this->input->post('stok')){

		
			$data = array(
				'id'    => $this->input->post('id_barang'),
				'qty'   => $this->input->post('jumlah'),
				'stok' => $this->input->post('stok'),
				'price' => $this->input->post('harga'),
				'name'  => $this->input->post('nabar'),
			);
			
			$this->cart->insert($data);
			redirect('keranjang');

		}else {
			echo "<script>alert('Stok barang tidak cukup! Silahkan kurangi jumlah pembelian.');window.history.back();</script>";
			}
	
	}

	
	public function hapus_cart($id)
	{
		
        $data = array(
            'rowid'    => $id,
            'qty'   => 0,
        );
        $this->cart->update($data);
        redirect('keranjang');
	}


	public function simpan_penjualan()
	{
		if(isset($_POST['filter']) && ! empty($_POST['filter'])){ // Cek apakah user telah memilih filter dan klik tombol tampilkan
			$filter = $_POST['filter']; // Ambil data filder yang dipilih user
			if($filter == '1'){ // Jika filter nya 1 (per tanggal)

        $kode_penjualan = $this->input->post('kode_penjualan');
        $total_keluar = $this->input->post('total_keluar');
        $tgl_penjualan = $this->input->post('tgl_penjualan');
        $id_user = $this->input->post('id_user');

        $data = array(
        	
            'id_keluar'=> $kode_penjualan,
            'total_keluar'=> $total_keluar,
			'tgl_keluar'=> $tgl_penjualan,
			'id_user'=> $id_user,
			
        );
        $this->db->insert('keluar', $data);

	
	foreach ($this->cart->contents() as $items) {
		$id_barang = $items['id'];
		$qty_keluar = $items['qty'];
		$d = array(
			'id_keluar' => $kode_penjualan,
			'id_barang' => $id_barang,
			'qty_keluar' => $qty_keluar,
			'status' => "0",
			
		);
		$this->db->insert('detail_keluar', $d);
		
		//$this->db->query("UPDATE menu SET satuan=satuan-'$qty_keluar' WHERE kode_menu='$id_barang'");
	} 
	$this->cart->destroy();
	redirect('keranjang');

}else if($filter == '2'){
	$nmfile = "bayar_".time();
	$config['upload_path'] = './image/bayar';
	$config['allowed_types'] = 'jpg|png';
	$config['max_size'] = '20000';
	$config['file_name'] = $nmfile;
	$this->load->library('upload');
	$this->upload->initialize($config);
	$this->upload->do_upload('foto_keluar');
	$result1 = $this->upload->data();
	$result = array('gambar'=>$result1);
	$dfile = $result['gambar']['file_name'];

	$kode_penjualan = $this->input->post('kode_penjualan');
	$total_keluar = $this->input->post('total_keluar');
	$tgl_penjualan = $this->input->post('tgl_penjualan');
	$id_user = $this->input->post('id_user');

	$data = array(
		
		'id_keluar'=> $kode_penjualan,
		'total_keluar'=> $total_keluar,
		'tgl_keluar'=> $tgl_penjualan,
		'id_user'=> $id_user,
		'foto_keluar'=> $dfile,
		
	);
	$this->db->insert('keluar', $data);


foreach ($this->cart->contents() as $items) {
	$id_barang = $items['id'];
	$qty_keluar = $items['qty'];
	$d = array(
		'id_keluar' => $kode_penjualan,
		'id_barang' => $id_barang,
		'qty_keluar' => $qty_keluar,
		'status' => "0",
		
	);
	$this->db->insert('detail_keluar', $d);
	
	//$this->db->query("UPDATE menu SET satuan=satuan-'$qty_keluar' WHERE kode_menu='$id_barang'");
} 
$this->cart->destroy();
redirect('keranjang');

}else if($filter == '3'){ // Jika filter nya 1 (per tanggal)



	$kode_penjualan = $this->input->post('kode_penjualan');
	$total_keluar = $this->input->post('total_keluar');
	$tgl_penjualan = $this->input->post('tgl_penjualan');
	$id_user = $this->input->post('id_user');
	$cicil = $this->input->post('cicil');

	$data = array(
		
		'id_keluar'=> $kode_penjualan,
		'total_keluar'=> $total_keluar,
		'tgl_keluar'=> $tgl_penjualan,
		'id_user'=> $id_user,
		'status' => "1",
	);
	$this->db->insert('keluar', $data);


foreach ($this->cart->contents() as $items) {
	$id_barang = $items['id'];
	$qty_keluar = $items['qty'];
	$d = array(
		'id_keluar' => $kode_penjualan,
		'id_barang' => $id_barang,
		'qty_keluar' => $qty_keluar,
		'status' => "0",
		
	);
	$this->db->insert('detail_keluar', $d);
	
	
	//$this->db->query("UPDATE menu SET satuan=satuan-'$qty_keluar' WHERE kode_menu='$id_barang'");
} 

$nmfile = "cicil_".time();
$config['upload_path'] = './image/cicil';
$config['allowed_types'] = 'jpg|png';
$config['max_size'] = '20000';
$config['file_name'] = $nmfile;
$this->load->library('upload');
$this->upload->initialize($config);
$this->upload->do_upload('foto_keluar');
$result1 = $this->upload->data();
$result = array('gambar'=>$result1);
$dfile = $result['gambar']['file_name'];
$data = array(
		
	'id_keluar'=> $kode_penjualan,
	'jumlah_cicil'=> $cicil,
	'periode'=>"1",
	'foto_cicil'=>$dfile,
);
$this->db->insert('cicil', $data);


$this->cart->destroy();
redirect('keranjang');
		}	}
}
}