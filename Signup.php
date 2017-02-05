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
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
		<link rel="stylesheet" href="dist/css/bootstrap.min.css">  
		<script src="dist/js/bootstrap.min.js"></script>
		<script src="dist/validation.js"></script>
</head>
<body>



<?php include_once 'head.html'?>


<div class="container">
	<div class="jumbotron">
		<h2>Sign up</h2>
	</div>
<form name="registration"class="form-horizontal" action="register.php" method="post">
    <div class="form-group">
      <div class="col-sm-3">
        <input type="text" class="form-control" id="uname" placeholder="first name">
      </div>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="uname"  placeholder="last name">
      </div>
    </div>
	  <div class="form-group">
      <div class="col-sm-6">
        <input type="email" class="form-control" id="email"  placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-6">          
        <input type="password" class="form-control" id="passid"  placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">
      <div class="col-sm-6">          
        <input type="password" class="form-control" id="pwd"  placeholder="Confirm password">
      </div>
    </div>
	
	<div class="form-group">
		<div class="col-sm-3">
		<input type="date" class="form-control" id="bdate" placeholder="birth date">
		</div>
		<div class="col-sm-3">
		<input type="tel" class="form-control" id="phone_number" placeholder="phone number">
		</div>
		</div>
	<div class="form-group">
	  <div class="col-sm-3">
      <select class="form-control" id="sel1">
					<option value="blood group" >blood group</option>
					<option value="A+">A+</option>
					<option value="A-">A-</option>
					<option value="B+">B+</option>
					<option value="B-">B-</option>
					<option value="AB+">AB+</option>
					<option value="AB-">AB+</option>
					<option value="O+">O+</option>
					<option value="O-">O-</option>
      </select>
	  </div>
	  <div class="col-sm-3">
      <select class="form-control" id="sel2">
        <option value="ahmedabad">AHMEDABAD</option>
		<option value="vadodara">VADODARA</option>
		<option value="surat">SURAT</option>
		<option value="rajkot">RAJKOT</option>
      </select>
	  </div>
	  </div>
    <div class="form-group">        
      <div class="col-sm-3">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
	  <div class="col-sm-3">
	  <button type="reset" class="btn btn-danger">Reset</button>
    </div>
	</div>
  </form>
  </div>
<?php include_once 'footer.html'?>
</body>
</html>
