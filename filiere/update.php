<?php
    include 'conect.php';
    error_reporting(0);
ini_set('display_errors', 0);
    session_start();
  
    $fl=$_SESSION['x'];
    $_SESSION['up']= $fl;
    extract($_POST);
    if(isset($_POST['updatId'])){
        $id = $_POST['updatId'];
        $query = "SELECT * FROM $fl WHERE id=$id";
        $result = mysqli_query($connection , $query);
    $query1="select code from $fl where id=$id";
    $res1=mysqli_query($connection,$query1);
    $row=mysqli_fetch_assoc($res1);
    
    $_SESSION['originalcode']=$row['code'];
 
        $r=array();
        while($row=mysqli_fetch_assoc($result)){
            $r=$row;
        }echo json_encode($r);
    }
 
    if(isset($_POST['id'])){
        $id = $_POST['id'];
        $name= $_POST['name'];
        $code = $_POST['code'];
        $capacite = $_POST['capacite'];
        $pays = $_POST['pays'];    
        if(empty($pays))$pays="Mauritanie";
        if($capacite=='')$capacite=0;  
        $originalcode=$_SESSION['originalcode'];
        $req3= "UPDATE coefficient_$fl SET code='$code' where code='$originalcode';";
       
        $query = "UPDATE $fl SET `Nom`='$name',`Code`='$code',`Capacite`= '$capacite',`pays`='$pays' WHERE `id`=$id ";
        $res2= mysqli_query($connection,$req3); 
        $result = mysqli_query($connection,$query); 
      
       
    }
?>