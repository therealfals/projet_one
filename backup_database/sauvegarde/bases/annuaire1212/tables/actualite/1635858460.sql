DROP TABLE IF EXISTS actualite;

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actu_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `politique_confidentialite` tinyint(1) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_demande_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `ville_id` int(11) DEFAULT NULL,
  `arrondissement_id` int(11) DEFAULT NULL,
  `commune_id` int(11) DEFAULT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  `date_demande` datetime DEFAULT NULL,
  `numero_demande` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fonction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agent_structure` tinyint(1) DEFAULT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_bat_rue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




