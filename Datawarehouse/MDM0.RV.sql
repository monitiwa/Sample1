--<ScriptOptions statementTerminator=";"/>

CREATE TABLE MD08_Gefahr_S (
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		GefahrName VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD09_Gefahr_Def_S (
		ID NUMBER(28 , 0) NOT NULL,
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		C_Schadenursache NUMBER(28 , 0),
		C_Sparte NUMBER(28 , 0),
		C_Ereignisart NUMBER(28 , 0),
		Eintrittsjahr_von VARCHAR2(8 CHAR) NOT NULL,
		Eintrittsjahr_Bis VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD10_MD13_NatKat_Geb_L (
		ID_NatKatEreignis NUMBER(28 , 0) NOT NULL,
		ID_PLZ_Gebiet VARCHAR2(64) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		TA_Ersatzdatum DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD10_NatKatEreignis_S (
		ID_NatKatEreignis NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		NatKatEreignis_Name VARCHAR2(180 CHAR),
		Eintrittsdatum_Beginn DATE,
		Eintrittsdatum_Ende DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD11_MD13_RVEreig_Geb_L (
		ID_PLZ_Gebiet VARCHAR2(64) NOT NULL,
		ID_RV_NatKatEreignis NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		TA_Ersatzdatum DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD11_RV_NatKatEreignis_S (
		ID_RV_NatKatEreignis NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		ID_NatKatEreignis NUMBER(28 , 0),
		RV_EreignisName VARCHAR2(180 CHAR),
		Eintrittsdatum_Beginn DATE,
		Eintrittsdatum_Ende DATE,
		Bearbeitungsstand VARCHAR2(180 CHAR),
		Bemerkung VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD13_Gebiet_PlzBer_S (
		ID_PLZ_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		PLZ_von VARCHAR2(8 CHAR),
		PLZ_bis VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD08_Gefahr_S ADD CONSTRAINT MD08_Gefahr_S_PK PRIMARY KEY
	(ID_Gefahr,
	 TA_Ladedatum);

ALTER TABLE MD09_Gefahr_Def_S ADD CONSTRAINT MD09_Gefahr_Def_S_PK PRIMARY KEY
	(ID);

ALTER TABLE MD10_MD13_NatKat_Geb_L ADD CONSTRAINT MD10_MD13_NatKat_Geb_L_PK PRIMARY KEY
	(ID_PLZ_Gebiet,
	 ID_NatKatEreignis,
	 TA_Ladedatum);

ALTER TABLE MD10_NatKatEreignis_S ADD CONSTRAINT MD10_NatKatEreignis_S_PK PRIMARY KEY
	(ID_NatKatEreignis,
	 TA_Ladedatum);

ALTER TABLE MD11_MD13_RVEreig_Geb_L ADD CONSTRAINT MD11_MD13_RVEreig_Geb_L_PK PRIMARY KEY
	(ID_PLZ_Gebiet,
	 ID_RV_NatKatEreignis,
	 TA_Ladedatum);

ALTER TABLE MD11_RV_NatKatEreignis_S ADD CONSTRAINT MD11_RV_NatKatEreignis_S_PK PRIMARY KEY
	(ID_RV_NatKatEreignis,
	 TA_Ladedatum);

ALTER TABLE MD13_Gebiet_PlzBer_S ADD CONSTRAINT MD13_Gebiet_PlzBer_S_PK PRIMARY KEY
	(ID_PLZ_Gebiet,
	 TA_Ladedatum);

COMMENT ON COLUMN MD08_Gefahr_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD08_Gefahr_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD08_Gefahr_S.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD08_Gefahr_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD08_Gefahr_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.C_Ereignisart IS
'.. spezifiziert die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ICLCLAIM.LOSSTYPE

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.C_Schadenursache IS
'... ist die Ursache des Schadens

aus ICLCLAIM.LOSSCAUSE

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.C_Sparte IS
'... ist die Sparte [hier spezielle Art von Schaden, Sparten zu betrachten einschließlich "Hausakten"]

aus ICLCLAIM.ZZDIVISION

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD09_Gefahr_Def_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_MD13_NatKat_Geb_L.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD10_MD13_NatKat_Geb_L.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_MD13_NatKat_Geb_L.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD10_MD13_NatKat_Geb_L.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_MD13_NatKat_Geb_L.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_NatKatEreignis_S.Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

EREIGNISDATUM_START || EREIGNISUHRZEIT_START

Datenschutz $-?
';

COMMENT ON COLUMN MD10_NatKatEreignis_S.Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

EREIGNISDATUM_ENDE || EREIGNISUHRZEIT_ENDE
Bei nicht gefüllter Uhrzeit ist 23:59 zu setzen.

Datenschutz $-?
';

COMMENT ON COLUMN MD10_NatKatEreignis_S.NatKatEreignis_Name IS
'... ist die Bezeichnung des Sammelereignisses

aus EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD10_NatKatEreignis_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD10_NatKatEreignis_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_NatKatEreignis_S.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD10_NatKatEreignis_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD10_NatKatEreignis_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.ID_RV_NatKatEreignis IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_MD13_RVEreig_Geb_L.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.Bearbeitungsstand IS
'... ist die Bezeichnung des RV-Ereignisses

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.Bemerkung IS
'... ist die Bezeichnung des RV-Ereignisses

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

RV_EREIGNISDATUM_START || RV_EREIGNISUHRZEIT_START

Datenschutz $-?
';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

RV_EREIGNISDATUM_ENDE || RV_EREIGNISUHRZEIT_ENDE
Bei nicht gefüllter Uhrzeit ist 23:59 zu setzen.

Datenschutz $-?
';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.ID_RV_NatKatEreignis IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.RV_EreignisName IS
'... ist die Bezeichnung des RV-Ereignisses

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD11_RV_NatKatEreignis_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.PLZ_bis IS
'... ist die gröste PLZ eines PLZ-Bereichs

Datenschutz $-?';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.PLZ_von IS
'... ist die kleinste PLZ eines PLZ-Bereichs

Datenschutz $-?';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD13_Gebiet_PlzBer_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

