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
<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Barang</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Tambah Data Barang</h2>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="varchar">Nama Barang</label>
            <input type="text" class="form-control" required name="nama_barang" id="nama_barang" placeholder="Nama Barang" value="<?php echo $nama_barang; ?>" />
        </div>

        <div class="form-group">
            <label for="varchar">Jenis </label>
            <input type="text" class="form-control" required name="jenis" id="jenis" placeholder="Jenis" value="<?php echo $jenis; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Kemasan</label>
            <input type="text" class="form-control" required name="kemasan" id="kemasan" placeholder="Kemasan" value="<?php echo $kemasan; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Merk</label>
            <input type="text" class="form-control" required name="merk" id="merk" placeholder="Merk" value="<?php echo $merk; ?>" />
        </div>
        
        <div class="form-group">
            <label for="int">Stok </label>
            <?php if ($this->session->userdata('level') == 'manajer') { ?>
                <input type="text" min="0"  title="Masukkan data angka saja" class="form-control" required name="stok" id="stok" placeholder="Stok" value="<?php echo $stok; ?>" />
            <?php 
                } elseif ($this->session->userdata('level') == 'admin') {
                 ?>
                
                    <input type="text" min="0"  title="Masukkan data angka saja" class="form-control" readonly name="stok" id="stok" placeholder="Stok" value="<?php echo $stok; ?>" />

            <?php  } ?>
        </div>

        <div class="form-group">
            <label for="int">Harga</label>
            <input type="number" min="1"  title="Masukkan data angka saja" class="form-control" required name="harga" id="harga" placeholder="Harga" value="<?php echo $harga; ?>" />
        </div>

        <div class="form-group">
            <label for="int">Supplier </label>
            <select name="id_supplier" class="form-control" required>

                <option value= "<?php echo $id_supplier ?>"><?php echo $id_supplier ?> </option>
                <?php 
                $sql = $this->db->get('supplier');
                foreach ($sql->result() as $row) {
                 ?>
                <option value="<?php echo $row->id_supplier ?>"><?php echo $row->nama_supplier ?></option>
            <?php } ?>
            </select>
        </div>
        <div class="form-group">
            <label for="file">Foto Barang </label>
            <input type="file" class="form-control" name="foto_barang" />
        </div>
        <input type="hidden" name="id_barang" value="<?php echo $id_barang; ?>" /> 
        <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
        <a href="<?php echo site_url('barang') ?>" class="btn btn-default">Cancel</a>
    </form>

                </div>
                </div>
                </div>
                </div>
                <script>
	function klik(){
		swal ("Sukses!", "Data berhasil di update", "success")
	}
</script>
