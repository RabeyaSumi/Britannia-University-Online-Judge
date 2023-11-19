



<!DOCTYPE html>
<html>
<head>
	
    
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Sign Up</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/form.css">
        

</head>
<body>
<div class="main">
<?php

include("header.php");

?>


    <div class="main-content"  >
        <div class="form custom-form">
            <form class="form-horizontal" action="action.php" name="f1" method="POST">

                <label for="email">Email</label>
                <input style="background-color:rgb(97, 178, 253)" type="email" name="email" class="form-control " placeholder="Enter Email" required><br>
                <label for="username">Username</label>
                <input style="background-color:rgb(97, 178, 253)" type="text" name="uname" class="form-control" placeholder="Enter Username" required><br>
                <label for="password">Password</label>
                <input style="background-color:rgb(97, 178, 253)" type="password" class="form-control"  name="password" autocomplete="new-password" placeholder="Enter Password" required><br>

                <button style="background-color:green; " type="submit" class="">Sign Up</button>
                <p class="lead text-center text-muted text-warning">Have already an account? <a href="login.php"
                                        class="fw-bold text-body"><u>Login here</u></a></p>
                
                    
                

            </form>
        </div>
    </div>
<?php

include("footer.php");

?>

</div>
</body>
</html>


