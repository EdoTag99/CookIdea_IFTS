
INSERT INTO ingredienti (nome_ingrediente, categoria_ingrediente) VALUES 
('Pomodori', 'Verdura'),
('Cipolle', 'Verdura'),
('Aglio', 'Verdura'),
('Basilico', 'Erbe Aromatiche'),
('Origano', 'Erbe Aromatiche'),
('Olio Extra Vergine di Oliva', 'Condimento'),
('Sale', 'Condimento'),
('Pepe', 'Condimento'),
('Farina', 'Farine'),
('Latte', 'Latticini'),
('Pepe nero', 'Spezie'),
('Pasta per pizza', 'Farine e cereali'),
('Mozzarella', 'Latticini'),
('Pinoli', 'Frutta secca'),
('Parmigiano', 'Formaggi'),
('Riso', 'Cereali'),
('Brodo vegetale', 'Brodi'),
('Zafferano', 'Spezie'),
('Melanzane', 'Frutta e verdura'),
('Formaggio', 'Formaggi'),
('Vongole', 'Frutti di mare'),
('Mascarpone', 'Latticini'),
('Zucchero', 'Dolcificanti'),
('Savoiardi', 'Dolci e dessert'),
('Caffè', 'Bevande');


INSERT INTO `piatti` (`nome_piatto`, `difficolta`, `tempo`, `provenienza`, `portata`, `procedimento`) VALUES 
('Pasta alla Carbonara', 2, 25, 'Lazio', 'Primo', 'Cuocere la pasta, rosolare pancetta e aglio, aggiungere la pasta cotta e mescolare con uova e pecorino.'),
('Risotto ai Funghi Porcini', 2, 30, 'Piemonte', 'Primo', 'Soffriggere cipolla e funghi, aggiungere il riso e sfumare con il vino, cuocere aggiungendo brodo vegetale.'),
('Ossobuco alla Milanese', 3, 120, 'Lombardia', 'Secondo', 'Rosolare l`ossobuco, aggiungere vino bianco e brodo, cuocere con pomodoro, sedano, carota e cipolla.'),
('Cacio e Pepe', 1, 20, 'Lazio', 'Primo', 'Cuocere la pasta, mantecare con pecorino e pepe nero.'),
('Pizza', 2, 45, 'Campania', 'Secondo', 'Stendere la pasta, condire con pomodoro, mozzarella e basilico, cuocere in forno.'),
('Pesto alla Genovese', 1, 15, 'Liguria', 'Condimento', 'Frullare basilico, pinoli, aglio, parmigiano e olio extravergine d`oliva.'),
('Risotto alla Milanese', 2, 30, 'Lombardia', 'Primo', 'Rosolare la cipolla, tostare il riso, sfumare con vino bianco, cuocere aggiungendo brodo e zafferano.'),
('Parmigiana di Melanzane', 2, 60, 'Sicilia', 'Secondo', 'Friggere le melanzane, alternare strati di melanzane, salsa di pomodoro e formaggio, cuocere al forno.'),
('Spaghetti alle Vongole', 2, 25, 'Campania', 'Primo', 'Rosolare aglio e peperoncino, aggiungere vongole e vino bianco, cuocere la pasta e mantecare con le vongole.'),
('Tiramisù', 3, 60, 'Veneto', 'Dolce', 'Preparare una crema con uova, zucchero e mascarpone, inzuppare i biscotti nel caffè, alternare strati di biscotti e crema, spolverare con cacao amaro in polvere.'),

('Gnocchi di riso con verdure', 1, 60, 'Cina', 'Primo', 'Cuocere gli gnocchi e aggiungere le verdure'),
('Lasagna', 2, 55, 'Emilia Romagna', 'Primo', 'Assemblare la pasta con tutto il resto e cuocerla'),
('Pasta in bianco', 3, 10, 'Lombardia', 'Primo', 'Cuocere la pasta e aggiungere olio e poarmigiano.');


-- Inserimento dei dati nel ricettario per il piatto 'Pasta alla Carbonara'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(1, 12, 200), -- Pasta per pizza
(1, 18, 100), -- Parmigiano
(1, 11, 1),   -- Pepe nero
(1, 10, 2),   -- Latte
(1, 17, 100); -- Aglio

-- Inserimento dei dati nel ricettario per il piatto 'Risotto ai Funghi Porcini'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(2, 13, 2),  -- Pomodoro
(2, 14, 200), -- Mozzarella
(2, 5, 5),   -- Basilico
(2, 19, 30), -- Olio extravergine d'oliva
(2, 7, 1),   -- Sale
(2, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Ossobuco alla Milanese'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(3, 12, 1),  -- Pasta per pizza
(3, 13, 2),  -- Pomodoro
(3, 3, 1),   -- Aglio
(3, 5, 3),   -- Basilico
(3, 19, 30), -- Olio extravergine d'oliva
(3, 7, 1),   -- Sale
(3, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Cacio e Pepe'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(4, 13, 2),  -- Pomodoro
(4, 18, 200), -- Mozzarella
(4, 5, 5),   -- Basilico
(4, 19, 30), -- Olio extravergine d'oliva
(4, 7, 1),   -- Sale
(4, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Pizza'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(5, 13, 2),  -- Pomodoro
(5, 14, 200), -- Mozzarella
(5, 5, 5),   -- Basilico
(5, 19, 30), -- Olio extravergine d'oliva
(5, 7, 1),   -- Sale
(5, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Pesto alla Genovese'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(6, 13, 2),  -- Pomodoro
(6, 14, 200), -- Mozzarella
(6, 5, 5),   -- Basilico
(6, 19, 30), -- Olio extravergine d'oliva
(6, 7, 1),   -- Sale
(6, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Risotto alla Milanese'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(7, 13, 2),  -- Pomodoro
(7, 14, 200), -- Mozzarella
(7, 5, 5),   -- Basilico
(7, 19, 30), -- Olio extravergine d'oliva
(7, 7, 1),   -- Sale
(7, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Parmigiana di Melanzane'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(8, 13, 2),  -- Pomodoro
(8, 14, 200), -- Mozzarella
(8, 5, 5),   -- Basilico
(8, 19, 30), -- Olio extravergine d'oliva
(8, 7, 1),   -- Sale
(8, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Spaghetti alle Vongole'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(9, 13, 2),  -- Pomodoro
(9, 14, 200), -- Mozzarella
(9, 5, 5),   -- Basilico
(9, 19, 30), -- Olio extravergine d'oliva
(9, 7, 1),   -- Sale
(9, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Tiramisù'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(10, 13, 2),  -- Pomodoro
(10, 14, 200), -- Mozzarella
(10, 5, 5),   -- Basilico
(10, 19, 30), -- Olio extravergine d'oliva
(10, 7, 1),   -- Sale
(10, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Pasta in bianco'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(13, 13, 2),  -- Pomodoro
(13, 14, 200), -- Mozzarella
(13, 5, 5),   -- Basilico
(13, 19, 30), -- Olio extravergine d'oliva
(13, 7, 1),   -- Sale
(13, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Gnocchi di riso'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(11, 13, 2),  -- Pomodoro
(11, 14, 200), -- Mozzarella
(11, 5, 5),   -- Basilico
(11, 19, 30), -- Olio extravergine d'oliva
(11, 7, 1),   -- Sale
(11, 8, 1);   -- Pepe

-- Inserimento dei dati nel ricettario per il piatto 'Lasagna'
INSERT INTO ricettario (id_piatto, id_ingrediente, quantita_ingrediente) VALUES 
(12, 13, 2),  -- Pomodoro
(12, 14, 200), -- Mozzarella
(12, 5, 5),   -- Basilico
(12, 19, 30), -- Olio extravergine d'oliva
(12, 7, 1),   -- Sale
(12, 8, 1);   -- Pepe



INSERT INTO `utenti` VALUES (1,'Mario','Rossi','1990-05-15','mario.rossi@example.com','mario123','password123'),(2,'Laura','Bianchi','1985-09-20','laura.bianchi@example.com','laura456','password456'),(3,'Giovanni','Verdi','1988-07-10','giovanni.verdi@example.com','giovanni789','password789');



INSERT INTO `tipo_pasto` VALUES (1,'Primo'),(2,'Secondo'),(3,'Contorno'),(4,'Dolce');


UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'carbonara.jpg' WHERE (`id` = '1');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'risottofunghi.jpg' WHERE (`id` = '2');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'ossobuco.jpg' WHERE (`id` = '3');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'caciopepe.jpg' WHERE (`id` = '4');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'pizza.jpg' WHERE (`id` = '5');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'pestogenovese.jpg' WHERE (`id` = '6');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'risottomilanese.jpg' WHERE (`id` = '7');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'parmigianamelanzane.jpg' WHERE (`id` = '8');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'spaghettivongole.jpg' WHERE (`id` = '9');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'tiramisu.jpg' WHERE (`id` = '10');

UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'gnocchidiriso.jpg' WHERE (`id` = '11');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'lasagna.jpg' WHERE (`id` = '12');
UPDATE `COOKIDEA`.`piatti` SET `image_name` = 'pastainbianco.jpg' WHERE (`id` = '13');

INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('1', '1', '2');
INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('2', '1', '3');
INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('3', '1', '4');
INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('4', '1', '5');
INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('5', '2', '4');
INSERT INTO `cookidea`.`preferiti` (`id`, `id_utente`, `id_piatto`) VALUES ('6', '2', '8');




 --
select * from preferiti;
