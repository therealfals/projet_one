DROP TABLE IF EXISTS blacklist_interimaire;

CREATE TABLE `blacklist_interimaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_piece` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_piece` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




