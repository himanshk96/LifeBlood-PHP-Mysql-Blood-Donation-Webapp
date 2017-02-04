<?php
ob_start();
 session_start();

 include_once 'config.php';
 include_once 'check.php';
error_reporting(E_ALL & ~E_NOTICE);
//$error = false;

            
            
                $fname=$_POST['first_name'];
                $lname=$_POST['last_name'];
                $password=$_POST['password'];
                $password_again=$_POST['password2'];
                $mobile=$_POST['mobile'];
                $email=$_POST['email_id'];
                $blood_group=$_POST['bg'];
                $birthdate=$_POST['birthdate'];
                $gender=$_POST['gender'];
                 $AgeGroup=$_POST['AgeGroup'];
                







//$query = "INSERT into bloodgroup values ('01','B-')";
//( index,first_name, last_name,password, email_id, password,gender,blood_group,mobile_number,AgeGroupIndex )
$query="INSERT INTO `personal_details` (`Index`, `first_name`, `last_name`, `email_id`, `password`, `gender`, `blood_group`, `birth_date`, `mobile_no`, `AgeGroupIndex`) VALUES ('15','$fname','$lname', '$email', '$password', '$gender', '$blood_group', '$birthdate', '$mobile', '$AgeGroup')";

// $query = "INSERT INTO `personal_details` VALUES ( '02',$first_name','$last_name', '$email_id','$password', '1','$blood_group','$mobile','$birthdate','$AgeGroup' )";
$result=mysql_query($query);
header('Location: login.php');
echo $result.mysql_error();
//header('Location :login.html');
?>
