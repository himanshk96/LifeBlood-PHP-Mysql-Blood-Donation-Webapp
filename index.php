<?php
ob_start();
 session_start();
 if( isset($_SESSION['user'])!="" ){
  header("Location: home.php");
 }
 /*include_once 'config.php';*/

 $error = false;
?>
<!DOCTYPE html>
<html >
	<head>
		<title>home</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="dist/css/bootstrap.min.css">  
		<script src="dist/jquery.min.js"></script>
		<script src="dist/js/bootstrap.min.js"></script>
		<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      
      margin: auto;
	  
  }
  </style>
	</head>
<body>
<?php include_once 'head.html'?>

<div class="container">
  <br>	
	
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="image/1.png" alt="events" width="200" height="200">
        <div class="carousel-caption">
          <h3>Lifeblood</h3>
          <p>events</p>
        </div>
      </div>

      <div class="item">
        <img src="image/3.png" alt="Chania" width="200" height="200">
        <div class="carousel-caption">
          <h3>Lifeblood</h3>
          <p>events</p>
        </div>
      </div>
    
      <div class="item">
        <img src="image/5.png" alt="Flower" width="200" height="200">
        <div class="carousel-caption">
          <h3>Lifeblood</h3>
          <p>events</p>
        </div>
      </div>

      <div class="item">
        <img src="image/8.png" alt="Flower" width="200" height="200">
        <div class="carousel-caption">
          <h3>Lifeblood</h3>
          <p>events</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
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

<?php include_once 'footer.html'?>    
	</body>
	</html>
