<?php
   include 'conect.php';
   error_reporting(0);
ini_set('display_errors', 0);
   session_start();
    if(isset($_SESSION['x']) and !empty($_SESSION['x']))$fl=$_SESSION['x'];
    else{$fl=false;}
     
   extract($_POST);
    if( isset($_POST['display']) ){
      if(empty($_SESSION['x'])){$a='<form action="index.php" method="POST">
        <label for="N"><h3>Nom de l\'Etablissement:</h3></label><input name="etablissement" type="text" class="N"></div>
        <input type="submit" name="submit1"></form>
           <a href="matiere.php"><button  class="btn btn btn-primary">Ajouter les Matiers</button></a></form>';
           }
      else{ $a='<a href="matiere.php"><button  class="btn btn-primary">Ajouter les Matiers</button></a> </form>';}
     
        $table = "$a
        <div class='aaa'><button class=\"btn btn-primary\" onclick=\"g();\">Ajouter Filiere</button></div></div>
        <table class=\"table table-bordered table-striped\"id=\"table\">
        
            <thead>
            <tr>
                
                <th>Nom</th>
                <th>code</th>
                <th>capacite</th>
                <th>Pays</th>
                <th>Note min & moy</th>
                <th >operation</th>
            </tr>
            </thead><tbody> "
        ;
        if(!$fl){}
        else{
        $sql = "SELECT * FROM $fl";
        $result = mysqli_query($connection , $sql);
        
        if($result){
            $count = 1;
            while($row = mysqli_fetch_assoc($result)){
                $id = $row['id'];
                $pays = $row['pays'];
                $nom = $row['Nom'];
                $code = $row['code'];
                $capacite = $row['capacite'];
                $table .= '             
                        
                        <tr>
                            <th scope="row">'.$nom.'</th>
                            <td>'.$code.'</td>
                            <td>'.$capacite.'</td>
                            <td scope="row">'.$pays.'</td>
                            <td>
                            <button name="button" class="btn btn-primary"> <a href="note_min.php?id='.$id.'"style="text-decoration:none;color: inherit;">Minimum</a></button>
                             <button  name="button" class="btn btn-primary"><a href="moyenne_orientation.php?code='.$code.'"style="text-decoration:none;color: inherit;">Moyenne</a></button>
                            </td>
                            <td class="m">
                                <button  name="b" class="btn"onclick="descFiliere('.$id.')"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="bi bi-server" viewBox="0 0 16 16">
                                <path d="M1.333 2.667C1.333 1.194 4.318 0 8 0s6.667 1.194 6.667 2.667V4c0 1.473-2.985 2.667-6.667 2.667S1.333 5.473 1.333 4V2.667z"/>
                                <path d="M1.333 6.334v3C1.333 10.805 4.318 12 8 12s6.667-1.194 6.667-2.667V6.334a6.51 6.51 0 0 1-1.458.79C11.81 7.684 9.967 8 8 8c-1.966 0-3.809-.317-5.208-.876a6.508 6.508 0 0 1-1.458-.79z"/>
                                <path d="M14.667 11.668a6.51 6.51 0 0 1-1.458.789c-1.4.56-3.242.876-5.21.876-1.966 0-3.809-.316-5.208-.876a6.51 6.51 0 0 1-1.458-.79v1.666C1.333 14.806 4.318 16 8 16s6.667-1.194 6.667-2.667v-1.665z"/>
                              </svg></button>
                                <button  name="button" class="btn"onclick="updateFiliere1('.$id.')"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
                              </svg></button>
                                <button  name="button" class="btn" onclick="deleteFiliere('.$id.')"><svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                              </svg></button>
                                
                            </td>
                        </tr>';
                $count +=1;
            }
          }
            
        }
        $table.='</tbody></table></div>';
            echo $table;
    }
   
?>