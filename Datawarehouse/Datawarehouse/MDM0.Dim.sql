--<ScriptOptions statementTerminator=";"/>

CREATE TABLE MD15_Schadenursache (
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Schadenursache_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenursache VARCHAR2(64 CHAR) NOT NULL,
		Schadenursache_lang VARCHAR2(500 CHAR) NOT NULL,
		Gefahr_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gefahr VARCHAR2(64 CHAR) NOT NULL,
		Gefahr_lang VARCHAR2(500 CHAR) NOT NULL,
		Partner_Objekttyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partner_Objekttyp VARCHAR2(64 CHAR) NOT NULL,
		Partner_Objekttyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Teilsparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilsparte VARCHAR2(64 CHAR) NOT NULL,
		Teilsparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Sparte VARCHAR2(64 CHAR) NOT NULL,
		Sparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene4 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene5 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene6 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene7 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD16_Regionaldirektion (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		RD_Name_Kurz VARCHAR2(24 CHAR) NOT NULL,
		RD_Name VARCHAR2(64 CHAR) NOT NULL,
		RD_Name_Lang VARCHAR2(500 CHAR) NOT NULL,
		RD_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD17_Schadenstatus (
		ID_Schadenstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Schadenstatus_Name_Kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus_Name VARCHAR2(64 CHAR) NOT NULL,
		Schadenstatus_Name_Lang VARCHAR2(500 CHAR) NOT NULL,
		Schadenstatus_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Schadenstatus_Ebene2 VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD18_UKZ (
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		UKZ_Name_Kurz VARCHAR2(24 CHAR) NOT NULL,
		UKZ_Name VARCHAR2(64 CHAR) NOT NULL,
		UKZ_Name_Lang VARCHAR2(500 CHAR) NOT NULL,
		UKZ_Gruppe VARCHAR2(64 CHAR) NOT NULL,
		Rechtsform VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD15_Schadenursache ADD CONSTRAINT MD15_Schadenursache_PK PRIMARY KEY
	(ID_Schadenursache,
	 TA_Ladedatum);

ALTER TABLE MD16_Regionaldirektion ADD CONSTRAINT MD16_Regionaldirektion_PK PRIMARY KEY
	(ID_Regionaldirektion,
	 TA_Ladedatum);

ALTER TABLE MD17_Schadenstatus ADD CONSTRAINT MD17_Schadenstatus_PK PRIMARY KEY
	(ID_Schadenstatus,
	 TA_Ladedatum);

ALTER TABLE MD18_UKZ ADD CONSTRAINT MD18_UKZ_PK PRIMARY KEY
	(ID_UKZ,
	 TA_Ladedatum);

COMMENT ON COLUMN MD15_Schadenursache.Gefahr IS
'Kurztext für die Gefahr';

COMMENT ON COLUMN MD15_Schadenursache.Gefahr_kurz IS
'Kurzbezeichnung für die Gefahr';

COMMENT ON COLUMN MD15_Schadenursache.Gefahr_lang IS
'Langtext für die Gefahr';

COMMENT ON COLUMN MD15_Schadenursache.Partner_Objekttyp IS
'Kurztext für den Partner-Objekttyp';

COMMENT ON COLUMN MD15_Schadenursache.Partner_Objekttyp_kurz IS
'Kurzbezeichnung für den Partner-Objekttyp';

COMMENT ON COLUMN MD15_Schadenursache.Partner_Objekttyp_lang IS
'Langtext für den Partner-Objekttyp';

COMMENT ON COLUMN MD15_Schadenursache.Schadenursache IS
'Kurztext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-?';

COMMENT ON COLUMN MD15_Schadenursache.Schadenursache_kurz IS
'Kurzbezeichnung für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-?';

COMMENT ON COLUMN MD15_Schadenursache.Schadenursache_lang IS
'Langtext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-?';

COMMENT ON COLUMN MD15_Schadenursache.Sparte IS
'Kurztext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Sparte_kurz IS
'Kurzbezeichnung der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Kuerzel

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Sparte_lang IS
'Langtext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene1 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene1_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene1_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene2 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene2_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene2_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene3 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene3_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene3_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene4 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene4_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene4_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene5 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene5_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene5_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene6 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene6_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene6_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene7 IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene7_kurz IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Spartenbuendel_Ebene7_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Teilsparte IS
'Kurztext für die Teilsparte';

COMMENT ON COLUMN MD15_Schadenursache.Teilsparte_kurz IS
'Kurzbezeichnung für die Teilsparte';

COMMENT ON COLUMN MD15_Schadenursache.Teilsparte_lang IS
'Langtext für die Teilsparte';

COMMENT ON COLUMN MD16_Regionaldirektion.ID_Regionaldirektion IS
'ID der Regionaldirektion aus der Schlüsseltabelle SC01

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Ebene1 IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Ebene2 IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Ebene3 IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Name IS
'RD-Name aus der Schlüsseltabelle SC02

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Name_Kurz IS
'Kurzbezeichner der RD aus der Schlüsseltabelle';

COMMENT ON COLUMN MD16_Regionaldirektion.RD_Name_Lang IS
'Langbezeichner der RD aus der Schlüsseltabelle

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD16_Regionaldirektion.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.ID_Schadenstatus IS
'ID des Schadenstatus. Ausprägungen:

ID			Ebene1				Ebene2
2317	Geöffnet				Alle
2318	Geöffnet				Alle
2329	Abgeschlossen	Alle
2340	Abgeschlossen	Alle
2316	Fehler					Alle

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.Schadenstatus_Ebene1 IS
'Ausprägungen:

"Geöffnet"
"Abgeschlossen"
"Fehler"

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.Schadenstatus_Ebene2 IS
'Ausprägung:

"Alle"

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.Schadenstatus_Name IS
'Kurztext des Schadenstatus analog Schlüsseltabelle SC02

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.Schadenstatus_Name_Kurz IS
'Kurzbezeichner des Schadenstatus analog Schlüsseltabelle SC02

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.Schadenstatus_Name_Lang IS
'Langtext des Schadenstatus analog Schlüsseltabelle

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD17_Schadenstatus.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.ID_UKZ IS
'ID der Regionaldirektion aus der Schlüsseltabelle SC01

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.Rechtsform IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.UKZ_Gruppe IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.UKZ_Name IS
'RD-Name aus der Schlüsseltabelle SC02

Datenschutz $-';

COMMENT ON COLUMN MD18_UKZ.UKZ_Name_Kurz IS
'Kurzbezeichner der RD aus der Schlüsseltabelle';

COMMENT ON COLUMN MD18_UKZ.UKZ_Name_Lang IS
'Langbezeichner der RD aus der Schlüsseltabelle

Datenschutz $-';

