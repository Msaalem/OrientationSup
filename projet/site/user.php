<?php
    include 'conect.php';
    if(!$connection) die(myaqli_error($connection));
    if(isset($_POST['submit'])){
        $name= $_POST['name'];
        $code = $_POST['code'];
        $capacite = $_POST['capacite'];
        $query = "INSERT INTO `filiere`(`Nom`, `Code` , `Capacite`) VALUES ('$name','$code','$capacite')";
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
            <input type="text" class="form-control" placeholder="Filiere" name="name">
        </div>
        <div class="form-group">
            <label>Code Du filiere</label>
            <input type="text" class="form-control" placeholder="Code" name="code">
        </div>
        <div class="form-group">
            <label>Capacite Du filiere</label>
            <input type="number" class="form-control" placeholder="Capacite" name="capacite">
        </div>
    <button type="submit"name="submit" class="btn btn-primary">Submit</button>
    </form>
</div>   
</body>
</html>

