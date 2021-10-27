
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
  PRIMARY KEY (`id`),
  KEY `IDX_F65593E5FB88E14F` (`utilisateur_id`),
  KEY `IDX_F65593E5181A8BA` (`voiture_id`),
  CONSTRAINT `FK_F65593E5181A8BA` FOREIGN KEY (`voiture_id`) REFERENCES `voiture` (`id`),
  CONSTRAINT `FK_F65593E5FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS doctrine_migration_versions;

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




DROP TABLE IF EXISTS photo;

CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voiture_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_14B78418181A8BA` (`voiture_id`),
  CONSTRAINT `FK_14B78418181A8BA` FOREIGN KEY (`voiture_id`) REFERENCES `voiture` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO photo VALUES("1","b7ada7cde8774e005d3a6e2e77077f16.jpg","1"),
("2","e4894f0a1a7e212c52a3be365a8972a7.jpg","1"),
("3","3d3b0baecc975afc75633c6fcb9a4338.jpg","2"),
("4","6fcf2be3d0e4e46efeb0db4bbb4accbb.jpg","2"),
("5","8dcef8b0db4e0194e2bd8c1f6804fd37.jpg","3"),
("6","3efb4e7bc7ecc86c7c412ce3313daa08.jpg","3");



DROP TABLE IF EXISTS refresh_tokens;

CREATE TABLE `refresh_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refresh_token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valid` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9BACE7E1C74F2195` (`refresh_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO refresh_tokens VALUES("1","81f45299d5c813e43cc0995290f2ad346f629c89ddb832d6c398d9f5ee7cac94a02e91dee76f80fce4ebd1897bf24968e26d42c3a8c55d772850863144568d2e","b@b.b","2021-07-19 18:00:37"),
("2","a77b734abfefe245e202986ce95983293e9233779f4dbe005fb0ecddc57ca069191643947aaf39901a92030c20d7c75b4765246b7da92e7fc1d41a22f124334d","b@b.b","2021-07-19 18:26:41");



DROP TABLE IF EXISTS utilisateur;

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ncni` int(11) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1D1C63B3E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO utilisateur VALUES("1","b@b.b","$argon2id$v=19$m=65536,t=4,p=1$NExoQmY3U1lVMkYxcDV3Ng$CJf1i3XV8AAhei8Mx1xXZrpulv9WMRFvo/FwwVVSCIA","","","","","777779956","",""),
("2","ye@ii.gh","$argon2id$v=19$m=65536,t=4,p=1$c0ZXelQvdS5DUXdOMEpnVA$wx6OOHVX4POkUwj5kIhipq+rX8SPu+aoII6iPgRlf0E","","","0","","","0","2021-06-01 13:34:49");



DROP TABLE IF EXISTS voiture;

CREATE TABLE `voiture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `n_carte_grise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E9E2810FFB88E14F` (`utilisateur_id`),
  CONSTRAINT `FK_E9E2810FFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO voiture VALUES("1","1","","",""),
("2","1","7846189565656","Cabriolet",""),
("3","1","7846189565656","Cabriolet","0");



