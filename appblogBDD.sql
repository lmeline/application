DROP DATABASE IF EXISTS application;
CREATE DATABASE application CHARACTER SET = 'utf8' COLLATE = 'utf8_general_ci';

USE application;


CREATE TABLE billets(
id INT PRIMARY KEY AUTO_INCREMENT,
date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
titre VARCHAR(100),
contenu VARCHAR(400));



CREATE TABLE commentaires(
id INT PRIMARY KEY AUTO_INCREMENT,
date_commentaire DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
auteur VARCHAR(100) NOT NULL,
contenu_commentaire VARCHAR(400) NOT NULL,
id_post INT NOT NULL,
FOREIGN KEY (id_post) REFERENCES billets(id));

INSERT INTO billets (titre, contenu) VALUES 
    ("petit poney","histoire d'un petit cheval"),
    ("grand âne","histoire d'un grand âne"),
    ("troupeau de chevaux","histoire d'un troupeau de chevaux dans un pré");

INSERT INTO commentaires (auteur,contenu_commentaire,id_post) VALUES
    ("Emma","avis de l'histoire du petit poney",1),
    ("Louis","avis de l'histoire du troupeau de chevaux",3),
    ("Mathias","avis de l'histoire du grand âne",2),
    ("Nicolas","avis de l'histoire du petit poney",1);

SELECT date_commentaire AS date, auteur, titre, contenu_commentaire AS commentaire FROM commentaires JOIN billets ON commentaires.id_post= billets.id
