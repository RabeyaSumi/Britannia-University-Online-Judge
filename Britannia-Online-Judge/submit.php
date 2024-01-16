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



<?php

$c=0;

if(isset($_GET['id']))
{
   $problemid=$_GET['id'];
   $c=1;
}

$sql="SELECT * FROM archieve WHERE id='$problemid' ";

$sq=mysqli_query($con,$sql);

$row=mysqli_fetch_array($sq);




//echo "<textarea  style=\"display:none;\" name=\"in\" 

?>

<!DOCTYPE html>
<html>
<head>
  
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Submit</title>
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
              .accordion {
              background-color: #eee;
              color: green;
              cursor: pointer;
              font-weight: bold;
              padding: 18px;
              width: 100%;
              border: none;
              text-align: left;
              outline: none;
              font-size: 15px;
              transition: 0.4s;
            }

            

            .accordion:after {
              content: '\002B';
              color: #777;
              font-weight: bold;
              float: right;
              margin-left: 5px;
            }

            .active:after {
              content: "\2212";
            }

            .panel {
              padding: 0 18px;
              background-color: white;
              max-height: 0;
              overflow: hidden;
              transition: max-height 0.2s ease-out;
            }
        </style>







</head>
<body>
<?php

include("header.php");

?>
<button class="accordion">Click to see the instructions to submit code.</button>
<div class="panel" style="padding-left:100px; background-color:lavender">
<dl>
  <dt>Step1</dt>
  <dd>- Select the language of your code.</dd>
  <dt>Step2</dt>
  <dd>- Write or paste code.</dd>
  <dt>Step3</dt>
  <dd>- Click 'Run Code' button to compile and run code.</dd>
  <dt>Step4</dt>
  <dd>- Come to another page, click on 'Submit Code' button to finally submit it to the online judge submission queue.</dd>
  <dd>-Come to another page. See the verdict of the solution.</dd>
</dl>
</div>
<div class="main-content" style="padding-left:100px">

<div class="row log">
<div class="col-sm-10">
<br><div class=""><h2 style="text-align:center;">Submit Code</h2></div>
</div>

<div class="col-sm-1">

</div>

<div class="col-sm-1">
  
</div>

</div>




<div class="row cspace">
<div class="col-sm-8">
<div class="form-group">
<form action="pcompile.php" name="f2" method="POST">
<label for="lang">Choose Language</label>

<select class="form-control" name="language">
<option value="c">C</option>
<option value="cpp">C++</option>
<option value="cpp11">C++11</option>
<option value="java">Java</option>

</select><br><br>

<?php
    
    if($c==1)
    {
       //echo "<input type=\"hidden\" name=\"pbn\" value=\"$problem\">";
    	echo "<input type=\"hidden\" name=\"id\" value=\"$problemid\">";
    }
    else
    {
    	echo"<label for=\"pp\">Enter Problem ID</label><br>";
    	//echo "<input class=\"form-control\" type=\"text\" name=\"pbn\">";
    	echo "<input class=\"form-control\" type=\"text\" name=\"id\">";
    }

 ?>

<label for="ta">Write Your Code</label>
<textarea class="form-control" name="code" rows="10" cols="50"></textarea><br><br>
<input type="hidden" name='pbn' value="<?php echo $row['pbname']; ?>">
<input type="submit" class="btn btn-success" value="Run Code"><br><br><br>


</form>


</div>

<div class="col-sm-4">

</div>
</div>
</div>
<br><br><br>
   </div>
<?php

include("footer.php");

?>


<script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>




</body>

</html>
