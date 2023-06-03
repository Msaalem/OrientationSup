<?php  include 'conect.php';
    session_start();
    error_reporting(0);
   ini_set('display_errors', 0);
    $x=$_SESSION["x"];
    $_SESSION["etu"]=0;
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
        .navbar {
 display: flex;
 align-items: center;
 justify-content: space-between;
 padding: 10px;
 background-color: rgb(32, 25, 25);
 color: #fff;
 margin-top: 0%;
}
.nav-links a {
     position: relative;
    font-family: "Poppins", sans-serif;
    display: inline-block;
    padding-bottom: 10px;
    color: #ffffff;
    font-size: 14px;
    line-height: 1.2;
    transition: .25s;
    text-transform: uppercase;
  font-style: normal;
  font-family: "Poppins", sans-serif;
}
/* LOGO */
.logo {
 font-size: 32px;
}
/* NAVBAR MENU */
.menu {
 display: flex;
 gap: 1em;
 font-size: 18px;
}
.menu li:hover {
 /* background-color: #4c9e9e; */
 /* border-radius: 5px;
 transition: 0.3s ease; */
 border-bottom: 2px solid white;
}
.menu li {
 padding: 5px 14px;
}
/* DROPDOWN MENU */
.services {
 position: relative; 
}
.dropdown {
 background-color: rgb(1, 139, 139);
 padding: 1em 0;
 position: absolute; /*WITH RESPECT TO PARENT*/
 display: none;
 border-radius: 8px;
 top: 35px;
}
.dropdown li + li {
 margin-top: 10px;
}
.dropdown li {
 padding: 0.5em 1em;
 width: 8em;
 text-align: center;
}
.dropdown li:hover {
 border-bottom: 2px solid white;
}
.services:hover .dropdown {
 display: block;
}

a {
 text-decoration: none;
}
li {
 list-style: none;
}
   
        .bt{ 
        position: relative;
        left: 1150px;
        top:90px;
    }
        .bt2{
            position: relative;
        left: 1150px;
        bottom:80px;
        }
        .bt3{
            position: relative;
        left: 90px;
        top:20px;
    
        }
        #dd{
            border-radius: 7px;
            background-color: rgba(128, 128, 128, 0.103);
        }
        img{
       width: 12em;
       height: 4em;
    } 


    </style>
</head>
</html>
<body>
<nav class="navbar">
     <!-- LOGO -->
          <div class="rd-navbar-brand">
                    <!--Brand--><a class="brand" href="index.php"><img class="" src="../site/images/logo-default-200x34.png" alt="" width="100" height="20"/> </a>
                  </div></div>
     <!-- NAVIGATION MENU -->
     <ul class="nav-links">
       <!-- USING CHECKBOX HACK -->
       <!-- NAVIGATION MENUS -->
       <div class="menu">
         <li><a href="../site/index1.php">Home</a></li>
       </div>
     </ul>
   </nav> </div><br><br> 
<a href="excel_e&c.php"><button type="button" class="btn btn-success bt">Telecharger</button></a>
<form action="#" method="POST" enctype="multipart/form-data">
<input type="file" name="excel" class="form-control" required >
<input type="submit" name="submit" class="btn btn-success bt3" value="Importer">
</form> <main>

<div class="container" id="display">
<table class="table table-striped">
<?php
        if(isset($_FILES['excel']['name'])){
            $con=mysqli_connect('fdb33.awardspace.net','4146023_sup','Orientation123','4146023_sup');
            include "xlsx.php";
            if($con){
                 $excel=SimpleXLSX::parse($_FILES['excel']['tmp_name']);
               //notes
               $nom="choix_$x";
               $i=0;
               $ww=0;
               foreach ($excel->rows() as $key => $row){
                      $q="";
                      foreach ($row as $key => $cell) {
                           if($i==0){
                                $q.=$cell. " varchar(50),";
                                
                           }else{
                                $q.="'".$cell. "',";
                           }
                      }
            
                      if($i==0){
                 
                           $d="DROP TABLE IF EXISTS ".$nom.";";
                           
                           mysqli_query($con,$d);
                           $query="CREATE table ".$nom." (".rtrim($q,",").");";
                           
                      }
                   else{
                           $query="INSERT INTO ".$nom." values(".rtrim($q,",").");"; 
                      }
                   mysqli_query($con,$query);
                      $i++;
               }
                   
           }
           for ($i=0;$i<=1;$i++){
            $page = $_SERVER['PHP_SELF'];
           $sec = "1";
           header("Refresh: $sec; url=$page");
           }
           
                 }
?>
    <?php
       
        $i=0;
        $l=[];
        $req="select * from choix_$x where choix1!=\"null\"";
        echo $req;
        $res0=mysqli_query($connection,$req);
        $row0=mysqli_fetch_assoc($res0);
        $all_choix=array_keys($row0);
        $res=mysqli_query($connection,$req);
    
        while($row=mysqli_fetch_row($res)){
            foreach($row as $a=>$b)
            {
               
                if($i==1)
                {
                    
                  if(!empty($b))
                  {
                   
                    array_push($l,$b);
                   }
                }
                if($i==0)
                {
                    
                    $i=1;
                }
            
        }
          
          $i=0;
        }
        $dd=$_SESSION["dd"];
        echo "<p id=\"a1\" style=\"displqy:none\"></p>";
        if(empty($l))
        {
            echo "<p id=\"a1\">aucun éléve a encore inscrire ses choix</p>";
        }else if(!isset($_POST["sr"]))
        {
            echo "<tr>" ;for($i=0;$i<count($all_choix);$i++){echo "<th>$all_choix[$i]</th>";}
            echo "</tr>";
        
        $res=mysqli_query($connection,$req);
        while($ro=mysqli_fetch_row($res)){
            echo "<tr>";
            for($i=0;$i<count($ro);$i++){echo "<td>$ro[$i]</td>";};echo "</tr>";
        }
    }
    ?>
   
    <?php
    if(isset($_POST["sr"]))
    {
        $_SESSION["dd"]=1;
      if(empty($_POST["sr"]))
        {
            echo "<tr>" ;for($i=0;$i<count($all_choix);$i++){echo "<th>$all_choix[$i]</th>";}
            echo "</tr>";
        
        $res=mysqli_query($connection,$req);
        while($ro=mysqli_fetch_row($res)){
            echo "<tr>";
            for($i=0;$i<count($ro);$i++){echo "<td>$ro[$i]</td>";};echo "</tr>";
        }
    }else{
    $mtt=$_POST["sr"];
    $rt="select * from choix_$x where matricule=\"$mtt\"";
    $rts=mysqli_query($connection,$rt);
    if($rts)
    {
            $r=mysqli_fetch_assoc($rts);
            if(!empty($r["matricule"]))
            {
                echo "<tr>";
                foreach($r as $a=>$b){ 
                        echo "<td>$a</td>";
                }
                echo "</tr>";
                foreach($r as $a=>$b){ 
                    echo "<td>$b</td>";

                }
                    echo "</tr>";
           }else{
              echo "<tr>";
             echo "<td>invalid matricule</td></tr>";
           }
        }
     }
     
    }
?>
<form action="" method="post">
               <label for=""> Search:</label>
                <input type="text" id="dd" name="sr">
                <button name="sbb" class="btn btn-primary">chercher</button>
</form><br>

    <tbody >
    <?php
  
##################################################################################################################################################
 ?>
        </tbody>

</table>

</div>
</main>
<button   name="orienter" onclick="f()" class="btn btn-primary bt2">Orienter</button>
<script>
    function f(){
        
        if(document.getElementById("a1").innerHTML=="aucun éléve a encore inscrire ses choix")
        {
            alert("Vous ne pouvez pas commencer l oriantation Aucune option enregistrée par les étudiants");
           
        }else{
            window.location.href='resultats.php';
        }

    }
</script>
</body>