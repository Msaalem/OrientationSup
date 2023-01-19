-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 04 Juin 2022 à 22:19
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `projet`
--

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfiliaire`()
BEGIN
SELECT * FROM `filiere`;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `matricule` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `capacite`
--

CREATE TABLE IF NOT EXISTS `capacite` (
  `fl` varchar(20) NOT NULL,
  `cp` int(11) DEFAULT NULL,
  `ntmin` float DEFAULT NULL,
  PRIMARY KEY (`fl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `capacite`
--

INSERT INTO `capacite` (`fl`, `cp`, `ntmin`) VALUES
('CNM', 1, 12.5),
('DSI', 3, 13.5),
('RSS', 1, 11.5);

-- --------------------------------------------------------

--
-- Structure de la table `capfiliere`
--

CREATE TABLE IF NOT EXISTS `capfiliere` (
  `anne` int(4) NOT NULL,
  `filiere` varchar(20) NOT NULL,
  `id_serie` varchar(2) NOT NULL,
  `capacite` int(11) DEFAULT NULL,
  PRIMARY KEY (`anne`,`filiere`,`id_serie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `capfiliere`
--

INSERT INTO `capfiliere` (`anne`, `filiere`, `id_serie`, `capacite`) VALUES
(2022, 'CPGE', 'C', 4),
(2022, 'CPGE', 'D', 4),
(2022, 'CPGE', 'O', 1),
(2022, 'CPGE', 'T', 1),
(2022, 'ENSA', 'C', 5),
(2022, 'ENSA', 'D', 3),
(2022, 'ENSA', 'O', 1),
(2022, 'ENSA', 'T', 4),
(2022, 'FM', 'C', 1),
(2022, 'FM', 'D', 0),
(2022, 'FM', 'O', 4),
(2022, 'FM', 'T', 1),
(2022, 'ISCAE', 'C', 1),
(2022, 'ISCAE', 'D', 0),
(2022, 'ISCAE', 'O', 3),
(2022, 'ISCAE', 'T', 1),
(2022, 'ISMS', 'C', 1),
(2022, 'ISMS', 'D', 2),
(2022, 'ISMS', 'O', 1),
(2022, 'ISMS', 'T', 1),
(2022, 'ISSM', 'C', 4),
(2022, 'ISSM', 'D', 2),
(2022, 'ISSM', 'O', 2),
(2022, 'ISSM', 'T', 5),
(2022, 'SupNum', 'C', 1),
(2022, 'SupNum', 'D', 0),
(2022, 'SupNum', 'O', 1),
(2022, 'SupNum', 'T', 1),
(2022, 'ZTE', 'C', 1),
(2022, 'ZTE', 'D', 0),
(2022, 'ZTE', 'O', 1),
(2022, 'ZTE', 'T', 2);

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE IF NOT EXISTS `choix` (
  `matricule` varchar(20) DEFAULT NULL,
  `choix1` varchar(20) DEFAULT NULL,
  `choix2` varchar(20) DEFAULT NULL,
  `choix3` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `choix`
--

INSERT INTO `choix` (`matricule`, `choix1`, `choix2`, `choix3`) VALUES
('A', 'CNM', 'RSS', 'DSI'),
('B', 'DSI', 'RSS', 'CNM'),
('C', 'RSS', 'DSI', 'CNM'),
('D', 'DSI', 'CNM', 'RSS'),
('E', 'RSS', 'DSI', 'CNM'),
('F', 'DSI', 'CNM', 'RSS');

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `CNM` varchar(11) DEFAULT NULL,
  `DSI` varchar(11) DEFAULT NULL,
  `RSS` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `class`
--

INSERT INTO `class` (`CNM`, `DSI`, `RSS`) VALUES
('A', 'B', 'C'),
('C', 'A', 'B'),
('B', 'C', 'A'),
('D', 'E', 'F'),
('F', 'D', 'E'),
('E', 'F', 'D');

-- --------------------------------------------------------

--
-- Structure de la table `filiere_c`
--

CREATE TABLE IF NOT EXISTS `filiere_c` (
  `FILIERE` varchar(90) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `id` int(11) NOT NULL,
  `capacite` int(11) NOT NULL DEFAULT '35',
  `pays` varchar(50) NOT NULL DEFAULT 'Mouritanie',
  PRIMARY KEY (`FILIERE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `filiere_c`
--

INSERT INTO `filiere_c` (`FILIERE`, `id`, `capacite`, `pays`) VALUES
('CPGE (Classes Preparatoires aux Grandes Ecoles) ', 1, 35, 'Mouritanie'),
('FM: Medecine UNA', 2, 35, 'Mouritanie'),
('Institut Superieur de la Science de la Mer (ISSM) - NDB', 3, 35, 'Mouritanie'),
('Institut Superieur des Metiers de la Statistique(ISMS)	', 4, 35, 'Mouritanie'),
('Institut Superieur des Metiers de l''Energie', 6, 35, 'Mouritanie'),
('Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d''Urbanisme d''Aleg)', 5, 35, 'Mouritanie'),
('Institut Superieur des Metiers du Numerique', 7, 35, 'Mouritanie'),
('Institut Superieur des Metiers de la Mine (IS2M)- ZTE', 8, 35, 'Mouritanie');

-- --------------------------------------------------------

--
-- Structure de la table `filiere_d`
--

CREATE TABLE IF NOT EXISTS `filiere_d` (
  `id` int(11) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Capacite` int(10) NOT NULL,
  `pays` varchar(50) DEFAULT 'Mauritania',
  PRIMARY KEY (`Nom`)
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
(16, 'Sciences de l''agriculture ("MAROC")', '', 0, 'Maroc'),
(18, 'Sciences de l''agriculture ("TUNISIE")', '', 0, 'Tunisie'),
(19, 'Sciences et techniques de la sante ("MAROC")', '', 0, 'Maroc'),
(20, 'Sciences et techniques de la sante ("TUNISIE")', '', 0, 'Tunisie'),
(17, 'Laboratoires ("MAROC")', '', 0, 'Maroc'),
(21, 'Ecole supereure de Technologies(EST) ("MAROC")', '', 0, 'Maroc'),
(22, 'Classe preparatoires aux ecoles d''ingenieurs(PC "TUNISIE")', '', 0, 'Tunisie'),
(23, 'Ecole Nationale de commerce et de gestion ("MAROC")', '', 0, 'Maroc'),
(24, 'Ingenieur agromome ("MAROC")', '', 0, 'Maroc'),
(24, 'Ingenieur agromome ("EGYPTE")', '', 0, 'Mauritania'),
(25, 'Ingenieur Industrie("EGYPTE")', '', 0, 'Mauritania'),
(26, 'Ingenieur Mecanique("EGYPTE")', '', 0, 'Mauritania'),
(27, 'Classe preparatoires aux ecoles d''ingenieurs(CPGE)', '', 0, 'Mauritania'),
(28, 'Docteur en Medecine', '', 0, 'Mauritania'),
(29, 'Classe preparatoires aux ecoles d''ingenieurs(PC"TUNISIE")', '', 0, 'Tunisie'),
(30, 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '', 0, 'Mauritania'),
(31, 'Institut Superieur des Metiers de la Statistique(ISMS)	', '', 0, 'Mauritania'),
(32, 'Institut Superieur des Metiers de l''Energie', '', 0, 'Mauritania'),
(33, 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d''Urbanisme d''Aleg)', '', 0, 'Mauritania'),
(34, 'Institut Superieur des Metiers du Numerique', '', 0, 'Mauritania'),
(35, 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '', 0, 'Mauritania');

-- --------------------------------------------------------

--
-- Structure de la table `formul_note`
--

CREATE TABLE IF NOT EXISTS `formul_note` (
  `annee` int(5) NOT NULL,
  `id_serie` varchar(20) NOT NULL,
  `matiere` varchar(20) NOT NULL,
  `coef` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `formul_note`
--

INSERT INTO `formul_note` (`annee`, `id_serie`, `matiere`, `coef`) VALUES
(2022, 'C', 'Anaglais', 1),
(2022, 'C', 'Arab', 1),
(2022, 'C', 'Francais', 1),
(2022, 'C', 'Math', 5),
(2022, 'C', 'MoyenneG', 2),
(2022, 'C', 'Physique', 5),
(2022, 'C', 'science', 3),
(2022, 'C', 'terbiye', 1),
(2022, 'D', 'Anaglais', 0),
(2022, 'D', 'Arab', 0),
(2022, 'D', 'Francais', 2),
(2022, 'D', 'Math', 2),
(2022, 'D', 'MoyenneG', 0),
(2022, 'D', 'Physique', 3),
(2022, 'D', 'Science', 4),
(2022, 'D', 'terbiye', 0),
(2022, 'O', 'Anaglais', 1),
(2022, 'O', 'Arab', 3),
(2022, 'O', 'Francais', 1),
(2022, 'O', 'Math', 2),
(2022, 'O', 'MoyenneG', 1),
(2022, 'O', 'Physique', 1),
(2022, 'O', 'Science', 1),
(2022, 'O', 'terbiye', 4),
(2022, 'T', 'Anaglais', 1),
(2022, 'T', 'Arab', 1),
(2022, 'T', 'Francais', 1),
(2022, 'T', 'Math', 5),
(2022, 'T', 'MoyenneG', 2),
(2022, 'T', 'Physique', 4),
(2022, 'T', 'Science', 1),
(2022, 'T', 'terbiye', 1);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `mot_pass` varchar(5) NOT NULL,
  `Matricule` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`mot_pass`, `Matricule`) VALUES
('1234', 1),
('1235', 2),
('1234', 21011),
('202cb', 21061),
('c8ffe', 21062),
('3def1', 21063),
('06905', 21064),
('ec5de', 21066),
('76dc6', 21067);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `fl` varchar(20) NOT NULL,
  `cp` int(11) DEFAULT NULL,
  `nt1` float DEFAULT '0',
  `nt2` float DEFAULT '0',
  `nt3` float DEFAULT '0',
  `nt4` float DEFAULT '0',
  PRIMARY KEY (`fl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`fl`, `cp`, `nt1`, `nt2`, `nt3`, `nt4`) VALUES
('CNM', 1, 0, 0, 0, 0),
('DSI', 3, 11, 13, 0, 0),
('RSS', 1, 14, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE IF NOT EXISTS `resultat` (
  `matricule` int(11) DEFAULT NULL,
  `oriantation` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE IF NOT EXISTS `serie` (
  `id_serie` text NOT NULL,
  `id_matiere` varchar(20) NOT NULL,
  `filiere` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `serie`
--

INSERT INTO `serie` (`id_serie`, `id_matiere`, `filiere`) VALUES
('C', '', NULL),
('D', '', NULL),
('O', '', NULL),
('T', '', NULL),
('', 'Math', NULL),
('', 'Physique', NULL),
('', 'science', NULL),
('', 'Francais', NULL),
('', 'Arab', NULL),
('', 'Anaglais', NULL),
('', 'terbiye', NULL),
('', 'MoyenneG', NULL),
('', '', 'ZTE'),
('', '', 'SupNum'),
('', '', 'ISSM'),
('', '', 'ISMS'),
('', '', 'ISCAE'),
('', '', 'FM'),
('', '', 'ENSA'),
('', '', 'CPGE');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `matricule` int(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
