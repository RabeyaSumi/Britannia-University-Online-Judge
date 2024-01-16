



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

        <style>
            /* The message box */
#password-message { 
    display: none; 
    background-color: rgba(161, 208, 252, 1);
    color: #000; 
    position: relative; 
    padding: 20px; 
    margin-top: 10px; 
    text-align: left; 
} 
  
#password-message h3 { 
    font-size: 15px; 
    margin-top: 0; 
    text-transform: uppercase; 
} 
  
#password-message p { 
    margin: 8px 0; 
} 
  
.valid { 
    color: green; 
} 
  
.valid:before { 
    position: relative; 
    left: -35px; 
    content: "✔"; 
} 
  
.invalid { 
    color: red; 
} 
  
.invalid:before { 
    position: relative; 
    left: -35px; 
    content: "✖"; 
} 
  
/* Error message style */
.error-msg { 
    color: red; 
    font-size: 14px; 
    margin-top: 4px; 
}
        </style>


        

</head>
<body>
<div class="main">
<?php

require_once("header.php");

?>


    <div class="main-content" style="height:1000px" >
        <div class="form custom-form">
            <form class="form-horizontal" action="action.php" name="f1" method="POST">

                <label for="email">Email</label>
                <input style="background-color:rgb(97, 178, 253)" type="email" name="email" class="form-control" autocomplete="off" placeholder="Enter Email" required><br>
                <label for="username">Username</label>
                <input style="background-color:rgb(97, 178, 253)" type="text" name="uname" class="form-control" placeholder="Enter Username" required><br>
                <label for="password">Password</label>
                <input style="background-color:rgb(97, 178, 253)" type="password" id="password" class="form-control"  name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" autocomplete="new-password" placeholder="Enter Password" required>
                
                
                <div id="password-message"> 
                <h3>Password must contain:</h3> 
                <p class="password-message-item invalid">At least 
                    <b>one lowercase letter</b> 
                </p> 
                <p class="password-message-item invalid">At least 
                    <b>one uppercase letter</b> 
                </p> 
                <p class="password-message-item invalid">At least 
                    <b>one number</b> 
                </p> 
                <p class="password-message-item invalid">Minimum 
                    <b>8 characters</b> 
                </p> 
                </div> 
                
                <button style="background-color:green; " type="submit" class="">Sign Up</button>
                <p class="lead text-center text-muted text-warning">Have already an account? <a href="login.php"
                                        class="fw-bold text-body"><u>Login here</u></a></p>
                
                                        

            </form>

        </div>
    </div>
    <script src="js/passwordvalid.js"></script>


</div>
</body>
</html>


