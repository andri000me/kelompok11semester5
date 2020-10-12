<?php
defined('BASEPATH') OR exit('No direct script access allowed');  
 
class Masuk extends CI_Controller { 

	
	//load library, helper, dan model
	function __construct(){  
		parent::__construct(); 
		$this->load->helper('url'); 
		$this->load->helper('html'); 
        $this->load->helper(array('form', 'url')); 
		$this->load->model('m_masuk');
		$this->load->model('m_masuk');
		$this->load->library('cetak_pdf');

	}
 //menampilkan barang pada home
	public function index(){	
		$this->load->view('v_header'); 
		$this->load->view('v_sidebar'); 

		$config['total_rows'] = $this->m_masuk->total_rows();
		$keluar = $this->m_masuk->get_limit_data();
        $this->load->library('pagination');
        $this->pagination->initialize($config);
		$data = array(
            'masuk_data' => $keluar,
            'total_rows' => $config['total_rows'],
        );
        $this->load->view('v_masuk', $data); 
	}
	
	public function tambah()
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$this->load->model('m_nourut');
		$data = array(

			'kode' => $this->m_nourut->buat_kode_pembelian(),
			
		);
		$this->load->view('v_masuk1',$data);
	}


	public function cek_barang()
	{
        $id_barang = $this->input->post('id_barang');
        $cek = $this->db->query("SELECT * FROM barang WHERE id_barang='$id_barang'")->row();
		$data = array(
			'stok' => $cek->stok,
			'harga' => $cek->harga,
			'id_barang' => $cek->id_barang,
			'nama_barang' => $cek->nama_barang,
		

		);
		echo json_encode($data);
	}


	public function simpan_cart()
	{
		if($this->input->post('jumlah')<$this->input->post('stok')){

			$harga=$this->input->post('harga');
			$diskon=$this->input->post('coupon');
			$hasil=$harga*($diskon/100);
        $data = array(
            'id'    => $this->input->post('id_barang'),
			'qty'   => $this->input->post('jumlah'),
			'stok' => $this->input->post('stok'),
			'coupon' => $this->input->post('coupon'),
			'harga' => $this->input->post('harga'),
			'price' => $this->input->post('harga')-$hasil,
            'name'  => $this->input->post('nabar'),
        );
        $this->cart->insert($data);
		redirect('masuk/tambah');
	}else {
		echo "<script>alert('Stok barang tidak cukup! Silahkan kurangi jumlah pembelian.');window.location.replace('tambah');</script>";
		}
	}

	public function hapus_cart($id)
	{
		
        $data = array(
            'rowid'    => $id,
            'qty'   => 0,
        );
        $this->cart->update($data);
        redirect('masuk/tambah');
	}

	public function simpan_penjualan()
	{
        $kode_pembelian = $this->input->post('kode_pembelian');
        $total_masuk = $this->input->post('total_masuk');
        $tgl_penjualan = $this->input->post('tgl_penjualan');
        $id_supplier = $this->input->post('id_supplier');

        $data = array(
        	'id_supplier' => $id_supplier,
            'id_masuk'=> $kode_pembelian,
            'total_masuk'=> $total_masuk,
			'tgl_masuk'=> $tgl_penjualan,
			
        );
        $this->db->insert('masuk', $data);

	
	foreach ($this->cart->contents() as $items) {
		$id_barang = $items['id'];
		$qty_masuk = $items['qty'];
		$coupon = $items['coupon'];
		$d = array(
			'id_masuk' => $kode_pembelian,
			'id_barang' => $id_barang,
			'qty_masuk' => $qty_masuk,
			'diskon' => $coupon,
		);
		$this->db->insert('detail_masuk', $d);
		//$this->db->query("UPDATE menu SET satuan=satuan-'$qty' WHERE kode_menu='$id_barang'");
	} 
	$this->cart->destroy();
	redirect('masuk');
}


	public function hapus_penjualan($id)
	{
		$data = array(
			'del' => "1"

			);

			$this->db->where('id_masuk', $id);
		$this->db->update('masuk',$data);
		$this->db->where('id_masuk', $id);
		
		redirect(site_url('masuk'));

	}


	public function edit($id_masuk) 
		{
			$id_barang = $this->input->post('id_barang');
			$edit = $this->input->post('edit');
			$diskon = $this->input->post('diskon');
	 
			$cek_stok=$this->db->query("SELECT stok from barang where id_barang=$id_barang")->result();
            foreach ($cek_stok as $data) {
                $stok12=$data->stok;
            }


		if ($edit>$stok12){
			echo "<script>alert('Stok barang tidak cukup! Silahkan kurangi jumlah pembelian.');history.back(); ;</script>";

		}else{

				 $this->db->query("UPDATE detail_masuk set qty_masuk=$edit, diskon=$diskon where id_masuk=$id_masuk and id_barang=$id_barang");
					
						redirect(site_url('masuk'));
	
			}
		}


	public function cetak_penjualan($kode_pembelian)
	{
		
        $data = array(
			'data' => $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where id_masuk='$kode_pembelian' "),
		);
		$this->load->view('v_masuk3',$data);
	}

	public function detail_penjualan($kode_pembelian)
	{
		$this->load->view('v_header'); 
        $this->load->view('v_sidebar'); 
		$data = array(

			'data' => $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where id_masuk='$kode_pembelian' "),
		);
		$this->load->view('v_masuk2',$data);
	}
	public function cetak_pdf() {

        $pdf = new FPDF('P', 'mm','Letter');

        $pdf->AddPage();

        $pdf->SetFont('Arial','B',16);
        $pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);

        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(10,6,'Kode',1,0,'C');
        $pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
       
		$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
		$pdf->Cell(30,6,'Alamat',1,0,'C');
		$pdf->Cell(30,6,'No Telp',1,0,'C');
		$pdf->Cell(30,6,'Total bayar',1,1,'C');
 
        $pdf->SetFont('Arial','',10);
        $barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where masuk.del='0'")->result();
        $no=1;
        foreach ($barang as $data){
            $pdf->Cell(8,6,$no,1,0);
            $pdf->Cell(10,6,$data->id_masuk,1,0);
            $pdf->Cell(35,6,$data->tgl_masuk,1,0);
           
            $pdf->Cell(55,6,$data->nama_supplier,1,0);
			$pdf->Cell(30,6,$data->alamat,1,0);
			$pdf->Cell(30,6,$data->no_telp,1,0);
			$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
            $no++;
        }
		$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where masuk.del='0'")->result();
		foreach ($total as $tot){
		$pdf->Cell(168,6,"Total Bayar",1,0);
		$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
		$pdf->Output();
		}
	

	}
	
	public function cetak_pdf1() {

        $pdf = new FPDF('P', 'mm','Letter');

        $pdf->AddPage();

        $pdf->SetFont('Arial','B',16);
        $pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);

        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(10,6,'Kode',1,0,'C');
        $pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
      
		$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
		$pdf->Cell(30,6,'Alamat',1,0,'C');
		$pdf->Cell(30,6,'No Telp',1,0,'C');
		$pdf->Cell(30,6,'Total bayar',1,1,'C');
 
        $pdf->SetFont('Arial','',10);
        $barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where date(masuk.tgl_masuk)=date(now()) and masuk.del='0'")->result();
        $no=1;
        foreach ($barang as $data){
			$pdf->Cell(8,6,$no,1,0);
            $pdf->Cell(10,6,$data->id_masuk,1,0);
            $pdf->Cell(35,6,$data->tgl_masuk,1,0);
            
            $pdf->Cell(55,6,$data->nama_supplier,1,0);
			$pdf->Cell(30,6,$data->alamat,1,0);
			$pdf->Cell(30,6,$data->no_telp,1,0);
			$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
           
            $no++;
		}
		
		$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where date(masuk.tgl_masuk)=date(now()) and masuk.del='0'")->result();
		foreach ($total as $tot){
		$pdf->Cell(168,6,"Total Bayar",1,0);
		$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
        $pdf->Output();
	}
	

    }

	public function cetak_pdf2() {

        $pdf = new FPDF('P', 'mm','Letter');

        $pdf->AddPage();

        $pdf->SetFont('Arial','B',16);
        $pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);

        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(10,6,'Kode',1,0,'C');
        $pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
		$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
		$pdf->Cell(30,6,'Alamat',1,0,'C');
		$pdf->Cell(30,6,'No Telp',1,0,'C');
		$pdf->Cell(30,6,'Total bayar',1,1,'C');
 
        $pdf->SetFont('Arial','',10);
        $barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where year(masuk.tgl_masuk)=year(now()) and month(masuk.tgl_masuk)=month(now()) and masuk.del='0'")->result();
        $no=1;
        foreach ($barang as $data){
			$pdf->Cell(8,6,$no,1,0);
            $pdf->Cell(10,6,$data->id_masuk,1,0);
            $pdf->Cell(35,6,$data->tgl_masuk,1,0);
            $pdf->Cell(55,6,$data->nama_supplier,1,0);
			$pdf->Cell(30,6,$data->alamat,1,0);
			$pdf->Cell(30,6,$data->no_telp,1,0);
			$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
           
            $no++;
		}
		$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where year(masuk.tgl_masuk)=year(now()) and month(masuk.tgl_masuk)=month(now()) and masuk.del='0'")->result();
		foreach ($total as $tot){
		$pdf->Cell(168,6,"Total Bayar",1,0);
		$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
        $pdf->Output();
	}

    }

	public function cetak_pdf3() {

        $pdf = new FPDF('P', 'mm','Letter');

        $pdf->AddPage();

        $pdf->SetFont('Arial','B',16);
        $pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
        $pdf->Cell(10,7,'',0,1);

        $pdf->SetFont('Arial','B',10);

        $pdf->Cell(8,6,'No',1,0,'C');
        $pdf->Cell(10,6,'Kode',1,0,'C');
        $pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
       
		$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
		$pdf->Cell(30,6,'Alamat',1,0,'C');
		$pdf->Cell(30,6,'No Telp',1,0,'C');
		$pdf->Cell(30,6,'Total bayar',1,1,'C');

        $pdf->SetFont('Arial','',10);
        $barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where year(masuk.tgl_masuk)=year(now()) and masuk.del='0'")->result();
        $no=1;
        foreach ($barang as $data){
			$pdf->Cell(8,6,$no,1,0);
            $pdf->Cell(10,6,$data->id_masuk,1,0);
            $pdf->Cell(35,6,$data->tgl_masuk,1,0);
          
            $pdf->Cell(55,6,$data->nama_supplier,1,0);
			$pdf->Cell(30,6,$data->alamat,1,0);
			$pdf->Cell(30,6,$data->no_telp,1,0);
			$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
           
            $no++;
		}
		$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where year(masuk.tgl_masuk)=year(now()) and masuk.del='0'")->result();
		foreach ($total as $tot){
		$pdf->Cell(168,6,"Total Bayar",1,0);
		$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
        $pdf->Output();
		}

	}
	

	public function cetak_pdf4() {

	
				if(isset($_GET['filter']) && ! empty($_GET['filter'])){ // Cek apakah user telah memilih filter dan klik tombol tampilkan
					$filter = $_GET['filter']; // Ambil data filder yang dipilih user
					if($filter == '1'){ // Jika filter nya 1 (per tanggal)
						$tgl_masuk = $_GET['tanggal'];
						$pdf = new FPDF('P', 'mm','Letter');

									$pdf->AddPage();

									$pdf->SetFont('Arial','B',16);
									$pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
									$pdf->Cell(10,7,'',0,1);

									$pdf->SetFont('Arial','B',10);
									$pdf->Cell(8,6,'No',1,0,'C');
									$pdf->Cell(10,6,'Kode',1,0,'C');
									$pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
									
									$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
									$pdf->Cell(30,6,'Alamat',1,0,'C');
									$pdf->Cell(30,6,'No Telp',1,0,'C');
									$pdf->Cell(30,6,'Total bayar',1,1,'C');
							
									$pdf->SetFont('Arial','',10);
									$barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where date(masuk.tgl_masuk)='$tgl_masuk' and masuk.del='0'")->result();
									$no=1;
									foreach ($barang as $data){
										$pdf->Cell(8,6,$no,1,0);
										$pdf->Cell(10,6,$data->id_masuk,1,0);
										$pdf->Cell(35,6,$data->tgl_masuk,1,0);
										
										$pdf->Cell(55,6,$data->nama_supplier,1,0);
										$pdf->Cell(30,6,$data->alamat,1,0);
										$pdf->Cell(30,6,$data->no_telp,1,0);
										$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
									
										$no++;
									}
									$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where date(masuk.tgl_masuk)='$tgl_masuk' and masuk.del='0'")->result();
									foreach ($total as $tot){
									$pdf->Cell(168,6,"Total Bayar",1,0);
									$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
									$pdf->Output();
									}
								
					
					}else if($filter == '2'){ // Jika filter nya 2 (per bulan)
						$bulan = $_GET['bulan'];
						$tahun = $_GET['tahun'];
						$pdf = new FPDF('P', 'mm','Letter');

									$pdf->AddPage();

									$pdf->SetFont('Arial','B',16);
									$pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
									$pdf->Cell(10,7,'',0,1);

									$pdf->SetFont('Arial','B',10);
									$pdf->Cell(8,6,'No',1,0,'C');
									$pdf->Cell(10,6,'Kode',1,0,'C');
									$pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
									
									$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
									$pdf->Cell(30,6,'Alamat',1,0,'C');
									$pdf->Cell(30,6,'No Telp',1,0,'C');
									$pdf->Cell(30,6,'Total bayar',1,1,'C');
							
									$pdf->SetFont('Arial','',10);
									$barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where month(tgl_masuk)=$bulan and year(tgl_masuk)=$tahun and masuk.del='0'")->result();
									$no=1;
									foreach ($barang as $data){
										$pdf->Cell(8,6,$no,1,0);
										$pdf->Cell(10,6,$data->id_masuk,1,0);
										$pdf->Cell(35,6,$data->tgl_masuk,1,0);
										
										$pdf->Cell(55,6,$data->nama_supplier,1,0);
										$pdf->Cell(30,6,$data->alamat,1,0);
										$pdf->Cell(30,6,$data->no_telp,1,0);
										$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
									
										$no++;
									}
									$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where month(tgl_masuk)=$bulan and year(tgl_masuk)=$tahun and masuk.del='0'")->result();
									foreach ($total as $tot){
									$pdf->Cell(168,6,"Total Bayar",1,0);
									$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
									$pdf->Output();
									}
								
					}else{ // Jika filter nya 3 (per tahun)
						$tahun = $_GET['tahun'];

						$pdf = new FPDF('P', 'mm','Letter');

									$pdf->AddPage();

									$pdf->SetFont('Arial','B',16);
									$pdf->Cell(0,7,'TRANSAKSI BARANG MASUK',0,1,'C');
									$pdf->Cell(10,7,'',0,1);

									$pdf->SetFont('Arial','B',10);

									$pdf->Cell(8,6,'No',1,0,'C');
									$pdf->Cell(10,6,'Kode',1,0,'C');
									$pdf->Cell(35,6,'Tgl Transaksi',1,0,'C');
									
									$pdf->Cell(55,6,'Nama Supplier',1,0,'C');
									$pdf->Cell(30,6,'Alamat',1,0,'C');
									$pdf->Cell(30,6,'No Telp',1,0,'C');
									$pdf->Cell(30,6,'Total bayar',1,1,'C');
							
									$pdf->SetFont('Arial','',10);
									$barang= $this->db->query("SELECT * FROM masuk inner join supplier on masuk.id_supplier=supplier.id_supplier where year(tgl_masuk)=$tahun and masuk.del='0'")->result();
									$no=1;
									foreach ($barang as $data){
										$pdf->Cell(8,6,$no,1,0);
										$pdf->Cell(10,6,$data->id_masuk,1,0);
										$pdf->Cell(35,6,$data->tgl_masuk,1,0);
										
										$pdf->Cell(55,6,$data->nama_supplier,1,0);
										$pdf->Cell(30,6,$data->alamat,1,0);
										$pdf->Cell(30,6,$data->no_telp,1,0);
										$pdf->Cell(30,6,"Rp ".number_format($data->total_masuk, 0, ".", "."),1,1);
									
										$no++;
									}
									$total= $this->db->query("SELECT SUM(total_masuk) AS total FROM masuk where year(tgl_masuk)=$tahun and masuk.del='0'")->result();
									foreach ($total as $tot){
									$pdf->Cell(168,6,"Total Bayar",1,0);
									$pdf->Cell(30,6,"Rp ".number_format($tot->total, 0, ".", "."),1,1);
									$pdf->Output();
									}
								
						
					
					}
				}
    

			}


			

}