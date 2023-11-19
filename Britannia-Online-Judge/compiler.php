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
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        
        <style>
              .main-content{
                  height: 100%;
                  width: 100%;
              }
        </style>

        







</head>
<body>
<div class="main">

<?php

require_once("header.php");

?>
<div class="main-content">
<br><br>
<div class="container-fluid row cspace2 slideanim">
<div class="col-sm-7">
<div class="form-group" >
<form style="padding-left:50px" action="compile.php" name="f2" method="POST">
<label for="lang">Choose Language</label>

<select class="form-control" name="language" >
<option value="c">C</option>
<option value="cpp">C++</option>
<option value="cpp11">C++11</option>
<option value="java">Java</option>


</select><br><br>

<label for="ta">Write Your Code</label>
<textarea class="form-control" name="code" rows="10" cols="50"></textarea><br><br>
<label for="in">Enter Your Input</label>
<textarea class="form-control" name="input" rows="10" cols="50"></textarea><br><br>
<input type="submit" class="btn btn-success" value="Run Code"><br><br><br>


</form>






</div>
</div>

<div class="col-sm-5" style="padding-left:100px">
    <br><br><br><div style="font-weight: bold; Color: #580A42;" class="pb">Recent And Upcoming Contest</div><br>

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

     


      

     
        if($row['date_on']==$d && $seconds>=0 && $ss>=0 )
        {
             echo("<div style=\"border:1px solid white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px; class=\"xmm\">Lab Name: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Lab Date: $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br> Status: <b>Running</b> <br><br>Time Remaining:  $h hour $mt miniute $scnd second <br><br></div><br>");
         }
         else if($d>$row['date_on'] || ($d==$row['date_on'] && $t>$en))
         {
            echo("<div style=\"border:1px solid white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px; class=\"xmm\">Lab Name: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Lab Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status: <b>Finished</b><br><br></div><br>");
         }
         else
         {
            echo("<div style=\"border:1px solid white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; margin-right:10px; class=\"xmm\">Lab Name: $row[cname]<br><br>Lab Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status: <b>Not Started Yet</b><br><br></div><br>");
         }
    }




?>
  
</div>
</div>
<br><br><br>
</div>
<?php
require_once("footer.php");
?>

</div>
</body>
</html>


