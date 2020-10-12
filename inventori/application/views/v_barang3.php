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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Barang Terhapus</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                  <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-primary" href="barang"> Kembali </a>
                <?php } ?>
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
               
                </div>
                </div>
                </br>
                </br></br>
                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
        <thead>
        <tr>
        <th>No</th>
        <th>Nama Barang</th>
        <th>Jenis</th>
        <th>Kemasan</th>
        <th>Merk</th>
        <th>Stok</th>
        <th>Harga</th>
        <th>Nama Supplier</th>
        <th>Terjual</th>
        <th>Foto Barang</th>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php 
        $no=1;
					foreach ($barang_data1 as $barang1) {
                        ?>
                <tr>
            <td width="80px"><?php echo $no++ ?></td>
            <td><?php echo $barang1->nama_barang ?></td>
            <td><?php echo $barang1->jenis ?></td>
            <td><?php echo $barang1->kemasan ?></td>
            <td><?php echo $barang1->merk ?></td>
            <td><?php echo $barang1->stok ?></td>
            <td><?php echo $barang1->harga ?></td>
            <td><?php echo $barang1->nama_supplier ?></td>
            <td><?php echo $barang1->terjual ?></td>
            <td><img src="<?php echo base_url('image/barang/'.$barang1->foto_barang) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
                 echo anchor(site_url('barang1/restore/'.$barang1->id_barang),'Restore', 'class="btn btn-warning btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
               echo '  '; 
               echo anchor(site_url('barang1/delete/'.$barang1->id_barang),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
                ?>
            </td>
        </tr>
                <?php
            }
            ?>
            </tbody>
        </table>
        <div class="row">
            <div class="col-md-6">
                <a href="dashboard" class="btn btn-primary">Total Record : <?php echo $total_rows ?></a>
                
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
    <script type="text/javascript">
    $(document).ready( function () 
    {
      $('#datatables').DataTable({
                "lengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
                responsive: true
                });
      
    } );
    </script>