<?php
   
   $id= $_GET['id'];

   $conn=mysqli_connect('localhost','root','','tiranainctravelagency');

   $sql="DELETE FROM `reservations` WHERE orderid='$id'";
    echo $sql;
   $result=mysqli_query($conn,$sql);
   if(mysqli_query($conn,$sql)){
       header("Location: bookinglist.php");
   }else{
         echo "Not deleted";
   }
 echo $msg;


?>
