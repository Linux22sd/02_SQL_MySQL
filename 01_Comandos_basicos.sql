
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
    `operaion_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `book_id` BIGINT(20) UNSIGNED NOT NULL,
    `client_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` ENUM('V', 'P', 'D') NOT NULL COMMENT 'V= Vendido, P= Prestado, D= Devuelto',
    `finished` TINYINT(1) NOT NULL,  
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 11 insertando a la tabla authors
INSERT INTO authors(`name`, `nationality`) 
VALUES('Juan Rulfo','MEX'),
      ('Gabriel Garcia','COL'),
      ('Juan Gabriel Vasquez','COL'),
      ('JUlio Cortazar','ARG'),
      ('Isabel Allende','CHI'),
      ('Octavio Paz','MEX');

-- 12 insertando clients
INSERT INTO clients(`name`,`email`,`birthdate`,`gender`,`active`)
VALUES('Pancha','Pancha@hotmail.com','1978-06-24','F',1),
      ('Maria','Maria@hotmail.com','1980-02-08','F',1),
      ('Pedro','Pedro@hotmail.com','1975-03-12','M',1),
      ('Juan','Juan@hotmail.com','1985-04-22','M',1);

-- 13 dos formas de actualizar un registro

            -- usando ON DUPLICATE KEY UPDATE
INSERT INTO clients(`name`,`email`,`birthdate`,`gender`,`active`)
VALUES('Pedro','Pedro@hotmail.com','1985-04-22','M',1)
ON DUPLICATE KEY UPDATE `active` = VALUES(`active`),`name` = VALUES(`name`),`email` = VALUES(`email`);


                -- usando un update
UPDATE clients 
SET `active` = 1,`name` = 'Casimiro',`email` = 'Casimiro@aol.com'
WHERE `client_id` = 4;

-- 14 Imprimir en consola la o las columnas de forma mas ordenada (ojo no lleva ; al final)
SELECT * FROM clients\G

SELECT * FROM clients WHERE client_id = 4\G

-- 15 Insertando books
INSERT INTO books(`author_id`,`title`,`year`,`language`,`cover_url`,`price`,`sellable`,`copies`,`description`)
VALUES(
6, 
'El Laberinto de la Soledad', 
1950, 
'ES', 
'https://resources.sanborns.com.mx/imagenes-sanborns-ii/1200/9786074537987.jpg?scale=500&qlty=75', 
199.00, 
1,
5, 
'El laberinto de la soledad, una obra maestra escrita porOctavio Paz, uno de los más grandes escritores y poetas de habla hispana del siglo xx.'
);

-- 16 Querie anidado
INSERT INTO books(`author_id`,`title`,`year`,`language`,`cover_url`,`price`,`sellable`,`copies`,`description`)
VALUES(
(SELECT `author_id` FROM authors WHERE `name` = 'Octavio Paz' LIMIT 1), 
'Vuelta al Laberinto de la Soledad', 
1950, 
'ES', 
'https://resources.sanborns.com.mx/imagenes-sanborns-ii/1200/9786074537987.jpg?scale=500&qlty=75', 
199.00, 
1,
5, 
'El laberinto de la soledad, una obra maestra escrita porOctavio Paz, uno de los más grandes escritores y poetas de habla hispana del siglo xx.'
);