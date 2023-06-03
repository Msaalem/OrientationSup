<?php
    error_reporting(0);
    ini_set('display_errors', 0);
    include 'conect.php';
    session_start();
    $fl=$_SESSION['x'];
    extract($_POST);
    if(isset($_POST['deleteid'])){
        $id = $_POST['deleteid'];
        $query = "DELETE FROM $fl WHERE id=$id";
        if($result = mysqli_query($connection , $query)){
            $req="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE  TABLE_NAME =\"choix_$fl\"";
            $res= mysqli_query($connection,$req); 
            $req=-1;
            while($row=mysqli_fetch_assoc($res))$req++;
            $req2="alter table choix drop choix_$fl".$req."";
            $res= mysqli_query($connection,$req2); 
            $query="select code from $fl where id=$id";
            $res1=mysqli_query($connection,$query);
            $code=mysqli_fetch_assoc($res1);
            $req3="delete from coefficient where code='$code'";
            $res2= mysqli_query($connection,$req3); 
        }
    }
?>