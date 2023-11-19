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
    <link rel="stylesheet" href="css/style.css">


</head>
<body>




 <div class="menurow">
  <div class="text-center">
     <img class="logo" src="britannia.ai"> 
     <h3 class="brand" >BritanniaUniversityPracticingArchive</h3>  
  </div>
  <ul class="row" style="padding-left: 50px">
    <div class="col-sm-9">
      <li class="sp space2"><a  href="home.php">Home</a>
      <li class="sp space2"><a  href="compiler.php">Lab Compiler</a>
      <li class="sp space2"><a  href="archive.php">Problems</a>
      <li class="space2"><a  href="contest.php">Contest</a>
    </div>
    <div class="col-sm-3">
      <?php
        if($u==1)
        {
          echo "<li class=\"sp space2\" style=\"padding-bottom:10px\"><a  href=\"profile.php?user=$username\"><span class=\"fa fa-duotone fa-user\" style=\"font-size: 30px;\"></span></a>";
          echo "<li class=\" space2\"><a  href=\"logout.php\">Log Out</a>";
        }
        else
        {
          echo "<li class=\"sp space2\"><a  href=\"login.php\">Sign In</a>";
          echo "<li class=\"space2\"><a  href=\"sign.php\">Sign UP</a>";
        }
      ?>
    </div>           
  </ul>
</div>


</body>
</html>

