DROP TABLE IF EXISTS ayant_droit;

CREATE TABLE `ayant_droit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_mandataire` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




