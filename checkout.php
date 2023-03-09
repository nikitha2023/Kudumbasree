<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">

    <link rel="stylesheet" href="assets/vendors/iconly/bold.css">

    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
</head>

<body>
    
	<?php include('userSidemenu.php');  ?>
	
	
        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <h3>PAYMENT</h3>
            </div>
            <div class="page-content">
                <?php
				include('connection.php');
				$amount=$_GET['amount'];

				?>	
			        <section id="basic-horizontal-layouts">
                    <div class="row match-height">
                        <div class="col-md-6 col-6">
                            <div class="card">
                                
                                <div class="card-content">
                                    <div class="card-body">
                                        <form class="user" action="checkoutaction.php" method="post" enctype="multipart/form-data">



                                            <div class="form-group">
                                                ENTER ADDRESS
                                                <input type="text" required name="address" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Address">
                                            </div>


                                            Amount to Pay
                                            <div class="form-group">
                                                <input type="text" required name="amount" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" value="<?php echo $_GET['amount']; ?>">
                                            </div>

                                            Card no
                                            <div class="form-group">
                                                <input type="number" maxlength="16" required name="cardno" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp"placeholder="Card no" >
                                            </div>

                                            Card name
                                            <div class="form-group">
                                                <input type="text" required name="cardname" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp"placeholder="Card name" >
                                            </div>

                                            CVV
                                            <div class="form-group">
                                                <input type="number" maxlength="3" required name="cvv" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp"placeholder="Card cvv" >
                                            </div>



                                            <div class="form-group">
                                                <input type="submit"  name="SAVE" class="btn btn-primary btn-user btn-block">
                                            </div>






                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                </section>	
						
					
				
				
				
				
				
				
				
				
				
       </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>Copyright © 2022. All rights reserved.</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/vendors/apexcharts/apexcharts.js"></script>
    <script src="assets/js/pages/dashboard.js"></script>

    <script src="assets/js/main.js"></script>
</body>

</html>