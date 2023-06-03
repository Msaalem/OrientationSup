<?php
include "conect.php";
error_reporting(0);
ini_set('display_errors', 0);
$req="select * from  choix_$x";
$res=mysqli_query($connection,$req);
$etudiants = [];
$i=0;
while($row=mysqli_fetch_assoc($res))
{
    $etudiants[$row["matricule"]]=[];
    foreach($row as $a=>$b)
    {
        if($i>0)
        {
            if(!empty($b))
            {
                
                array_push($etudiants[$row["matricule"]],$b);
            }
           
        }
        $i++;  
    }
    $i=0;
}
$wb=array_keys($etudiants);
// print_r($wb);
$classements = [];
$req1="select * from  classement_$x;";
$res1=mysqli_query($connection,$req1);
$i=0;
while($row=mysqli_fetch_assoc($res1))
{
    if($i==0)
    {
        foreach($row as $a=>$b)
        {
            $classements[$a]=[]; 
        }
    }
    foreach($row as $a=>$b)
    {
        if(in_array($b,$wb))
        {
            array_push($classements[$a],$b); 
        }
          
    }
    $i++;
}
$req2="select * from $x";
$res2=mysqli_query($connection,$req2);
$places = [];
$min = [];
$i=0;
while($row=mysqli_fetch_assoc($res2))
{ 
    foreach($row as $a=>$b)
    {
       if($i==2)
       {
           $c=$b;
        $min[$b]=[];
       }else if($i==3)
        {
            $places[$c]=$b;
        }else if($i>4){
            array_push($min[$c],$b);
        }
        $i++;
    }
    $i=0;

}
$notes = [];
$req3="select * from  note_$x;";
$res3=mysqli_query($connection,$req3);
$i=0;

while($row=mysqli_fetch_assoc($res3))
{   
    foreach($row as $a=>$b)
    { if($i==0)
        {
           if(in_array($b,$wb))
           {
            $c=$b;
            $notes[$b]=[];
           }else{
            continue;
           }
            
        }else if($i<(count($row))-1){
             array_push($notes[$c],$b);
         }
        //  print($i).'<br>';
         $i++;
     }
     $i=0;
 
}
// print_r($etudiants);
// echo "<br>";
// print_r($classements);
// echo "<br>";
// print_r($places);
// echo "<br>";
// print_r($min);
// echo "<br>";
// print_r($notes);
function eliminer($e,$c,$min,$notes){
    $l=count($min[$c]);
    for ($i = 0; $i < $l; $i++) {
        if($min[$c][$i]>$notes[$e][$i]) {
            return 0;
        }
    }
    return 1;
}

function obtenir_une_liste_attente_sans_etudiant($etudiant, $etudiants_en_attente)
{
    $liste_attente=[];
    foreach ($etudiants_en_attente as $s) {
        if ($s != $etudiant) {
            array_push($liste_attente ,$s );
        }
    }
    return $liste_attente;
}

function obtenir_des_resultats_tries_avec_eleve($etudiant, $choix, $classements, $resultats)
{
    array_push($resultats[$choix],$etudiant);
    $l=[];
    foreach ($classements[$choix] as $k){
        if (in_array($k,$resultats[$choix])){
            array_push($l,$k);
        }

    }
    return $l;
}


function orienter_les_etudiants($etudiants, $classements, $places,$min,$notes){

    $etudiants_en_attente =[];
    foreach($notes as $a=>$b)
    {
        array_push($etudiants_en_attente,$a);
    }

    $resultats = [];
    foreach($places as $a=>$b)
    {
        $resultats[$a]=[];
    }

    while (sizeof($etudiants_en_attente) > 0){
        $copy_etudiants_en_attente = $etudiants_en_attente;
        foreach($copy_etudiants_en_attente as $etudiant) {
            if (sizeof($etudiants[$etudiant]) == 0) {
                $etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant($etudiant,$etudiants_en_attente);
                continue;
            }
            $choix = array_shift($etudiants[$etudiant]);
            if ((sizeof($resultats[$choix]) < $places[$choix])) {
                if((eliminer($etudiant,$choix,$min,$notes)) == 1){
                    $resultats[$choix] = obtenir_des_resultats_tries_avec_eleve($etudiant, $choix ,$classements,$resultats);
                    $etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant($etudiant,$etudiants_en_attente);
                }
            }
            else{
                if (array_search($etudiant,$classements[$choix])
                 < array_search($resultats[$choix]
                 [sizeof($resultats[$choix])-1] , 
                 $classements[$choix])) {
                    if( (eliminer($etudiant,$choix,$min,$notes) == 1)){
                        $resultats[$choix] = obtenir_des_resultats_tries_avec_eleve($etudiant, $choix,$classements,$resultats);
                        $etudiants_en_attente = obtenir_une_liste_attente_sans_etudiant($etudiant,$etudiants_en_attente);
                        array_push($etudiants_en_attente,array_pop($resultats[$choix]));
                    }
            }
            }
        }
    }
    return $resultats;
}
$k = orienter_les_etudiants($etudiants, $classements, $places,$min,$notes);

$a="DROP TABLE IF EXISTS resultat_$x;";
mysqli_query($connection,$a);
$y="create table resultat_$x (matricule varchar(50) primary key ,choix varchar(100));";
mysqli_query($connection,$y);
foreach($k as $a=>$b)
{
    foreach($b as $c)
    {
        $q="insert into resultat_$x values ('$c','$a');";
    mysqli_query($connection,$q);
    }
} 

$_SESSION["etu"]=1;
?>