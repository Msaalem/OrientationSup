<?php
    include 'conect.php';
    $id = $_GET['updateid'];
    // $query = "SELECT * FROM `filiere` WHERE 'id' = $id ";
    // $result = mysqli_query($connection , $query);
    // $row = mysqli_fetch_assoc($result);
    // $nom = $row['Nom'];
    // $code = $row['Code'];
    // $capacite = $row['Capacite'];
    if(isset($_POST['submit'])){
        $name= $_POST['name'];
        $code = $_POST['code'];
        $capacite = $_POST['capacite'];
        $query = "UPDATE `filiere` SET `id`=$id,`Nom`='$name',`Code`='$code',`Capacite`= '$capacite' WHERE `id`=$id ";
        $result = mysqli_query($connection,$query); 
        if($result) header ('location:display.php');

    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container my-5">
    <form method="post">
        <div class="form-group">
            <label>Nom Du filiere</label>
            <input type="text" class="form-control" placeholder="Filiere" name="name" value="">
        </div>
        <div class="form-group">
            <label>Code Du filiere</label>
            <input type="text" class="form-control" placeholder="Code" name="code" value="">
        </div>
        <div class="form-group">
            <label>Capacite Du filiere</label>
            <input type="number" class="form-control" placeholder="Capacite" name="capacite" value="">
        </div>
    <button type="submit"name="submit" class="btn btn-primary">update</button>
    </form>
</div>   
</body>
</html>

