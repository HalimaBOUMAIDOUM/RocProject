-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 14 déc. 2023 à 19:47
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
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `IDCours` int(11) NOT NULL,
  `NomCours` varchar(50) DEFAULT NULL,
  `IdProfesseur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`IDCours`, `NomCours`, `IdProfesseur`) VALUES
(1, 'Mathématiques', 1),
(2, 'Physique', 2),
(3, 'Chimie', 3);

-- --------------------------------------------------------

--
-- Structure de la table `devices`
--

CREATE TABLE `devices` (
  `mac_address` varchar(100) NOT NULL,
  `IsPresent` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `devices`
--

INSERT INTO `devices` (`mac_address`, `IsPresent`) VALUES
('0:00:00:00:00', 1),
('48:c0:80:0e:50:d1', 1),
('21:50:fa:06:b5:2b', 1),
('3f:f6:43:8c:c2:b1', 1),
('0e:30:64:f6:27:bb', 1),
('0c:2a:ac:24:b3:42', 1),
('3a:c9:38:9b:dd:df', 1),
('5a:c5:38:65:b8:33', 1),
('d8:15:ff:f8:47:0b', 1),
('7b:f9:79:47:cb:ef', 1),
('5b:ec:69:eb:4e:00', 1),
('50:65:83:99:99:1f', 1),
('02:fc:b5:ae:a3:b2', 1),
('57:3c:0e:78:87:3b', 1),
('09:26:be:00:01:84', 1),
('e4:ee:64:b6:8c:73', 1),
('18:22:98:f5:54:16', 1),
('64:6a:93:5d:5c:ae', 1),
('43:8e:61:3e:55:8b', 1),
('05:0a:f5:5a:b3:68', 1),
('df:c6:3d:b6:76:08', 1),
('da:e7:18:24:ab:af', 1),
('65:dd:7f:8c:db:62', 1),
('00:30:13:82:0a:44', 1),
('07:6c:b3:79:ce:32', 1),
('34:03:42:d2:b1:da', 1),
('fb:1b:d8:57:44:e6', 1),
('17:f4:66:98:a4:3b', 1),
('21:47:e6:06:4a:1b', 1),
('33:9a:f7:44:e7:02', 1),
('38:4e:de:a9:35:7a', 1),
('41:5f:e2:fd:73:e1', 1),
('37:fd:a5:b8:46:df', 1),
('e2:49:04:2a:9c:5b', 1),
('d8:fd:5e:99:10:5a', 1),
('47:26:c8:66:ac:f6', 1),
('66:8b:b7:1d:be:0c', 1),
('cf:21:23:56:35:50', 1),
('c9:33:d2:44:b4:14', 1),
('4e:53:12:7d:3e:d8', 1),
('51:01:07:cb:f9:31', 1),
('de:e1:3c:68:2d:7c', 1),
('db:b9:cf:1e:a4:28', 1),
('f8:69:5c:ca:cb:84', 1),
('da:0d:e2:75:c7:5d', 1),
('d5:94:00:7e:e7:24', 1),
('50:78:7e:f0:48:e6', 1),
('c3:e0:4c:35:a8:9b', 1),
('d0:9a:ed:81:ca:42', 1),
('14:6b:2b:c8:8f:ff', 1),
('7a:c3:b6:3f:e1:0c', 1),
('6c:75:6c:d3:28:76', 1),
('43:12:a8:9c:fc:8e', 1),
('fb:3a:89:31:86:6d', 1),
('00:7b:94:1e:56:09', 1),
('fe:01:51:0a:79:4d', 1),
('1b:d5:a9:05:c3:c7', 1),
('61:40:d3:44:4f:e2', 1),
('15:a7:51:07:3b:5d', 1),
('4b:02:ed:4c:83:45', 1),
('02:00:00:00:00:00', 0),
('02:00:00:00:00:00', 1),
('31:eb:96:7f:00:e0', 1),
('67:d1:4e:cf:a2:11', 1),
('e7:94:d5:6a:25:f3', 1),
('8a:84:2d:bd:8d:ed', 1),
('69:0f:f5:04:ee:5d', 1),
('da:3e:f5:77:0f:4a', 1),
('3a:f7:9f:ee:0c:25', 1),
('e8:2d:0e:38:d9:dc', 1),
('31:d5:0f:88:fa:b0', 1),
('e3:b3:13:57:a6:7f', 1),
('67:d1:4e:cf:a2:11', 1),
('e7:94:d5:6a:25:f3', 1),
('3a:f7:9f:ee:0c:25', 1),
('e8:2d:0e:38:d9:dc', 1),
('8a:84:2d:bd:8d:ed', 1),
('da:3e:f5:77:0f:4a', 1),
('31:eb:96:7f:00:e0', 1),
('69:0f:f5:04:ee:5d', 1),
('e3:b3:13:57:a6:7f', 1),
('31:d5:0f:88:fa:b0', 1),
('28:e3:3b:14:a6:10', 1),
('3b:7b:d0:8a:f2:b3', 1),
('08:91:18:56:2c:6b', 1),
('8a:84:2d:bd:8d:ed', 1),
('e7:94:d5:6a:25:f3', 1),
('da:3e:f5:77:0f:4a', 1),
('2c:ca:5f:4a:db:8b', 1),
('e8:ee:cc:56:22:16', 1),
('3b:7b:d0:8a:f2:b3', 1),
('68:84:c9:cb:81:3e', 1),
('69:0f:f5:04:ee:5d', 1),
('54:3a:e0:4e:03:5c', 1),
('0d:b5:c3:81:c8:7f', 1),
('dd:58:3f:8b:d8:e5', 1),
('4a:10:2e:54:be:ed', 1),
('f1:22:c8:bf:db:b7', 1),
('dc:3c:c1:12:e2:f1', 1),
('68:c9:2f:e7:ee:1c', 1),
('5f:5c:dd:63:77:26', 1),
('59:be:64:f3:9d:98', 1),
('6a:14:ee:6a:aa:c1', 1),
('30:7f:1a:09:cf:29', 1),
('f5:cb:37:9c:67:ec', 1),
('e0:49:f4:11:1b:eb', 1),
('28:e3:3b:14:a6:10', 1),
('40:bc:0e:26:1a:b4', 1),
('5c:a0:e0:9f:9f:bb', 1),
('50:0d:97:73:f4:55', 1),
('ed:17:6a:c8:ca:81', 1),
('d5:ef:be:c1:fd:01', 1),
('49:48:e2:dc:4b:8e', 1),
('e0:ef:68:7b:cf:66', 1),
('7e:70:e5:b0:36:86', 1);

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

-- --------------------------------------------------------

--
-- Structure de la table `presence`
--

CREATE TABLE `presence` (
  `PresenceID` int(11) NOT NULL,
  `EtudiantID` int(11) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `DateHeure` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `presence`
--

INSERT INTO `presence` (`PresenceID`, `EtudiantID`, `SessionID`, `DateHeure`) VALUES
(1, 1, 1, '2023-12-14 12:00:00'),
(2, 2, 2, '2023-12-14 12:10:00'),
(3, 3, 3, '2023-12-14 15:20:00'),
(4, 50, 3, '2023-12-13 15:49:49');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `IDEnseignant` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `iscordinateur` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`IDEnseignant`, `nom`, `prenom`, `iscordinateur`) VALUES
(1, 'Dupont', 'Jean', 0),
(2, 'Martin', 'Alice', 1),
(3, 'Bernard', 'Claude', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sessioncours`
--

CREATE TABLE `sessioncours` (
  `SessionID` int(11) NOT NULL,
  `IDCours` int(11) DEFAULT NULL,
  `salle` varchar(50) DEFAULT NULL,
  `horaire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sessioncours`
--

INSERT INTO `sessioncours` (`SessionID`, `IDCours`, `salle`, `horaire`) VALUES
(1, 1, 'A101', '0000-00-00 00:00:00'),
(2, 2, 'B202', '0000-00-00 00:00:00'),
(3, 3, 'C303', '0000-00-00 00:00:00');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`IDCours`),
  ADD KEY `IdProfesseur` (`IdProfesseur`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `presence`
--
ALTER TABLE `presence`
  ADD PRIMARY KEY (`PresenceID`),
  ADD KEY `EtudiantID` (`EtudiantID`),
  ADD KEY `SessionID` (`SessionID`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`IDEnseignant`);

--
-- Index pour la table `sessioncours`
--
ALTER TABLE `sessioncours`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `IDCours` (`IDCours`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `IDCours` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `presence`
--
ALTER TABLE `presence`
  MODIFY `PresenceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `IDEnseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sessioncours`
--
ALTER TABLE `sessioncours`
  MODIFY `SessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`IdProfesseur`) REFERENCES `professeur` (`IDEnseignant`);

--
-- Contraintes pour la table `presence`
--
ALTER TABLE `presence`
  ADD CONSTRAINT `presence_ibfk_1` FOREIGN KEY (`EtudiantID`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `presence_ibfk_2` FOREIGN KEY (`SessionID`) REFERENCES `sessioncours` (`SessionID`);

--
-- Contraintes pour la table `sessioncours`
--
ALTER TABLE `sessioncours`
  ADD CONSTRAINT `sessioncours_ibfk_1` FOREIGN KEY (`IDCours`) REFERENCES `cours` (`IDCours`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
