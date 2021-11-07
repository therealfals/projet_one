DROP TABLE IF EXISTS annonce;

CREATE TABLE `annonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `depart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `heure` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `places` int(11) DEFAULT NULL,
  `places_restantes` int(11) DEFAULT NULL,
  `lieu_depart` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voiture_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F65593E5FB88E14F` (`utilisateur_id`),
  KEY `IDX_F65593E5181A8BA` (`voiture_id`),
  CONSTRAINT `FK_F65593E5181A8BA` FOREIGN KEY (`voiture_id`) REFERENCES `voiture` (`id`),
  CONSTRAINT `FK_F65593E5FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




