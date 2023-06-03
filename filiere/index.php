
<?php
include 'conect.php';
error_reporting(0);
ini_set('display_errors', 0);
session_start();
    include "tous.php";
###################################################################################################################


    
?>

 <?php
if(isset($_POST['submit1']))
{ 

  // creation de tous les tables
  if(isset($_POST['etablissement']))
  {
    $_SESSION['x']=$_POST['etablissement'];
  }
  $fl=$_SESSION['x'];
  $req0="DROP table if exists $fl";
  $req1="DROP table if exists choix_$fl";
  $req2="DROP table if exists coefficient_$fl";
  $req3="DROP table if exists resultat_$fl";
  $req4="select nom from etablissement where nom=\"$fl\"";
  mysqli_query($connection,$req0);
  mysqli_query($connection,$req1);
 
  mysqli_query($connection,$req2);
  mysqli_query($connection,$req3);
 
  mysqli_query($connection,$req4);
 
  $res1=mysqli_query($connection,$req1);
   
  $res1=mysqli_query($connection,$req2);
   
  $res1=mysqli_query($connection,$req3);
   
  $res1=mysqli_query($connection,$req4);
  
if($res1)
{
  $ro=mysqli_fetch_assoc($res1);
  if(empty($ro["nom"]))
  {
     $req="insert into etablissement values('$fl')"; 
     mysqli_query($connection,$req);
  }
}
  
    

   
    $_SESSION['notemin']=[];
   
        $req="create table $fl(id integer(10) primary key auto_increment,Nom varchar(100),code varchar(20),capacite int(20),pays varchar(20)";
        if(isset($_SESSION['matiers']) and !empty($_SESSION['matiers'])){
        foreach($_SESSION['matiers'] as $i)
        {
          $req.=",$i int(10)";
        }
        $req.=')';
     
      $res=mysqli_query($connection,$req);}
     else{
      $req.=')';
      $_SESSION['verifierM']='RRR';
      $res=mysqli_query($connection,$req);

      
      
     }
    
$choix=$_SESSION['x'];
$resultat="`resultat_".$_SESSION['x']."`";
$coefficient="`coefficient_".$_SESSION['x']."`";
$reqchoix="create table choix_$choix(matricule varchar(20) primary key);";
$reqres="create table $resultat(matricule varchar(20) primary key,choix varchar(100));";
$reqcoef="create table $coefficient(code varchar(50) primary key,Moyenne_Generale int(10)";
$res1=mysqli_query($connection,$reqchoix);
$res2=mysqli_query($connection,$reqres);
//modification
if(isset($_SESSION['matiers']) and !empty($_SESSION['matiers']))
  {
 
    $matieres=$_SESSION['matiers'];
    $_SESSION['coefficientV']='';
    for($i=0;$i<count($matieres);$i++)
      {
        $reqcoef.=",$matieres[$i] int(10)";
      }
  }
else
  {
    $_SESSION['coefficientV']='true';
    
  }

  $reqcoef.=')';
  $res=mysqli_query($connection,$reqcoef);

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
         <li><a href="../site/importer.php">Importer</a></li>
       </div>
     </ul>
   </nav> </div><br><br>

<div id="display"></div>

<!--*************************************************** describe ******************************-->
<div class="modal fade" id="a" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="exampleModalLabel"></h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
          <div class="modal-body">
           
                <span>Nom : </span>
                <span id="nom"></span><br><br>
             
                <span>capacite :</span>
                <span id="capacite"></span><br><br>
             
                <span>pays :</span>
                <span id="pays"></span><br>

             
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>

      
      </div>
    </div>
</div>
<!-- ***************************************************Ajouter filiere modal********************************************************* -->

<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="modal-title" id="exampleModalLabel">Ajouter un filiere</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        

          <div class="modal-body">
            <h1 class="h1"></h1>
                <form><div class="form-group">
                    <label>Nom Du filiere</label><br>
                    <input type="text" class="form-control" placeholder="Filiere" id="name" ><br>
                </div>
                <div class="form-group">
                    <label>Code Du filiere</label><br>
                    <input type="text" class="form-control" placeholder="obligatoire*" id="code" ><br>
                </div>
                <div class="form-group">
                    <label>Capacite Du filiere</label><br>
                    <input type="number" class="form-control" placeholder="Capacite" id="Capacite"><br>
                </div><br>
                <div class="form-group">
                    <label>Pays Du filiere</label><br>
                    <input type="text" class="form-control" placeholder="Pays" id="pa"><br>
                </div><br>
          </div>
        </form>
          <div class="modal-footer">
            <button type="submit" onclick="adduser()" id="submit" class="btn btn-primary"name="u">Ajouter</button>
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          </div>

      
      </div>
    </div>
</div>
<!-- ***************************************************Modifier filiere modal********************************************************* -->

<div class="modal fade" id="updateModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title" id="exampleModalLabel">Modifier un filiere</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
        <div class="modal-body">
          <h1 class="h1"></h1>
              <form><div class="form-group">
                  <label>Nom Du filiere</label><br>
                  <input type="text" class="form-control" placeholder="Filiere" id="updateName"><br>
              </div>
              <div class="form-group">
                  <label>Code Du filiere</label><br>
                  <input type="text" class="form-control" placeholder="Code" id="updateCode"><br>
              </div>
              <div class="form-group">
                  <label>Capacite Du filiere</label><br>
                  <input type="number" class="form-control" placeholder="Capacite" id="updateCapacite"><br>
              </div><br>
              <div class="form-group">
                  <label>Pays</label><br>
                  <input type="text" class="form-control" placeholder="Pays" id="updatePays"><br>
              </div><br>
        </div></form>
        <div class="modal-footer">
          <button type="submit" onclick="updateFiliere2()" id="submit" class="btn btn-primary"name="u">Update</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <input type="hidden" id="up">
        </div>
    </div>
  </div>
</div>

</main>
<form method="post" action="">
<button name="fin" class="btn btn-primary" id="bu">Fin</button>
</form>
<!-- bootstrap javascript -->
<script src="../js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>  
<script src="../js/popper.min.js"crossorigin="anonymous"></script>  
<script src="../js/jquery.min.js"crossorigin="anonymous"></script>
<script src="../js/bootstrap.min.js"crossorigin="anonymous"></script>
<script src="../js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>
<script src="../js/jquery.dataTables.min.js.js"></script>
<script src="../js/datatable.js"></script>

<script>
  $(document).ready(function(){
    display();
  });
  
  function display(){
    var display ="true";
    $.ajax({
      url:"display.php",
      type:"post",
      data:{
        display:display
      },
      success:function(data,status){
        $('#display').html(data);
        $('#table').DataTable();
      }
    });
  }
  function adduser(){
    var namead = $('#name').val();
    var capacitead =$('#Capacite').val();
    var codead = $('#code').val();
    var paysad = $('#pa').val();

    $.ajax({
      url:"insert.php",
      type:"post",
      data:{
        name:namead,
        capacite:capacitead,
        code:codead,
        pays:paysad,
      },
      success:function(data,status){
        $('#addUserModal').modal('hide');
        display();
      }
    });
  };
  function g(){
    $('#addUserModal').modal('show');
  };
  function descFiliere(id){
    $('#as').val=id;
    $.post("desc.php",{descId:id},function( data , status){
      var j=JSON.parse(data);
      $('#nom').text( j.Nom);
      $('#code').text( j.code);
      $('#capacite').text( j.capacite);
      $('#pays').text(j.pays);
    });
   
    $('#a').modal('show');
  };
  function deleteFiliere(id){
    $.ajax({
      url:"delete.php",
      type:"post",
      data:{
        deleteid:id
      },
      success:function(data,status){
        display();
      }
    });
  }
  function updateFiliere1(id){
    $('#up').val(id);
    $.post("update.php",{updatId:id},function( data , status){
      var filiereId=JSON.parse(data);
      $('#updateName').val( filiereId.Nom);
      $('#updateCode').val( filiereId.code);
      $('#updateCapacite').val( filiereId.capacite);
      $('#updatePays').val( filiereId.pays);
    });
    $('#updateModal').modal('show');
  }
  function updateFiliere2(){
    
    var name= $('#updateName').val() ;var code=$('#updateCode').val() ; var  capacite=$('#updateCapacite').val(); var  pays=$('#updatePays').val() ;var  id=$('#up').val();console.log(id);
    $.post("update.php",{
      id:id , name:name , code:code , capacite:capacite,pays:pays},
      function(data,status){ 
          $('#updateModal').modal('hide');
          display();
      }
    );

  }
</script>
    
  </body>
</html>