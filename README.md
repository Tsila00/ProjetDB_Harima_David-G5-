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




# Scénario : Camille, Directrice d’une Ligue d'Athlétisme

Ce document détaille le flux de travail annuel de Camille et les besoins d'extraction de données associés (Requêtes SQL).

---

## 📅 Septembre : La rentrée et l’inscription des licenciés
*Gestion administrative, mise à jour des dossiers et campagnes de communication.*

* **Requête 1 :** Éditer un registre propre de toutes les athlètes féminines, trié par ordre alphabétique.
* **Requête 2 :** Associer chaque athlète au nom clair de son club (jointure) au lieu des identifiants numériques.
- [ ] **Requête 3 :** Extraire la liste des athlètes de la catégorie "Espoir" (nés entre 2004 et 2006) pour une convocation.
- [ ] **Requête 4 :** Cibler les adresses e-mail des clubs contenant "asso" ou "club" pour la newsletter générale.
- [ ] **Requête 5 :** Filtrer les "gros" clubs ayant validé plus de 10 licences pour l'allocation des subventions.
- [ ] **Requête 6 :** Identifier les clubs comptant au moins une femme parmi leurs licenciés pour le label "Sport au Féminin".

---

## 👟 Février à Mai : Organisation des compétitions
*Gestion des infrastructures, de la logistique et des corps d'arbitrage.*

- [ ] **Requête 7 :** Vérifier la liste des niveaux de certification uniques des officiels pour mettre à jour le référentiel.
- [ ] **Requête 8 :** Identifier les rôles d'officiels occupés par plus d'une personne (gestion des remplaçants).
- [ ] **Requête 9 :** Générer la feuille de match du "Meeting de Paris" (Nom, Prénom, Rôle des officiels affectés).
- [ ] **Requête 10 :** Afficher l'état des lieux des stades de la région avec les compétitions prévues en face.
- [ ] **Requête 11 :** Isoler les stades "fantômes" (aucune compétition programmée) pour relocaliser des événements.
- [ ] **Requête 12 :** Lister l'altitude maximale des stades par ville, en isolant ceux > 1000m (homologation des records).

---

## 🏆 Juillet : Résultats sportifs et bilan de fin de saison
*Analyse des performances, statistiques et préparation des récompenses.*

- [ ] **Requête 13 :** Isoler uniquement les compétitions de niveau "National" ou "International".
- [ ] **Requête 14 :** Tableau de bord complet : Nom du sportif, épreuve, temps réalisé et nom de la compétition.
- [ ] **Requête 15 :** Calculer le temps moyen par épreuve, uniquement pour les courses rapides (moyenne < 25s).
- [ ] **Requête 16 :** Extraire le record absolu (meilleur temps) enregistré lors de chaque compétition.
- [ ] **Requête 17 :** Identifier l'athlète ayant réalisé le meilleur temps de la saison sur l'épreuve du 100m.
- [ ] **Requête 18 :** Générer la liste liant le nom des athlètes primés à celui de leurs coachs respectifs.
- [ ] **Requête 19 :** Créer la liste des athlètes "actifs" (ayant réalisé au moins une performance chronométrée).
- [ ] **Requête 20 :** Isoler les athlètes "fantômes" (licenciés mais sans aucune compétition enregistrée).
