-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 déc. 2023 à 19:46
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionpresencedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(30) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `adresse_mac` varchar(100) DEFAULT NULL,
  `isPresent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `Prenom`, `email`, `adresse_mac`, `isPresent`) VALUES
(1, 'Boumaidoum', 'Halima', 'Boumaidoum.Halima@gmail.com', '57:3c:0e:78:87:3b\r\n', 0),
(2, 'FQUIHI', 'Aya', 'FQUIHI.aya@gmail.com', '43:8e:61:3e:55:8b\r\n', 0),
(3, 'RAHHO', 'Houssam', 'RAHHO.Houssam@gmail.com', '07:6c:b3:79:ce:32\r\n', 0),
(50, 'LEMSOUDI', 'Ayoub', 'LEMSOUDI.Ayoub@gmail.com', 'fe:01:51:0a:79:4d', 1),
(51, 'test', 'TEST', 'TEST@gmail.com', '02:00:00:00:00:00', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
