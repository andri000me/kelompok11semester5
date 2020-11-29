<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="assets/dist/css/site.min.css">
  <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
  <style>
    .thumbnail {
      border: 1px solid rgba(136, 136, 136, 0.5);
      box-shadow: 1px 2px rgba(136, 136, 136, 0.5);
    }

    .thumbnail img {
      box-shadow: 1px 2px rgba(136, 136, 136, 0.5);

    }
  </style>
</head>


<div class="col-xs-12 col-sm-12 content">

  <div class="panel panel-default">

    <div class="panel-body">
      <div class="container">
        <div class="content-row">

          <br>
          <center>
            <h2 class="content-row-title">Lihat Data Barang</h2>
          </center>


          <div class="flickity  mfp-hover" id="gallery-main">

            <div class="col-sm-4 col-sm-offset-1">
              <?= img([
                'src'    => 'image/barang/' . $foto_barang,
                'style'    => 'width: 200px; height:200px; '
              ]) ?>
            </div>

          </div> <!-- end gallery main -->
        </div>


        <div class="col-md-5">

          <table class="table table-hover table-responsive">
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span>Nama Barang</td>
              <td>:</td>
              <td><?php echo $nama_barang; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Jenis</td>
              <td>:</td>
              <td><?php echo $jenis; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Kemasan</td>
              <td>:</td>
              <td><?php echo $kemasan; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Merk</td>
              <td>:</td>
              <td><?php echo $merk; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Stok</td>
              <td>:</td>
              <td><?php echo $stok; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Harga</td>
              <td>:</td>
              <td><?php echo $harga; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Terjual</td>
              <td>:</td>
              <td><?php echo $terjual; ?></span></td>
            </tr>
            <tr>
              <td width="5px"><span class="fa fa-dot-circle"></span></td>
              <td><span class="sku">Rating</td>
              <td>:</td>
              <td>
                <?php
                foreach ($bintang_data as $bintang) {
                  echo round($bintang->bintang_rating, 2);

                ?>

                  <?php
                  $x = round($bintang->bintang_rating);
                  $j = 5 - $x;
                  for ($i = 0; $i < $x; $i++) {
                  ?>
                    <i class="fa fa-star" style="color:#f39c12;"></i>
                  <?php }
                  for ($i = 0; $i < $j; $i++) { ?>
                    <i class="fa fa-star-o" style="color:#f39c12;"></i>
                  <?php }
                  ?>
                <?php
                }
                ?>
              </td>
            </tr>

            <tr>
              <td><input type="hidden" name="id_barang" value="<?php echo $id_barang; ?>" /> </td>


              <td><a href="<?php echo site_url('home') ?>" class="btn btn-danger">Kembali</a>
              </td>
              <td></td>


              <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<?php echo $id_barang; ?>">Beli</button></td>

            </tr>

          </table>





          <div id="myModal<?php echo $id_barang; ?>" class="modal fade" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <form action="keranjang/simpan" method="POST">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Beli Barang</h4>
                  </div>
                  <div class="modal-body">
                    <input type="hidden" name="id_barang" id="id_barang" value="<?php echo $id_barang ?>">
                    <input type="hidden" name="harga" id="harga" value="<?php echo $harga ?>">
                    <div class="form-group">
                      <label>Nama Barang</label><br>
                      <input type="text" class="form-control" name="nama_barang" id="nama_barang" readonly value="<?php echo $nama_barang ?>" />
                    </div>
                    <div class="form-group">
                      <label>Stok tersedia</label>
                      <input type="text" class="form-control" name="stok" id="stok" readonly value="<?php echo $stok ?>" />
                    </div>
                    <div class="form-group">
                      <label>Jumlah Beli </label>
                      <input type="text" class="form-control" name="jumlah" id="jumlah" />
                      <input type="hidden" class="form-control" name="nabar" id="nabar" value="<?php echo $nama_barang ?>" />
                    </div>

                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    <button class="btn btn-info" type="submit">Beli</button>
                  </div>
                </div>
              </form>

            </div>
          </div>




        </div>

        <div class="col-md-6">
          <br><br><br><br>
          <div class="thumbnail">

            <center>
              <h4>Diskusi</h4>

            </center>
            <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#diskusi<?php echo $id_barang; ?>">Tambah Diskusi</button></td>
            <br><br>
            <?php
            foreach ($diskusi_data as $diskusi) {
            ?>

              <p><b><?php echo $diskusi->nama ?> </b><i><?php echo $diskusi->tgl_diskusi ?></i></p>
              <p><?php echo $diskusi->isi_diskusi ?></p>
              <?php if ($this->session->userdata('level') == 'manajer' or $this->session->userdata('level') == 'admin') { ?>

                <?php echo anchor(site_url('detail/delete_diskusi/' . $diskusi->id_diskusi . '/' . $id_barang), 'delete'); ?>

              <?php } ?>
              <hr>
              <br>
            <?php
            }
            ?>




            <div id="diskusi<?php echo $id_barang; ?>" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <form action="detail/diskusi" method="POST">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Diskusi Barang</h4>
                    </div>
                    <div class="modal-body">
                      <input type="hidden" name="id_barang" id="id_barang" value="<?php echo $id_barang ?>">
                      <input type="hidden" name="id_user" id="id_user" value="<?php echo $this->session->userdata("id_user") ?>">
                      <label for="">Isi Diskusi</label>
                      <br>
                      <textarea name="isi_diskusi" id="isi_diskusi" required cols="90" rows="5"></textarea>

                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                      <button class="btn btn-info" type="submit">kirim</button>
                    </div>
                  </div>
                </form>

              </div>
            </div>
          </div>


        </div>

        <div class="col-md-6">
          <br><br><br><br>
          <div class="thumbnail">

            <center>
              <h4>Rating</h4>

            </center>
            <td><button type="button" class="btn btn-info" data-toggle="modal" data-target="#rating<?php echo $id_barang; ?>">Tambah Rating</button></td>
            <br><br>
            <?php
            foreach ($rating_data as $rating) {
            ?>

              <p><b><?php echo $rating->nama ?> </b><i><?php echo $rating->tgl_rating ?></i></p>
              <p> <?php
                  foreach ($bintang_data as $bintang) {
                    echo $rating->bintang_rating;
                  ?>

                  <?php
                    $x = round($rating->bintang_rating);
                    $j = 5 - $x;
                    for ($i = 0; $i < $x; $i++) {
                  ?>
                    <i class="fa fa-star" style="color:#f39c12;"></i>
                  <?php }
                    for ($i = 0; $i < $j; $i++) { ?>
                    <i class="fa fa-star-o" style="color:#f39c12;"></i>
                  <?php }
                  ?>
                <?php
                  }
                ?></p>
              <p><?php echo $rating->isi_rating ?></p>
              <?php if ($this->session->userdata('level') == 'manajer' or $this->session->userdata('level') == 'admin') { ?>
                <?php echo anchor(site_url('detail/delete_rating/' . $rating->id_rating . '/' . $id_barang), 'delete'); ?>

              <?php } ?>
              <hr>
              <br>
            <?php
            }
            ?>




            <div id="rating<?php echo $id_barang; ?>" class="modal fade" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <form action="detail/rating" method="POST">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Tambah Rating</h4>
                    </div>
                    <div class="modal-body">
                      <input type="hidden" name="id_barang" id="id_barang" value="<?php echo $id_barang ?>">
                      <input type="hidden" name="id_user" id="id_user" value="<?php echo $this->session->userdata("id_user") ?>">
                      <div class="form-group">
                        <label for="bintang_rating">Rating</label>
                        <select name="bintang_rating" id="bintang_rating" class="form-control" style="font-family:'FontAwesome', Arial; color:#f39c12;">

                          <option value="5">
                            5 &#xf005;&#xf005;&#xf005;&#xf005;&#xf005;
                          </option>
                          <option value="4">
                            4 &#xf005;&#xf005;&#xf005;&#xf005;&#xf006;
                          </option>
                          <option value="3">
                            3 &#xf005;&#xf005;&#xf005;&#xf006;&#xf006;
                          </option>
                          <option value="2">
                            2 &#xf005;&#xf005;&#xf006;&#xf006;&#xf006;
                          </option>
                          <option value="1">
                            1 &#xf005;&#xf006;&#xf006;&#xf006;&#xf006;
                          </option>
                          </i>
                        </select>
                      </div>
                      <label for="">Isi Rating</label>
                      <br>
                      <textarea name="isi_rating" id="isi_rating" required cols="90" rows="5"></textarea>


                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                      <button class="btn btn-info" type="submit">Kirim</button>
                    </div>
                  </div>
                </form>

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
</div>

</body>

</html>
</section>