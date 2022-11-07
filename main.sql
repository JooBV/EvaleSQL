/* La ligne de commande corigé */

--
-- Structure de la table `films_categs`
--

DROP TABLE IF EXISTS `films_categs`;
CREATE TABLE IF NOT EXISTS `films_categs` (
  `id_film` int NOT NULL,
  `id_categorie` int NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `films_categs`
--

INSERT INTO `films_categs` (`id_film` , `id_categorie`) VALUES
(43, 51),
(35, 35),
(35, 52),
(36, 49),
(36, 51),
(43, 53),
(43, 54);




/* 1] Sélectionnez tous les champs des films sortis après 1960. */

SELECT * FROM `film` WHERE `date_sortie` > '1960'

/* 2] Sélectionnez le titre des films sortis avant 1960. */

SELECT * FROM `film` WHERE `date_sortie` < '1960'

/* 3] Changez la description du film dont l'ID est 35 */

UPDATE `film` SET `titre` = 'Ce film', `description` = 'OUI' WHERE `film`.`id` = 35;

/* 4] récupérez dans la même requête tous les commentaires du film dont l'ID est 43, 
tous les champs du film 43, et tous les champs des utilisateurs ayant mis ces commentaires */

SELECT * FROM commentaire
	INNER JOIN film ON id_film = film.id
  INNER JOIN user ON id_user = user.id
  WHERE commentaire.id_film = 43

/* 5] Supprimez le film dont le slug commence par "t" */

DELETE FROM `film` WHERE `film`.`id` = 35

/* 6] Récupérez tous les champs des utilisateurs qui ont mis des commentaires. Il ne doit pas avoir de doublons -
 un même utilisateur ne doit apparaître qu'une seule fois */

SELECT DISTINCT user.* FROM user
  INNER JOIN commentaire ON user.id = commentaire.id_user

  /* 7] Récupérez tous les champs des films de la catégorie dont l'ID est 51 */

SELECT * FROM film
  INNER JOIN films_categs ON films_categs.id_categorie
  WHERE films_categs.id_categorie = 51

/* 8] faites la moyenne des notes des films du site */

SELECT AVG (commentaire.note) FROM commentaire;

/* 9] Récupérez tous les films sortis au mois de juin */

SELECT * FROM film
WHERE MONTH(film.date_sortie) = 6;

/* 10] Récupérez tous les utilisateurs dont le role est 1 et qui ont postés des commentaires.
 Il ne doit pas y avoir de doublon. */

 SELECT DISTINCT user.*  FROM user
	INNER JOIN commentaire ON user.id = commentaire.id_user
  WHERE user.role = 1