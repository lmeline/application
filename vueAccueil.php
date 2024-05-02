<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon blog </title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="global">
        <!-- En tête de la page -->
        <header>
            <a href="index.php">
                <h1>Mon Blog</h1>
                <p> Bienvenue sur ce blog ! </p>
            </a>
        </header>
        <!-- Contenu principal de la page -->
        <main>
            
            <!--Boucle d'affichage des billets -->
        <?php foreach($billets as $billet):?>
            <article>
                <header>
                   <h1 class= "titreBillet"> <?=$billet['titre'] ?> </h1>
                   <time> <?= $billet['date'] ?></time>
                <header>
                <p> <?= $billet ['contenu'] ?> </p>
            </article>
            <hr>
            <?php endforeach; ?>
        </main> 
    
        <Footer>
            <p>Blog réalisé avec HTML, CSS, PHP, Mysql </p>
        </Footer>   
    </div>
</body>
</html>