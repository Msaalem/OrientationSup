<?php
include 'conect.php';
session_start();
if(isset($_SESSION['x'])){$fl=$_SESSION['x'];}


$id=$_GET['id'];
$req="select * from $fl where id=$id";
$res=mysqli_query($connection,$req);
$req1="select * from  note";
$res1=mysqli_query($connection,$req1);
$row=mysqli_fetch_row($res);
$row1=mysqli_fetch_row($res1);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../css/style.css?v=<?php echo time();?>">
</head>

<body>
    <table>
        <p><b><?php echo $row[0]; ?>
    <?php 
    for($i=5;$i<count($row1);$i++)
    {
        
    }
    ?>
    </table>
</body>
</html>