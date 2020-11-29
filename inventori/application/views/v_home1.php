<style>
  .thumbnail {
    border: 2px solid #888888;
  }

  .thumbnail img {
    border: 2px solid #888888;
  }

  .button {
    border: 2px solid #888888;
  }

  .stepper .stepper-arrow {
    width: 0px;
    height: 0px;
    right: 0px;
  }

  .stepper-arrow {
    opacity: 0;
  }
</style>

<div class="col-sm-12 col-sm-12 content">
  <div class="panel panel-default">
    <div class="panel-body">
      <div class="card">
        <div class="col-xs-12 text-center">
          <a href="<?php echo base_url() ?>home" type="submit" class="button button4">All </a>
          <a href="<?php echo base_url() ?>home/makanan" type="submit" class="button button4">Makanan </a>
          <a href="<?php echo base_url() ?>home/minuman" type="submit" class="button button4">Minuman</a>
          <a href="<?php echo base_url() ?>home/permen" type="submit" class="button button4">Permen</a>
          <a href="<?php echo base_url() ?>home/dapur" type="submit" class="button button4">Dapur</a>
          <a href="<?php echo base_url() ?>home/kecantikan" type="submit" class="button button4">Kecantikan</a>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <?php foreach ($home_data as $home) : ?>
      <div class="col-sm-3 col-sm-3">
        <div class="thumbnail">
          <?= img([
            'src'    => 'image/barang/' . $home->foto_barang,
            'style'    => 'width: 200px; height:200px; '
          ]) ?>
          <div align="center">
            <h6><?= $home->nama_barang ?></h6>

            <h6><b>Harga : Rp. <?php echo number_format($home->harga, 0, ',', '.') ?></b></h6>
            <p>

              <?= anchor('detail/index/' . $home->id_barang, 'Lihat Barang', [
                'class'  => 'btn btn-primary',
                'role'  => 'button'
              ]) ?>


              <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal<?php echo $home->id_barang; ?>">Beli</button>


            </p>

          </div>
        </div>
      </div>

      <div id="myModal<?php echo $home->id_barang; ?>" class="modal fade" role="dialog">
        <div class="modal-dialog">

          <!-- Modal content-->
          <form action="keranjang/simpan" method="POST">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Beli Barang</h4>
              </div>
              <div class="modal-body">
                <input type="hidden" name="id_barang" id="id_barang" value="<?php echo $home->id_barang ?>">
                <input type="hidden" name="harga" id="harga" value="<?php echo $home->harga ?>">
                <div class="form-group">
                  <label>Nama Barang</label><br>
                  <input type="text" class="form-control" name="nama_barang" id="nama_barang" readonly value="<?php echo $home->nama_barang ?>" />
                </div>
                <div class="form-group">
                  <label>Stok tersedia</label>
                  <input type="text" class="form-control" name="stok" id="stok" readonly value="<?php echo $home->stok ?>" />
                </div>
                <div class="form-group">
                  <label>Jumlah Beli </label>
                  <input type="number" min="1" class="form-control" required name="jumlah" id="jumlah" />
                  <input type="hidden" class="form-control" name="nabar" id="nabar" value="<?php echo $home->nama_barang ?>" />
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
    <?php endforeach; ?>
  </div>


  <div class="row">
    <div class="col-md-12 text-right">
      <?php echo $pagination ?>
    </div>
  </div>
</div>
</div>
</div>
</div>







</body>


</html>
</section>