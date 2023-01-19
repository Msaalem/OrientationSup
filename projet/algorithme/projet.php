<?php
$etudiants = [ 'A'=> ['CNM', 'DSI', 'RSS'],
    'B'=> ['CNM', 'DSI', 'RSS'],
    'C'=> ['DSI', 'CNM', 'RSS'],
    'D'=> ['DSI', 'RSS', 'CNM'],
    'E'=> ['RSS', 'DSI', 'CNM'],
    'F'=> ['RSS', 'CNM', 'DSI']
];

$classements = ['DSI'=> ['C', 'E', 'D', 'B', 'F', 'A'],
    'RSS'=> ['C', 'E', 'D', 'B', 'F', 'A'],
    'CNM'=> ['C', 'E', 'D', 'B', 'F', 'A']
];

$places = ['CNM' => 1,
    'DSI' => 2,
    'RSS' => 2];

$min = ['CNM' => [12,11,0,0],
    'DSI' => [12,15,0,0],
    'RSS' => [9,0,0,0]];

$notes = [ 'A'=> [9,17,11,12],
    'B'=> [11,5,11,18],
    'C'=> [18,17,10,12],
    'D'=> [2,18,13,15],
    'E'=> [13,19,7,18],
    'F'=> [9,17,11,12]
];
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

    $etudiants_en_attente = ["A","B","C","D","E","F"];

    $resultats = ['CNM' => [],
        'DSI' => [],
        'RSS' => [],];

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
