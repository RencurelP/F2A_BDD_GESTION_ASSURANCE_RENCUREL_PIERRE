-- Suppression des données --

delete from CLIENT;

delete from CONTRAT;

delete from VEHICULE;

delete from ACCIDENT;

delete from IMPLICATION;



-- Suppression des clefs étrangères --

ALTER TABLE VEHICULE
DROP FOREIGN KEY NUMCLIENT;

ALTER TABLE VEHICULE
DROP FOREIGN KEY NUMCTR;

ALTER TABLE VEHICULE
DROP FOREIGN KEY SIGNATAIRE;

ALTER TABLE IMPLICATION
DROP FOREIGN KEY NUMACC;

ALTER TABLE IMPLICATION
DROP FOREIGN KEY NUMVEH;


-- Suppression des index --

ALTER TABLE CLIENT
DROP INDEX XCLI_NUMCLI;

ALTER TABLE VEHICULE
DROP INDEX XVEH_NUMCLI;

ALTER TABLE VEHICULE
DROP INDEX XVEH_NUMCTR;

ALTER TABLE VEHICULE
DROP INDEX XVEH_NUMVEH;

ALTER TABLE VEHICULE
DROP INDEX XVEH_SIGN;

ALTER TABLE CONTRAT
DROP INDEX XCON_NUMCTR;

ALTER TABLE CONTRAT
DROP INDEX XCON_SIGN;

ALTER TABLE ACCIDENT
DROP INDEX XACC_NUMACC;

ALTER TABLE IMPLICATION
DROP INDEX XIMP_NUMACC;

ALTER TABLE IMPLICATION
DROP INDEX XIMP_NUMVEH;


-- Suppression des tables --
 
DROP TABLE CLIENT;

DROP TABLE CONTRAT;

DROP TABLE VEHICULE;

DROP TABLE ACCIDENT;

DROP TABLE IMPLICATION;