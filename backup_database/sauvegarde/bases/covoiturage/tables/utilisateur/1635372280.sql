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



