--<ScriptOptions statementTerminator=";"/>
-- Version 7797

CREATE TABLE MD19_Sachbearbeiter_Gruppen (
		ID_SB VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Sachbearbeiter_A VARCHAR2(64 CHAR),
		C_SB_Grp_Org NUMBER(28 , 0),
		C_VIP_Berechtigung NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD19_Sachbearbeiter_Gruppen ADD CONSTRAINT MD19_Sachbearbeiter_Gruppen_PK PRIMARY KEY
	(ID_SB,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.C_SB_Grp_Org IS
'organisatorische Sachbearbeiter-Gruppe

aus ZCM_T_RSWF_BEGR.GRUPPE

Datenschutz $-?';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.C_VIP_Berechtigung IS
'Sachbearbeiter-Gruppe

aus ZCM_T_RSWF_BEGR.VIP

Datenschutz $-?';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ZCM_T_RSWF_BEGR.CLIENT

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.Sachbearbeiter_A IS
'Arbeitsanteil des Sachbearbeiters

aus ZCM_T_RSWF_BEGR.AGENT

Datenschutz $A1?';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD19_Sachbearbeiter_Gruppen.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

