<?php

session_start();

if(isset($_SESSION["un"]))
{
  header("Location:home.php");
}





?>




<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sign In</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/form.css">







</head>
<body>

<?php

include("header.php");

?>


<div class="main-content">
<div class="form">
<form class="form-horizontal" action="process.php" name="f1" method="POST">

<label for="username">Username</label>
<input style="background-color:rgb(97, 178, 253)" type="text" name="un" class="form-control" placeholder="Enter Username" required><br>
<label for="password">Password</label>
<input style="background-color:rgb(97, 178, 253)" type="password" class="form-control"  name="ps" autocomplete="new-password" placeholder="Enter Password" required><br>

<button type="submit" class="">Sign In</button><br>
<p class="lead text-center text-muted mt-5 mb-0 text-warning">Need to create an account? <a href="sign.php"
                        class="fw-bold text-body"><u>Register</u></a></p>


</form>

<?php

if(isset($_GET['value']))
{
   
   echo "<div style=\"margin-left:300px;\" class=\"alert alert-danger\">
  <strong>Sign in Failed!</strong>  Wrong Username And/OR Password";
    
}
?>
</div>
</div>


<?php
   include("footer.php");
?>


</body>
</html>


