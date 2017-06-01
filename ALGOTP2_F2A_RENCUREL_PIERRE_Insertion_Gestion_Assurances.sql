-- Insertion des donnees --

INSERT INTO CLIENT (NUMCLIENT, NOM, ADRESSE)
VALUES (1, 'RENCUREL', 'Rue de la Paix'),
		(2, 'ROGER', 'Avenue de Gal de Gaulle'),
		(3, 'BERNARD', 'Cite de la peur'),
		(4, 'Dark Vador', 'Etoile Noire'),
		(5, 'Sauron', 'Barad Dur');

INSERT INTO CONTRAT (SIGNATAIRE, NUMCTR, TYPE, DATESIGN)
VALUES ('ROGER', 'C400', 'C', '%Y - %m - %d'),
		('Dark Vador', '1977', 'D', '%Y - %m - %d'),
		('Dark Vador', '1983', 'D', '%Y - %m - %d');

INSERT INTO VEHICULE (NUMVEH, MARQUE, MODELE, ANNEE, CYLINDREE, SIGNATAIRE, NUMCTR, NUMCLIENT)
VALUES (1, 'TIE', 'Fighter', '%Y - %m - %d', '1500 cm3', 'Dark Vador', '1977', 1),
		(2, 'Star', 'Death', '%Y - %m - %d', '1500 Hm3', 'Dark Vador', '1983', 1),
		(3, 'Troll', 'Olog Hai', '%Y - %m - %d', '3m3', 'Sauron', '', 5);

INSERT INTO ACCIDENT (NUMACC, DATEACC, MONTANT)
VALUES (1, '%Y - %m - %d', 1965.2),
		(2, '%Y - %m - %d', 4852),
		(3, '%Y - %m - %d', 745),
		(4, '%Y - %m - %d', 1653),
		(5, '%Y - %m - %d', 1236);

INSERT INTO IMPLICATION (NUMACC, NUMVEH)
VALUES (1, 2),
		(2, 3),
		(3, 2),
		(4, 3),
		(4, 1);