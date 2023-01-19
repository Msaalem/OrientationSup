<?php
include 'conect.php';
include '../sidebar/index.php';
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
        .inp {
            width:30px;
        }
        .td{
            height:80px;
        }
    </style>
</head>
<body>



<main>
<div class="container">
<h3>Modifier le coefficient du moyenne d'orientation</h3>
<form method="post">
    <table class="table">     
    <?php 
        
        echo "<thead><tr><td></td>";
        $sql = "SELECT `id_matiere` FROM `serie`";
        $result1 = mysqli_query($connection , $sql);
        $countm = 0;
        global $tab;
        if($result1){
            while($row1 = mysqli_fetch_assoc($result1)){
                if($matiere = $row1['id_matiere']){
                    echo "<th class='td'>$matiere</th>";
                    $countm += 1;
                    $tab[$countm]=$matiere;
                }
            }
            echo "<th class='td'>Modifier</th>";
        }
        echo "</tr></tbody>";
        $sql1 = "SELECT `id_serie` FROM `serie` where `id_serie` LIKE '_'";
        $result = mysqli_query($connection , $sql1);
        if($result){
            while($row = mysqli_fetch_assoc($result)){
                $countTd=0;
                $serie = $row['id_serie'];
                echo "<tr><th>Bac $serie</th>";
                foreach ($tab as $i){
                    $coef = "SELECT `coef` FROM `formul_note` WHERE (`id_serie`='$serie' and `matiere`='$i')";
                    $result3 = mysqli_query($connection , $coef);
                    $s = $serie.$i;
                    if($result3 = mysqli_fetch_assoc($result3)){
                        $result3 = $result3['coef'];
                        $countTd +=1;
                        
                        echo '<td><input type="number"class="inp"value='.$result3.' name='.$s.'></td>';
                    }else {
                        $insertNewMatiere="INSERT INTO `formul_note`(`annee`, `id_serie`, `matiere`, `coef`) VALUES (2022,'$serie','$i',0);";
                        $r = mysqli_query($connection , $insertNewMatiere);
                        echo '<td><input type="number"class="inp"value="0" name='.$s.'></td>';
                    }
                }
                echo '<td class="td"><button class="btn btn-primary" name="submit" value='.$serie.'>Modifier</button></td></tr>';
        }
    }
    
    if(isset($_POST['submit'])){
        $serie =$_POST['submit'];
        foreach ($tab as $i){
            $r=$serie.$i;
            $coef=$_POST[$r];
            $q="UPDATE `formul_note` SET `coef`='$coef' WHERE `id_serie`='$serie' AND `matiere`='$i';";
            $result = mysqli_query($connection , $q);
        }
        echo '<div class="alert alert-success" role="alert">Success ! le coeff est modifier</div>';
    }
    
    ?>
    </table></form>
</div>
</main>
</body>
</html>