DROP TABLE IF EXISTS action;

CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_action_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_action` datetime NOT NULL,
  `etat` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_47CC8C9229F4B125` (`type_action_id`),
  KEY `IDX_47CC8C92A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




