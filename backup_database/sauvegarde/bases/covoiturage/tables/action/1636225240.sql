DROP TABLE IF EXISTS action;

CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




