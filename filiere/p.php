<?php
    $connection = mysqli_connect('fdb33.awardspace.net','4146023_sup','Orientation123','4146023_sup');
    $sql = "SELECT * FROM `filiere_c`";
        $result = mysqli_query($connection , $sql);
        if($result){
            $count = 1;
            while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                $nom = $row['FILIERE'];
                $code = $row['pays'];
                $capacite = $row['capacite'];
                $s="UPDATE filiere_c SET id=$count WHERE `FILIERE` ='$nom'";
                mysqli_query($connection , $s);
                $count = $count + 1;
            }
        }
?>







<?php
include 'conect.php';

session_start();
  
    if(isset($_SESSION["t"])){
    if($_SESSION["t"]==1)
    {
        if(isset($_SESSION["q"]))
      {
        foreach($_POST as $a=>$b)
          {
            // $_SESSION["x"]=$b;
            // ECHO 'aaAAAAAAAA111';
          }

      }
    }
  }
    include "lwes5a.php";
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
        //$req.=',primary key(id,Nom,code,pays))';
      $res=mysqli_query($connection,$req);}
     else{
      $req.=')';
      //$req.=',primary key(id,Nom,code,pays))';
      $_SESSION['verifierM']='RRR';
      $res=mysqli_query($connection,$req);

      
      
     }
    
$choix=$_SESSION['x'];
$resultat="`resultat_".$_SESSION['x']."`";
$coefficient="`coefficient_".$_SESSION['x']."`";
$reqchoix="create table choix_$choix  (matricule varchar(20) primary key);";
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
    </style>
</head>
<body>

<?php

?>
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
                    <input type="text" class="form-control" placeholder="Filiere" id="name"><br>
                </div>
                <div class="form-group">
                    <label>Code Du filiere</label><br>
                    <input type="text" class="form-control" placeholder="Code" id="code"><br>
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