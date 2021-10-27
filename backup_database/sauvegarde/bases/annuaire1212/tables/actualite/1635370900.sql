DROP TABLE IF EXISTS actualite;

CREATE TABLE `actualite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actu_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenu` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO actualite VALUES("1","La Fondation Sonatel offre de nouvelles bourses d’excellence","bourses.png","La Fondation Sonatel offre de nouvelles bourses d’excellence.","1","0"),
("3","Sonatel Ci Sunu Gox à Pikine","sonatelCiSunuGox.png","Après Louga, Saint-Louis et Ziguinchor, la ville de Pikine a accueilli ce 12 décembre le groupe Sonatel à travers Sonatel ci sunu gox.\nAu programme :\n• Cérémonie de remise du matériel de nettoiement au maire de la ville de Pikine\n• Sessions de renforcement de capacités à l’endroit des femmes et jeunes entrepreneurs dans l’objectif de contribuer au développement de l’écosystème numérique à Pikine.\nSonatel ci sunu gox s’est clôturé par l’organisation d’un ‘’Pencum’’ à Pikine en vue de renforcer le dialogue et les relations avec les parties prenantes locales.","1","0"),
("6","La Fondation Sonatel réhabilite et équipe la maternité","Maternité.jpeg","Sébikotane, le 17 Février 2020 – La Fondation Sonatel a réhabilité et équipé la Maternité de Sébikotane pour un montant global de 70 Millions de FCFA.","1","0"),
("7","Résultats consolidés du groupe Sonatel au 31 décembre 2019","resultat.png","Dakar, le 28 février 2020: Croissance du chiffre d’affaires après de solides performances commerciales et financières.Le groupe a réalisé en 2019 une performance meilleure que celle de 2018, malgré la persistance de la crise politique et économique à Bissau, le contexte sécuritaire","1","0"),
("8","Sonatel Orange aux côtés de l’Etat du Sénégal dans la lutte contre le Covid-19","cover-web-site.jpg","Dans cette période préoccupante pour tous, nous tenons à rassurer l’Etat, nos parties prenantes, les populations et nos clients de l’engagement de toutes les équipes de Sonatel Orange d’assurer la qualité des services que nous vous délivrons dans ce contexte particulier de lutte contre la propagation du Covid-19 qui s’est présenté au Sénégal depuis trois semaines maintenant.\n\nLa connectivité via les réseaux et l’internet mobile ou l’accès aux communications et à l’internet sont déterminants pour rester en contact, travailler à distance, poursuivre la scolarité hors des classes, mais aussi vous informer de la situation du pays et du monde. Lire la suite","1","0"),
("10","actu 1","mariama1.jpg","JJ","0","1");



