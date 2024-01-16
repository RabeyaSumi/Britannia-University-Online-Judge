<?php

session_start();
require_once("config.php");

if(!isset($_SESSION['un']))
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
        <title>contest</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">>







</head>
<body>
<div class="main">
<?php

require_once("header.php");

?>


<div class="row log">
<div class="col-sm-10">
<br><div class="lead"><h2 style="text-align:center; padding-left:200px; font-weight:bold">ALL CONTEST</h2></div>
</div>



<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>

<div class="row cspace">
<div class="col-sm-3">
</div>
<div class="col-sm-6 pbs"> 

<?php

require_once("connection.php");

date_default_timezone_set("Asia/Dhaka");

if(isset($_POST['cn']))
{

$contest=$_POST['cn'];
$cid=$_POST['ci'];
$date=$_POST['cd'];
$start=$_POST['ct'];
$end=$_POST['ce'];
$tg=$_POST['tg'];


$q1="INSERT into rapl_oj_contest  VALUES('$cid','$contest','$start','$end','$date','$tg')";
$q3="SELECT * FROM rapl_oj_contest ORDER BY date_on DESC";

/*$sq1=mysqli_query($con,$q1);*/
$sq2=mysqli_query($con,$q1);

if(!$sq2)
{
  echo "not";
}

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
             echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue; margin-bottom:10px; padding:10px;border-radius:5px; class=\"xm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Contest ID: $row[id]<br><br>Date: $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br> Status: <b>Running</b> <br><br>Time Remaining:  $h hour $mt miniute $scnd second <br><br></div>");
         }
         else if($d>$row['date_on'] || ($d==$row['date_on'] && $t>$en))
         {
            echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; class=\"xm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Contest ID: $row[id]<br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status:<b>Finished</b><br><br></div><br>");
         }
         else
         {
            echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue; padding:10px;border-radius:5px; class=\"xm\">Contest: $row[cname]<br><br>Contest ID: $row[id]<br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status:<b>Not Started Yet</b><br><br></div>");
         }
    }
}

if(!isset($_POST['cn']))
{

    /*$q3="SELECT table_name FROM information_schema.tables where table_schema='problem' AND table_name<>'element'";*/

    if(isset($_GET['tag']))
    {
       $tag=$_GET['tag'];
       $q3="SELECT * FROM rapl_oj_contest where tag='$tag' ORDER BY date_on DESC";
       $sq3=mysqli_query($con,$q3);
    }
    else
    {
        $q3="SELECT * FROM rapl_oj_contest ORDER BY date_on DESC";
        $sq3=mysqli_query($con,$q3);
    }

    

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
             echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue; margin-bottom:20px; padding:10px;border-radius:5px; class=\"xm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Contest ID: $row[id]<br><br>Date: $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br> Status: <b>Running</b> <br><br>Time Remaining:  $h hour $mt miniute $scnd second <br><br></div>");
         }
         else if($d>$row['date_on'] || ($d==$row['date_on'] && $t>$en))
         {
            echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue;  padding:10px;border-radius:5px; class=\"xm\">Contest: <a href=\"contestproblem.php?name=$row[cname]\">$row[cname]</a><br><br>Contest ID: $row[id]<br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status:<b>Finished</b><br><br></div><br>");
         }
         else
         {
            echo("<div style=\"background-color: white; box-shadow: 2px 2px 2px 2px lightblue;  padding:10px;border-radius:5px; class=\"xm\">Contest: $row[cname]<br><br>Contest ID: $row[id]<br><br>Date:  $row[date_on] <br><br>Start Time: $row[start_at]<br><br>End Time: $row[end_at] <br><br>Status:<b>Not Started Yet</b><br><br></div>");
         }
    }

}







?>



</div>
<div class="col-sm-4">

</div>
</div>
<br><br><br>
<?php

require_once("footer.php");

?>
</div>


</body>
</html>