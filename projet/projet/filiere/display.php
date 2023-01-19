<?php
    include 'conect.php';
    extract($_POST);
    if( isset($_POST['display']) ){
        $table = '
        <h3>Ajouter ou modifier ou suprimer un filiere </h3>
        <button class="btn btn-primary my-5" onclick="g();">Ajouter filiere</button>
            <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nom du filiere</th>
                <th scope="col">code du filiere</th>
                <th scope="col">capacite du filiere</th>
                <th scope="col">operation</th>
            </tr>
            </thead><tbody> '
        ;
        $sql = "SELECT * FROM `filiere`";
        $result = mysqli_query($connection , $sql);
        if($result){
            $count = 1;
            while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                $nom = $row['Nom'];
                $code = $row['Code'];
                $capacite = $row['Capacite'];
                $table .= '                       
                        <tr>
                            <th scope="row">'.$count.'</th>
                            <td scope="row">'.$nom.'</td>
                            <td>'.$code.'</td>
                            <td>'.$capacite.'</td>
                            <td>
                            <button class="btn btn-info"onclick="updateFiliere1('.$id.')">Modifier</button>
                            <button class="btn btn-danger"onclick="deleteFiliere('.$id.')"> Suprimer </button>
                        </td>
                        </tr>';
                $count +=1;
            }
            $table.='</tbody></table>';
            echo $table;
        }
        
    }
    
?>