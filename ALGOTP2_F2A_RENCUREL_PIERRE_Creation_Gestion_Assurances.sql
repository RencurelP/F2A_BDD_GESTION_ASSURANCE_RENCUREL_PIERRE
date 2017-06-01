-- Creation de la base --


create schema ASSURANCE;

create dbspace SP_VEHICULE;	-- Creation des espace de stockage des données --

create dbspace SP_CLIENT;


-- Creation des Tables --

create table VEHICULE (
						NUMVEH char (10) not null primary key, -- Affectation du statut de clef primaire --
						MARQUE char (10) not null,
						MODELE char (10) not null,
						ANNEE date not null,
						CYLINDREE char (5) not null,
						SIGNATAIRE char (15) not null,
						NUMCTR char (10) not null,
						NUMCLIENT char (10) not null

						foreign key (NUMCLIENT) references SP_CLIENT 	-- Creation des clefs étrangères et de leurs paramètres --
							on delete no action on update cascade,
						foreign key (SIGNATAIRE,NUMCTR) references CONTRAT
							on delete no action on update cascade)
						in SP_VEHICULE;

create table CLIENT (
					NUMCLIENT char (10) not null primary key,
					NOM char (15) not null,
					ADRESSE char (20) not null)
					in SP_CLIENT;


create table CONTRAT (
					SIGNATAIRE char (15) not null primary key,
					NUMCTR char (10) not null primary key,
					TYPE char (3) not null,
					DATESIGN date not null

					foreign key (SIGNATAIRE) references CLIENT
						on delete no action on update cascade)
					in SP_CLIENT;


create table IMPLICATION(
						NUMACC integer (10) not null primary key,
						NUMVEH char(10) not null primary key,
						
						foreign key (NUMACC) references ACCIDENT
							on delete cascade on update cascade,
						foreign key (NUMVEH) references VEHICULE
							on delete cascade on update cascade,)
						in SP_VEHICULE;

create table ACCIDENT(
						NUMACC integer (10) not null primary key,
						DATEACC date not null,
						MONTANT decimal (6) not null,
					)
					in SP_VEHICULE;



-- Creation des Indexs --


create index XCLI_NUMCLI on CLIENT(NUMCLIENT);

create index XVEH_NUMCLI on VEHICULE(NUMCLIENT);

create index XCON_NUMCTR on CONTRAT(NUMCTR);

create index XCON_SIGN on CONTRAT(SIGNATAIRE);

create index XVEH_NUMCTR on VEHICULE(NUMCTR);

create index XVEH_SIGN on VEHICULE(SIGNATAIRE);

create index XACC_NUMACC on ACCIDENT(NUMACC);

create index XVEH_NUMVEH on VEHICULE(NUMVEH);

create index XIMP_NUMACC on IMPLICATION(NUMACC);

create index XIMP_NUMVEH on IMPLICATION(NUMVEH);