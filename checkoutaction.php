<?php
session_start();
include('connection.php');
//connecting
$address = $_POST['address'];
$amount = $_POST['amount'];
$cardno=$_POST['cardno'];
$cardname=$_POST['cardname'];
$cvv=$_POST['cvv'];

$grpno = $_SESSION['grpno'];
$uid=$_SESSION['userId'];

date_default_timezone_set("Asia/Kolkata");
$date=date('Y-m-d');

$q="INSERT INTO `cartmaster`( `date`, `groupId`, `_customerId`, `_customerAddress`, `_orderTotalPrice`, `cardno`, `cardname`, `cvv`, `_isConfirmed`) VALUES
 ('$date','$grpno','$uid','$address','$amount','$cardno','$cardname','$cvv',1)";

$result=mysqli_query($con,$q);

if($result)
{
    unset($_SESSION['grpno']);
    ?>
    
    <script>
	
	alert('Thanks for your order. Your order will be delivered soon');
	window.location.href='userHome.php';
	</script>
    
    <?php 

}else
{?>
    
    <script>
	
	alert('Details  not Saved');
	window.location.href='userHome.php';
	</script>
    
    <?php 

}

?>