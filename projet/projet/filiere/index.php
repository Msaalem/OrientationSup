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
</head>
<body>
<main>
<div class="container" id="display" ></div>

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
                    <input type="number" class="form-control" placeholder="Capacite" id="capacite"><br>
                </div><br>
          </div></form>
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
        </div></form>
        <div class="modal-footer">
          <button type="submit" onclick="updateFiliere2()" id="submit" class="btn btn-primary"name="u">Update</button>
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <input type="hidden" id="up">
        </div>
    </div>
  </div>
</div></main>
<!-- bootstrap javascript -->
<script src="../js/bootstrap.bundle.min.js"crossorigin="anonymous"></script>  
<script src="../js/popper.min.js"crossorigin="anonymous"></script>  
<script src="../js/jquery.min.js"crossorigin="anonymous"></script>
<script src="../js/bootstrap.min.js"crossorigin="anonymous"></script>
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
      }
    });
  }
  function adduser(){
    var namead = $('#name').val();
    var capacitead =$('#capacite').val();
    var codead = $('#code').val();

    $.ajax({
      url:"insert.php",
      type:"post",
      data:{
        name:namead,
        capacite:capacitead,
        code:codead,
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
      $('#updateCode').val( filiereId.Code );
      $('#updateCapacite').val( filiereId.Capacite);
    });
    $('#updateModal').modal('show');
  }
  function updateFiliere2(){
    
    var name= $('#updateName').val() ;var code=$('#updateCode').val() ; var  capacite=$('#updateCapacite').val() ;var  id=$('#up').val();console.log(id);
    $.post("update.php",{
      id:id , name:name , code:code , capacite:capacite},
      function(data,status){ 
          $('#updateModal').modal('hide');
          display();
      }
    );

  }
</script>

</body>
</html>