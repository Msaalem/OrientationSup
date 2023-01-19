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
                <th scope="col">diplome</th>
                <th scope="col">specialite</th>
                <th scope="col">pays</th>
                <th scope="col">choix/اختيار</th>
                
            </tr>
        </thead>
        <tbody>
        
        <?php
            $getTd="SELECT  nom,pays FROM  filiere_d";
            $i=0;
            $sql = mysqli_query($connection , $getTd);
            while($row = mysqli_fetch_assoc($sql)){
                $filiere=$row['nom'];
                $pays=$row['pays'];
                echo "<tr><td></td><td>$filiere</td><td>$pays</td>";
                echo '<td><input type="number"class="inp" onchange="f()" id='.$i.'></td></tr>';
                $i++;
            }
        ?>
        
        </tbody>
    </table>
    <button class="btn btn-primary">Envoyer</button>
    
    
</div>  
    </main>
    <script>
        function f() {
            let d=[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,31,32,33,34];
            for(let x of d)
            {
                if(parseInt(document.getElementById(x).value)>35)
                {
                    alert("entrer un neaveau nombre entre 1 et 35");
                
                    document.getElementById(x).value="";
                    
                }
                for (let j of d)
                        {
                            if(x != j)
                            {
                                if(document.getElementById(x).value==document.getElementById(j).value)
                                {
                                    document.getElementById(j).value="";

                                }
                            }
                        }
                     
               
            }
             
        }
        
           
    </script>
</body>
</html>