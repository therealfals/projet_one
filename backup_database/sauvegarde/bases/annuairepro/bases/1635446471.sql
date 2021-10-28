DROP TABLE IF EXISTS actualite;

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actu_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS actualite_bis;

CREATE TABLE `actualite_bis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actualite_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actu_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6B5BFA11A2843073` (`actualite_id`),
  CONSTRAINT `FK_6B5BFA11A2843073` FOREIGN KEY (`actualite_id`) REFERENCES `actualite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS agence;

CREATE TABLE `agence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entreprise_id` int(11) DEFAULT NULL,
  `localite_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19AA9A4AEAFEA` (`entreprise_id`),
  KEY `IDX_64C19AA9924DD2B5` (`localite_id`),
  CONSTRAINT `FK_64C19AA9924DD2B5` FOREIGN KEY (`localite_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_64C19AA9A4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS assistants;

CREATE TABLE `assistants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS contact;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `politique_confidentialite` tinyint(1) DEFAULT '0',
  `type_demande_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `departement_id` int(11) DEFAULT NULL,
  `arrondissement_id` int(11) DEFAULT NULL,
  `commune_id` int(11) DEFAULT NULL,
  `date_demande` datetime DEFAULT NULL,
  `numero_demande` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C62E6389DEA883D` (`type_demande_id`),
  KEY `IDX_4C62E63898260155` (`region_id`),
  KEY `IDX_4C62E638CCF9E01E` (`departement_id`),
  KEY `IDX_4C62E638407DBC11` (`arrondissement_id`),
  KEY `IDX_4C62E638131A4F72` (`commune_id`),
  CONSTRAINT `FK_4C62E638131A4F72` FOREIGN KEY (`commune_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E638407DBC11` FOREIGN KEY (`arrondissement_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E63898260155` FOREIGN KEY (`region_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_4C62E6389DEA883D` FOREIGN KEY (`type_demande_id`) REFERENCES `type_demande` (`id`),
  CONSTRAINT `FK_4C62E638CCF9E01E` FOREIGN KEY (`departement_id`) REFERENCES `localite` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contact VALUES("1","fall","babs","","","","mail_sendervhj","babsfg","babsr","0","","","","","","","",""),
("2","fall","babs","","","","baba@gmail.com","babsfg","babsr","0","","","","","","","","");



DROP TABLE IF EXISTS domaine;

CREATE TABLE `domaine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS entreprise;

CREATE TABLE `entreprise` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `localite_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boite_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D19FA60924DD2B5` (`localite_id`),
  CONSTRAINT `FK_D19FA60924DD2B5` FOREIGN KEY (`localite_id`) REFERENCES `localite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS entreprise_bis;

CREATE TABLE `entreprise_bis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entreprise_id` int(11) DEFAULT NULL,
  `localite_id` int(11) NOT NULL,
  `domaine_id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixe2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boite_postal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quartier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E28EFB6EA4AEAFEA` (`entreprise_id`),
  KEY `IDX_E28EFB6E924DD2B5` (`localite_id`),
  KEY `IDX_E28EFB6E4272FC9F` (`domaine_id`),
  CONSTRAINT `FK_E28EFB6E4272FC9F` FOREIGN KEY (`domaine_id`) REFERENCES `domaine` (`id`),
  CONSTRAINT `FK_E28EFB6E924DD2B5` FOREIGN KEY (`localite_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_E28EFB6EA4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS entreprise_domaine;

CREATE TABLE `entreprise_domaine` (
  `entreprise_id` int(11) NOT NULL,
  `domaine_id` int(11) NOT NULL,
  PRIMARY KEY (`entreprise_id`,`domaine_id`),
  KEY `IDX_C04BB97FA4AEAFEA` (`entreprise_id`),
  KEY `IDX_C04BB97F4272FC9F` (`domaine_id`),
  CONSTRAINT `FK_C04BB97F4272FC9F` FOREIGN KEY (`domaine_id`) REFERENCES `domaine` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_C04BB97FA4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS entreprise_horaires;

CREATE TABLE `entreprise_horaires` (
  `entreprise_id` int(11) NOT NULL,
  `horaires_id` int(11) NOT NULL,
  PRIMARY KEY (`entreprise_id`,`horaires_id`),
  KEY `IDX_6B67170AA4AEAFEA` (`entreprise_id`),
  KEY `IDX_6B67170A8AF49C8B` (`horaires_id`),
  CONSTRAINT `FK_6B67170A8AF49C8B` FOREIGN KEY (`horaires_id`) REFERENCES `horaires` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_6B67170AA4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS horaires;

CREATE TABLE `horaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heure_ouverture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_fermeture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jour` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS liste_indicatifs;

CREATE TABLE `liste_indicatifs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `indicatifs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS localite;

CREATE TABLE `localite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_localite_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5D7E4A9D9540524` (`type_localite_id`),
  KEY `IDX_F5D7E4A9727ACA70` (`parent_id`),
  CONSTRAINT `FK_F5D7E4A9727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `localite` (`id`),
  CONSTRAINT `FK_F5D7E4A9D9540524` FOREIGN KEY (`type_localite_id`) REFERENCES `type_localite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migration_versions;

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS parc_fixe;

CREATE TABLE `parc_fixe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entreprise_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C64AADEBA4AEAFEA` (`entreprise_id`),
  CONSTRAINT `FK_C64AADEBA4AEAFEA` FOREIGN KEY (`entreprise_id`) REFERENCES `entreprise` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS publicite;

CREATE TABLE `publicite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS publicite_bis;

CREATE TABLE `publicite_bis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publicite_id` int(11) DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1EEFD94C7C04F1B1` (`publicite_id`),
  CONSTRAINT `FK_1EEFD94C7C04F1B1` FOREIGN KEY (`publicite_id`) REFERENCES `publicite` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS type_demande;

CREATE TABLE `type_demande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS type_localite;

CREATE TABLE `type_localite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




