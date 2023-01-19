<?php
include 'conect.php';
?>


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
    .h2{
        position: relative;
        top:80px;
        left: 100px;
    }
    .bt{
        position: relative;
        left: 700px;
    }
    /* body{
        max-width:1360px;
    } */
</style>
</head>

<body>
<h2 class="h2">étudiants orientés</h2>
    <main>
    <div class="container" id="display">
    <table class='table table-striped'>

    <tbody>
        <tr><td><h4>étudiants</h4></td><td><h4>resultats</h4></td></tr>
        <?php
        $req="select * from resultat";
        $res=mysqli_query($connection,$req);
        while($row=mysqli_fetch_row($res)){
            echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
        }
        ?>

    </tbody>
    </table>
    </div>
    </main>
    <button type="button" class="btn btn-success bt">Telecharger</button>
</body>

</html>