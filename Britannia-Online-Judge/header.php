<?php
$u=0;
if(isset($_SESSION['un']))
{
  $username=$_SESSION['un'];
  $u=1;

}


?>


<!DOCTYPE html>
<html>
<head>
  

    
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="css/style.css"> -->


</head>
<body>




 <div class="menurow">
  <div class="text-center">
     <img class="logo" src="Britannia.png"> 
     <h3 class="brand" >Britannia University Online Judge</h3>
  </div>
  <ul class="row" style="padding-left: 50px">
    <div class="col-sm-9">
      <li class="sp space2"><a style="font-weight:bold"  href="home.php">Home</a>
      <li class="sp space2"><a style="font-weight:bold"  href="compiler.php">Compiler</a>
      <li class="sp space2"><a style="font-weight:bold" href="archive.php">Problem Archive</a>
      <li class="sp space2"><a style="font-weight:bold" href="contest.php">Contest</a>
      <li class="space2"><a style="font-weight:bold" href="management.php">About Us</a>
    </div>
    <div class="col-sm-3">
      <?php
        if($u==1)
        {
          echo "<li class=\"sp font space2\" style=\"padding-bottom:10px; font-weight:bold\"><a  href=\"profile.php?user=$username\">$username</a>";
          echo "<li class=\" font space2\"><a style=\"font-weight:bold\"  href=\"logout.php\">Log Out</a>";
        }
        else
        {
          echo "<li class=\"sp font space2\"><a style=\"font-weight:bold\" href=\"login.php\">Sign In</a>";
          echo "<li class=\"font space2\"><a style=\"font-weight:bold\"  href=\"sign.php\">Sign UP</a>";
        }
      ?>
    </div>           
  </ul>
</div>


</body>
</html>

