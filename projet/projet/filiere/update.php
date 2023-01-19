<?php
    include 'conect.php';
    extract($_POST);
    if(isset($_POST['updatId'])){
        $id = $_POST['updatId'];
        $query = "SELECT * FROM `filiere` WHERE id=$id";
        $result = mysqli_query($connection , $query);
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
        $query = "UPDATE `filiere` SET `Nom`='$name',`Code`='$code',`Capacite`= '$capacite' WHERE `id`=$id ";
        $result = mysqli_query($connection,$query); 
    }
?>