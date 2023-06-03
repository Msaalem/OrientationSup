<?php
session_start();

error_reporting(0);
ini_set('display_errors', 0);
if (isset($_SESSION))
{
    echo "votre demande a ete enregistrez";
   $_SESSION['user']="";
}

?>
