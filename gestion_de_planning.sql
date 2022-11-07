-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 15:00
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
-- Structure de la table `Classe`
--

CREATE TABLE `Classe` (
  `id` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `nombres_élèves` int(11) NOT NULL,
  `id_école` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Classe`
--

INSERT INTO `Classe` (`id`, `id_prof`, `nombres_élèves`, `id_école`) VALUES
(1, 1, 10, 1),
(2, 2, 15, 2),
(3, 3, 30, 3),
(4, 4, 4, 1),
(5, 5, 5, 1),
(6, 6, 6, 1),
(7, 7, 7, 2),
(8, 8, 8, 2),
(9, 9, 9, 2),
(10, 10, 10, 2),
(11, 11, 11, 2),
(12, 12, 12, 3),
(13, 13, 13, 3),
(14, 14, 14, 3),
(15, 15, 17, 3);

-- --------------------------------------------------------

--
-- Structure de la table `matière`
--

CREATE TABLE `matière` (
  `id` int(11) NOT NULL,
  `matières` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matière`
--

INSERT INTO `matière` (`id`, `matières`) VALUES
(1, 'HTML/CSS'),
(2, 'SQL'),
(3, 'PHP');

-- --------------------------------------------------------

--
-- Structure de la table `Prof`
--

CREATE TABLE `Prof` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Prof`
--

INSERT INTO `Prof` (`id`, `nom`) VALUES
(1, 'Le prof #1'),
(2, 'Le Prof #2'),
(3, 'Le Prof #3'),
(4, 'Le prof #4'),
(5, 'Le prof #5'),
(6, 'Le prof #6'),
(7, 'Le prof #7'),
(8, 'Le prof #8'),
(9, 'Le prof #9'),
(10, 'Le prof #10'),
(11, 'Le prof #11'),
(12, 'Le prof #12'),
(13, 'Le prof #13'),
(14, 'Le prof #14'),
(15, 'Le prof #15');

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

-- --------------------------------------------------------

--
-- Structure de la table `écoles`
--

CREATE TABLE `écoles` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `écoles`
--

INSERT INTO `écoles` (`id`, `nom`) VALUES
(1, 'école 1'),
(2, 'école 2'),
(3, 'école 2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Classe`
--
ALTER TABLE `Classe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_école` (`id_école`);

--
-- Index pour la table `matière`
--
ALTER TABLE `matière`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Prof`
--
ALTER TABLE `Prof`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Prof_matière`
--
ALTER TABLE `Prof_matière`
  ADD KEY `prof` (`id_prof`),
  ADD KEY `matiere` (`id_matiere`);

--
-- Index pour la table `écoles`
--
ALTER TABLE `écoles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Classe`
--
ALTER TABLE `Classe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `matière`
--
ALTER TABLE `matière`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Prof`
--
ALTER TABLE `Prof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `écoles`
--
ALTER TABLE `écoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Classe`
--
ALTER TABLE `Classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `Prof` (`id`),
  ADD CONSTRAINT `id_école` FOREIGN KEY (`id_école`) REFERENCES `écoles` (`id`);

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
