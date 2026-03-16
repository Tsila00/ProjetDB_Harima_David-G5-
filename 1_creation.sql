CREATE DATABASE athletisme;
USE athletisme;

-- Création des tables indépendantes
CREATE TABLE VILLE (
    code_postal INT,
    ville VARCHAR(50),
    PRIMARY KEY (code_postal, ville)
);

CREATE TABLE OFFICIEL (
    id_officiel INT PRIMARY KEY,
    nom_off VARCHAR(50),
    prenom_off VARCHAR(50),
    niveau_certif_off VARCHAR(50),
    role_off VARCHAR(50)
);

CREATE TABLE EPREUVE (
    id_epreuve INT PRIMARY KEY,
    nom_epreuve VARCHAR(50),
    categorie_age VARCHAR(50)
);

-- Création des tables avec clés étrangères
CREATE TABLE CLUB (
    id_club INT PRIMARY KEY,
    nom_club VARCHAR(100),
    e_mail VARCHAR(50),
    code_postal INT,
    ville VARCHAR(50),
    FOREIGN KEY (code_postal, ville) REFERENCES VILLE(code_postal, ville) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE STADE (
    id_stade INT PRIMARY KEY,
    nom_stade VARCHAR(100),
    type_revetement_piste VARCHAR(50),
    altitude DECIMAL(15,2),
    nb_couloirs VARCHAR(50),
    code_postal INT,
    ville VARCHAR(50),
    FOREIGN KEY (code_postal, ville) REFERENCES VILLE(code_postal, ville) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ATHLETE (
    id_licence INT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    sexe VARCHAR(1),
    date_naissance DATE,
    nationalite VARCHAR(50),
    id_club INT,
    FOREIGN KEY (id_club) REFERENCES CLUB(id_club) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE COMPETITION (
    id_comp INT PRIMARY KEY,
    nom_event VARCHAR(50),
    date_event DATE,
    niv_compet VARCHAR(50),
    id_stade INT,
    FOREIGN KEY (id_stade) REFERENCES STADE(id_stade) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Création des tables d'association (many-to-many)
CREATE TABLE supervise (
    id_comp INT,
    id_officiel INT,
    PRIMARY KEY (id_comp, id_officiel),
    FOREIGN KEY (id_comp) REFERENCES COMPETITION(id_comp) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_officiel) REFERENCES OFFICIEL(id_officiel) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Entraine (
    id_licence_entraine INT,
    id_licence_est_entraine_par INT,
    PRIMARY KEY (id_licence_entraine, id_licence_est_entraine_par),
    FOREIGN KEY (id_licence_entraine) REFERENCES ATHLETE(id_licence) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_licence_est_entraine_par) REFERENCES ATHLETE(id_licence) 
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Performance (
    id_licence INT,
    id_comp INT,
    id_epreuve INT,
    temps DECIMAL(15,2),
    vent DECIMAL(15,2),
    niv_perf VARCHAR(50),
    PRIMARY KEY (id_licence, id_comp, id_epreuve),
    FOREIGN KEY (id_licence) REFERENCES ATHLETE(id_licence) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_comp) REFERENCES COMPETITION(id_comp) 
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_epreuve) REFERENCES EPREUVE(id_epreuve) 
        ON DELETE CASCADE ON UPDATE CASCADE
);