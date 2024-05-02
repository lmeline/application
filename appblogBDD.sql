CREATE DATABASE IF NOT EXISTS application;

USE application;

CREATE TABLE billets;
id INT PRIMARY KEY AUTO_INCREMENT;
date datetime;
titre VARCHAR(100);
contenu VARCHAR(400)



CREATE TABLE commentaires;
id INT PRIMARY KEY AUTO_INCREMENT;
date datetime NOT NULL;
auteur VARCHAR(100) NOT NULL;
contenu VARCHAR(400) NOT NULL;
id_post INT NOT NULL;
FOREIGN KEY (id_post) REFERENCES billet(id);

INSERT INTO billets (titre, contenu) VALUES 
    ("petit poney","histoire d'un petit cheval"),
    ("grand âne","histoire d'un grand âne"),
    ("troupeau de chevaux","histoire d'un troupeau de chevaux dans un pré");

INSERT INTO commentaires (auteur,contenu,id_post) VALUES
    ("Emma","avis de l'histoire du petit poney",1),
    ("Louis","avis de l'histoire du troupeau de chevaux",3),
    ("Mathias","avis de l'histoire du grand âne",2),
    ("Nicolas","avis de l'histoire du petit poney",1);


