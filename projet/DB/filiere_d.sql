-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Juin 2022 à 20:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `filiere_d`
--

CREATE TABLE `filiere_d` (
  `id` int(11) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Capacite` int(10) NOT NULL,
  `pays` varchar(50) DEFAULT 'Mauritania'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `filiere_d`
--

INSERT INTO `filiere_d` (`id`, `Nom`, `Code`, `Capacite`, `pays`) VALUES
(0, 'Sciences appliquees et de technologie(TUNISIE)', 'FM', 35, 'Tunisie'),
(4, 'Ingenieure agromome', '', 0, 'Mauritania'),
(3, 'Ingenieure en Mecanique', '', 0, 'Mauritania'),
(2, 'Ingenieure en Industrie', '', 0, 'Mauritania'),
(1, 'Ecole Nationale des Sciences appliquees', 'ENSA', 0, 'Mauritania'),
(5, 'Sciences appliquees et de technologie(MAROC)', '', 0, 'Maroc'),
(6, 'Sciences appliquees et de technologie(ALGERIE)', '', 0, 'Algerie'),
(7, 'Medcine UNA', 'FM', 0, 'Mauritania'),
(8, 'Medcine Generale (age max.21 ans "MAROC")', 'FM', 0, 'Maroc'),
(9, 'Medcine Generale (age entre 18 et 20 ans "SENEGAL")', 'FM', 0, 'Senegal'),
(10, 'Medcine Generale "TUNISIE"', 'FM', 0, 'Tunisie'),
(11, 'Medcine Dentaire (age entre 18 et 20 ans "SENEGAL")', 'FM', 0, 'Senegal'),
(12, ' Pharmacie (age entre 18 et 22 ans "SENEGAL")', 'FM', 0, 'Senegal'),
(13, 'Pharmacie ("TUNISIE")', 'FM', 0, 'Tunisie'),
(14, 'Medecine veterinaire HassanII ( age max.23 ans "MAROC")', 'FM', 0, 'Maroc'),
(15, 'Biotechnologie ("TUNISIE")', '', 0, 'Tunisie'),
(16, 'Sciences de l\'agriculture ("MAROC")', '', 0, 'Maroc'),
(18, 'Sciences de l\'agriculture ("TUNISIE")', '', 0, 'Tunisie'),
(19, 'Sciences et techniques de la sante ("MAROC")', '', 0, 'Maroc'),
(20, 'Sciences et techniques de la sante ("TUNISIE")', '', 0, 'Tunisie'),
(17, 'Laboratoires ("MAROC")', '', 0, 'Maroc'),
(21, 'Ecole supereure de Technologies(EST) ("MAROC")', '', 0, 'Maroc'),
(22, 'Classe preparatoires aux ecoles d\'ingenieurs(PC "TUNISIE")', '', 0, 'Tunisie'),
(23, 'Ecole Nationale de commerce et de gestion ("MAROC")', '', 0, 'Maroc'),
(24, 'Ingenieur agromome ("MAROC")', '', 0, 'Maroc'),
(24, 'Ingenieur agromome ("EGYPTE")', '', 0, 'Mauritania'),
(25, 'Ingenieur Industrie("EGYPTE")', '', 0, 'Mauritania'),
(26, 'Ingenieur Mecanique("EGYPTE")', '', 0, 'Mauritania'),
(27, 'Classe preparatoires aux ecoles d\'ingenieurs(CPGE)', '', 0, 'Mauritania'),
(28, 'Docteur en Medecine', '', 0, 'Mauritania'),
(29, 'Classe preparatoires aux ecoles d\'ingenieurs(PC"TUNISIE")', '', 0, 'Tunisie'),
(30, 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '', 0, 'Mauritania'),
(31, 'Institut Superieur des Metiers de la Statistique(ISMS)	', '', 0, 'Mauritania'),
(32, 'Institut Superieur des Metiers de l\'Energie', '', 0, 'Mauritania'),
(33, 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '', 0, 'Mauritania'),
(34, 'Institut Superieur des Metiers du Numerique', '', 0, 'Mauritania'),
(35, 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '', 0, 'Mauritania');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `filiere_d`
--
ALTER TABLE `filiere_d`
  ADD PRIMARY KEY (`Nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
