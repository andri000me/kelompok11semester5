<div class="col-xs-12 col-sm-9 content">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title"><a href="javascript:void(0);" class="toggle-sidebar"><span class="fa fa-angle-double-left" data-toggle="offcanvas" title="Maximize Panel"></span></a>Data Carousel</h3>
              </div>
              <div class="panel-body">
                <div class="content-row">
                  <h2 class="content-row-title">Ubah Data carousel</h2>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="varchar">Judul</label>
            <input type="text" class="form-control" name="judul" id="judul" placeholder="Judul" value="<?php echo $judul; ?>" />
        </div>

        <div class="form-group">
            <label for="varchar">Isi </label>
            <input type="text" class="form-control" name="isi" id="isi" placeholder="Jenis" value="<?php echo $isi; ?>" />
        </div>

        <div class="form-group">
            <label for="file">Gambar</label>
            <input type="file" class="form-control" name="gambar" />
        </div>
        <input type="hidden" name="id_carousel" value="<?php echo $id_carousel; ?>" /> 
        <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
        <a href="<?php echo site_url('carousel') ?>" class="btn btn-default">Cancel</a>
    </form>

                </div>
                </div>
                </div>
                </div>
           
