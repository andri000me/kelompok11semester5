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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Slider</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Slider</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                <?php echo anchor(site_url('carousel/create'),'Tambah', 'class="btn btn-primary"'); ?>
                <?php if ( $this->session->userdata('level') == 'manajer') { ?>
                
                <?php } ?>
                </div>
                <div class="col-md-4">
               
                </div>
                <div class="col-md-4 text-right">
               <!-- search -->
                </div>
                </div>
                </br>
                </br></br>
                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
                    <thead>
        <tr>
        <th>No</th>
        <th>Id</th>
        <th>Judul</th>
        <th>Isi</th>
        <th>Gambar</th>
        <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <?php 
        $no=1;
					foreach ($carousel_data as $carousel) {
                        ?>
                <tr>
            <td width="80px"><?php echo $no++ ?></td>
            <td><?php echo $carousel->id_carousel ?></td>
            <td><?php echo $carousel->judul ?></td>
            <td><?php echo $carousel->isi ?></td>
            
            <td>
            <a data-fancybox="gallery" href="image/carousel/<?php echo $carousel->gambar; ?>">
            <img src="<?php echo base_url('image/carousel/'.$carousel->gambar) ?>" width="64" />
          </td> 
             <!-- menampilkan gambar  -->
            <td style="text-align:center" width="200px">
                <?php 
               echo anchor(site_url('carousel/update/'.$carousel->id_carousel),'Ubah', 'class="btn btn-info btn-sm"'); 
               echo '  '; 
               echo anchor(site_url('carousel/delete/'.$carousel->id_carousel),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
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