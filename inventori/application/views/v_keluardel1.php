
<head>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
    

</head> 

<style>
table.dataTable {
  margin-top:-1em !important;  
  margin-bottom:-1em !important;  
}  

div.dataTables_info {
    margin-bottom: -5em;
}
</style> 
       <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
              <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang Keluar</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Barang Keluar Terhapus (Tunai) </h2>
                  <?php }else{?>
                    <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Transaksi Telah Dikonfirmasi</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Telah di Konfirmasi</h2>
                  <?php } ?>
                  <div class="row">
                  <?php if ($this->session->userdata('level') == 'admin' or $this->session->userdata('level') == 'manajer') { ?>
            <div class="card">
                <div class="col-md-4">
               
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-primary" href="keluar2"> Kembali </a>
                <?php } ?>
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
               
                </div>
                </div>
                <?php } ?>
                </br>
                </br></br>
                <div class="col-md-12">
		<table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
    <thead>
    <tr>
					<th>No.</th>
					<th>Kode</th>
					<th>Tanggal Transaksi</th>
					<th>Total</th>
					<th>Nama</th>
          <th>Alamat</th>
          <th>No Telepon</th>
          <th>Foto</th>
					<th>Pilihan</th>
				</tr>
       </thead>
       <tbody>
      <?php 
      $no=1;
					foreach ($keluar as $keluar) {
                        ?>
                
                <tr>
          <td><?php echo $no++ ?></td>
					<td><?php echo $keluar->id_keluar; ?></td>
					<td><?php echo $keluar->tgl_keluar; ?></td>
					<td><?php echo number_format($keluar->total_keluar); ?></td>
					<td><?php echo $keluar->nama; ?></td>
          <td><?php echo $keluar->alamat; ?></td>
          <td><?php echo $keluar->no_telp; ?></td>
          <td><img src="<?php echo base_url('image/bayar/'.$keluar->foto_keluar) ?>" width="64" /></td>
					
					<td>
						
          <a href="keluar2/restore/<?php echo $keluar->id_keluar ?>" class="btn btn-warning btn-sm" onclick="javasciprt: return confirm('Apa anda yakin ingin merestore data?')">restore</a>
           
            <a href="keluar2/hapus_penjualan1/<?php echo $keluar->id_keluar ?>" class="btn btn-danger btn-sm" onclick="javasciprt: return confirm('Apa anda yakin ingin menghapus data?')">hapus</a>
                     
            
             
                               
          </td>
         

  

        </tr>

        <?php } ?>  
          </tbody>  	
				</table>







        <div class="row">
            <div class="col-md-10">
            <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
    
    
        </div>
            <div class="col-md-2 text-right">
           
            </div>
        </div>






</div>
    

                    </div>
    


  </div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="col-md-6 text-right">
</div>
</div>
	</div>
</div>

<script type="text/javascript">
    $(document).ready( function () 
    {
      $('#datatables').DataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
                responsive: true
                });
      
    } );
    </script>
