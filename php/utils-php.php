<?php

somme(2,4,7,2,4,6,8,1,4,5,3,5);
function somme() {
    print_r(func_get_args() );
}
// return a args tab


somme_foreach(2,4,7,2,4,6,8,1,4,5,3,5);
function somme_foreach() {
    foreach(func_get_args() as $val){
      echo $val.'; ';
    }
}
// return 2; 4; 7; 2; 4; 6; 8; 1; 4; 5; 3; 5;

// search all png with a function glob
$fichiers = glob('img/*.png');
print_r($fichiers);
// return un tableau des fichiers png


$fichiers = glob('img/*.{gif,png}', GLOBE_BRACE);
print_r($fichiers);
// return un tableau des fichiers png et gif


// echo realpath('index.php');
// retourne le chemin absolu
print_r(array_map('realpath', $fichiers ));
// return the path and the file

// debug function and print the line number
$tab = 'xav';
debug($tab);
function debug($var){
  echo $var.' a la ligne: '._LINE_.'<br>';
}

// number rand and unique
echo uniqid();
echo uniqid('xav: ');

// JSON serialisation
$tab = array(
  'a' => 34234,
  'd' => array(3,8,2434,56,),
  'v' => 'toto',
  't' => 'titi'
);
echo serialize( $tab );
// return a tring JSON
echo unserialize( $tab );
// return a array
// or
print_r( json_encode( $tab) );
?>
