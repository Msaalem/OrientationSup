<?php
    include 'conect.php';
    if(isset($_GET['deleteid'])){
        $id = $_GET['deleteid'];
        $query = "DELETE FROM `filiere` WHERE id=$id" ;
        $result = mysqli_query($connection , $query);
        if($result) header ('location:display.php');
    }
?>