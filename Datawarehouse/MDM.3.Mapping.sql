--<ScriptOptions statementTerminator=";"/>
-- Version 10640

CREATE TABLE MD07_Spaet_Rueckvers_Pausch (
		ID_Spaet_Rueckvers_Pausch NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		C_Risikotraeger NUMBER(28 , 0) NOT NULL,
		C_Sparte NUMBER(28 , 0) NOT NULL,
		Sparte_Bez VARCHAR2(24 CHAR) NOT NULL,
		Eintrittsjahr NUMBER(10 , 0) NOT NULL,
		Statistikjahr NUMBER(10 , 0) NOT NULL,
		Statistikmonat NUMBER(10 , 0) NOT NULL,
		SpaetschRueckstEntsch NUMBER(16 , 2),
		SpaetschRueckstKosten NUMBER(16 , 2),
		RueckversRueckstEntsch NUMBER(16 , 2),
		RueckversRueckstKosten NUMBER(16 , 2),
		Anzahl_Spaetsch_geschaetzt NUMBER(10 , 0),
		Spartenkennziffer_geliefert VARCHAR2(64 CHAR) NOT NULL,
		Risikotraeger_geliefert VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD15_Schadenursache (
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		Schadenursache_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenursache VARCHAR2(64 CHAR) NOT NULL,
		Schadenursache_lang VARCHAR2(500 CHAR) NOT NULL,
		Schadenursache_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		Gefahr_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gefahr VARCHAR2(64 CHAR) NOT NULL,
		Gefahr_lang VARCHAR2(500 CHAR) NOT NULL,
		Gefahr_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Partner_Objekttyp NUMBER(28 , 0) NOT NULL,
		Partner_Objekttyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partner_Objekttyp VARCHAR2(64 CHAR) NOT NULL,
		Partner_Objekttyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Partner_Objektt_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Teilsparte NUMBER(28 , 0) NOT NULL,
		Teilsparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilsparte VARCHAR2(64 CHAR) NOT NULL,
		Teilsparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Teilsparte_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		Sparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Sparte VARCHAR2(64 CHAR) NOT NULL,
		Sparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sparte_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene1 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene1_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene1_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene2 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene2_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene2_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene3 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene3_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene3_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		 ID_Spartenbuendel_Ebene4 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene4_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene4 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene4_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene5 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene5_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene5 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene5_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene6 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene6_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene6 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene6_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Spartenbuendel_Ebene7 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene7_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene7 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenb_Ebene7_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Ereignisklasse NUMBER(28 , 0) NOT NULL,
		Ereignisklasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisklasse VARCHAR2(64 CHAR) NOT NULL,
		Ereignisklasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Ereignisklasse_Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD26_Auswertung_individuell (
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Auswertungsbereich_Kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Auswertungsbereich_Lang VARCHAR2(500 CHAR) NOT NULL,
		Auswertungsber_Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		ID_Auswertung_ind NUMBER(28 , 0) NOT NULL,
		Auswertung_ind_Kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertung_ind VARCHAR2(64 CHAR) NOT NULL,
		Auswertung_ind_Lang VARCHAR2(500 CHAR) NOT NULL,
		Auswertung_ind_Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD30_SSP_RVP_Ausw_indiv (
		ID_SSP_RVP_Ausw_indiv NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		ID_Auswertung_ind NUMBER(28 , 0) NOT NULL,
		ID_Spaet_Rueckvers_Pausch NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD31_Feiertagskalender (
		ID_Datum NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Feiertag_kurz VARCHAR2(64 CHAR) NOT NULL,
		Feiertag_lang VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD07_Spaet_Rueckvers_Pausch ADD CONSTRAINT MD07_Spaet_Rueckvers_Pausch_PK PRIMARY KEY
	(ID_Spaet_Rueckvers_Pausch,
	 TA_Ladedatum,
	 Statistikjahr,
	 Statistikmonat);

ALTER TABLE MD07_Spaet_Rueckvers_Pausch ADD CONSTRAINT MD07_Spaet_Rueckvers_Pausch_UC UNIQUE
	(TA_Ladedatum,
	 Sparte_Bez,
	 Eintrittsjahr,
	 Statistikjahr,
	 Statistikmonat,
	 Spartenkennziffer_geliefert,
	 Risikotraeger_geliefert);

ALTER TABLE MD15_Schadenursache ADD CONSTRAINT MD15_Schadenursache_PK PRIMARY KEY
	(ID_Spartenliste,
	 TA_Ladedatum);

ALTER TABLE MD26_Auswertung_individuell ADD CONSTRAINT MD26_Auswertung_individuell_PK PRIMARY KEY
	(ID_Auswertungsbereich,
	 ID_Spartenliste,
	 TA_Ladedatum);

ALTER TABLE MD30_SSP_RVP_Ausw_indiv ADD CONSTRAINT MD30_SSP_RVP_Ausw_indiv PRIMARY KEY
	(ID_SSP_RVP_Ausw_indiv,
	 TA_Ladedatum);

ALTER TABLE MD31_Feiertagskalender ADD CONSTRAINT MD31_Feiertagskalender_PK PRIMARY KEY
	(ID_Datum,
	 TA_Ladedatum);

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Anzahl_Spaetsch_geschaetzt IS
'Anzahl der geschätzten Spätschäden, die noch zu erwarten sind

aus SC1_SPAET_RV_PAUSCH.Spaetsch_gesch

Datenschutz $-?';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.C_Risikotraeger IS
'...ist das harmonisierte Unternehmenskennzeichen des Risikoträgers. 

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.C_Sparte IS
'... ist die harmonisierte Spartenkennziffer, auf welche sich die Rückstellungspauschalen beziehen

Quelle: Excel / Harmonisierung

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Eintrittsjahr IS
'... definiert das Eintrittsjahr, für das diese Rückstellungen gebildet worden sind.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.ID_Spaet_Rueckvers_Pausch IS
'Ist eine im DWH künstlich gebildete ID, basierend auf den gelieferten Informationen zum Risikoträger, der Spartenkennziffer und dem Spartenbezeichner';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Risikotraeger_geliefert IS
'...ist das gelieferte Unternehmenskennzeichen des Risikoträgers. 

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.RueckversRueckstEntsch IS
'... Rückversicherungspauschale - Entschädigungen. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.RueckversRueckstKosten IS
'...Rückversicherungspauschale - Kosten. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.SpaetschRueckstEntsch IS
'... ist der Betrag, der für Entschädigungszahlungen von Spätschäden zurückgestellt wurde. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.SpaetschRueckstKosten IS
'... ist der Betrag, der für Kosten der Schadenregulierung von Spätschäden zurückgestellt wurde. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Sparte_Bez IS
'Spartenbezeichner innerhalb der Spartenkennziffer, z.B. Hausrat und Wohngebäude innerhalb der Spartenkennziffer 60 (Elementar)

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Spartenkennziffer_geliefert IS
'... ist die gelieferte Spartenkennziffer, auf welche sich die Rückstellungspauschalen beziehen.
Hier werden auch Inhalte übernommen, die nicht harmonisiert werden können.

Quelle: Excel

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Statistikjahr IS
'... definiert das Statistikjahr, in dem diese Rückstellungen gebildet worden sind, d.h. zusammen mit dem Statistikmonat das Enddatum, ab dem neu gemeldete Spätschäden durch die Spätschadenpauschale gedeckt sind.

Beispiel: 
Eintrittsjahr 1991
Statistikjahr 1991
Statistikmonat 12

=> Alle Schäden des Eintrittsjahres 1991 mit Meldejahr >=1992 sind durch die Spätschadenpauschale abgedeckt

Beispiel 2:
Eintrittsjahr 1991
Statistikjahr 1994
Statistikmonat 03

=> Alle Schäden des Eintrittsjahres 1991 mit Meldedatum >=01.04.1994 sind durch die Spätschadenpauschale abgedeckt

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Statistikmonat IS
'... definiert den Statistikmonat im Statistikjahr, in dem diese Rückstellungen gebildet worden sind, d.h. ab dem neu gemeldete Spätschäden durch die Spätschadenpauschale gedeckt sind.

Beispiel: 
Eintrittsjahr 1991
Statistikjahr 1991
Statistikmonat 12

=> Alle Schäden des Eintrittsjahres 1991 mit Meldejahr >=1992 sind durch die Spätschadenpauschale abgedeckt

Beispiel 2:
Eintrittsjahr 1991
Statistikjahr 1994
Statistikmonat 03

=> Alle Schäden des Eintrittsjahres 1991 mit Meldedatum >=01.04.1994 sind durch die Spätschadenpauschale abgedeckt

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD15_Schadenursache.Ereignisklasse IS
'Kurztext für die Gefahr';

COMMENT ON COLUMN MD15_Schadenursache.Ereignisklasse_kurz IS
'Kurzbezeichnung für die Gefahr';

COMMENT ON COLUMN MD15_Schadenursache.Ereignisklasse_lang IS
'Langtext für die Gefahr';

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

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertung_ind IS
'Name des Knotens der individuellen Auswertung

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertung_ind_Kurz IS
'Kurzbezeichner des Knotens der individuellen Auswertung';

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertung_ind_Lang IS
'Langbezeichner des Knotens der individuellen Auswertung

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertungsbereich IS
'name des Auswertungsbereichs (z.B. "RV_Proris")

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertungsbereich_Kurz IS
'Kurzbezeichner des Auswertungsbereichs (z.B. "RV_Proris")';

COMMENT ON COLUMN MD26_Auswertung_individuell.Auswertungsbereich_Lang IS
'Langbezeichner des Auswertungsbereichs (z.B. "RV_Proris")

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.ID_Auswertung_ind IS
'ID des Knotens der individuellen Auswertung

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.ID_Auswertungsbereich IS
'ID des Auswertungsbereichs (z.B. "RV_Proris")

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD26_Auswertung_individuell.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.ID_Auswertung_ind IS
'ID des Knotens innerhalb des Auswertungsbereichs

Quellen: 

- SC1_ SPAET_RV_PAUSCH.BuHa_Ber_ID
- SC1_ SPAET_RV_PAUSCH.VIII_Ber_ID
- SC1_ SPAET_RV_PAUSCH.ProRis_Ber_ID
- SC1_ SPAET_RV_PAUSCH.NN_Ber_ID

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.ID_Auswertungsbereich IS
'ID des Auswertungsbereichs, also der Sicht auf die Daten.

Quellen: 

- SC1_ SPAET_RV_PAUSCH.BuHa_Ausw_ID
- SC1_ SPAET_RV_PAUSCH.VIII_Ausw_ID
- SC1_ SPAET_RV_PAUSCH.ProRis_Ausw_ID
- SC1_ SPAET_RV_PAUSCH.NN_Ausw_ID

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.ID_SSP_RVP_Ausw_indiv IS
'Zuordnung SSP_RVP zu individuellen Auswertungssichten';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD30_SSP_RVP_Ausw_indiv.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MD31_Feiertagskalender.Feiertag_kurz IS
'Kurztext des Feiertages';

COMMENT ON COLUMN MD31_Feiertagskalender.Feiertag_lang IS
'Langtext des Feiertages, z.B. Neujahr, Karfreitag etc.';

COMMENT ON COLUMN MD31_Feiertagskalender.ID_Datum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN MD31_Feiertagskalender.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD31_Feiertagskalender.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD31_Feiertagskalender.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD31_Feiertagskalender.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD31_Feiertagskalender.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE MD31_Feiertagskalender IS
'enthält einen Satz pro bundeseinheitlichem Feiertag (inkl. Heilig Abend und Silvester), d.h.

Neujahr					1.1.
Karfreitag				Ostern - 2
Ostermontag			Ostern + 1
Himmelfahrt			Ostern + 39
Pfingstmontag		Ostern + 50
Tag der Arbeit		1.5.
Tag der Einheit		3.10.
Heiligabend			24.12.
1. Weihnachtstag	25.12.
2. Weihnachtstag	26.12.
Silvester					31.12.
';

