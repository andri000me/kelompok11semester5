<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>UD SRI REJEKI</title>
  <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no">
  <base href="<?php echo base_url(); ?>">
  <link rel="shortcut icon" href="image/hh.png">
  <link rel="bookmark" href="favicon_16.ico" />
  <link rel="stylesheet" href="assets/dist/css/site.min.css">
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" rel="stylesheet" type="text/css">
  <link href="assets/bootstrap-datepicker.css" rel="stylesheet">
  <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
  <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'>



  <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<style>
  .navbar img {
    border: 3px solid #888888;
  }

  div.container {

    padding: -150px;
  }
</style>



<body>

  <nav role="navigation" class="navbar navbar-inverse">
    <div class="container">
      <div class="container-fluid">
        <div class="navbar-header">


          </a>
        </div>


        <ul class="nav navbar-nav">
          <li>
            <a<img src="image/hh.png" class="img-responsive img-circle" alt="" width="50px" left="15px"></a>
          </li>

          <li><b><a href="<?php echo base_url() ?>home" type="submit" style="color: lightgrey">
                <h5> &nbsp; &nbsp;UD SRI REJEKI</h5>
              </a></b></li>
          <li><a href="home">Home</a></li>
          <!-- <li class="disabled"><a href="#">Link</a></li> -->


          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Bantuan <b class="caret"></b></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="kontakkami">Kontak Kami</a></li>
              <li><a href="faq">FAQ</a></li>

            </ul>
          </li>


          <li><a href="tentangkami">Tentang Kami</a></li>

        </ul>












        <div class="navbar-form navbar-right">
          <?php $car = count($this->cart->contents());   ?>
          <?php if ($car > 10) { ?>
            <a href="<?php echo base_url() ?>keranjang" type="submit" class="btn btn-info"><i class='fas fa-shopping-cart' style='font-size:16px'></i> <span class="label-pesan"><?php echo "10++"; ?></span> </a>
          <?php } else { ?>
            <a href="<?php echo base_url() ?>keranjang" type="submit" class="btn btn-info"><i class='fas fa-shopping-cart' style='font-size:16px'></i> <span class="label-pesan"><?php echo $car; ?></span> </a>
          <?php } ?>






          <?php
          if ($this->session->userdata('level') == 'manajer') {
          ?>
            <div class="btn-group">
              <div class="dropdown">
                <?php $jumlah = $this->db->query("select * from activity where status='0' limit 11")->num_rows(); ?>
                <?php if ($jumlah == '0') {
                ?>
                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-secondary"><i class='fas fa-history' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jumlah; ?></span> </a>
                    <ul id='dropdown' class='dropdown-menu'>
                      <li><a>Tidak ada notifikasi baru</a></li>
                    </ul>
                  </a>
                <?php } else if ($jumlah > 10) { ?>
                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-secondary"><i class='fas fa-history' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jumlah - 1; ?>++</span> </a>

                    <ul id='dropdown' class='dropdown-menu'>
                      <?php
                      $sql = $this->db->query("select * from activity where status='0' order by id_activity desc limit 10");
                      foreach ($sql->result() as $row) {
                      ?>
                        <li><a href="activity/status/<?php echo $row->id_activity ?>">
                            <td><?php echo $row->keterangan; ?></td>
                          </a></li>
                      <?php } ?>
                      <li><a href="activity/statusall/">Lihat semua</a></li>
                    </ul>


                  </a>
                <?php } else if ($jumlah <= 10 and $jumlah > 0) { ?>
                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-secondary"><i class='fas fa-history' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jumlah; ?></span> </a>

                    <ul id='dropdown' class='dropdown-menu'>
                      <?php
                      $sql = $this->db->query("select * from activity where status='0' order by id_activity desc");
                      foreach ($sql->result() as $row) {
                      ?>
                        <li><a href="activity/status/<?php echo $row->id_activity ?>">
                            <td><?php echo $row->keterangan; ?></td>
                          </a></li>
                      <?php } ?>
                      <li><a href="activity/statusall/">Lihat semua</a></li>
                    </ul>


                  </a>
                <?php } ?>
              </div>
            </div>
            <div class="btn-group">
              <div class="dropdown">
                <?php $jmlh = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' limit 11")->num_rows(); ?>
                <?php if ($jmlh == '0') {
                ?>
                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
                    <ul id='dropdown' class='dropdown-menu'>
                      <li><a>Tidak ada notifikasi baru</a></li>

                    </ul>
                  </a>
                <?php } else if ($jmlh > 10) { ?>

                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh - 1; ?>++</span> </a>
                    <ul id='dropdown' class='dropdown-menu'>
                      <?php
                      $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' order by keluar.id_keluar desc limit 10");
                      foreach ($sql->result() as $row) {
                      ?>

                        <li><a href="konfirmasi/status/<?php echo $row->id_keluar ?>">Transaksi baru dari <td><?php echo $row->nama; ?></td></a></li>
                      <?php } ?>
                      <li><a href="konfirmasi/statusall/">Lihat semua</a></li>
                    </ul>


                  </a>
                <?php } else if ($jmlh <= 10 and $jmlh > 0) { ?>
                  <a class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
                    <ul id='dropdown' class='dropdown-menu'>
                      <?php
                      $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' order by keluar.id_keluar desc");
                      foreach ($sql->result() as $row) {
                      ?>

                        <li><a href="konfirmasi/status/<?php echo $row->id_keluar ?>">Transaksi baru dari <td><?php echo $row->nama; ?></td></a></li>
                      <?php } ?>
                      <li><a href="konfirmasi/statusall/">Lihat semua</a></li>
                    </ul>


                  </a>
                <?php } ?>

              </div>
            </div>

            <a href="<?php echo base_url() ?>dashboard" type="submit" class="btn btn-primary"><?php echo $this->session->userdata("username") ?> </a> <!-- session username -->
            <a href="<?php echo base_url() ?>login/logout" type="submit" class="btn btn-danger" onclick="javasciprt: return confirm('Apa Anda Yakin?')">Logout </a> <!-- session username -->
        </div>
      </div>



    <?php } else if ($this->session->userdata('level') == 'admin') { ?>
      <?php $jmlh = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' limit 11")->num_rows(); ?>
      <?php if ($jmlh == '0') {
      ?>
        <a class="dropdown">
          <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
          <ul id='dropdown' class='dropdown-menu'>
            <li><a>Tidak ada notifikasi baru</a></li>

          </ul>
        </a>
      <?php } else if ($jmlh > 10) { ?>

        <a class="dropdown">
          <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh - 1; ?>++</span> </a>
          <ul id='dropdown' class='dropdown-menu'>
            <?php
              $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' order by keluar.id_keluar desc limit 10");
              foreach ($sql->result() as $row) {
            ?>

              <li><a href="konfirmasi/status/<?php echo $row->id_keluar ?>">Transaksi baru dari <td><?php echo $row->nama; ?></td></a></li>
            <?php } ?>
            <li><a href="konfirmasi/statusall/">Lihat semua</a></li>
          </ul>


        </a>

      <?php } else if ($jmlh <= 10 and $jmlh > 0) { ?>
        <a class="dropdown">
          <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
          <ul id='dropdown' class='dropdown-menu'>
            <?php
              $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='0' order by keluar.id_keluar desc");
              foreach ($sql->result() as $row) {
            ?>

              <li><a href="konfirmasi/status/<?php echo $row->id_keluar ?>">Transaksi baru dari <td><?php echo $row->nama; ?></td></a></li>
            <?php } ?>
            <li><a href="konfirmasi/statusall/">Lihat semua</a></li>
          </ul>


        </a>
      <?php } ?>



      <a href="<?php echo base_url() ?>dashboard" type="submit" class="btn btn-primary"><?php echo $this->session->userdata("username") ?> </a> <!-- session username -->
      <a href="<?php echo base_url() ?>login/logout" type="submit" class="btn btn-danger" onclick="javasciprt: return confirm('Apa Anda Yakin?')">Logout </a> <!-- session username -->
    </div>
    </div>







  <?php } else if ($this->session->userdata('level') == 'customer' or $this->session->userdata('level') == 'sales') { ?>

    <?php
            $id = $this->session->userdata('id_user');
            $jmlh = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='2' and user.id_user=$id limit 11")->num_rows();
    ?>
    <?php if ($jmlh == '0') {
    ?>
      <a class="dropdown">
        <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
        <ul id='dropdown' class='dropdown-menu'>
          <li><a>Tidak ada notifikasi baru</a></li>

        </ul>
      </a>
    <?php } else if ($jmlh > 10) { ?>

      <a class="dropdown">
        <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh - 1; ?>++</span> </a>
        <ul id='dropdown' class='dropdown-menu'>
          <?php
              $id = $this->session->userdata('id_user');
              $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='2' and user.id_user=$id order by keluar.id_keluar desc limit 10");
              foreach ($sql->result() as $row) {
          ?>
            <li><a href="keluar/status/<?php echo $row->id_keluar ?>">Transaksi kamu telah di konfirmasi</td></a></li>
          <?php } ?>
          <li><a href="keluar/statusall/">Lihat semua</a></li>
        </ul>


      </a>
    <?php } else if ($jmlh <= 10 and $jmlh > 0) { ?>
      <a class="dropdown">
        <a href="#" data-toggle="dropdown" class="btn btn-warning"><i class='fas fa-bell' style='font-size:16px'></i> <span class="label-pesan"><?php echo $jmlh; ?></span> </a>
        <ul id='dropdown' class='dropdown-menu'>
          <?php
              $id = $this->session->userdata('id_user');
              $sql = $this->db->query("select distinct keluar.id_keluar, keluar.tgl_keluar, keluar.total_keluar, user.nama, user.alamat, user.no_telp from keluar inner join detail_keluar on detail_keluar.id_keluar=keluar.id_keluar inner join user on user.id_user=keluar.id_user where detail_keluar.status='2' and user.id_user=$id order by keluar.id_keluar desc");
              foreach ($sql->result() as $row) {
          ?>
            <li><a href="keluar/status/<?php echo $row->id_keluar ?>">Transaksi kamu telah di konfirmasi</td></a></li>
          <?php } ?>
          <li><a href="keluar/statusall/">Lihat semua</a></li>
        </ul>


      </a>
    <?php } ?>
    <a href="<?php echo base_url() ?>dashboard" type="submit" class="btn btn-primary"><?php echo $this->session->userdata("username") ?> </a> <!-- session username -->
    <a href="<?php echo base_url() ?>login/logout" type="submit" class="btn btn-danger" onclick="javasciprt: return confirm('Apa Anda Yakin?')">Logout </a> <!-- session username -->
    </div>
    </div>


  <?php } else { ?>



    <a href="<?php echo base_url() ?>login" type="submit" class="btn btn-primary">login </a> <!-- session username -->
    <a href="<?php echo base_url() ?>daftar" type="submit" class="btn btn-primary">Register </a> <!-- session username -->
    </div>
    </div>
  <?php  } ?>
  </div>
  </div>
  </div>
  </nav>

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="assets/dataTables/datatables.min.css"></script>