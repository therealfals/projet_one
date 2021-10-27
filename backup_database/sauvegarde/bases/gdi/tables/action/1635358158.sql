DROP TABLE IF EXISTS action;

CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO action VALUES("1","Ajout Interimaire"),
("2","Modification Interimaire"),
("3","Liste Interimaire"),
("4","Details Interimaire"),
("5","Ajout utilisateur"),
("6","Modification utilisateur"),
("7","Liste utilisateur"),
("8","Suppression utilisateur"),
("9","Blocage utilisateur"),
("10","Details utilisateur"),
("11","Ajout contrat"),
("12","Modification contrat"),
("13","Details contrat"),
("14","Suppression contrat"),
("15","Blocage interimaire"),
("16","Liste manager"),
("17","Liste utilisateurs"),
("18","Ajout structure"),
("19","Modification structure"),
("20","Liste structure"),
("21","Suppression structure"),
("22","Suppression profil"),
("23","Liste profil"),
("24","Modification profil"),
("25","Ajout profil"),
("26","Suppression notification"),
("27","Update notification"),
("28","Details notification"),
("29",""),
("30","Liste notifications"),
("31","Bloquer interimaire"),
("32","Recherche avancee"),
("33",""),
("34","Ajout contrat"),
("35","Ajout contrat"),
("36","Ajout document"),
("37","Ajout notification"),
("38","Liste interimaire par collaborateur"),
("39","Liste interimaire par manager"),
("40","Liste interimaire par derniers recrues");



