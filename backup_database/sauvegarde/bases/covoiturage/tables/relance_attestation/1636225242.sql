DROP TABLE IF EXISTS relance_attestation;

CREATE TABLE `relance_attestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_manager` int(11) DEFAULT NULL,
  `period_id` int(11) DEFAULT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `date_next_relance` datetime DEFAULT NULL,
  `nbre_relance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




