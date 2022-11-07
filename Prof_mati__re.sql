-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 14:30
-- Version du serveur :  5.7.34
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion de planning`
--

-- --------------------------------------------------------

--
-- Structure de la table `Prof_matière`
--

CREATE TABLE `Prof_matière` (
  `id_prof` int(11) NOT NULL,
  `id_matiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Prof_matière`
--

INSERT INTO `Prof_matière` (`id_prof`, `id_matiere`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 3),
(15, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Prof_matière`
--
ALTER TABLE `Prof_matière`
  ADD KEY `prof` (`id_prof`),
  ADD KEY `matiere` (`id_matiere`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Prof_matière`
--
ALTER TABLE `Prof_matière`
  ADD CONSTRAINT `matiere` FOREIGN KEY (`id_matiere`) REFERENCES `matière` (`id`),
  ADD CONSTRAINT `prof` FOREIGN KEY (`id_prof`) REFERENCES `Prof` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
