<!DOCTYPE html>
<html>
<head>
	<title> Searching </title>
	<style type="text/css">
		
		table
		{	background-color: #FCF;	}

		th
		{
			width: 150px;
			text-align: left;
		}
	</style> 
</head>

<body>
	<h1>User Search</h1>
	<form method="post" action="search2.php">
	<input type="hidden" name="submitted" value="true"/>

	<label> Search category: 

	<select name="category">
		<option value="first_name">  first_name</option>
		<option value="blood_group"> blood_group</option>
		<option value="mobile_no">   mobile_no</option>
		<option value="birth_date">  birth_date</option>
		<option value="gender">      gender</option>
	</select>
	</label>

	<label> Search Criteria: <input type="text" name="criteria"> </label>
	<input type="submit" value="search now" />

	</form>

<?php 

if (isset($_POST['submitted']))
{	//connect to database

	include("connectmysqlsearch.php");
   
	$category = $_POST['category'];
	$criteria = $_POST['criteria'];
	$query = "SELECT * FROM personal_details WHERE $category LIKE '%".$criteria."%'";
	$result = mysqli_query($dbcon, $query) or die("error retriving data");
	$num_rows = mysqli_num_rows($result);

	echo "$num_rows results found";
	echo "<table>";
	echo "<tr> <th>first_name</th> <th>blood_group</th> <th>mobile_no</th> <th>birth_date</th> <th>gender</th>  </tr>";

	while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
	{
		echo "<tr><td>";
		echo $row['first_name'];
		echo "</td><td>";
		echo $row['blood_group'];
		echo "</td><td>";
		echo $row['mobile_no'];
		echo "</td><td>";
		echo $row['birth_date'];
		echo "</td><td>";
		echo $row['gender'];
		echo "</td></tr>";
			 
	}
	echo "</table>";

}

?>
</body>
</html>