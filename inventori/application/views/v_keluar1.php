<style>
.stepper .stepper-arrow{
  width: 0px;
  height: 0px;
  right: 0px;
}
.stepper-arrow { 
    opacity: 0;
}
</style>
          <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

          <div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Transaksi Barang keluar</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Transaksi Barang keluar</h2>
<div class="row">
	<div class="col-md-12">
	<form action="keluar/simpan_penjualan" method="POST">
		<div class="form-group">
            <label>Kode Pemesanan </label>
            <input type="text" class="form-control" name="kode_penjualan" id="kode_penjualan" value="<?php echo $kode; ?>" readonly/>
        </div>
        <div class="table-resposive">
        <table class="table table-bordered">
        	<tr>
        		<th>No.</th>
        		<th>Kode Barang</th>
        		<th>Nama Barang</th>
        		<th>Jumlah</th>
            <th>Harga</th>
            <th>Diskon(%)</th>
        		<th>Subtotal</th>
        		<th>
        			<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">Tambah Pesanan</button>
        		</th>
        	</tr>
        	<tr>
        	<?php $i=1; $no=1;?>
            <?php foreach($this->cart->contents() as $items): ?>
        		<td><?php echo $no; ?></td>
                <td><?php echo $items['id']; ?></td>
                <td><?php echo $items['name']; ?></td>
                <td><?php echo $items['qty']; ?></td>
                <td>Rp. <?php echo $this->cart->format_number($items['harga']); ?></td>
                <td><?php echo $this->cart->format_number($items['coupon']); ?>%</td>
                <td>Rp. <?php echo $this->cart->format_number($items['subtotal']); ?></td>
                <td>
                    <a href="keluar/hapus_cart/<?php echo $items['rowid'] ?>" class="btn btn-warning btn-sm">X</a>
                </td>
        	</tr>
        	<?php $i++; $no++;?>
            <?php endforeach; ?>
            <tr>
        		<th colspan="6">Total Harga</th>
        		<th colspan="2">Rp. <?php echo $this->cart->format_number($this->cart->total()); ?></th>
        	</tr>
        </table>
        </div>

        <div class="form-group">
            <label for="int">Pelanggan</label>
            <select name="id_user" class="form-control" required>
            <option value="">--pilih nama pelanggan--</option>
                <?php 
                    $where = "level='customer'";
                    $this->db->where($where);
                    $sql =  $this->db->get('user');
                foreach ($sql->result() as $row) {
                 ?>
                <option value="<?php echo $row->id_user ?>"><?php echo $row->nama ?></option>
            <?php } ?>
            </select>
        </div>
        
        <div class="form-group">
        	<input type="hidden" name="total_keluar" value="<?php echo $this->cart->total() ?>">
        	<input type="hidden" name="tgl_penjualan" value="<?php echo date('Y-m-d h:i:sa') ?>">
        	
            <button type="submit" class="btn btn-primary">Simpan</button>
            <a href="masuk" class="btn btn-default">Close</a>
        </div>
	</form>
	</div>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <form action="keluar/simpan_cart" method="POST">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tambah Barang</h4>
      </div>
      <div class="modal-body">
      	
        <div class="form-group">
        	<label>Nama Barang</label><br>
	      <select id="nama_barang" name="nama_barang"  class="form-control" >
        <option value="">--pilih barang--</option>
	        <?php 
	        $sql = $this->db->get('barang');
	        foreach ($sql->result() as $row) {
           ?>
	        <option value="<?php echo $row->id_barang ?>"><?php echo $row->nama_barang ?></option>
	        <?php } ?>
	      </select>
	    </div>
	    <div class="form-group">
            <label>Kode Barang</label>
            <input type="text" class="form-control" name="id_barang" id="id_barang" readonly/>
        </div>
	    <div class="form-group">
            <label>Stok tersedia</label>
            <input type="text" class="form-control" name="stok" id="stok" readonly/>
        </div>
        <div class="form-group">
            <label>Harga </label>
            <input type="text" class="form-control" name="harga" id="harga" readonly/>
        </div>
        <div class="form-group">
            <label>Jumlah Beli </label>
            <input type="number" min="1" class="form-control" name="jumlah" required id="jumlah"/>
            <input type="hidden" class="form-control" name="nabar" id="nabar"/>
        </div>

        <div class="form-group">
            <label>Diskon(%)</label>
            <input type="number" min="0" max="100" class="form-control" name="coupon" required id="coupon"/>
        </div>

      </div>
      <div class="modal-footer">
      	<button class="btn btn-info" type="submit">Simpan</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
    </form>

  </div>
</div>

<script type="text/javascript">
  $(document).ready(function(){
    $('#nama_barang').change(function() {
      var id = $(this).val();
      $.ajax({
        type : 'POST',
        url : '<?php echo base_url('keluar/cek_barang') ?>',
        Cache : false,
        dataType: "json",
        data : 'id_barang='+id,
        success : function(resp) {
            $('#id_barang').val(resp.id_barang); 
            $('#stok').val(resp.stok); 
            $('#harga').val(resp.harga); 
            $('#nabar').val(resp.nama_barang); 
        }
      });
      // alert(id);
    });


    
  });
</script>