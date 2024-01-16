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
        







</head>
<body>

<?php

require_once("header.php");

?>
<div class="main-content">
<br><br>
<div class="row cspace2 ">
<div class="col-sm-7">

<div id="services"  class="container-fluid ">
  <h2 style="font-weight: bold; margin-left:220px;  ">SERVICES</h2>
  <h4 class="lead" style="color:green; margin-left:220px; font-family:'Comic Sans MS'">We empact for</h4>
  
  <div class="container-fluid text-center">
  <div style="margin-left:200px">
  <div>
    <div class="col-sm-6" style="background-color:lightblue; box-shadow: 0px 10px 5px #888, 0px -10px 5px white; height:130px">
      <a href="compiler.php"><span class="fa fa-code logo-small" style="font-size: 30px;"></span>
      <h4>Compiler</h4>
      <p>Our website provide compiler for compiling and showing output of a solution's code.</p>
      </a>
    </div>
  </div>
  <br><br>
  <div>
    <div class="col-sm-6" style="background-color:lightblue; box-shadow: 0px 10px 5px #888, 3px -1px 10px rgb(27, 51, 71); margin-left:50px; height:130px">
       <a href="archive.php"><span class="fa fa-archive logo-small" style="font-size: 30px;"></span>
      <h4>Problem Archive</h4>
      <p>We provide appropriete problems according to our student preparences.</p>
      </a>
    </div>
  </div>
  <div>   
    <div class="col-sm-6" style="background-color:lightblue; box-shadow: 0px 10px 5px #888, 3px -1px 7px rgb(27, 51, 71);  margin-left:100px; height:130px ">
       <a href="contest.php"><span class="fa fa-cogs" style="font-size: 30px;"></span>
      <h4>Contest</h4>
      <p>Our online judge can arrange a lab contest.</p>
      </a>
    </div>
  </div>
  <div>
    <div class="col-sm-6" style="background-color:lightblue; box-shadow: 0px 10px 5px white, 3px -1px 7px rgb(27, 51, 71); margin-left:150px; height:130px ">
       <a href="management.php" ><span class="fa fa-check-square logo-small" style="font-size: 30px;"></span>
      <h4>About Us</h4>
      <p>We have abeatiful authority to set problem and overall management.</p>
      </a>
    </div>
  </div>
  </div>
</div>


</div>
</div><br><br><br>

<div class="col-sm-5" style="padding-left:100px">
    <h4 style="font-weight: bold; Color: #580A42;" class="pb">Recent And Upcoming Contest</h4><br>

<?php

require_once("connection.php");
date_default_timezone_set("Asia/Dhaka");

$q3="SELECT * FROM rapl_oj_contest ORDER BY date_on DESC LIMIT 0,2";
    $sq3=mysqli_query($con,$q3);

        $q4="SELECT TIME_FORMAT(end_at,'%H') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";
       $q5="SELECT TIME_FORMAT(end_at,'%i') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";
        $q6="SELECT TIME_FORMAT(end_at,'%s') end_at FROM rapl_oj_contest  ORDER BY date_on DESC";

      $sq4=mysqli_query($con,$q4);
      $sq5=mysqli_query($con,$q5);
      $sq6=mysqli_query($con,$q6);
      

      
   
  while($row=mysqli_fetch_array($sq3))
    {
      $d=date("Y-m-d");
      $t=date("H:i:s");
      $m=$row['start_at'];

      $nr=mysqli_fetch_array($sq4);
      $nm=mysqli_fetch_array($sq5);
      $ns=mysqli_fetch_array($sq6);
      
      $shr=$nr['end_at'];
      $shm=$nm['end_at'];
      $shs=$ns['end_at'];
      $cur=date('H');
      $curm=date('i');
      $curs=date('s');

      $h=$shr-$cur;
      $mt=$shm-$curm;
      $scnd=$shs-$curs;

      if($scnd<0)
      {
         $scnd=$scnd+60;
         $mt=$mt-1;
      }

      if($mt<0)
      {
        $mt=$mt+60;
        $h=$h-1;
      }

      if($h<0)
      {
        $h=$h+24;
      }
      
      $en=$row['end_at'];

      $seconds = strtotime($t) - strtotime($m);
      $ss= strtotime($en) - strtotime($t);
      $min=intval($seconds/60);
      $sec=intval($seconds%60);
      $hr=intval($min/60);
      $m=intval($min%60);

     


      

     
      


     
      /*echo(" <a href=\"save.php?name=$row[table_name]\">$row[table_name]</a><br><br>");*/
        if($row['date_on']==$d && $seconds>=0 && $ss>=0 )
        {
             echo("<div style=\"box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px;  class=\"xmm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Date: $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br> Status: <b>Running</b> <br><br>Time Remaining:  $h hour $mt miniute $scnd second <br><br></div><br>");
         }
         else if($d>$row['date_on'] || ($d==$row['date_on'] && $t>$en))
         {
            echo("<div style=\"border:1px solid white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px;\"  class=\"xmm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status: <b>Finished</b><br><br></div><br>");
         }
         else
         {
            echo("<div style=\"box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px;  class=\"xmm\">Lab Contest: $row[cname]<br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status: <b>Not Started Yet</b><br><br></div><br>");
         }
    }




?>
  
</div>
</div>
</div>
<?php

require_once("footer.php");

?>

</body>
</html>


