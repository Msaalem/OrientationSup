<?php
    $connection = mysqli_connect('localhost','root','','projet');
    $sql = "SELECT * FROM `filiere_c`";
        $result = mysqli_query($connection , $sql);
        if($result){
            $count = 1;
            while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                $nom = $row['FILIERE'];
                $code = $row['pays'];
                $capacite = $row['capacite'];
                $s="UPDATE filiere_c SET id=$count WHERE `FILIERE` ='$nom'";
                mysqli_query($connection , $s);
                $count = $count + 1;
            }
        }
?>