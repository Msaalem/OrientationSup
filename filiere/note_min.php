<?php
include 'conect.php';
error_reporting(0);
ini_set('display_errors', 0);
session_start();

if(isset($_SESSION['x'])){$fl=$_SESSION['x'];}

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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <style>

#bt{
            border:none;
            background-color: white;
        }

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
    <h4>Note minimum</h4>
    <table class="table" id="tb">
        <thead>
            <tr>
                <th scope="col" id="a">Matiere</th>
                <th scope="col">Note Minimum</th>
            </tr>
        </thead>
        <tbody>
        <form action="" method="post">
        <?php
        
           
            
            // $getTd="SELECT  *  FROM  note ";
            // $sql = mysqli_query($connection , $getTd);
            // $i=0;
           
        //     $row = mysqli_fetch_assoc($sql);
        //    $mat=array_keys($row);
        
            
            
          
                $i=1;
            if(isset($_SESSION['matiers']) and !empty($_SESSION['matiers'])){
            foreach($_SESSION['matiers'] as $a)
            {
                
                
                    
                        echo "<tr ><td>";
                        $filiere=$a;
                        echo $filiere;
                        echo "</td>";
                        $nam="$i";
                        echo "<td><input type='text' name='$nam'   placeholder=\"Note Minimum\"></td>";
                    

                    $i++;
             }
           
            }

            else
                {
                               
            $getTd="SELECT  *  FROM  `$fl` ";
            $sql = mysqli_query($connection , $getTd);
            $i=0;
            $row = mysqli_fetch_assoc($sql);
           
            foreach($row as $a=>$b)
            {
                if($i>4)
                {
                    $nam=$i-4;
                    echo "<tr>";
                    echo "<td>$a</td>";
                    echo "<td><input type='text' name='$nam'   placeholder=\"Note Minimum\"></td>";
                    
                    
                }     
            
             
              $i++;
            }
                }
        ?>
        
      <form>
        </tbody>
    </table>
    <input type="checkbox" name="cn" style="margin-right: 10px;">conserver pour les autre filieres
    <button   class="btn btn-primary" name="sb">Envoyer</button>
    
    
</div>  
            </main>
</script>
</body>
</html>

<?php

if( isset($_POST["sb"]))
{  
$req0="select * from $fl";
$res=mysqli_query($connection,$req0);
$row=mysqli_fetch_assoc($res);
$rowkeys=array_keys($row);

$a=$_GET['id'];
for($i=1;$i<=count($_POST)-1; $i++){
$j=$i+4;

if(empty($_POST[$i])){$_POST[$i]=0;}
if(!isset($rowkeys[$j])){
    echo "<script type='text/javascript'>window.location.href='index.php';</script>";

}

$req="update $fl set $rowkeys[$j]=$_POST[$i] where id=$a";

$res=mysqli_query($connection,$req);

if(!empty($_POST["cn"]))
               {
                
                
                     $req="update $fl set $rowkeys[$j]=$_POST[$i]";
                     mysqli_query($connection,$req);
                
               }
}
echo "<script type='text/javascript'>window.location.href='index.php';</script>";

}
?>