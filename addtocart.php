<?php

session_start();
include('connection.php');

$pid = $_POST['pid'];

$qty = $_POST['qty'];

$price = $_POST['price'];



    if(isset($_SESSION['grpno']))
{

$grpno = $_SESSION['grpno'];

}
else
{

$q = "SELECT ifnull(max(groupId),0) as groupid from cart";

$r=mysqli_query($con,$q);

$fetchdata = mysqli_fetch_array($r);


$grpno = $fetchdata['groupid']+1;


$_SESSION['grpno']=$grpno;


}


    $TOTALAMOUNT = $price * $qty;

    $insertquery = "INSERT INTO `cart`( `groupId`, `itemId`, `quantity`, `price`,`total`) VALUES('$grpno','$pid','$qty','$price','$TOTALAMOUNT') ";

    $executeQurey = mysqli_query($con, $insertquery);

    if ($executeQurey) {

        ?>


        <script>
            alert('Product Added to Cart');
            window.location.href = 'userHome.php';

        </script>

        <?php

    } else {
        ?>


        <script>
            alert('Product not added to Cart');
            window.location.href = 'userHome.php';

        </script>

        <?php

    }





?>