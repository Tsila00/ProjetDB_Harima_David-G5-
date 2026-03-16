Ce projet s'inscrit dans le cadre de la conception et du développement d'une base de données (méthode MERISE) pour le module T1404. Le domaine d'application choisi est la gestion sportive et l'athlétisme, en s'inspirant d'administrations réelles telles que la Fédération Française d'Athlétisme (FFA). Le système gère les clubs, les villes, les athlètes, les stades, le corps arbitral et les performances lors de compétitions de sprint.

1. Le prompt utilisé

Tu travailles dans le domaine de la gestion sportive et de l'athlétisme. Ton administration a comme activité de gérer les licences, les affiliations des clubs et l'organisation
des compétitions de sprint au niveau national. C'est une administration comme la Fédération Française d'Athlétisme (FFA) ou la Ligue de Diamant.Les données collectées concernent l'identité civile des sprinteurs, leurs performances chronométriques, les infrastructures des stades, les coordonnées des clubs affiliés ainsi que les certifications du corps médical et des officiels.
Inspire-toi du site web officiel de la Fédération Française d'Athlétisme (athle.fr) et des règlements techniques de World Athletics. Ton administration veut appliquer MERISE pour concevoir un système d'information.
Tu es chargé de la partie analyse, c'est-à-dire de collecter les besoins auprès de l'entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu'il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.
D'abord, établis les règles de gestions des données de ton administration, sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu'un qui connaît le fonctionnement de l'entreprise, mais pas comment se construit un système d'information. Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à
fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite. Fournis donc les règles degestion et le dictionnaire de données. (met pas de medecin)  


2. Règles métier générées (et optimisées)

* **Les Villes :** Afin d'éviter les redondances (3FN), nous gérons un référentiel des villes avec leur code postal.
* **Les Clubs :** Chaque club affilié à notre fédération est unique. Nous avons besoin de connaître son nom et son adresse e-mail de contact. Un club est obligatoirement localisé dans une seule ville.
* **Les Athlètes (Licenciés) :** Un athlète est identifié par un numéro de licence unique. Nous enregistrons son identité complète (nom, prénom, sexe, date de naissance) et sa nationalité. 
* **L'appartenance aux clubs :** Un athlète est obligatoirement licencié dans un seul club à la fois. En revanche, un club accueille de multiples athlètes.
* **L'entraînement :** Un athlète peut agir comme entraîneur pour d'autres athlètes. Un athlète peut donc entraîner plusieurs de ses pairs, et un athlète peut être entraîné par plusieurs personnes.
* **Les Infrastructures (Stades) :** Nos compétitions se déroulent dans des stades. Pour chaque stade, nous renseignons son nom, le type de revêtement de la piste, son altitude et le nombre de couloirs disponibles. Un stade est situé dans une seule ville.
* **Les Compétitions :** Une compétition possède un nom, une date de déroulement et un niveau. Une compétition se déroule dans un et un seul stade, mais un stade peut accueillir plusieurs compétitions au cours de l'année.
* **Les Épreuves :** Le sprint comporte différentes épreuves qui sont catégorisées par tranches d'âge.
* **Les Performances chronométriques :** Lorsqu'un athlète participe à une épreuve lors d'une compétition, il réalise une performance. Cette performance comprend le temps chronométré, la mesure du vent et le niveau de la performance atteinte. 
* **Les Officiels :** Nous avons des officiels dont nous gardons l'identité, le rôle exact et le niveau de certification. Une compétition est supervisée par un ou plusieurs officiels, et un officiel peut superviser plusieurs compétitions différentes.


  
3. Dictionnaire de données

| Signification de la donnée | Type | Taille (en nombre de caractères ou de chiffres) |
|----------------------------|------|-----------------------------------------------|
| Identifiant unique du club | Entier | 8 chiffres |
| Nom du club | Texte (Alphanumérique) | 100 caractères |
| Adresse e-mail du club | Texte (Alphanumérique) | 50 caractères |
| Ville d'implantation du club | Texte (Alphabétique) | 50 caractères |
| Code postal de la ville du club | Entier | 5 chiffres |
| Numéro de licence unique de l'athlète | Entier | 10 chiffres |
| Nom de famille de l'athlète | Texte (Alphabétique) | 50 caractères |
| Prénom de l'athlète | Texte (Alphabétique) | 50 caractères |
| Sexe de l'athlète (ex: 'M' ou 'F') | Texte (Alphabétique) | 1 caractère |
| Date de naissance de l'athlète | Date | 10 caractères (format JJ/MM/AAAA) |
| Nationalité de l'athlète | Texte (Alphabétique) | 50 caractères |
| Identifiant unique de l'officiel | Entier | 8 chiffres |
| Nom de famille de l'officiel | Texte (Alphabétique) | 50 caractères |
| Prénom de l'officiel | Texte (Alphabétique) | 50 caractères |
| Niveau de certification de l'officiel | Texte (Alphanumérique) | 50 caractères |
| Rôle spécifique de l'officiel (ex: Starter) | Texte (Alphabétique) | 50 caractères |
| Identifiant unique de la compétition | Entier | 8 chiffres |
| Nom de l'événement / compétition | Texte (Alphanumérique) | 50 caractères |
| Date de déroulement de la compétition | Date | 10 caractères (format JJ/MM/AAAA) |
| Niveau de la compétition | Texte (Alphanumérique) | 50 caractères |
| Identifiant unique du stade | Entier | 8 chiffres |
| Nom du complexe ou du stade | Texte (Alphanumérique) | 100 caractères |
| Ville où se situe le stade | Texte (Alphabétique) | 50 caractères |
| Type de revêtement de la piste | Texte (Alphabétique) | 50 caractères |
| Altitude du stade (en mètres) | Décimal | 6 chiffres (dont 2 décimales) |
| Nombre de couloirs de la piste | Texte / Entier | 50 caractères (ou 2 chiffres) |
| Identifiant unique de l'épreuve de sprint | Entier | 8 chiffres |
| Nom de l'épreuve (ex: 100m Haies) | Texte (Alphanumérique) | 50 caractères |
| Catégorie d'âge de l'épreuve (ex: Sénior) | Texte (Alphanumérique) | 50 caractères |
| Temps chronométré de la performance | Décimal | 6 chiffres (dont 2 décimales) |
| Vitesse du vent lors de la course (m/s) | Décimal | 5 chiffres (dont 2 décimales) |
| Niveau de la performance enregistrée | Texte (Alphanumérique) | 50 caractères |

Le MCD a été réalisé via un outil de modélisation et le fichier source est inclus dans ce dépôt GitHub.
<img width="1639" height="801" alt="Capture d&#39;écran 2026-02-27 154057" src="https://github.com/user-attachments/assets/46fb6471-b201-40bd-9ab2-4b10c276cd99" />


Partie 2 : 

MLD : 
OFFICIEL = (id_officiel INT, nom_off VARCHAR(50), prenom_off VARCHAR(50), niveau_certif_off VARCHAR(50), role_off VARCHAR(50));
EPREUVE = (id_epreuve INT, nom_epreuve VARCHAR(50), categorie_age VARCHAR(50));
VILLE = (code_postal INT, ville VARCHAR(50));
CLUB = (id_club INT, nom_club VARCHAR(100), e_mail_ VARCHAR(50), #(code_postal, ville));
STADE = (id_stade INT, nom_stade VARCHAR(100), type_revetement_piste VARCHAR(50), altitude DECIMAL(15,2), nb_couloirs VARCHAR(50), #(code_postal, ville));
ATHLETE = (id_licence INT, nom VARCHAR(50), prenom VARCHAR(50), sexe VARCHAR(1), date_naissance DATE, nationalite VARCHAR(50), #id_club);
COMPETITION = (id_comp INT, nom_event VARCHAR(50), date_event DATE, niv_compet VARCHAR(50), #id_stade);
supervise = (#id_comp, #id_officiel);
Entraine = (#id_licence_entraine, #id_licence_est_entraîné_par);
Performance = (#id_licence, #id_comp, #id_epreuve, temps DECIMAL(15,2), vent DECIMAL(15,2), niv_perf VARCHAR(50));





Partie 2.5 : Scénario : 
Camille, Directrice d’une Ligue d'Athlétisme


Voici comment elle utilise la base de données, de la rentrée de septembre jusqu'aux bilans de fin d'année.
Septembre - La rentrée et l’inscription des licenciés 
En début de saison, Camille doit mettre de l'ordre dans la gestion administrative des clubs et des licenciés.
•	Elle édite d'abord un registre propre de toutes les athlètes féminines, trié alphabétiquement, pour mettre à jour les dossiers de la fédération (Requête 1).
•	Pour faciliter la lecture des listings de rentrée, elle associe chaque athlète au nom clair de son club plutôt que de lire de simples identifiants numériques (Requête 2).
•	La fédération lance un programme pour la catégorie espoir (donc entre 2004 et 2006). Camille extrait immédiatement cette liste pour leur envoyer une convocation (Requête 3).
•	Campagne de communication : Elle doit envoyer une newsletter générale. Elle cible les adresses e-mail des clubs contenant "asso" ou "club" pour s'assurer qu'elle n'oublie pas les structures associatives principales (Requête 4).
•	Allocation des subventions : La ligue verse une aide financière aux structures les plus dynamiques. Camille filtre donc les "gros" clubs, c'est-à-dire ceux qui ont déjà validé plus de 10 licences (Requête 5).
•	Enfin, pour décerner le label "Sport au Féminin", elle identifie la liste des clubs qui comptent au moins une femme parmi leurs licenciés (Requête 6).

Février à Mai - organisation des compétitions
La saison sur piste commence. Camille doit gérer les infrastructures et les équipes d'arbitrage (les officiels).
•	Inspection des diplômes : Avant de nommer les juges, elle vérifie la liste des niveaux de certification uniques qui existent actuellement dans sa base pour s'assurer que le référentiel est à jour (Requête 7).
•	Sécurisation de l'arbitrage : Un événement peut être annulé si un juge clé tombe malade. Camille identifie les rôles d'officiels qui comptent plus d'une personne, lui permettant de voir où elle a des remplaçants potentiels (Requête 8).
•	Focus sur l'événement majeur : Pour le grand "Meeting de Paris", elle génère la feuille de match exacte des officiels (nom, prénom, rôle) affectés spécifiquement à cette compétition (Requête 9).
•	Planification des infrastructures : Elle fait un état des lieux de tous les stades de la région et affiche en face les compétitions prévues. Cela lui permet d'avoir une vue d'ensemble du calendrier (Requête 10).
•	Optimisation des lieux : En regardant ces mêmes données sous un autre angle, elle isole les stades "fantômes" où absolument aucune compétition n'a encore été programmée, afin d'y relocaliser certains événements (Requête 11).
•	Règles d'homologation : En sprint, l'altitude joue un rôle. Camille liste l'altitude maximale des stades par ville, en isolant ceux situés à plus de 1000m, car cela peut influencer la validation de certains records régionaux (Requête 12).

Juillet - Les résultats sportifs et le bilan de fin de saison
Les compétitions sont terminées. L'heure est à l'analyse des performances et à la préparation de la cérémonie des récompenses.
•	Filtre du haut niveau : Camille souhaite d'abord faire un rapport sur les événements de prestige. Elle isole uniquement les compétitions de niveau National ou International (Requête 13).
•	Le grand tableau de bord : Pour publier les résultats sur le site web de la ligue, elle rassemble toutes les données : le nom du sportif, l'épreuve, le temps réalisé et la compétition concernée (Requête 14).
•	Analyse de la vitesse : Pour évaluer le niveau global de ses sprinteurs, elle calcule le temps moyen réalisé par épreuve, en filtrant spécifiquement les courses (moyennes inférieures à 25 secondes) (Requête 15).
•	Le livre des records : Pour l'édition de la brochure de fin d'année, elle extrait automatiquement le meilleur temps (le record absolu) enregistré lors de chaque compétition (Requête 16).
•	sprinter de l'année : elle demande à la base de données d'identifier l'athlète ayant réalisé le temps le plus bas de toute la saison sur l'épreuve reine du 100m (Requête 17).
•	Mise à l'honneur des coachs : Lors de la remise des médailles, il est crucial de citer les entraîneurs. Camille génère la liste liant le nom des athlètes primés à celui de leurs coachs respectifs (Requête 18).
•	Taux de participation : Pour ses statistiques internes, elle crée la liste des athlètes "actifs", c'est-à-dire ceux ayant réalisé au moins une performance chronométrée dans l'année (Requête 19).
•	À l'inverse, elle isole les athlètes "fantômes" qui ont pris une licence mais n'ont participé à aucune épreuve. Elle transmettra cette liste aux clubs pour comprendre pourquoi ces sportifs n'ont pas concouru (Requête 20).



