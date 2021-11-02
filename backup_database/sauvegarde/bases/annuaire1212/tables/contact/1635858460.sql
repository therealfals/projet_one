DROP TABLE IF EXISTS contact;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `politique_confidentialite` tinyint(1) DEFAULT '0',
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
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_demande` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fonction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agent_structure` tinyint(1) DEFAULT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_bat_rue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actu_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C62E6389DEA883D` (`type_demande_id`),
  KEY `IDX_4C62E63898260155` (`region_id`),
  KEY `IDX_4C62E638A73F0036` (`ville_id`),
  KEY `IDX_4C62E638407DBC11` (`arrondissement_id`),
  KEY `IDX_4C62E638131A4F72` (`commune_id`),
  CONSTRAINT `FK_4C62E638131A4F72` FOREIGN KEY (`commune_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E638407DBC11` FOREIGN KEY (`arrondissement_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E63898260155` FOREIGN KEY (`region_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E6389DEA883D` FOREIGN KEY (`type_demande_id`) REFERENCES `type_demande` (`id`),
  CONSTRAINT `FK_4C62E638A73F0036` FOREIGN KEY (`ville_id`) REFERENCES `localite` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




