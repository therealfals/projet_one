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




