<?php
ob_start();
 session_start();
 include_once 'config.php';
 include_once 'check.php';
error_reporting(E_ALL & ~E_NOTICE);
//$error = false;

            
            
                $fname=$_POST['fname'];
				$Rnum=$_POST['Registered Lisence No.'];
				$email=$_POST['email'];
				$Address=$_POST['Address']
                $mobile=$_POST['phone_number'];
				$password=$_POST['password'];
				$index = mysql_query("select `Index` from hospital_details.sql") ;
				$index=$index+1;
				
				echo $index;




$query="INSERT INTO `hospital_details` ('Index','Hname','RegNo','email_id','Address','mobile_number','password') VALUES ('$index',$fname,$Rnum,$email,$Address,$mobile,$password)";

`Index`, `f_name`, `Registered Linsence No.`, `email`,'Address', `phone_number`, `password`

$result=mysql_query($query);
echo $result.mysql_error();
header('Location :listhospital.html');
?>
