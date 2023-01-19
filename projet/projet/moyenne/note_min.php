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
        button{
            position: relative;
            left:40%;
        }
    
    </style>
</head>
<body>
<main>
    
<div class="container">
    <h4>choisiser votre specialite</h4>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Filiere</th>
                <th scope="col">Matiere</th>
                <th scope="col">Note minimal</th>
            </tr>
        </thead>
        <tbody>
        <form action="" method="post">
        <?php
            $getTd="SELECT  distinct filiere FROM  note_min";
            $req="SELECT distinct matiere FROM  note_min";
            $sql = mysqli_query($connection , $getTd);
            $sql2 = mysqli_query($connection , $req);
            echo "<tr><td><select name='h[]'>";
            while($row = mysqli_fetch_assoc($sql)){
                $filiere=$row['filiere'];
                echo "<option value=$filiere>$filiere</option>";
            }
            echo "</select></td>";
            echo "<td><select name='t[]'>";
            while($row = mysqli_fetch_assoc($sql2)){
                $matiere=$row['matiere'];
                echo "<option value=$matiere>$matiere</option>";
            }
            echo "</select></td>";
             echo "<td><input type=\"text\" placeholder=\"Note minimal\" id=\"nt\" name=\"nt\" ></td>";
             if( isset($_POST["sb"]))
             {
                 $fl=$_POST["h"][0];
                 $mt=$_POST["t"][0];
                 $nt=floatval($_POST["nt"]);
                 $r="update note_min set note_minimal=$nt where filiere=\"$fl\" and matiere=\"$mt\";";
                 mysqli_query($connection,$r);
                 
             }
        ?>
        
      <form>
        </tbody>
    </table>
    <button  onclick="f()" class="btn btn-primary" name="sb">Envoyer</button>
    
    
</div>  
    </main>
<script>
    function f()
    {
        
    let a=document.getElementById("nt").value;

    
        if (parseFloat(a)<0 || parseFloat(a)>20 )
        {
            alert("Donner une valide note");
        }
    }
</script>
</body>
</html>