<!doctype html>

<html class="no-js" lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login Page</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="vendor/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendor/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="vendor/selectFX/css/cs-skin-elastic.css">

    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>



</head>

<body class="bg-dark">


    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                
                <div class="login-form">
                    <form method="post" action="indexAction.php">
                        <div class="form-group">
                            <label><b>Phone Number</b></label>
                            <input type="number" name="userPhone" class="form-control" placeholder="Enter Your Phone Number">
                        </div>
                            <div class="form-group">
                                <label><b>Password</b></label>
                                <input type="password" name="userPassword" class="form-control" placeholder="Enter Your Password">
                        </div>
						
                                
                                <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30">LOGIN</button>
                          
                                    </div>
                                </div>
                                <div class="register-link m-t-15 text-center">
                                    <p>Don't have account ? <a href="userRegistration.php"> Sign Up Here</a></p>
                                </div>
				                <div class="register-link m-t-15 text-center">
                                    <p>Kudumbasree <a href="kudumbasreeLogin.php"> Login</a></p>
                                </div>
				                 <div class="register-link m-t-15 text-center">
                                    <p>Kudumbasree <a href="kudumbasreeRegistration.php"> Registration</a></p>
									
                                </div>
				               <div class="register-link m-t-15 text-center">
                                    <p>Admin <a href="adminLogin.php">Login</a></p>
                                </div>
				                
                    </form>
                </div>
            </div>
        </div>
    </div>


    <script src="vendor/jquery/dist/jquery.min.js"></script>
    <script src="vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendor/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="assets/js/mains.js"></script>


</body>

</html>
