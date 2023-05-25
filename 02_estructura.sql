DROP DATABASE IF EXISTS cursos;

CREATE database cursos;

USE cursos;

CREATE TABLE authors(
    `author_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `nationality` VARCHAR(3) NOT NULL,
    UNIQUE KEY unique_author(`name`)
)ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

CREATE TABLE books(
    `book_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `author_id` BIGINT(20) UNSIGNED NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `year` INTEGER UNSIGNED DEFAULT '1900',
    `language` varchar(2) NOT NULL COMMENT 'ISO 639-1 Language code (2 chars)',
    `cover_url` VARCHAR(500) DEFAULT NULL,
    `price` DOUBLE(6,2) DEFAULT NULL,
    `sellable` TINYINT(1) DEFAULT 0,
    `copies` INTEGER DEFAULT 1,
    `description` TEXT,
    UNIQUE KEY book_language(`title`,`language`),
    CONSTRAINT author_book
    FOREIGN KEY (`author_id`) REFERENCES authors(`author_id`)
)ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8;

CREATE TABLE `clients` (
  `client_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` VARCHAR(100) NOT NULL UNIQUE,
  `birthdate` DATE DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

CREATE TABLE `transactions` (
  `transaction_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  `book_id` BIGINT(20) UNSIGNED NOT NULL,
  `client_id` BIGINT(20) UNSIGNED NOT NULL,
  `type` enum('lend','sell','return') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `finished` tinyint(1) NOT NULL DEFAULT '0',
  CONSTRAINT book_transaction
  FOREIGN KEY (`book_id`) REFERENCES books(`book_id`),
  CONSTRAINT client_transaction
  FOREIGN KEY (`client_id`) REFERENCES clients(`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;