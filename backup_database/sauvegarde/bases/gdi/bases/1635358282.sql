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



DROP TABLE IF EXISTS agence;

CREATE TABLE `agence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteweb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_dg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero_dg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `ninea` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnidg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rccm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contrat_agence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO agence VALUES("1","Sen interim","Foire","338100911","undefined","www.seninterim.com","seninterim@gmail.com","71f649a6cc4bd8e3aadec5a438867744.jpeg","Fabrice Dasylva","770121212","0","9856412","745210","54210","vjd shsd x sdsdhjkssdndsxn ,sd"),
("2","Business Interimaire","Dakar","338901200","undefined","www.business.sn","malick@gmail.com","1627af89d5ea8b0582283d56442c357c.jpeg","malick Coly","784092134","0","22c29ca24b00c607efa7637a931b1d75.pdf","14e61da960dc13e323e112641caeea9d.pdf","a80e5ecbb03eee8e4d11c28965e11608.pdf","6aca7edbebeb8e8e208d25d0219cedaf.pdf"),
("3","Agence Interimaire","Pikine","337653452","781230987","www.agenceInter.com","faty@gmail.com","05c32b14ed370d114c4022ccc89322e9.jpeg","Faty Cisse","781239087","0","a03653ca9a9836e0921f3d5a177a6051.pdf","77223f3e2789d5cd739e9f20d78fca22.pdf","917569da1c40a19645a0c0c1337e776a.pdf","3ca40562ab7a58dccfb7993534056936.pdf"),
("4","Sweet Interim","Mermoz","338902345","undefined","www.sweetInter","sweet@gmail.com","e1864473a3140ff5ed506b68dd2bb926.jpeg","Melanie Mendy","780989098","0","0c50d7defb26fa74014d251d6839f245.pdf","074f08ab0b8ed09b21add92e4b45edc9.pdf","9b8423d0db426e566c7f37f866b46ea8.pdf","32bc238bddcac9359e775b81a9002945.pdf"),
("5","Express Interim","Parcelles Assainies","331900010","undefined","www.express.sn","babs@gmail.com","6ef53bef0cc12ffb52c4edfb2ef38fde.jpeg","Ababcar Faye","772345676","0","cfbf6881072753b91d1bac8f4331d23a.pdf","bfd1155addc6e909e24c0c3e46d704b6.pdf","e50d3672102ef364ef2081b1ead61553.pdf","ea41dbdaccb2fc74458579b29811eae6.pdf"),
("6","agenceInterim","dakar","338276655","undefined","www.agenceInter.com","agenceInter@gmail.com","5d2f36f7537fcbd1e6b606135414086c.png","Aminata Faye","761235467","0","7a4edde65587c16c54ee6065b0300381.pdf","fe72f478df95de603dc95391e4441cc0.pdf","2e67e6e1e7d5247123a1727cf494e817.pdf","6625ea5d7eb2b3dec3291b73d69e90c9.pdf"),
("7","berbedi","Alwar Zig","336542189","undefined","www.m3cberbdedi.sn","noua@gmail.com","3ec41eb6ade284ad1e705c71641b602f.png","noua van","784596202","0","f6101a3a45ecde09d37c5083424281eb.pdf","4a857cea09d3574a2a11e22d437151b3.pdf","bfaa821a34736c4d88ccf45254858424.pdf","4e3e1d5fc4873abfa966f14ab4755fd8.pdf"),
("8","agence interimaire sn","dakar vdn","331903465","undefined","www.agi.sn","samba@gmail.com","a6126b4853de24e1a0afc20b5769f24d.jpeg","Cheikh Fall","776543212","0","","","",""),
("9","global business group","ouest foire cite khandar","338761010","undefined","www.global.com","global@gmail.com","dc6248e7ad2a148a0d51bb93ddf3d015.png","Sarah Fall","774564546","0","56e0e4b6a9be2d1f131a210c9d6b667f.pdf","e63f35d81c9828026448b58263d61d0c.pdf","e35b284fffdf7055071e8ffd75599ef6.pdf","be6dd5a31ea48d555d2c087e51173f74.pdf"),
("13","gdg","qsbqhhs","338889999","776658888","qhbshhqj","shdhsh@gmail.com","a720d6c25593014ff4144b27ca58f124.jpeg","sdbh","776765655","0","7329f9db89829c869bfb68f3959f5bb4.pdf","04eab2939af2d1db1b06b11feca392a3.pdf","9400f54a04b1d256ca38abf24c8ffa54.pdf","3a90b31095bb85576512d442fc929856.pdf"),
("14","agsqghgh","qssghQHSJ","339999999","777666666","sqbjjsnqj","qsghquh@gshhsh.bn","9f28a1345b370a5f5ed47eb576187b3b.jpeg","sdhjhsdjhdj","777777777","0","86af654325af5cbfe14dac3298ff8958.pdf","45049dd20333d870b0667840e74252c4.pdf","562961e6082f532345e4b4a8c850ed49.pdf","73c6b574eb6183140381f1eae88b9ea9.pdf"),
("15","dzz","sdhshdjh","336789098","undefined","sudghgsh","dshzsj","57ac0408212184cc7cc2df9f1a8998f1.png","dsjjs","778765645","0","","","",""),
("16","bakeli si","HLM Grand Yoff","338102309","undefined","www.bakeli.sn","abdould@gmail.com","33ed1167de5e9ac5d57f70595b57d6cc.png","Daba Ly","774445566","0","2d5b600fac3c3c3933062972bae7130e.pdf","65999405569a5b3637b89db75a816b2e.pdf","f4d76cf95b487542f16e289903f24503.pdf","45af20f804fd1815dd7d7669e83beb89.pdf"),
("17","Pinta group","Alwar","339998888","undefined","wwww.pintagroup.sn","khadyd@gmail.com","696cda7a4a0459f7e3f88fd003b24c4f.png","Khady Diop","771112233","0","6810ed4c468decccd466ee9115c37add.pdf","068abea0a94dbd6277a947f21ce9cf49.pdf","62b0ba621418464a7bcdc0948d67499c.pdf","64bb08530aad47d16336d561e8a20192.pdf"),
("18","INTER AGENCE","yoff","339990099","775554433","www.inter.sn","cisse@gmail.com","e768d33249a0e61c8c5bed51f27c98f7.jpeg","moustapha Cisse","776665544","0","cf25cf5da1e29c6e273e3727b1dd11a1.pdf","392240ca60b24aab1c47806b58ff3a58.pdf","af99a008ebb98031cb05cb4b93841544.pdf","b909bc8589bac7dbf8352ca224eaac0c.pdf");



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




DROP TABLE IF EXISTS attestation;

CREATE TABLE `attestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) NOT NULL,
  `contrat_id` int(11) NOT NULL,
  `statut_attestation_id` int(11) NOT NULL,
  `periode_id` int(11) NOT NULL,
  `etat` int(11) DEFAULT NULL,
  `nombre_jour_abscence` int(11) DEFAULT NULL,
  `date_debut` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_326EC63F5CA839FE` (`interimaire_id`),
  KEY `IDX_326EC63F1823061F` (`contrat_id`),
  KEY `IDX_326EC63F36D0CD7` (`statut_attestation_id`),
  KEY `IDX_326EC63FF384C1CF` (`periode_id`),
  CONSTRAINT `FK_326EC63F1823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_326EC63F36D0CD7` FOREIGN KEY (`statut_attestation_id`) REFERENCES `statut_attestation` (`id`),
  CONSTRAINT `FK_326EC63F5CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_326EC63FF384C1CF` FOREIGN KEY (`periode_id`) REFERENCES `periode` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS blacklist_interimaire;

CREATE TABLE `blacklist_interimaire` (
  `id` int(11) NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_piece` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_piece` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO blacklist_interimaire VALUES("1","778529600","cni","325"),
("2","778889943","passport","67543"),
("3","768908766","cni","895625656"),
("4","778889966","cni","9564545675"),
("5","778889965","cni","A5432"),
("6","787654312\n","passport","5876587"),
("7","709876745","passport","88751555");



DROP TABLE IF EXISTS blocked_user;

CREATE TABLE `blocked_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  `date_action` datetime NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS categorie;

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO categorie VALUES("1","Ma categorie");



DROP TABLE IF EXISTS commission;

CREATE TABLE `commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS contrat;

CREATE TABLE `contrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) DEFAULT NULL,
  `structure_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `domaine_id` int(11) DEFAULT NULL,
  `societe_id` int(11) DEFAULT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `date_signature` datetime NOT NULL,
  `date_fin_reelle` date DEFAULT NULL,
  `date_prise_effet` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_603499935CA839FE` (`interimaire_id`),
  KEY `IDX_603499932534008B` (`structure_id`),
  KEY `IDX_60349993BCF5E72D` (`categorie_id`),
  KEY `IDX_603499934272FC9F` (`domaine_id`),
  KEY `IDX_60349993FCF77503` (`societe_id`),
  CONSTRAINT `FK_603499932534008B` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`),
  CONSTRAINT `FK_603499934272FC9F` FOREIGN KEY (`domaine_id`) REFERENCES `domaine` (`id`),
  CONSTRAINT `FK_603499935CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_60349993BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  CONSTRAINT `FK_60349993FCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS demande;

CREATE TABLE `demande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) NOT NULL,
  `type_demande_id` int(11) NOT NULL,
  `contrat_id` int(11) NOT NULL,
  `validateur_id` int(11) DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `date_demande` datetime NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2694D7A55CA839FE` (`interimaire_id`),
  KEY `IDX_2694D7A59DEA883D` (`type_demande_id`),
  KEY `IDX_2694D7A51823061F` (`contrat_id`),
  KEY `IDX_2694D7A5E57AEF2F` (`validateur_id`),
  CONSTRAINT `FK_2694D7A51823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_2694D7A55CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_2694D7A59DEA883D` FOREIGN KEY (`type_demande_id`) REFERENCES `type_demande` (`id`),
  CONSTRAINT `FK_2694D7A5E57AEF2F` FOREIGN KEY (`validateur_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS direction;

CREATE TABLE `direction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `societe_id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3E4AD1B3FCF77503` (`societe_id`),
  CONSTRAINT `FK_3E4AD1B3FCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO direction VALUES("1","1","DASI"),
("2","1","vb");



DROP TABLE IF EXISTS doctrine_migration_versions;

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




DROP TABLE IF EXISTS document;

CREATE TABLE `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agence_id` int(11) DEFAULT NULL,
  `type_document_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contrat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `interimaire_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D8698A76D725330D` (`agence_id`),
  KEY `IDX_D8698A768826AFA6` (`type_document_id`),
  KEY `IDX_D8698A76A76ED395` (`user_id`),
  KEY `IDX_D8698A761823061F` (`contrat_id`),
  KEY `IDX_D8698A765CA839FE` (`interimaire_id`),
  CONSTRAINT `FK_D8698A761823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_D8698A765CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_D8698A768826AFA6` FOREIGN KEY (`type_document_id`) REFERENCES `type_document` (`id`),
  CONSTRAINT `FK_D8698A76A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_D8698A76D725330D` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS document_interimaire;

CREATE TABLE `document_interimaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `contrat_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E93EE4F8C33F7837` (`document_id`),
  KEY `IDX_E93EE4F85CA839FE` (`interimaire_id`),
  KEY `IDX_E93EE4F81823061F` (`contrat_id`),
  CONSTRAINT `FK_E93EE4F81823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_E93EE4F85CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_E93EE4F8C33F7837` FOREIGN KEY (`document_id`) REFERENCES `document` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO document_interimaire VALUES("1","83","170",""),
("2","83","171",""),
("3","83","172",""),
("4","84","174",""),
("5","84","175",""),
("6","84","176",""),
("7","84","177","54"),
("8","85","178",""),
("9","85","179",""),
("10","85","180",""),
("11","85","181",""),
("12","85","182","55"),
("13","86","183",""),
("14","86","184",""),
("15","86","185",""),
("16","86","186",""),
("17","86","187","56"),
("18","84","189","57"),
("19","84","190","58"),
("20","87","194",""),
("21","87","195",""),
("22","87","196",""),
("23","87","197",""),
("24","87","198",""),
("25","87","199",""),
("26","87","200","62");



DROP TABLE IF EXISTS documents;

CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agence_id` int(11) DEFAULT NULL,
  `type_document_id` int(11) DEFAULT NULL,
  `contrat_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `interimaire_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` datetime NOT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2B07288D725330D` (`agence_id`),
  KEY `IDX_A2B072888826AFA6` (`type_document_id`),
  KEY `IDX_A2B072881823061F` (`contrat_id`),
  KEY `IDX_A2B07288A76ED395` (`user_id`),
  KEY `IDX_A2B072885CA839FE` (`interimaire_id`),
  CONSTRAINT `FK_A2B072881823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_A2B072885CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_A2B072888826AFA6` FOREIGN KEY (`type_document_id`) REFERENCES `type_document` (`id`),
  CONSTRAINT `FK_A2B07288A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_A2B07288D725330D` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO documents VALUES("1","","4","100","44","93","d3a6050e2039fe507d1cf4b69ba38bb1.jpeg","2021-07-01 12:51:48",""),
("2","","2","","44","93","f517fd567e2f1c1b45f644c0f2cb7658.pdf","2021-07-01 12:51:48",""),
("3","","4","101","44","93","848bbdcd0bf60d5a0b39b751092385df.jpeg","2021-07-01 12:54:13",""),
("4","","2","","44","93","e5a1ab66684a6508a8b6c505e1d3196b.pdf","2021-07-01 12:54:13",""),
("5","","4","102","44","93","0e02600afd433388c1a64f5907accae8.jpeg","2021-07-01 12:59:56",""),
("6","","2","","44","93","7b01a960f336dc522df979aaaccdf0fc.pdf","2021-07-01 12:59:56",""),
("7","","4","103","44","93","33cd43b30ef554616bc4e1dc94e9eebb.jpeg","2021-07-01 13:00:05",""),
("8","","2","","44","93","29bfa1066aa8a5014cccba08b910db36.pdf","2021-07-01 13:00:05",""),
("9","","4","104","44","93","cc95e2068347f196386b5c94565aa4af.jpeg","2021-07-01 13:01:32",""),
("10","","2","","44","93","c7b5bbbdcd5f62a531c3a987d96c0953.pdf","2021-07-01 13:01:32",""),
("11","","4","105","44","93","df1776e1c6184836b2f18cd5175df6de.jpeg","2021-07-01 13:02:01",""),
("12","","2","","44","93","4055abcda2d20063626ecc36d51f8c20.pdf","2021-07-01 13:02:01",""),
("13","","4","","44","114","375af4f9e8e23ece9bf1d16961d31b4b.png","2021-07-01 17:09:44",""),
("14","","7","","44","114","08d9fa7d662ebe50b71fce6fe3985a10.pdf","2021-07-01 17:09:44",""),
("15","","7","","44","114","c8abde53345117f092f4892cff57521e.pdf","2021-07-01 17:09:44",""),
("16","","7","","44","114","beeb892714d648988584cb652a2a9a0f.pdf","2021-07-01 17:09:44",""),
("17","","3","","44","114","c742bec705b818279fac970db774da3a.png","2021-07-01 17:09:44",""),
("18","","2","","44","114","7d55cb566e7a485f7127d10d645909a7.png","2021-07-01 17:09:44",""),
("19","","4","106","44","114","137ed282e2255a994fd0b102093e3a69.png","2021-07-01 17:09:47",""),
("20","","8","","44","115","a82124975cbe1979636c19c41b02b4d9.png","2021-07-01 17:11:19",""),
("21","","7","","44","115","1f2db7a599e2966f79627d0e08f0b1e7.pdf","2021-07-01 17:11:19",""),
("22","","7","","44","115","06fe90c0b79050d0475b19437624f7f7.pdf","2021-07-01 17:11:19",""),
("23","","7","","44","115","a8405a01897341ec198265e4fb69fef7.pdf","2021-07-01 17:11:19",""),
("24","","3","","44","115","1638cd2aab114546ce64828908c345a2.png","2021-07-01 17:11:19",""),
("25","","2","","44","115","062e80197935bfb1e690672a6256a57b.png","2021-07-01 17:11:19",""),
("26","","4","107","44","115","34ba20d4018229db6147771de0497e08.png","2021-07-01 17:11:19",""),
("27","","8","","44","116","a7592fa78f29e1e68a2ad83eae88c9c8.png","2021-07-01 17:13:47",""),
("28","","7","","44","116","8a31f3887dfe91215507d0597c8cded3.pdf","2021-07-01 17:13:47",""),
("29","","7","","44","116","f4f687e8dc394ad194081538c13c25f7.pdf","2021-07-01 17:13:47",""),
("30","","7","","44","116","aa6b09b8bbfe5f498aaa0f0825870422.pdf","2021-07-01 17:13:47",""),
("31","","3","","44","116","33155bbadd576b3f84a7bf7c308b5be2.png","2021-07-01 17:13:47",""),
("32","","2","","44","116","bcb9cce22b50f254be408bc971190788.png","2021-07-01 17:13:47",""),
("33","","4","108","44","116","1e5df387f66bd5a876b56086165493c8.png","2021-07-01 17:13:47",""),
("34","","8","","44","117","dc144cfcf09578f50f3092b9ab6d31cf.png","2021-07-01 17:35:39",""),
("35","","7","","44","117","6000b0b982ddd71a276c67e5b1c60926.pdf","2021-07-01 17:35:39",""),
("36","","7","","44","117","af71789b4c769e46bc847476273cf6cb.pdf","2021-07-01 17:35:39",""),
("37","","7","","44","117","9618dd8da93dc7c694f5389263f7b10c.pdf","2021-07-01 17:35:39",""),
("38","","3","","44","117","0b5822c85040982f0f3d09302f8e2294.png","2021-07-01 17:35:39",""),
("39","","2","","44","117","787b4c49470a1ce51c218c0efa2809fd.png","2021-07-01 17:35:39",""),
("40","","4","109","44","117","8e951f0f1a66a2d62c51f666c1a7a722.png","2021-07-01 17:35:39",""),
("41","","8","","44","118","182289ed14144499383b1589705a97c7.png","2021-07-01 17:50:31",""),
("42","","7","","44","118","3a2a2b39b60b9a7fca2ef6a1bba584a0.pdf","2021-07-01 17:50:31",""),
("43","","7","","44","118","164cf247bfaac8eaa608fc0ce5f2a456.pdf","2021-07-01 17:50:31",""),
("44","","7","","44","118","c07900d7ee436ff995c2fa5155981fda.pdf","2021-07-01 17:50:31",""),
("45","","3","","44","118","9aaf792896f83c49dc623dc99af296cb.png","2021-07-01 17:50:31",""),
("46","","2","","44","118","9623385da652bbc3d0d0abe9e99ec4f7.png","2021-07-01 17:50:31",""),
("47","","4","110","44","118","882f897321ed967dae9eec0e761e336e.png","2021-07-01 17:50:32",""),
("48","","8","","44","119","e24ec722d0cf4bacc5f4ed6c657471b2.png","2021-07-01 18:09:36",""),
("49","","7","","44","119","1d87d8b351ae472eb83c88f4146d83ad.pdf","2021-07-01 18:09:36",""),
("50","","7","","44","119","83e559ea41600b974e4f080eacf460af.pdf","2021-07-01 18:09:36",""),
("51","","7","","44","119","10f06f197abdfe962a0601eb3fd5e53d.pdf","2021-07-01 18:09:36",""),
("52","","3","","44","119","08c9ffed57dafa048c171d5e261a361d.png","2021-07-01 18:09:36",""),
("53","","2","","44","119","448199fb718d4688d80921522f896331.png","2021-07-01 18:09:36",""),
("54","","4","111","44","119","725bab30813e30750c2ba9a1555571ea.png","2021-07-01 18:09:37",""),
("55","","8","","44","120","1ca16d9ecc55a89675a186e3bca4dfa9.png","2021-07-01 18:10:29",""),
("56","","7","","44","120","b8a04cac0613ab8dab87c5716dde82da.pdf","2021-07-01 18:10:29",""),
("57","","7","","44","120","ba72b41d5707f3dfae097adf95098bf4.pdf","2021-07-01 18:10:29",""),
("58","","7","","44","120","2ee3fc6efb7db2595e1c7daf01f2fa03.pdf","2021-07-01 18:10:29",""),
("59","","3","","44","120","dce265b999d2f1981f29a7efce820b63.png","2021-07-01 18:10:29",""),
("60","","2","","44","120","428c2de064a88f12502a71a4258c293f.png","2021-07-01 18:10:29",""),
("61","","4","112","44","120","e7963a7c5797be1763e968b102a91f4c.png","2021-07-01 18:10:29",""),
("62","","8","","44","121","93a76df7ea2d0ea0c3bd36556e2650ba.png","2021-07-01 18:11:10",""),
("63","","7","","44","121","2f3a65d218b01da661451a8350dd1c6e.pdf","2021-07-01 18:11:10",""),
("64","","7","","44","121","0dad362a593fedaff73551963b93eeb1.pdf","2021-07-01 18:11:10",""),
("65","","7","","44","121","7158112da13c6bf95154e49e6070cd99.pdf","2021-07-01 18:11:10",""),
("66","","3","","44","121","61ac5c68c1d4606150bc32445ab14f24.png","2021-07-01 18:11:10",""),
("67","","2","","44","121","d5c99f9f9450924bc2a84e46e3a433d7.png","2021-07-01 18:11:10",""),
("68","","4","113","44","121","bfea2936750151b565a9cb5784b74561.png","2021-07-01 18:11:10",""),
("69","","8","","46","122","f9881b221b90e1ddbf31efad92ba160e.png","2021-07-01 23:15:24",""),
("70","","7","","46","122","e6dd276055b142ed6b36deb0c6d67f82.pdf","2021-07-01 23:15:24",""),
("71","","7","","46","122","f79a931c8f3e999d805ae55b8185cea3.pdf","2021-07-01 23:15:24",""),
("72","","7","","46","122","8a6f132c0da375e8333d1aaa2233026f.pdf","2021-07-01 23:15:24",""),
("73","","3","","46","122","1d22485ffa2b14fbd49f7d2ad846e752.png","2021-07-01 23:15:24",""),
("74","","2","","46","122","e502be611abc1b41475568a3015226cf.png","2021-07-01 23:15:24",""),
("75","","4","114","46","122","f3eae7b47eded05dd2c2e70f7b6a3c47.png","2021-07-01 23:15:24",""),
("76","","8","","46","123","0adbcef37c6bdca9a017b834bd8f3592.png","2021-07-01 23:16:43",""),
("77","","7","","46","123","f1aa4e8bd39a5ff2549fde987494b472.pdf","2021-07-01 23:16:43",""),
("78","","7","","46","123","2807a92397857f272c891602ddf223cd.pdf","2021-07-01 23:16:43",""),
("79","","7","","46","123","498360ebe64e879f6375e3b24861044d.pdf","2021-07-01 23:16:43",""),
("80","","3","","46","123","12aa839129a2acce49880d99c627c2bf.png","2021-07-01 23:16:43",""),
("81","","2","","46","123","754e8ccfbb4f11e3581a24e12236f807.png","2021-07-01 23:16:43",""),
("82","","4","115","46","123","373f3e68e3c0c3bb2a3e501395f79c54.png","2021-07-01 23:16:43",""),
("83","","8","","46","124","f65b739f6b28c4cc0cd3db720b71f7fc.png","2021-07-02 13:54:18",""),
("84","","7","","46","124","b95776352f81bbdc3c419ef717ea222f.pdf","2021-07-02 13:54:18",""),
("85","","7","","46","124","bfc7180905128fc530c66c0c2c5fee7a.pdf","2021-07-02 13:54:18",""),
("86","","7","","46","124","5a583f142ae04f8cb87cf107798901ae.pdf","2021-07-02 13:54:18",""),
("87","","3","","46","124","1ae93acdccf2d0fe138f540c86f1f8bc.png","2021-07-02 13:54:18",""),
("88","","2","","46","124","722a71fc78d54150fd38e0e339620f96.png","2021-07-02 13:54:18",""),
("89","","4","116","46","124","bd82c3582dd409616513df0eda660f42.png","2021-07-02 13:54:19",""),
("90","","8","","44","125","791fadcaec41849bf62086b1d5dba33d.png","2021-07-07 11:01:03",""),
("91","","7","","44","125","26622390401c0a73a5a8c8fddec6eb98.pdf","2021-07-07 11:01:04",""),
("92","","7","","44","125","5b42f9965a8667ffe7a17f05c02609c4.pdf","2021-07-07 11:01:04",""),
("93","","7","","44","125","59cddc1f66d816c06a55d9054da6459d.pdf","2021-07-07 11:01:04",""),
("94","","3","","44","125","3885d282c5803692b16eb3f35c57c9a1.png","2021-07-07 11:01:04",""),
("95","","2","","44","125","a596f770db77814f8fc7740da667c2a5.png","2021-07-07 11:01:04",""),
("96","","4","117","44","125","b73c9d21b7b9f15a25cb893a4dbc7e5c.png","2021-07-07 11:01:06",""),
("97","","8","","44","126","0a2707e3c5452c0b2e850a7f35f03a8e.png","2021-07-07 11:02:41",""),
("98","","7","","44","126","04b3fb1b5879e33e00f9548a50505fe3.pdf","2021-07-07 11:02:41",""),
("99","","7","","44","126","49760df9dce25b8db3fbc79f517c8c9a.pdf","2021-07-07 11:02:41",""),
("100","","7","","44","126","c157de24c8dd6d6dca044bc60509ebcd.pdf","2021-07-07 11:02:41",""),
("101","","3","","44","126","6596fa1039265671270112d7f77c5f99.png","2021-07-07 11:02:41",""),
("102","","2","","44","126","66e898cec7a177f86ffbea5509cf0616.png","2021-07-07 11:02:41",""),
("103","","4","118","44","126","fa6f069a46caed1a2e0dcda17658b10e.png","2021-07-07 11:02:41",""),
("104","","8","","44","127","464fd95a00aac0d8d6e8cf0738c78148.png","2021-07-07 12:27:28",""),
("105","","7","","44","127","226f8ea9434105042e731b31fff8dd5c.pdf","2021-07-07 12:27:29",""),
("106","","7","","44","127","a8d6615f8a7efec66de2e82cc03f057c.pdf","2021-07-07 12:27:29",""),
("107","","7","","44","127","4d7a01504be897b26474a7cc86e4d11a.pdf","2021-07-07 12:27:29",""),
("108","","3","","44","127","a7dbf8c23070e8b215e70459548084b6.png","2021-07-07 12:27:29",""),
("109","","2","","44","127","e44c387b13390676f3968d7d3aff34a4.png","2021-07-07 12:27:29",""),
("110","","4","119","44","127","35d4460338be79fdaa3de2300db4c830.png","2021-07-07 12:27:29",""),
("111","","8","","44","128","5cd3de010bc9b11e2dd0df5e451ab898.png","2021-07-07 12:28:20",""),
("112","","7","","44","128","027fbacbe97243335465be0694ffd411.pdf","2021-07-07 12:28:20",""),
("113","","7","","44","128","a1a855cb37d0df6b6095b6699c9c13f6.pdf","2021-07-07 12:28:20",""),
("114","","7","","44","128","10f67df5bd4d93266434ba120c6d3289.pdf","2021-07-07 12:28:20",""),
("115","","3","","44","128","1e57b01e861fbbb7427870dc0fdbb934.png","2021-07-07 12:28:20",""),
("116","","2","","44","128","be16b7a3547a3cc65c38f430e34ce125.png","2021-07-07 12:28:20",""),
("117","","4","120","44","128","67bad6b5bab8098657bfc899aeefb703.png","2021-07-07 12:28:20",""),
("118","","7","","44","129","f1f75c871005de649383815fd5ab09b2.pdf","2021-07-08 11:05:44",""),
("119","","7","","44","129","6e90b483bc63d75c3d37f76456d90f69.pdf","2021-07-08 11:05:44",""),
("120","","7","","44","129","cc9c055eb0f69251877e58c8413b9131.pdf","2021-07-08 11:05:44",""),
("121","","2","","44","129","2c0cbdd41f25a7a6784fc61567a5a3a1.png","2021-07-08 11:05:44",""),
("122","","3","","44","129","303ee45437cb9ec7c603d433434fe962.png","2021-07-08 11:05:44",""),
("123","","4","121","44","129","2994d1af284fda339cc50e480b2d5fcb.png","2021-07-08 11:05:45",""),
("124","","7","","44","130","d0bdf25c835f45fe8957efa7e03fb936.pdf","2021-07-08 11:12:57",""),
("125","","7","","44","130","a669927e889a16ba017981e8cae0eb70.pdf","2021-07-08 11:12:57",""),
("126","","7","","44","130","44b1630545bf96ac937e845b31e776b6.pdf","2021-07-08 11:12:57",""),
("127","","2","","44","130","5adbf5225617ed335bb27c8c92e7bc6d.png","2021-07-08 11:12:57",""),
("128","","3","","44","130","b346458c9f33d00479954870c42a7072.png","2021-07-08 11:12:57",""),
("129","","4","122","44","130","796d1afc4affc6ed22fd00206a71aaaf.png","2021-07-08 11:12:57",""),
("130","","7","","44","131","d34adb2b2f717863eddbf506586e85bf.pdf","2021-07-08 12:08:51",""),
("131","","7","","44","131","85a340c33557d1ad4b97924ab5fb320e.pdf","2021-07-08 12:08:51",""),
("132","","7","","44","131","a38351fd22b7d51748c05a0825cb5f7a.pdf","2021-07-08 12:08:51",""),
("133","","2","","44","131","510db35fe73ead5fae070009fc96092b.png","2021-07-08 12:08:51",""),
("134","","3","","44","131","5775492d67f1d47159d120c1c4f94513.png","2021-07-08 12:08:51",""),
("135","","8","","44","131","a90fdab71a8c538dfd9ba5c9c0ff3eb0.png","2021-07-08 12:08:51",""),
("136","","4","123","44","131","fc37ba874e7fc80767f0d452a12129e6.png","2021-07-08 12:08:51",""),
("137","","7","","44","132","b44de78da90b3c3e0ea5b62aff003f68.pdf","2021-07-08 12:11:19",""),
("138","","7","","44","132","1b0015f01cf8e8e88807dd468a9525cf.pdf","2021-07-08 12:11:19",""),
("139","","7","","44","132","1462b537e0592bd553e7ae8b60f545a9.pdf","2021-07-08 12:11:19",""),
("140","","2","","44","132","086b2bbaefac8fd4491cb84fdf443c58.png","2021-07-08 12:11:19",""),
("141","","3","","44","132","99e0cc1982dd15c34bc32501d50c06ea.png","2021-07-08 12:11:19",""),
("142","","8","","44","132","843eaa4d868588129df12cd3958a517e.png","2021-07-08 12:11:19",""),
("143","","4","124","44","132","617c2c53ce17c8d998a8ea1524241282.png","2021-07-08 12:11:19",""),
("144","","7","","44","133","64f4ec86bad370cb434f5f0e0a30f4b7.pdf","2021-07-08 12:15:41",""),
("145","","7","","44","133","f3ab1af320f49aedbb21a506d593debe.pdf","2021-07-08 12:15:41",""),
("146","","7","","44","133","2f447a1a99c14510839083dd8f04abcb.pdf","2021-07-08 12:15:41",""),
("147","","2","","44","133","d8188ed47228968d7b3cf5776aeed2d4.png","2021-07-08 12:15:41",""),
("148","","3","","44","133","4bdae994302469973be12ed12f45b3ac.png","2021-07-08 12:15:41",""),
("149","","8","","44","133","4ab715171fe1157b6ddaefcef0654765.png","2021-07-08 12:15:41",""),
("150","","4","125","44","133","9b432781092e288d94c40b5a2526bf90.png","2021-07-08 12:15:41",""),
("151","","7","","44","134","a068c5467e1d8aaa2cf7c2f89064c44f.pdf","2021-07-08 12:17:41",""),
("152","","7","","44","134","2bf0a4e3d852667c989f393aac0865cc.pdf","2021-07-08 12:17:41",""),
("153","","7","","44","134","bae063812bfccffe7242770fb394bd6e.pdf","2021-07-08 12:17:41",""),
("154","","2","","44","134","755b21ff38927e2c2f78c0adfefff305.png","2021-07-08 12:17:41",""),
("155","","3","","44","134","9ad35be1e6ee7f7119b3e4770d1b457b.png","2021-07-08 12:17:41",""),
("156","","8","","44","134","94e16b059f5c24bcd8fbdca4bf84143f.png","2021-07-08 12:17:41",""),
("157","","4","126","44","134","90f5fc82be31b394547dacede75393eb.png","2021-07-08 12:17:41",""),
("158","","7","","44","135","aedc371c29565f5f4b08d6366d8688da.pdf","2021-07-08 12:24:32",""),
("159","","7","","44","135","5cdcd490c8e19503533747c345463f7b.pdf","2021-07-08 12:24:32",""),
("160","","7","","44","135","29fdaf275eed7839cb2c108b410b5683.pdf","2021-07-08 12:24:32",""),
("161","","2","","44","135","bc2cb9ccde1e364b076d4ee2c0ce30ba.png","2021-07-08 12:24:32",""),
("162","","3","","44","135","6e9be5979564a02fb3e1d9022100a749.png","2021-07-08 12:24:32",""),
("163","","8","","44","135","1424066d7217f8bf6d713e893dd3fbcc.png","2021-07-08 12:24:32",""),
("164","","4","127","44","135","a95e562b033fbb2bea1134a3b963b2e4.png","2021-07-08 12:24:32",""),
("165","","7","","44","136","7e346f99646c5f9a69e22e46e18701d7.pdf","2021-07-08 12:25:34",""),
("166","","7","","44","136","55f781d911320720964cd62b6fe34fb0.pdf","2021-07-08 12:25:34",""),
("167","","7","","44","136","5013efe681a781903f4db6e3dc58af28.pdf","2021-07-08 12:25:34",""),
("168","","2","","44","136","38accc419f237c2a3859f3074c79baea.png","2021-07-08 12:25:34",""),
("169","","3","","44","136","6384ac45dff393b492acdee0a2ebb1a8.png","2021-07-08 12:25:34",""),
("170","","8","","44","136","339250bbc699c06685bc1a96b8f71df7.png","2021-07-08 12:25:34",""),
("171","","4","128","44","136","7470395b383b33286f6f1d6fdfd5bbb7.png","2021-07-08 12:25:34",""),
("172","","7","","44","137","ff25eb7f43f1799b176c34ba4f168fae.pdf","2021-07-08 12:27:07",""),
("173","","7","","44","137","fe6a3f1f0977f119d317fd06240ec55c.pdf","2021-07-08 12:27:07",""),
("174","","7","","44","137","fcb6f0e802ce735f4b77833e3a71402c.pdf","2021-07-08 12:27:07",""),
("175","","2","","44","137","12a9526382a70a95e7f2732d06741ac9.png","2021-07-08 12:27:07",""),
("176","","3","","44","137","656bfc125c456a448c4d02e864f04e3f.png","2021-07-08 12:27:07",""),
("177","","8","","44","137","5a6f9e3b91aec6e55e71f2166d642166.png","2021-07-08 12:27:07",""),
("178","","4","129","44","137","4087c57c815115517822defbce9b261b.png","2021-07-08 12:27:07",""),
("179","","7","","44","138","d7973f243ce1b41d5afd52b7b2b2406b.pdf","2021-07-08 12:32:13",""),
("180","","7","","44","138","8c3c22408ab648502167f04ec69ee448.pdf","2021-07-08 12:32:13",""),
("181","","7","","44","138","03b1718617c8f97fb9b2734d6eb67dc3.pdf","2021-07-08 12:32:13",""),
("182","","2","","44","138","2e0b0876325eade06e1684cbddfd8e0e.png","2021-07-08 12:32:13",""),
("183","","3","","44","138","31a8b826465c4deee2c04b377e034f3f.png","2021-07-08 12:32:13",""),
("184","","8","","44","138","79ee52d8b2ab62f973e186ab30e9d0d3.png","2021-07-08 12:32:13",""),
("185","","4","130","44","138","a6dda58775f7598065b1b671bc805618.png","2021-07-08 12:32:13",""),
("186","","2","","44","139","2c28a2b8b77596d932bfc9c131001a0d.png","2021-07-08 13:04:35",""),
("187","","3","","44","139","a136a9b3b271b1e970ced39a79c63caf.png","2021-07-08 13:04:35",""),
("188","","8","","44","139","3aebfee4a05c4ee2d9e417c0567be68d.png","2021-07-08 13:04:35",""),
("189","","4","131","44","139","2b9e96eea0e6e43053a5e072af3b7d1f.png","2021-07-08 13:04:35",""),
("190","","2","","44","140","c75d570947e183fdb2a7f1aefbc280bf.png","2021-07-08 13:06:13",""),
("191","","3","","44","140","39774471749f186071dfd6820dda3d74.png","2021-07-08 13:06:13",""),
("192","","8","","44","140","14db66af6a6496738231500a6f3a8500.png","2021-07-08 13:06:13",""),
("193","","4","132","44","140","b27272f05a369ff193af702703b75c42.png","2021-07-08 13:06:13",""),
("194","","2","","44","141","f43fd2a8740c344f7d482800b3404fe2.png","2021-07-08 13:08:09",""),
("195","","7","","44","141","0427d027a1a61265340274ba60620ae9.pdf","2021-07-08 13:08:09",""),
("196","","7","","44","141","c90a6cae25ce55daad60054b6137dfb2.pdf","2021-07-08 13:08:09",""),
("197","","7","","44","141","70556c906e3d72eb4496a576a01a7ffc.pdf","2021-07-08 13:08:09",""),
("198","","3","","44","141","4d83f7e7bbfbcdbc001d04efdf714591.png","2021-07-08 13:08:09",""),
("199","","8","","44","141","a8250cab4f3c71141aac1fc35a25e057.png","2021-07-08 13:08:09",""),
("200","","4","133","44","141","77710b73a99557134181e0430b8bca3c.png","2021-07-08 13:08:09",""),
("201","","2","","44","142","674732e05aef35920a72a928f761d01d.png","2021-07-08 17:27:32",""),
("202","","7","","44","142","e5240d483bef08af1cbdad008acdebb3.pdf","2021-07-08 17:27:32",""),
("203","","7","","44","142","ba0b7783967b5be28116b804a6510efc.pdf","2021-07-08 17:27:32",""),
("204","","7","","44","142","29b8fc9ad6fc8a28385b555693adaa2e.pdf","2021-07-08 17:27:32",""),
("205","","3","","44","142","9f5260f2ba669dd555d6f1f5b8a7c489.png","2021-07-08 17:27:32",""),
("206","","8","","44","142","26db806433cdccaf924f3a1cba4199e5.png","2021-07-08 17:27:32",""),
("207","","4","134","44","142","3bbf73dda4d92bb7548a717483ecc21d.png","2021-07-08 17:27:32",""),
("208","","2","","44","143","713f0608bdcc1698d71a96431fbdeeec.png","2021-07-08 17:37:22",""),
("209","","7","","44","143","f0041b508e742ea27ebebadc95d87665.pdf","2021-07-08 17:37:22",""),
("210","","7","","44","143","c2d61467d790309294d61df47b567eec.pdf","2021-07-08 17:37:22",""),
("211","","7","","44","143","81761301d8b1dc8ac1193e413c082f57.pdf","2021-07-08 17:37:22",""),
("212","","3","","44","143","9ff3bc6559bc7da3b8b4f81d93f7edd4.png","2021-07-08 17:37:22",""),
("213","","8","","44","143","1cb17a46047e8b8c0e29716a685e8366.png","2021-07-08 17:37:22",""),
("214","","2","","44","144","9397d64b6aa15be8fdb3d48b85d636a4.png","2021-07-12 16:41:08",""),
("215","","7","","44","144","0d8f5f1b72d998fa2e7319027edd2b6c.pdf","2021-07-12 16:41:08",""),
("216","","7","","44","144","cfa719e40e58fdfc3fea7e8a6dacaedd.pdf","2021-07-12 16:41:08",""),
("217","","7","","44","144","637f1a8f1a5d82a3139ec5c522f16026.pdf","2021-07-12 16:41:08",""),
("218","","3","","44","144","55050d563a93a2428f53f56c08e19f8d.png","2021-07-12 16:41:08",""),
("219","","8","","44","144","140bc5ea545e4d3a59ed64a5eb3c1bdf.png","2021-07-12 16:41:08",""),
("220","","4","136","44","144","b159029281a1d213ef4e02cc7dab43e1.png","2021-07-12 16:41:08",""),
("221","","7","","44","145","f9bc54bfa8e2551930d8a11968e807c7.pdf","2021-07-12 16:44:34",""),
("222","","7","","44","145","204c86fa9cabcf12ada28a9be0f74eaf.pdf","2021-07-12 16:44:34",""),
("223","","4","137","44","145","977332b306fd4abb74f499ca07504e1a.png","2021-07-12 16:44:34",""),
("224","","7","","44","146","417f0ca62ef952b8a48a99289851d743.pdf","2021-07-12 16:46:32","");



DROP TABLE IF EXISTS domaine;

CREATE TABLE `domaine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO domaine VALUES("1","Mon domaine");



DROP TABLE IF EXISTS evaluation;

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_debut` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  `interimaire_id` int(11) DEFAULT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  `note_generale` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO evaluation VALUES("1","evaluer objectif","2021-11-05 00:00:00","2021-01-06 00:00:00","6","ceci est un commentaire","14"),
("2","njj","2021-08-19 00:00:00","2021-08-31 00:00:00","6","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj ","9"),
("3","Evaluation","2021-08-12 00:00:00","2021-08-25 00:00:00","7","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj ","18"),
("4","evaluation par semaine","2021-06-01 00:00:00","2021-10-31 00:00:00","25","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD","11"),
("5","evaluer","2021-04-08 00:00:00","2021-08-04 00:00:00","21","ceci est un commentaire","8"),
("6","evaluer","2021-06-01 00:00:00","2021-10-31 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD","12"),
("7","evaluation","2021-04-07 00:00:00","2021-07-12 00:00:00","40","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj ","15"),
("8","evaluer","2021-06-01 00:00:00","2021-12-31 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD HQDGHJJQ DQJIJIQJ","16"),
("9","evaluer objectif","2021-11-05 00:00:00","2021-01-06 00:00:00","6","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD","14"),
("10","njj","2021-08-19 00:00:00","2021-08-31 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj ","9"),
("11","Evaluation","2021-08-12 00:00:00","2021-08-25 00:00:00","7","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj ","18"),
("12","evaluation par semaine","2021-06-01 00:00:00","2021-10-31 00:00:00","25","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD","11"),
("13","evaluer","2021-04-08 00:00:00","2021-08-04 00:00:00","39","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh ","8"),
("14","evaluer","2021-06-01 00:00:00","2021-10-31 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD","12"),
("15","evaluation","2021-04-07 00:00:00","2021-07-12 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj ","15"),
("16","evaluer","2021-06-01 00:00:00","2021-12-31 00:00:00","21","gdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JDgdqjh djhqdj kjdqjj jJDJ sjjzk HDJ Sjj shJJJ SJjkjJKS jsjdjij sJJjj sjjdjd ddJJD HDHDJZ JD HQDGHJJQ DQJIJIQJ","16"),
("17","dfgh","2020-02-02 00:00:00","2021-02-02 00:00:00","11","ghjfhgjhjghjhjhjhjbh","22"),
("18","dfgh","2020-02-02 00:00:00","2021-02-02 00:00:00","11","hgfgfgfgkfgirgiruehur","22"),
("19","dfgh","2020-02-02 00:00:00","2021-02-02 00:00:00","11","1","22"),
("20","","","","","","0"),
("21","","2021-08-09 08:57:31","2021-08-09 08:57:31","21","","0"),
("22","","2021-08-09 12:23:52","2021-08-09 12:23:52","32","","13"),
("23","","2021-08-12 15:44:58","2021-08-12 15:44:58","25","","42"),
("24","angular","2021-08-10 00:00:00","2021-08-22 00:00:00","25","","8"),
("25","ionic","2021-08-03 00:00:00","2021-08-29 00:00:00","25","","7"),
("26","symfony","2021-08-03 00:00:00","2021-08-28 00:00:00","25","","17"),
("27","api rest","2021-08-03 00:00:00","2021-08-08 00:00:00","25","","7"),
("28","","2021-08-16 08:15:28","2021-08-16 08:15:28","25","","12"),
("29","flutter","2021-08-03 00:00:00","2021-08-15 00:00:00","25","yes all jfhsjj","15");



DROP TABLE IF EXISTS fonction;

CREATE TABLE `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO fonction VALUES("1","Informaticien"),
("2","Menagere");



DROP TABLE IF EXISTS groupe;

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_notification_id` int(11) DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4B98C21182E09F0` (`type_notification_id`),
  CONSTRAINT `FK_4B98C21182E09F0` FOREIGN KEY (`type_notification_id`) REFERENCES `type_notification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO groupe VALUES("1","",""),
("2","1","[\"yih.l@uttuuu-sonatel.com\",\"fdf@hjhj.gg\",\"babacar.fall4@orange-sonatel.com\"]"),
("3","2","[\"ababacarfall23@gmail.com\",\"fds@fds.ds\",\"babacar.fall4@orange-sonatel.com\"]"),
("4","3","[\"ababacarfall23@gmail.com\",\"fds@fds.ds\",\"babacar.fall4@orange-sonatel.com\"]");



DROP TABLE IF EXISTS historique_action;

CREATE TABLE `historique_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `date_action` datetime NOT NULL,
  `actionneur_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8E8E2CCEA76ED395` (`user_id`),
  KEY `IDX_8E8E2CCE9D32F035` (`action_id`),
  KEY `IDX_8E8E2CCE4CDBBB4D` (`actionneur_id`),
  CONSTRAINT `FK_8E8E2CCE4CDBBB4D` FOREIGN KEY (`actionneur_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_8E8E2CCE9D32F035` FOREIGN KEY (`action_id`) REFERENCES `action` (`id`),
  CONSTRAINT `FK_8E8E2CCEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=720 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO historique_action VALUES("71","","17","2021-05-29 21:47:32","12"),
("72","2","10","2021-05-29 21:47:53","12"),
("73","12","6","2021-05-29 21:48:26","12"),
("74","30","5","2021-05-29 21:49:25","12"),
("75","","16","2021-05-29 21:50:01","12"),
("76","","18","2021-05-29 21:51:15","12"),
("77","","19","2021-05-29 21:51:27","12"),
("78","","20","2021-05-29 21:51:41","12"),
("79","","21","2021-05-29 21:51:55","12"),
("80","28","1","2021-05-29 21:53:20","12"),
("81","","37","2021-05-29 21:53:21","12"),
("82","1","4","2021-05-29 21:53:34","12"),
("83","","38","2021-05-29 21:53:48","12"),
("84","","39","2021-05-29 21:53:59","12"),
("85","","40","2021-05-29 21:54:20","12"),
("86","1","36","2021-05-29 21:54:35","12"),
("87","1","11","2021-05-29 21:55:36","12"),
("88","","32","2021-05-29 21:55:48","12"),
("89","9","15","2021-05-29 21:56:15","12"),
("90","","25","2021-05-29 21:57:24","12"),
("91","","23","2021-05-29 21:57:36","12"),
("92","","24","2021-05-29 21:57:58","12"),
("93","","22","2021-05-29 21:58:17","12"),
("94","","37","2021-05-31 09:40:48","12"),
("95","","37","2021-05-31 09:44:31","12"),
("96","29","1","2021-05-31 09:53:34","12"),
("97","","37","2021-05-31 09:53:34","12"),
("98","30","1","2021-05-31 09:57:51","12"),
("99","","37","2021-05-31 09:57:51","12"),
("100","31","5","2021-05-31 10:04:46","12"),
("101","31","1","2021-05-31 10:18:58","12"),
("102","","37","2021-05-31 10:18:58","12"),
("103","","37","2021-05-31 10:24:05","12"),
("104","","37","2021-05-31 10:26:46","12"),
("105","","32","2021-05-31 10:40:02","12"),
("106","","32","2021-05-31 10:40:22","12"),
("107","","32","2021-05-31 10:40:32","12"),
("108","32","5","2021-05-31 10:59:13","12"),
("109","","37","2021-05-31 12:12:07","12"),
("110","32","1","2021-05-31 12:21:20","12"),
("111","","37","2021-05-31 12:21:21","12"),
("112","33","5","2021-06-01 14:52:28","12"),
("113","","16","2021-06-01 22:00:04","12"),
("114","","16","2021-06-01 22:18:10","12"),
("115","","16","2021-06-01 22:19:27","12"),
("116","","16","2021-06-01 22:30:58","12"),
("117","","16","2021-06-01 22:31:46","12"),
("118","","18","2021-06-01 22:43:07","12"),
("119","","18","2021-06-01 22:43:34","12"),
("120","","18","2021-06-01 22:45:00","12"),
("121","","19","2021-06-01 22:45:58","12"),
("122","","19","2021-06-01 22:46:26","12"),
("123","","19","2021-06-01 22:46:33","12"),
("124","","19","2021-06-01 22:46:38","12"),
("125","","19","2021-06-01 22:46:44","12"),
("126","","19","2021-06-01 22:46:53","12"),
("127","","19","2021-06-01 22:46:59","12"),
("128","","19","2021-06-01 22:47:04","12"),
("129","","20","2021-06-01 22:47:52","12"),
("130","","39","2021-06-01 22:50:23","12"),
("131","","39","2021-06-01 22:58:59","12"),
("132","1","11","2021-06-01 23:07:22","12"),
("133","","30","2021-06-01 23:13:20","12"),
("134","1","1","2021-06-02 00:24:09","12"),
("135","","37","2021-06-02 00:24:15","12"),
("136","1","1","2021-06-02 00:33:04","12"),
("137","","37","2021-06-02 00:33:04","12"),
("138","","16","2021-06-02 10:19:43","12"),
("139","","16","2021-06-02 10:27:18","12"),
("140","","16","2021-06-02 10:27:51","12"),
("141","34","5","2021-06-02 10:47:33","12"),
("142","35","5","2021-06-02 10:52:07","12"),
("143","","30","2021-06-02 10:53:07","12"),
("144","","4","2021-06-02 10:58:42","12"),
("145","2","4","2021-06-02 11:00:09","12"),
("146","","16","2021-06-02 11:55:04","12"),
("147","","39","2021-06-02 11:58:32","12"),
("148","","17","2021-06-02 13:38:31","12"),
("149","","17","2021-06-02 13:42:00","12"),
("150","2","10","2021-06-02 13:43:52","12"),
("151","2","10","2021-06-02 13:46:34","12"),
("152","2","10","2021-06-02 13:46:55","12"),
("153","2","10","2021-06-02 13:49:38","12"),
("154","10","6","2021-06-02 13:51:24","12"),
("155","36","5","2021-06-02 14:04:18","12"),
("156","10","6","2021-06-02 14:05:50","12"),
("157","","18","2021-06-02 14:06:28","12"),
("158","","18","2021-06-02 14:06:42","12"),
("159","","18","2021-06-02 14:06:52","12"),
("160","","18","2021-06-02 14:07:01","12"),
("161","","19","2021-06-02 14:07:46","12"),
("162","","19","2021-06-02 14:08:22","12"),
("163","","19","2021-06-02 14:08:29","12"),
("164","","19","2021-06-02 14:08:37","12"),
("165","","19","2021-06-02 14:08:46","12"),
("166","","20","2021-06-02 14:09:03","12"),
("167","","21","2021-06-02 14:18:37","12"),
("168","","21","2021-06-02 14:19:41","12"),
("169","1","1","2021-06-02 14:24:32","12"),
("170","","37","2021-06-02 14:24:33","12"),
("171","2","4","2021-06-02 14:25:04","12"),
("172","","38","2021-06-02 14:31:50","12"),
("173","","38","2021-06-02 14:32:11","12"),
("174","","38","2021-06-02 14:32:41","12"),
("175","","38","2021-06-02 14:32:57","12"),
("176","","38","2021-06-02 14:33:18","12"),
("177","","38","2021-06-02 14:34:27","12"),
("178","","38","2021-06-02 14:35:41","12"),
("179","","38","2021-06-02 14:35:54","12"),
("180","","38","2021-06-02 14:39:02","12"),
("181","","39","2021-06-02 16:36:30","12"),
("182","","39","2021-06-02 16:36:45","12"),
("183","","39","2021-06-02 16:37:06","12"),
("184","","39","2021-06-02 16:44:16","12"),
("185","","39","2021-06-02 16:47:56","12"),
("186","","39","2021-06-02 16:48:12","12"),
("187","","39","2021-06-02 16:48:57","12"),
("188","","39","2021-06-02 17:22:35","12"),
("189","","39","2021-06-02 17:23:17","12"),
("190","","39","2021-06-02 17:23:40","12"),
("191","","40","2021-06-02 17:24:55","12"),
("192","","36","2021-06-02 17:25:41","12"),
("193","","11","2021-06-02 17:25:59","12"),
("194","","11","2021-06-02 17:26:07","12"),
("195","","32","2021-06-02 17:34:49","12"),
("196","","32","2021-06-02 17:35:06","12"),
("197","","32","2021-06-02 17:35:18","12"),
("198","","32","2021-06-02 17:35:24","12"),
("199","","32","2021-06-02 17:35:39","12"),
("200","","32","2021-06-02 17:35:51","12"),
("201","","32","2021-06-02 17:35:55","12"),
("202","","32","2021-06-02 17:36:01","12"),
("203","","32","2021-06-02 17:36:10","12"),
("204","","32","2021-06-02 17:36:27","12"),
("205","","32","2021-06-02 17:36:36","12"),
("206","","32","2021-06-02 17:37:09","12"),
("207","10","15","2021-06-02 17:38:23","12"),
("208","","25","2021-06-02 17:39:07","12"),
("209","","23","2021-06-02 17:39:26","12"),
("210","","24","2021-06-02 17:39:54","12"),
("211","","22","2021-06-02 17:40:19","12"),
("212","","30","2021-06-02 17:40:31","12"),
("213","","28","2021-06-02 17:41:15","12"),
("214","","30","2021-06-02 17:41:27","12"),
("215","","28","2021-06-02 17:41:45","12"),
("216","","37","2021-06-02 17:44:09","12"),
("217","","37","2021-06-02 17:45:40","12"),
("218","","37","2021-06-02 17:46:02","12"),
("219","","37","2021-06-02 17:47:09","12"),
("220","","37","2021-06-02 17:50:33","12"),
("221","37","5","2021-06-02 17:54:23","12"),
("222","","25","2021-06-02 18:03:32","12"),
("223","","25","2021-06-02 18:04:55","12"),
("224","","17","2021-06-03 10:19:44","37"),
("225","","16","2021-06-03 11:58:57","37"),
("226","","32","2021-06-03 12:38:07","37"),
("227","","32","2021-06-03 12:40:45","37"),
("228","","32","2021-06-03 12:40:53","37"),
("229","","32","2021-06-03 12:41:31","37"),
("230","","32","2021-06-03 12:56:52","37"),
("231","","32","2021-06-03 12:57:08","37"),
("232","","32","2021-06-03 12:57:19","37"),
("233","","32","2021-06-03 12:57:28","37"),
("234","","37","2021-06-03 13:08:29","37"),
("235","1","1","2021-06-03 13:40:45","37"),
("236","","37","2021-06-03 13:40:47","37"),
("237","","37","2021-06-03 14:04:54","37"),
("238","","37","2021-06-03 14:06:35","37"),
("239","","37","2021-06-03 14:11:25","37"),
("240","","37","2021-06-03 14:20:00","37"),
("241","","37","2021-06-03 14:26:24","37"),
("242","","37","2021-06-03 14:27:27","37"),
("243","","37","2021-06-03 14:29:05","37"),
("244","","37","2021-06-03 14:31:45","37"),
("245","","37","2021-06-03 14:32:53","37"),
("246","","37","2021-06-03 14:49:06","37"),
("247","","37","2021-06-03 14:51:01","37"),
("248","","37","2021-06-03 14:52:19","37"),
("249","","37","2021-06-04 10:29:09","37"),
("250","","37","2021-06-04 10:32:29","37"),
("251","","37","2021-06-04 10:39:44","37"),
("252","","37","2021-06-04 10:40:45","37"),
("253","3","15","2021-06-04 11:14:22","37"),
("254","","11","2021-06-04 11:34:58","37"),
("255","","11","2021-06-04 11:41:39","37"),
("256","","32","2021-06-04 11:44:30","37"),
("257","","32","2021-06-04 11:44:44","37"),
("258","","38","2021-06-05 21:16:34","12"),
("259","","38","2021-06-05 21:19:15","12"),
("260","","38","2021-06-05 21:20:48","12"),
("261","","38","2021-06-05 21:21:01","12"),
("262","","38","2021-06-05 21:21:14","12"),
("263","","38","2021-06-05 21:21:29","12"),
("264","","38","2021-06-05 21:21:52","12"),
("265","","39","2021-06-06 04:20:54","12"),
("266","","39","2021-06-06 04:21:23","12"),
("267","","39","2021-06-06 04:24:48","12"),
("268","","40","2021-06-06 04:44:36","12"),
("269","","40","2021-06-06 04:45:25","12"),
("270","","38","2021-06-06 04:49:00","12"),
("271","","38","2021-06-06 04:49:15","12"),
("272","","17","2021-06-06 18:13:26","12"),
("273","","17","2021-06-06 18:21:40","12"),
("274","","17","2021-06-06 18:26:11","12"),
("275","","17","2021-06-06 19:08:43","12"),
("276","","17","2021-06-06 19:09:19","12"),
("277","","17","2021-06-06 19:09:56","12"),
("278","","17","2021-06-06 19:10:12","12"),
("279","","17","2021-06-06 19:10:18","12"),
("280","","17","2021-06-06 19:10:22","12"),
("281","","17","2021-06-06 19:10:39","12"),
("282","","17","2021-06-06 19:31:08","12"),
("283","","17","2021-06-06 19:31:43","12"),
("284","","17","2021-06-06 19:32:30","12"),
("285","","17","2021-06-06 19:32:38","12"),
("286","","17","2021-06-06 19:32:45","12"),
("287","","17","2021-06-06 19:32:53","12"),
("288","","17","2021-06-06 19:33:22","12"),
("289","","17","2021-06-06 19:33:52","12"),
("290","","17","2021-06-06 19:34:14","12"),
("291","","17","2021-06-06 19:34:19","12"),
("292","","17","2021-06-06 19:40:30","12"),
("293","","17","2021-06-06 19:40:34","12"),
("294","","17","2021-06-06 19:40:47","12"),
("295","","17","2021-06-06 19:42:15","12"),
("296","","17","2021-06-06 19:44:39","12"),
("297","","17","2021-06-06 19:44:49","12"),
("298","","17","2021-06-06 19:44:53","12"),
("299","","17","2021-06-06 19:45:03","12"),
("300","","17","2021-06-06 19:45:08","12"),
("301","","38","2021-06-06 19:46:53","12"),
("302","","38","2021-06-06 19:47:43","12"),
("303","","38","2021-06-06 19:47:48","12"),
("304","","38","2021-06-06 19:47:53","12"),
("305","","38","2021-06-06 19:47:59","12"),
("306","","38","2021-06-06 19:48:09","12"),
("307","","38","2021-06-06 19:48:30","12"),
("308","","17","2021-06-06 19:51:32","12"),
("309","","17","2021-06-06 19:51:45","12"),
("310","","17","2021-06-06 19:51:50","12"),
("311","","38","2021-06-06 19:56:41","12"),
("312","","38","2021-06-06 19:57:15","12"),
("313","","38","2021-06-06 19:57:45","12"),
("314","","17","2021-06-06 19:57:57","12"),
("315","","39","2021-06-06 20:09:26","12"),
("316","","40","2021-06-06 20:15:25","12"),
("317","","30","2021-06-06 20:26:14","2"),
("318","","30","2021-06-06 20:26:50","2"),
("319","","30","2021-06-06 20:27:32","2"),
("320","","23","2021-06-06 20:33:46","2"),
("321","","23","2021-06-06 20:34:00","2"),
("322","","23","2021-06-06 20:34:07","2"),
("323","","20","2021-06-06 20:34:55","2"),
("324","","20","2021-06-06 20:39:22","2"),
("325","","20","2021-06-06 20:39:46","2"),
("326","","20","2021-06-06 20:39:54","2"),
("327","","20","2021-06-06 20:41:24","2"),
("328","","20","2021-06-06 20:41:41","2"),
("329","","32","2021-06-07 10:22:39","2"),
("330","","32","2021-06-07 10:23:44","2"),
("331","","32","2021-06-07 10:42:17","2"),
("332","","37","2021-06-08 11:12:12","12"),
("333","","37","2021-06-08 11:12:14","12"),
("334","","37","2021-06-08 11:26:11","12"),
("335","","37","2021-06-08 11:26:12","12"),
("336","","37","2021-06-08 11:31:43","12"),
("337","","37","2021-06-08 11:31:43","12"),
("338","","37","2021-06-08 11:34:40","12"),
("339","","37","2021-06-08 11:34:40","12"),
("340","","37","2021-06-08 11:37:01","12"),
("341","","37","2021-06-08 11:37:02","12"),
("342","","37","2021-06-08 11:48:58","12"),
("343","","37","2021-06-08 11:49:00","12"),
("344","","37","2021-06-08 11:50:05","12"),
("345","","37","2021-06-08 11:50:06","12"),
("346","","37","2021-06-08 12:14:05","12"),
("347","","37","2021-06-08 12:14:07","12"),
("348","","37","2021-06-08 12:15:01","12"),
("349","","37","2021-06-08 12:15:01","12"),
("350","","37","2021-06-08 12:29:34","12"),
("351","","37","2021-06-08 12:29:36","12"),
("352","","37","2021-06-08 17:31:17","12"),
("353","","37","2021-06-08 17:31:19","12"),
("354","","37","2021-06-08 17:32:02","12"),
("355","","37","2021-06-08 17:32:02","12"),
("356","","37","2021-06-10 12:10:29","12"),
("357","","37","2021-06-10 12:10:30","12"),
("358","","","2021-06-10 12:24:17","12"),
("359","","","2021-06-10 12:38:47","12"),
("360","","","2021-06-10 12:40:26","12"),
("361","","","2021-06-10 13:54:29","12"),
("362","","","2021-06-10 13:54:40","12"),
("363","37","1","2021-06-10 16:38:07","12"),
("364","","37","2021-06-10 16:38:15","12"),
("365","","","2021-06-11 10:49:52","12"),
("366","","38","2021-06-11 12:59:18","12"),
("367","","38","2021-06-11 13:09:16","12"),
("368","","38","2021-06-11 13:09:40","12"),
("369","","38","2021-06-11 13:11:09","12"),
("370","","38","2021-06-11 13:11:13","12"),
("371","","38","2021-06-11 13:13:55","12"),
("372","","38","2021-06-11 13:16:13","12"),
("373","","39","2021-06-11 13:26:12","12"),
("374","","40","2021-06-11 13:32:37","12"),
("375","","17","2021-06-11 13:46:28","12"),
("376","","17","2021-06-11 13:46:45","12"),
("377","","17","2021-06-11 13:47:20","12"),
("378","","16","2021-06-11 14:03:33","12"),
("379","","16","2021-06-11 14:04:18","12"),
("380","","32","2021-06-11 14:20:03","12"),
("381","","32","2021-06-11 14:20:49","12"),
("382","","20","2021-06-11 14:32:41","12"),
("383","","30","2021-06-11 14:42:20","12"),
("384","","32","2021-06-14 10:42:14","12"),
("385","","32","2021-06-14 10:42:30","12"),
("386","","32","2021-06-14 10:43:12","12"),
("387","","32","2021-06-14 10:44:14","12"),
("388","","32","2021-06-14 10:44:31","12"),
("389","","32","2021-06-14 10:44:42","12"),
("390","","32","2021-06-14 10:51:09","12"),
("391","","32","2021-06-14 10:52:33","12"),
("392","","32","2021-06-14 10:55:27","12"),
("393","","32","2021-06-14 11:00:27","12"),
("394","","32","2021-06-14 11:02:40","12"),
("395","","32","2021-06-14 12:22:35","12"),
("396","","32","2021-06-14 12:22:53","12"),
("397","","32","2021-06-14 12:23:58","12"),
("398","","32","2021-06-14 12:31:04","12"),
("399","","32","2021-06-14 12:31:30","12"),
("400","","32","2021-06-14 12:31:56","12"),
("401","","32","2021-06-14 12:32:07","12"),
("402","","32","2021-06-14 12:34:44","12"),
("403","","32","2021-06-14 12:37:07","12"),
("404","38","5","2021-06-14 13:16:13","12"),
("405","39","5","2021-06-14 13:24:39","12"),
("406","40","5","2021-06-14 13:26:14","12"),
("407","41","5","2021-06-14 13:28:01","12"),
("408","42","5","2021-06-14 13:30:41","12"),
("409","2","10","2021-06-14 13:35:10","12"),
("410","39","10","2021-06-14 13:35:25","12"),
("411","39","10","2021-06-14 13:37:44","12"),
("412","39","10","2021-06-14 13:38:05","12"),
("413","","4","2021-06-14 13:46:23","12"),
("414","","","2021-06-14 16:38:05","12"),
("415","","","2021-06-14 16:39:40","12"),
("416","","4","2021-06-15 13:12:02","12"),
("417","","4","2021-06-15 13:15:49","12"),
("418","","4","2021-06-15 13:16:21","12"),
("419","","4","2021-06-15 13:17:12","12"),
("420","","4","2021-06-15 13:19:05","12"),
("421","","1","2021-06-15 14:13:12","12"),
("422","","37","2021-06-15 14:13:14","12"),
("423","","1","2021-06-15 14:30:49","12"),
("424","","37","2021-06-15 14:30:49","12"),
("425","","1","2021-06-15 14:41:55","12"),
("426","","37","2021-06-15 14:41:58","12"),
("427","","1","2021-06-15 14:42:49","12"),
("428","","37","2021-06-15 14:42:49","12"),
("429","","1","2021-06-15 16:51:06","12"),
("430","","37","2021-06-15 16:51:17","12"),
("431","","1","2021-06-15 16:57:55","12"),
("432","","37","2021-06-15 16:57:56","12"),
("433","","1","2021-06-15 17:00:49","12"),
("434","","37","2021-06-15 17:00:51","12"),
("435","","16","2021-06-15 17:35:52","12"),
("436","","38","2021-06-15 18:15:31","12"),
("437","","38","2021-06-15 18:21:51","12"),
("438","","38","2021-06-15 18:21:55","12"),
("439","43","5","2021-06-15 18:31:25","12"),
("442","","1","2021-06-16 11:36:54","12"),
("443","","37","2021-06-16 11:36:55","12"),
("444","","1","2021-06-16 11:38:28","12"),
("445","","37","2021-06-16 11:38:28","12"),
("446","","1","2021-06-17 10:05:46","12"),
("447","","37","2021-06-17 10:05:51","12"),
("448","","1","2021-06-17 10:13:37","12"),
("449","","37","2021-06-17 10:13:37","12"),
("450","","1","2021-06-17 11:16:31","12"),
("451","","37","2021-06-17 11:16:32","12"),
("452","","1","2021-06-17 11:17:39","12"),
("453","","37","2021-06-17 11:17:39","12"),
("454","","1","2021-06-17 11:21:16","12"),
("455","","37","2021-06-17 11:21:18","12"),
("456","","1","2021-06-17 11:21:43","12"),
("457","","37","2021-06-17 11:21:44","12"),
("458","","1","2021-06-17 11:23:19","12"),
("459","","37","2021-06-17 11:23:20","12"),
("460","","1","2021-06-17 12:58:31","12"),
("461","","37","2021-06-17 12:58:33","12"),
("462","1","10","2021-06-17 13:45:47","12"),
("463","1","10","2021-06-17 13:47:12","12"),
("464","1","10","2021-06-17 13:47:50","12"),
("465","1","10","2021-06-17 13:52:16","12"),
("466","1","10","2021-06-17 13:58:09","12"),
("467","13","11","2021-06-18 11:14:08","12"),
("468","13","11","2021-06-18 11:18:29","12"),
("469","","40","2021-06-18 11:39:26","12"),
("470","","40","2021-06-18 11:43:25","12"),
("471","","30","2021-06-18 11:46:42","12"),
("472","","38","2021-06-18 11:49:37","12"),
("473","","1","2021-06-18 15:18:57","12"),
("474","","37","2021-06-18 15:19:02","12"),
("475","43","1","2021-06-18 15:20:25","12"),
("476","","37","2021-06-18 15:20:25","12"),
("477","43","1","2021-06-21 10:59:41","12"),
("478","","37","2021-06-21 10:59:51","12"),
("479","","1","2021-06-21 11:02:22","12"),
("480","","37","2021-06-21 11:02:22","12"),
("481","43","1","2021-06-21 11:03:19","12"),
("482","","37","2021-06-21 11:03:19","12"),
("483","3","4","2021-06-22 13:20:25","12"),
("484","14","4","2021-06-22 13:40:18","12"),
("485","14","4","2021-06-22 13:41:20","12"),
("486","14","4","2021-06-22 13:42:49","12"),
("487","","1","2021-06-22 16:48:44","12"),
("488","","37","2021-06-22 16:48:55","12"),
("489","","1","2021-06-23 17:34:14","12"),
("490","","37","2021-06-23 17:34:15","12"),
("491","","1","2021-06-23 17:46:00","12"),
("492","","37","2021-06-23 17:46:01","12"),
("493","","1","2021-06-23 17:52:48","12"),
("494","","37","2021-06-23 17:52:49","12"),
("495","","1","2021-06-23 18:10:22","12"),
("496","","37","2021-06-23 18:10:22","12"),
("497","","1","2021-06-23 18:13:14","12"),
("498","","37","2021-06-23 18:13:14","12"),
("499","","36","2021-06-23 22:26:44","12"),
("500","","11","2021-06-23 22:33:39","12"),
("501","","11","2021-06-23 22:44:22","12"),
("502","14","4","2021-06-24 11:00:32","12"),
("503","14","4","2021-06-24 11:09:07","12"),
("504","14","4","2021-06-24 11:10:03","12"),
("505","14","4","2021-06-24 11:10:43","12"),
("506","14","4","2021-06-24 11:14:28","12"),
("507","","4","2021-06-24 11:19:15","12"),
("508","","4","2021-06-24 11:22:27","12"),
("509","","4","2021-06-24 11:23:24","12"),
("510","","4","2021-06-24 11:24:03","12"),
("511","","4","2021-06-24 11:25:18","12"),
("512","","4","2021-06-24 11:25:53","12"),
("513","","4","2021-06-24 11:27:15","12"),
("514","","4","2021-06-24 11:28:28","12"),
("515","","4","2021-06-24 11:29:28","12"),
("516","","1","2021-06-24 12:24:46","12"),
("517","","37","2021-06-24 12:24:55","12"),
("518","","36","2021-06-24 12:34:02","12"),
("519","","36","2021-06-24 12:44:48","12"),
("520","","36","2021-06-24 12:45:32","12"),
("531","","1","2021-06-24 17:57:06","44"),
("532","","37","2021-06-24 17:57:06","44"),
("533","","1","2021-06-24 18:20:50","44"),
("534","","37","2021-06-24 18:20:50","44"),
("535","","1","2021-06-24 18:23:53","44"),
("536","","37","2021-06-24 18:23:53","44"),
("537","","1","2021-06-24 18:33:39","44"),
("538","","37","2021-06-24 18:33:40","44"),
("539","","1","2021-06-24 22:28:04","46"),
("540","","37","2021-06-24 22:28:08","46"),
("541","","1","2021-06-24 22:32:14","46"),
("542","","37","2021-06-24 22:32:15","46"),
("543","","4","2021-06-24 22:34:28","46"),
("544","","4","2021-06-24 22:35:44","46"),
("545","","4","2021-06-24 22:37:32","46"),
("546","","4","2021-06-25 00:13:15","46"),
("547","","4","2021-06-25 00:14:37","46"),
("548","","4","2021-06-25 00:17:21","46"),
("549","","4","2021-06-25 00:17:59","46"),
("550","","4","2021-06-25 00:18:35","46"),
("551","","4","2021-06-25 00:19:44","46"),
("552","","4","2021-06-25 00:21:09","46"),
("553","","4","2021-06-25 00:24:47","46"),
("554","","4","2021-06-25 00:26:18","46"),
("555","","36","2021-06-25 00:55:17","46"),
("556","","11","2021-06-25 02:42:36","46"),
("557","","11","2021-06-25 02:42:55","46"),
("558","","11","2021-06-25 02:44:41","46"),
("559","","11","2021-06-25 02:46:38","46"),
("560","","11","2021-06-25 09:59:18","46"),
("561","","11","2021-06-25 10:13:34","46"),
("562","","11","2021-06-25 10:17:08","46"),
("563","","11","2021-06-25 10:18:30","46"),
("564","","11","2021-06-25 10:24:34","46"),
("565","","11","2021-06-25 10:26:49","46"),
("566","","11","2021-06-25 10:27:54","46"),
("567","","11","2021-06-25 10:33:34","46"),
("568","","1","2021-06-27 16:07:59","46"),
("569","","37","2021-06-27 16:08:13","46"),
("570","","4","2021-06-27 16:12:29","46"),
("571","","11","2021-06-27 16:14:40","46"),
("572","","11","2021-06-27 16:15:04","46"),
("573","46","36","2021-06-28 10:14:29","46"),
("574","","40","2021-06-28 10:36:20","46"),
("575","","40","2021-06-28 10:44:12","46"),
("576","","1","2021-06-28 11:24:07","46"),
("577","","37","2021-06-28 11:24:10","46"),
("578","","32","2021-06-28 12:48:37","46"),
("579","","32","2021-06-28 13:25:55","46"),
("580","","32","2021-06-28 13:26:15","46"),
("581","","32","2021-06-28 13:26:50","46"),
("582","","32","2021-06-28 13:27:20","46"),
("583","","32","2021-06-28 13:38:05","46"),
("584","47","5","2021-06-28 13:48:13","46"),
("585","","32","2021-06-28 13:55:59","46"),
("586","","32","2021-06-28 13:58:04","46"),
("587","","32","2021-06-28 13:58:24","46"),
("588","","32","2021-06-28 14:01:56","46"),
("589","","32","2021-06-28 14:02:05","46"),
("590","","40","2021-06-28 14:03:18","46"),
("591","47","15","2021-06-28 14:08:29","46"),
("592","47","15","2021-06-28 14:15:54","46"),
("593","47","15","2021-06-28 14:16:07","46"),
("594","47","15","2021-06-28 14:17:23","46"),
("595","47","15","2021-06-28 14:17:28","46"),
("596","47","15","2021-06-28 14:19:21","46"),
("597","47","15","2021-06-28 14:20:55","46"),
("598","","40","2021-06-28 16:37:00","46"),
("599","","40","2021-06-28 16:46:05","44"),
("600","","1","2021-06-28 17:52:11","46"),
("601","","37","2021-06-28 17:52:11","46"),
("602","","1","2021-06-29 11:18:35","46"),
("603","","37","2021-06-29 11:18:40","46"),
("604","","1","2021-06-29 11:23:50","46"),
("605","","37","2021-06-29 11:23:50","46"),
("606","","1","2021-06-29 11:32:36","46"),
("607","","37","2021-06-29 11:32:36","46"),
("608","48","5","2021-06-29 18:12:17","44"),
("609","46","11","2021-06-30 13:55:23","44"),
("610","46","11","2021-06-30 13:56:50","44"),
("611","","4","2021-07-01 09:47:56","44"),
("613","46","11","2021-07-01 12:51:48","44"),
("614","46","11","2021-07-01 12:54:13","44"),
("615","46","11","2021-07-01 12:59:56","44"),
("616","46","11","2021-07-01 13:00:05","44"),
("617","46","11","2021-07-01 13:01:32","44"),
("618","46","11","2021-07-01 13:02:01","44"),
("619","","1","2021-07-01 17:09:48","44"),
("620","","37","2021-07-01 17:09:53","44"),
("621","","1","2021-07-01 17:11:19","44"),
("622","","37","2021-07-01 17:11:19","44"),
("623","","1","2021-07-01 17:13:47","44"),
("624","","37","2021-07-01 17:13:47","44"),
("625","","1","2021-07-01 17:35:39","44"),
("626","","37","2021-07-01 17:35:40","44"),
("627","","1","2021-07-01 17:50:32","44"),
("628","","37","2021-07-01 17:50:32","44"),
("629","","1","2021-07-01 18:09:37","44"),
("630","","37","2021-07-01 18:09:37","44"),
("631","","1","2021-07-01 18:10:29","44"),
("632","","37","2021-07-01 18:10:30","44"),
("633","","1","2021-07-01 18:11:10","44"),
("634","","37","2021-07-01 18:11:10","44"),
("635","","1","2021-07-01 23:15:24","46"),
("636","","37","2021-07-01 23:15:26","46"),
("637","","1","2021-07-01 23:16:43","46"),
("638","","37","2021-07-01 23:16:43","46"),
("639","46","4","2021-07-02 13:24:26","46"),
("640","48","4","2021-07-02 13:27:45","46"),
("641","46","4","2021-07-02 13:28:15","46"),
("642","46","4","2021-07-02 13:51:47","46"),
("643","","1","2021-07-02 13:54:20","46"),
("644","","37","2021-07-02 13:54:24","46"),
("645","","4","2021-07-02 13:55:25","46"),
("646","","4","2021-07-02 14:03:14","46"),
("647","","4","2021-07-02 14:05:15","46"),
("648","","4","2021-07-02 14:05:40","46"),
("649","","4","2021-07-02 14:07:47","46"),
("650","","4","2021-07-06 12:27:19","44"),
("651","","4","2021-07-06 12:34:58","44"),
("652","","4","2021-07-06 12:37:04","44"),
("653","","16","2021-07-06 17:54:14","44"),
("654","","16","2021-07-06 18:13:17","44"),
("655","","16","2021-07-06 18:15:42","44"),
("656","","16","2021-07-06 18:17:13","44"),
("657","","16","2021-07-06 18:17:40","44"),
("658","","16","2021-07-06 18:18:00","44"),
("659","","16","2021-07-06 18:18:28","44"),
("660","","16","2021-07-06 18:20:08","44"),
("661","50","5","2021-07-06 18:25:20","44"),
("662","","1","2021-07-07 11:01:08","44"),
("663","","37","2021-07-07 11:01:13","44"),
("664","","1","2021-07-07 11:02:41","44"),
("665","","37","2021-07-07 11:02:42","44"),
("666","","1","2021-07-07 12:27:29","44"),
("667","","37","2021-07-07 12:27:29","44"),
("668","","1","2021-07-07 12:28:20","44"),
("669","","37","2021-07-07 12:28:20","44"),
("670","","1","2021-07-08 11:05:45","44"),
("671","","37","2021-07-08 11:05:46","44"),
("672","","1","2021-07-08 11:12:57","44"),
("673","","37","2021-07-08 11:12:57","44"),
("674","","1","2021-07-08 12:08:51","44"),
("675","","37","2021-07-08 12:08:51","44"),
("676","","1","2021-07-08 12:11:19","44"),
("677","","37","2021-07-08 12:11:19","44"),
("678","","1","2021-07-08 12:15:41","44"),
("679","","37","2021-07-08 12:15:42","44"),
("680","","1","2021-07-08 12:17:41","44"),
("681","","37","2021-07-08 12:17:41","44"),
("682","","1","2021-07-08 12:24:32","44"),
("683","","37","2021-07-08 12:24:32","44"),
("684","","1","2021-07-08 12:25:35","44"),
("685","","37","2021-07-08 12:25:35","44"),
("686","","1","2021-07-08 12:27:07","44"),
("687","","37","2021-07-08 12:27:07","44"),
("688","","1","2021-07-08 12:32:13","44"),
("689","","37","2021-07-08 12:32:13","44"),
("690","","1","2021-07-08 13:04:35","44"),
("691","","37","2021-07-08 13:04:36","44"),
("692","","1","2021-07-08 13:06:13","44"),
("693","","37","2021-07-08 13:06:13","44"),
("694","","1","2021-07-08 13:08:10","44"),
("695","","37","2021-07-08 13:08:10","44"),
("696","","1","2021-07-08 17:27:33","44"),
("697","","37","2021-07-08 17:27:37","44"),
("698","","1","2021-07-08 17:37:22","44"),
("699","","37","2021-07-08 17:37:22","44"),
("700","","32","2021-07-12 10:54:06","46"),
("701","","32","2021-07-12 10:54:27","46"),
("702","","32","2021-07-12 10:54:49","46"),
("703","","32","2021-07-12 10:54:59","46"),
("704","","32","2021-07-12 10:55:56","46"),
("705","","39","2021-07-12 14:00:00","44"),
("706","","39","2021-07-12 14:02:11","44"),
("707","","39","2021-07-12 14:07:21","44"),
("708","","39","2021-07-12 14:08:39","44"),
("709","","39","2021-07-12 14:13:52","44"),
("710","","39","2021-07-12 16:36:12","44"),
("711","","39","2021-07-12 16:37:15","44"),
("712","","1","2021-07-12 16:41:08","44"),
("713","","37","2021-07-12 16:41:15","44"),
("714","","1","2021-07-12 16:44:34","44"),
("715","","37","2021-07-12 16:44:34","44"),
("716","","1","2021-07-12 16:46:33","44"),
("717","","37","2021-07-12 16:46:33","44"),
("718","","32","2021-07-26 17:04:28","1"),
("719","","32","2021-07-26 17:10:19","1");



DROP TABLE IF EXISTS historique_contrat;

CREATE TABLE `historique_contrat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contrat_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_220C6EC1823061F` (`contrat_id`),
  CONSTRAINT `FK_220C6EC1823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS historique_interimaire;

CREATE TABLE `historique_interimaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contrat_id` int(11) DEFAULT NULL,
  `traitement_id` int(11) DEFAULT NULL,
  `date_historique` datetime NOT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B239DDF41823061F` (`contrat_id`),
  KEY `IDX_B239DDF4DDA344B6` (`traitement_id`),
  CONSTRAINT `FK_B239DDF41823061F` FOREIGN KEY (`contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_B239DDF4DDA344B6` FOREIGN KEY (`traitement_id`) REFERENCES `traitement` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS historique_pass;

CREATE TABLE `historique_pass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `password` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4A29F3C6A76ED395` (`user_id`),
  CONSTRAINT `FK_4A29F3C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS interimaire;

CREATE TABLE `interimaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie_id` int(11) DEFAULT NULL,
  `profil_id` int(11) NOT NULL,
  `blocked_user_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `agence_id` int(11) NOT NULL,
  `salaire_brute` int(11) NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_contrat_id` int(11) DEFAULT NULL,
  `societe_id` int(11) DEFAULT NULL,
  `personne_id` int(11) DEFAULT NULL,
  `poste` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6B97D3921EBCBB63` (`blocked_user_id`),
  UNIQUE KEY `UNIQ_6B97D392A76ED395` (`user_id`),
  UNIQUE KEY `UNIQ_6B97D392C798CF6D` (`current_contrat_id`),
  KEY `IDX_6B97D392BCF5E72D` (`categorie_id`),
  KEY `IDX_6B97D392275ED078` (`profil_id`),
  KEY `IDX_6B97D392D725330D` (`agence_id`),
  KEY `IDX_6B97D392FCF77503` (`societe_id`),
  KEY `IDX_6B97D392A21BD112` (`personne_id`),
  CONSTRAINT `FK_6B97D3921EBCBB63` FOREIGN KEY (`blocked_user_id`) REFERENCES `blocked_user` (`id`),
  CONSTRAINT `FK_6B97D392275ED078` FOREIGN KEY (`profil_id`) REFERENCES `profil` (`id`),
  CONSTRAINT `FK_6B97D392A21BD112` FOREIGN KEY (`personne_id`) REFERENCES `personne` (`id`),
  CONSTRAINT `FK_6B97D392A76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_6B97D392BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  CONSTRAINT `FK_6B97D392C798CF6D` FOREIGN KEY (`current_contrat_id`) REFERENCES `contrat` (`id`),
  CONSTRAINT `FK_6B97D392D725330D` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`),
  CONSTRAINT `FK_6B97D392FCF77503` FOREIGN KEY (`societe_id`) REFERENCES `societe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS manager;

CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notation;

CREATE TABLE `notation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectif_id` int(11) DEFAULT NULL,
  `evaluation_id` int(11) DEFAULT NULL,
  `note` double DEFAULT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_268BC95157D1AD4` (`objectif_id`),
  KEY `IDX_268BC95456C5646` (`evaluation_id`),
  CONSTRAINT `FK_268BC95157D1AD4` FOREIGN KEY (`objectif_id`) REFERENCES `objectif` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notification;

CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) NOT NULL,
  `type_notification_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_notif` datetime NOT NULL,
  `etat` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BF5476CA5CA839FE` (`interimaire_id`),
  KEY `IDX_BF5476CA182E09F0` (`type_notification_id`),
  KEY `IDX_BF5476CAA76ED395` (`user_id`),
  KEY `IDX_BF5476CA783E3463` (`manager_id`),
  CONSTRAINT `FK_BF5476CA182E09F0` FOREIGN KEY (`type_notification_id`) REFERENCES `type_notification` (`id`),
  CONSTRAINT `FK_BF5476CA5CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`),
  CONSTRAINT `FK_BF5476CA783E3463` FOREIGN KEY (`manager_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_BF5476CAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO notification VALUES("1","8","1","ijkn","jjl","2021-05-25 14:18:04","0","12","12"),
("2","8","1","ijkn","ijjjjjjjjjjjjjjjjjj","2021-05-25 14:18:04","0","17",""),
("3","8","1","jjjj","pppp","2021-05-25 16:25:07","1","6",""),
("4","8","1","jjjj","pppp","2021-05-25 16:46:41","0","",""),
("5","8","1","jjjj","pppp","2021-05-26 13:54:28","0","2","3"),
("6","8","1","jjjj","pppp","2021-05-26 13:56:41","0","2","3"),
("7","8","1","jjjj","pppp","2021-05-26 13:58:11","0","1","3"),
("8","8","1","jjjj","pppp","2021-05-26 13:58:11","0","2","3"),
("9","8","1","jjjj","pppp","2021-05-26 14:03:20","0","1","3"),
("10","8","1","jjjj","pppp","2021-05-26 14:03:20","0","2","3"),
("11","8","1","jjjj","pppp","2021-05-27 09:59:38","0","1","3"),
("12","8","1","jjjj","pppp","2021-05-27 09:59:40","0","2","3"),
("13","8","1","jjjj","pppp","2021-05-27 17:23:04","0","1","3"),
("14","8","1","jjjj","pppp","2021-05-27 17:23:04","0","2","3"),
("15","8","1","Demande de Demande","description","2021-05-29 18:35:53","0","2","2"),
("16","8","1","Demande de Demande","description","2021-05-29 18:39:41","0","2","2"),
("17","8","1","Demande de Demande","description","2021-05-29 18:41:46","0","2","2"),
("18","8","1","Demande de Demande","description","2021-05-29 19:27:44","0","2","2"),
("19","44","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-29 20:13:00","0","","1"),
("20","45","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-29 21:53:20","0","","1"),
("21","8","1","Demande de Demande","description","2021-05-31 09:40:43","0","2","2"),
("22","8","1","Demande de Demande","Demande de conge de 2 jours","2021-05-31 09:44:30","0","2","2"),
("23","46","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-31 09:53:34","0","","1"),
("24","47","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-31 09:57:51","0","","1"),
("25","48","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-31 10:18:58","0","","1"),
("26","8","1","Demande de Demande","Demande de conge de 2 jours","2021-05-31 10:24:04","1","12","12"),
("27","8","1","Demande de Demande","Demande de conge de 2 jours","2021-05-31 10:26:46","0","2","2"),
("28","10","1","Demande de Demande","Demande de conge de 2 jours","2021-05-31 12:12:06","0","2","1"),
("29","49","2","Ajout d\'interimaire","L\'interimaire Moussa Diop à été ajouté à l\'agence Agence 1","2021-05-31 12:21:20","0","","1"),
("30","50","2","Ajout d\'interimaire","L\'interimaire ko son à été ajouté à l\'agence Agence 1","2021-06-02 00:24:09","0","","1"),
("31","51","2","Ajout d\'interimaire","L\'interimaire ko son à été ajouté à l\'agence Agence 1","2021-06-02 00:33:04","0","","1"),
("32","52","2","Ajout d\'interimaire","L\'interimaire ko son à été ajouté à l\'agence Agence 1","2021-06-02 14:24:33","0","","1"),
("33","10","1","Demande de Demande","description","2021-06-02 17:44:07","0","1","1"),
("34","10","1","Demande de Demande","description","2021-06-02 17:45:40","0","1","1"),
("35","10","1","Demande de Demande","description","2021-06-02 17:46:02","0","1","1"),
("36","10","1","Demande de Demande","description","2021-06-02 17:47:09","0","1","1"),
("37","10","1","Demande de Demande","description","2021-06-02 17:50:33","0","1","1"),
("38","10","1","Demande de Demande","description","2021-06-03 13:08:27","0","1","1"),
("39","53","2","Ajout d\'interimaire","L\'interimaire ko son à été ajouté à l\'agence Agence 1","2021-06-03 13:40:46","0","","1"),
("40","10","1","Demande de Demande","description","2021-06-03 14:04:52","0","1","1"),
("41","10","1","Demande de Demande","description","2021-06-03 14:06:35","0","1","1"),
("42","10","1","Demande de Demande","description","2021-06-03 14:11:25","0","1","1"),
("43","10","1","Demande de Demande","description","2021-06-03 14:20:00","0","1","1"),
("44","10","1","Demande de Demande","description","2021-06-03 14:26:24","0","1","1"),
("45","10","1","Demande de Demande","description","2021-06-03 14:27:27","0","1","1"),
("46","10","1","Demande de Demande","description","2021-06-03 14:29:05","0","1","1"),
("47","10","1","Demande de Demande","description","2021-06-03 14:31:45","0","1","1"),
("48","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-03 14:32:53","0","1","1"),
("49","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-03 14:49:05","0","1","1"),
("50","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-03 14:51:01","0","1","1"),
("51","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-03 14:52:18","0","1","1"),
("52","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-04 10:29:05","0","1","1"),
("53","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-04 10:32:29","0","1","1"),
("54","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-04 10:39:43","0","1","1"),
("55","10","1","Demande de Demande","Je viens vous demander de bien m\'accorder un conges de 4 jours pour regler quelques problemes familiaux","2021-06-04 10:40:45","0","1","1"),
("56","10","3","Fin de contrat interimaire","Ababacar Fall","2021-06-08 11:12:11","0","","1"),
("57","11","3","Fin de contrat interimaire","tttr td","2021-06-08 11:12:14","0","","1"),
("58","10","3","Fin de contrat interimaire","Ababacar Fall","2021-06-08 11:26:09","0","","1"),
("59","11","3","Fin de contrat interimaire","tttr td","2021-06-08 11:26:12","0","","1"),
("60","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 11:31:43","0","","1"),
("61","11","3","Fin de contrat interimaire","Le contrat de  tttr td se termine dans 10 jours ","2021-06-08 11:31:43","0","","1"),
("62","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 11:34:39","0","","1"),
("63","11","3","Fin de contrat interimaire","Le contrat de  tttr td se termine dans 10 jours ","2021-06-08 11:34:40","0","","1"),
("64","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 11:37:01","0","","1"),
("65","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 11:37:02","0","","1"),
("66","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 11:48:55","0","","1"),
("67","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 11:49:00","0","","1"),
("68","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 11:50:03","0","","1"),
("69","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 11:50:06","0","","1"),
("70","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 12:14:02","0","","1"),
("71","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 12:14:06","0","","1"),
("72","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 12:15:01","0","","1"),
("73","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 12:15:01","0","","1"),
("74","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 12:29:27","0","","1"),
("75","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 12:29:36","0","","1"),
("76","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 17:31:14","0","","1"),
("77","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 17:31:19","0","","1"),
("78","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-08 17:32:02","0","","1"),
("79","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-08 17:32:02","0","","1"),
("80","10","3","Fin de contrat interimaire","Le contrat de  Ababacar Fall se termine dans 10 jours ","2021-06-10 12:10:26","0","","1"),
("81","11","3","Fin de contrat interimaire","Le contrat de  Mamadou Dieng se termine dans 10 jours ","2021-06-10 12:10:30","0","","1"),
("82","54","2","Ajout d\'interimaire","L\'interimaire tttr td à été ajouté à l\'agence Agence 1","2021-06-10 16:38:08","0","","1"),
("83","56","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agenceAgence 1","2021-06-15 14:13:13","0","","1"),
("84","57","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 14:30:49","0","","1"),
("85","58","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 14:41:56","0","","1"),
("86","59","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 14:42:49","0","","1"),
("87","60","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 16:51:06","0","","1"),
("88","61","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 16:57:56","0","","1"),
("89","62","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-15 17:00:51","0","","1"),
("90","64","","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-16 11:36:54","0","","1"),
("91","65","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-16 11:38:28","0","","1"),
("92","68","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 10:05:46","0","","2"),
("93","69","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 10:13:37","0","","2"),
("94","70","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 11:16:32","0","","2"),
("95","71","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 11:17:39","0","","2"),
("96","72","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 11:21:17","0","","2"),
("97","73","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 11:21:43","0","","2"),
("98","74","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 11:23:20","0","","2"),
("99","75","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-17 12:58:31","0","","2"),
("100","76","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-18 15:18:58","0","","2"),
("101","77","2","Ajout d\'interimaire","L\'interimaire Maissa Diop à été ajouté à l\'agence Agence 1","2021-06-18 15:20:25","0","","2"),
("102","78","2","Ajout d\'interimaire","L\'interimaire Maissa Diop à été ajouté à l\'agence Agence 1","2021-06-21 10:59:43","0","","2"),
("103","79","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence Agence 1","2021-06-21 11:02:22","0","","2"),
("104","80","2","Ajout d\'interimaire","L\'interimaire Maissa Diop à été ajouté à l\'agence Agence 1","2021-06-21 11:03:19","0","","2"),
("105","81","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-22 16:48:44","0","","2"),
("106","82","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-23 17:34:14","0","","2"),
("107","83","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-23 17:46:00","0","","2"),
("108","84","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-23 17:52:48","0","","2"),
("109","85","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-23 18:10:22","0","","2"),
("110","86","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-23 18:13:14","0","","2"),
("111","87","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence my agence","2021-06-24 12:24:47","0","","2"),
("117","93","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 17:57:06","0","",""),
("118","94","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 18:20:50","0","",""),
("119","95","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 18:23:53","0","",""),
("120","96","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 18:33:39","0","",""),
("121","97","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 22:28:05","0","",""),
("122","98","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-24 22:32:14","0","",""),
("123","106","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-27 16:08:02","0","",""),
("124","109","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-28 11:24:07","0","",""),
("125","110","2","Ajout d\'interimaire","Un nouvel interimaire a été ajouté a l\'agence grfv","2021-06-28 17:52:11","0","",""),
("126","111","2","Ajout d\'interimaire","L\'interimaire trefdiui efdcjk à été ajouté à l\'agence grfv","2021-06-29 11:18:36","0","",""),
("127","112","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-06-29 11:23:50","0","",""),
("128","113","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-06-29 11:32:36","0","",""),
("129","114","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 17:09:49","0","",""),
("130","115","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 17:11:19","0","",""),
("131","116","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 17:13:47","0","",""),
("132","117","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 17:35:39","0","",""),
("133","118","2","Ajout d\'interimaire","L\'interimaire trefdiui efdcjk à été ajouté à l\'agence grfv","2021-07-01 17:50:32","0","",""),
("134","119","2","Ajout d\'interimaire","L\'interimaire trefdiui efdcjk à été ajouté à l\'agence grfv","2021-07-01 18:09:37","0","",""),
("135","120","2","Ajout d\'interimaire","L\'interimaire trefdiui efdcjk à été ajouté à l\'agence grfv","2021-07-01 18:10:29","0","",""),
("136","121","2","Ajout d\'interimaire","L\'interimaire trefdiui efdcjk à été ajouté à l\'agence grfv","2021-07-01 18:11:10","0","",""),
("137","122","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 23:15:24","0","",""),
("138","123","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-01 23:16:43","0","",""),
("139","124","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-02 13:54:20","0","",""),
("140","125","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-07 11:01:10","0","",""),
("141","126","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-07 11:02:42","0","",""),
("142","127","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-07 12:27:29","0","",""),
("143","128","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-07 12:28:20","0","",""),
("144","129","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 11:05:46","0","",""),
("145","130","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 11:12:57","0","",""),
("146","131","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:08:51","0","",""),
("147","132","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:11:19","0","",""),
("148","133","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:15:41","0","",""),
("149","134","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:17:41","0","",""),
("150","135","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:24:32","0","",""),
("151","136","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:25:35","0","",""),
("152","137","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:27:07","0","",""),
("153","138","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 12:32:13","0","",""),
("154","139","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 13:04:35","0","",""),
("155","140","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 13:06:13","0","",""),
("156","141","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 13:08:10","0","",""),
("157","142","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 17:27:34","0","",""),
("158","143","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-08 17:37:22","0","",""),
("159","144","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-12 16:41:09","0","",""),
("160","145","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-12 16:44:34","0","",""),
("161","146","2","Ajout d\'interimaire","L\'interimaire Massamba  Diop à été ajouté à l\'agence grfv","2021-07-12 16:46:33","0","","");



DROP TABLE IF EXISTS objectif;

CREATE TABLE `objectif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interimaire_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure_id` int(11) NOT NULL,
  `date_objectif` datetime NOT NULL,
  `bareme` int(11) NOT NULL,
  `note` double DEFAULT NULL,
  `etat` int(11) DEFAULT NULL,
  `is_evaluated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E2F868515CA839FE` (`interimaire_id`),
  KEY `IDX_E2F868512534008B` (`structure_id`),
  CONSTRAINT `FK_E2F868512534008B` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`),
  CONSTRAINT `FK_E2F868515CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO objectif VALUES("1","8","Mon titre","Desc","8","2021-06-15 00:00:00","10","","","");



DROP TABLE IF EXISTS periode;

CREATE TABLE `periode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mois` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS personne;

CREATE TABLE `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_piece` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_piece` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  `date_naissance` datetime DEFAULT NULL,
  `lieu_naissance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sitmat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `universite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO personne VALUES("1","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","","799999999999999994556","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("2","efdcjk","Moustapha","trgdfc","7785296","trgfd@fd.trfed","","799999999999999994556777","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("3","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","e35e7b0ad8437a277db26cb3145a3029.jpeg","88888","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("4","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","9c54c5670d86b27ecc4c16fce79f66df.jpeg","888775","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("5","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","1543667c1bc075b7626db21c181fc376.jpeg","5557","cni","0","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("6","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","ac2fa3c1266e69e3360833476929c403.jpeg","2000","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("7","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","48223a0cc63922dbc92d556257ccca34.jpeg","2000563656","cni","0","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("9","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","07b9f6ea9830a648e214edbc921a3bfa.jpeg","20003656","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("10","efdcjk","trefdiui","trgdfc","7785296","trgfd@fd.trfed","1c19b83ee6020946da17ce3804291cfc.jpeg","20003655856","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("11","Diop","Massamba ","trgdfc","7785296","trgfd@fd.trfed","ea5d63a60bbdff32c267896ea23c2e36.jpeg","854545","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("12","Diop","Massamba ","trgdfc","7785296","trgfd@fd.trfed","c3ec715a1d1a771913eba382eeb83992.jpeg","85454555","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("13","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","ef6a1f6c220d121d79310662eeba9d23.jpeg","325","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("14","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","2f81a0316805cc380e5717d4183ce214.jpeg","32585665","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("15","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","eff9909f3e4c5d4272f529da04ff7500.jpeg","8888","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("16","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","79266c6b982a3b4623dbe3daa84101bf.jpeg","8888888","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("17","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","7042f45e19ef4cf9e5f2f98632f3fb83.jpeg","8852","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("18","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","b7456e0d6ecd6a69a462a7377959d37c.jpeg","8852525","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("19","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","3402ccab6d6dfaa5fc75876143d6f61b.jpeg","885252577878987","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("20","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","2de020038e5a9e424283e54e67ef1a7b.png","88525257787898755","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("21","Diop","Massamba ","trgdfc","778529600","trgfd@fd.trfed","2603ebd4903f57aa56bf30b42bec00d9.png","885252577878987555522","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("22","Diop","Massamba ","trgdfc","760002258","trgfd@fd.trfed","a5dceb2ef9d98bc45c871fbfadf5294f.png","8654545454545545656565656","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("23","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","adb3b4808921efbfcebdc936afb3666a.png","86545454545455456565656562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("24","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","224022dd31a348f1ef57de9ec22c2628.png","8654554545455456565656562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("25","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","a7dd83c9b7759be45013803997110060.png","86545455456565656562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("26","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","2aff830078b91e64b7ab7b1e0d4c9510.png","86545562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("27","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","58ae1c0c7dae07228b779325ad67ad6b.png","865562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("28","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","0ab660e76bdead409ace3866808f6e19.png","0233","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("29","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","6296283e150d25be4c6cfad1538733ab.png","02330","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("30","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","45bbcc5b268d860ba14b7e360260a841.png","0233077","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("31","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","b797d0668c11efa1020a6447b3892598.png","00222","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("32","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","f373f0d6a57659ad0d2e0b4f99c00c08.png","0022200","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("33","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","48562834e8d8729def287fd61fa52118.png","110","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("34","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","76bc5ff03528484b8314c225a689e614.png","1100","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("35","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","e07763df0a8895b39b9fc25417214afc.png","11000","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("36","Diop","Massamba ","trgdfc","780023365","trgfd@fd.trfed","1df4ca5d43f690bcd486d1d91b20d2db.png","562","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("37","Diop","Massamba ","trgdfc","780023365","nn@fd.trfed","de9f17ebefff9cd93624529182347d09.png","8965656","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("38","Diop","Massamba ","trgdfc","780023365","nn@fd.trfed","b8f3ac34541cfe82b07d0d9a62b2e218.png","56565656","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS"),
("39","Diop","Massamba ","trgdfc","780023365","nn@fd.trfed","a7d1329874f59a30374e2fc2abaf40f8.png","5656565678","cni","","2021-10-12 00:00:00","Guinee","masculin","sit2","OMS");



DROP TABLE IF EXISTS profil;

CREATE TABLE `profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO profil VALUES("1","agence","",""),
("2","drh","",""),
("4","agence","",""),
("8","interimaire","",""),
("9","admin","",""),
("10","admin","",""),
("11","admin","admins",""),
("12","admin","admins","");



DROP TABLE IF EXISTS region;

CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




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




DROP TABLE IF EXISTS reset_password_request;

CREATE TABLE `reset_password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`),
  CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS site;

CREATE TABLE `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_694309E498260155` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS societe;

CREATE TABLE `societe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO societe VALUES("1","Ma societe"),
("2","OFMS");



DROP TABLE IF EXISTS statut_attestation;

CREATE TABLE `statut_attestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS structure;

CREATE TABLE `structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_structure_id` int(11) DEFAULT NULL,
  `direction_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pole` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6F0137EAA277BA8E` (`type_structure_id`),
  KEY `IDX_6F0137EAAF73D997` (`direction_id`),
  KEY `IDX_6F0137EA727ACA70` (`parent_id`),
  CONSTRAINT `FK_6F0137EA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `structure` (`id`),
  CONSTRAINT `FK_6F0137EAA277BA8E` FOREIGN KEY (`type_structure_id`) REFERENCES `type_structure` (`id`),
  CONSTRAINT `FK_6F0137EAAF73D997` FOREIGN KEY (`direction_id`) REFERENCES `direction` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO structure VALUES("1","2","2","PMA","PMA","DASI","Ma bu","DD","1","8"),
("8","2","2","ltyhgbn","mtugjbn","n","o","p","1","8"),
("9","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0","8"),
("10","3","1","s","Mon service","Mon departement","Ma bu","Mon pole","0","8"),
("11","3","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("12","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("13","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("14","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("15","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("16","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("17","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("18","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("19","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("20","1","1","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("21","1","1","Ma structure","","","","Mon pole","0",""),
("22","1","1","Ma structure","","","","","0",""),
("23","1","1","Ma structure","","","","","0",""),
("24","1","1","Ma structure","","","","","0","1"),
("27","1","1","Ma structure","","","","","0","8"),
("28","1","1","Ma structure","","","","","0","9"),
("29","1","1","Ma structure","","","","","0","10"),
("30","1","","Ma structure","Mon service","Mon departement","Ma bu","Mon pole","0",""),
("31","1","","Ma structure","Mon service","Mon departement","Ma bu","","0",""),
("32","1","","Ma structure","","","","","0",""),
("33","1","","Ma structure","","","","","0",""),
("34","1","1","Ma structure","","","","","0",""),
("35","1","1","Ma structure","","","","Mon pole","0",""),
("36","1","1","Ma structure","Mon service","","","Mon pole","0","");



DROP TABLE IF EXISTS synthese;

CREATE TABLE `synthese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_request` datetime NOT NULL,
  `nombre_depart` int(11) DEFAULT NULL,
  `nombre_arrivee` int(11) DEFAULT NULL,
  `structure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_89E59D022534008B` (`structure_id`),
  CONSTRAINT `FK_89E59D022534008B` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS traitement;

CREATE TABLE `traitement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS type_demande;

CREATE TABLE `type_demande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO type_demande VALUES("1","Demande");



DROP TABLE IF EXISTS type_document;

CREATE TABLE `type_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO type_document VALUES("1","CV"),
("2","Fiche de poste"),
("3","Proces verbal"),
("4","contrat"),
("5","fiche de poste"),
("6","proces verbal"),
("7","diplome"),
("8","cni");



DROP TABLE IF EXISTS type_notification;

CREATE TABLE `type_notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO type_notification VALUES("1","Demande"),
("2","Ajout interimaire"),
("3","Fin de contrat");



DROP TABLE IF EXISTS type_structure;

CREATE TABLE `type_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO type_structure VALUES("1","pole"),
("2","service"),
("3","departement");



DROP TABLE IF EXISTS useragence;

CREATE TABLE `useragence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `agence_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C3B8D6DA76ED395` (`user_id`),
  KEY `IDX_C3B8D6DD725330D` (`agence_id`),
  CONSTRAINT `FK_C3B8D6DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `utilisateur` (`id`),
  CONSTRAINT `FK_C3B8D6DD725330D` FOREIGN KEY (`agence_id`) REFERENCES `agence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO useragence VALUES("1","39","1"),
("2","41","1"),
("3","42","1"),
("6","12","2"),
("11","44","3"),
("12","46","3");



DROP TABLE IF EXISTS utilisateur;

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profil_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_tentative` int(11) DEFAULT NULL,
  `login_tentative_at` datetime DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interimaire_id` int(11) DEFAULT NULL,
  `structure_id` int(11) DEFAULT NULL,
  `is_manager` tinyint(1) DEFAULT NULL,
  `fonction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1D1C63B392FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_1D1C63B3A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_1D1C63B3C05FB297` (`confirmation_token`),
  UNIQUE KEY `UNIQ_1D1C63B35CA839FE` (`interimaire_id`),
  KEY `IDX_1D1C63B3275ED078` (`profil_id`),
  KEY `IDX_1D1C63B32534008B` (`structure_id`),
  CONSTRAINT `FK_1D1C63B32534008B` FOREIGN KEY (`structure_id`) REFERENCES `structure` (`id`),
  CONSTRAINT `FK_1D1C63B3275ED078` FOREIGN KEY (`profil_id`) REFERENCES `profil` (`id`),
  CONSTRAINT `FK_1D1C63B35CA839FE` FOREIGN KEY (`interimaire_id`) REFERENCES `interimaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO utilisateur VALUES("1","10","stg_fall56702","stg_fall56702","","","1","","","2021-07-26 17:12:07","","","","","1","2021-07-26 16:51:17","","","","","","","","");



