-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8081
-- Généré le : mar. 27 oct. 2020 à 15:02
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binotron`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenants`
--

CREATE TABLE `apprenants` (
  `id_apprenants` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apprenants`
--

INSERT INTO `apprenants` (`id_apprenants`, `nom`, `prenom`, `photo`) VALUES
(1, 'BOKALLI', 'Luigi', 0),
(2, 'BONNEAU', 'Amory', 0),
(3, 'CHAIGNEAU', 'Thomas', 0),
(4, 'CLOATRE', 'Erwan', 0),
(5, 'FURIGA', 'Julien', 0),
(6, 'GUILLEN', 'Celine', 0),
(7, 'HERGOUALC\'H', 'Pereg', 0),
(8, 'IBANNI', 'Jamel', 0),
(9, 'KARFAOUI', 'Christelle', 0),
(10, 'LE BERRE ', 'Baptiste', 0),
(11, 'LE GOFF', 'Baptiste', 0),
(12, 'LE JONCOUR', 'Jeremy', 0),
(13, 'LE MOAL', 'Patricia', 0),
(14, 'MAINTIER', 'Ludivine', 0),
(15, 'MBARGA MVOGO', 'Christian', 0),
(16, 'MOULARD', 'Eva', 0),
(17, 'PERTRON', 'Aude', 0),
(18, 'RIOUAL', 'Ronan', 0),
(19, 'SABIA', 'Paul', 0),
(20, 'VERPOEST', 'Guillaume', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenants`
--
ALTER TABLE `apprenants`
  ADD PRIMARY KEY (`id_apprenants`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenants`
--
ALTER TABLE `apprenants`
  MODIFY `id_apprenants` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
