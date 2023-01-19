<?php
        include 'conect.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>

<div class="container">
    <button class="btn btn-primary my-5"><a href="user.php" class="text-light">Ajouter filiere</a></button>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nom du filiere</th>
      <th scope="col">code du filiere</th>
      <th scope="col">capacite du filiere</th>
      <th scope="col">operation</th>
    </tr>
  </thead>
  <tbody>
      <?php
        $sql = "SELECT * FROM `filiere`";
        $result = mysqli_query($connection , $sql);
        if($result){
            while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                $nom = $row['Nom'];
                $code = $row['Code'];
                $capacite = $row['Capacite'];
                echo '
                    <tr>
                        <th scope="row">'.$id.'</th>
                        <td scope="row">'.$nom.'</td>
                        <td>'.$code.'</td>
                        <td>'.$capacite.'</td>
                        <td>
                            <button class="btn btn-primary"> <a href="update.php?updateid='.$id.'" class="text-light">Modifier</a> </button>
                            <button class="btn btn-danger"> <a href="delete.php?deleteid='.$id.'" class="text-light">Suprimer</a> </button>
                        </td>
                    </tr>
                ';
            }   
        }
      ?>
  </tbody>
</table>
</div>
    
</body>
</html>