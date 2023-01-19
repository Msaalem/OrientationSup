<?php
    include 'conect.php';
    extract($_POST);
    if(isset($_POST['deleteid'])){
        $id = $_POST['deleteid'];
        $query = "DELETE FROM `filiere` WHERE id=$id" ;
        $result = mysqli_query($connection , $query);
    }
?>