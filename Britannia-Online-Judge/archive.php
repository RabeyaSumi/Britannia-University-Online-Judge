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
        <title>Archive</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
	    <link rel="stylesheet" href="css/font-awesome.min.css">
	    <link rel="stylesheet" href="css/style.css">





</head>
<body>
<div class="main">
<?php

include("header.php");

?>

<div class="main-content">
<div class="row log">
<div class="col-sm-10">
<div class="lead"><h2 style="text-align:center; PADDING-LEFT: 150PX; FONT-WEIGHT: BOLD; margin-top:50px;" >PROBLEM ARCHIVE</h2></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>

<div class="row">
<div class="col-sm-2">
</div>
<div class="col-sm-8 pbs" style="background-color:white">
  <div class="table-responsive">
    <table class="table">
    <thead>
    <tr>
     <th>ID</th>
     <th>Problem Name</th>
     <th>Author</th>
    </tr>
    </thead>
    <tbody>


<?php

require_once("config.php");

error_reporting(0);

if(isset($_POST['pname']))
{
	$pn=$_POST['pname'];
	$pd=$_POST['description'];
	$author=$_SESSION['un'];
	$tc=$_POST['case'];
	$ac=$_POST['result'];
}

error_reporting(0);

if(isset($pn))
{


$sql="INSERT INTO archieve VALUES('','$pn','$pd','$author','$tc','$ac','')";

$sq=mysqli_query($con,$sql);

/*if($sq)
{
	$last_id=mysqli_insert_id($con);
}
*/

$per_page=10;

if(isset($_GET['page']))
{
	$page=$_GET['page'];
}
else
{
	$page=1;
}

$start=($page-1)*$per_page;

$show="SELECT * FROM archieve limit $start,$per_page"; //start from 0 index
$send=mysqli_query($con,$show);


while($row=mysqli_fetch_array($send))
{
	echo "

   
	<tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td>$row[pbauthor]</td></tr>";


	
}
echo "</tbody>
</table>
</div>";
$psql="SELECT * FROM archieve";
$sn=mysqli_query($con,$psql);
$total_rows=mysqli_num_rows($sn);
$total_page=ceil($total_rows/$per_page);

    $c="active";

	echo "<div class=\"container\"><ul class=\"pagination\"><li><a href=\"archive.php?page=1\">First Page</a></li>";

	for ($i=1; $i <$total_page ; $i++) {
	    
		if($page==$i)
		{
			$c="active";
        }
        else
        {
        	$c="";
        }
		echo "<li class=\"$c\"><a href=\"archive.php?page=$i\">$i</a></li>";
	}


	echo "<li><a href=\"archive.php?page=$total_page\">Last Page</a></li></ul></div>";

}

if(!isset($pn))
{
    $per_page=10;

	if(isset($_GET['page']))
	{
		$page=$_GET['page'];
	}
	else
	{
		$page=1;
	}

	$start=($page-1)*$per_page;

	$show="SELECT * FROM archieve limit $start,$per_page";




    $send=mysqli_query($con,$show);



	while($row=mysqli_fetch_array($send))
	{
		echo "

    
	  <tr><td>$row[id]</td><td><a href=\"description.php?id=$row[id]\"><div class=\"\">$row[pbname]</div></a></td><td>$row[pbauthor]</td></tr>";

	}

echo "</tbody>
</table>
</div>";

	$psql="SELECT * FROM archieve";
	$sn=mysqli_query($con,$psql);
	$total_rows=mysqli_num_rows($sn);
	$total_page=ceil($total_rows/$per_page);
	$c="active";

	echo "<div class=\"contain\"><ul class=\"pagination\"><li><a href=\"archive.php?page=1\">First Page</a></li>";

	for ($i=1; $i <$total_page ; $i++) {
	    
		if($page==$i)
		{
			$c="active";
        }
        else
        {
        	$c="";
        }
		echo "<li class=\"$c\"><a href=\"archive.php?page=$i\">$i</a></li>";
	}


	echo "<li><a href=\"archive.php?page=$total_page\">Last Page</a></li></ul></div>";

	
}





?>

</div>

	<div class="col-sm-2">

	</div>
	</div>
	</div>
<?php

require_once("footer.php");

?>

</div>
</body>
</html>