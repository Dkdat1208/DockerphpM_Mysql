-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 01 novembre 2020 à 21:40
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `landingpage`
--

-- --------------------------------------------------------

--
-- Structure de la table `ref_utilisateur`
--

CREATE TABLE `ref_utilisateur` (
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Passwords` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ref_utilisateur`
--

INSERT INTO `ref_utilisateur` (`FirstName`, `LastName`, `Email`, `Passwords`) VALUES
('deogracia', 'patrick', 'deogracia@yahoo.fr', '$2y$10$j41fCVfJW6BcXJmTf0KtLe.73aX1I1mitGKf22.Qjjg'),
('lucas', 'st37', 'lucas@st.fr', '$2y$10$.zmLY9NiqBjp8G/LsE0gUuSfEoIwD/5tPYrHQAiyGie'),
('test', 'test', 'test@gmail.com', '$2y$10$l74q0HthoR.jdoEKN2Zw7OA4l2dHyi5Z7bhyw.1/v1w'),
('sdfghj', 'sdfg', 'tt@yahoo.fr', '$2y$10$dQmTqeRpqshtVkotXz4mfOVV5pR1Z7XRUwqPzW68ysO');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ref_utilisateur`
--
ALTER TABLE `ref_utilisateur`
  ADD PRIMARY KEY (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
