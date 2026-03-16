USE athletisme;

--  1. Récupérer toutes les athlètes féminines, triées par ordre alphabétique de leur nom.
SELECT nom, prenom, date_naissance 
FROM ATHLETE 
WHERE sexe = 'F' 
ORDER BY nom ASC, prenom ASC;


--  2.Afficher le nom des athlètes et le nom de leur club respectif.
SELECT A.nom, A.prenom, C.nom_club 
FROM ATHLETE A 
INNER JOIN CLUB C ON A.id_club = C.id_club;

--  3. Récupérer les athlètes nés entre 2004 et 2006 .
SELECT id_licence, nom, prenom, date_naissance 
FROM ATHLETE 
WHERE date_naissance BETWEEN '2004-01-01' AND '2006-12-31';

--  4. Récupérer les clubs dont l'adresse e-mail contient "asso" ou "club" .
SELECT nom_club, e_mail, ville 
FROM CLUB 
WHERE e_mail LIKE '%asso%' OR e_mail LIKE '%club%';

--  5. Compter le nombre d'athlètes par club, en affichant uniquement les clubs ayant plus de 10 athlètes.
SELECT id_club, COUNT(*) AS nombre_athletes 
FROM ATHLETE 
GROUP BY id_club 
HAVING COUNT(*) > 10;


--  6. Imbriquée avec EXISTS : Trouver les clubs qui ont au moins une femme parmi leurs licenciés.
SELECT nom_club 
FROM CLUB C 
WHERE EXISTS (
    SELECT 1 
    FROM ATHLETE A 
    WHERE A.id_club = C.id_club AND A.sexe = 'F'
);


-- 7. Afficher la liste des niveaux de certification uniques des officiels .
SELECT DISTINCT niveau_certif_off 
FROM OFFICIEL;

-- 8. Compter le nombre d'officiels par rôle, en excluant les rôles avec un seul officiel.
SELECT role_off, COUNT(*) AS nb_officiels 
FROM OFFICIEL 
GROUP BY role_off 
HAVING COUNT(*) > 1;


-- 9.Trouver le nom et prénom des officiels qui supervisent le 'Meeting de Paris'.
SELECT O.nom_off, O.prenom_off, O.role_off 
FROM OFFICIEL O
INNER JOIN supervise S ON O.id_officiel = S.id_officiel
INNER JOIN COMPETITION C ON S.id_comp = C.id_comp
WHERE C.nom_event = 'Meeting de Paris';



-- 10. Afficher TOUS les stades, et les noms des compétitions qui y ont lieu (même si un stade n'a pas encore de compétition prévue).
SELECT S.nom_stade, C.nom_event 
FROM STADE S 
LEFT JOIN COMPETITION C ON S.id_stade = C.id_stade;


-- 11. Trouver les stades dans lesquels aucune compétition n'est organisée.
SELECT nom_stade 
FROM STADE S 
WHERE NOT EXISTS (
    SELECT 1 
    FROM COMPETITION C 
    WHERE C.id_stade = S.id_stade
);


-- 12. Trouver l'altitude maximale des stades pour chaque ville, uniquement pour les altitudes supérieures à 1000m.
SELECT ville, MAX(altitude) AS altitude_max 
FROM STADE 
GROUP BY ville 
HAVING MAX(altitude) > 1000.00;


-- 13. Récupérer les compétitions qui sont de niveau National ou International .
SELECT nom_event, date_event, niv_compet 
FROM COMPETITION 
WHERE niv_compet IN ('National', 'International');

-- 14. Afficher les détails des performances (Nom athlète, Nom épreuve, Temps, Nom compétition).
SELECT A.nom, A.prenom, E.nom_epreuve, P.temps, C.nom_event 
FROM Performance P
INNER JOIN ATHLETE A ON P.id_licence = A.id_licence
INNER JOIN EPREUVE E ON P.id_epreuve = E.id_epreuve
INNER JOIN COMPETITION C ON P.id_comp = C.id_comp;

-- 15. Calculer le temps moyen réalisé pour chaque épreuve , uniquement si la moyenne est sous les 25 secondes.
SELECT id_epreuve, AVG(temps) AS temps_moyen 
FROM Performance 
GROUP BY id_epreuve 
HAVING AVG(temps) < 25.00;

-- 16. Trouver le temps minimum (record) enregistré pour chaque compétition.
SELECT id_comp, MIN(temps) AS meilleur_temps 
FROM Performance 
GROUP BY id_comp;

-- 17. Trouver l'athlète (id) ayant réalisé le meilleur (le plus petit) temps absolu sur le 100m .
SELECT id_licence, temps 
FROM Performance 
WHERE id_epreuve = 1 AND temps <= ALL (
    SELECT temps 
    FROM Performance 
    WHERE id_epreuve = 1
);

-- 18.  Afficher le nom de l'athlète entraîné et le nom de son entraîneur.
SELECT A1.nom AS Athlete_Entraine, A1.prenom AS Prenom_Entraine, A2.nom AS Coach, A2.prenom AS Prenom_Coach
FROM Entraine E
INNER JOIN ATHLETE A1 ON E.id_licence_entraine = A1.id_licence
INNER JOIN ATHLETE A2 ON E.id_licence_est_entraine_par = A2.id_licence;

-- 19.  Trouver les noms des athlètes qui ont réalisé au moins une performance enregistrée dans la base.
SELECT nom, prenom 
FROM ATHLETE 
WHERE id_licence IN (SELECT id_licence FROM Performance);


-- 20. Trouver les athlètes (nom et prénom) qui n'ont AUCUNE performance enregistrée.
SELECT nom, prenom 
FROM ATHLETE 
WHERE id_licence NOT IN (SELECT id_licence FROM Performance);
