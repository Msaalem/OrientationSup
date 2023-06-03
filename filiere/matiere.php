<?php
include 'conect.php';
session_start();
error_reporting(0);
ini_set('display_errors', 0);
$bool=true;
if(isset($_SESSION['x']))$fl=$_SESSION['x'];
$Matiers=[];

if(isset($_POST['submit'])){
    
 IF(!isset($_SESSION['verifierM']) or empty($_SESSION['verifierM'])){
     if($_SESSION['dd']==0){
            if(isset($_SESSION['matiers'])){
                if(!in_array($matiers,$_SESSION['matiers']))
                {array_push($_SESSION['matiers'],$_POST['inp1']);}
        else{echo "VOUS POUVEZ PAS INSERER DEUX MATIERES DE MEME NOM";}}
            else{$_SESSION['matiers']=array($_POST['inp1']);}
            
        }
    else if(empty($_SESSION['matiers'])){
       ///////
        $matiere=$_POST['inp1'];
        
        $req0="describe $fl";
        $res0=mysqli_query($connection,$req0);
        $arraykeys=[];
        while($row=mysqli_fetch_row($res0)){array_push($arraykeys,$row[0]);}
        if(in_array($matiere,$arraykeys))
        { 
            echo "VOUS POUVEZ PAS INSERER DEUX MATIERES DE MEME NOM";
            $bool=false;
        }
       else{$req="ALTER TABLE $fl add $matiere int(10)";
        mysqli_query($connection,$req);}


      

        $_SESSION['no_0']='true';
        if(isset($_SESSION['coefficientV']) and !empty($_SESSION['coefficientV']))
                {
                    $req="ALTER TABLE coefficient_$fl add $matiere int(10)";
                    $res=  mysqli_query($connection,$req);
                }

    }
}
else{
  
    $matiere=$_POST['inp1'];

    $req0="describe $fl";
    $res0=mysqli_query($connection,$req0);
    $arraykeys=[];
    while($row=mysqli_fetch_row($res0)){array_push($arraykeys,$row[0]);}
    if(in_array($matiere,$arraykeys))
    { 
        echo "DUPLICATE PRIMARY KEY";
        $bool=false;
    }
   else{$req="ALTER TABLE $fl add $matiere int(10)";
    mysqli_query($connection,$req);}
    // PRINT("3  SAL7ET")."<BR>";
    if(isset($_SESSION['coefficientV']) and !empty($_SESSION['coefficientV']) and $bool)
    {
        $req="ALTER TABLE coefficient_$fl add $matiere int(10)";
        $res=  mysqli_query($connection,$req);
    }
    $_SESSION['no_0']='true';
}
}

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

       .bt{
           position: relative;
           left: 50%;
       }
    
    </style>
</head>
<body>
<main>
    
<div class="container">

<form action="matiere.php" method="post">

<input name="inp1" type="text">
<button name='submit' class="btn btn-primary my-5">Ajouter</button>
<br>
</form>
<h2>Tous Les Matiers</h2>
<table class="table table-bordered table-striped">
<tbody>
<?php
function m7i($l,$in)
{
    $s=[];
    for($i=1;$i<=count($l);$i++)
    {
        if($i!=$in)
        {
            array_push($s,$l[$i]);
        }
    }
    return $s;
}

if(isset($_POST['button'])){
   
   if($_SESSION['dd']==1 or( isset($_SESSION['no_0']) and !empty($_SESSION['no_0']))){
        $bool=false;
        $req="select * from $fl";
            $res=mysqli_query($connection,$req);
            $row=mysqli_fetch_assoc($res);
            $rowkeys=array_keys($row);
            $j=4+intval($_POST['button']);
            $matiere= $rowkeys[$j];
        $req="alter table $fl drop $matiere" ;
        $req1="alter table coefficient_$fl drop $matiere" ;
        mysqli_query($connection,$req);
        mysqli_query($connection,$req1);
        // PRINT("5  SAL7ET")."<BR>";
    }
    else {
        $s= $_SESSION['matiers'];
        $_SESSION['matiers']=m7i($_SESSION['matiers'],intval($_POST['button']));
        // PRINT("4  SAL7ET")."<BR>";
    }

}
if($_SESSION['dd']==1 or( isset($_SESSION['no_0']) and !empty($_SESSION['no_0']))){
    $req="select * from $fl";
    $res=mysqli_query($connection,$req);
    $row=mysqli_fetch_assoc($res);
    // echo "Aaaa";
   
    if(empty($row)){$rowkeys=[];echo "<p><b>VOUS DEVEZ INSEREZ UN FILIERE AU MINIMUM";}
    
    
    else{$rowkeys=array_keys($row);}
   
    //la boude y ajouti filiere
  
    $t=0;
    for($i=0;$i<count($rowkeys);$i++)
    {
    if($i>=5){
    $j=$t+1;
    echo "<form action=\"\" method=\"post\"><tr id=\"$j\"><td>$j</td><td>$rowkeys[$i]</td><td><button  name=\"button\" class=\"btn\"value=\"$j\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"29\" height=\"29\" fill=\"currentColor\" class=\"bi bi-trash-fill\" viewBox=\"0 0 16 16\">
        <path d=\"M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z\"/>
      </svg></button></td></tr></form>";$t++;
    }
    }
}
else {
    if(!empty($_SESSION['matiers'])){
        for($i=0;$i<count($_SESSION['matiers']);$i++)
        {
            $j=$i+1;
        
            $Matiers=$_SESSION['matiers'][$i];
            echo "<form action=\"\" method=\"post\"><tr id=\"$j\"><td>$j</td><td>$Matiers</td><td><button  name=\"button\" class=\"btn\"value=\"$j\"><svg xmlns=\"http://www.w3.org/2000/svg\" width=\"29\" height=\"29\" fill=\"currentColor\" class=\"bi bi-trash-fill\" viewBox=\"0 0 16 16\">
            <path d=\"M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z\"/>
          </svg></button></td></tr></form>";
        //   PRINT("6  SAL7ET")."<BR>";
        }
        }
    }



?>

</tbody>   
</table>
</div>
</main>
<a href="index.php"><button class="btn btn-primary my-5 bt">Fin</button></a>
</body>
<html>
    