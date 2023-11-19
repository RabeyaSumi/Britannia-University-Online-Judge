<?php

session_start();

if(!isset($_SESSION["un"]))
{
  header("Location:login.php");
}

if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
}





?>


<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
       

        <style>
         
        </style>





</head>
<body>

<?php

include("header.php");

?>

<div style="margin-left:100px;" class="main-content">
<div class="row log">
<div class="col-sm-10">
<br><br><div class=""><h3 style="text-align:center;">Show Code</h3></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>




<div class="row cspace">
<div class="col-sm-8">

<?php



require_once("config.php");

if(isset($_GET['nm']))
{
$data=$_GET['nm'];
$get=$_GET['id'];
}



$show="SELECT * FROM code WHERE id='$get'";

$sq=mysqli_query($con,$show);

echo "Submitted By : $data<br><br>";

while($row=mysqli_fetch_array($sq))
{
	echo("Submit Id: $row[id]<br><br><textarea id='div' class=\"form-control\" rows=\"30\" cols=\"40\">$row[source_code]</textarea>");
}



?>


</div>

<div class="col-sm-4">

</div>
</div>
</div><br><br><br>

</div>

<?php

include("footer.php");

?>


</body>
</html>