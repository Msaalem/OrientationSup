<?php

    include 'conect.php';
    error_reporting(0);
    ini_set('display_errors', 0);
    session_start();
    $fl=$_SESSION['x'];
    extract($_POST);
    if( isset($_POST['name']) && isset($_POST['code']) && isset($_POST['capacite'])&& isset($_POST['pays']) ){
        if(empty($pays))$pays="Mauritanie";
        if($capacite=='')$capacite=0;
        

        // $i=0;
        // //    $req9="select * from $fl";
        // //    $result = mysqli_query($connection,$req9);
        // //   if(!empty($result)){
        // //   while($row=mysqli_fetch_assoc($res)){$i+=1;}} 
        // //   else{$i+=1;}
        //     $query = "INSERT INTO $fl (`id`,`Nom`, `code` , `capacite`,`pays`) VALUES ($i,'$name','$code',$capacite,'$pays')";




        
        $query = "INSERT INTO $fl (`Nom`, `code` , `capacite`,`pays`) VALUES ('$name','$code',$capacite,'$pays')";
         $query2 = "INSERT INTO coefficient_$fl ( `code` ) VALUES ('$code')";
         $c=0; 
         $req="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME =\"choix_$fl\"";
         $res= mysqli_query($connection,$req);
        while($row=mysqli_fetch_assoc($res))$c++;
         $req2="alter table choix_$fl add choix$c varchar(100);";
         $res= mysqli_query($connection,$req2); 
         $result = mysqli_query($connection,$query);
         $result2 = mysqli_query($connection,$query2);

    }
    
    
  
?>

