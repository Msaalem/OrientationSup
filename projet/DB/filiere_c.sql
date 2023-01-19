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
-- Structure de la table `filiere_c`
--

CREATE TABLE `filiere_c` (
  `FILIERE` varchar(90) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `capacite` int(11) NOT NULL DEFAULT '35',
  `pays` varchar(50) NOT NULL DEFAULT 'Mouritanie'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `filiere_c`
--

INSERT INTO `filiere_c` (`FILIERE`, `id`, `capacite`, `pays`) VALUES
('CPGE (Classes Preparatoires aux Grandes Ecoles) ', 1, 35, 'Mouritanie'),
('FM: Medecine UNA', 2, 35, 'Mouritanie'),
('Institut Superieur de la Science de la Mer (ISSM) - NDB', 3, 35, 'Mouritanie'),
('Institut Superieur des Metiers de la Statistique(ISMS)	', 4, 35, 'Mouritanie'),
('Institut Superieur des Metiers de l\'Energie', 6, 35, 'Mouritanie'),
('Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', 5, 35, 'Mouritanie'),
('Institut Superieur des Metiers du Numerique', 7, 35, 'Mouritanie'),
('Institut Superieur des Metiers de la Mine (IS2M)- ZTE', 8, 35, 'Mouritanie');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `filiere_c`
--
ALTER TABLE `filiere_c`
  ADD PRIMARY KEY (`FILIERE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
