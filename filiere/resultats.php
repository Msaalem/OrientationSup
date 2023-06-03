<?php
include 'conect.php';
error_reporting(0);
ini_set('display_errors', 0);
session_start();
$x=$_SESSION["x"];
if($_SESSION["etu"]==0)
{

    include 'projet_f.php';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css?v=<?php echo time();?>">
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
    #dd{
            border-radius: 7px;
            background-color: rgba(128, 128, 128, 0.103);
        }
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
    img{
       width: 12em;
       height: 4em;
    } 
</style>
</head>

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
<h2 class="h2">étudiants orientés</h2>
    <main>
    <div class="container" id="display">
    <form action="" method="post">
               <label for=""> Search:</label>
                <input type="text" name="sr" id="dd" placeholder="Matricule">
                <button name="sbb" class="btn btn-primary">chercher</button>
</form><br>
    <table class='table table-striped'>
     
    <tbody>
        <tr><td><h4>étudiants</h4></td><td><h4>resultats</h4></td></tr><br><br>
        <?php
        $req="select * from resultat_$x";  
        $res=mysqli_query($connection,$req);
        $row0=mysqli_fetch_assoc($res);
        $all_choix=array_keys($row0);
        if(empty($_POST["sr"]))
        {
            $res=mysqli_query($connection,$req);
            while($ro=mysqli_fetch_row($res)){
                echo "<tr>";
                for($i=0;$i<count($ro);$i++){echo "<td>$ro[$i]</td>";};echo "</tr>";
        }
       }else{
        $mtt=$_POST["sr"];
        $rt="select * from resultat_$x where matricule=\"$mtt\"";
        $rts=mysqli_query($connection,$rt);
        if($rts)
        {
                $r=mysqli_fetch_assoc($rts);
                if(!empty($r["matricule"]))
                {
                    foreach($r as $a=>$b){ 
                        echo "<td>$b</td>";
                    }
                        echo "</tr>";
               }else{
                 echo "invalid matricule";
               }
            }
         }

?>


    </tbody>
    </table>
    </div>
    </main>
    <a href="excel_f.php"><button type="button" class="btn btn-success bt">Telecharger</button></a>

</body>

</html>