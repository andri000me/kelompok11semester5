<!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="stylesheet" href="assets/dist/css/site.min.css">
    <script type="text/javascript" src="assets/dist/js/site.min.js"></script>
	</head>

<style>
	.panel > .panel-body {
    background-image: none;
    background-color: #ffffff;
    /* background: url('image/carousel/kokola10.jpg'); */
    }
    
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 4px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 15px;
}

.button1 {
  background-color: white; 
  color: green; 
  border: 2px solid #4CAF50;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button4 {
  background-color: white;
  color: black;
  border: 2px solid #e7e7e7;
}

.button5 {
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
.input-group-btn:last-child>.btn {
  box-shadow: 1px 2px #888888;
  height: 50px;
  border-top-right-radius: 10px;
  border-bottom-right-radius: 10px;
}
.input-group .form-control:first-child {
  box-shadow: 1px 2px #888888;
  width: 1040px;
  height: 50px;
  border-top-left-radius: 10px;
  border-bottom-left-radius: 10px;


}



</style>
	<body>
    
	<div class="col-xs-12 col-xs-12 content">
      <div class="panel panel-default">
        <div class="panel-body">
        <div class="card">
        <div class="col-xs-12 text-left">
                
                </div>
          
                <div class="col-xs-12 text-center">
                <div class="home-category-list__category-grid"></div>
                <form action="<?php echo site_url('home/index'); ?>" class="form-inline" method="get">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="cari nama barang" name="q">
                        <span class="input-group-btn">
                            <?php 
                                if ($q <> '')
                                {
                                    ?>
                                   
                                    <?php
                                }
                            ?>
                          <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                    </div>
                    </div>
                </form>

                </div>
            
                
                </div>

	