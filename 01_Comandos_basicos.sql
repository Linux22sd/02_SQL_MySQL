
-- 01- crea base de datos
CREATE database platzi_operations;

-- 02- crea tabla books
CREATE TABLE books(
    `book_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `author_id` BIGINT(20) UNSIGNED NOT NULL,
    `title` VARCHAR(20) NOT NULL,
    `year` INTEGER UNSIGNED NOT NULL,
    `language` VARCHAR(2) NOT NULL DEFAULT 'na' COMMENT 'ISO 639-1 LANGUAGE',
    `cover_url` VARCHAR(500) NOT NULL,
    `price` DOUBLE(6,2) NOT NULL,
    `sellable` TINYINT(1) NOT NULL,
    `copies` INTEGER NOT NULL,
    `description` TEXT NOT NULL
);

-- 03- crea tabla authors
CREATE TABLE authors(
    `author_id` BIGINT(30) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `nationality` VARCHAR(3) NOT NULL
);

-- 04- borra una tabla
DROP TABLE books;

-- 05- muestra las bases de datos
SHOW DATABASES;

-- 06- selecciona la base dedatos
USE plazi_operations;

-- 07- muestra la tabla 
DESCRIBE authors;
DESC authors;

-- 08- muestra todos lodos detalles de las columnas
SHOW FULL COLUMNS FROM authors;

-- 09- crea tabla de clientes
-- DATETIME cualquier fecha y hora
-- TIMESTAMP 'yyyy-mm-dd hh:mm:ss' 'numero epoca desde 1 de enero de 1970'
CREATE TABLE clients(
    `client_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `birthdate` DATETIME NOT NULL ,                   
    `gender` ENUM('M', 'F') NOT NULL, 
    `active` TINYINT(1) NOT NULL DEFAULT 1, 
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 10- crea tabla operations
CREATE TABLE operations(
    `operaion_id`
    `book_id`
    `client_id`
    `type`
    `finished`   
    `created_at`
    `updated_at`
)