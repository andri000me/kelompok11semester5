<?php 
$rs = $data->row();
 ?>
 
 <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
			  <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Nota Barang keluar</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Nota Barang keluar</h2>
				  <?php }else{?>
				    <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Nota Pembelian</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Nota Pembelian</h2>
					<?php } ?>
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
				<th>Total Harga</th>
				<th>:</th>
				<td>Rp. <?php echo number_format($rs->total_keluar); ?></td>
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
					
					<th>Nama Barang</th>
					<th>Jenis</th>
					<th>Kemasan</th>
					<th>Qty</th>
					<th>Harga</th>
					<th>Diskon(%)</th>
					<th>Subtotal</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				$sql = $this->db->query("SELECT * FROM detail_keluar as a,barang as b where a.id_barang=b.id_barang and a.id_keluar='$rs->id_keluar' ");
				$no = 1;
				foreach ($sql->result() as $row) {
				 ?>
				<tr>
				<td><?php echo $no++; ?></td>
				<td><?php echo $row->nama_barang; ?></td>
					<td><?php echo $row->jenis; ?></td>
					<td><?php echo $row->kemasan; ?></td>
					<td><?php echo $row->qty_keluar; ?></td>
					<td><?php echo number_format($row->qty_keluar*$row->harga); ?></td>
					<td><?php echo $row->diskon; ?>%</td>
					<td><?php 

							$harga= $row->qty_keluar*$row->harga;
							$diskon=$row->diskon;
							$hasil=$harga*($diskon/100);


						$totharga = $harga-$hasil;
						echo number_format($totharga);
						 ?></td>
				</tr>
	
				<?php } ?>
				<tr>
						<td colspan="7">Total</td>
						<td>Rp. <?php echo number_format($rs->total_keluar) ?></td>
					</tr>
			</tbody>
		</table>
	</div>
</div>