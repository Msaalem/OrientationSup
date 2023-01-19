<?php
    include 'conect.php';
    
    extract($_POST);
    if( isset($_POST['name']) && isset($_POST['code']) && isset($_POST['capacite']) ){

        $query = "INSERT INTO `filiere`(`Nom`, `Code` , `Capacite`) VALUES ('$name','$code','$capacite')";
        $result = mysqli_query($connection,$query); 
        if($result) header ('location:display.php');
    }
?>

