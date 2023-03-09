
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kudumbasree Page</title>

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

	<?php include('adminSidemenu.php');  ?>



        <div id="main">
            <header class="mb-3">
                <a href="#" class="burger-btn d-block d-xl-none">
                    <i class="bi bi-justify fs-3"></i>
                </a>
            </header>

            <div class="page-heading">
                <h3>ALL ORDERS</h3>
            </div>
            <div class="page-content">
               <section class="section">
                    <div class="row" id="table-striped">
                        <div class="col-12">
                            <div class="card">

                                <div class="card-content">

                                    <!-- table striped -->
                                    <div class="table-responsive">
                                        <table class="table table-striped mb-0">
                                            <thead>
                                                <tr>
                                                    <th>slno</th>
                                                    <th>Date</th>
                                                    <th>Customer Name</th>
                                                    <th>Delivery Address</th>
                                                    <th>Amount Paid</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php
                                            include('connection.php');
                                         $q="SELECT cartmaster.*,userregister.userName FROM `cartmaster` inner join userregister on cartmaster._customerId=userregister.userId ";
                                            $result=mysqli_query($con,$q);
                                            $id=1;
                                            while($row= mysqli_fetch_array($result))
                                            {?>

                                            <tr>
                                                <td><?php echo $id?></td>
                                                <td><?php echo $row['date']?></td>
                                                <td><?php echo $row['userName']?></td>
                                                <td><?php echo $row['_customerAddress']?></td>
                                                <td><?php echo $row['_orderTotalPrice']?></td>


                                            </tr>

                                            <?php
                                        $id++;
										}
										?>

                                            </tbody>
                                        </table>

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