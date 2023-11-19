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
        <title>management</title>
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



<?php

require_once("config.php");
?>

    <div class="row space-between">
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px; box shadow: 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px; 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px;  box shadow: 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px;  box shadow: 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px; shadow: 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        <div class="col-sm-3" style="box-shadow: 5px 5px 5px 5px lightblue; margin:20px">
           <div style="text-center; height:200px; box shadow: 0.3em 0.3em 1em lightblue;" class="pic align-items-center">
              IMG
           </div>
           <div class="meet" style="background-color: green">
             <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita labore voluptate eligendi! Eaque, distinctio enim.</p>
             </div>
        </div>
        
        
    </div>



</div>
<?php

require_once("footer.php");

?>

</div>
</body>
</html>