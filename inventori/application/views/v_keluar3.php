<!DOCTYPE html>
<html>
<head>
	<base href="<?php echo base_url() ?>">
	<title>Cetak Struk transaksi</title>
	<link rel="stylesheet" type="text/css" href="assets/bootflat-admin/css/bootstrap.min.css">
</head>
<body >
	<div class="container">
	<center>
		<h4>UD SRI REJEKI</h4>
		<p>Jl. Kol Abunjani 10. 133 Sipin, Probolinggo</p>
		<p>Telp. (0741)-612673</p>
	</center>
	<?php 
	$rs = $data->row();
	 ?>
	<div class="row">
		<div class="col-md-12">
			<table class="table">
			<tr>
				<th>Kode Transaksi</th>
				<th>:</th>
				<td><?php echo $rs->id_keluar; ?></td>
				 <th>Nama Pelanggan</th>
				<th>:</th>
				<td><?php echo $rs->nama; ?></td> 
		
			</tr>
			<tr>
				<th>Tgl Penjualan</th>
				<th>:</th>
				<td><?php echo $rs->tgl_keluar; ?></td>
				<th>Alamat</th>
				<th>:</th>
				<td><?php echo $rs->alamat; ?></td> 
			</tr>
			<tr>
				<th>Alamat</th>
				<th>:</th>
				<td><?php echo $rs->alamat; ?></td>
				<th>No Telp</th>
				<th>:</th>
				<td><?php echo $rs->no_telp; ?></td> 
			</tr>
			</table>
		</div>
		<div class="col-md-12">
			<table class="table table-bordered" style="margin-bottom: 10px" >
				<thead>
					<tr>
						<th>No.</th>
						<th>Kode Barang</th>
						<th>Nama Barang</th>
						<th>Supplier</th>
						<th>Qty</th>
						<th>Harga</th>
						<th>Jumlah</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					$sql = $this->db->query("SELECT * FROM detail_keluar as a,barang as b, supplier as s where a.id_barang=b.id_barang and b.id_supplier=s.id_supplier and a.id_keluar='$rs->id_keluar' ");
					$no = 1;
					foreach ($sql->result() as $row) {
					 ?>
					<tr>
						<td><?php echo $no++; ?></td>
						<td><?php echo $row->id_barang; ?></td>
						<td><?php echo $row->nama_barang; ?></td>
						<td><?php echo $row->nama_supplier; ?></td>
						<td><?php echo $row->qty_keluar; ?></td>
						
						<td><?php echo $row->harga; ?></td>
						<td><?php 
						$totharga = $row->qty_keluar*$row->harga;
						echo number_format($totharga);
						 ?></td>
					</tr>
					<?php } ?>
					<tr>
						<td colspan="6">Total</td>
						<td>Rp. <?php echo number_format($rs->total_keluar) ?></td>
					</tr>
					<!-- <tr>
						<td colspan="6"><b>Diskon Keseluruhan (10%)</b></td>
						<td>
							Rp.
						<?php 
						$diskon = 0;
						if ($rs->total_keluar >= 100000) {
							$diskon = 0.1 * $rs->total_keluar;
						} else {
							$diskon = 0;
						 
						}
						echo number_format($diskon)

						?>
						</td>
					</tr>
					<tr>
						<td colspan="6"><b>Total Bayar</b></td>
						<td>Rp. <?php echo number_format($rs->total_keluar-$diskon) ?></td>
					</tr> -->
				</tbody>
			</table>

			<div style="text-align: right;">
				<p>Probolinggo, <?php echo date('d/m/Y') ?></p>
				<br><br><br><br><br>
				<p>Brian Vidyanjaya</p>
			</div>
		</div>

		
	</div>
</div>

<script>
		window.print();
	</script>

<!-- <script src='assets/jspdf.debug.js'></script>
	<script src='assets/html2pdf.js'></script>
	<script>
		var pdf = new jsPDF('l', 'pt', 'A4');
		var canvas = pdf.canvas;
		var width = 1200;
		//canvas.width=8.5*72;
		document.body.style.width=width + "px";

		html2canvas(document.body, {
		    canvas:canvas,
		    onrendered: function(canvas) {
		        var iframe = document.createElement('iframe');
		        iframe.setAttribute('style', 'position:absolute;top:0;right:0;height:100%; width:100%');
		        document.body.appendChild(iframe);
		        iframe.src = pdf.output('datauristring');

		       //var div = document.createElement('pre');
		       //div.innerText=pdf.output();
		       //document.body.appendChild(div);
		    }
		});
     </script> -->


</body>
</html>