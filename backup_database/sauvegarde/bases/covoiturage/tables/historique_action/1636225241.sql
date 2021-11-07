DROP TABLE IF EXISTS historique_action;

CREATE TABLE `historique_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `actionneur_id` int(11) DEFAULT NULL,
  `date_action` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8E8E2CCEA76ED395` (`user_id`),
  KEY `IDX_8E8E2CCE9D32F035` (`action_id`),
  KEY `IDX_8E8E2CCE4CDBBB4D` (`actionneur_id`),
  CONSTRAINT `FK_8E8E2CCE4CDBBB4D` FOREIGN KEY (`actionneur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_8E8E2CCE9D32F035` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`),
  CONSTRAINT `FK_8E8E2CCEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




