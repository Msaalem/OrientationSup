<?php  include 'conect.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css?v=<?php echo time();?>">
    <style>
        .bt{ position: relative;
        left: 1250px;
        top:80px;}
        .bt2{
            position: relative;
        left: 1250px;
        }
    </style>
</head>
</html>
<body>
<button type="button" class="btn btn-success bt">Telecharger</button>
<main>

<div class="container" id="display">
<table class="table table-striped">
    <tbody >
    <?php

        $req="select * from choix";
        $res0=mysqli_query($connection,$req);
        $row0=mysqli_fetch_assoc($res0);
        $all_choix=array_keys($row0);
        "<tr>" ;for($i=0;$i<count($all_choix);$i++){echo "<th>$all_choix[$i]</th>";}
        "</tr>";
        $res=mysqli_query($connection,$req);
        while($row=mysqli_fetch_row($res)){
            echo "<tr><td>$row[0]</td><td>$row[1]</td><td>$row[2]</td><td>$row[3]</td><td>$row[4]</td><td>$row[5]</td><td>$row[6]</td><td>$row[7]</td></tr>";
        }
?>
        </tbody>

</table>

</div>
</main>
<a href="orienter.php"><button  type="button" class="btn btn-primary bt2">Orienter</button></a>
</body>