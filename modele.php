<?php

    function getBillets(){

    
    // Connexion à la base de données
     $bdd = new PDO('mysql:host=localhost;dbname=application;charset=utf8','root','');
            
    //Lecture des données billets
    $billets = $bdd ->query('SELECT id, date, titre, contenu FROM billets ORDER BY date DESC;');

    return $billets;
    }