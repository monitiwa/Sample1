--<ScriptOptions statementTerminator=";"/>
-- Version 14737

CREATE TABLE MD34_Schadensteuerung (
		ID_Art_Schadensteuerung NUMBER(28 , 0) NOT NULL,
		ID_Sachbearbeitergruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		gueltig_beginn DATE NOT NULL,
		gueltig_ende DATE NOT NULL,
		Szenario VARCHAR2(500 CHAR) NOT NULL,
		Art_Schadensteuerung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Anzahl_Schaeden NUMBER(10 , 0) NOT NULL,
		Sachbearbeitergruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Ereignisart VARCHAR2(64 CHAR),
		ID_Ereignisart NUMBER(28 , 0),
		Steuerungsdatum DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD34_Schadensteuerung ADD CONSTRAINT MD34_Schadensteuerung_PK PRIMARY KEY
	(ID_Art_Schadensteuerung,
	 ID_Sachbearbeitergruppe,
	 TA_Ladedatum,
	 gueltig_beginn,
	 Versicherungsscheinnummer_A);

COMMENT ON COLUMN MD34_Schadensteuerung.Anzahl_Schaeden IS
'Anzahl der gesteuerten Schäden

aus RS1_Schadensteuerung.Anzahl

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.Art_Schadensteuerung_kurz IS
'Art der Schadensteuerung, z.B. TeReBe etc. - gelieferter Text

aus RS1_Schadensteuerung.ID-ART

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.Ereignisart IS
'Optionale Angabe der zugehörigen Ereignisart. Gelieferter Wert

Aus RS1_Schadensteuerung.Rechtsgebiet

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.ID_Art_Schadensteuerung IS
'aus SC02_Schluesselbedeutung.FK_SC01_Schluessel

anhand RS1_Schadensteuerung.ID-ART';

COMMENT ON COLUMN MD34_Schadensteuerung.ID_Ereignisart IS
'Optional: ID der Ereignisart. Aus SC02_Schluesselbedeutung.FK_SC01_Schluessel

anhand RS1_Schadensteuerung.Rechtsgebiet

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.ID_Sachbearbeitergruppe IS
'ID der Sachbearbeitergruppe, in deren Zuständigkeit die gesteuerten Schäden fallen. 
Aus SC02_Schluesselbedeutung.FK_SC01_Schluessel

anhand RS1_Schadensteuerung.Sachbearbeiter_Versicherung

Datenschutz $-?';

COMMENT ON COLUMN MD34_Schadensteuerung.Sachbearbeitergruppe_kurz IS
'Sachbearbeitergruppe - Kurztext (angeliefert)

aus RS1_Schadensteuerung.Sachbearbeiter_Versicherung

Datenschutz $-?';

COMMENT ON COLUMN MD34_Schadensteuerung.Steuerungsdatum IS
'Bezugsdatum der Schadensteuerung - Monatsultimo des Datums, an dem die Schadensteuerung stattgefunden hat - z.B. Datum der telefonischen Rechtsberatung

Aus RS_Schadensteuerung.DATUM_ZEIT

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.Szenario IS
'Szenario des Exports, um Varianten zu erkennen

aus  RS1_Schadensteuerung.SZENARIO

Datenschutz $-?';

COMMENT ON COLUMN MD34_Schadensteuerung.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.Versicherungsscheinnummer_A IS
'optional bei Einzelschäden angegebene Versicherungsscheinnummer.

Aus RS1_Schadensteuerung.VS_Nr

Datenschutz $A';

COMMENT ON COLUMN MD34_Schadensteuerung.gueltig_beginn IS
'erster Stichtag, zu dem der Satzinhalt Gültigkeit hat.

aus  RS1_Schadensteuerung.DATUM_ZEIT

Datenschutz $-';

COMMENT ON COLUMN MD34_Schadensteuerung.gueltig_ende IS
'Erster Stichtag, an dem der Satzinhalt keine Gültigkeit mehr hat.

bei der Schadensteuerung stets unendlich

Datenschutz $-';

COMMENT ON TABLE MD34_Schadensteuerung IS
'Anzahl der gesteuerten Schäden in Rechtsschutz nach Art der Steuerung, Datum und Sachbearbeitergruppe / RD';

