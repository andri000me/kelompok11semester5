<head>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>


</head>
<style>
  table.dataTable {
    margin-top: -1em !important;
    margin-bottom: -1em !important;
  }

  div.dataTables_info {
    margin-bottom: -5em;


  }
</style>
<div class="col-xs-12 col-sm-9 content">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Master</h3>
    </div>
    <div class="panel-body">
      <div class="content-row">
        <h2 class="content-row-title">Data Barang</h2>
        <div class="row">

          <div class="card">
            <div class="col-md-4">
              <?php echo anchor(site_url('barang/create'), 'Tambah', 'class="btn btn-primary"'); ?>

            </div>
            <div class="col-md-4">

            </div>
            <div class="col-md-4 text-right">
              <?php if ($this->session->userdata('level') == 'manajer') { ?>
                <a class="btn btn-danger" href="barang1"> <i class="glyphicon glyphicon-trash"></i> </a>
              <?php } ?>
            </div>
          </div>
          </br>
          </br></br>
          <div class="col-md-12">
            <table class="table table-bordered" style="margin-top: 10px" id="datatables">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama </th>
                  <th>Jenis</th>
                  <th>Kemasan</th>
                  <th>Merk</th>
                  <th>Stok</th>
                  <th>Harga</th>
                  <th>Supplier</th>
                  <th>Terjual</th>
                  <th>Foto Barang</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $no = 1;
                foreach ($barang_data as $barang) {
                ?>
                  <tr>
                    <td width="80px"><?php echo $no++ ?></td>
                    <td><?php echo $barang->nama_barang ?></td>
                    <td><?php echo $barang->jenis ?></td>
                    <td><?php echo $barang->kemasan ?></td>
                    <td><?php echo $barang->merk ?></td>
                    <td><?php echo $barang->stok ?></td>
                    <td><?php echo $barang->harga ?></td>
                    <td><?php echo $barang->nama_supplier ?></td>
                    <td><?php echo $barang->terjual ?></td>
                    <td>
                      <a data-fancybox="gallery" href="image/barang/<?php echo $barang->foto_barang; ?>">
                        <img src="<?php echo base_url('image/barang/' . $barang->foto_barang) ?>" width="64" />
                    </td>
                    <!-- menampilkan gambar  -->
                    <td style="text-align:center" width="200px">
                      <?php
                      echo anchor(site_url('barang/update/' . $barang->id_barang), 'Ubah', 'class="btn btn-info btn-sm"');
                      echo '  ';
                      echo anchor(site_url('barang/delete/' . $barang->id_barang), 'Hapus', 'class="btn btn-danger btn-sm", onclick="javasciprt: return confirm(\'Apa Anda Yakin?\')"');
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
                <a href="barang/cetak_pdf" class="btn btn-info">Cetak Data Barang</a>
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
  $(document).ready(function() {
    $('#datatables').DataTable({
      "lengthMenu": [
        [5, 10, 25, 50, -1],
        [5, 10, 25, 50, "All"]
      ],
      responsive: true
    });

  });
</script>