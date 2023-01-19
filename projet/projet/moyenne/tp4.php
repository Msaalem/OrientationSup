<?php
session_start();
if(isset($_POST['submit']))
    {
        $conn=mysqli_connect('localhost',"root","","admin");
        

        $req="select * from admin ";
        $res=mysqli_query($conn,$req);
        foreach($res as $i)
            {
                echo $i['nom'];
                // $_SESSION['nom']=$nom;
                // header("location:confirm.php");

            }
        
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="tp4.php" method="post">
    <input type="text" name='nom'>
    <input type="text" name='pass'>
    <input type="submit" name="submit" id="">
    </form>
</body>
</html>