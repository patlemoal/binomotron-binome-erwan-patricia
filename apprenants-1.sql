-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8082
-- Generation Time: Nov 23, 2020 at 07:41 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `microsoftia`
--

-- --------------------------------------------------------

--
-- Table structure for table `apprenants`
--

CREATE TABLE `apprenants` (
  `id_apprenant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mails` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apprenants`
--

INSERT INTO `apprenants` (`id_apprenant`, `nom`, `prenom`, `mails`) VALUES
(1, 'BOKALLI', 'Luigi', 'luigi.bokalli@isen-ouest.yncrea.fr'),
(2, 'BONNEAU', 'Amaury', 'amaury.bonneau@isen-ouest.yncrea.fr'),
(3, 'CHAIGNEAU', 'Thomas', 'thomas.chaigneau@isen-ouest.yncrea.fr'),
(4, 'CLOATRE', 'Erwan', 'erwan.cloatre@isen-ouest.yncrea.fr'),
(5, 'FURIGA', 'Julien', 'julien.furiga@isen-ouest.yncrea.fr'),
(6, 'GUILLEN', 'Celine', 'celine.guillen@isen-ouest.yncrea.fr'),
(7, 'HERGOUALC\'H', 'Pereg', 'pereg.hergoualch@isen-ouest.yncrea.fr'),
(8, 'IBANNI', 'Jamal', 'jamal.ibanni@isen-ouest.yncrea.fr'),
(9, 'KARFAOUI', 'Christelle', 'christelle.karfaoui@isen-ouest.yncrea.fr'),
(10, 'LE BERRE', 'Baptiste', 'baptiste.le-berre@isen-ouest.yncrea.fr'),
(11, 'LE GOFF', 'Baptiste', 'baptiste.le-goff@isen-ouest.yncrea.fr'),
(12, 'LE JONCOUR', 'Jeremy', 'jeremy.le-joncour@isen-ouest.yncrea.fr'),
(13, 'LE MOAL', 'Patricia', 'patricia.le-moal@isen-ouest.yncrea.fr'),
(14, 'MAINTIER', 'Ludivine', 'ludivine.maintier@isen-ouest.yncrea.fr'),
(15, 'MBARGA MVOGO', 'Christian', 'christian.mbarga-mvogo@isen-ouest.yncrea.fr'),
(16, 'MOULARD', 'Eva', 'eva.moulard@isen-ouest.yncrea.fr'),
(17, 'PERTRON', 'Aude', 'aude.pertron@isen-ouest.yncrea.fr'),
(18, 'RIOUAL', 'Ronan', 'ronan.rioual@isen-ouest.yncrea.fr'),
(19, 'SABIA', 'Paul', 'paul.sabia@isen-ouest.yncrea.fr'),
(20, 'VERPOEST', 'Guillaume', 'guillaume.verpoest@isen-ouest.yncrea.fr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apprenants`
--
ALTER TABLE `apprenants`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apprenants`
--
ALTER TABLE `apprenants`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
