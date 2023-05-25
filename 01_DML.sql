-- //------------------------------- INSERT -------------------------------//
-- insertando a la tabla authors
INSERT INTO authors(`name`, `nationality`) 
VALUES('Juan Rulfo','MEX'),
      ('Gabriel Garcia','COL'),
      ('Juan Gabriel Vasquez','COL'),
      ('JUlio Cortazar','ARG'),
      ('Isabel Allende','CHI'),
      ('Octavio Paz','MEX');

-- Querie anidado
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

-- //------------------------------- UPDATE -------------------------------------------//
-- dos formas de actualizar un registro

            -- usando ON DUPLICATE KEY UPDATE
INSERT INTO clients(`name`,`email`,`birthdate`,`gender`,`active`)
VALUES('Pedro','Pedro@hotmail.com','1985-04-22','M',1)
ON DUPLICATE KEY UPDATE `active` = VALUES(`active`),`name` = VALUES(`name`),`email` = VALUES(`email`);

                -- usando un update
UPDATE clients 
SET `active` = 1,`name` = 'Casimiro',`email` = 'Casimiro@aol.com'
WHERE `client_id` = 4;

-- //-------------------------------- SELECT ---------------------------------------//
-- SELECT
SELECT * FROM authors;

SELECT `name`, `gender` FROM clients;

SELECT `name`, `gender` FROM clients LIMIT 10;

SELECT `name`, `gender` FROM clients WHERE `gender` = 'M';

SELECT  YEAR(`birthdate`) AS year FROM clients;

SELECT NOW();

SELECT YEAR(NOW()) FROM clients;

SELECT YEAR(NOW()) - YEAR(`birthdate`)AS edad FROM clients;

SELECT `name`, YEAR(NOW()) - YEAR(`birthdate`) AS age FROM clients;

SELECT * FROM clients WHERE `name` LIKE '%Saavedra';

SELECT `name`, `email`, YEAR(NOW()) - YEAR('birthdate') AS age, `gender`
FROM clients
WHERE `gender` = 'F'
AND `name` LIKE '%Lop%';

SELECT COUNT(*) FROM books;

SELECT * FROM authors WHERE `author_id` > 0 AND `author_id` < 5;
SELECT * FROM authors LIMIT 4;
SELECT * FROM authors WHERE `author_id`BETWEEN 1 AND 4;

-- Imprimir en consola la o las columnas de forma mas ordenada (ojo no lleva ; al final)
SELECT * FROM clients\G
SELECT * FROM clients WHERE client_id = 4\G

-- //----------------------------------- JOINS ------------------------------------------//

-- //------------ INNER JOIN --------------//
SELECT a.`author_id`, a.`name`, a.`nationality`, b.`title`
FROM authors AS a
INNER JOIN books AS b
ON a.`author_id` = b.`author_id`
ORDER BY a.`author_id` asc;

-- //-----------MEZCLANDO INNER JOIN-----------//
SELECT c.`name` AS cliente,b.`title` AS titulo, a.`name` AS autor,t.`type` AS transaccion 
FROM transactions AS t
INNER JOIN books AS b
ON t.`book_id` = b.`book_id`
INNER JOIN clients AS c
ON t.`client_id` = c.`client_id`
INNER JOIN authors AS a
ON a.`author_id` = b.`author_id`
WHERE t.`type` IN ('sell','lend') 
AND c.`gender` = 'M';

-- //--------------- LEFT JOIN -----------------//
SELECT a.`author_id`, a.`name`, a.`nationality`, b.`title`
FROM authors AS a
LEFT JOIN books AS b
ON a.`author_id` = b.`author_id`
ORDER BY a.`author_id` asc;

-- //------------ LEFT EXCLUDING JOIN ---------------//
SELECT a.`author_id`, a.`name`, a.`nationality`, b.`title`
FROM authors AS a
LEFT JOIN books AS b
ON a.`author_id` = b.`author_id`
WHERE b.`title` IS NOT NULL
-- WHERE b.`title`IS NULL
ORDER BY a.`author_id` ASC;

-- //-------------- LEFT JOIN con COUNT() ----------------//
SELECT a.`author_id`, a.`name`, a.`nationality`, COUNT(b.`book_id`) AS books
FROM authors AS a
LEFT JOIN books AS b
ON a.`author_id` = b.`author_id`
WHERE b.`title` IS NOT NULL
GROUP BY a.`author_id`
ORDER BY a.`author_id` ASC;

-- //------------ UNION --------------//
SELECT a.`author_id`, a.`name`, a.`nationality`, b.`title`
FROM authors AS a
LEFT JOIN books AS b
ON a.`author_id` = b.`author_id`
UNION
SELECT a.`author_id`, a.`name`, a.`nationality`, b.`title`
FROM authors AS a
RIGHT JOIN books AS b
ON a.`author_id` = b.`author_id`;

-- //------------ UNION DIFERENCIA SIMETRICA ------------//
SELECT *
FROM authors AS a
LEFT JOIN books AS b
ON a.`author_id` = b.`author_id`
WHERE b.`author_id`IS NULL
UNION
SELECT *
FROM authors AS a
RIGHT JOIN books AS b
ON b.`author_id` = a.`author_id`
WHERE a.`author_id` IS NULL;

----------------------------------------------------------
-- // --------------- FILTROS -----------------//

-- // -DISTINCT - //
SELECT DISTINCT a.`nationality` 
FROM authors AS a
ORDER BY a.`nationality` ASC;

-- // - COUNT GROUP BY -//
SELECT a.`nationality`, COUNT(a.`author_id`) AS escritores
FROM authors AS a
GROUP BY a.`nationality`
ORDER BY escritores DESC, a.`nationality` ASC ;

SELECT b.`title`, COUNT(*)
FROM transactions AS t
INNER JOIN books AS b
ON b.`book_id` = t.`book_id`
INNER JOIN  clients AS c
ON c.`client_id` = t.`client_id`
GROUP BY b.`title`;

-- // - IS NULL, IS NOT NULL - //
SELECT b.`title`, b.`price` 
FROM books AS b
WHERE b.`price` IS NOT NULL
ORDER BY b.`price` DESC;

-- AVG Promedio
SELECT a.`nationality`, COUNT(b.`book_id`) AS books, AVG(b.`price`) AS prom, STDDEV(b.`price`) AS stand
FROM books AS b
INNER JOIN authors AS a
ON b.`author_id` = a.`author_id`
GROUP BY a.`nationality`
ORDER BY books DESC;

-- MAX MIN
SELECT a.`nationality`, MAX(b.`price`), MIN(b.`price`)
FROM books AS b
INNER JOIN authors AS a
ON a.`author_id` = b.`author_id`
GROUP BY a.`nationality`;

-- CONCAT() TO_DAYS() NOW()
SELECT c.`name`, t.`type`, b.`title`, CONCAT(a.`name`, " ", "(", a.`nationality`, ")" ) AS author, 
TO_DAYS(NOW()), TO_DAYS(t.`created_at`) AS dias
FROM transactions AS t
LEFT JOIN clients AS c
ON t.`client_id` = c.`client_id`
LEFT JOIN books AS b
ON b.`book_id` = t.`book_id`
LEFT JOIN authors AS a
ON a.`author_id` = b.`author_id`;

-- TO_DAYS()
SELECT `name`, TO_DAYS(`birthdate`) FROM clients;

-- //---------------- UPDATE ---------------//
-- UN VALOR 
UPDATE clients
SET `active` = 0
WHERE `client_id` = 10
LIMIT 1;
-- VARIOS VALORES
UPDATE clients
SET `active` = 0
WHERE `client_id` IN(79,90,99,36,42)
limit 5;

-- //---------------- DELETE ---------------//
DELETE FROM authors
WHERE `author_id` = 161
LIMIT 1;

-- //---------------TRUNCATE---------------//
-- BORRAR CONTENIDO ENTERO DE LA TABLA CONSERVANDO LA ESTRUCTURA --
TRUNCATE transactions;

-- //----------------SUM()---------------------//
SELECT `sellable`, SUM(`price`*`copies`) AS totals FROM books GROUP BY `sellable`;

-- // ----------------CONDICIONALES-------------------- //
SELECT COUNT(`book_id`), SUM(IF(`year` < 1950, 1, 0)) AS '<1950'
FROM books;

SELECT COUNT(`book_id`), SUM(IF(`year` < 1950, 1, 0)) AS '<1950', SUM(IF(`year` > 1950, 1, 0)) AS '>1950'
FROM books;

SELECT a.`nationality`, COUNT(b.`book_id`) AS book, SUM(IF(b.`year` < 1950, 1, 0)) AS '<1950', SUM(IF(b.`year` > 1950, 1, 0)) AS '>1950'
FROM books AS b
INNER JOIN authors AS a
ON b.`author_id` = a.`author_id`
WHERE a.`nationality` IS NOT NULL
GROUP BY a.`nationality`
ORDER BY book ASC;

-- // - GROUP CONCAT - //
SELECT b.`title`, GROUP_CONCAT(t.`type`
ORDER BY t.`type` ASC SEPARATOR " - ") AS type
FROM transactions AS t
INNER JOIN books AS b
ON b.`book_id` = t.`book_id`
INNER JOIN  clients AS c
ON c.`client_id` = t.`client_id`
GROUP BY b.`title`;

