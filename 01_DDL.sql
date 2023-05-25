-- crear base de datos
CREATE database platzi_operations;

-- crea tabla
CREATE TABLE operations(
    `operaion_id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `book_id` BIGINT(20) UNSIGNED NOT NULL,
    `client_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` ENUM('V', 'P', 'D') NOT NULL COMMENT 'V= Vendido, P= Prestado, D= Devuelto',
    `finished` TINYINT(1) NOT NULL,  
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- borra una tabla
DROP TABLE books;

-- mostrar bases de datos
SHOW DATABASES;

-- seleccionar base de datos
USE plazi_operations;

-- mostrar la tabla 
DESCRIBE authors;
DESC authors;

-- muestra todos los detalles de las columnas
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

-- Usando ALTER

CREATE TABLE unidades(
    `id` BIGINT(20) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    `marca` VARCHAR(10) NOT NULL
);

-- Agregar columna a una tabla
ALTER TABLE unidades
ADD COLUMN `ruta` VARCHAR(10);

-- Modificar o agregar  algo a la estructura de columna
ALTER TABLE unidades
MODIFY COLUMN `modelo` VARCHAR(20) NOT NULL;

-- Renombrar tabla
ALTER TABLE unidades
RENAME TO vehiculos;

-- Renombrar columna
ALTER TABLE vehiculos
CHANGE COLUMN `ruta` `modelo` VARCHAR(10) NOT NULL;

-- Borrar una columna
ALTER TABLE vehiculos
DROP COLUMN `modelo`;

-- Borrar una tabla
DROP TABLE vehiculos;

-- 18- FOREIGN KEYS
-- Foreign key con alter
ALTER TABLE books
ADD CONSTRAINT `author_id`
FOREIGN KEY (`author_id`)
REFERENCES authors(`author_id`);

-- Foreign key con creacion de tabla
CREATE TABLE transactions(
    `transaction_id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `client_id` BIGINT(20) UNSIGNED NOT NULL,
    `book_id` BIGINT(20) UNSIGNED NOT NULL, 
    PRIMARY KEY (`transaction_id`),
    FOREIGN KEY (`client_id`) REFERENCES clients(`client_id`),
    FOREIGN KEY (`book_id`) REFERENCES books(`book_id`)
);

-- Foreign key con constraint
CREATE TABLE transactions(
    `transaction_id` BIGINT(20) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    `client_id` BIGINT(20) UNSIGNED NOT NULL,
    `book_id` BIGINT(20) UNSIGNED NOT NULL, 
    CONSTRAINT client_transaction
    FOREIGN KEY (`client_id`) REFERENCES clients(`client_id`),
    CONSTRAINT book_transaction 
    FOREIGN KEY (`book_id`) REFERENCES books(`book_id`)
);

-- Eliminar una FOREIGN KEY
-- Muestra la info de la tabla a detalle
SHOW CREATE TABLE transactions;
-- Con el nombre de la FOREIGN KEY 
ALTER TABLE transactions
DROP FOREIGN KEY book_transaction;
-- Tambien se puede usar
ALTER TABLE transactions
DROP CONSTRAINT book_transaction;
-- despues se elimina el index
ALTER TABLE transactions
DROP INDEX book_transaction;




