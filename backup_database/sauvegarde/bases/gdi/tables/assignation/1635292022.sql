DROP TABLE IF EXISTS assignation;

CREATE TABLE `assignation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `profil_id` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D2A03CE0A76ED395` (`user_id`),
  KEY `IDX_D2A03CE0275ED078` (`profil_id`),
  CONSTRAINT `FK_D2A03CE0275ED078` FOREIGN KEY (`profil_id`) REFERENCES `profil` (`id`),
  CONSTRAINT `FK_D2A03CE0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




