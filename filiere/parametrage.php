<?php
session_start();
error_reporting(0);
ini_set('display_errors', 0);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../style.css?v=<?php echo time();?>">
    <style>
      #bu{
        position: relative;
        left:1200px;
        font-weight: 500;
        width: 120px;
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
         <li><a href="parametrage.php">Orientation</a></li>
         
       </div>
     </ul>
   </nav> </div><br><br>
     <div class="modal-body"><table  class="table">
<?php
include 'conect.php';

$_SESSION["q"]=1;
$req="select * from etablissement";
$res=mysqli_query($connection,$req);
$i=0;
while($row=mysqli_fetch_assoc($res)){
     $a=$row["nom"];
  
        echo "<tr><td><form action=\"\" method=\"POST\"><input name=\"q\" style=\"display:none\" value=\"$a\"></input><button  class=\"btn btn-success\">parametrage</button></form></td><td>$a</td>";
        echo "<td><form action=\"\" method=\"POST\"><input name=\"a\"  value=\"$a\" style=\"display:none\"><button  name=\"sb\"class=\"btn btn-primary\">orientation</button></form></td></tr>";
  $i++;
}

  if(isset($_POST["a"]))
  {
    $_SESSION["x"]=$_POST["a"];
  echo "<script>window.location.href='orientation.php';</script>";
  }else if(isset($_POST["q"])){
    $_SESSION["x"]=$_POST["q"];
    echo "<script>window.location.href='index.php';</script>";
  }
if(isset($_SESSION["x"])){
$a=$_SESSION["x"];
$req1="select * from $a";
$res1=mysqli_query($connection,$req1);
$row1=mysqli_fetch_assoc($res1);
$rowkeys=array_keys($row1);
for($i=0;$i<count($rowkeys);$i++)
{
  if($i>=5)
  {
    $tt=$rowkeys[$i];
    $req="update $a set $tt=0 where $tt is null";
    mysqli_query($connection,$req);
  }
}}
$_SESSION["dd"]=0;

?>

</form>
    </table>
</div>
</body>
</html>
