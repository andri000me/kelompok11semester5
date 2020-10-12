<div class="container-fluid">
        <div class="row row-offcanvas row-offcanvas-left">
            <div class="col-xs-6 col-sm-3 sidebar-offcanvas" role="navigation">
            <ul class="list-group panel">
                <li class="list-group-item"><i class="glyphicon glyphicon-align-justify"></i> <b>MENU UTAMA</b></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>dashboard"><i class="glyphicon glyphicon-home"></i>Dashboard </a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>profil"><i class="glyphicon glyphicon-user"></i>Profil</a></li>
                
                <?php 
                if ($this->session->userdata('level') == 'admin') {
                 ?>
                <li>
                  <a href="#demo6" class="list-group-item " data-toggle="collapse"><i class="fa fa-users"></i>Data Pegawai  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo6">
                    <a href="sales" class="list-group-item">Data Sales</a>
                    <a href="gudang" class="list-group-item">Data Gudang</a>    
                    </li>
                </li>

                <li>
                  <a href="#demo4" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-th-large"></i>Data Master  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo4">
                      <a href="barang" class="list-group-item"> Data Barang</a>
                      <a href="pelanggan" class="list-group-item"> Data Pelanggan</a>
                      <a href="supplier" class="list-group-item"> Data Supplier</a>
                  
                    </li>
                </li>
                <li>  
                  <a href="#demo5" class="list-group-item" data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Data Transaksi  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="konfirmasi" class="list-group-item">Konfrmasi Pembayaran</a>
                      </li>
                      <li class="collapse" id="demo5">
                      <a href="masuk" class="list-group-item">Transaksi Barang Masuk</a>
                      </li>
                      <li class="collapse"  id="demo5">
                      <a href="keluar" class="list-group-item">Transaksi Barang Keluar</a>
                           
                      </li>
                </li>
                <li class="list-group-item"><a href="<?php echo base_url()?>carousel"><i class="glyphicon glyphicon-picture"></i>Data Slider</a></li>

                
                <li class="list-group-item"><a href="<?php echo base_url()?>login/logout" type="submit" onclick="javasciprt: return confirm('Apa Anda Yakin?')" ><i class="glyphicon glyphicon-share"></i>Logout </a></li>

               
              
                <?php 
                } elseif ($this->session->userdata('level') == 'customer' or $this->session->userdata('level') == 'sales') {
                 ?>

              <li>
                  <a href="#demo5" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Data Transaksi  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="konfirmasi" class="list-group-item">Menunggu Konfirmasi</a>
                      <a href="keluar" class="list-group-item">Telah Dikonfirmasi</a>
                      
                    </li>
                </li>
                <li class="list-group-item"><a href="<?php echo base_url()?>login/logout" type="submit" onclick="javasciprt: return confirm('Apa Anda Yakin?')" ><i class="glyphicon glyphicon-share"></i>Logout </a></li>

                <?php 
                } elseif ($this->session->userdata('level') == 'manajer')  {
                 ?>
                <li>
                  <a href="#demo6" class="list-group-item " data-toggle="collapse"><i class="fa fa-users"></i>Data Pegawai  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo6">
                    <a href="user" class="list-group-item">Data Admin</a>
                    <a href="sales" class="list-group-item">Data Sales</a>
                    <a href="gudang" class="list-group-item">Data Gudang</a>    
                    </li>
                </li>
                <li>
                  <a href="#demo4" class="list-group-item " data-toggle="collapse"><i class="glyphicon glyphicon-th-large"></i>Data Master  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo4">
                      <a href="barang" class="list-group-item"> Data Barang</a>
                      <a href="pelanggan" class="list-group-item"> Data Pelanggan</a>
                      <a href="supplier" class="list-group-item"> Data Supplier</a>
                  
                    </li>
                </li>

                
                 <li>  
                  <a href="#demo5" class="list-group-item" data-toggle="collapse"><i class="glyphicon glyphicon-folder-open"></i>Data Transaksi  <span class="glyphicon glyphicon-chevron-right"></span></a>
                    <li class="collapse" id="demo5">
                    <a href="konfirmasi" class="list-group-item">Konfrmasi Pembayaran</a>
                      </li>
                      <li class="collapse" id="demo5">
                      <a href="masuk" class="list-group-item">Transaksi Barang Masuk</a>
                      </li>
                      <li class="collapse"  id="demo5">
                      <a href="keluar" class="list-group-item">Transaksi Barang Keluar</a>
                           
                      </li>
                </li>
                <li class="list-group-item"><a href="<?php echo base_url()?>carousel"><i class="glyphicon glyphicon-picture"></i>Data Slider</a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>activity" type="submit"><i class="fa fa-history"></i>Data Activity </a></li>
                <li class="list-group-item"><a href="<?php echo base_url()?>login/logout" type="submit" onclick="javasciprt: return confirm('Apa Anda Yakin?')" ><i class="glyphicon glyphicon-share"></i>Logout </a></li>
                

                <?php } ?>

              </ul>
          </div>