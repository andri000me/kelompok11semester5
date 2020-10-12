<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>

    <div class="col-xs-12 col-sm-12 content">
            <div class="panel panel-default">
             
              <div class="panel-body">
                <div class="content-row">
                  <center><h2 class="content-row-title">Lihat Data Barang</h2></center>


<div class="flickity  mfp-hover" id="gallery-main">

<div class="col-sm-3 col-sm-offset-1">
            <?=img([
				'src'		=> 'image/barang/' . $foto_barang, 
				'style'		=> 'width: 200px; height:200px; ' 
              ])?>
  </div>

</div> <!-- end gallery main -->
</div> 


<div class="col-md-3">
            </div>
               <div class="col-md-5">
                  <table class="table table-hover table-responsive">
  


                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td><span>Nama Barang</td>
                        <td><?php echo $nama_barang; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Jenis</td>
                        <td ><?php echo $jenis; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Kemasan</td>
                        <td ><?php echo $kemasan; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Merk</td>
                        <td ><?php echo $merk; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Stok</td>
                        <td ><?php echo $stok; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Harga</td>
                        <td ><?php echo $harga; ?></span></td>
                    </tr>
                    <tr>
                        <td width="5px"><span class="fa fa-dot-circle"></span></td>
                        <td ><span class="sku">Nama Supplier</td>
                        <td ><?php echo $nama_supplier; ?></span></td>
                    </tr>

                    <tr>
        <td><input type="hidden" name="id_barang" value="<?php echo $id_barang; ?>" /> </td>

       
       <td><a href="<?php echo site_url('home') ?>" class="btn btn-danger">Kembali</a>
       </td>
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
			<input type="text" class="form-control" name="nama_barang" id="nama_barang" readonly value="<?php echo $nama_barang ?>"/>
	    </div>
	    <div class="form-group">
            <label>Stok tersedia</label>
            <input type="text" class="form-control" name="stok" id="stok" readonly value="<?php echo $stok ?>"/>
        </div>
        <div class="form-group">
            <label>Jumlah Beli </label>
            <input type="text" class="form-control" name="jumlah" id="jumlah"/>
            <input type="hidden" class="form-control" name="nabar" id="nabar" value="<?php echo $nama_barang ?>"/>
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
