DROP TABLE IF EXISTS assistance_user;

CREATE TABLE `assistance_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(255) DEFAULT NULL,
  `valeur` int(11) DEFAULT NULL,
  `bareme` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




