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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Pegawai</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data gudang terhapus</h2>

                  <div class="row" style="margin-bottom: 10px">

                  <div class="card">
                  <div class="col-md-4">
                
                  <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                <a class ="btn btn-primary" href="gudang"> Kembali </a>
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
        <th>Email</th>
        <th>Username</th>
        
        <th>Level</th>
        <th>Nama User</th>
        <th>Tanggal Lahir</th>
        <th>Jenis Kelamin</th>
        <th>Alamat</th>
        <th>No Telepon</th> 
        <th>Foto</th>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
            <?php 
            $no=1;
					foreach ($user_data1 as $user1) {
                        ?>
					 
                <tr>
            <td width="80px"><?php echo $no++ ?></td>
            <td><?php echo $user1->email ?></td>
            <td><?php echo $user1->username ?></td>
            
            <td><?php echo $user1->level ?></td>
            <td><?php echo $user1->nama ?></td>
            <td><?php echo $user1->tgl_lahir ?></td>
            <td><?php echo $user1->jenis_kelamin ?></td>
            <td><?php echo $user1->alamat ?></td>
            <td><?php echo $user1->no_telp ?></td>
            <td><img src="<?php echo base_url('image/user/'.$user1->foto) ?>" width="64" /></td> <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
                
                echo anchor(site_url('gudang1/restore/'.$user1->id_user),'Restore', 'class="btn btn-info btn-sm"'); 
                echo '  '; 
                echo anchor(site_url('gudang1/delete/'.$user1->id_user),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
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
            <div class="col-md-6 text-right">
               
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
