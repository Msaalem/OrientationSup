<?php
$a=$_SESSION["x"];
    if(isset($_POST["fin"])){
      $_SESSION["t"]=1;
      $mt="";
    // $code_fl=[];
    //   $rb="select code from $a";
    //   echo $rb;
    // $rbs=mysqli_query($connection,$rb);
    // while($row=mysqli_fetch_assoc($rbs))
    // {
    //   foreach($row as $c=>$b)
    //   {
    //      array_push($code_fl,$b);
    //   }
    // }
    // $_SESSION["code_fl"]=$code_fl;
   
  #####################################################################################################
  
            header("location:../site/index1.php");

    }
 ?>