-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 05 Juin 2022 à 17:48
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

DELIMITER $$
--
-- Procédures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getfiliaire` ()  BEGIN
SELECT * FROM `filiere`;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `matricule` int(11) NOT NULL,
  `code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `administrateur`
--

INSERT INTO `administrateur` (`matricule`, `code`) VALUES
(1, '0101');

-- --------------------------------------------------------

--
-- Structure de la table `capfiliere`
--

CREATE TABLE `capfiliere` (
  `anne` int(4) NOT NULL,
  `filiere` varchar(20) NOT NULL,
  `id_serie` varchar(2) NOT NULL,
  `capacite` int(11) DEFAULT NULL
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
(2022, 'UNA', 'C', 0),
(2022, 'UNA', 'D', 0),
(2022, 'UNA', 'O', 0),
(2022, 'UNA', 'T', 0),
(2022, 'ZTE', 'C', 1),
(2022, 'ZTE', 'D', 0),
(2022, 'ZTE', 'O', 1),
(2022, 'ZTE', 'T', 2);

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE `choix` (
  `matricule` int(10) NOT NULL,
  `c1` varchar(40) DEFAULT NULL,
  `c2` varchar(40) DEFAULT NULL,
  `c3` varchar(40) DEFAULT NULL,
  `c4` varchar(40) DEFAULT NULL,
  `c5` varchar(40) DEFAULT NULL,
  `c6` varchar(40) DEFAULT NULL,
  `c7` varchar(40) DEFAULT NULL,
  `c8` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Capacite` int(10) NOT NULL,
  `pays` varchar(50) DEFAULT 'Mauritania'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `filiere`
--

INSERT INTO `filiere` (`id`, `Nom`, `Code`, `Capacite`, `pays`) VALUES
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

-- --------------------------------------------------------

--
-- Structure de la table `formul_note`
--

CREATE TABLE `formul_note` (
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
(2022, 'T', 'terbiye', 1),
(2022, 'C', '[value-2]', 0),
(2022, 'D', '[value-2]', 0),
(2022, 'O', '[value-2]', 0),
(2022, 'T', '[value-2]', 0);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
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

CREATE TABLE `note` (
  `matricue` int(10) NOT NULL,
  `filiere` varchar(5) DEFAULT NULL,
  `moyen` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `orientations2021`
--

CREATE TABLE `orientations2021` (
  `NNI` varchar(10) DEFAULT NULL,
  `NUM BAC` varchar(7) DEFAULT NULL,
  `NOM FR` varchar(54) DEFAULT NULL,
  `DATE NAISS` varchar(12) DEFAULT NULL,
  `LIEU DE NAISS FR` varchar(22) DEFAULT NULL,
  `ANNEE BAC` varchar(9) DEFAULT NULL,
  `MBAC` varchar(9) DEFAULT NULL,
  `MCLASS` varchar(90) DEFAULT NULL,
  `SERIE` varchar(90) DEFAULT NULL,
  `FILIERE` varchar(90) DEFAULT NULL,
  `SESSION` varchar(8) DEFAULT NULL,
  `SEXE` varchar(8) DEFAULT NULL,
  `TEL1` varchar(10) DEFAULT NULL,
  `TEL2` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `orientations2021`
--

INSERT INTO `orientations2021` (`NNI`, `NUM BAC`, `NOM FR`, `DATE NAISS`, `LIEU DE NAISS FR`, `ANNEE BAC`, `MBAC`, `MCLASS`, `SERIE`, `FILIERE`, `SESSION`, `SEXE`, `TEL1`, `TEL2`) VALUES
('NNI', 'NUM BAC', 'NOM FR', 'DATE NAISS', 'LIEU DE NAISS FR', 'ANNEE BAC', 'MBAC', 'MCLASS', 'SERIE', 'FILIERE', 'SESSION', 'SEXE', 'TEL1', 'TEL2'),
('2318469557', '1659', 'Neda Mahfoudh Mohamed Bou', '02/05/2002', 'Hassi Etile', '0', '11.09', '11.352857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48542344', ''),
('8711635282', '3051', 'Sidiya Vadily Mohamed El Weiss', '20/11/2001', 'Aioun', '0', '10.89', '10.932857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41439798', ''),
('1439861405', '3071', 'Lemane Mohamed Mohamed', '02/01/2004', 'Aioun', '0', '13.92', '14.884286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34888877', ''),
('4826025578', '4066', 'Ibarakhe Emehah Brahim', '03/06/2004', 'Hassi Ehl Ahmed Bechne', '0', '12.71', '14.102857', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '48335244', ''),
('2753348978', '6323', 'Ahmed Mohamed Mahmoud Salem Sidi El Hadj', '06/06/2003', 'Guerou', '0', '12.22', '12.692857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '43061433', ''),
('7071173707', '7023', 'Nekhteirou Ahmede Khliva', '01/02/2003', 'Kiffa', '0', '12.52', '14.057143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '47190073', ''),
('2525930635', '7604', 'Khira Ethmane Heiba', '04/07/2003', 'Kiffa', '0', '11.04', '14.224286', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '46525459', ''),
('8707972271', '10462', 'Mohamed Lemine Amadou Niang', '30/11/2003', 'Ganki', '0', '13.22', '14.39', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22391592', ''),
('7167752048', '10652', 'Iveckou Mohamed Salem Abouda', '15/12/2000', 'Male', '0', '13.93', '15.668571', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41444773', ''),
('9038684071', '14856', 'Ahmed Mohameden Moctar Ellahi', '05/04/2000', 'Arafat', '0', '14.18', '16.67', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22290447', ''),
('0422324712', '18552', 'Aichetou Mohamssen Taleb', '24/01/2001', 'Boutilimit', '0', '13.18', '13.954286', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '41202367', ''),
('6615686442', '20119', 'Vatimetou Mohamed Mahmoud Abdalla', '14/12/2002', 'Atar', '0', '13.05', '12.561429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '31383882', ''),
('1981396303', '20140', 'Lematt Abdellahi Ebeyite', '15/10/2000', 'Atar', '0', '12.47', '13.015714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '26948115', ''),
('4573156375', '20181', 'Mohamed Hamada Ahmed Labeid', '13/12/2002', 'Atar', '0', '13.74', '14.11', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '27484255', ''),
('8128786532', '21613', 'Ismail Cheikh Baye Braham', '26/12/2004', 'Tevragh Zeina', '0', '14.26', '14.86', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22421038', ''),
('0118516347', '21639', 'Bah El Hilal Gah El Hilal', '08/04/2005', 'Ksar', '0', '13.23', '13.374286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41598940', ''),
('0881921576', '21660', 'Oumar Mohamed Vall Ahmed Mohamed', '17/04/2003', 'Magtalahjar', '0', '12.98', '13.39', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26960838', ''),
('6595621313', '21662', 'Mohamedou Mohamed Lemine Bouk', '06/01/2004', 'Teyaret', '0', '13.57', '14.101429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '43272071', ''),
('7148756150', '21673', 'Ahmednah Mohamed Abdel Hamid', '09/09/2001', 'Teyaret', '0', '11.59', '11.067143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26030328', ''),
('1366059246', '21678', 'Mohamed Mohamed Lemine El Boukhary', '13/05/2003', 'Nouadhibou', '0', '12.42', '12.988571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '44697939', ''),
('5494910515', '21679', 'Elmeselma Mohamed Abdellahi M\'Khaitir', '20/10/2002', 'Arafat', '0', '10.42', '10.721429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '41904492', ''),
('3355312451', '21681', 'Abdellahi El Moustapha Aly Thiam', '08/10/2002', 'Nouadhibou', '0', '10.99', '10.552857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49814632', ''),
('6081179970', '21922', 'Selma Ebou El Meali Sbai', '02/02/2002', 'Arafat', '0', '11.88', '11.411429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '42838771', ''),
('3140344931', '21924', 'Ahmed Bezeid Ahmed Yacoub Mohamed El Mamy', '18/05/2005', 'Nouadhibou', '0', '15.65', '17.342857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', ' 44 00 93 ', ''),
('7862420846', '21925', 'S\'Lemhoum Mahmoud Bellaly', '10/03/2003', 'Nouadhibou', '0', '11.01', '11.198571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '41531523', ''),
('0188399803', '21927', 'Mohamed Vadell Mohamed Mahmoud Ghaly', '19/06/2001', 'Arafat', '0', '11.13', '11.875714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26461328', ''),
('5650059881', '22367', 'Nessiba Abdellahi Ahmed Said', '11/09/2000', 'Nouadhibou', '0', '11.81', '11.884286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '49334513', ''),
('0483100159', '22956', 'Sidiya Mohamed Mahmoud Ahmedoua', '15/01/2002', 'R\'Kiz', '0', '11.78', '11.308571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46614761', ''),
('0799201043', '22958', 'Mohamed Mohamed Mahfoudh Bowbeni', '23/07/2003', 'Teyaret', '0', '11.2', '10.385714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20585836', ''),
('2367236792', '22962', 'El Moustaph Sidi El Hassen', '02/03/2002', 'Dar Naim', '0', '12.57', '12.992857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49184717', ''),
('0727799343', '22968', 'Sidi Selmou Oumar', '19/11/2002', 'Aioun', '0', '12.28', '12.325714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '42940119', ''),
('0388454349', '23128', 'Ahmed Ainine Mohamed Lemine Mahfoudh', '01/06/2002', 'N?ma', '0', '15.09', '15.977143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20813114', ''),
('7990281008', '23130', 'Mohamedsalem Mohamed Abdallahi Jiddou', '30/06/2003', 'Atar', '0', '12.03', '11.968571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41716974', ''),
('8392078870', '23133', 'Taleb Mohamed Zerrough', '26/04/2003', 'Ain Savra', '0', '13.47', '14.907143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34130523', ''),
('6417428724', '23136', 'Ahmed Mohamed Abdellahi Khaled', '01/06/2003', 'Nouadhibou', '0', '11.25', '11.521429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '27949406', ''),
('4754598949', '23262', 'Sadva Boubacar Boubacar', '09/02/2002', 'Toujounine', '0', '12.05', '12.757143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46753233', ''),
('4998418440', '23266', 'El Houssein Mohamed Moine', '05/01/2003', 'Atar', '0', '12.23', '12.318571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '42012441', ''),
('2839678396', '23278', 'Biby Sidi El Hadj El Moctar', '31/12/2001', 'Atar', '0', '12.14', '12.594286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48547322', ''),
('6099428871', '23410', 'Abdoulaye Moctar Athi?;25/08/2001', 'Ka?di', '0', '11.3', '10.578571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48124173', '', NULL),
('8208643625', '24610', 'Mohamedou Ahmedou Dade', '20/01/2001', 'Tichit', '0', '11.76', '11.878571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49955421', ''),
('0374671716', '26426', 'Amadou Maleck Sall', '30/12/2000', 'Bogh?;0', '10.11', '11.087143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48727582', '', NULL),
('9208164217', '26582', 'Mariem Mohamed Salem Beichar', '25/10/2001', 'Zoueirat', '0', '13.27', '13.967143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '42075618', ''),
('8105413315', '29968', 'Ahmed Mohamed Saleck El Moctar', '14/06/2000', 'Rosso', '0', '12.59', '14.655714', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '27278876', ''),
('3297794652', '30230', 'Bella Yemehlou Taleb El Alem', '21/05/2003', 'Tevragh Zeina', '0', '13.61', '14.392857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41423284', ''),
('8080010955', '30235', 'Sidi Mohamed Mohamed Elmoctar Mahfoudh', '26/08/2002', 'Dar Naim', '0', '11.51', '11.985714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26497677', ''),
('6297340105', '30442', 'Taleb El Gassem M\'Boud', '15/12/2002', 'Magtalahjar', '0', '12.73', '14.194286', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '31177799', ''),
('1280614565', '30516', 'Mohamed Lemin Saleck Ainatt', '08/03/2003', 'Teyaret', '0', '13.36', '14.107143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46469342', ''),
('2318098338', '30605', 'Sidi Mohamed El Moustapha Ebatt', '20/02/2003', 'Soudoud', '0', '11.77', '12.395714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20101375', ''),
('9873710608', '31826', 'Mohamed Malek Abdel Maleck Abdella Mohamed Lemine', '09/03/2003', 'Monguel', '0', '12.39', '14.111429', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48472659', ''),
('6857193453', '32385', 'Aboubekrine Mohamed Cheikh Ethmane', '31/12/2001', 'Arafat', '0', '12.73', '14.032857', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46682115', ''),
('9733565687', '34976', 'Mohamed Mohamed Salem Dhmine', '29/09/2003', 'Ksar', '0', '13.23', '14.82', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26401295', ''),
('1953964703', '35122', 'Ramla Babaha El Moctar Salem', '22/11/2004', 'El Mina', '0', '12.8', '14.027143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '26307724', ''),
('8764666152', '35169', 'Eghlana Ahmedou Hadramy', '03/01/2004', 'Ksar', '0', '12.06', '11.562857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '32032004', ''),
('2159771543', '35173', 'Mohamed El Hadrami Abde Selam', '27/03/2003', 'Ksar', '0', '11.31', '10.92', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34467567', ''),
('7860916764', '35188', 'Abderahman Mohamed Belemine', '10/03/2002', 'Aioun', '0', '11.77', '12.7', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46114323', ''),
('1845351475', '35569', 'Val Mohamedou Mohameda', '05/05/2004', 'Tevragh Zeina', '0', '12.26', '11.932857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49088990', ''),
('2355308120', '35577', 'Khelihena Yehifdhou Sid Brahim', '25/06/2000', 'Aioun', '0', '10', '10.411429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22259230', ''),
('9996099000', '35578', 'Eminou Ahmed Abdou', '12/08/2003', 'Ksar', '0', '12.08', '12.157143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '31575151', ''),
('5748985525', '35579', 'Aziz Brahim Ahmedou', '09/01/2001', 'Boutilimit', '0', '12.24', '13.284286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49131108', ''),
('7138839452', '35595', 'Mohamed Lemine Mohamed Mohamed Beybe', '07/09/2003', 'Tamchekett', '0', '12.45', '12.37', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '37128023', ''),
('3273285468', '35596', 'Mohamed Isselkou Bahah', '24/08/2002', 'Oum El Ghaywine', '0', '10.48', '10.515714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20002212', ''),
('5465108235', '35608', 'Mohamed Salem Abdallahi Abdi', '27/04/2001', 'Teyaret', '0', '15.14', '15.931429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48172822', ''),
('9997770795', '35610', 'Mohamed Mohamed El Hafedh Radhi', '28/12/2003', 'Arafat', '0', '15.26', '16.358571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '38301221', ''),
('2484350033', '35614', 'Mohamed Mohamed El Hady Ahmed', '02/08/2003', 'El Mina', '0', '11.55', '11.632857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41955556', ''),
('7087299569', '35621', 'Sidi Mohamed Yahya Khattri', '15/09/2004', 'Djonabe', '0', '13.05', '13.544286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46476917', ''),
('3283486376', '35623', 'Abeih Mohamed Hbal', '01/06/2003', 'Teyaret', '0', '13.11', '12.534286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48735458', ''),
('3264047770', '35633', 'Fah Mohamed Tlamid', '19/04/2004', 'Arafat', '0', '10.16', '10.38', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26372848', ''),
('6807603852', '35798', 'Abd El Aziz Ahmed Aboubacar', '06/03/2004', 'Toujounine', '0', '12.44', '14.207143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22225256', ''),
('6022749304', '36127', 'Lalla Baba Ahmed Ely Brahim', '19/03/2002', 'Riyad', '0', '12.89', '14.004286', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '38178075', ''),
('7071753088', '36626', 'Lekhssara Ethemane Dicko', '14/09/2001', 'Riyad', '0', '12.19', '14.047143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '20627700', ''),
('9598920375', '36842', 'Vatimetou Ahmed El Kharachi', '11/06/2002', 'Ksar', '0', '12.43', '13.991429', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '36361147', ''),
('3552605310', '36915', 'Mamme Sidi Mohamed El Haj', '30/12/2000', 'Aioun', '0', '11.21', '13.995714', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '33003302', ''),
('0559815228', '36966', 'Soulymen Mohamed Lemine Sidi Haiballa', '25/12/2000', 'Teyaret', '0', '14.03', '16.29', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48370837', ''),
('7939102159', '37755', 'Mohamedou Mohamed El Mokhtar', '01/06/2003', 'Dar Naim', '0', '12.92', '14.17', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '38155082', ''),
('9145403568', '38342', 'Mariem Abdallahi Cheikh Sidiya', '29/03/2003', 'Teyaret', '0', '12.55', '14.042857', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '26363753', ''),
('0872605114', '38550', 'Youssef Abderahmane Sidi Bewbe', '17/10/2002', 'Cheggar', '0', '12.64', '14.2', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41036007', ''),
('9741086485', '39883', 'El Hassen El Abass Teyib', '08/01/2004', 'Doueirare', '0', '12.14', '11.752857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20909224', ''),
('8464282372', '39894', 'Mohamed Abdallahi Mohamed Yehdhih Cheikhna', '23/09/2002', 'Dar Naim', '0', '11.44', '11.172857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26326772', ''),
('9164929280', '39895', 'Amin Khalil Jiyid', '18/12/2003', 'Tevragh Zeina', '0', '13.64', '13.805714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48305660', ''),
('3808019987', '39897', 'Guebel Abdel Aziz Dahi', '23/10/2002', 'Tevragh Zeina', '0', '10.78', '10.432857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '30454931', ''),
('0609266313', '39936', 'Sidina Mohamed Mahmoud Sidi Abdoullah', '29/01/2004', 'Dar Naim', '0', '10.89', '10.538571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22004975', ''),
('6650770469', '39937', 'Ishagh Cheikh Sidi Mohamed Cheikh Sidiya', '08/08/2003', 'Tevragh Zeina', '0', '15.8', '16.132857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '31505072', ''),
('2566832819', '39941', 'Ahmed Mohamed Mahmoud Taleb Mohamed', '13/05/2003', 'Teyaret', '0', '10.82', '11.045714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '44482426', ''),
('6134272047', '39942', 'Mohamed Abderrahmane Moulaye Zein Jiddou', '25/11/2001', 'Ksar', '0', '12.45', '13.227143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22116822', ''),
('8770615744', '39943', 'Aissata Sada Dieng', '12/06/2002', 'Ksar', '0', '12.24', '13.177143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '46520842', ''),
('0730307569', '39950', 'Moussa Mahmoud Ba', '20/01/2003', 'Bogh?;0', '10.58', '10.744286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41240690', '', NULL),
('4525777889', '39962', 'KHOLOUD AHMED OIDDAN', '03/05/2002', 'LAAYOUNE', '0', '10.66', '10.344286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '37441072', ''),
('0875004215', '39965', 'Mohamedou Babah Ahmed Babou', '11/12/2002', 'Aioun', '0', '12.43', '13.597143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '43555581', ''),
('8351391929', '39967', 'Tayae Mohamed Salem Lebchir', '10/08/2003', 'Ksar', '0', '14.15', '15.291429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26691794', ''),
('8763238894', '39970', 'Fatimetou Sidi  Mohamed Makhtour', '12/09/2003', 'Aleg', '0', '11.42', '11.185714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '22123551', ''),
('4910495506', '40001', 'Cheikh Ahmedou Ahmed Khalifa', '17/02/2003', 'Nouadhibou', '0', '11.8', '11.792857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34453551', ''),
('4540901353', '40003', 'Saide Bouh Ahmed El-Hadj', '10/11/2004', 'Toujounine', '0', '13.41', '13.415714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '27298473', ''),
('3689128639', '40004', 'Leila Abdellahi Deddy', '16/01/2004', 'Ksar', '0', '11.7', '11.618571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '49831521', ''),
('0298473754', '40006', 'Yarbana Cheikh Ahmed El Heiba Cheikh Mohamed Vadel', '16/07/2003', 'Arafat', '0', '13.29', '13.525714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '44940349', ''),
('6217137013', '40008', 'Mariem Ahmed M\'Barek', '25/11/2002', 'Dar Naim', '0', '13.75', '13.86', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '26505831', ''),
('4686783824', '40009', 'Sidi Mahmoud Mohamed Emeine', '18/10/2002', 'Tevragh Zeina', '0', '13.72', '13.408571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26044400', ''),
('2025699404', '40010', 'Abdellahi Mohamed Cheikh Sidiya', '09/06/2003', 'Tevragh Zeina', '0', '12.12', '13.842857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41011515', ''),
('6218634887', '40013', 'Abderrahmane Abdellahi Beyah', '28/11/2003', 'Tevragh Zeina', '0', '12.85', '13.16', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26339362', ''),
('8585403168', '40014', 'Ethmane Mahfoudh Mahmoud Ethmane', '14/08/2002', 'Magtaa Lahjar', '0', '13.51', '14.414286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '42114713', ''),
('8309925981', '40016', 'Mohamed El Moctar Ebeyite', '03/03/2003', 'Rosso', '0', '14.67', '15.81', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26101837', ''),
('1495149950', '40020', 'Cheikh Brahim Ahmed Jebbe', '08/03/2003', 'Ksar', '0', '14.57', '15.117143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '31077660', ''),
('2851357972', '40021', 'Sidi Mohamed Ledhem Sabar', '01/08/2002', 'Toujounine', '0', '10.95', '10.567143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '32921182', ''),
('8408574884', '40022', 'Mohamed Yehdhih El Kadi Ewfa', '14/12/2003', 'Ksar', '0', '11.32', '11.331429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '31777732', ''),
('5209935088', '40023', 'Mohamed Mahmoud El Ghaouth El Ghaouth', '15/03/2003', 'Tevragh Zeina', '0', '11.59', '12.191429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26268647', ''),
('9670505211', '40024', 'Mohamed Limam Mohamed Lemine Limam', '01/01/2003', 'Nouadhibou', '0', '14.33', '15.084286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '27121515', ''),
('9495257833', '40025', 'Ahmed Mohamed Mahmoud Namou', '31/12/2002', 'Toujounine', '0', '11.64', '11.734286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20940894', ''),
('7747011701', '40027', 'Mohamed Mohamed Lemine Sidi Ould Ahmed', '05/12/2003', 'Tevragh Zeina', '0', '12.06', '11.85', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48414574', ''),
('7009679878', '40028', 'Mohamed Mahfoudh Mohemd El Moctar Ahmed Sidi', '15/07/2003', 'Ksar', '0', '14.3', '14.527143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34878777', ''),
('3082257839', '40798', 'Benyoug Ebbaba Begniouk', '30/12/2002', 'Aleg', '0', '10.86', '11.301429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41459644', ''),
('7158986255', '40802', 'Mohamed El Moctar Sidi Ahmed Ech Tte', '31/12/2000', 'Toujounine', '0', '13.9', '14.327143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '34264283', ''),
('4552269753', '40810', 'Mohamed El Mokhtar Tah El Moustapha', '05/04/2002', 'R\'Kiz', '0', '11.69', '11.438571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '33309498', ''),
('5895487147', '40814', 'Abdellahi Ahmed Salem El Vetta', '25/11/2003', 'Mederdra', '0', '11.66', '11.114286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41009400', ''),
('1268078770', '40861', 'Taleb Mohamed Sidi Bouamatou', '24/03/2003', 'Teyaret', '0', '11.25', '10.535714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26235269', ''),
('6238403002', '41130', 'Mohamed El Mehdi Moustapha Khattri', '12/09/2002', 'Sebkha', '0', '13.2', '13.298571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49447110', ''),
('5310912864', '45167', 'Aichetou Mohamed Mohamed Vall', '20/07/2003', 'Teyaret', '0', '13.17', '13.99', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '44500410', ''),
('9229889113', '47599', 'Abdallahi Bah Awene', '03/06/2000', 'Tevragh Zeina', '0', '12.48', '14.195714', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '28458128', ''),
('7185927714', '47746', 'Khadijetou Yacoub Ahmed Mewloud', '31/03/2004', 'Arafat', '0', '12.25', '14.127143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '22491450', ''),
('3913698189', '47898', 'Mohamed Abdel Hamid Mohamed Lemin Cheikh Mohamed Ahmed', '19/06/2002', 'Tevragh Zeina', '0', '12.55', '14.151429', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '22340013', ''),
('8298054248', '48197', 'El Waled Ely El Meidah', '18/04/2000', 'Mederdra', '0', '13.57', '15.367143', 'D', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '43183212', ''),
('9902686933', '52523', 'Mohamedou Aly Mohamedhen Vall', '31/12/2002', 'Barkeiwel', '0', '12.81', '13.028571', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '42151212', ''),
('4306539944', '52524', 'Edah Mohamed Salem Atvagha', '21/11/2002', 'R\'Kiz', '0', '10.73', '10.624286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '47877580', ''),
('1504452347', '52525', 'Khaled Mohamed Vall Sid\'El Vally', '18/03/2003', 'El Mina', '0', '10.84', '10.441429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '30497006', ''),
('3022252475', '52527', 'Mohamed Salem Mohamed EL Moctar Mohamed Ahmed', '06/08/2004', 'Arafat', '0', '11.79', '12.47', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '32521691', ''),
('0978602737', '52528', 'Mohamed Mahmoud Ahmedou Sid Elemine', '03/02/2003', 'Kiffa', '0', '14.35', '15.461429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '44194149', ''),
('7265632420', '52532', 'Abdellahi Sidi Mohamed Mohamedou', '08/07/2001', 'Doha', '0', '14.27', '14.415714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20922093', ''),
('4179153724', '52537', 'Ahmed El Mourtedha Mohamed Mahmoud Sidi El Valy', '30/09/2001', 'Toujounine', '0', '10.53', '10.647143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '48655627', ''),
('4433607034', '52552', 'Ahmed Cheikh Mayekhav', '02/01/2002', 'Taguilalet', '0', '11.95', '12.297143', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '32664520', ''),
('6490633363', '52594', 'Abd El Ghader Ahmedou Mohamed Yeslem Etvagha', '08/04/2005', 'R\'Kiz', '0', '11.27', '11.701429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '49678888', ''),
('8997949794', '52598', 'Ahmed Mohamed Lemine Bouh', '03/07/2003', 'Kiffa', '0', '12.61', '13.355714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '32563487', ''),
('4518394734', '52610', 'Abdellahi Mohameden Zeyad', '10/12/2002', 'Rosso', '0', '11.22', '10.96', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26447654', ''),
('1078863392', '52615', 'Yacoub Ahmedou Bayah', '22/02/2004', 'Tevragh Zeina', '0', '14.82', '15.6', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '41940292', ''),
('2816394710', '52618', 'Mohamed Tahir Cheikhna Navaa', '31/12/2002', 'Arafat', '0', '13.41', '14.435714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '26202464', ''),
('6412557384', '52619', 'Mariem Mohamed El Moktar Sidi Mohamed', '27/05/2003', 'Arafat', '0', '13.48', '15.374286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'F', '49547246', ''),
('4178840317', '52620', 'Sidi Mohamed Mohamed Lemine Mohamed Jeddou', '12/11/2002', 'Toujounine', '0', '10.74', '10.784286', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '47862840', ''),
('6961693396', '52626', 'Sidi Abdellahi Ahmed Ahmed Bezeid', '30/12/2003', 'Akjoujt', '0', '11.81', '11.901429', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '38164247', ''),
('4847914501', '52647', 'El Housseine Harouna Diop', '14/05/2002', 'Aere M\'Bar', '0', '11.39', '12.412857', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46547579', ''),
('8618022716', '52654', 'Mamadou Alassane Keb?;03/04/2000', 'M\'Bagne', '0', '10.06', '10.6', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '37117184', '', NULL),
('0912043180', '52659', 'Moussa Alassane Sow', '18/08/2002', 'Sebkha', '0', '10.62', '11.035714', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '46511034', ''),
('3681502402', '52700', 'Mohamedene Ahmedou Bala', '20/08/2000', 'M\'Balal', '0', '14.76', '15.43', 'C', 'CPGE (Classes Preparatoires aux Grandes Ecoles) ', '0', 'G', '20575147', ''),
('9123388448', '901', 'Zeinebou El Alem Baba Hmoudy', '15/12/2003', 'N?ma', '0', '14.06', '14.777143', 'D', 'FM: Medecine UNA', '0', 'F', '22845505', ''),
('9317289411', '948', 'El Houssein Sidi Bouye Nejib', '30/12/2004', 'N?ma', '0', '14.63', '15.788571', 'D', 'FM: Medecine UNA', '0', 'G', '22428243', ''),
('8384405006', '1012', 'Abdoulaye Mamadou Ly', '23/08/2002', 'Bogh?;0', '13.55', '14.614286', 'D', 'FM: Medecine UNA', '0', 'G', '27215411', '', NULL),
('3043306034', '1532', 'Elhaj Issa Abatna Limam', '15/05/2001', 'Timbedra', '0', '12.98', '14.695714', 'D', 'FM: Medecine UNA', '0', 'G', '26280404', ''),
('6390506374', '2842', 'Khattar Taleb Moustaph Mohamed Khaiyi', '31/12/2002', 'Egharghar', '0', '13.54', '15.401429', 'D', 'FM: Medecine UNA', '0', 'G', '33437638', ''),
('2033965841', '2913', 'Zein El Arby Mahmoud', '30/04/2002', 'Tintane', '0', '12.27', '14.252857', 'D', 'FM: Medecine UNA', '0', 'G', '48480798', ''),
('8357848346', '4035', 'Aiche Brahim Hamma', '06/06/2001', 'Vassala', '0', '15.49', '17.624286', 'D', 'FM: Medecine UNA', '0', 'F', '44019518', ''),
('4782309812', '4155', 'Cheikh El Mahfoudh Saadna Sidi Mohamed', '25/12/2002', 'Aioun', '0', '14.05', '15.042857', 'D', 'FM: Medecine UNA', '0', 'G', '41296955', ''),
('9636492840', '4168', 'Mariem Mohamed Ali El Alem', '14/01/2002', 'Tintane', '0', '12.88', '14.895714', 'D', 'FM: Medecine UNA', '0', 'F', '27008646', ''),
('5067121891', '7030', 'Abderrahmane Sidi Moktar Ahmed El Hadi', '21/01/2002', 'Kiffa', '0', '12.84', '14.477143', 'D', 'FM: Medecine UNA', '0', 'G', '42906866', ''),
('7518306168', '7036', 'Lematt Mohamed Lemine El Habib', '25/07/2001', 'Kiffa', '0', '13.39', '15.162857', 'D', 'FM: Medecine UNA', '0', 'G', '49880161', ''),
('3257587279', '7044', 'Iselmou Katry Ahmed Ould Ebeidy', '01/12/2003', 'Moudjeria', '0', '13.88', '15.304286', 'D', 'FM: Medecine UNA', '0', 'G', '34831217', ''),
('3137838063', '9776', 'Mohamed M\'Brack Yacoub El Baraky', '14/08/2001', 'Soudoud', '0', '12.74', '14.411429', 'D', 'FM: Medecine UNA', '0', 'G', '49546000', ''),
('9308463963', '10211', 'Youssouf Samba Ba', '11/05/2004', 'Blajmil', '0', '12.64', '14.485714', 'D', 'FM: Medecine UNA', '0', 'G', '44408970', ''),
('9330274704', '10231', 'Mohamed Abdellahi Sidi Mohamed El Hacen', '14/06/2002', 'Soudoud', '0', '15.48', '16.872857', 'D', 'FM: Medecine UNA', '0', 'G', '27145053', ''),
('8020571101', '10365', 'Teslem Mohamed Abdallahi Miske', '06/07/2003', 'Ksar', '0', '12.46', '14.817143', 'D', 'FM: Medecine UNA', '0', 'F', '26200020', ''),
('6178774968', '10366', 'Meymouna Ahmed Maham', '11/06/2002', 'Rosso', '0', '14.23', '15.194286', 'D', 'FM: Medecine UNA', '0', 'F', '20020515', ''),
('0442534759', '10471', 'Ibrahima Sid\'Ahmed Dia', '18/08/2002', 'Bogh?;0', '11.97', '14.495714', 'D', 'FM: Medecine UNA', '0', 'G', '41447224', '', NULL),
('4724386165', '14680', 'Nessibe Ahmed Samba Vall', '18/06/2002', 'R\'Kiz', '0', '15.09', '17.532857', 'D', 'FM: Medecine UNA', '0', 'F', '49270087', ''),
('2900146159', '14689', 'Mohamed Salem Mohameden Dabda', '06/02/2003', 'R\'Kiz', '0', '14.21', '16.244286', 'D', 'FM: Medecine UNA', '0', 'G', '46591191', ''),
('8961019760', '14786', 'Vatimetou Cheikh Khaled', '26/09/2002', 'Boutilimit', '0', '13.17', '14.331429', 'D', 'FM: Medecine UNA', '0', 'F', '47830137', ''),
('2278897243', '14829', 'Mariem Sidi Mohamed Saleck', '01/01/2002', 'Teyaret', '0', '13.46', '14.764286', 'D', 'FM: Medecine UNA', '0', 'F', '26446345', ''),
('1650757059', '14841', 'Mahjoub Mohamed El Mostapha Mohamed Vall', '20/10/2002', 'Cheggar', '0', '13.49', '14.498571', 'D', 'FM: Medecine UNA', '0', 'F', '34544989', ''),
('9427860972', '16130', 'Isselem Bouha Mohamed Mahmoud Abdoullah', '05/08/2002', 'Guerou', '0', '13.45', '14.925714', 'D', 'FM: Medecine UNA', '0', 'F', '41414438', ''),
('8132466518', '17001', 'Rokhiya Oumar Toumbou', '24/10/2002', 'Jedrel Mohguen', '0', '13.35', '15.105714', 'D', 'FM: Medecine UNA', '0', 'F', '46184038', ''),
('2280255825', '17015', 'Oumar Mamadou Anne', '09/12/2002', 'Babab?;0', '12.8', '15.367143', 'D', 'FM: Medecine UNA', '0', 'G', '37420284', '', NULL),
('1055922407', '17221', 'Zeinebou Rava Vetene', '07/10/2004', 'R\'Kiz', '0', '13.82', '15.494286', 'D', 'FM: Medecine UNA', '0', 'F', '49136027', ''),
('8363114476', '21657', 'Ely Amar Ahmed Wahena', '01/12/2002', 'Teyaret', '0', '10', '9.982857', 'C', 'FM: Medecine UNA', '0', 'G', '38005102', ''),
('5583253168', '22065', 'Mohamed Hamid Mohamed Ahmed Mohamed Ahmed', '20/10/2001', 'Magtalahjar', '0', '13.02', '14.611429', 'D', 'FM: Medecine UNA', '0', 'G', '44753276', ''),
('7775122883', '22093', 'El Housseine Mohamed El Moctar Mohamed Ahmed', '08/10/2002', 'Tevragh Zeina', '0', '12.96', '15.157143', 'D', 'FM: Medecine UNA', '0', 'G', '42052448', ''),
('7403836565', '22961', 'Mariem Mohamed Chennan', '18/12/2001', 'El Imaratt', '0', '13.16', '13.237143', 'C', 'FM: Medecine UNA', '0', 'F', '49089598', ''),
('1917332459', '22963', 'Aminetou Mohamed Ahmed', '16/10/2002', 'Nouadhibou', '0', '12.64', '12.808571', 'C', 'FM: Medecine UNA', '0', 'F', '49660000', ''),
('9628926355', '22972', 'Oumou El Kheiry Amar Oumar', '05/09/2002', 'Nouadhibou', '0', '14.73', '16.248571', 'D', 'FM: Medecine UNA', '0', 'F', '46752657', ''),
('0603066752', '22982', 'Didde Mohamed Sidelle', '17/04/2002', 'Nouadhibou', '0', '15.45', '16.317143', 'D', 'FM: Medecine UNA', '0', 'F', '42050548', ''),
('1322375781', '23102', 'Ettiyeb Limame Ahmed Wel Ebbabba', '15/04/2003', 'Bark?ol', '0', '14.29', '15.76', 'D', 'FM: Medecine UNA', '0', 'G', '42225424', ''),
('9491772041', '23270', 'Boubacar Mohamed Ethmane', '08/08/2001', 'Nouadhibou', '0', '10', '10.038571', 'C', 'FM: Medecine UNA', '0', 'G', '34888314', ''),
('7441588674', '27603', 'Mohamed Vadel Mohamed Laghdhaf Mohamed Laghdhaf', '30/08/2002', 'Benechab', '0', '14.47', '16.085714', 'D', 'FM: Medecine UNA', '0', 'G', '34493975', ''),
('3606235931', '29989', 'Elhaj El Moctar Salem El Moustapha', '11/03/2002', 'Tevragh Zeina', '0', '14.75', '16.662857', 'D', 'FM: Medecine UNA', '0', 'G', '49746727', ''),
('6943893314', '30001', 'Zeine El Abidine Moulaye Brahim Moulaye Driss', '05/08/2004', 'R\'Kiz', '0', '13.38', '15.681429', 'D', 'FM: Medecine UNA', '0', 'G', '26565402', ''),
('2915569935', '30078', 'Oum El Khairy Mohamed H\'Neik', '06/05/2001', 'Mederdra', '0', '14.13', '16.055714', 'D', 'FM: Medecine UNA', '0', 'F', '20020950', ''),
('4687967321', '30316', 'Ami Mohamed Abdellahi El Bechir', '16/07/2004', 'Teyaret', '0', '14.02', '15.791429', 'D', 'FM: Medecine UNA', '0', 'F', '46941475', ''),
('7656047332', '30328', 'Mohamed El Moctar Maouloud Saleh', '21/09/2001', 'El Mina', '0', '14.28', '16.274286', 'D', 'FM: Medecine UNA', '0', 'G', '49225271', ''),
('9451285502', '30335', 'Dedahi Mohamed Ebeih', '01/12/2002', 'Ksar', '0', '14.23', '16.515714', 'D', 'FM: Medecine UNA', '0', 'G', '49145604', ''),
('2517304813', '30337', 'Zeinebou Hamady Moulaye Boukhary', '14/04/2002', 'Ouadane', '0', '13.02', '15.145714', 'D', 'FM: Medecine UNA', '0', 'F', '49399094', ''),
('0513222733', '30376', 'Babene Ahmedou Hamenih', '24/07/2002', 'Rosso', '0', '12.95', '14.957143', 'D', 'FM: Medecine UNA', '0', 'G', '41262673', ''),
('9760945489', '30416', 'Fatimetou Abdellahi Aboubekrine', '05/05/2001', 'Teyaret', '0', '14.99', '17.105714', 'D', 'FM: Medecine UNA', '0', 'F', '43487490', ''),
('4912521836', '30428', 'Aminetou Aboubekrin Sidi Cheikh', '01/11/2002', 'Magtalahjar', '0', '13.41', '14.308571', 'D', 'FM: Medecine UNA', '0', 'F', '41309422', ''),
('3250567874', '30447', 'Mohamed El Mokhtar Mohamed Lemine Lehbib', '27/07/2002', 'Ksar', '0', '14.73', '16.247143', 'D', 'FM: Medecine UNA', '0', 'G', '27204785', ''),
('7778688991', '30459', 'Zeini Mohamed Chenane', '03/05/2002', 'Arafat', '0', '13.68', '14.865714', 'D', 'FM: Medecine UNA', '0', 'G', '34147128', ''),
('2218248381', '30465', 'Neziha Mohamed Ahmed Baye', '28/12/2003', 'Ksar', '0', '13.57', '15.228571', 'D', 'FM: Medecine UNA', '0', 'F', '36662840', ''),
('6916069155', '30491', 'Hafsa Brahim Mohamed Ahmed', '15/09/2003', 'Aioun', '0', '15.08', '15.994286', 'D', 'FM: Medecine UNA', '0', 'F', '46526914', ''),
('9172510800', '30495', 'Sidi Ahmed Sidi Hawmy', '16/10/2002', 'Abou Dhabi', '0', '12.93', '15.384286', 'D', 'FM: Medecine UNA', '0', 'G', '38216018', ''),
('7327515704', '30596', 'Hanane Weline Cheick El Weli', '04/05/2003', 'Teyaret', '0', '10.69', '10.205714', 'C', 'FM: Medecine UNA', '0', 'F', '36400070', ''),
('6032678418', '30602', 'Sidi Abdella Brahim El Meghary', '10/09/2003', 'Timbedra', '0', '11.13', '10.09', 'C', 'FM: Medecine UNA', '0', 'G', '33147232', ''),
('5765263871', '30652', 'Lemine Doudou Bouheda', '30/12/2002', 'Akjoujt', '0', '12.73', '14.961429', 'D', 'FM: Medecine UNA', '0', 'F', '22112225', ''),
('4907247558', '30677', 'Ahmed Mohamed Mahmoud Gue', '26/07/2001', 'Nouadhibou', '0', '13.45', '15.512857', 'D', 'FM: Medecine UNA', '0', 'G', '30517437', ''),
('5461958936', '30691', 'Rayaa Moussa Ahmedou', '05/07/2003', 'Magtalahjar', '0', '14.27', '16.395714', 'D', 'FM: Medecine UNA', '0', 'F', '31082003', ''),
('5342833236', '30712', 'Fatma Abdellahi El Bechir', '01/12/2002', 'Teyaret', '0', '14.38', '15.805714', 'D', 'FM: Medecine UNA', '0', 'F', '36540327', ''),
('7111829220', '30779', 'Khadijetou Ahmed Maouloud', '26/04/2002', 'Teyaret', '0', '13.36', '15.215714', 'D', 'FM: Medecine UNA', '0', 'F', '42015621', ''),
('5871583243', '31060', 'Oussama Mohamed Vall Sadvi', '07/05/2003', 'Riyad', '0', '13.77', '14.628571', 'D', 'FM: Medecine UNA', '0', 'G', '47581166', ''),
('3204824711', '31437', 'Tounaja Mohamed Ahmed El Bechir', '14/02/2003', 'Arafat', '0', '12.9', '14.485714', 'D', 'FM: Medecine UNA', '0', 'F', '38571836', ''),
('2093794762', '31518', 'Saad Bouh Mohamed Vall Taleb Mohamed', '10/08/2002', 'Aioun', '0', '12.4', '14.612857', 'D', 'FM: Medecine UNA', '0', 'G', '26272857', ''),
('0447503196', '31839', 'Brahim El Hefd Bezeid', '16/08/2001', 'Arafat', '0', '13.46', '15.408571', 'D', 'FM: Medecine UNA', '0', 'G', '27284848', ''),
('8836526565', '31884', 'Cheikh Bouy? Kaber Lemlih', '29/10/2003', 'Bark?ol', '0', '13.27', '15.752857', 'D', 'FM: Medecine UNA', '0', 'G', '31464603', ''),
('8747835973', '32249', 'Roughaya Sidi Mohamed Mohamed Saleh', '28/01/2003', 'Tevragh Zeina', '0', '13.77', '15.788571', 'D', 'FM: Medecine UNA', '0', 'F', '38610109', ''),
('2835297585', '32259', 'Mohamed Mohamed Lemine Mohamed Moussa', '26/02/2003', 'Ksar', '0', '15.11', '16.765714', 'D', 'FM: Medecine UNA', '0', 'G', '26441802', ''),
('8673890836', '32286', 'Mohamed El Mamy Abdel Kader Habiboullah', '11/11/2002', 'Teyaret', '0', '13.77', '14.434286', 'D', 'FM: Medecine UNA', '0', 'G', '32302876', ''),
('5610499401', '32320', 'Mohamed Esseni Mohamed Salem Ahmed Tolba', '08/08/2001', 'Ksar', '0', '14.36', '14.52', 'D', 'FM: Medecine UNA', '0', 'G', '30404059', ''),
('3285559363', '32361', 'Mohamed Mahmoud Bouya Ahmed Bala Cherif', '10/10/2002', 'Timbedra', '0', '13.95', '15.814286', 'D', 'FM: Medecine UNA', '0', 'G', '2207 19 75', ''),
('7909577008', '32366', 'Youssouf Sidi Mohamed Sid\'El Moctar', '01/12/2003', 'El Mina', '0', '12.78', '14.827143', 'D', 'FM: Medecine UNA', '0', 'G', '37515135', ''),
('8220075754', '32371', 'Aichetou Brahim Cheikh Mohamedou', '13/03/2002', 'Teyaret', '0', '13.42', '14.881429', 'D', 'FM: Medecine UNA', '0', 'F', '33 40 33 3', ''),
('8327542442', '32395', 'Abdallahi Ahmedou Heddou', '15/10/2001', 'Teyaret', '0', '13.2', '14.921429', 'D', 'FM: Medecine UNA', '0', 'G', '41216230', ''),
('1915700337', '32396', 'Cheikh Sidi Elmoctar Ahmed Mahmoud Mohamed Yehdih', '31/03/2003', 'Sebkha', '0', '14.13', '16.271429', 'D', 'FM: Medecine UNA', '0', 'G', '31313199', ''),
('4625798857', '34992', 'Mohamed Abdelhay Khalihenna Moukhtir', '12/10/2001', 'Tevragh Zeina', '0', '14.78', '16.398571', 'D', 'FM: Medecine UNA', '0', 'G', '49030708', ''),
('2389158016', '34996', 'Mohamdi Dah Mohamed El Agheb', '09/08/2004', 'Teyaret', '0', '13.41', '15.022857', 'D', 'FM: Medecine UNA', '0', 'G', '47078993', ''),
('9373494606', '35003', 'Aboubecrine Yehdih El Moustapha', '30/08/2003', 'Toujounine', '0', '13.98', '16.231429', 'D', 'FM: Medecine UNA', '0', 'G', '36198484', ''),
('0349669481', '35027', 'Mohameden Mohamed El Moctar Bekak', '25/06/2004', 'Taguilalet', '0', '13.78', '14.417143', 'D', 'FM: Medecine UNA', '0', 'G', '48549109', ''),
('9254157640', '35042', 'Ahmed Salem Moctar Ahmed Salem', '25/01/2003', 'Tevragh Zeina', '0', '13.86', '15.981429', 'D', 'FM: Medecine UNA', '0', 'G', '27596684', ''),
('9748036632', '35168', 'Fatma Sidi Mohamed El Hady', '20/10/2002', 'Tevragh Zeina', '0', '13.23', '14.675714', 'D', 'FM: Medecine UNA', '0', 'F', '49499898', ''),
('0777253823', '35597', 'Cheikh Dah Cheikh Mohamed El Havedh Toulba', '24/08/2003', 'Tevragh Zeina', '0', '10.13', '9.894286', 'C', 'FM: Medecine UNA', '0', 'G', '49190243', ''),
('8679556315', '35636', 'Omou El Mouminine Mohamed Yehdhih El Hacen', '24/12/2001', 'Teyaret', '0', '10.47', '10.177143', 'C', 'FM: Medecine UNA', '0', 'F', '48153678', ''),
('2808845006', '35693', 'Mohamed Yahya Mohamed Ainine Ahmed El Hadi', '19/12/2002', 'Arafat', '0', '15.14', '16.342857', 'D', 'FM: Medecine UNA', '0', 'G', '34620201', ''),
('0712112115', '35709', 'Abdellahi Sidi El Moustaphe Deye', '05/06/2002', 'Ouad Naga', '0', '14.71', '16.852857', 'D', 'FM: Medecine UNA', '0', 'G', '27404318', ''),
('8986102020', '35783', 'Khalil Cheikh To?nsi', '15/07/2003', 'Tevragh Zeina', '0', '13.27', '14.647143', 'D', 'FM: Medecine UNA', '0', 'G', '22682508', ''),
('0342132387', '35784', 'Abd El Ghadr Mohamed El Mokhtar Mohamed Lemine', '07/06/2004', 'Dar Naim', '0', '13.82', '14.387143', 'D', 'FM: Medecine UNA', '0', 'G', '49072138', ''),
('8001676762', '35785', 'Ahmed Mohamed Sidi El Mokhtar', '15/09/2002', 'El Mina', '0', '11.91', '14.665714', 'D', 'FM: Medecine UNA', '0', 'G', '42405056', ''),
('1349229940', '35806', 'Mohameden Cheibani T\'Feil Amar', '02/07/2002', 'Magtalahjar', '0', '14.26', '15.984286', 'D', 'FM: Medecine UNA', '0', 'G', '20224889', ''),
('2054290445', '35858', 'Moctar Sidi Brahim Hamdinou', '14/06/2004', 'Tevragh Zeina', '0', '10', '10.822857', 'C', 'FM: Medecine UNA', '0', 'G', '27226789', ''),
('0254905137', '35880', 'Saviye Ahmed Noueiguedh', '10/09/2003', 'Teyaret', '0', '14.88', '15.982857', 'D', 'FM: Medecine UNA', '0', 'F', '46433310', ''),
('6655486512', '36114', 'Mohamed Sidi Mohamed Mahmoud Mohamed Sid', '28/11/2001', 'Boutilimit', '0', '12.52', '14.307143', 'D', 'FM: Medecine UNA', '0', 'G', '49131108', ''),
('6863527165', '36623', 'Khadija Mohamed Yacoub Beyah', '23/09/2002', 'Tevragh Zeina', '0', '15.47', '16.71', 'D', 'FM: Medecine UNA', '0', 'F', '20249402', ''),
('9744531149', '36628', 'EMAL MOHAMED ABDARRAHMANE EL AGHEB', '06/06/2002', 'AUGSBURG', '0', '16.39', '16.805714', 'D', 'FM: Medecine UNA', '0', 'F', '26210853', ''),
('7687687762', '36661', 'Vadila Mohamedou Moutali', '28/07/2003', 'Ksar', '0', '12.67', '14.614286', 'D', 'FM: Medecine UNA', '0', 'F', '33314140', ''),
('1093957465', '36785', 'Khadija Ahmed Vall Maham', '25/11/2003', 'Teyaret', '0', '14.8', '16.811429', 'D', 'FM: Medecine UNA', '0', 'F', '26353580', ''),
('0631677678', '36799', 'Abdellah Elmostapha Ahmed Wedih', '03/11/2002', 'Ksar', '0', '12.9', '14.235714', 'D', 'FM: Medecine UNA', '0', 'G', '38442486', ''),
('5790702121', '36812', 'Boullah Mohamed Yahya Limam', '20/09/2003', 'Teyaret', '0', '14.23', '14.965714', 'D', 'FM: Medecine UNA', '0', 'G', '20609476', ''),
('8977588524', '36822', 'Mahmoud Sidi Brahim Mohamed Ahmed', '23/06/2003', 'Tevragh Zeina', '0', '14.99', '16.161429', 'D', 'FM: Medecine UNA', '0', 'G', '41051399', ''),
('4883217263', '36951', 'Fatimetou Boubacar Babah', '28/12/2003', 'Tevragh Zeina', '0', '12.54', '14.862857', 'D', 'FM: Medecine UNA', '0', 'F', '43230366', ''),
('6111344157', '37013', 'Tahra Mohamed Limame Sidi Ely', '05/12/2003', 'Dar Naim', '0', '12.75', '15.035714', 'D', 'FM: Medecine UNA', '0', 'F', '20834441', ''),
('7803255114', '37034', 'Ahmedou Salek Mohamed Lemine Tolba', '13/01/2002', 'R\'Kiz', '0', '14.23', '16.604286', 'D', 'FM: Medecine UNA', '0', 'G', '42849882', ''),
('9039030652', '37036', 'Mohamd Mokhtar Mohamed Herme Dehah', '31/12/2001', 'Arafat', '0', '12.89', '15.628571', 'D', 'FM: Medecine UNA', '0', 'G', '48485919', ''),
('9721056567', '37086', 'Feitima Bah Bah', '05/08/2002', 'Guerou', '0', '13.77', '16.165714', 'D', 'FM: Medecine UNA', '0', 'F', '38650054', ''),
('5716130461', '37101', 'Zehra Mohamed Lemin Ebnou Afan', '01/02/2001', 'Boutilimit', '0', '12.82', '15.031429', 'D', 'FM: Medecine UNA', '0', 'F', '41354298', ''),
('7160040742', '37109', 'Ezzedine Oumar Jiyid', '06/02/2002', 'Arafat', '0', '12.65', '14.628571', 'D', 'FM: Medecine UNA', '0', 'G', '43291230', ''),
('2659397203', '37165', 'Mohamed El Moustapha Nedhirou Abdou', '22/08/2003', 'Aghchourguit', '0', '13.98', '16.462857', 'D', 'FM: Medecine UNA', '0', 'G', '36321014', ''),
('0624978664', '37208', 'Vatimetou Ahmed El Khader', '23/12/2004', 'Tenghadej', '0', '13.73', '15.98', 'D', 'FM: Medecine UNA', '0', 'F', '43032952', ''),
('0309939154', '37209', 'Oumar Mohamed Cherif', '07/08/2002', 'Boutilimit', '0', '12.23', '14.715714', 'D', 'FM: Medecine UNA', '0', 'G', '22050042', ''),
('0316648450', '37234', 'Mohamed Redwan Brahim Mohamed Ahmed', '29/08/2002', 'Aioun', '0', '13.18', '14.867143', 'D', 'FM: Medecine UNA', '0', 'G', '31179110', ''),
('1480454353', '37236', 'Mohamed Lemine Mohamed Selme', '27/09/2001', 'Zoueirat', '0', '12.7', '14.262857', 'D', 'FM: Medecine UNA', '0', 'G', '48033908', ''),
('1627171218', '37326', 'Aminetou Abdallahi Mohamedou  Aliyoune', '21/05/2003', 'Arafat', '0', '13.08', '15.138571', 'D', 'FM: Medecine UNA', '0', 'F', '43171771', ''),
('2151115360', '37409', 'Abdallahi Abou Ba', '07/02/2003', 'Teyaret', '0', '14.5', '15.537143', 'D', 'FM: Medecine UNA', '0', 'G', '48483090', ''),
('8803891012', '37434', 'Mohameden Mohamed Lemine Ahmedou vall', '25/10/2004', 'Elb Adress', '0', '14.55', '15.971429', 'D', 'FM: Medecine UNA', '0', 'G', '46344111', ''),
('3514378968', '37746', 'Salma Sid\'Ahmed Khteira', '07/09/2004', 'Ksar', '0', '13.02', '14.752857', 'D', 'FM: Medecine UNA', '0', 'F', '22491230', ''),
('2614100337', '38038', 'Mohamed Louleid Mignard Bouna Moctar', '02/04/2004', 'Boutilimit', '0', '13.34', '14.747143', 'D', 'FM: Medecine UNA', '0', 'G', '20434372', ''),
('0204315660', '38062', 'Aichetou Elhoussein El Moustapha', '21/10/2002', 'Riyad', '0', '13.46', '14.315714', 'D', 'FM: Medecine UNA', '0', 'F', '47659606', ''),
('4233334044', '38065', 'Aicha Limam Abdel Kader', '30/04/2004', 'Tidjikja', '0', '13.79', '15.81', 'D', 'FM: Medecine UNA', '0', 'F', '46752372', ''),
('0949513213', '38145', 'Mariem Abderrahmane Bah', '30/03/2004', 'Toujounine', '0', '15.78', '17.202857', 'D', 'FM: Medecine UNA', '0', 'F', '26662523', ''),
('8999828393', '38156', 'Vadila Saleh Boushab', '14/12/2002', 'El Mina', '0', '13.07', '14.404286', 'D', 'FM: Medecine UNA', '0', 'F', '20310098', ''),
('5864105125', '38163', 'Al Hassene Yahya Seyidi', '13/09/2004', 'Egharghar', '0', '13.24', '14.268571', 'D', 'FM: Medecine UNA', '0', 'G', '41829300', ''),
('1446981496', '38335', 'Vetatte Mohamed Mohamedou', '02/04/2003', 'Ouad Naga', '0', '14.22', '15.817143', 'D', 'FM: Medecine UNA', '0', 'F', '22008600', ''),
('9520831592', '38337', 'Vatimetou Mohamedou Essouvi', '26/06/2002', 'Ouad Naga', '0', '15.3', '16.811429', 'D', 'FM: Medecine UNA', '0', 'F', '49507855', ''),
('8247755480', '38338', 'Fatimetou Abdallahi El Atigh Bouyezid', '25/03/2003', 'Teyaret', '0', '14.49', '16.285714', 'D', 'FM: Medecine UNA', '0', 'F', '44223106', ''),
('0807702996', '38339', 'Meimouna Mohamed Salem Baby', '09/02/2003', 'Teyaret', '0', '13.52', '14.934286', 'D', 'FM: Medecine UNA', '0', 'F', '33862677', ''),
('9326961475', '38340', 'Marieme Mohamed El Moctar Taghy', '01/09/2003', 'Rosso', '0', '13.68', '14.777143', 'D', 'FM: Medecine UNA', '0', 'F', '27238138', ''),
('4463390981', '38343', 'A?cha Ahmed Eydiya', '05/12/2002', 'Dar Naim', '0', '13.44', '14.598571', 'D', 'FM: Medecine UNA', '0', 'F', '48184918', ''),
('6690397006', '38345', 'Zeinebou Seyid Oumar', '28/03/2003', 'Atar', '0', '13.83', '14.475714', 'D', 'FM: Medecine UNA', '0', 'F', '48262004', ''),
('9276717415', '38346', 'Mint Cheikh Mohamed Jemal', '10/01/2003', 'Ksar', '0', '15.99', '17.355714', 'D', 'FM: Medecine UNA', '0', 'F', '22204758', ''),
('4524963089', '38348', 'Fatimetou Abdellahi Mohamedhen', '29/07/2002', 'Ksar', '0', '13.85', '15.534286', 'D', 'FM: Medecine UNA', '0', 'F', '27004778', ''),
('4981268452', '38349', 'Hafsatou Mohamed Mohamed Salem', '25/05/2003', 'Boutilimit', '0', '15.78', '17.611429', 'D', 'FM: Medecine UNA', '0', 'F', '41814614', ''),
('1025371287', '38350', 'Aicha Mohamed Mohamed Salem', '04/12/2001', 'Tevragh Zeina', '0', '15.44', '16.991429', 'D', 'FM: Medecine UNA', '0', 'F', '42520551', ''),
('5487884708', '38353', 'Maryem Ismail Abd Daim', '18/11/2003', 'Ksar', '0', '14.55', '16.15', 'D', 'FM: Medecine UNA', '0', 'F', '41731838', ''),
('3397631708', '38361', 'Oumel Mouminine Ahmed Amah', '11/10/2003', 'Arafat', '0', '13.81', '14.795714', 'D', 'FM: Medecine UNA', '0', 'F', '37428546', ''),
('1404482110', '38365', 'Imane Mohamedou Ahemdy', '30/11/2003', 'Tintan', '0', '13.58', '14.904286', 'D', 'FM: Medecine UNA', '0', 'F', '46334444', ''),
('6831265838', '38367', 'Zeinebou Yarba Naffaa', '17/12/2002', 'Teyaret', '0', '14.85', '15.122857', 'D', 'FM: Medecine UNA', '0', 'F', '20771270', ''),
('4491957190', '38370', 'Mohamedou  Mouloud Sidi Mohamed Bouddahi', '19/11/2003', 'Teyaret', '0', '14.55', '15.828571', 'D', 'FM: Medecine UNA', '0', 'G', '33336622', ''),
('7803320104', '38371', 'Mohamed Fadel Habiboullah Mamah', '28/12/2003', 'Arafat', '0', '14.07', '14.474286', 'D', 'FM: Medecine UNA', '0', 'G', '22464608', ''),
('8863139000', '38386', 'Oum Kelthoum Isselmou El Abed', '17/07/2003', 'Tevragh Zeina', '0', '16.06', '16.815714', 'D', 'FM: Medecine UNA', '0', 'F', '20907075', ''),
('6095165624', '38390', 'Cheikh Ahmed Meska Ahmed Meska', '13/07/2001', 'Ksar', '0', '15.7', '16.922857', 'D', 'FM: Medecine UNA', '0', 'G', '47000104', ''),
('1175219215', '38397', 'Boubacar Galo Ba', '28/12/2002', 'Tevragh Zeina', '0', '15.83', '16.904286', 'D', 'FM: Medecine UNA', '0', 'G', '46481042', ''),
('5405963164', '38402', 'Baba Cheikh Baye Guekou', '31/08/2003', 'Tevragh Zeina', '0', '13.47', '14.995714', 'D', 'FM: Medecine UNA', '0', 'G', '34665949', ''),
('1163446810', '38410', 'Aichetou Jaavar Hachem', '12/09/2003', 'Teyaret', '0', '13.31', '14.508571', 'D', 'FM: Medecine UNA', '0', 'F', '22337604', ''),
('8146950073', '39118', 'Khadija Mahmoud Taleb Zeidane', '29/11/2003', 'Tevragh Zeina', '0', '12.59', '14.441429', 'D', 'FM: Medecine UNA', '0', 'F', '34912490', ''),
('8031610186', '39120', 'Emmatt El Hassen El Hassen', '01/02/2005', 'Tevragh Zeina', '0', '12.55', '14.364286', 'D', 'FM: Medecine UNA', '0', 'F', '26490094', ''),
('9862727977', '39326', 'Ely Sidi Ahmed Ould Brahim', '28/08/2003', 'Ksar', '0', '13.84', '15.157143', 'D', 'FM: Medecine UNA', '0', 'G', '49293750', ''),
('9791842996', '39328', 'Ahmed Habib Ahmed Waled', '28/02/2003', 'Ksar', '0', '13.13', '14.34', 'D', 'FM: Medecine UNA', '0', 'G', '27454542', '');
INSERT INTO `orientations2021` (`NNI`, `NUM BAC`, `NOM FR`, `DATE NAISS`, `LIEU DE NAISS FR`, `ANNEE BAC`, `MBAC`, `MCLASS`, `SERIE`, `FILIERE`, `SESSION`, `SEXE`, `TEL1`, `TEL2`) VALUES
('5537774233', '39966', 'Mohamed Aly Dahamou Lebchire', '02/02/2002', 'Teyaret', '0', '10.84', '10.334286', 'C', 'FM: Medecine UNA', '0', 'G', '41612962', ''),
('2663088247', '40005', 'Mohamed Oumar Laa Meiniha', '24/09/2002', 'Teyaret', '0', '10.89', '10.52', 'C', 'FM: Medecine UNA', '0', 'G', '26421033', ''),
('6125210307', '40019', 'El Moustapha Ahmedou Ebbabbene', '25/11/2002', 'Toujounine', '0', '12.66', '13.077143', 'C', 'FM: Medecine UNA', '0', 'G', '47090901', ''),
('4136841839', '40859', 'Zeinebou Brahim Ahmed Mahmoud', '12/08/2004', 'Tevragh Zeina', '0', '10.84', '10.941429', 'C', 'FM: Medecine UNA', '0', 'F', '34969615', ''),
('3628771747', '41114', 'Medllah El Hafedh El Maghari', '01/01/2003', 'Teyaret', '0', '13.38', '15.734286', 'D', 'FM: Medecine UNA', '0', 'G', '32684844', ''),
('4745259304', '41131', 'Tourad Mohamed Cheikh Mohamed Vadel', '20/09/2001', 'Nouadhibou', '0', '10.97', '10.317143', 'C', 'FM: Medecine UNA', '0', 'G', '20534117', ''),
('0680297861', '41132', 'Taleb Ahmed Mohamed Ahid Sidi Yahya', '10/09/2002', 'Kiffa', '0', '10.3', '9.935714', 'C', 'FM: Medecine UNA', '0', 'G', '42893932', ''),
('3574692016', '43804', 'Oumelkhairi Mohamed Abdedayem El Iyel', '13/06/2003', 'Arafat', '0', '13.55', '15.884286', 'D', 'FM: Medecine UNA', '0', 'F', '22348190', ''),
('0304782149', '43805', 'Zghailina Mohamedou Hemeidi', '22/07/2004', '?mirats arabes unis', '0', '15.76', '17.61', 'D', 'FM: Medecine UNA', '0', 'F', '49492978', ''),
('3215298092', '43806', 'Intissar Mohamed Sid\'Ahmed Lehbib', '24/08/2003', 'Charigha', '0', '14.4', '16.148571', 'D', 'FM: Medecine UNA', '0', 'F', '49686753', ''),
('0051921870', '43807', 'M\'Ghaily Mohamed Abdellahi Eby El Mealy', '06/05/2003', 'Toujounine', '0', '13.78', '14.932857', 'D', 'FM: Medecine UNA', '0', 'F', '37356604', ''),
('4023315464', '43809', 'Abdellahi Youssouf Amma', '04/11/2002', 'Arafat', '0', '15.09', '16.675714', 'D', 'FM: Medecine UNA', '0', 'G', '36346437', ''),
('2851081134', '43812', 'Sena Abdellahi Sidi El Ahmedy', '30/01/2002', 'Doha', '0', '16.15', '17.63', 'D', 'FM: Medecine UNA', '0', 'F', '46410888', ''),
('9486019165', '43821', 'Khatry Nema Ahmed Zeidane', '29/03/2002', 'Arafat', '0', '13.51', '15.215714', 'D', 'FM: Medecine UNA', '0', 'G', '42863237', ''),
('6509730335', '43826', 'Ezza Sidi Mohamed El Boukhary', '16/04/2001', 'Boutilimit', '0', '15.49', '17.088571', 'D', 'FM: Medecine UNA', '0', 'F', '41339091', ''),
('4572201604', '43827', 'Ely Sid Abatt Yaghoub', '07/07/2005', 'Arafat', '0', '14.64', '15.951429', 'D', 'FM: Medecine UNA', '0', 'G', '22141963', ''),
('9516169578', '43828', 'Amer Abdallahi Abbe', '20/03/2003', 'Arafat', '0', '15.06', '16.652857', 'D', 'FM: Medecine UNA', '0', 'G', '38347777', ''),
('4345122276', '44389', 'Khnatha Lebatt Ebnou', '15/09/2003', 'Tevragh Zeina', '0', '15.25', '16.892857', 'D', 'FM: Medecine UNA', '0', 'F', '41953898', ''),
('4244011222', '45163', 'Oumou El Mouminin Ahmedou Abidine', '30/03/2002', 'Boutilimit', '0', '15.22', '16.837143', 'D', 'FM: Medecine UNA', '0', 'F', '26030713', ''),
('7695194786', '45297', 'Salah Eddine Mohamed Mahmoud Mine', '26/05/2004', 'El Ghaira', '0', '14.73', '17.14', 'D', 'FM: Medecine UNA', '0', 'F', '48217436', ''),
('6402344836', '45326', 'Ramle Mohamed Sid\'El Vadel', '14/10/2001', 'Toujounine', '0', '13.23', '15.518571', 'D', 'FM: Medecine UNA', '0', 'F', '22845590', ''),
('8827973493', '45327', 'Toutou El Moustaphe El Bah', '01/09/2001', 'Kiffa', '0', '15.02', '17.074286', 'D', 'FM: Medecine UNA', '0', 'F', '36083244', ''),
('5091358020', '45443', 'Mohamed Lemine Dehoud Bounah', '08/12/2002', 'Arafat', '0', '12.79', '14.934286', 'D', 'FM: Medecine UNA', '0', 'G', '36322490', ''),
('3237913836', '45505', 'Bouna Yacoub Abeidellah', '27/03/2002', 'Ksar', '0', '13.39', '15.254286', 'D', 'FM: Medecine UNA', '0', 'G', '44484251', ''),
('0463119323', '45627', 'Toutou Mohamed Vall Sidigh', '08/06/2004', 'Toujounine', '0', '14.46', '16.835714', 'D', 'FM: Medecine UNA', '0', 'F', '33525278', ''),
('1910922117', '45632', 'Rabia El  Mehdi Taleb Navea', '23/07/2001', 'Arafat', '0', '13.04', '15.224286', 'D', 'FM: Medecine UNA', '0', 'F', '22083740', ''),
('5479317474', '45633', 'Tahya El  Mehdi Taleb Navea', '23/08/2003', 'Arafat', '0', '13.91', '15.148571', 'D', 'FM: Medecine UNA', '0', 'F', '22083740', ''),
('4201712723', '45643', 'Fatimetou Mohamed Lemine Mahfoudh', '15/03/2004', 'Ould Yeng?;0', '13.8', '15.224286', 'D', 'FM: Medecine UNA', '0', 'F', '20737365', '', NULL),
('7353184911', '45673', 'Enass Issa Habouss', '01/02/2001', 'R\'Kiz', '0', '13.84', '14.762857', 'D', 'FM: Medecine UNA', '0', 'G', '43060607', ''),
('2711119349', '45689', 'Ahmedou Mohamed Mahmoud Ely Mbitaleb', '10/12/2003', 'Nouadhibou', '0', '13.26', '15.594286', 'D', 'FM: Medecine UNA', '0', 'G', '27204439', ''),
('1168574327', '45847', 'Oum Kelthoum Hamdinou Ebbou', '02/05/2004', 'Tintane', '0', '14.95', '16.012857', 'D', 'FM: Medecine UNA', '0', 'F', '48334009', ''),
('9229914236', '45853', 'Abderahmane Ahmed Ebada', '30/12/2003', 'Boutilimit', '0', '14.3', '15.581429', 'D', 'FM: Medecine UNA', '0', 'G', '49464731', ''),
('9363967266', '45854', 'Nessiba Mohamed Lemin El Moustapha', '17/05/2001', 'Arafat', '0', '13.84', '15.227143', 'D', 'FM: Medecine UNA', '0', 'F', '27275961', ''),
('1702899991', '45861', 'Mohamed Moctar Hemed', '02/09/2003', 'Boutilimit', '0', '14.52', '16.271429', 'D', 'FM: Medecine UNA', '0', 'G', '49129924', ''),
('9097508072', '46128', 'Yacoub Mohamed Alweimine', '19/11/2001', 'R\'Kiz', '0', '14.07', '16.045714', 'D', 'FM: Medecine UNA', '0', 'G', '41848453', ''),
('3832679909', '46135', 'Mahjouba Ely Salem Samba Tounsy', '24/05/2001', 'Toujounine', '0', '13.63', '15.465714', 'D', 'FM: Medecine UNA', '0', 'F', '41656756', ''),
('4054035752', '46145', 'Ala Mohamed Mohamed Rara', '26/08/2002', 'Arafat', '0', '15.16', '16.505714', 'D', 'FM: Medecine UNA', '0', 'F', '22296945', ''),
('2294010425', '46153', 'Ahmed Sidi El Alem', '25/09/2003', 'Boutilimit', '0', '13.79', '15.205714', 'D', 'FM: Medecine UNA', '0', 'G', '20497923', ''),
('0435358020', '46163', 'Bent N\'Beigue Mohamed El Housseine', '04/01/2003', 'Rosso', '0', '14.14', '16.29', 'D', 'FM: Medecine UNA', '0', 'F', '47803741', ''),
('3058614186', '46165', 'Oum El Vadeli Baba Bouhoubeiny', '17/05/2003', 'Riyad', '0', '13.38', '15.375714', 'D', 'FM: Medecine UNA', '0', 'F', '46998263', ''),
('0965839089', '46243', 'Mohamed El Moctar Sidatty Sidaty', '23/03/2004', 'Doueirare', '0', '12.43', '14.347143', 'D', 'FM: Medecine UNA', '0', 'G', '37121615', ''),
('9326774653', '46520', 'Elhousseine Adama Ba', '17/11/2002', 'Sebkha', '0', '13.95', '16.118571', 'D', 'FM: Medecine UNA', '0', 'G', '49172508', ''),
('3250840929', '46592', 'Mariem Mamadou Thiam', '22/05/2004', 'Ksar', '0', '13.35', '14.657143', 'D', 'FM: Medecine UNA', '0', 'F', '32791277', ''),
('9207870113', '46803', 'Khadil Mohamed Bouh', '03/02/2003', 'Arafat', '0', '11.77', '14.288571', 'D', 'FM: Medecine UNA', '0', 'G', '49343626', ''),
('1892605316', '47005', 'Mareim Ahmedou El Hacen', '03/07/2005', 'Ksar', '0', '13.57', '15.44', 'D', 'FM: Medecine UNA', '0', 'F', '34318897', ''),
('1260131269', '47024', 'Cheikh Ahmed Sidi Boushayeb', '23/03/2004', 'Arafat', '0', '14.58', '15.832857', 'D', 'FM: Medecine UNA', '0', 'G', '27586345', ''),
('3196329160', '47041', 'Youssef Abdellahi Salem Mohamed Lemine', '01/01/2002', 'Rosso', '0', '14.26', '14.718571', 'D', 'FM: Medecine UNA', '0', 'G', '48909594', ''),
('9168933149', '47173', 'Ahmed Salem Mohamed Mahfoudh Bezeid', '17/06/2001', 'Sebkha', '0', '13.02', '14.738571', 'D', 'FM: Medecine UNA', '0', 'G', '41084889', ''),
('9266243161', '47185', 'Mariem Moctar Sleimane', '24/12/2004', 'Arafat', '0', '14.58', '15.782857', 'D', 'FM: Medecine UNA', '0', 'F', '34452600', ''),
('4820035052', '47412', 'Aichetou Ousmane Thiaw', '05/12/2003', 'Riyad', '0', '12.35', '14.264286', 'D', 'FM: Medecine UNA', '0', 'F', '20397052', ''),
('3546349101', '47583', 'Khadi Cheikh Sid\'Ahmed Sid El Moctar', '08/07/2003', 'Toujounine', '0', '13.42', '15.811429', 'D', 'FM: Medecine UNA', '0', 'F', '22532310', ''),
('6366722750', '47624', 'Abdelkader Ravea Abdel Ghader', '12/03/2001', 'Riyad', '0', '14.59', '16.674286', 'D', 'FM: Medecine UNA', '0', 'G', '44535460', ''),
('7932544086', '47639', 'El Hacen Mendoub Abderrahmane N\'Dery', '30/03/2001', 'Sebkha', '0', '14.59', '16.174286', 'D', 'FM: Medecine UNA', '0', 'G', '41616523', ''),
('5359647022', '47672', 'Sidina Othmane Sid Ahmed Ely', '31/10/2002', 'Arafat', '0', '14.07', '16.37', 'D', 'FM: Medecine UNA', '0', 'G', '41226343', ''),
('3517239207', '47709', 'Oumi Sidi Mohamed Sow', '16/08/2002', 'Arafat', '0', '14.02', '15.291429', 'D', 'FM: Medecine UNA', '0', 'F', '48895905', ''),
('3015519220', '47725', 'Zeinebou Abderahmane Issa', '15/08/2002', 'El Ghaira', '0', '13.47', '14.962857', 'D', 'FM: Medecine UNA', '0', 'F', '43317267', ''),
('1961453103', '47739', 'Messaouda Zeina Mohamed El Bechir El Jili', '03/07/2003', 'Arafat', '0', '13.59', '15.484286', 'D', 'FM: Medecine UNA', '0', 'F', '26616037', ''),
('0529582850', '47742', 'Abdellahi Wedad Mih', '02/07/2003', 'Ksar', '0', '13.34', '14.515714', 'D', 'FM: Medecine UNA', '0', 'G', '43009413', ''),
('9854338641', '47748', 'Salma Mohamed Salem Said', '12/08/2003', 'Dar Naim', '0', '13.48', '15.017143', 'D', 'FM: Medecine UNA', '0', 'F', '49063070', ''),
('7166807268', '47756', 'Toumena Mohamed Vadel Ahmed Beyatt', '14/11/2005', 'Arafat', '0', '15.28', '16.861429', 'D', 'FM: Medecine UNA', '0', 'F', '46555922', ''),
('6621904724', '47776', 'Mariem El Moustapha Babou', '15/09/2002', 'R\'Kiz', '0', '12.84', '14.585714', 'D', 'FM: Medecine UNA', '0', 'F', '47121756', ''),
('0360724086', '47795', 'Mahjouba Mohamed El Moustapha M\'Hamed', '17/04/2002', 'Magtalahjar', '0', '15.15', '17.521429', 'D', 'FM: Medecine UNA', '0', 'F', '46512679', ''),
('5162326809', '47799', 'Fatimetou Saleck Sid\'Ahmed Lehbib', '25/08/2003', 'Dar Naim', '0', '13', '14.785714', 'D', 'FM: Medecine UNA', '0', 'F', '22262218', ''),
('3530092192', '47800', 'Aminetou Baba Abdellahi', '30/12/2002', 'Aioun', '0', '13.81', '14.367143', 'D', 'FM: Medecine UNA', '0', 'F', '36909190', ''),
('8911403387', '47806', 'Mame El Houssein El Mokhtar', '18/10/2002', 'Toujounine', '0', '14.29', '16.204286', 'D', 'FM: Medecine UNA', '0', 'F', '32046532', ''),
('2454568026', '47811', 'Debou Ahmed Bakhaye', '29/08/2001', 'Aioun', '0', '13.76', '14.93', 'D', 'FM: Medecine UNA', '0', 'F', '48146766', ''),
('8117406104', '47813', 'Mariem Aly Khairi', '24/12/2002', 'Dar Naim', '0', '15.34', '16.497143', 'D', 'FM: Medecine UNA', '0', 'F', '46560252', ''),
('3214642081', '47819', 'Tebre Mohamed Mahmoud Ahmed Elemine', '02/02/2002', 'Dar Naim', '0', '13.21', '15.174286', 'D', 'FM: Medecine UNA', '0', 'F', '26060625', ''),
('6874541321', '47832', 'Meynane Ahmed M\'Haimed', '02/09/2002', 'Arafat', '0', '14.79', '16.311429', 'D', 'FM: Medecine UNA', '0', 'F', '32706198', ''),
('3014122711', '47833', 'Salkhe Fah Ahmed Oumar', '11/06/2003', 'Arafat', '0', '14.85', '16.212857', 'D', 'FM: Medecine UNA', '0', 'F', '34110110', ''),
('7414240203', '47837', 'Mohamed Sadatt Sadatt', '08/08/2002', 'Teyaret', '0', '14.04', '16.042857', 'D', 'FM: Medecine UNA', '0', 'G', '47049236', ''),
('1392905645', '47882', 'Mohamed Lemine M\'Rabih Abeidi', '04/05/2004', 'Tevragh Zeina', '0', '13.41', '15.755714', 'D', 'FM: Medecine UNA', '0', 'G', '26603556', ''),
('1479731218', '47915', 'Ahmedou Sidi Mohamed Sidi Mahmoud', '06/06/2001', 'Lavtah', '0', '14.19', '16.098571', 'D', 'FM: Medecine UNA', '0', 'G', '36618225', ''),
('0656848014', '47919', 'Abdellahii Cheikh Meine', '15/07/2002', 'Toujounine', '0', '13.63', '14.804286', 'D', 'FM: Medecine UNA', '0', 'G', '27757538', ''),
('1928193161', '48033', 'Hoyda Mohamed Mahmoud Tatah', '14/12/2004', 'Toujounine', '0', '15.27', '17.181429', 'D', 'FM: Medecine UNA', '0', 'F', '46591339', ''),
('4060026084', '48035', 'Mohamed Abd Rahmane Mohamed Cheikhna', '02/04/2002', 'Timbedra', '0', '14.12', '16.287143', 'D', 'FM: Medecine UNA', '0', 'G', '20929397', ''),
('9442377507', '48043', 'M\'Riam Mohamed Lemine Elbane', '20/06/2003', 'Kiffa', '0', '12.67', '14.667143', 'D', 'FM: Medecine UNA', '0', 'F', '43251522', ''),
('6161666884', '48048', 'Lala Mohamed Abderrahmane', '20/09/2004', 'Tenghadej', '0', '13.4', '15.934286', 'D', 'FM: Medecine UNA', '0', 'F', '41314925', ''),
('2379917505', '48095', 'Mohamed Mewloud Yahya Ahmed Abdellahi', '06/10/2003', 'Magtalahjar', '0', '13.34', '15.442857', 'D', 'FM: Medecine UNA', '0', 'G', '48641074', ''),
('9452293623', '48097', 'Issa El Mouhabess Lebatt', '11/11/2001', 'Magtalahjar', '0', '13.32', '14.902857', 'D', 'FM: Medecine UNA', '0', 'G', '48304531', ''),
('2105899780', '48115', 'Smaou Ebaye Jiyed', '26/12/2004', 'Abu Dhabi', '0', '14.26', '15.592857', 'D', 'FM: Medecine UNA', '0', 'F', '22375852', ''),
('2757716888', '48120', 'Meimouna Cheikhna Abd Daiem', '09/06/2002', 'Tevragh Zeina', '0', '14.23', '15.195714', 'D', 'FM: Medecine UNA', '0', 'F', '36793901', ''),
('2245847985', '48132', 'Jemila Mohamed Mahmoud Tatah', '20/12/2004', 'Toujounine', '0', '13.98', '15.675714', 'D', 'FM: Medecine UNA', '0', 'F', '46591358', ''),
('1159322758', '48134', 'Salah Dine Mohameden Zarghani', '01/02/2001', 'El Mina', '0', '14.53', '15.827143', 'D', 'FM: Medecine UNA', '0', 'G', '49486063', ''),
('7498574622', '48135', 'Mohamed Sidi Mohamed El Maazouz', '01/12/2003', 'Kiffa', '0', '12.68', '14.348571', 'D', 'FM: Medecine UNA', '0', 'G', '31123111', ''),
('9778309168', '48147', 'Khadijetou Yahya Khlive', '01/01/2003', 'Dar Naim', '0', '14.35', '15.657143', 'D', 'FM: Medecine UNA', '0', 'F', '22393848', ''),
('5596836757', '48193', 'Mohameden Abdellahi Ebeyite', '10/12/2003', 'Sebkha', '0', '15.94', '17.261429', 'D', 'FM: Medecine UNA', '0', 'G', '27054350', ''),
('9897671839', '52526', 'Ahmed Cheikh El Khalil Habet', '30/03/2004', 'Arafat', '0', '10.96', '11.155714', 'C', 'FM: Medecine UNA', '0', 'G', '20206840', ''),
('6478690141', '52616', 'Mohamed Saghir Isselkou Mohamed Saghir', '10/10/2002', 'Aioun', '0', '10', '10.464286', 'C', 'FM: Medecine UNA', '0', 'G', '28888181', ''),
('9480280160', '52649', 'Hamet Abou Lam', '01/10/2003', 'El Mina', '0', '10', '9.965714', 'C', 'FM: Medecine UNA', '0', 'G', '44626726', ''),
('0306694504', '52679', 'Mohamed El Kebir Mohamed Abdellahi Temlikh', '14/01/2005', 'Sangrave', '0', '10', '10.02', 'C', 'FM: Medecine UNA', '0', 'G', '41381510', ''),
('9350228865', '52696', 'Mohamed Abderahman Mohamed El Moustapha Abd El Kader', '14/06/2004', 'Soudoud', '0', '12.23', '13.354286', 'C', 'FM: Medecine UNA', '0', 'G', '27296844', ''),
('8755016689', '54524', 'El Khadar Baye El Haje', '16/05/2003', 'Lekseibe', '0', '15.49', '15.502857', 'D', 'FM: Medecine UNA', '0', 'G', '42061539', ''),
('2972635229', '54576', 'Mohamed Mahmoud Abidine', '02/03/2004', 'Magtalahjar', '0', '13.44', '15.045714', 'D', 'FM: Medecine UNA', '0', 'G', '34477228', ''),
('8231475776', '56306', 'Mint Enne Ahmed Amarha', '31/12/2004', 'Arafat', '0', '13.83', '16.297143', 'D', 'FM: Medecine UNA', '0', 'F', '34739872', ''),
('3583941257', '3064', 'Mohamed Dje Sidi', '04/06/2001', 'Aioun', '0', '10', '9.412857', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '31049176', ''),
('7897402441', '6608', 'Ousmane Amadou Deh', '15/04/2001', 'Baydjam', '0', '12.48', '13.461429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '41769089', ''),
('4209405987', '6688', 'Oumar Cheikh Mohamedha', '17/01/2001', 'Kiffa', '0', '11.78', '12.952857', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48557129', ''),
('0897155135', '7037', 'Mohamed Sadvi Heibe', '04/03/2002', 'Kiffa', '0', '12.24', '13.482857', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '43351150', ''),
('2382790160', '7345', 'Ahmedou Mohamed Abou', '02/02/2000', 'Aghorat', '0', '13.63', '13.554286', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '37374757', ''),
('0412337495', '9110', 'Hamady Yehdih Aoumar', '01/08/2001', 'Aoujeft', '0', '10', '10.144286', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48788103', ''),
('5110103852', '14821', 'Moulay Zein Yacoub Rahel', '04/12/2003', 'Teyaret', '0', '12.1', '13.121429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '36403958', ''),
('8935679383', '20127', 'Vatimetou Mohamed Lemine Ennahoui', '10/01/2002', 'Atar', '0', '10', '9.428571', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '31318888', ''),
('7957642836', '21619', 'Mohamed Abdallahi Ahmed Bahah', '15/01/2004', 'Chinguitti', '0', '10.44', '9.741429', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '42809356', ''),
('1717269765', '22007', 'Cheikhna Khatry Zeine Taleb', '30/12/2000', 'Nouadhibou', '0', '12.2', '12.957143', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48436372', ''),
('1271649534', '22364', 'Fatma El Bassett Baba Oumar', '07/08/2003', 'Nouadhibou', '0', '10', '8.448571', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '46633013', ''),
('5293535314', '22978', 'Eslemhem Sidi Cherva', '26/09/2002', 'Guerou', '0', '13.29', '13.42', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '47437402', ''),
('0597692370', '23120', 'Mohamed Sidi Mohamed El Kory', '08/08/2001', 'Nouadhibou', '0', '10.16', '9.665714', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '27127392', ''),
('4529678550', '23205', 'Moktar Sidi Mohamed Ahmed Ghalla', '25/10/2000', 'Atar', '0', '12.39', '13.378571', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48683664', ''),
('8639430810', '26774', 'Mohamed Mohamed Khalil Lehbib', '30/08/2000', 'Zoueirat', '0', '11.95', '13.44', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48771469', ''),
('6045729186', '30098', 'Sara Mohameden Ahmed Hourma', '07/02/2003', 'Dar Naim', '0', '12.41', '13.13', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '41842563', ''),
('7236474511', '30343', 'Aminetou Abdellahi Habibi', '20/04/2003', 'Teyaret', '0', '12.29', '13.255714', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '32202057', ''),
('0782448949', '30344', 'Fatimetou Mohamed Horma Abdel Haye', '26/06/2002', 'Teyaret', '0', '11.72', '13.424286', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '32530220', ''),
('1438155563', '31739', 'Sidi Abde Elkader Moulaye Ahmed Moulaye El Mehdi', '02/02/2001', 'Teyaret', '0', '12.57', '13.19', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '37037082', ''),
('2810307281', '35031', 'Cheikh El Houssein Deih', '01/03/2004', 'Ksar', '0', '12.51', '13.344286', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '31202290', ''),
('3197493160', '35164', 'N\'Dorouha Saleck Jeireb', '27/07/2002', 'Teyaret', '0', '12.59', '13.497143', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '22420391', ''),
('2146787317', '35616', 'Mohamed Mouhi Dine Mohamed Lemine El Kettab', '01/01/2002', 'Aleg', '0', '10', '9.285714', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '33160015', ''),
('6812857372', '36633', 'Mariem Ahmedou Sid\'Ahmed Taleb', '28/03/2003', 'Teyaret', '0', '11.43', '13.188571', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '22512421', ''),
('8773982808', '36795', 'Vatimetou Sid\' Amine Ahmed Challa', '03/11/2004', 'Ksar', '0', '12.89', '13.341429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '48487788', ''),
('9597840862', '37445', 'Mariem Ahmedou Yaghoub Ebnou Oumar', '23/02/2002', 'Abou Dhabi', '0', '12.13', '13.038571', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '20654444', ''),
('0157774963', '38056', 'Esma Ahmed Bedi Ahmed', '24/07/2000', 'Boutilimit', '0', '11.54', '13.005714', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '44443013', ''),
('0683742525', '38404', 'Mohamed Mahmoud El Moustapha Vall', '08/12/2002', 'Ksar', '0', '12.51', '13.251429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '49595884', ''),
('1916341507', '39957', 'Nevissetou Mamadou Djigo', '26/02/2002', 'Tevragh Zeina', '0', '10', '8.321429', 'C', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '37559963', ''),
('8414356181', '45334', 'Hamze El Moustaph A Hade', '06/11/2002', 'Toujounine', '0', '12.19', '13.491429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '38653336', ''),
('2134475883', '45538', 'Mohamed Mahmoud Sidi Mohamed Deidah', '20/01/2000', 'Sangrave', '0', '11.65', '12.968571', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '48750085', ''),
('1192634304', '45916', 'Abderahmane Cheikh Cheikh', '26/01/2001', 'Teyaret', '0', '11.52', '13.002857', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '47575787', ''),
('5830298588', '46016', 'Mohamed El Fadel Mohamed Abdallahi Mohamed El Fadel', '03/04/2003', 'Tiguent', '0', '11.79', '13.095714', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '20652463', ''),
('3933373960', '46142', 'Mariem Zeine Mohamed Lemine', '10/12/2002', 'Aioun', '0', '11.82', '13.047143', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '22279193', ''),
('6122291480', '46156', 'Elhasene Habibou Llahi Ebnou', '15/01/2001', 'Dar Naim', '0', '11.4', '13.235714', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '42142009', ''),
('8671543921', '46840', 'Khadej Mohamed Lemine El Kherchy', '23/11/2002', 'Teyaret', '0', '12.33', '12.941429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '49498427', ''),
('6784830095', '47004', 'Mey Baba Aidah', '23/03/2002', 'Boutilimit', '0', '11.73', '13.39', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '26319773', ''),
('8964511372', '47381', 'Ramata Bassirou Ba', '19/03/2003', 'Riyad', '0', '10.87', '13.195714', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'F', '47152253', ''),
('9101544145', '47406', 'Ndondy Mamadou Pam', '29/04/2003', 'Zoueratt', '0', '10.8', '12.991429', 'D', 'Institut Superieur de la Science de la Mer (ISSM) - NDB', '0', 'G', '46817021', ''),
('7385586015', '3054', 'Mohamed Ahmed Imigine', '27/05/2000', 'El Mina', '0', '10', '10.322857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '46604282', ''),
('5800530355', '3063', 'Mohamed Elemine Brahim Jeddou', '01/02/2000', 'Aioun', '0', '10.13', '10.27', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '46604282', ''),
('3389773350', '6317', 'Raghye Meissara Bilal', '10/08/2001', 'Kiffa', '0', '10.06', '8.1', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '48664723', ''),
('3031432846', '9112', 'Maimouna Abdoulaye Ba', '01/07/2004', 'Ka?di', '0', '10.87', '9.714286', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '49817261', ''),
('8836825713', '9116', 'Bouh Khyar Ehlou Amar Ould Moctar', '01/08/2002', 'Maghama', '0', '10', '9.285714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '26230940', ''),
('3928190862', '9139', 'Zekerya Ethmane Sow', '24/01/2001', 'Monguel', '0', '10', '10.125714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '48922876', ''),
('0264567695', '16030', 'Cheikh Sidiya Ishagh Cheikh Sidiya', '10/05/2000', 'Boutilimit', '0', '10', '9.642857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '34511710', ''),
('5287523060', '20135', 'Mohamed Sid\' Ahmed Abeidna', '03/10/2002', 'Atar', '0', '10', '7.857143', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '37372530', ''),
('1571760841', '21605', 'Sidi Haiba Saad Cheikh Mohamed Vadel', '08/11/2002', 'Nouadhibou', '0', '10', '9.305714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '44903018', ''),
('1650467902', '21620', 'Mohamed Mohamed El Moustapha Leeziz', '15/07/2001', 'Arafat', '0', '10', '9.074286', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '36641705', ''),
('7913735301', '22396', 'Aichetou Alioune Ba', '10/04/2001', 'Nouadhibou', '0', '10.59', '10.568571', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '37605062', ''),
('6244643982', '23124', 'Tembgha El Hacen El Hassen', '10/05/2001', 'Nouadhibou', '0', '10', '9.054286', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '49363258', ''),
('1006664061', '29846', 'Tahiya Ahmed Dhmine', '02/09/2000', 'Dar Naim', '0', '10', '8.928571', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '31476897', ''),
('5187543317', '35573', 'Sidi El Moctar Mohamed Kehka', '23/02/2002', 'Rosso', '0', '10', '9.607143', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '41523324', ''),
('8730704221', '35612', 'Khadijetou Mohameden Mohamed Salem', '05/06/2004', 'Teyaret', '0', '10.04', '9.435714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '20207849', ''),
('7876617572', '35630', 'Ahmed Baba Mohamed Aly El Hacen', '14/11/2003', 'Rosso', '0', '10', '9.072857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '49339860', ''),
('3922729665', '39898', 'Khadijetou Ahmed El Abass', '21/08/2002', 'Ksar', '0', '10', '9.125714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '26080063', ''),
('2995377849', '39899', 'Amina Mohamed Salem Mouhamdy', '14/05/2003', 'El Mina', '0', '10.28', '9.471429', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '664812966', ''),
('0606722973', '39952', 'Ibrahima Mohamed Taha B?;22/12/2002', 'Bogh?;0', '10', '8.59', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '41695348', '', NULL, NULL),
('8584986068', '39954', 'Mamadou Hamady Ba', '06/07/2000', 'Bogh?;0', '10', '9.142857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '43814794', '', NULL),
('5735756859', '40007', 'Cheikh Sid\'Ahmed Zeini Abdel Haye', '28/10/2001', 'Ksar', '0', '10', '8.607143', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '36984652', ''),
('8926692915', '40011', 'Ahmed Sid\'Ahmed Bouh', '04/06/2003', 'Arafat', '0', '10', '8.965714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '22045380', ''),
('7196505467', '40018', 'El Kharachi El Moustapha Cheikh El Moustapha', '27/10/2001', 'Elb Adress', '0', '10.56', '9.258571', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '46820707', ''),
('1368267742', '40862', 'Jedou Mohamed Bebacar Cheikh Mohamed Abdellahi', '31/07/2003', 'N?ma', '0', '10', '7.785714', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '22212764', ''),
('7083262429', '40864', 'Khadijetou Mih Diodie', '06/02/2003', 'El Mina', '0', '10', '8.5', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'F', '46468328', ''),
('4655171912', '52607', 'Eminou Idoumou Haimoudy', '10/02/2002', 'Aioun', '0', '10', '8.697143', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '48529161', ''),
('7474845803', '52609', 'Mohamed Lemine Lemhaba Taleb Imijine', '10/03/2002', 'Magtalahjar', '0', '10', '8.892857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '41880270', ''),
('0007729349', '52621', 'Habib Isselmou Habib', '30/12/2003', 'Aleg', '0', '10', '9.752857', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '31215848', ''),
('0344090526', '52665', 'Mohamed Moussa Camara', '31/12/2001', 'Ghabou', '0', '10.05', '11.328571', 'C', 'Institut Superieur des Metiers de la Statistique(ISMS)	', '0', 'G', '37023594', ''),
('5473245371', '1658', 'Izidbih Sidi Mhamed Ebey', '25/02/2003', 'N?ma', '0', '10', '9.554286', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '33578114', ''),
('7643355755', '7062', 'Sidi El Ghoth Amar', '04/07/2000', 'Kiffa', '0', '12.96', '14.674286', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49155175', ''),
('3093398386', '10208', 'Abou Yaya Sow', '05/02/2001', 'Bark?ol', '0', '12.53', '13.772857', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '222488990', ''),
('1115025865', '10355', 'Aminetou Mohamed Lemine El Wely', '25/11/2002', 'Ka?di', '0', '12.25', '13.84', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '30561087', ''),
('8567417234', '16017', 'Mohamed El Mami Ahmed Mohamed Vadel', '30/12/2000', 'Boutilimit', '0', '10', '10.128571', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49535479', ''),
('9339138855', '17183', 'Selem Cheikh Maham', '21/10/2001', 'Rosso', '0', '12.33', '13.638571', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '20156967', ''),
('1702697261', '18513', 'Sidi Mohamed Mohamed Ebnou', '10/04/2004', 'Boutilimit', '0', '11.71', '13.782857', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '47133147', ''),
('0200132923', '21674', 'Saleck Abderrahmane Taleb Ahmed', '23/03/2002', 'Magtalahjar', '0', '10.26', '9.948571', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '42533650', ''),
('1390916369', '22114', 'Aissata Abderrahmane Dia', '12/03/2002', 'Nouadhibou', '0', '12.63', '13.697143', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '46489823', ''),
('0622681995', '22967', 'Mohamed Hamed Nagi Taleb Abderrahmane', '19/09/2001', 'Teyaret', '0', '10.2', '9.314286', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49100999', ''),
('6103570771', '23167', 'Moctar Mohamed El Vilaly', '22/05/2001', 'Boutilimit', '0', '12.34', '13.691429', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '36524849', ''),
('4367887109', '23413', 'Ousmane Amadou Sall', '26/11/2003', 'Nouadhibou', '0', '10.17', '9.828571', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49432482', ''),
('5210187191', '25696', 'Abderrahmane Saydou Sy', '12/06/2001', 'S?libaby', '0', '12.11', '13.642857', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '47704457', ''),
('8251949178', '26413', 'Ethmane Ahmed Salem Weissat', '29/01/2003', 'Nouadhibou', '0', '10', '9.877143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '30608424', ''),
('3032776393', '26416', 'Cheikh Sidi Mohamed El Khalive Sid\'Amar', '25/09/2000', 'Zoueirat', '0', '10', '9.75', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '20940112', ''),
('6525046150', '26420', 'Abdoul Mamadou Djigo', '15/05/2002', 'Zoueirat', '0', '10', '9.357143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '42173698', ''),
('6564898115', '26422', 'Mamadou Mamoudou Ball', '26/02/2002', 'Zoueirat', '0', '10', '9.892857', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49606771', ''),
('5500097105', '26461', 'Mohamed Mahfoudh Sidi Mohamed Ahmed Val', '15/02/2003', 'Moudjeria', '0', '10.45', '9.725714', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '31725244', ''),
('3298256566', '26471', 'Fatimata Oumar Boye', '14/07/2002', 'Tevragh Zeina', '0', '10', '9.591429', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '48464447', ''),
('7334418224', '27604', 'Fatimetou Zahra Mohamed Salem Cheikh', '28/11/2003', 'Timbedra', '0', '13.03', '13.682857', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '36386149', ''),
('8271305043', '29972', 'Sidi Mohamed Abdellahi Abderrahmane', '04/09/2002', 'Aleg', '0', '12.22', '13.71', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '34323404', ''),
('1077145134', '30244', 'Nouha Ahmed Baha', '18/07/2002', 'Teyaret', '0', '10', '9.25', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '32139332', ''),
('4011356528', '31418', 'Ely Chikh Mohamed Abderahmane Cheikh Mohamed Fadel', '17/01/2002', 'Teyaret', '0', '11.73', '13.624286', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '32212145', ''),
('3618474712', '31678', 'Tarba Javar Habib', '25/05/2003', 'Boutilimit', '0', '12.6', '13.838571', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '22070796', ''),
('4797197760', '32301', 'Ahmed Abdou Amar Ely', '15/04/2003', 'Teyaret', '0', '12.95', '13.635714', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '42200642', ''),
('5593576975', '32363', 'Ahmed Mohamedou Dahi', '07/01/2003', 'Sebkha', '0', '12.78', '13.63', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '48002111', ''),
('5453643126', '34943', 'Ibra Baila Birane Wane', '04/12/2000', 'El Mina', '0', '13.2', '14.297143', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '34410209', ''),
('2164447622', '35178', 'Ebnou Mohamed Yenjah Bany', '13/09/2004', 'Ksar', '0', '10.33', '10.157143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '41340034', ''),
('3167840260', '35605', 'Abd  El Hamid Dah Emih', '16/01/2003', 'Riyad', '0', '10.23', '9.587143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '22118610', ''),
('7565292095', '35613', 'M\'Rayem Sid\'Ahmed Mohamed M\'Bareck', '14/10/2003', 'Teyaret', '0', '10', '10', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '38600005', ''),
('4947366758', '35663', 'Mariem Mohamed Abdellahi Nejib', '06/03/2002', 'Teyaret', '0', '12.81', '14.207143', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '30409710', ''),
('3451066874', '35707', 'Aya Mohamed Saber', '15/06/2003', 'Ksar', '0', '13.11', '14.194286', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '34467977', ''),
('6097141126', '35737', 'Mohamed Mohamed Mahmoud Mohamed Abba', '31/10/2002', 'Ksar', '0', '12.67', '13.631429', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '26307708', ''),
('9375597954', '36796', 'Vraha Ely Taleb', '22/04/2001', 'Nouadhibou', '0', '12.46', '13.764286', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '20761408', ''),
('2774290793', '36815', 'Sidi Abddalla Hamoud El Bechir', '12/08/2002', 'Ksar', '0', '13.7', '13.71', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '46711152', ''),
('3967512431', '37322', 'Ahmedou Mohamed El Mokhtar Mohamed Lemine', '15/05/2001', 'Devaa', '0', '12.63', '13.734286', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '48174317', ''),
('6728730436', '38059', 'Sidi Mostave Mahfouth Che?kh El Mehdy', '10/03/2005', 'Etouil', '0', '12.9', '13.63', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '48046794', ''),
('1626971495', '38148', 'Mohamed Moulay Chrive Ahmed', '24/04/2003', 'Ksar', '0', '12.73', '13.89', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '43281043', ''),
('8805155213', '38398', 'Moulaye Ely El Moustapha Abd Dayim', '17/08/2002', 'Teyaret', '0', '13.02', '13.65', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '33630000', ''),
('4791218195', '39961', 'Mariem Sidi Aly Bechir', '30/05/2004', 'Ksar', '0', '10', '9.34', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '38220022', ''),
('0914594765', '40015', 'Soukeina Mohamed Abdellahi Mnene', '18/02/2003', 'Dar Naim', '0', '11.69', '12.367143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '20638288', ''),
('1183376915', '40860', 'Aminatou Ahmed El-Hadj', '24/02/2003', 'Ksar', '0', '11.96', '11.817143', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '26069121', ''),
('5325291271', '43825', 'Ikhalihali Jeih Mohamed Malaynine', '15/10/2002', 'Arafat', '0', '12.51', '13.985714', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '49867068', ''),
('1084590175', '45506', 'Abdellahi Aboubekren El Hadje', '01/12/2005', 'Riyad', '0', '12.29', '14.148571', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '49125303', ''),
('3701429306', '46554', 'Ibrahima Khalidou Sawan?;12/09/2000', 'Hassi Chegar', '0', '12.42', '13.811429', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '32670857', '', NULL),
('9174445077', '47831', 'Abdallah Mohamed Abdallahi Ahmedheye', '23/08/2003', 'Rosso', '0', '12.56', '13.83', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '43048141', ''),
('2154939391', '48191', 'Ismail Ahmed Bebekar', '28/10/2003', 'Riyad', '0', '13', '13.647143', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '22038164', ''),
('7636143029', '52600', 'Khatou Hemade Emeilid', '04/07/2002', 'Riyad', '0', '10', '10.178571', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'F', '48421879', ''),
('9444028932', '52602', 'Limrabott Sidi Soueilim', '02/04/2001', 'Tintane', '0', '10', '9.625714', 'C', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '41072411', ''),
('5151850518', '53847', 'Mohamed Lemine Cheikh Mohamed El Hafedh Bedidi', '10/01/2002', 'Boutilimit', '0', '12.46', '13.64', 'D', 'Institut Superieur des Metiers de l\'Energie', '0', 'G', '37974961', ''),
('0146615695', '908', 'Lale Fatma Baba El Haj Bal', '07/03/2002', 'N?ma', '0', '12.37', '13.088571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '31526171', ''),
('3603090609', '988', 'Zeyan Salem Naji Taleb', '30/07/2004', 'N?ma', '0', '10', '8.268571', 'TMGM', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '26557664', ''),
('9132978159', '2746', 'Baba El Khayr Boukraa', '04/02/2001', 'Aoueinat Zbel', '0', '11.82', '13.3', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '47059937', ''),
('8563288041', '2887', 'Youba Brahim Vall Ahmed Vall', '01/01/2003', 'Tintane', '0', '12.94', '12.868571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '26074172', ''),
('2126500834', '4005', 'Vatimetou Sid\' Ahmed Ahmed', '26/01/2003', 'Aioun', '0', '12.88', '13.018571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '46949102', ''),
('5250822140', '6687', 'Mohamed Lemine Sadva Ebabek', '30/10/2003', 'Kiffa', '0', '11.45', '12.904286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '42220333', ''),
('1362052370', '7041', 'Lebatt Babah Taleb El Vadel', '01/01/2002', 'S?libaby', '0', '11.64', '12.841429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '22427623', ''),
('7532173773', '7155', 'Abderamane Mehfoudh Beidi', '12/05/2000', 'Bangou', '0', '12.18', '12.974286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49778953', ''),
('5089189488', '9121', 'Ahmedou El Ghadi Semeilla', '10/02/2002', 'Voum Legleite', '0', '10', '8.948571', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41084368', ''),
('0060316444', '10011', 'Mamadou Kalidou Ly', '07/12/2000', 'Bogh?;0', '11.13', '12.768571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41340810', '', NULL),
('1977420952', '11710', 'Mohamed El Bekaye Mohamed', '01/01/2001', 'Aleg', '0', '10', '8.93', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49558417', ''),
('2109645047', '14609', 'Mariem M\'Barka Cheikh Ahmedou Cheikh El Hassene', '30/12/2003', 'R\'Kiz', '0', '13.09', '12.888571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '42422099', ''),
('1190760070', '14852', 'Chiekh El Hacen Maouloud', '09/08/2000', 'Ksar', '0', '11.67', '12.847143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '42092054', ''),
('9397212852', '16854', 'El Moctar Ahmedou Hamidoune', '11/08/2000', 'Mederdra', '0', '12.1', '13.371429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '31763956', ''),
('0711452224', '18510', 'Mariem Mohamed Ebnou', '20/11/2002', 'Boutilimit', '0', '12.16', '12.918571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '47133147', ''),
('8074171846', '20206', 'Ahmed Mohamed Aly El Varough', '07/01/2003', 'Riyad', '0', '11.51', '13.074286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '34378708', ''),
('4577681813', '21671', 'Mohamed El Boukhary Mohamed Salem Youssouf', '25/11/2002', 'Nouadhibou', '0', '10.28', '9.861429', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41352000', ''),
('3159190673', '21871', 'Brahim Saleck El Hadj Moctar', '09/11/2001', 'Tawaz', '0', '12.6', '12.961429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49619639', ''),
('6366204382', '22031', 'El Moctar Cheikh Ahmed El Vilalli', '02/02/2002', 'Aleg', '0', '11.47', '12.694286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '47729669', ''),
('1205579924', '22047', 'Cheikh Ahmed El Mane Sidi Mahmoud', '31/12/2000', 'Nouadhibou', '0', '12.83', '13.261429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '44013768', ''),
('6146570580', '22973', 'Limam  Mohamed Mohamed Mahmoud Limam', '21/06/2002', 'Nouadhibou', '0', '12.3', '12.847143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '34365969', ''),
('5956993101', '22975', 'Mohamed Aboubacar Sedigh Soueidi', '01/01/2004', 'Homs', '0', '12.49', '13.071429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46402693', ''),
('5515986772', '22976', 'Feyti Mohamed Mahmoud Filaly', '12/07/2004', 'Ksar', '0', '12.87', '12.945714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '38788868', ''),
('9966267038', '26192', 'Yero Demba Ba', '12/05/2000', 'Ould M\'Bonny', '0', '12.45', '13.69', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48106875', ''),
('4003883066', '26515', 'Fatema Mohamed Abdallahi Lahah', '20/04/2001', 'Zoueirat', '0', '12.04', '12.72', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '49489593', ''),
('4697352750', '26772', 'Oumelmeaaly El Moctar El Kherchi', '27/08/2002', 'Teyaret', '0', '11.65', '13.235714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '46999014', ''),
('8109121237', '28986', 'El Houcein Mohamed El Mokhtar Imam Saf', '31/01/2000', 'Arafat', '0', '11.97', '13.174286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '30556640', ''),
('8638554027', '29925', 'Zeinebou Sid El Moctar Lehbib', '24/12/2003', 'Akjoujt', '0', '10.88', '12.662857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20968648', ''),
('2925379836', '29966', 'Vatma El Ghalia Isselmou Ethmane', '15/12/2002', 'Amourj', '0', '11.84', '13.138571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '31303341', ''),
('4329456194', '29981', 'Ahmed Mohamed El  Hafedh Levdhal', '01/01/2004', 'Teyaret', '0', '12.71', '13.192857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46797171', ''),
('6751880456', '30079', 'Brahim Ahmed Salem El Malha', '14/10/2002', 'Dar Naim', '0', '11.55', '13.257143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46990655', ''),
('6739409457', '30105', 'Abdellahi Cheikh Khairy', '27/10/2000', 'R\'Kiz', '0', '11.32', '12.688571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '47328558', ''),
('0220136360', '30342', 'Zeinebou Moulaye Ahmed El Boukhary', '18/01/2004', 'Ksar', '0', '11.73', '13.104286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '34173090', ''),
('6714869427', '30370', 'Oum El Khairy Mahfoudh Mahfoudh', '08/04/2001', 'Teyaret', '0', '12.21', '12.708571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '27121066', ''),
('1870787882', '30417', 'Nema Die Abdy', '16/11/2002', 'Teyaret', '0', '11.76', '13.395714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '30434397', ''),
('3935785671', '30483', 'Benahi Mema Meinat', '20/06/2003', 'Aleg', '0', '12.64', '13.198571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '32535321', ''),
('3017315078', '31017', 'Hendou Mohamed Boukheir', '03/09/2002', 'Zoueirat', '0', '11.43', '12.92', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '22750302', ''),
('8515485665', '31065', 'Mariem Khantar Khentar', '26/06/2003', 'Toujounine', '0', '12.04', '12.668571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20144052', ''),
('3045161159', '31068', 'Ahmed Mohamedou Khyar', '24/05/2002', 'Toujounine', '0', '13.15', '13.092857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48200078', ''),
('2210395746', '31446', 'Lemat Elkhaliva Oumar', '10/01/2000', 'Ouad Naga', '0', '11.49', '12.677143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '33127939', ''),
('0400248773', '31682', 'Oum El Kheiry Mohamed Mahmoud Mahmoud', '05/08/2002', 'Guerou', '0', '12.71', '13.192857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '26484851', ''),
('8014099164', '31833', 'Soulymen Mohamed Abdallahi Abeid El Barcka', '12/09/2000', 'Dar Naim', '0', '12.47', '13.46', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '38318893', ''),
('0998326620', '31891', 'Saade Javar Boubacar', '03/08/2003', 'Moudjeria', '0', '11.82', '13.045714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '41777740', ''),
('7307306045', '32255', 'Mohamed Eide Abdel Kader', '25/10/2002', 'Tintan', '0', '12.53', '13.112857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '38061043', ''),
('3183812280', '32304', 'Aicha Momme El Zeiza', '01/12/2002', 'Arafat', '0', '11.78', '12.844286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20304406', ''),
('6387883785', '32377', 'Mohamed El Mehdi Sidi Mohamed Ahmed El Hadj', '31/12/2002', 'Arafat', '0', '12.59', '12.888571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '26688097', ''),
('5045331617', '32416', 'Cherifa Mohamed Yeslem Beillahi', '07/01/2004', 'Ksar', '0', '12.05', '12.954286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '48929300', ''),
('0959755055', '32425', 'Sidi Mohamed Mohamed Lemine Mohamed M\'Barek', '29/07/2001', 'R\'Kiz', '0', '11.19', '12.705714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '42390954', ''),
('7356500177', '34787', 'Mohamed Habiboullah Mohamed Beibe Agherabett', '01/04/2000', 'Aleg', '0', '11.96', '13.262857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '37666544', ''),
('5815797379', '34969', 'Sidi Mouhmd Cheikh Isselmou', '10/08/2005', 'Tevragh Zeina', '0', '13.17', '13.131429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '22083346', ''),
('5714161846', '35022', 'Ahmed Mohamed Dahane', '15/11/2002', 'Tevragh Zeina', '0', '11.75', '12.878571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '31140710', ''),
('1176972781', '35095', 'Aichetou El-Hadj Taleb El Mehdy', '31/12/2000', 'Arafat', '0', '11.36', '13.017143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '36909493', ''),
('9081856637', '35166', 'Zahra Mohamed Lemine Cheikh El Moustaphe', '15/07/2000', 'Dar Naim', '0', '12.22', '12.801429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '32404093', ''),
('3434655153', '35562', 'Cheikh Sid\'Taher Mekhala Ahmed Babou', '07/01/2000', 'Aioun', '0', '10', '10.018571', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '34352034', '');
INSERT INTO `orientations2021` (`NNI`, `NUM BAC`, `NOM FR`, `DATE NAISS`, `LIEU DE NAISS FR`, `ANNEE BAC`, `MBAC`, `MCLASS`, `SERIE`, `FILIERE`, `SESSION`, `SEXE`, `TEL1`, `TEL2`) VALUES
('0376350010', '35650', 'Mohamed Abdellahi Ahmedou Elidi', '30/05/2004', 'Boutilimit', '0', '11.84', '12.781429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '30435126', ''),
('2250609715', '35736', 'Mohamed Abdellahi Mohamedou Bamba Edhmine', '26/01/2003', 'Ksar', '0', '12.5', '13.377143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '38390009', ''),
('7682877047', '35849', 'Aya Haimouda M\'Beirick', '02/08/2002', 'Tevragh Zeina', '0', '11.6', '12.782857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '26273747', ''),
('0387321680', '35877', 'Chrif Sidi Mohamed El Beinane', '15/04/2005', 'Atar', '0', '12.05', '12.721429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48263880', ''),
('1376108543', '36112', 'Roghaya Yahya Deide', '01/09/2003', 'Aioun', '0', '11.72', '12.852857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '41700541', ''),
('2984406373', '36625', 'Zeinebou Mohamed El Bagher Mohamed Babou', '03/03/2003', 'El Mina', '0', '12.16', '12.772857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '48447117', ''),
('3227052940', '36837', 'Ahmed Abdel Ouedoud Hemine', '08/01/2003', 'Boutilimit', '0', '11.43', '13.205714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '33450074', ''),
('0505059795', '36869', 'Zeinebou Taher Ely Mahmoud', '14/07/2003', 'Aleg', '0', '12.89', '12.81', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '33755284', ''),
('8855333604', '36913', 'Nesiba Ahmed Salem El Boukhary', '29/11/2004', 'Teyaret', '0', '11.39', '13.272857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '22289383', ''),
('7507600860', '36975', 'Abdelahie Edoua Ahmed Djeguene', '08/02/2002', 'Arafat', '0', '11.61', '13.874286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '32434358', ''),
('7521978200', '37053', 'Abdel Wedoud Mohamed Lemine Lafdal', '24/04/2004', 'Teyaret', '0', '11.35', '13.264286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '22321764', ''),
('2464129801', '37156', 'Sidi Mohamed Mohamed El Mehdy Ahmed El Haj', '25/06/2002', 'Tamcheket', '0', '11.31', '12.687143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41207050', ''),
('1816873730', '37258', 'Mariem El Ghoth Kouneine', '10/02/2004', 'Arafat', '0', '10.93', '12.811429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '33917121', ''),
('7721434838', '37325', 'Ahmedou El Hacen Ahmedou', '30/12/2000', 'Ouad Naga', '0', '12.95', '12.798571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49521285', ''),
('1816065720', '37421', 'Mohamedi Mohamedhen Vall Ahmedou Vall', '18/04/2002', 'Arafat', '0', '12.15', '12.985714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46344111', ''),
('9109107429', '37432', 'Isshagh El Moktar El Bechir', '11/07/2001', 'Tevragh Zeina', '0', '10.75', '12.771429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '31255885', ''),
('3526274563', '37778', 'Tijani Mohamed Didi Abdel Jelil', '16/11/2004', 'Riyad', '0', '11.94', '12.85', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49299339', ''),
('5453048516', '37779', 'Mohamed Mohamed El Moctar El Hassen', '17/10/2002', 'Toujounine', '0', '12.19', '12.67', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '44783434', ''),
('4129260222', '38182', 'Kor Papa Amghar Jiddou', '10/09/2000', 'Tevragh Zeina', '0', '11.02', '13.11', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '47956505', ''),
('3353717189', '38372', 'Mohamed El Moustapha Mahi Cheikh Abdallahi', '22/02/2003', 'Tevragh Zeina', '0', '13.11', '13.267143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '42129906', ''),
('8789803120', '39162', 'Mounak Saed Bouh Abba', '07/06/2002', 'Atar', '0', '12.07', '13.048571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41972864', ''),
('1883340555', '40012', 'Mohamedou Abdallahi Mamah', '07/12/2003', 'Rosso', '0', '11.12', '9.838571', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48465308', ''),
('6192041464', '40870', 'Fatou Mamadou Konate', '04/11/2001', 'Sebkha', '0', '10.58', '9.942857', 'TMGM', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '27098883', ''),
('0176981836', '42994', 'Gnouma Cheikhna Diagana', '31/07/2001', 'Sebkha', '0', '10.73', '12.747143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '46417422', ''),
('7697157969', '43175', 'Aboubecrine Abderrahmane Ahmed Sid M\'Hamed', '01/05/2001', 'Arafat', '0', '10.81', '12.778571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41233693', ''),
('3491963141', '44361', 'Souleimane Mamadou Wad', '03/03/2001', 'M\'Balal', '0', '12.52', '12.735714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '43525085', ''),
('2408595458', '45237', 'Nahah Boumedyene Mohamed El Abd', '23/01/2000', 'El Mina', '0', '11.35', '13.23', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '34756015', ''),
('4609539620', '45510', 'Sid\'Elemine Elghadi Chemad', '14/02/2003', 'Tevragh Zeina', '0', '11.66', '12.934286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '26352182', ''),
('2095840201', '45631', 'Dehmane Sidi Mohamed Taleb Issa', '11/10/2003', 'Guerou', '0', '12.36', '13.358571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '36301698', ''),
('6741264679', '45668', 'Roughaye Mohamed Vall Abd El Wahab', '25/11/2001', 'Aioun', '0', '11.18', '12.707143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20683914', ''),
('3886443517', '45718', 'Mouna El Moktar M\'Haimid', '03/03/2002', 'Tiguent', '0', '12.23', '12.747143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20648444', ''),
('2959764590', '45860', 'Meimouna Mohamed Vall Vilaly', '25/10/2003', 'Cheggar', '0', '11.81', '12.972857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '20663666', ''),
('5110919525', '46023', 'Fatimetou Ahmed Abdou', '25/02/2002', 'Dar Naim', '0', '11.67', '12.935714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '46963070', ''),
('2898606866', '46433', 'Hamahoullah Baba Gnouma Diakit? Kaba', '30/06/2002', 'Ksar', '0', '10.81', '12.744286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '37735391', ''),
('8796878494', '46504', 'Cheikh El Khairy Ousmane Ba', '07/05/2002', 'Ka?di', '0', '11.09', '12.762857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '22212211', ''),
('4384446367', '46539', 'Haby Ousmane Sall', '06/06/2002', 'Niabina', '0', '11', '12.785714', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '47623088', ''),
('4206280938', '47207', 'Ousmane Mohamed Ball', '20/07/2002', 'Riyad', '0', '12.49', '13.534286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48168149', ''),
('5505995481', '47281', 'Doudou Zekeria Dieye', '26/10/2000', 'Riyad', '0', '11.94', '12.85', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '48064616', ''),
('3601636676', '47409', 'Daouda Baba N\'Gaid?;18/03/2000', 'Bogh?;0', '11.39', '12.717143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49213644', '', NULL, NULL),
('4301733303', '47458', 'Adama Khalidou B?;02/11/2001', 'Bogh?;0', '11.63', '12.732857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '44634101', '', NULL, NULL),
('7786345686', '47712', 'El Moctar Sid\' Ahmed Choueikh', '12/08/2002', 'Timbedra', '0', '11.44', '12.691429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46004659', ''),
('7956877409', '47726', 'Savie Nabgha Mohamed Moussa', '30/08/2002', 'Toujounine', '0', '11.5', '13.2', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '22377181', ''),
('7882545242', '47728', 'Mohamed Amar Mohamed Sidi Ely', '26/08/2000', 'Teyaret', '0', '11.45', '13.207143', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '49039948', ''),
('4727991849', '47734', 'Mohamed Ali Mohamed Nema', '20/12/2005', 'El Ariye', '0', '13.2', '13.6', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '38166537', ''),
('9465806305', '47773', 'Ahmedou Youba Moulaye Ahmed', '01/10/2002', 'Riyad', '0', '11.32', '13.188571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '41258568', ''),
('1054256335', '47781', 'Abdellehi Yahya Dedde', '29/11/2002', 'Toujounine', '0', '12.61', '13.622857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '22442135', ''),
('3953588081', '47791', 'Ahmed Yacine Mohamed Salem Babe', '14/04/2004', 'Ksar', '0', '11.14', '13.414286', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '38113737', ''),
('0981671914', '47803', 'Meije Sidi Mohamed Hamady', '01/01/2000', 'Teyaret', '0', '11.89', '13.218571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '22424416', ''),
('5072250863', '47847', 'Sid\'Ahmed Mohameden Beibatt', '07/09/2003', 'Mederdra', '0', '11.22', '12.8', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46725322', ''),
('9821502977', '47995', 'Emgheily Baye Fall', '09/12/2004', 'Tevragh Zeina', '0', '12.06', '12.938571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '38151627', ''),
('0216518163', '48238', 'Hamoud Mohamed Salem Mohamed Mahmoud', '24/10/2002', 'El Mina', '0', '12.93', '13.168571', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '33642563', ''),
('3995897444', '52595', 'Zein El Abedine Hamdi Obeide', '10/05/2000', 'Toujounine', '0', '10', '9.892857', 'C', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'G', '46495919', ''),
('5970055218', '53671', 'Aicha Mohamed Fadhel Abeid Rahmane', '01/01/2002', 'Teyaret', '0', '11.16', '12.791429', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '48610608', ''),
('2719590650', '53854', 'Oume Kelthoume Salem M\'Bareck', '25/05/2002', 'Boutilimit', '0', '11.99', '13.392857', 'D', 'Institut Superieur des Metiers du Batiment, des Travaux Publics et  et d\'Urbanisme d\'Aleg)', '0', 'F', '46908379', ''),
('0820073406', '827', 'Oumou Mohamed Ba', '18/06/2001', 'Basseknou', '0', '10.78', '13.454286', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '22667149', ''),
('8851498515', '6304', 'Mariem El Moustapha Dahi', '30/12/2002', 'Kiffa', '0', '10', '7.822857', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '36646336', ''),
('3491956739', '10364', 'Khaled Gleiguem Ahmed Mahmoud', '12/12/2003', 'Ksar', '0', '12.3', '13.507143', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '38380979', ''),
('4445735526', '16016', 'El Vaghih Ahmed Zeine', '03/08/2001', 'Rosso', '0', '10', '10.305714', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '33398413', ''),
('1674128918', '16337', 'Mariem Sid\' Ahmed El Houmoud', '10/11/2003', 'Boutilimit', '0', '11.88', '13.554286', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '49283458', ''),
('0882013629', '17462', 'Abdoulaye Hamath Ba', '25/03/2002', 'Babab?;0', '10', '9.841429', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '34326830', '', NULL),
('4019994281', '20246', 'Aminetou Ahmed Lekhoueima', '30/12/2000', 'Atar', '0', '12.4', '13.825714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '41216087', ''),
('4869593225', '21634', 'Mohamed Ahmed Mahmoud Sidi Ahmed', '01/04/2002', 'Teyaret', '0', '10', '9.161429', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '22840260', ''),
('3298939446', '21664', 'Mohamed El Moustpha Isselmou Mohamedou', '27/10/2002', 'Soudoud', '0', '10', '8.125714', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '41335373', ''),
('6767961310', '22137', 'Siniya Cheikh Melainine Sidi Heiba', '22/12/2002', 'Nouadhibou', '0', '12.58', '13.495714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '26021790', ''),
('9242273491', '22183', 'Meimouna Enah Erebih', '15/08/2001', 'Tevragh Zeina', '0', '11.75', '13.555714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '49400985', ''),
('6663576215', '22596', 'Cheikh Ahmed Mohamed Mohamed Ahmed', '20/03/2001', 'El Ghaira', '0', '11.29', '13.562857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '41514861', ''),
('1412269464', '22834', 'Ahmed Ahmed Boubeit', '30/08/2003', 'Nouadhibou', '0', '11.94', '13.545714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '47575650', ''),
('1983556978', '23119', 'Fatimetou Mohamed Mahmoud Ahmed Ely', '29/12/2000', 'Nouadhibou', '0', '10.66', '10.22', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '42030728', ''),
('7832828959', '23125', 'Khadijetou Ahmed Salem Baya', '25/12/2000', 'Chinguitti', '0', '10.09', '9.39', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '36880893', ''),
('3841031221', '23126', 'Mohamed Youssef Bilal Abdelbarka', '25/04/2000', 'Nouadhibou', '0', '10', '9.45', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '33386645', ''),
('6412931222', '24630', 'Ahmed Sidina Sejad', '24/09/2003', 'Tevragh Zeina', '0', '10', '9.162857', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '49876877', ''),
('4916052539', '26412', 'Mohamed Mahmoud Cheikh Hmemed', '30/12/2003', 'Moudjeria', '0', '10', '9.43', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '43110212', ''),
('3992129091', '27605', 'Sidi Ahmed Ebeidi', '10/12/2001', 'Toujounine', '0', '12.34', '13.641429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '49407915', ''),
('5805322058', '29948', 'Zeinebou Mohamed El Ghellawi', '08/06/2002', 'Aghchourguit', '0', '12.27', '13.431429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '36418788', ''),
('7411260557', '29993', 'El Jeilany Mohamed Abdellahi Bodih', '10/12/2002', 'Teyaret', '0', '12.26', '13.502857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '38127012', ''),
('9300331192', '30595', 'Mohamed Abderrahmane Habiboullah Nanne', '31/01/2003', 'Atar', '0', '10', '8.198571', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '32038816', ''),
('7985090538', '30702', 'Sidi El Valy Souleymane Sid\'Elemine', '18/08/2001', 'Rosso', '0', '12.39', '13.7', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '34444847', ''),
('3970259762', '31687', 'Mariem Sidi Afou', '30/12/2000', 'Toujounine', '0', '12.3', '13.472857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '42421139', ''),
('2599446159', '32054', 'Oum Elvadhli Ahmed Bouya Cheikh', '24/10/2000', 'Sebkha', '0', '12.39', '13.592857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '41354345', ''),
('7475484548', '32302', 'Varh El Khalil Ahmed Horma', '31/12/2003', 'Rosso', '0', '12.37', '13.661429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '22420089', ''),
('6822759520', '32335', 'Bouchra El Moctar Ahmed Ramdhane', '02/08/2003', 'Teyaret', '0', '13.22', '13.61', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '22008100', ''),
('7269351206', '32412', 'Khadijetou Ahmed Abdel Ghader', '13/12/2002', 'Tevragh Zeina', '0', '12.18', '13.545714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '44735554', ''),
('5955290557', '35123', 'Ahlam Mohamed Abdel Kader', '29/12/2002', 'Tevragh Zeina', '0', '13', '13.931429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '38006489', ''),
('0725949941', '35148', 'Lalla Mohamed Abderrahmane Ebety', '15/01/2004', 'Boutilimit', '0', '12.17', '13.418571', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '34362246', ''),
('3697884247', '35172', 'Mohamed Salem Sidi Mohamed Abbad', '21/04/2002', 'Arafat', '0', '11.03', '10.291429', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '34162134', ''),
('8340785367', '35177', 'Aichetou Mohamed Lemine Abdellah', '21/05/2003', 'Teyaret', '0', '10.56', '10.044286', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '48882203', ''),
('4369845830', '35581', 'Rakiea Abd Rahman Dhah', '03/03/2003', 'Toujounine', '0', '10.58', '9.708571', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '22314731', ''),
('4547345257', '35615', 'Bedra Abdellahi Deddy', '16/01/2004', 'Ksar', '0', '10', '8.341429', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '27380979', ''),
('5907477608', '36784', 'Tekeiber Mohameden Bah', '24/09/2002', 'Tevragh Zeina', '0', '13.34', '13.621429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '44314219', ''),
('7417756065', '36794', 'Zeinebou Mohamed Salem Lebchir', '19/02/2002', 'Ksar', '0', '13.46', '13.584286', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '27539392', ''),
('0503832066', '36885', 'Moussa Moud Emhamed', '27/11/2006', 'Tevragh Zeina', '0', '11.96', '13.587143', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '22009284', ''),
('0691889361', '37092', 'Cheikh El Gouth Aba', '20/06/2001', 'Arafat', '0', '12.41', '13.487143', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '22327520', ''),
('9243246886', '37170', 'Mohamed Mahmoud Mohamed El Moustapha Abd El Kader', '14/06/2001', 'M\'Bagne', '0', '11.94', '13.42', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '20274703', ''),
('4822252569', '38352', 'Soumeya Mohamed Mahmoud Ebi El Maaly', '20/10/2002', 'Toujounine', '0', '12.61', '13.43', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '36680000', ''),
('6473565825', '39892', 'Taleb Salek Bahan', '23/06/2002', 'Doueirare', '0', '10.43', '9.775714', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '22055855', ''),
('5549292595', '39900', 'Aicha Ahmedou Fadel', '17/01/2003', 'Ksar', '0', '10.16', '8.415714', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '20781433', ''),
('6635130480', '43813', 'El Houssein Lemrabott Nah', '18/08/2002', 'Dar Naim', '0', '12.88', '13.485714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '41102511', ''),
('7972426218', '44873', 'Touba Abdellahi Yarahallah', '03/03/2003', 'Arafat', '0', '12.31', '13.598571', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '27002300', ''),
('3356648238', '44907', 'Mohamed Ahmed Yaba', '01/02/2000', 'Boutilimit', '0', '12.43', '13.562857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '48838600', ''),
('1963538603', '44920', 'Mohamed El Houssein Ejelal', '03/08/2000', 'N\'Beike', '0', '11.89', '13.627143', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '49252653', ''),
('1379639537', '45053', 'Mohamed Lemine Baba Taleb Ahmed', '04/07/2001', 'Dewha', '0', '12.77', '13.54', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '48240054', ''),
('5496631392', '45060', 'Khadigetou Brahim Mohamed Mewloud', '06/07/2001', 'Guerou', '0', '12.28', '14.004286', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '42179225', ''),
('7809807658', '45849', 'Esmaou Ahmedou Vall', '03/09/2001', 'Arafat', '0', '12.83', '14.031429', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '44535660', ''),
('1072994116', '45905', 'Mohamedhen Vall Mohamed Yahya Khaled', '05/04/2005', 'Arafat', '0', '11.98', '13.568571', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '44527669', ''),
('7491607791', '47718', 'Ahmed Salem El Mokhtar Mohamed Lemine', '12/04/2003', 'Toujounine', '0', '12.73', '13.428571', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '47211274', ''),
('9753272304', '47759', 'Cheikh Elhdrami Begnoug Begnoug', '07/02/2002', 'Teyaret', '0', '12.93', '13.455714', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '37791290', ''),
('6127714071', '47805', 'Fatimetou Baba El Alem', '28/09/2002', 'Arafat', '0', '11.28', '13.612857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '49687172', ''),
('4163434680', '47869', 'Fatimetou Mohamed Ahmed Dah', '03/02/2004', 'Arafat', '0', '11.99', '13.748571', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '27394054', ''),
('8197201990', '47912', 'Mouhamed Said Sidi Rabany', '05/02/2002', 'Boutilimit', '0', '12.73', '13.497143', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '48797630', ''),
('1236082835', '48054', 'Aicha Ahmedou Moussa', '28/10/2001', 'Rosso', '0', '11.93', '13.49', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'F', '49542416', ''),
('9374184955', '48111', 'Taher Ahmedou Sellahi', '24/04/2005', 'Riyad', '0', '12.45', '13.492857', 'D', 'Institut Superieur des Metiers du Numerique', '0', 'G', '48678267', ''),
('6245348978', '52589', 'El Moukhtar Mohamed D\'Meiss', '25/12/2001', 'Arafat', '0', '10', '9.107143', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '42054990', ''),
('5307323767', '52637', 'Mohamed Vall Yahya Mohameden Vall', '02/01/2004', 'Mederdra', '0', '10', '9.018571', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '42422642', ''),
('7847393994', '52673', 'Rougha Mohamed Lemine Amar Salem', '12/01/2003', 'Aleg', '0', '10', '9.214286', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'F', '36800281', ''),
('4867389870', '52678', 'Sidi Abdoullah Abd Rahman Mehdi', '15/10/2001', 'Kiffa', '0', '10', '9.142857', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '49591416', ''),
('5740493563', '52685', 'Mohamed Mohamed Vall Ahmedou', '15/11/2004', 'El Mina', '0', '10', '8.142857', 'C', 'Institut Superieur des Metiers du Numerique', '0', 'G', '31370935', ''),
('6184123160', '9109', 'Mohamed Lemine Ahemd Salem Weissatt', '30/11/2003', 'Atar', '0', '10', '9.377143', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '43199485', ''),
('3129834205', '9114', 'Hawa Mamadou Dia', '10/01/2002', 'Ka?di', '0', '10.3', '9.935714', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '34851298', ''),
('7547458160', '9117', 'Oumar Amadou Sall', '15/08/2000', 'Babab?;0', '10', '9', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41658570', '', NULL),
('3421332203', '13693', 'Ahmed Mahmoud Yahya El Vill', '21/06/2003', 'Aleg', '0', '11.39', '12.934286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '22135292', ''),
('9406953301', '18718', 'Abdarrahmane El Housseine Vih El Barka', '30/12/2003', 'Aleg', '0', '10', '9.038571', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48070922', ''),
('1661161570', '20105', 'Sidi Ely Kneita', '10/01/2002', 'Atar', '0', '10.34', '9.211429', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41457201', ''),
('3710173080', '20137', 'Mohamed Sidi Ahmed Soueid Ahmed', '19/04/2003', 'Atar', '0', '10.31', '9.207143', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41356747', ''),
('6860477873', '21569', 'Mouna Alioune Abdel Hamid', '23/12/2000', 'Nouadhibou', '0', '12.72', '15.194286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '36575555', ''),
('9768367347', '22123', 'Aminatoullah Mohamed Mahmoud Boba', '08/11/2002', 'Male', '0', '11.51', '13.144286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41070156', ''),
('4890322901', '22353', 'Moukhtar Yesleck El Ghadhy', '02/11/2001', 'Atar', '0', '10', '8.822857', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41154042', ''),
('1108506786', '23132', 'Mohamed Mahmoud Dede Chamra', '17/07/2002', 'Egharghar', '0', '10', '8.857143', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '46464626', ''),
('9124658566', '23260', 'Aliyene Abdel Baghi N\'Tahah', '20/05/2002', 'Zoueratt', '0', '10.97', '11.515714', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41498409', ''),
('0563935691', '26410', 'Teslem Hamdi Boukheir', '21/03/2002', 'Zoueirat', '0', '11.59', '11.852857', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '47788016', ''),
('5219458354', '26423', 'Sidi El Hadj Ngaid?;02/09/2002', 'Zoueirat', '0', '10', '8.841429', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48412756', '', NULL),
('9785428095', '26429', 'Aliou Aboubakry Watt', '09/09/2000', 'Babab?;0', '10', '9.377143', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48198234', '', NULL),
('4001506178', '26443', 'Mohamed Lemin Djibril Farra Moundi Kon?;19/03/2002', 'Zoueirat', '0', '10', '10.321429', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41131255', '', NULL),
('1656052095', '26454', 'Lemrabott Mohamed Mahmoud Greibiz', '17/05/2002', 'Atar', '0', '10', '10.054286', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '42071393', ''),
('1302903710', '26539', 'Sidi Mohamed Mohamed Salem Ely', '15/05/2003', 'Zoueratt', '0', '11.5', '12.894286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '47441886', ''),
('6679894040', '30302', 'Fatimetou Mohamed Beheit', '25/03/2004', 'Ksar', '0', '11.05', '12.828571', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '41033135', ''),
('2511174025', '30597', 'Saleck S\'Hake Agueih', '02/09/2002', 'Bougadoum', '0', '10', '9.554286', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '27075921', ''),
('1902034783', '31019', 'Abdellahi Souleymane Bouna Mokhtar', '22/11/2002', 'Ksar', '0', '12.45', '13.262857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48473595', ''),
('3381121920', '31427', 'Sami Sid\' Ahmed Lekbar', '11/01/2003', 'Atar', '0', '12.57', '13.011429', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '49155107', ''),
('5120580337', '31889', 'Mariem Izid Bih El Khaliva', '02/05/2003', 'Dar Naim', '0', '11.74', '12.821429', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '49331348', ''),
('9578802866', '35160', 'Mariem Taleb Lemrabott', '12/01/2004', 'Tevragh Zeina', '0', '13.01', '13.322857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '36030523', ''),
('6156005091', '35544', 'Ahmed Salem Mohamed Fadhel El Karar Yacoubi', '02/01/2001', 'Toujounine', '0', '11.73', '12.961429', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '42388939', ''),
('1069367286', '35619', 'Hayda Abdel Kader Aghrabatt', '15/04/2001', 'Rosso', '0', '10', '8.642857', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41813568', ''),
('3106807763', '37175', 'Nessiba Jemal Elkharchy', '01/01/2004', 'Ouad Naga', '0', '12.07', '13.03', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '?26448911?', ''),
('4680058232', '38091', 'Mohamedi Mohamed El Havedh Maawiya', '30/03/2003', 'Dar Naim', '0', '12.05', '13.382857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '42376406', ''),
('5851273965', '38129', 'Mohamed Brahim Hamed', '23/12/2001', 'Tevragh Zeina', '0', '12.06', '12.867143', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '36308051', ''),
('8290801364', '38344', 'Sarra Mohamed Vall Daha', '05/02/2004', 'Ksar', '0', '12.47', '13.372857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '46404640', ''),
('7410679527', '38388', 'Djibril Jemal Dieng', '04/04/2003', 'El Mina', '0', '12.41', '12.987143', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48404907', ''),
('0649668656', '38409', 'Ahmed Mohamed Rajel', '01/05/2001', 'Tevragh Zeina', '0', '11.7', '13.314286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '33663377', ''),
('4230302115', '38984', 'Ghlana El Housseine Mohamed Habib', '08/09/2002', 'Toujounine', '0', '12.37', '13.302857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '22310259', ''),
('7942109935', '39129', 'Mohamed El Moctar El Bar Ely Telmoudy', '14/05/2004', 'Tevragh Zeina', '0', '11.28', '13.202857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '42273170', ''),
('5157398045', '40815', 'Mohamed Ahmed Jedou Abdellahi', '08/11/2001', 'Arafat', '0', '10.15', '10.432857', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '49169336', ''),
('4678988419', '40905', 'Cheikh Ahmed El Mamoune', '26/06/2003', 'Teyaret', '0', '10', '9.285714', 'TMGM', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48802485', ''),
('7611461282', '40912', 'Lala Moctar Mohameda', '21/11/2005', 'Keur Mac?ne', '0', '10', '9.948571', 'TMGM', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '22416516', ''),
('7632179803', '44902', 'Ahmedou Mohamed Abderrahmane Ebnou', '17/03/2003', 'Arafat', '0', '12.16', '13.328571', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '37602010', ''),
('0989213470', '45507', 'Mohamed El Hacen Mohamed Bih', '22/05/2002', 'Boutilimit', '0', '11.9', '13.2', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '43242360', ''),
('8302003118', '45670', 'Bellahi Mohamed Tawiya', '01/01/2004', 'N\'Beike', '0', '13.03', '13.308571', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '44624055', ''),
('1654310945', '46134', 'Kadijetuo Mohameden Moctar Ellahi', '28/03/2004', 'Riyad', '0', '11.56', '12.992857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '22290447', ''),
('8528664667', '46239', 'Sid\'Ahmed Mohamed Abd Elvetah', '29/12/2002', 'Arafat', '0', '11.89', '12.914286', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '34263435', ''),
('5868934076', '46426', 'Mohamedou Assane Gaye', '07/04/2002', 'Keur Mac?ne', '0', '11.79', '13.795714', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '42083601', ''),
('7927195021', '47468', 'Sarra Brahim M\'Beyareck', '19/02/2002', 'Riyad', '0', '12.08', '13.065714', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '42131116', ''),
('3964140420', '47552', 'Moustapha Sileymane Anne', '01/10/2001', 'Nouadhibou', '0', '11.71', '12.958571', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '47228355', ''),
('1753915589', '47735', 'El Hacen Mohamed Abdellahi Deidi', '02/07/2002', 'Ouad Naga', '0', '12.13', '12.982857', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '47779706', ''),
('3620196268', '47822', 'Lemane Cheikh Ahmed T\'Lamid', '27/03/2002', 'Arafat', '0', '12.39', '13.698571', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'F', '44490078', ''),
('1287784126', '48101', 'Ahmed Beder Mohamed Salem Hadramy', '19/12/2002', 'El Ariye', '0', '12.34', '13.425714', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41080607', ''),
('8783171327', '52531', 'El Moustapha Mohamed Fedel Taleb Nahou', '30/07/2001', 'Arafat', '0', '10', '9.091429', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '44200400', ''),
('2819631503', '52658', 'Moussa Alhouceyny Wade', '26/03/2003', 'Sebkha', '0', '10', '9.804286', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '41657067', ''),
('3924681984', '52687', 'Lemane Sideba Sideba', '25/11/2003', 'Aioun', '0', '10.01', '9.287143', 'C', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '31285060', ''),
('2888386170', '54582', 'Limam Mohamedou Lenaye', '20/06/2004', 'Aleg', '0', '12.21', '12.82', 'D', 'Institut Superieur des Metiers de la Mine (IS2M)- ZTE', '0', 'G', '48497882', '');

-- --------------------------------------------------------

--
-- Structure de la table `resultat`
--

CREATE TABLE `resultat` (
  `matricule` int(11) DEFAULT NULL,
  `oriantation` varchar(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
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
('', '', 'CPGE'),
('', '[value-2]', 'UNA');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `matricule` int(10) NOT NULL,
  `code` varchar(10) DEFAULT NULL,
  `filiere` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`matricule`, `code`, `filiere`) VALUES
(21011, '0101', 'C'),
(45053, '0101', 'D');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `capfiliere`
--
ALTER TABLE `capfiliere`
  ADD PRIMARY KEY (`anne`,`filiere`,`id_serie`);

--
-- Index pour la table `choix`
--
ALTER TABLE `choix`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `filiere_c`
--
ALTER TABLE `filiere_c`
  ADD PRIMARY KEY (`FILIERE`);

--
-- Index pour la table `filiere_d`
--
ALTER TABLE `filiere_d`
  ADD PRIMARY KEY (`Nom`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`matricue`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`matricule`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
