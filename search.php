<!DOCTYPE html>
<html >
	<head>
	<title>Search</title>
	<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="dist/css/bootstrap.min.css">  
		<script src="dist/js/bootstrap.min.js"></script>
	</head>
<body>
<?php include_once 'head.html'?>

	<div class="container">
	<div class="jumbotron"><h2>Search Blood Group </h2></div>
		
		<form action="welcome.php"> <!--result.html-->
    <div class="form-group">
      <label for="sel1"><h3>Blood Group<h3> </label>
      <select class="form-control" id="sel1">
					<option value="A+">A+</option>
					<option value="A-">A-</option>
					<option value="B+">B+</option>
					<option value="B-">B-</option>
					<option value="AB+">AB+</option>
					<option value="AB-">AB+</option>
					<option value="O+">O+</option>
					<option value="O-">O-</option>
      </select>
		<label for="sel2"><h3>City<h3> </label>
      <select class="form-control" id="sel2">
        <option value="ahmedabad">AHMEDABAD</option>
		<option value="vadodara">VADODARA</option>
		<option value="surat">SURAT</option>
		<option value="rajkot">RAJKOT</option>
      </select><br>
    	<input class="btn btn-default" type="submit" name="search" value="search"></form>
</div>
      </div>
    
    <?php include_once 'footer.html'?>
	</body>
	</html>
