--<ScriptOptions statementTerminator=";"/>
-- Version 20906

CREATE TABLE MD14_RV_Struktur_S (
		ID_RV_LAYER NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		C_UKZ NUMBER(28 , 0) NOT NULL,
		Knz_Unfall_rente CHAR(1),
		Layer VARCHAR2(8),
		Eintrittsjahr NUMBER(4 , 0) NOT NULL,
		Prioritaet_XL DECIMAL(16 , 2),
		Haftstrecke_XL DECIMAL(16 , 2),
		PlatzierterAnteil_XL DECIMAL(16 , 2),
		ID_Auswertung_ind NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		Vertragsbezeichnung VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD14_RV_Struktur_S ADD CONSTRAINT MD14_RV_Struktur_S_PK PRIMARY KEY
	(ID_RV_LAYER,
	 TA_Ladedatum);

COMMENT ON COLUMN MD14_RV_Struktur_S.C_UKZ IS
'... Primärschlüssel des harmonisierten Schlüssel.
Dieser Wert wird als WErt in den entsprechenden Attributen des DWH genutzt.

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.ID_Auswertung_ind IS
'ID des Knotens der individuellen Auswertung

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.ID_Auswertungsbereich IS
'ID des Auswertungsbereichs (z.B. "RV_Proris")

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD14_RV_Struktur_S.Vertragsbezeichnung IS
'Bezeichner des RV-Vertrags';

