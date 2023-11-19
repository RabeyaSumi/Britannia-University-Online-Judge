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
        <title>Description</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">







</head>
<body>
<div class="main">
<?php

require_once("header.php");

?>

<div class="main-content" style="margin-left:200px; height:900px" ><br><br>
<?php

require_once("config.php");

if($_GET['id'])
{
  $problemid=$_GET['id'];
}

if(isset($_GET['name']))
{
	$problem=$_GET['name'];
	$sql="SELECT * FROM archieve WHERE pbname='$problem'";
}
else
{
  $sql="SELECT * FROM archieve WHERE id='$problemid'";
}



$sq=mysqli_query($con,$sql);

$row=mysqli_fetch_array($sq);


echo "
<div class=\"row log\">
<div class=\"col-sm-10\">
<div class=\"\"><h3 style=\"text-align:center;\">$row[pbname]</h3></div>
</div>

<div class=\"col-sm-1\">

</div>

<div class=\"col-sm-1\">
  
</div>

</div>";


echo "

<div class=\"row cspace\">
<div class=\"col-sm-10\">
<b>Problem Description</b><br><br><textarea class=\"form-control\" rows=\"33\" cols=\"100\" readonly>$row[pbdes]</textarea><br>";

echo "<a class=\"btn btn-success\" href=\"submit.php?id=$row[id]\">Submit Your Code</a></div>";





?>

</div>
</div>
<?php

require_once("footer.php");

?>
</div>
</body>
</html>