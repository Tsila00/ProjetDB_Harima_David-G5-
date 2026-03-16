
INSERT INTO OFFICIEL (id_officiel, nom_off, prenom_off, niveau_certif_off, role_off) VALUES
(1, 'Collet', 'Marc', 'International', 'Starter'),
(2, 'Leclerc', 'Sophie', 'National', 'Chronométreur'),
(3, 'Boucher', 'Paul', 'Régional', 'Juge-Arbitre'),
(4, 'Blanc', 'Marie', 'International', 'Chronométreur'),
(5, 'Garon', 'Luc', 'National', 'Starter'),
(6, 'Perrin', 'Julie', 'Régional', 'Anémométreur'),
(7, 'Gauthier', 'Alain', 'International', 'Juge-Arbitre'),
(8, 'Marchand', 'Elodie', 'National', 'Chronométreur'),
(9, 'Dupuis', 'Jean', 'Régional', 'Starter'),
(10, 'Roussel', 'Claire', 'National', 'Juge de piste'),
(11, 'Meunier', 'Antoine', 'International', 'Starter'),
(12, 'Lemoine', 'Céline', 'Régional', 'Chronométreur'),
(13, 'Picard', 'Bruno', 'National', 'Anémométreur'),
(14, 'Caron', 'Valérie', 'International', 'Juge-Arbitre'),
(15, 'Boyer', 'Thomas', 'Régional', 'Juge de piste'),
(16, 'Lefevre', 'Alice', 'National', 'Starter'),
(17, 'Barbier', 'Hugo', 'International', 'Chronométreur'),
(18, 'Brun', 'Léa', 'Régional', 'Anémométreur'),
(19, 'Dumas', 'Julien', 'National', 'Juge-Arbitre'),
(20, 'Giraud', 'Emma', 'International', 'Juge de piste');


INSERT INTO EPREUVE (id_epreuve, nom_epreuve, categorie_age) VALUES
(1, '100m', 'Senior'),
(2, '200m', 'Senior'),
(3, '400m', 'Espoir'),
(4, '110m Haies', 'Senior'),
(5, '4x100m', 'Senior');


INSERT INTO VILLE (code_postal, ville) VALUES
(75000, 'Paris'),
(69000, 'Lyon'),
(13000, 'Marseille'),
(33000, 'Bordeaux'),
(59000, 'Lille'),
(31000, 'Toulouse'),
(6000, 'Nice'),
(44000, 'Nantes'),
(67000, 'Strasbourg'),
(34000, 'Montpellier');



INSERT INTO CLUB (id_club, nom_club, e_mail, code_postal, ville) VALUES
(1, 'Paris Athlé', 'contact@paris-athle.fr', 75000, 'Paris'),
(2, 'Lyon Sprint', 'lyonsprint@asso.fr', 69000, 'Lyon'),
(3, 'OM Athlétisme', 'om-athle@club.fr', 13000, 'Marseille'),
(4, 'Bordeaux EC', 'bec@bordeaux.fr', 33000, 'Bordeaux'),
(5, 'Lille Métropole Athlétisme', 'lma@lille.fr', 59000, 'Lille'),
(6, 'SATUC Toulouse', 'contact@satuc.fr', 31000, 'Toulouse'),
(7, 'Nice Côte d Azur Athlétisme', 'ncaa@nice.fr', 6000, 'Nice'),
(8, 'Nantes Métropole Athlétisme', 'nma@nantes.fr', 44000, 'Nantes'),
(9, 'Alsace Nord Athlétisme', 'ana@strasbourg.fr', 67000, 'Strasbourg'),
(10, 'Montpellier Athletic', 'ma@montpellier.fr', 34000, 'Montpellier');


INSERT INTO STADE (id_stade, nom_stade, type_revetement_piste, altitude, nb_couloirs, code_postal, ville) VALUES
(1, 'Stade Charléty', 'Mondo', 35.00, '8', 75000, 'Paris'),
(2, 'Stade de Gerland', 'Tartan', 170.00, '8', 69000, 'Lyon'),
(3, 'Stade Delort', 'Synthétique', 12.00, '8', 13000, 'Marseille'),
(4, 'Stade Chaban-Delmas', 'Mondo', 15.00, '8', 33000, 'Bordeaux'),
(5, 'Stadium Lille Métropole', 'Tartan', 30.00, '9', 59000, 'Lille'),
(6, 'Stade Daniel Faucher', 'Synthétique', 140.00, '8', 31000, 'Toulouse'),
(7, 'Stade Charles-Ehrmann', 'Mondo', 10.00, '8', 6000, 'Nice'),
(8, 'Stade Michel Lecointre', 'Tartan', 25.00, '8', 44000, 'Nantes'),
(9, 'Stade de Hautepierre', 'Synthétique', 142.00, '8', 67000, 'Strasbourg'),
(10, 'Stade Philippidès', 'Mondo', 50.00, '8', 34000, 'Montpellier');


-- =========================================================================
-- NIVEAU 3 : TABLES DÉPENDANT DE CLUB ET STADE
-- =========================================================================


INSERT INTO ATHLETE (id_licence, nom, prenom, sexe, date_naissance, nationalite, id_club) VALUES

(101, 'Martin', 'Lucas', 'M', '1998-05-14', 'FRA', 1), (102, 'Martin', 'Hugo', 'M', '2001-02-28', 'FRA', 2),
(103, 'Martin', 'Louis', 'M', '1999-11-12', 'FRA', 3), (104, 'Martin', 'Gabriel', 'M', '2002-07-25', 'FRA', 4),
(105, 'Martin', 'Arthur', 'M', '2000-09-08', 'FRA', 5), (106, 'Bernard', 'Lucas', 'M', '1997-04-19', 'FRA', 6),
(107, 'Bernard', 'Hugo', 'M', '2003-01-30', 'FRA', 7), (108, 'Bernard', 'Louis', 'M', '1998-08-14', 'FRA', 8),
(109, 'Bernard', 'Gabriel', 'M', '2001-12-05', 'FRA', 9), (110, 'Bernard', 'Arthur', 'M', '1999-03-22', 'FRA', 10),
(111, 'Thomas', 'Lucas', 'M', '2000-06-11', 'FRA', 1), (112, 'Thomas', 'Hugo', 'M', '1996-10-09', 'FRA', 2),
(113, 'Thomas', 'Louis', 'M', '2002-04-27', 'FRA', 3), (114, 'Thomas', 'Gabriel', 'M', '1998-01-15', 'FRA', 4),
(115, 'Thomas', 'Arthur', 'M', '2001-08-02', 'FRA', 5), (116, 'Petit', 'Lucas', 'M', '1999-05-31', 'FRA', 6),
(117, 'Petit', 'Hugo', 'M', '2003-11-18', 'FRA', 7), (118, 'Petit', 'Louis', 'M', '1997-02-04', 'FRA', 8),
(119, 'Petit', 'Gabriel', 'M', '2000-07-21', 'FRA', 9), (120, 'Petit', 'Arthur', 'M', '1998-09-10', 'FRA', 10),
(121, 'Robert', 'Lucas', 'M', '2002-12-29', 'FRA', 1), (122, 'Robert', 'Hugo', 'M', '1999-04-13', 'FRA', 2),
(123, 'Robert', 'Louis', 'M', '2001-10-06', 'FRA', 3), (124, 'Robert', 'Gabriel', 'M', '1997-06-25', 'FRA', 4),
(125, 'Robert', 'Arthur', 'M', '2000-03-14', 'FRA', 5), (126, 'Richard', 'Lucas', 'M', '1998-11-02', 'FRA', 6),
(127, 'Richard', 'Hugo', 'M', '2003-08-19', 'FRA', 7), (128, 'Richard', 'Louis', 'M', '1999-01-08', 'FRA', 8),
(129, 'Richard', 'Gabriel', 'M', '2002-05-26', 'FRA', 9), (130, 'Richard', 'Arthur', 'M', '1996-09-15', 'FRA', 10),
(131, 'Durand', 'Lucas', 'M', '2001-02-03', 'FRA', 1), (132, 'Durand', 'Hugo', 'M', '1998-07-22', 'FRA', 2),
(133, 'Durand', 'Louis', 'M', '2000-11-09', 'FRA', 3), (134, 'Durand', 'Gabriel', 'M', '1997-04-28', 'FRA', 4),
(135, 'Durand', 'Arthur', 'M', '2003-01-16', 'FRA', 5), (136, 'Dubois', 'Lucas', 'M', '1999-08-04', 'FRA', 6),
(137, 'Dubois', 'Hugo', 'M', '2002-12-23', 'FRA', 7), (138, 'Dubois', 'Louis', 'M', '1998-06-12', 'FRA', 8),
(139, 'Dubois', 'Gabriel', 'M', '2001-03-01', 'FRA', 9), (140, 'Dubois', 'Arthur', 'M', '1997-10-18', 'FRA', 10),
(141, 'Moreau', 'Lucas', 'M', '2000-05-07', 'FRA', 1), (142, 'Moreau', 'Hugo', 'M', '2003-09-24', 'FRA', 2),
(143, 'Moreau', 'Louis', 'M', '1999-02-11', 'FRA', 3), (144, 'Moreau', 'Gabriel', 'M', '1996-11-30', 'FRA', 4),
(145, 'Moreau', 'Arthur', 'M', '2002-07-19', 'FRA', 5), (146, 'Laurent', 'Lucas', 'M', '1998-04-08', 'FRA', 6),
(147, 'Laurent', 'Hugo', 'M', '2001-08-25', 'FRA', 7), (148, 'Laurent', 'Louis', 'M', '1999-01-14', 'FRA', 8),
(149, 'Laurent', 'Gabriel', 'M', '2003-06-03', 'FRA', 9), (150, 'Laurent', 'Arthur', 'M', '1997-12-20', 'FRA', 10),
(151, 'Simon', 'Lucas', 'M', '2000-09-08', 'FRA', 1), (152, 'Simon', 'Hugo', 'M', '1998-03-27', 'FRA', 2),
(153, 'Simon', 'Louis', 'M', '2002-10-16', 'FRA', 3), (154, 'Simon', 'Gabriel', 'M', '1999-05-05', 'FRA', 4),
(155, 'Simon', 'Arthur', 'M', '2001-11-23', 'FRA', 5), (156, 'Michel', 'Lucas', 'M', '1997-08-12', 'FRA', 6),
(157, 'Michel', 'Hugo', 'M', '2003-02-28', 'FRA', 7), (158, 'Michel', 'Louis', 'M', '1998-07-19', 'FRA', 8),
(159, 'Michel', 'Gabriel', 'M', '2000-12-06', 'FRA', 9), (160, 'Michel', 'Arthur', 'M', '1999-06-25', 'FRA', 10),
(161, 'Lefebvre', 'Lucas', 'M', '2002-01-13', 'FRA', 1), (162, 'Lefebvre', 'Hugo', 'M', '1996-10-02', 'FRA', 2),
(163, 'Lefebvre', 'Louis', 'M', '2001-04-20', 'FRA', 3), (164, 'Lefebvre', 'Gabriel', 'M', '1998-11-08', 'FRA', 4),
(165, 'Lefebvre', 'Arthur', 'M', '2000-05-27', 'FRA', 5), (166, 'Leroy', 'Lucas', 'M', '2003-09-14', 'FRA', 6),
(167, 'Leroy', 'Hugo', 'M', '1997-03-05', 'FRA', 7), (168, 'Leroy', 'Louis', 'M', '2002-08-22', 'FRA', 8),
(169, 'Leroy', 'Gabriel', 'M', '1999-02-09', 'FRA', 9), (170, 'Leroy', 'Arthur', 'M', '2001-07-28', 'FRA', 10),
(171, 'Roux', 'Lucas', 'M', '1998-12-16', 'FRA', 1), (172, 'Roux', 'Hugo', 'M', '2000-06-04', 'FRA', 2),
(173, 'Roux', 'Louis', 'M', '2003-01-22', 'FRA', 3), (174, 'Roux', 'Gabriel', 'M', '1997-09-10', 'FRA', 4),
(175, 'Roux', 'Arthur', 'M', '1999-04-29', 'FRA', 5),


(201, 'Martin', 'Emma', 'F', '2000-01-15', 'FRA', 6), (202, 'Martin', 'Jade', 'F', '1998-06-24', 'FRA', 7),
(203, 'Martin', 'Louise', 'F', '2001-12-03', 'FRA', 8), (204, 'Martin', 'Alice', 'F', '1999-07-12', 'FRA', 9),
(205, 'Martin', 'Chloé', 'F', '2002-02-18', 'FRA', 10), (206, 'Bernard', 'Emma', 'F', '1997-09-06', 'FRA', 1),
(207, 'Bernard', 'Jade', 'F', '2003-04-25', 'FRA', 2), (208, 'Bernard', 'Louise', 'F', '1998-11-13', 'FRA', 3),
(209, 'Bernard', 'Alice', 'F', '2000-05-02', 'FRA', 4), (210, 'Bernard', 'Chloé', 'F', '2001-10-21', 'FRA', 5),
(211, 'Thomas', 'Emma', 'F', '1999-03-10', 'FRA', 6), (212, 'Thomas', 'Jade', 'F', '2002-08-28', 'FRA', 7),
(213, 'Thomas', 'Louise', 'F', '1996-01-16', 'FRA', 8), (214, 'Thomas', 'Alice', 'F', '2000-06-05', 'FRA', 9),
(215, 'Thomas', 'Chloé', 'F', '1998-12-24', 'FRA', 10), (216, 'Petit', 'Emma', 'F', '2003-07-13', 'FRA', 1),
(217, 'Petit', 'Jade', 'F', '1999-02-01', 'FRA', 2), (218, 'Petit', 'Louise', 'F', '2001-09-20', 'FRA', 3),
(219, 'Petit', 'Alice', 'F', '1997-04-09', 'FRA', 4), (220, 'Petit', 'Chloé', 'F', '2002-11-27', 'FRA', 5),
(221, 'Robert', 'Emma', 'F', '1998-05-16', 'FRA', 6), (222, 'Robert', 'Jade', 'F', '2000-10-04', 'FRA', 7),
(223, 'Robert', 'Louise', 'F', '2003-03-24', 'FRA', 8), (224, 'Robert', 'Alice', 'F', '1999-08-12', 'FRA', 9),
(225, 'Robert', 'Chloé', 'F', '1996-01-30', 'FRA', 10), (226, 'Richard', 'Emma', 'F', '2001-06-19', 'FRA', 1),
(227, 'Richard', 'Jade', 'F', '1998-11-07', 'FRA', 2), (228, 'Richard', 'Louise', 'F', '2002-04-26', 'FRA', 3),
(229, 'Richard', 'Alice', 'F', '1999-09-14', 'FRA', 4), (230, 'Richard', 'Chloé', 'F', '2000-02-02', 'FRA', 5),
(231, 'Durand', 'Emma', 'F', '1997-07-22', 'FRA', 6), (232, 'Durand', 'Jade', 'F', '2003-12-10', 'FRA', 7),
(233, 'Durand', 'Louise', 'F', '1998-05-29', 'FRA', 8), (234, 'Durand', 'Alice', 'F', '2001-10-17', 'FRA', 9),
(235, 'Durand', 'Chloé', 'F', '1999-03-06', 'FRA', 10), (236, 'Dubois', 'Emma', 'F', '2002-08-24', 'FRA', 1),
(237, 'Dubois', 'Jade', 'F', '1996-01-12', 'FRA', 2), (238, 'Dubois', 'Louise', 'F', '2000-06-01', 'FRA', 3),
(239, 'Dubois', 'Alice', 'F', '1998-11-20', 'FRA', 4), (240, 'Dubois', 'Chloé', 'F', '2003-04-09', 'FRA', 5),
(241, 'Moreau', 'Emma', 'F', '1999-09-28', 'FRA', 6), (242, 'Moreau', 'Jade', 'F', '2001-02-15', 'FRA', 7),
(243, 'Moreau', 'Louise', 'F', '1997-07-05', 'FRA', 8), (244, 'Moreau', 'Alice', 'F', '2002-12-24', 'FRA', 9),
(245, 'Moreau', 'Chloé', 'F', '1998-05-13', 'FRA', 10), (246, 'Laurent', 'Emma', 'F', '2000-10-01', 'FRA', 1),
(247, 'Laurent', 'Jade', 'F', '1999-03-21', 'FRA', 2), (248, 'Laurent', 'Louise', 'F', '2003-08-09', 'FRA', 3),
(249, 'Laurent', 'Alice', 'F', '1996-01-28', 'FRA', 4), (250, 'Laurent', 'Chloé', 'F', '2001-06-16', 'FRA', 5),
(251, 'Simon', 'Emma', 'F', '1998-11-04', 'FRA', 6), (252, 'Simon', 'Jade', 'F', '2002-04-23', 'FRA', 7),
(253, 'Simon', 'Louise', 'F', '1999-09-11', 'FRA', 8), (254, 'Simon', 'Alice', 'F', '2000-02-29', 'FRA', 9),
(255, 'Simon', 'Chloé', 'F', '1997-07-19', 'FRA', 10), (256, 'Michel', 'Emma', 'F', '2003-12-07', 'FRA', 1),
(257, 'Michel', 'Jade', 'F', '1998-05-26', 'FRA', 2), (258, 'Michel', 'Louise', 'F', '2001-10-14', 'FRA', 3),
(259, 'Michel', 'Alice', 'F', '1999-03-04', 'FRA', 4), (260, 'Michel', 'Chloé', 'F', '2002-08-22', 'FRA', 5),
(261, 'Lefebvre', 'Emma', 'F', '1996-01-10', 'FRA', 6), (262, 'Lefebvre', 'Jade', 'F', '2000-06-29', 'FRA', 7),
(263, 'Lefebvre', 'Louise', 'F', '1998-11-17', 'FRA', 8), (264, 'Lefebvre', 'Alice', 'F', '2003-04-06', 'FRA', 9),
(265, 'Lefebvre', 'Chloé', 'F', '1999-09-25', 'FRA', 10), (266, 'Leroy', 'Emma', 'F', '2001-02-13', 'FRA', 1),
(267, 'Leroy', 'Jade', 'F', '1997-07-03', 'FRA', 2), (268, 'Leroy', 'Louise', 'F', '2002-12-21', 'FRA', 3),
(269, 'Leroy', 'Alice', 'F', '1998-05-10', 'FRA', 4), (270, 'Leroy', 'Chloé', 'F', '2000-10-29', 'FRA', 5),
(271, 'Roux', 'Emma', 'F', '1999-03-18', 'FRA', 6), (272, 'Roux', 'Jade', 'F', '2003-08-06', 'FRA', 7),
(273, 'Roux', 'Louise', 'F', '1996-12-25', 'FRA', 8), (274, 'Roux', 'Alice', 'F', '2001-05-14', 'FRA', 9),
(275, 'Roux', 'Chloé', 'F', '1998-10-02', 'FRA', 10);


INSERT INTO COMPETITION (id_comp, nom_event, date_event, niv_compet, id_stade) VALUES
(1, 'Meeting de Paris', '2026-06-15', 'International', 1),
(2, 'Meeting National de Lyon', '2026-05-10', 'National', 2),
(3, 'Championnats Régionaux Sud', '2026-07-04', 'Régional', 3),
(4, 'Meeting de Bordeaux', '2026-05-22', 'National', 4),
(5, 'Meeting de Lille', '2026-06-08', 'International', 5);



INSERT INTO supervise (id_comp, id_officiel) VALUES
(1, 1), (1, 4), (1, 7), (1, 11), (1, 14),
(2, 2), (2, 5), (2, 8), (2, 10),
(3, 3), (3, 6), (3, 9), (3, 12),
(4, 13), (4, 15), (4, 16), (4, 19),
(5, 17), (5, 18), (5, 20);


INSERT INTO Entraine (id_licence_entraine, id_licence_est_entraine_par) VALUES
(106, 101), (107, 101), (213, 206), (214, 206), (115, 112), 
(222, 215), (134, 130), (239, 237), (145, 144), (250, 249);


INSERT INTO Performance (id_licence, id_comp, id_epreuve, temps, vent, niv_perf) VALUES
(101, 1, 1, 9.85, 1.2, 'Niveau 1'),
(102, 1, 1, 9.90, 1.2, 'Niveau 1'),
(103, 1, 1, 10.12, 1.2, 'Niveau 2'),
(201, 1, 2, 22.15, -0.5, 'Niveau 1'),
(202, 1, 2, 22.40, -0.5, 'Niveau 2'),
(112, 2, 3, 45.20, NULL, 'Niveau 1'),
(215, 2, 4, 12.80, 0.8, 'Niveau 1'),
(130, 3, 1, 10.50, 2.1, 'Niveau 3'),
(237, 3, 2, 23.50, 2.1, 'Niveau 3'),
(144, 4, 5, 38.50, NULL, 'Niveau 1');