<?php 
				$id = $this->session->userdata('id_user');
				$sql = $this->db->query("SELECT * from user where id_user=$id");
				foreach ($sql->result() as $row) {
				 ?>
<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Profil</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Data Profil</h2>
                </br>
<form action="profil/update_action" method="post" enctype="multipart/form-data">
        <div class="form-group">
        
        <img src="image/user/<?php echo $row->foto; ?>" height="100px" width="100px" >
            <label for="file"></label>
            <input type="file" class="form-control" name="foto" />
        </div>
        <div class="form-group">
            <label for="varchar">Email</label>
            <input type="text" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$"  title="Masukan email (contoh : wirganteng@gmail.com)" readonly name="email" id="email" placeholder="Email" value="<?php echo $row->email; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Username</label>
            <input type="text" class="form-control" required name="username" id="username" placeholder="Username" value="<?php echo $row->username; ?>" />
        </div>
       
        <div class="form-group">
            <label for="varchar">Level </label>
            <input type="level" class="form-control" readonly name="level" id="level" placeholder="level" value="<?php echo $row->level; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Nama User</label>
            <input type="text" class="form-control" pattern="[A-Za-z ]+" required name="nama" id="nama" placeholder="Nama User" value="<?php echo $row->nama; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Tanggal Lahir</label>
            <input type="date" class="form-control" required name="tgl_lahir" id="tgl_lahir" placeholder="0000-00-00" value="<?php echo $row->tgl_lahir; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Jenis Kelamin</label>
            <input type="jenis_kelamin" class="form-control" readonly name="jenis_kelamin" id="jenis_kelamin" placeholder="jenis kelamin" value="<?php echo $row->jenis_kelamin; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">Alamat</label>
            <input type="text" class="form-control" pattern="[A-Za-z ]+" required name="alamat" id="alamat" placeholder="Alamat" value="<?php echo $row->alamat; ?>" />
        </div>
        <div class="form-group">
            <label for="varchar">No Telepon</label>
            <input type="text" class="form-control" pattern ="^[0-9]{10}$|^[0-9]{12}$" title="081xxxxxxxxx" required name="no_telp" id="no_telp" placeholder="No telepon" value="<?php echo $row->no_telp; ?>" />
        </div>

        <div class="form-group">
            <label for="varchar">Password </label>
            <input type="password" class="form-control" name="password" id="password" placeholder ="Biarkan kosong jika tidak ingin mengubah password!"  />
        </div>

        <div class="form-group">
            <label for="varchar"> Ulangi Password </label>
            <input type="password" class="form-control"  name="password1" id="password1" placeholder ="Biarkan kosong jika tidak ingin mengubah password!" />
        </div>

        <input type="hidden" name="id_user" value="<?php echo $row->id_user; ?>" /> 
        <button type="submit" class="btn btn-primary">Simpan</button> 
        <a href="<?php echo site_url('user') ?>" class="btn btn-default">Cancel</a>
                </form>
                <?php } ?>

       