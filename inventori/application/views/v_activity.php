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
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data activity</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Activity</h2>
                  <div class="row">

                <div class="card">
                  <div class="col-md-4">
                
                </div>
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-right">
                
                </div>
                </div>

                    <div class="col-md-12">
                    <table class="table table-bordered" style="margin-bottom: 10px" id="datatables">
      <thead>
        <tr>
        <th>No</th>
        <th><center> Tanggal</center> </th>
        <th><center>Activity</center></th>
        <th><center>Action</center> </th>
        </tr>
        </thead>
      <tbody>
        <?php 
        $no=1;
					foreach ($activity_data as $activity) {
                        ?>
                <tr>
            <td width="80px"><?php echo $no++ ?></td>
            <td><?php echo $activity->tgl_activity ?></td>
            <td><?php echo $activity->keterangan ?></td> 
            
            <td>
                <?php 
               
               echo anchor(site_url('activity/delete/'.$activity->id_activity),'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"'); 
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