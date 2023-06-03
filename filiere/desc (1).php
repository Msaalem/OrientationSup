<?php
    include 'conect.php';
    session_start();
    error_reporting(0);
    ini_set('display_errors', 0);
    $fl= $_SESSION["x"];
   if(isset($_SESSION['x'])){
     $fl= $_SESSION["x"];}
     else{$fl='bac_c';
         $_SESSION['fl']=false;}
    extract($_POST);
    if(isset($_POST['descId'])){
        $id = $_POST['descId'];
        $query = "SELECT * FROM $fl WHERE id=$id";
        $result = mysqli_query($connection , $query);
        $r=array();
        while($row=mysqli_fetch_assoc($result)){
            $r=$row;
        }echo json_encode($r);
    }
?>