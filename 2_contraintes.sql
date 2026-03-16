
USE athletisme;

ALTER TABLE CLUB
ADD CONSTRAINT chk_email_format CHECK (e_mail LIKE '%@%');

ALTER TABLE ATHLETE
ADD CONSTRAINT chk_sexe CHECK (sexe IN ('M', 'F'));

ALTER TABLE Performance
ADD CONSTRAINT chk_temps_positif CHECK (temps > 0);

ALTER TABLE ATHLETE
ADD CONSTRAINT chk_date_naissance CHECK (date_naissance < CURRENT_DATE);


ALTER TABLE COMPETITION
ADD CONSTRAINT chk_niv_compet CHECK (niv_compet IN ('Départemental', 'Régional', 'National', 'International'));


ALTER TABLE STADE
ADD CONSTRAINT chk_altitude CHECK (altitude BETWEEN -20 AND 5000);


ALTER TABLE EPREUVE
ADD CONSTRAINT unq_nom_epreuve UNIQUE (nom_epreuve);

ALTER TABLE CLUB
ADD CONSTRAINT unq_club_contact UNIQUE (nom_club, e_mail);

ALTER TABLE STADE
ALTER COLUMN type_revetement_piste SET DEFAULT 'Tartan';