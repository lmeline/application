
<?php 
    // Inclusion des données
    require 'Modele.php';
    $billets = getBillets();
    // inclusion de la vue 
    require 'vueAccueil.php'; 
    