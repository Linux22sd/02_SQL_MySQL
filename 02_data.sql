INSERT INTO authors(`name`, `nationality`) 
VALUES('Juan Rulfo','MEX'),
    ('Gabriel Garcia','COL'),
    ('Juan Gabriel Vasquez','COL'),
    ('JUlio Cortazar','ARG'),
    ('Isabel Allende','CHI'),
    ('Octavio Paz','MEX'),
    ('Arthur Conan Doyle','GBR'),
    ('Chuck Palahniuk','USA'),
    ('Juan Rulfo','MEX'),
    ('Henning Mankel','SWE'),
    ('Jaideva Goswami','USA'),
    ('John Foreman','USA'),
    ('Stephen Hawking','USA'),
    ('Stephen Dubner','USA'),
    ('Edward Said','USA'),
    ('Vladimir Vapnik','RUS'),
    ('V P Menon','IND'),
    ('Leonard Mlodinow','USA'),
    ('Frank Shih','JAP'),
    ('Maria Konnikova','RUS'),
    ('Sebastian Gutierrez','ESP'),
    ('Kurt Vonnegut','USA'),
    ('Cedric Villani','FRA'),
    ('Gerald Sussman','USA'),
    ('Abraham Eraly','IND'),
    ('Frank Kafka','AUT'),
    ('John Pratt','USA'),
    ('Robert Nisbet','USA'),
    ('H. G. Wells',"ENG"),
    ('Werner Heisenberg','DEU'),
    ('Andy Oram','RUS'),
    ('Terence Tao',"AUS"),
    ('Drew Conway',"USA"),
    ('Nate Silver',"USA"),
    ('Wes McKinney',"USA"),
    ('Thomas Cormen', "USA"),
    ('Siddhartha Deb',"IND"),
    ('Albert Camus',"FRA"),
    ('Adam Smith',"ENG"),
    ('Ken Follett',"ENG"),
    ('Fritjof Capra',"AUT"),
    ('Richard Feynman',"USA"),
    ('Ernest Hemingway',"USA"),
    ('Frederick Forsyth',"ENG"),
    ('Jeffery Archer',"ENG"),
    ('Randy Pausch',"USA"),
    ('Ayn Rand',"RUS"),
    ('Michael Crichton',"USA"),
    ('John Steinbeck',"USA"),
    ('Edgar Allen Poe',"USA"),
    ('Will Durant','RUS'),
    ('P L Deshpande','RUS'),
    ('John Grisham',"USA"),
    ('V. S. Naipaul','RUS'),
    ('Joseph Heller','RUS'),
    ('BBC','RUS'),
    ('Bob Dylan',"USA"),
    ('Madan Gupta',"IND"),
    ('Alfred Stonier','RUS'),
    ('W. H. Greene','RUS'),
    ('Gary Bradsky','RUS'),
    ('Andrew Tanenbaum','RUS'),
    ('David Forsyth','RUS'),
    ('Schilling Taub','RUS'),
    ('Yashwant Kanetkar','RUS'),
    ('Jonathan Stroud','RUS'),
    ('Fyodor Dostoevsky',"RUS"),
    ('Dan Brown',"USA"),
    ('Amartya Sen','RUS'),
    ('Amitav Ghosh','RUS'),
    ('Lorraine Hansberry','RUS'),
    ('Bob Woodward','RUS'),
    ('Kuldip Nayar','RUS'),
    ('Sunita Deshpande','RUS'),
    ('William Dalrymple','RUS'),
    ('Various','RUS'),
    ('Sanjay Garg','RUS'),
    ('V P Kale','RUS'),
    ('Shashi Tharoor',"IND"),
    ('Dominique Lapierre','RUS'),
    ('Bertrand Russell',"ENG"),
    ('Sam Harris','RUS'),
    ('Earle Stanley Gardner','RUS'),
    ('Peter Drucker','RUS'),
    ('David Bodanis','RUS'),
    ('Victor Hugo',"FRA"),
    ('Richard Gordon','RUS'),
    ('George Orwell','RUS'),
    ('Lee Iacoca',"USA"),
    ('William S Maugham','RUS'),
    ('Robert Pirsig','RUS'),
    ('Robert Fisk','RUS'),
    ('Amir Aczel','RUS'),
    ('Samuel Huntington','RUS'),
    ('Richard Bach','RUS'),
    ('Braithwaite','RUS'),
    ('V S Naipaul','RUS'),
    ('Jawaharlal Nehru','RUS'),
    ('Gerald Durrell','RUS'),
    ('Simon Singh',"ENG"),
    ('Hart Duda','RUS'),
    ('Thomas Friedman','RUS'),
    ('Keith Devlin','RUS'),
    ('James Gleick','RUS'),
    ('Joy Thomas','RUS'),
    ('Muhammad Rashid','RUS'),
    ('Ned Mohan','RUS'),
    ('Simon Haykin','RUS'),
    ('Alex Rutherford','RUS'),
    ('Michael Baz-Zohar','RUS'),
    ('Jim Corbett','RUS'),
    ('Jules Verne','RUS'),
    ('Deshpande P L','RUS'),
    ('Eric Raymond','RUS'),
    ('Sergio Franco','RUS'),
    ('Allen Downey','RUS'),
    ('Morris West','RUS'),
    ('Phillip Janert','RUS'),
    ('Carl Sagan',"USA"),
    ('E T Bell','RUS'),
    ('Richard Dawkins','RUS'),
    ('Sudhanshu Ranjan',"IND"),
    ('Kautiyla','RUS'),
    ('Palkhivala','RUS'),
    ('Sorabjee','RUS'),
    ('Hussain Zaidi','RUS'),
    ('Peter Ackroyd','RUS'),
    ('Nariman','RUS'),
    ('Jean Sassoon','RUS'),
    ('Peter Dickinson','RUS'),
    ('Machiavelli','RUS'),
    ('Aldous Huxley',"ENG"),
    ('J K Rowling',"ENG"),
    ('Steig Larsson',"SWE"),
    ('Steve Eddins', 'RUS'),
    ('Charles Dickens',"ENG");

INSERT INTO books(`author_id`,`title`,`year`,`language`,`cover_url`,`price`,`sellable`,`copies`,`description`)
VALUES(1,'The Startup Playbook',2014,'es',NULL,10.00,1,5,'Consejo de los expertos, traducido por Platzi'),
    (3,'Estudio en escarlata',1887,'es',NULL,5.00,1,10,'La primera novela de Sherlock Holmes'),
    (6,'Wallander: Asesinos sin rostro',1991,'es',NULL,15.00,1,3,''),
    (6,'Wallander: Los perros de Riga',1992,'es',NULL,15.00,1,3,''),
    (6,'Wallander: La leona blanca',1993,'es',NULL,15.00,1,3,''),
    (6,'Wallander: El hombre sonriente',1994,'es',NULL,15.00,1,3,''),
    (6,'Wallander: La falsa pista',1995,'es',NULL,15.00,1,3,''),
    (6,'Wallander: La quinta mujer',1996,'es',NULL,15.00,1,3,''),
    (6,'Wallander: Pisando los talones',1997,'es',NULL,15.00,1,3,''),
    (6,'Wallander: Cortafuegos',1998,'es',NULL,15.00,1,3,''),
    (5,'El llano en llamas',1953,'es',NULL,10.00,0,1,'Cuentos mexicanos'),
    (7,'Fundamentals of Wavelets',1900,'en',NULL,NULL,1,4,NULL),
    (8,'Data Smart',1900,'en',NULL,NULL,1,4,NULL),
    (9,'God Created the Integers',1900,'en',NULL,NULL,1,4,NULL),
    (10,'Superfreakonomics',1900,'en',NULL,NULL,1,4,NULL),
    (11,'Orientalism',1900,'en',NULL,NULL,1,4,NULL),
    (12,'The Nature of Statistical Learning Theory',1900,'en',NULL,NULL,1,4,NULL),
    (13,'Integration of the Indian States',1900,'en',NULL,NULL,1,4,NULL),
    (14,"The Drunkard\'s Walk",1900,'en',NULL,NULL,1,4,NULL),
    (15,'Image Processing & Mathematical Morphology',1900,'en',NULL,NULL,1,4,NULL),
    (16,'How to Think Like Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
    (17,'Data Scientists at Work',1900,'en',NULL,NULL,1,4,NULL),
    (18,'Slaughterhouse Five',1900,'en',NULL,NULL,1,4,NULL),
    (19,'Birth of a Theorem',1900,'en',NULL,NULL,1,4,NULL),
    (20,'Structure & Interpretation of Computer Programs',1900,'en',NULL,NULL,1,4,NULL),
    (21,'The Age of Wrath',1900,'en',NULL,NULL,1,4,NULL),
    (22,'The Trial',1900,'en',NULL,NULL,1,4,NULL),
    (23,'Statistical Decision Theory',1900,'en',NULL,NULL,1,4,NULL),
    (24,'Data Mining Handbook',1900,'en',NULL,NULL,1,4,NULL),
    (25,'The New Machiavelli',1900,'en',NULL,NULL,1,4,NULL),
    (26,'Physics & Philosophy',1900,'en',NULL,NULL,1,4,NULL),
    (27,'Making Software',1900,'en',NULL,NULL,1,4,NULL),
    (28,'Vol I Analysis',1900,'en',NULL,NULL,1,4,NULL),
    (29,'Machine Learning for Hackers',1900,'en',NULL,NULL,1,4,NULL),
    (30,'The Signal and the Noise',1900,'en',NULL,NULL,1,4,NULL),
    (31,'Python for Data Analysis',1900,'en',NULL,NULL,1,4,NULL),
    (32,'Introduction to Algorithms',1900,'en',NULL,NULL,1,4,NULL),
    (33,'The Beautiful and the Damned',1900,'en',NULL,NULL,1,4,NULL),
    (34,'The Outsider',1900,'en',NULL,NULL,1,4,NULL),
    (35,'The - Vol I Complete Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
    (36,'The - Vol II Complete Sherlock Holmes',1900,'en',NULL,NULL,1,4,NULL),
    (37,'The Wealth of Nations',1900,'en',NULL,NULL,1,4,NULL),
    (38,'The Pillars of the Earth',1900,'en',NULL,NULL,1,4,NULL),
    (39,'The Tao of Physics',1900,'en',NULL,NULL,1,4,NULL),
    (40,"Surely You\'s re Joking Mr Feynman",1900,'en',NULL,NULL,1,4,NULL),
    (41,'A Farewell to Arms',1900,'en',NULL,NULL,1,4,NULL),
    (42,'The Veteran',1900,'en',NULL,NULL,1,4,NULL),
    (43,'False Impressions',1900,'en',NULL,NULL,1,4,NULL),
    (44,'The Last Lecture',1900,'en',NULL,NULL,1,4,NULL),
    (45,'Return of the Primitive',1900,'en',NULL,NULL,1,4,NULL),
    (46,'Jurassic Park',1900,'en',NULL,NULL,1,4,NULL),
    (47,'A Russian Journal',1900,'en',NULL,NULL,1,4,NULL),
    (48,'Tales of Mystery and Imagination',1900,'en',NULL,NULL,1,4,NULL),
    (10,'Freakonomics',1900,'en',NULL,NULL,1,4,NULL),
    (39,'The Hidden Connections',1900,'en',NULL,NULL,1,4,NULL),
    (51,'The Story of Philosophy',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Asami Asami',1900,'en',NULL,NULL,1,4,NULL),
    (47,'Journal of a Novel',1900,'en',NULL,NULL,1,4,NULL),
    (47,'Once There Was a War',1900,'en',NULL,NULL,1,4,NULL),
    (47,'The Moon is Down',1900,'en',NULL,NULL,1,4,NULL),
    (56,'The Brethren',1900,'en',NULL,NULL,1,4,NULL),
    (57,'In a Free State',1900,'en',NULL,NULL,1,4,NULL),
    (58,'Catch 22',1900,'en',NULL,NULL,1,4,NULL),
    (59,'The Complete Mastermind',1900,'en',NULL,NULL,1,4,NULL),
    (60,'Dylan on Dylan',1900,'en',NULL,NULL,1,4,NULL),
    (61,'Soft Computing & Intelligent Systems',1900,'en',NULL,NULL,1,4,NULL),
    (62,'Textbook of Economic Theory',1900,'en',NULL,NULL,1,4,NULL),
    (63,'Econometric Analysis',1900,'en',NULL,NULL,1,4,NULL),
    (64,'Learning OpenCV',1900,'en',NULL,NULL,1,4,NULL),
    (65,'Data Structures Using C & C++',1900,'en',NULL,NULL,1,4,NULL),
    (66,'A Modern Approach Computer Vision',1900,'en',NULL,NULL,1,4,NULL),
    (67,'Principles of Communication Systems',1900,'en',NULL,NULL,1,4,NULL),
    (68,'Let Us C',1900,'en',NULL,NULL,1,4,NULL),
    (69,'The Amulet of Samarkand',1900,'en',NULL,NULL,1,4,NULL),
    (70,'Crime and Punishment',1900,'en',NULL,NULL,1,4,NULL),
    (71,'Angels & Demons',1900,'en',NULL,NULL,1,4,NULL),
    (72,'The Argumentative Indian',1900,'en',NULL,NULL,1,4,NULL),
    (73,'Sea of Poppies',1900,'en',NULL,NULL,1,4,NULL),
    (72,'The Idea of Justice',1900,'en',NULL,NULL,1,4,NULL),
    (75,'A Raisin in the Sun',1900,'en',NULL,NULL,1,4,NULL),
    (76,"All the President\'s Men",1900,'en',NULL,NULL,1,4,NULL),
    (43,'A Prisoner of Birth',1900,'en',NULL,NULL,1,4,NULL),
    (78,'Scoop!',1900,'en',NULL,NULL,1,4,NULL),
    (79,'Ahe Manohar Tari',1900,'en',NULL,NULL,1,4,NULL),
    (80,'The Last Mughal',1900,'en',NULL,NULL,1,4,NULL),
    (81,'Vol 39 No. 1 Social Choice & Welfare',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Radiowaril Bhashane & Shrutika',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Gun Gayin Awadi',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Aghal Paghal',1900,'en',NULL,NULL,1,4,NULL),
    (85,'Maqta-e-Ghalib',1900,'en',NULL,NULL,1,4,NULL),
    (86,'Manasa',1900,'en',NULL,NULL,1,4,NULL),
    (87,'India from Midnight to Milennium',1900,'en',NULL,NULL,1,4,NULL),
    (87,'The Great Indian Novel',1900,'en',NULL,NULL,1,4,NULL),
    (89,'O Jerusalem!',1900,'en',NULL,NULL,1,4,NULL),
    (89,'The City of Joy',1900,'en',NULL,NULL,1,4,NULL),
    (89,'Freedom at Midnight',1900,'en',NULL,NULL,1,4,NULL),
    (47,'The Winter of Our Discontent',1900,'en',NULL,NULL,1,4,NULL),
    (93,'On Education',1900,'en',NULL,NULL,1,4,NULL),
    (94,'Free Will',1900,'en',NULL,NULL,1,4,NULL),
    (87,'Bookless in Baghdad',1900,'en',NULL,NULL,1,4,NULL),
    (96,'The Case of the Lame Canary',1900,'en',NULL,NULL,1,4,NULL),
    (9,'The Theory of Everything',1900,'en',NULL,NULL,1,4,NULL),
    (98,'New Markets & Other Essays',1900,'en',NULL,NULL,1,4,NULL),
    (99,'Electric Universe',1900,'en',NULL,NULL,1,4,NULL),
    (100,'The Hunchback of Notre Dame',1900,'en',NULL,NULL,1,4,NULL),
    (47,'Burning Bright',1900,'en',NULL,NULL,1,4,NULL),
    (98,'The Age of Discontuinity',1900,'en',NULL,NULL,1,4,NULL),
    (103,'Doctor in the Nude',1900,'en',NULL,NULL,1,4,NULL),
    (104,'Down and Out in Paris & London',1900,'en',NULL,NULL,1,4,NULL),
    (72,'Identity & Violence',1900,'en',NULL,NULL,1,4,NULL),
    (80,'Beyond the Three Seas',1900,'en',NULL,NULL,1,4,NULL),
    (107,'Talking Straight',1900,'en',NULL,NULL,1,4,NULL),
    (108,"Vol 3 Maugham\'s Collected Short Stories",1900,'en',NULL,NULL,1,4,NULL),
    (42,'The Phantom of Manhattan',1900,'en',NULL,NULL,1,4,NULL),
    (108,'Ashenden of The British Agent',1900,'en',NULL,NULL,1,4,NULL),
    (111,'Zen & The Art of Motorcycle Maintenance',1900,'en',NULL,NULL,1,4,NULL),
    (112,'The Great War for Civilization',1900,'en',NULL,NULL,1,4,NULL),
    (45,'We the Living',1900,'en',NULL,NULL,1,4,NULL),
    (114,'The Artist and the Mathematician',1900,'en',NULL,NULL,1,4,NULL),
    (93,'History of Western Philosophy',1900,'en',NULL,NULL,1,4,NULL),
    (72,'Rationality & Freedom',1900,'en',NULL,NULL,1,4,NULL),
    (117,'Clash of Civilizations and Remaking of the World Order',1900,'en',NULL,NULL,1,4,NULL),
    (39,'Uncommon Wisdom',1900,'en',NULL,NULL,1,4,NULL),
    (119,'One',1900,'en',NULL,NULL,1,4,NULL),
    (120,'To Sir With Love',1900,'en',NULL,NULL,1,4,NULL),
    (121,'Half A Life',1900,'en',NULL,NULL,1,4,NULL),
    (122,'The Discovery of India',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Apulki',1900,'en',NULL,NULL,1,4,NULL),
    (93,'Unpopular Essays',1900,'en',NULL,NULL,1,4,NULL),
    (42,'The Deceiver',1900,'en',NULL,NULL,1,4,NULL),
    (76,'Veil: Secret Wars of the CIA',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Char Shabda',1900,'en',NULL,NULL,1,4,NULL),
    (128,'Rosy is My Relative',1900,'en',NULL,NULL,1,4,NULL),
    (108,'The Moon and Sixpence',1900,'en',NULL,NULL,1,4,NULL),
    (130,'A Short History of the World',1900,'en',NULL,NULL,1,4,NULL),
    (108,'The Trembling of a Leaf',1900,'en',NULL,NULL,1,4,NULL),
    (103,'Doctor on the Brain',1900,'en',NULL,NULL,1,4,NULL),
    (133,'Simpsons & Their Mathematical Secrets',1900,'en',NULL,NULL,1,4,NULL),
    (134,'Pattern Classification',1900,'en',NULL,NULL,1,4,NULL),
    (135,'From Beirut to Jerusalem',1900,'en',NULL,NULL,1,4,NULL),
    (133,'The Code Book',1900,'en',NULL,NULL,1,4,NULL),
    (112,'The Age of the Warrior',1900,'en',NULL,NULL,1,4,NULL),
    (138,'The Numbers Behind Numb3rs',1900,'en',NULL,NULL,1,4,NULL),
    (47,'A Life in Letters',1900,'en',NULL,NULL,1,4,NULL),
    (140,'The Information',1900,'en',NULL,NULL,1,4,NULL),
    (141,'Elements of Information Theory',1900,'en',NULL,NULL,1,4,NULL),
    (142,'Power Electronics - Rashid',1900,'en',NULL,NULL,1,4,NULL),
    (143,'Power Electronics - Mohan',1900,'en',NULL,NULL,1,4,NULL),
    (144,'Neural Networks',1900,'en',NULL,NULL,1,4,NULL),
    (47,'The Grapes of Wrath',1900,'en',NULL,NULL,1,4,NULL),
    (52,'Vyakti ani Valli',1900,'en',NULL,NULL,1,4,NULL),
    (12,'Statistical Learning Theory',1900,'en',NULL,NULL,1,4,NULL),
    (148,'Empire of the Mughal - The Tainted Throne',1900,'en',NULL,NULL,1,4,NULL),
    (148,'Empire of the Mughal - Brothers at War',1900,'en',NULL,NULL,1,4,NULL),
    (148,'Empire of the Mughal - Ruler of the World',1900,'en',NULL,NULL,1,4,NULL),
    (148,"Empire of the Mughal - The Serpent\'s Tooth",1900,'en',NULL,NULL,1,4,NULL),
    (148,'Empire of the Mughal - Raiders from the North',1900,'en',NULL,NULL,1,4,NULL),
    (153,'Mossad',1900,'en',NULL,NULL,1,4,NULL),
    (154,'Jim Corbett Omnibus',1900,'en',NULL,NULL,1,4,NULL),
    (155,'20000 Leagues Under the Sea',1900,'en',NULL,NULL,1,4,NULL),
    (156,'Batatyachi Chal',1900,'en',NULL,NULL,1,4,NULL),
    (156,'Hafasavnuk',1900,'en',NULL,NULL,1,4,NULL),
    (156,'Urlasurla',1900,'en',NULL,NULL,1,4,NULL),
    (68,'Pointers in C',1900,'en',NULL,NULL,1,4,NULL),
    (160,'The Cathedral and the Bazaar',1900,'en',NULL,NULL,1,4,NULL),
    (161,'Design with OpAmps',1900,'en',NULL,NULL,1,4,NULL),
    (162,'Think Complexity',1900,'en',NULL,NULL,1,4,NULL),
    (163,"The Devil\'s Advocate",1900,'en',NULL,NULL,1,4,NULL),
    (45,'Ayn Rand Answers',1900,'en',NULL,NULL,1,4,NULL),
    (45,'Philosophy: Who Needs It',1900,'en',NULL,NULL,1,4,NULL),
    (166,'Data Analysis with Open Source Tools',1900,'en',NULL,NULL,1,4,NULL),
    (167,"Broca\'s Brain",1900,'en',NULL,NULL,1,4,NULL),
    (168,'Men of Mathematics',1900,'en',NULL,NULL,1,4,NULL),
    (169,'Oxford book of Modern Science Writing',1900,'en',NULL,NULL,1,4,NULL),
    (170,'Judiciary and Democracy Justice',1900,'en',NULL,NULL,1,4,NULL),
    (171,'The Arthashastra',1900,'en',NULL,NULL,1,4,NULL),
    (172,'We the People',1900,'en',NULL,NULL,1,4,NULL),
    (172,'We the Nation',1900,'en',NULL,NULL,1,4,NULL),
    (174,'The Courtroom Genius',1900,'en',NULL,NULL,1,4,NULL),
    (175,'Dongri to Dubai',1900,'en',NULL,NULL,1,4,NULL),
    (176,'Foundation History of England',1900,'en',NULL,NULL,1,4,NULL),
    (80,'City of Djinns',1900,'en',NULL,NULL,1,4,NULL),
    (178,"India\'s Legal System",1900,'en',NULL,NULL,1,4,NULL),
    (179,'More Tears to Cry',1900,'en',NULL,NULL,1,4,NULL),
    (180,'The Ropemaker',1900,'en',NULL,NULL,1,4,NULL),
    (182,'The Prince',1900,'en',NULL,NULL,1,4,NULL),
    (183,'Eyeless in Gaza',1900,'en',NULL,NULL,1,4,NULL),
    (184,'Tales of Beedle the Bard',1900,'en',NULL,NULL,1,4,NULL),
    (185,'Girl with the Dragon Tattoo',1900,'en',NULL,NULL,1,4,NULL),
    (185,"Girl who kicked the Hornet\'s Nest",1900,'en',NULL,NULL,1,4,NULL),
    (185,'Girl who played with Fire',1900,'en',NULL,NULL,1,4,NULL),
    (28,'Structure and Randomness',1900,'en',NULL,NULL,1,4,NULL),
    (189,'Image Processing with MATLAB',1900,'en',NULL,NULL,1,4,NULL),
    (104,'Animal Farm',1900,'en',NULL,NULL,1,4,NULL),
    (70,'The Idiot',1900,'en',NULL,NULL,1,4,NULL),
    (192,'A Christmas Carol',1900,'en',NULL,NULL,1,4,NULL);


INSERT INTO clients(`client_id`,`name`,`email`,`birthdate`,`gender`,`active`) 
VALUES (1,'Maria Dolores Gomez','Maria Dolores.95983222J@random.names','1971-06-06','F',1),
    (2,'Adrian Fernandez','Adrian.55818851J@random.names','1970-04-09','M',1),
    (3,'Maria Luisa Marin','Maria Luisa.83726282A@random.names','1957-07-30','F',1),
    (4,'Pedro Sanchez','Pedro.78522059J@random.names','1992-01-31','M',1),
    (5,'Pablo Saavedra','Pablo.93733268B@random.names','1960-07-21','M',1),
    (6,'Marta Carrillo','Marta.55741882W@random.names','1981-06-15','F',1),
    (7,'Javier Barrio','Javier.54966248C@random.names','1971-04-24','M',1),
    (8,'Milagros Garcia','Milagros.90074144A@random.names','1964-12-05','F',1),
    (9,'Carlos Quiros','Carlos.63291957M@random.names','1954-08-28','M',1),
    (10,'Carmen De la Torre','Carmen.57408761W@random.names','1966-05-14','F',1),
    (11,'Laura Moron','Laura.57774589S@random.names','1954-03-02','F',1),
    (12,'Maria Dolores Larrea','Maria Dolores.71788005Z@random.names','1990-09-04','F',1),
    (13,'Maria Dolores Sanz','Maria Dolores.30948169J@random.names','2001-08-30','F',1),
    (14,'Jose Maria Bermudez','Jose Maria.24963969E@random.names','1998-05-23','M',1),
    (15,'Carlos Blanco','Carlos.94783133H@random.names','1952-08-07','M',1),
    (16,'Juan Carlos Jurado','Juan Carlos.71650477A@random.names','1990-12-12','M',1),
    (17,'David Gonzalez','David.54332034P@random.names','1976-05-03','M',1),
    (18,'Antonia Aranda','Antonia.91560262E@random.names','1979-10-25','F',1),
    (19,'Maria Moreno','Maria.58935447V@random.names','1997-01-12','F',1),
    (20,'David Casals','David.06746883V@random.names','1999-07-13','M',1),
    (21,'Mario Romero','Mario.46091382A@random.names','1985-03-29','M',1),
    (22,'Maria angeles Alba','Maria angeles.91808919A@random.names','1959-09-14','F',1),
    (23,'Rafael Espinola','Rafael.67605541P@random.names','1998-10-11','M',1),
    (24,'Montserrat alvarez','Montserrat.31114289G@random.names','1994-11-06','F',1),
    (25,'Maria Carmen Gomez','Maria Carmen.64351051H@random.names','1968-06-30','F',1),
    (26,'Maria Cruz Morillas','Maria Cruz.81385695B@random.names','1978-10-29','F',1),
    (27,'Josefa Roldan','Josefa.51417560W@random.names','1993-08-09','F',1),
    (28,'Monica Pla','Monica.18992324M@random.names','1972-06-08','F',1),
    (29,'Juana Maria Lopez','Juana Maria.51072683X@random.names','1990-07-15','F',1),
    (30,'Maria Carmen Ponce','Maria Carmen.41619980P@random.names','1984-07-26','F',1),
    (31,'Juan Carlos Rios','Juan Carlos.45673504N@random.names','1967-05-04','M',1),
    (32,'Isabel Alfaro','Isabel.77316882J@random.names','1980-07-25','F',1),
    (33,'Maria Isabel Armas','Maria Isabel.42010289F@random.names','1950-11-21','F',1),
    (34,'Maria Teresa Castillo','Maria Teresa.91228389Q@random.names','2002-11-08','F',1),
    (35,'Andres Planells','Andres.09981449R@random.names','1992-06-19','M',1),
    (36,'Silvia Perez','Silvia.91812407H@random.names','1969-02-15','F',1),
    (37,'Pablo Gonzalez','Pablo.11605676Z@random.names','2000-10-11','M',1),
    (38,'Maria Antonia Jimenez','Maria Antonia.98071058R@random.names','1998-06-23','F',1),
    (39,'Jesus Rodriguez','Jesus.86679475L@random.names','1961-01-17','M',1),
    (40,'Carmen Rodriguez','Carmen.81799536J@random.names','1973-02-17','F',1),
    (41,'Maria Dolores Rodriguez','Maria Dolores.75444599E@random.names','1962-08-14','F',1),
    (42,'Jordi Campos','Jordi.76000917Q@random.names','1956-09-23','M',1),
    (43,'Carlos Caceres','Carlos.97628163V@random.names','1993-05-16','M',1),
    (44,'Carmen Robles','Carmen.29258188A@random.names','1955-06-19','F',1),
    (45,'Sara Rodriguez','Sara.16181250Z@random.names','2001-06-07','F',1),
    (46,'Maria Carmen Rivera','Maria Carmen.59955426S@random.names','2000-05-27','F',1),
    (47,'Alberto Cabanas','Alberto.40633755T@random.names','1991-10-27','M',1),
    (48,'Jose Sanchez','Jose.52243847Z@random.names','1976-12-06','M',1),
    (49,'Isabel Martinez','Isabel.90843261T@random.names','1962-07-01','F',1),
    (50,'David Sanchez','David.14910073R@random.names','1975-05-18','M',1),
    (51,'Sergio Sebastian','Sergio.09345984A@random.names','1959-08-30','M',1),
    (52,'Manuel Cabrera','Manuel.38738750B@random.names','1993-08-23','M',1),
    (53,'Marina Gabaldon','Marina.12101665P@random.names','1959-03-25','F',1),
    (54,'Rafael Galvez','Rafael.87947175M@random.names','1988-09-02','M',1),
    (55,'Francisco Villar','Francisco.13922268T@random.names','1952-04-25','M',1),
    (56,'Francisco Garcia','Francisco.34242509V@random.names','1989-01-22','M',1),
    (57,'Esther Pina','Esther.36300729J@random.names','1977-11-07','F',1),
    (58,'Maria Jesus Noya','Maria Jesus.95839533M@random.names','1996-08-07','F',1),
    (59,'Paula Ropero','Paula.53630073F@random.names','1998-09-04','F',1),
    (60,'Maria Carmen Iglesias','Maria Carmen.24044144J@random.names','1977-06-12','F',1),
    (61,'Albert Galvez','Albert.10067957Y@random.names','1971-05-17','M',1),
    (62,'Carmen Lopez','Carmen.09399409E@random.names','1987-03-07','F',1),
    (63,'Francisco Jose Leon','Francisco Jose.07598657D@random.names','1965-12-11','M',1),
    (64,'Francisca Gonzalez','Francisca.19675393C@random.names','1957-12-23','F',1),
    (65,'Daniel Garcia','Daniel.01386486T@random.names','1979-05-29','M',1),
    (66,'Ana Maria Martinez','Ana Maria.91340418N@random.names','1980-09-14','F',1),
    (67,'Maria Aguilar','Maria.41749884P@random.names','2000-07-31','F',1),
    (68,'oscar Penas','oscar.31681177B@random.names','1981-10-02','M',1),
    (69,'Adrian Vela','Adrian.66561884E@random.names','1978-12-10','M',1),
    (70,'Francisco Alcalde','Francisco.52899588W@random.names','1967-03-11','M',1),
    (71,'Maria Dolores Perez','Maria Dolores.47800073R@random.names','2003-11-10','F',1),
    (72,'Juan Jose Tejada','Juan Jose.30429668R@random.names','1990-06-15','M',1),
    (73,'Cristobal Nogues','Cristobal.01001763K@random.names','2003-10-01','M',1),
    (74,'Maria Luisa Sanchez','Maria Luisa.91748033K@random.names','2000-02-03','F',1),
    (75,'Adrian Orta','Adrian.11458937S@random.names','1952-03-20','M',1),
    (76,'Maria Pilar Martin','Maria Pilar.93607154Y@random.names','1996-08-29','F',1),
    (77,'Jesus Perez','Jesus.91931655B@random.names','1954-06-01','M',1),
    (78,'Jesus Perez','Jesus.15757299E@random.names','1956-08-29','M',1),
    (79,'Esther Capdevila','Esther.96440550D@random.names','1970-10-12','F',1),
    (80,'David Nieves','David.40697907M@random.names','1965-04-02','M',1),
    (81,'Antonia Giron','Antonia.32080105G@random.names','1983-01-22','F',1),
    (82,'Juan Casero','Juan.94063877H@random.names','1974-06-29','M',1),
    (83,'Manuel De Pablo','Manuel.01279669H@random.names','1973-03-23','M',1),
    (84,'angel Palomo','angel.28890315S@random.names','1991-07-04','M',1),
    (85,'Laura Herrera','Laura.98555932N@random.names','1966-12-12','F',1),
    (86,'Maria Josefa Benitez','Maria Josefa.36743977M@random.names','1987-04-17','F',1),
    (87,'Luis Saez','Luis.08103734Y@random.names','1983-03-28','M',1),
    (88,'Susana Nevado','Susana.09442372K@random.names','1961-12-26','F',1),
    (89,'Miguel Gomez','Miguel.01631964E@random.names','1965-05-16','M',1),
    (90,'Julio Mayordomo','Julio.77582185B@random.names','1968-06-05','M',1),
    (91,'Sonia Mari','Sonia.06246888L@random.names','1994-10-13','F',1),
    (92,'Antonia Beltran','Antonia.96371304Q@random.names','1967-11-17','F',1),
    (93,'Mercedes Perez','Mercedes.80944345P@random.names','1958-11-05','F',1),
    (94,'Concepcion Velez','Concepcion.56896097P@random.names','1964-04-05','F',1),
    (95,'Diego Correa','Diego.44862413Q@random.names','1999-09-15','M',1),
    (96,'Juan Antonio Galan','Juan Antonio.95710220K@random.names','1982-11-20','M',1),
    (97,'Manuel Cerezo','Manuel.25853412D@random.names','1991-03-12','M',1),
    (98,'Rosa Maria Singh','Rosa Maria.41642169W@random.names','1956-12-31','F',1),
    (99,'angeles Mena','angeles.88859550Q@random.names','1987-09-22','F',1),
    (100,'Jose Hidalgo','Jose.05903641R@random.names','1973-08-13','M',1);

INSERT INTO transactions(`book_id`,`client_id`,`type`,`finished`)
VALUES(34,12,'sell','1'),
      (87,54,'lend','0'),
      (14,3,'sell','1'),
      (54,1,'sell','1'),
      (81,12,'lend','0'),
      (81,12,'sell','1'),
      (30,10,'return','1');