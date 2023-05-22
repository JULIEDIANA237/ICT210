-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 20 mai 2023 à 08:04
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `syndicats`
--

-- --------------------------------------------------------

--
-- Structure de la table `adhesion`
--

CREATE TABLE `adhesion` (
  `id_adhesion` int(10) NOT NULL,
  `id_enseignant` int(10) NOT NULL,
  `id_syndicat` int(10) NOT NULL,
  `date_adhesion` date NOT NULL,
  `date_expiration` date NOT NULL,
  `cotisation` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `election`
--

CREATE TABLE `election` (
  `id_election` int(10) NOT NULL,
  `id_syndicat` int(10) NOT NULL,
  `date` date NOT NULL,
  `resultat` text NOT NULL,
  `id_candidat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `enseignants`
--

CREATE TABLE `enseignants` (
  `id_enseignant` int(10) NOT NULL,
  `nom_enseignant` varchar(256) NOT NULL,
  `prenom_enseignant` varchar(256) NOT NULL,
  `adresse` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `departement` varchar(256) NOT NULL,
  `matiere` varchar(256) NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

CREATE TABLE `participant` (
  `id_participant` int(10) NOT NULL,
  `id_enseignant` int(10) NOT NULL,
  `id_reunion` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

CREATE TABLE `reunion` (
  `id_reunion` int(10) NOT NULL,
  `id_syndicat` int(10) NOT NULL,
  `date` date NOT NULL,
  `lieu` varchar(256) NOT NULL,
  `ordre_du_jour` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `syndicat`
--

CREATE TABLE `syndicat` (
  `id_syndicat` int(10) NOT NULL,
  `nom_syndicat` varchar(256) NOT NULL,
  `adresse` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `telephone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD PRIMARY KEY (`id_adhesion`),
  ADD KEY `id_enseignant` (`id_enseignant`),
  ADD KEY `id_syndicat` (`id_syndicat`);

--
-- Index pour la table `election`
--
ALTER TABLE `election`
  ADD PRIMARY KEY (`id_election`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`id_participant`),
  ADD KEY `id_enseignant` (`id_enseignant`),
  ADD KEY `id_reunion` (`id_reunion`);

--
-- Index pour la table `reunion`
--
ALTER TABLE `reunion`
  ADD PRIMARY KEY (`id_reunion`),
  ADD KEY `id_syndicat` (`id_syndicat`);

--
-- Index pour la table `syndicat`
--
ALTER TABLE `syndicat`
  ADD PRIMARY KEY (`id_syndicat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `adhesion`
--
ALTER TABLE `adhesion`
  MODIFY `id_adhesion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `election`
--
ALTER TABLE `election`
  MODIFY `id_election` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id_enseignant` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `participant`
--
ALTER TABLE `participant`
  MODIFY `id_participant` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reunion`
--
ALTER TABLE `reunion`
  MODIFY `id_reunion` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `syndicat`
--
ALTER TABLE `syndicat`
  MODIFY `id_syndicat` int(10) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `adhesion`
--
ALTER TABLE `adhesion`
  ADD CONSTRAINT `adhesion_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignants` (`id_enseignant`),
  ADD CONSTRAINT `adhesion_ibfk_2` FOREIGN KEY (`id_syndicat`) REFERENCES `syndicat` (`id_syndicat`);

--
-- Contraintes pour la table `election`
--
ALTER TABLE `election`
  ADD CONSTRAINT `election_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `enseignants` (`id_enseignant`);

--
-- Contraintes pour la table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignants` (`id_enseignant`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`id_reunion`) REFERENCES `reunion` (`id_reunion`);

--
-- Contraintes pour la table `reunion`
--
ALTER TABLE `reunion`
  ADD CONSTRAINT `reunion_ibfk_1` FOREIGN KEY (`id_syndicat`) REFERENCES `syndicat` (`id_syndicat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
