<?php
include "conect.php";
$req="select * from  choix;";
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
          array_push($etudiants[$row["matricule"]],$b);
        }
        $i++;  
    }
    $i=0;
}

$classements = [];
$req1="select * from  class;";
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
        array_push($classements[$a],$b);    
    }
    $i++;
}
$req2="select * from  capacite;";
$res2=mysqli_query($connection,$req2);
$places = [];
$min = [];
$i=0;
while($row=mysqli_fetch_assoc($res2))
{ 
    foreach($row as $a=>$b)
    {
       if($i==0)
       {
           $c=$b;
        $min[$b]=[];
       }else if($i==1)
        {
            $places[$c]=$b;
        }else{
            array_push($min[$c],$b);
        }
        $i++;
    }
    $i=0;

}
$notes = [];
$req3="select * from  note;";
$res3=mysqli_query($connection,$req3);
$i=0;
while($row=mysqli_fetch_assoc($res3))
{ 
    foreach($row as $a=>$b)
    { if($i==0)
        {
            $c=$b;
         $notes[$b]=[];
        }else{
             array_push($notes[$c],$b);
         }
         $i++;
     }
     $i=0;
 
}
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
    foreach ($classements[$choix] as $x){
        if (in_array($x,$resultats[$choix])){
            array_push($l,$x);
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
                if (array_search($etudiant,$classements[$choix]) < array_search($resultats[$choix][sizeof($resultats[$choix])-1] , $classements[$choix])) {
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
print_r($k);
?>