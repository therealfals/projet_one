DROP TABLE IF EXISTS document;

CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_document_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `jugement_id` int(11) DEFAULT NULL,
  `notaire_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `numero_document` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_delivrance` datetime DEFAULT NULL,
  `date_validite` datetime DEFAULT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `fichier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D8698A768826AFA6` (`type_document_id`),
  KEY `IDX_D8698A76A76ED395` (`user_id`),
  KEY `IDX_D8698A7680922237` (`jugement_id`),
  KEY `IDX_D8698A7693B43CD5` (`notaire_id`),
  KEY `IDX_D8698A763414710B` (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




