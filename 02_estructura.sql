DROP DATABASE IF EXISTS curso;

CREATE database curso;

USE curso;

CREATE TABLE authors(
    `author_id` BIGINT(30) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `nationality` VARCHAR(3) NOT NULL
);

CREATE TABLE books(
    `book_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `author_id` BIGINT(20) UNSIGNED NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `year` INTEGER UNSIGNED DEFAULT '1900',
    `language` VARCHAR(2) NOT NULL DEFAULT 'na' COMMENT 'ISO 639-1 LANGUAGE',
    `cover_url` VARCHAR(500) DEFAULT NULL,
    `price` DOUBLE(6,2) DEFAULT NULL,
    `sellable` TINYINT(1) DEFAULT 0,
    `copies` INTEGER DEFAULT 1,
    `description` TEXT
);

CREATE TABLE `clients` (
  `client_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` VARCHAR(100) NOT NULL UNIQUE,
  `birthdate` DATETIME DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

CREATE TABLE `transactions` (
  `transaction_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `book_id` int(10) unsigned NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `type` enum('lend','sell','return') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `finished` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;