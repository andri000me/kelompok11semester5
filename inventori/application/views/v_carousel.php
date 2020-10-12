<!DOCTYPE html>
<html>
<head>
	<title>Carousel Bootstrap</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>	
</head>
<body>

   <div class="container">		

	<br/>
	<div class="col-md-12 col-md">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				
					<?php 
					$sql = $this->db->query("select * from carousel");
					foreach ($sql->result() as $row) {
					?>
					<li data-target="#myCarousel" data-slide-to="<?php echo $row->id_carousel; ?>" ></li>
					<?php } ?>
			</ol>

			<!-- deklarasi carousel -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="image/carousel/kokola10.jpg">
					<div class="carousel-caption">
						<h3>Promo Hari Raya</h3>
						<p>Kokola</p>
					</div>
				</div>

				<?php 
					$sql = $this->db->query("select * from carousel");
					foreach ($sql->result() as $row) {
					?>
					
				<div class="item">
					<img src="image/carousel/<?php echo $row->gambar; ?> " >
					<div class="carousel-caption">
						<h3><?php echo $row->judul; ?></h3>
						<p><?php echo $row->isi; ?></p>
					</div>
				</div>
				<?php } ?>
    			
			</div>

			<!-- membuat panah next dan previous -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
   </div>
</body>
</html>
</br>
</br>