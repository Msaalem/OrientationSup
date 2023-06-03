<?php
include 'conect.php';
error_reporting(0);
ini_set('display_errors', 0);
session_start();
$fl=$_SESSION['x'];
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
.material-symbols-outlined {
  font-variation-settings:
  'FILL' 0,
  'wght' 400,
  'GRAD' 0,
  'opsz' 48
}
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
    <h4>choisiser votre specialite</h4>
    <table class="table" id="tb">
        <thead>
            <tr>
                <th scope="col" id="a">Matiere</th>
                <th scope="col">coefficient</th>
            </tr>
        </thead>
        <tbody>
        <form action="" method="post">
        <?php
             
            $getTd="SELECT  *  FROM  `".$_SESSION['x']."` limit 1";
            $sql = mysqli_query($connection , $getTd);
            $i=0;
            $row = mysqli_fetch_assoc($sql);
            $code=$_GET['code'];
            $mt="";
            $p=[];
            foreach($row as $a=>$b)
            {
                if($i==0)
                {
                    $mt=$a;
                }
                if($i>4)
                {
                    echo "<tr>";
                    echo "<td>$a</td>";
                    echo "<td><input type=\"number\" name=\"$a\" id=\"$code\"  placeholder=\"coefficient\"></td></tr>";
                    array_push($p,$a);
                    
                }     
            
           
            // echo "<td><button onclick=\"f(${j})\" onmouseover=\"f(${j})\"id=\"bt\"><span class=\"material-symbols-outlined\">
             //add
             //</span></button></td></tr>";
             
              $i++;
            }
            echo "<tr>";
            echo "<td>Moyenne_Generale</td>";
            echo "<td><input type=\"number\" name=\"Moyenne_Generale\" id=\"$code\"  placeholder=\"coefficient\"></td></tr>";
            $l=[];
            $coef=[];
            if(isset($_POST["sb"]))
            { 
                foreach($_POST as $a=>$b)
                {    
                    if($a != "sb" and $a != "cn")
                    {
                        if(empty($b))
                        {
                            array_push($l,0);
                            $coef[$a]=0;
                        }else{
                            array_push($l,intval($b));
                            $coef[$a]=intval($b);
                        }
                    }
                                     
                
               }
            
               foreach($coef as $a=>$b)
               {
                 $req="update coefficient_$fl set $a=$b where code=\"$code\";";
                    mysqli_query($connection,$req);
               }
               if(!empty($_POST["cn"]))
               {
                foreach($coef as $a=>$b)
                {
                     $req="update coefficient_$fl set $a=$b;";
                     mysqli_query($connection,$req);
                }
               }
                $_SESSION["coefficient"]=$coef;
              $_SESSION["bool"]=1;
                echo "<script type='text/javascript'>window.location.href='index.php';</script>";

        }
              
               
        ?>
        
        
        </tbody>
    </table>
    <input type="checkbox" name="cn" style="margin-right: 10px;">conserver pour les autre filieres 
    <button   class="btn btn-primary" name="sb">Envoyer</button>
    
    </form>
</div>  
    </main>
    
</body>
</html>