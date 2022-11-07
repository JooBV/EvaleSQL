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
