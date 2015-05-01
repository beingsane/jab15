CREATE TABLE IF NOT EXISTS `#__jab15_conferences` (
  `jab15_conference_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `slug` VARCHAR(255) NOT NULL,
  `start_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `image` varchar(255) DEFAULT NULL,
  `description` TEXT,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` bigint(20) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`jab15_conference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `#__jab15_sessions` (
  `jab15_session_id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `slug` VARCHAR(255) NOT NULL,
  `jab15_conference_id` BIGINT(20) NOT NULL,
  `user_id` BIGINT(20) NOT NULL,
  `room` VARCHAR(255) NOT NULL DEFAULT 'Main Room',
  `start_datetime` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_datetime` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` TEXT,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` bigint(20) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`jab15_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;