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
    <form action=""method="POST">
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
        session_start();
            $getTd="SELECT  filiere,pays FROM  filiere_c";
            $sql = mysqli_query($connection , $getTd);
            $i=0;
            $tab=[];
            while($row = mysqli_fetch_assoc($sql)){
                $filiere=$row['filiere'];
                $pays=$row['pays'];
                echo "<tr><td></td><td>$filiere</td><td>$pays</td>";
                $a="m".$i;
                echo '<td><input type="number"class="inp" onchange="f()" name='.$a.' ></td></tr>';
                $tab[$a]=$filiere;
                $i++;
            }
            if( isset($_POST['sb'])){
                $matricule=$_SESSION['userC'];
                $i=0;
                $choix=[];
                foreach($_POST as $key => $value){
                    $choix[$key]=$value;
                }
                
                print_r($choix);



                // $str=implode(',',$tab);
                // $table=[];
                // echo $str;
                // $getTd="INSERT INTO `choix`(`matricule`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`, `c8`) VALUES (";
                // foreach($tab as $a){
                //     $table[$choix[$i]]='';
                //     $getTd=$getTd."$a , ";
                    
                //     // $sql = mysqli_query($connection , $getTd);
                //     $i++;
                // }echo $getTd;
            }
            
            
        
        ?>
        
        
        </tbody>
    </table>
    <button  class="btn btn-primary" name="sb">Envoyer</button>
    
    </form>
</div>  
    </main>
    <script>
        function f() {
            let d=[0,1,2,3,4,5,6,7];
            for(let x of d)
            {
                if(parseInt(document.getElementById(x).value)>8)
                {
                    alert("entrer un neaveau nombre entre 1 et 8");
                
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