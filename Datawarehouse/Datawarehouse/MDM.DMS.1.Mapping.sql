--<ScriptOptions statementTerminator=";"/>
-- Version 12445

CREATE TABLE MD20_DMS_User (
		ID_User NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sachbearbeiter_A VARCHAR2(500 CHAR),
		User_Rolle VARCHAR2(8 CHAR),
		RD_Kuerzel VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD21_DMS_SLA (
		ID_Empfangskanal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		SLA_Dauer_in_Tagen NUMBER(10 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD22_DMS_Arbeitsschritt (
		ID_Arbeitsschritt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Arbeitschritt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Arbeitschritt VARCHAR2(64 CHAR) NOT NULL,
		Arbeitschritt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD23_DMS_Veraenderungsart (
		ID_Veraenderungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Veraenderungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Veraenderungsart VARCHAR2(64 CHAR) NOT NULL,
		Veraenderungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD24_DMS_Status_fachlich (
		Prozessmodell VARCHAR2(64 CHAR) NOT NULL,
		Arbeitsschritt VARCHAR2(64 CHAR) NOT NULL,
		Veraenderungsart VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		ID_Status_fachlich NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD25_DMS_Prozessmodell (
		ID_Prozessmodell NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Prozessmodell VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD20_DMS_User ADD CONSTRAINT MD20_DMS_User_PK PRIMARY KEY
	(ID_User,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE MD21_DMS_SLA ADD CONSTRAINT MD21_DMS_SLA_PK PRIMARY KEY
	(ID_Empfangskanal,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE MD22_DMS_Arbeitsschritt ADD CONSTRAINT MD22_DMS_Arbeitsschritt_PK PRIMARY KEY
	(ID_Arbeitsschritt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE MD23_DMS_Veraenderungsart ADD CONSTRAINT MD23_DMS_Veraenderungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 ID_Veraenderungsart);

ALTER TABLE MD24_DMS_Status_fachlich ADD CONSTRAINT MD24_DMS_Status_fachlich_PK PRIMARY KEY
	(Prozessmodell,
	 Arbeitsschritt,
	 Veraenderungsart,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE MD25_DMS_Prozessmodell ADD CONSTRAINT MD25_DMS_Prozessmodell_PK PRIMARY KEY
	(ID_Prozessmodell,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

COMMENT ON COLUMN MD20_DMS_User.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.RD_Kuerzel IS
'Kürzel der RD zum User / Gruppenbriefkasten';

COMMENT ON COLUMN MD20_DMS_User.Sachbearbeiter_A IS
'Arbeitsanteil des Sachbearbeiters bzw. Name des Gruppenbriefkasten

aus ???

Datenschutz $A1?';

COMMENT ON COLUMN MD20_DMS_User.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD20_DMS_User.User_Rolle IS
'gibt an, ob es sich um einen Sachbearbeiter/ AA oder einen Gruppenbriefkasten/ technischen User handelt.

0: AA
1: Gruppenbriefkasten

Datenschutz $-?';

COMMENT ON COLUMN MD21_DMS_SLA.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.ID_Empfangskanal IS
'DMS: Quelle';

COMMENT ON COLUMN MD21_DMS_SLA.SLA_Dauer_in_Tagen IS
'Laut SLA''s vereinbarte höchste Bearbeitungsdauer (in Kalendertagen) für bestimmte Eingangskanäle

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD21_DMS_SLA.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Arbeitschritt IS
'Kurztext für den Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Arbeitschritt_kurz IS
'Kurzbezeichnung für den Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Arbeitschritt_lang IS
'Langtext für den Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.ID_Arbeitsschritt IS
'DMS:  Aktivitaet_ID';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD22_DMS_Arbeitsschritt.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.ID_Veraenderungsart IS
'DMS: Veraenderungsart';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Veraenderungsart IS
'Kurztext für die Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Veraenderungsart_kurz IS
'Kurzbezeichnung für die Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN MD23_DMS_Veraenderungsart.Veraenderungsart_lang IS
'Langtext für die Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Arbeitsschritt IS
'DMS:  Aktivitaet_ID';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Prozessmodell IS
'...identifiziert das Prozessmodell für die beteiligten DMS-Prozesse

=== redundant zu GP01_Gepro_DMS_01_HBS.Prozessmodell_ID an GP01_Geschaeftsprozess_BH

Zu beachten ist, dass DMS keine Geschäftsprozesse oder Geschäftsvorfälle liefert, sondern nur Informationen über die technischen Prozesse

aus V_DMS_Doxis_Task_Parent.Prozessmodell_ID
bzw. V_DMS_Doxis_Task.Prozessmodell_ID

Datenschutz $-?';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD24_DMS_Status_fachlich.Veraenderungsart IS
'DMS: EventTyp';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.ID_Prozessmodell IS
'DMS: Veraenderungsart';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.Prozessmodell IS
'Kurztext für die Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD25_DMS_Prozessmodell.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

