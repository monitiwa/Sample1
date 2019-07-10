--<ScriptOptions statementTerminator=";"/>
-- Version 11974

CREATE TABLE DET_Dokument_Status (
		SK_Dokument_Status VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Geschaeftsvorgang_ID_A VARCHAR2(24 CHAR) NOT NULL,
		Taetigkeit_lfd VARCHAR2(10 CHAR) NOT NULL,
		Veraenderungsbeschreibung VARCHAR2(500 CHAR) NOT NULL,
		Taetigkeitsbeschreibung VARCHAR2(1400 CHAR) NOT NULL,
		Prozessmodell VARCHAR2(64 CHAR) NOT NULL,
		Vorgangszeitpunkt_Beginn DATE NOT NULL,
		Taetigkeitszeitpunkt_Beginn DATE NOT NULL,
		WV_Zeitpunkt DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Kontext (
		SK_Kontext VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Antragsnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Zusatznummer VARCHAR2(64 CHAR) NOT NULL,
		POB_A VARCHAR2(64 CHAR) NOT NULL,
		Inkassonummer VARCHAR2(64 CHAR) NOT NULL,
		Moped_Kennzeichen_A VARCHAR2(64 CHAR) NOT NULL,
		Vertragskontonummer_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Ladelauf (
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		Stichtag DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Scanstapel (
		SK_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Stapelname VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Arbeitschritt (
		ID_Arbeitsschritt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Arbeitschritt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Arbeitschritt VARCHAR2(64 CHAR) NOT NULL,
		Arbeitschritt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bearbeiter (
		ID_Bearbeiter NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_Grp NUMBER(28 , 0) NOT NULL,
		Bearbeiter_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bearbeiter VARCHAR2(64 CHAR) NOT NULL,
		Bearbeiter_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		User_Rolle VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bearbeiter_Grp (
		ID_Bearbeiter_Grp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		Bearbeiter_Grp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bearbeiter_Grp VARCHAR2(64 CHAR) NOT NULL,
		Bearbeiter_Grp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Datum (
		ID_Datum NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Datum DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		ID_Monat NUMBER(28 , 0) NOT NULL,
		ID_Woche NUMBER(28 , 0) NOT NULL,
		Tag_kurz VARCHAR2(64 CHAR) NOT NULL,
		Tag NUMBER(10 , 0) NOT NULL,
		Tag_lang VARCHAR2(64 CHAR) NOT NULL,
		Feiertag CHAR(1 CHAR) NOT NULL,
		Werktag CHAR(1 CHAR) NOT NULL,
		Arbeitstag_Nr NUMBER(10 , 0) NOT NULL,
		Monatsultimo CHAR(1 CHAR) NOT NULL,
		Quartalsultimo CHAR(1 CHAR) NOT NULL,
		ID_Datum_Jahresletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Halbjahresletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Quartalsletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Monatsletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Wochenletzter NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Dokumentart (
		ID_Dokumentart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Dokumentart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Dokumentart VARCHAR2(64 CHAR) NOT NULL,
		Dokumentart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Empfangskanal (
		ID_Empfangskanal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Empfangskanal_kurz VARCHAR2(24 CHAR) NOT NULL,
		Empfangskanal VARCHAR2(64 CHAR) NOT NULL,
		Empfangskanal_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geschaeftsber (
		ID_Geschaeftsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Geschaeftsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geschaeftsbereich VARCHAR2(64 CHAR) NOT NULL,
		Geschaeftsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Halbjahr (
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Jahr NUMBER(28 , 0) NOT NULL,
		Halbjahr_kurz VARCHAR2(64 CHAR) NOT NULL,
		Halbjahr NUMBER(10 , 0) NOT NULL,
		Halbjahr_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_JNKENNZ (
		KENNZ CHAR(1) NOT NULL,
		KENNZ_BEZ VARCHAR2(20) NOT NULL,
		KENNZ_SORT NUMBER(1 , 0) NOT NULL,
		KENNZ_LANG VARCHAR2(500)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Jahr (
		ID_Jahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Monat (
		ID_Monat NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		Monat_kurz VARCHAR2(64 CHAR) NOT NULL,
		Monat NUMBER(10 , 0) NOT NULL,
		Monat_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Quartal (
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		Quartal_kurz VARCHAR2(64 CHAR) NOT NULL,
		Quartal NUMBER(10 , 0) NOT NULL,
		Quartal_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene1 (
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_RD_Ebene2 NUMBER(28 , 0) NOT NULL,
		RD_Ebene1_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene2 (
		ID_RD_Ebene2 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_RD_Ebene3 NUMBER(28 , 0) NOT NULL,
		RD_Ebene2_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene3 (
		ID_RD_Ebene3 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		RD_Ebene3_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regionaldir (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Routing_BZA (
		ID_Routing NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Routing_kurz VARCHAR2(24 CHAR) NOT NULL,
		Routing VARCHAR2(64 CHAR) NOT NULL,
		Routing_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Stapelklasse (
		ID_Stapelklasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Stapelklasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Stapelklasse VARCHAR2(64 CHAR) NOT NULL,
		Stapelklasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Status_fachlich (
		ID_Status_fachlich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Status_fachlich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Status_fachlich VARCHAR2(64 CHAR) NOT NULL,
		Status_fachlich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Veraenderungsart (
		ID_Veraenderungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Veraenderungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Veraenderungsart VARCHAR2(64 CHAR) NOT NULL,
		Veraenderungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Woche (
		ID_Woche NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Woche_kurz VARCHAR2(64 CHAR) NOT NULL,
		Woche NUMBER(10 , 0) NOT NULL,
		Woche_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Dokument_Status (
		SK_Dokument_Status VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		SK_Kontext VARCHAR2(64 CHAR) NOT NULL,
		ID_Vorgangsdatum_Beginn NUMBER(28 , 0) NOT NULL,
		ID_Vorgangsdatum_Ende NUMBER(28 , 0) NOT NULL,
		ID_Taetigkeitsdatum_Beginn NUMBER(28 , 0) NOT NULL,
		ID_Taetigkeitsdatum_Ende NUMBER(28 , 0) NOT NULL,
		ID_Veraenderungsart NUMBER(28 , 0) NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		ID_Geschaeftsbereich NUMBER(28 , 0) NOT NULL,
		ID_Arbeitsschritt NUMBER(28 , 0) NOT NULL,
		ID_WV_Datum NUMBER(28 , 0) NOT NULL,
		ID_Dokumentart NUMBER(28 , 0) NOT NULL,
		ID_Empfangskanal NUMBER(28 , 0) NOT NULL,
		ID_Routing NUMBER(28 , 0) NOT NULL,
		ID_Stapelklasse NUMBER(28 , 0) NOT NULL,
		ID_Status_fachlich NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_tatsaechlich NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_ermittelt NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_vorher NUMBER(28 , 0) NOT NULL,
		ID_Systemeingangsdatum NUMBER(28 , 0) NOT NULL,
		ID_RD_ermittelt NUMBER(28 , 0) NOT NULL,
		Anzahl_Dokumente NUMBER(10 , 0) NOT NULL,
		Anzahl_Seiten NUMBER(10 , 0) NOT NULL,
		SLA_Dauer_in_Tagen NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Scanstapel (
		SK_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Stapelklasse NUMBER(28 , 0) NOT NULL,
		ID_Systemeingangsdatum NUMBER(28 , 0) NOT NULL,
		Anzahl_Dokumente NUMBER(10 , 0) NOT NULL,
		Anzahl_Seiten NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '28.09.2016','DD.MM.YYYY') NOT NULL,
		Deploymentdatum DATE DEFAULT sysdate NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_Dokument_Status ADD CONSTRAINT DET_Dokument_Status_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Dokument_Status);

ALTER TABLE DET_Kontext ADD CONSTRAINT DET_Kontext_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Kontext);

ALTER TABLE DET_Ladelauf ADD CONSTRAINT DET_Ladelauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag);

ALTER TABLE DET_Scanstapel ADD CONSTRAINT DET_Scanstapel_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Scanstapel);

ALTER TABLE DIM_Arbeitschritt ADD CONSTRAINT DIM_Arbeitschritt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Arbeitsschritt);

ALTER TABLE DIM_Bearbeiter ADD CONSTRAINT DIM_Bearbeiter_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Bearbeiter);

ALTER TABLE DIM_Bearbeiter_Grp ADD CONSTRAINT DIM_Bearbeiter_Grp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Bearbeiter_Grp);

ALTER TABLE DIM_Datum ADD CONSTRAINT DIM_Datum_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Datum);

ALTER TABLE DIM_Dokumentart ADD CONSTRAINT DIM_Dokumentart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Dokumentart);

ALTER TABLE DIM_Empfangskanal ADD CONSTRAINT DIM_Empfangskanal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Empfangskanal);

ALTER TABLE DIM_Geschaeftsber ADD CONSTRAINT DIM_Geschaeftsbereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Geschaeftsbereich);

ALTER TABLE DIM_Halbjahr ADD CONSTRAINT DIM_Halbjahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Halbjahr);

ALTER TABLE DIM_JNKENNZ ADD CONSTRAINT DIM_JNKENNZ_PK PRIMARY KEY
	(KENNZ);

ALTER TABLE DIM_Jahr ADD CONSTRAINT DIM_Jahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Jahr);

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Monat);

ALTER TABLE DIM_Quartal ADD CONSTRAINT DIM_Quartal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Quartal);

ALTER TABLE DIM_RD_Ebene1 ADD CONSTRAINT DIM_RD_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene1);

ALTER TABLE DIM_RD_Ebene2 ADD CONSTRAINT DIM_RD_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene2);

ALTER TABLE DIM_RD_Ebene3 ADD CONSTRAINT DIM_RD_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene3);

ALTER TABLE DIM_Regionaldir ADD CONSTRAINT DIM_Regionaldirektion_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Regionaldirektion);

ALTER TABLE DIM_Routing_BZA ADD CONSTRAINT DIM_Routing_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Routing);

ALTER TABLE DIM_Stapelklasse ADD CONSTRAINT DIM_Stapelklasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Stapelklasse);

ALTER TABLE DIM_Status_fachlich ADD CONSTRAINT DIM_Status_fachlich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Status_fachlich);

ALTER TABLE DIM_Veraenderungsart ADD CONSTRAINT DIM_Veraenderungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Veraenderungsart);

ALTER TABLE DIM_Woche ADD CONSTRAINT DIM_Woche_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Woche);

ALTER TABLE F_Dokument_Status ADD CONSTRAINT F_Dokument_Status_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Dokument_Status);

ALTER TABLE F_Scanstapel ADD CONSTRAINT F_Scanstapel_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Scanstapel);

COMMENT ON COLUMN DET_Dokument_Status.Geschaeftsvorgang_ID_A IS
'... ist der identifizierende Ordnungsbegriff für den Geschäftsvorgang.

BEA: Zur Zeit wird für Zwecke der DMS-Statistiken nicht zwischen dem (führenden) Dokument und dem zugehörigen Geschäftsvorgang unterschieden. 

aus GP03_Gevo_DMS_01_HBS.Geschaeftsvorgang_ID_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Dokument_Status.Prozessmodell IS
'...identifiziert das Prozessmodell für die beteiligten DMS-Prozesse

Zu beachten ist, dass DMS keine Geschäftsprozesse oder Geschäftsvorfälle liefert, sondern nur Informationen über die technischen Prozesse

aus GP03_Gevo_DMS_01_HBS.Prozessmodell_ID

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.SK_Dokument_Status IS
'aus GP04_Taetigkeit_DMS_01_HBS.SK_GP04_Taetigkeit';

COMMENT ON COLUMN DET_Dokument_Status.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Taetigkeit_lfd IS
'... identifiziert die aktuelle Tätigkeit (Log-Nr)

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeit_lfd

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Taetigkeitsbeschreibung IS
'... enthält zusätzliche Informationen zu Tätigkeit als Freitext

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsbeschreibung

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Taetigkeitszeitpunkt_Beginn IS
'Beginntermin (als Timestamp) der aktuellen Tätigkeit.  (Hier: Logdatum des vorherigen gelogten Zeitraums für parent- bzw. child-Prozess DOXIS)

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Veraenderungsbeschreibung IS
'... beschreibt das Ergebnis der Tätigkeit als Freitext

aus.GP04_Taetigkeit_DMS_01_HBS.Veraenderungssbeschreibung

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Vorgangszeitpunkt_Beginn IS
'Beginntermin (als Timestamp) des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.WV_Zeitpunkt IS
'Wiedervorlagedatum (als Timestamp) 

aus.GP04_Taetigkeit_DMS_01_HBS.Zeitangabe_WV

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.Antragsnummer_A IS
'... die Nummer des Antrags, der zum Kontext gehört.

Datenschutz $A1';

COMMENT ON COLUMN DET_Kontext.Inkassonummer IS
'... ist die Nummer, die zusammen mit dem Partnerordnungsbegriff die Inkassoinformation, die zum Kontext gehört, identifiziert.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.Moped_Kennzeichen_A IS
'... die Nummer des Moped-Vertrags, der zum Kontext gehört.

Datenschutz $A1';

COMMENT ON COLUMN DET_Kontext.POB_A IS
'... die Identifikation des Partners (=POB=PNR), der zum Kontext gehört.

Datenschutz $A1';

COMMENT ON COLUMN DET_Kontext.SK_Kontext IS
'= Hash("DMS" ~ Antragsnummer_A ~Versicherungsscheinnummer_A ~ Zusatznummer_A ~ Partnerordnungsbegriff_A ~ Inkassonummer_A ~ Moped_Kennzeichen_A ~ Vertragskontonummer_A)

bea: zunächst nur Hash ("DMS" ~~Versicherungsscheinnummer_A ~~~~~)

Datenschutz $-?';

COMMENT ON COLUMN DET_Kontext.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Kontext.Versicherungsscheinnummer_A IS
'... die Versicherungsscheinnummer (mit Prüfziffer) des Vertrags, der zum Kontext gehört.
   
aus WE01_WE_DMS_01_HBS.Versicherungsscheinnummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Kontext.Vertragskontonummer_A IS
'... die Nummer des Vertragskontos aus  In-Exkasso, das zum Kontext gehört.

Datenschutz $A1';

COMMENT ON COLUMN DET_Kontext.Zusatznummer IS
'... die Zusatznummer des Vertrags, der zum Kontext gehört.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.Stichtag IS
'Stichtag, der im Ladejob verarbeitet wurde.
Wenn derselbe Stichtag in mehereren Ladejobs verarbeitet wurde (z.B. Korrekturen), können mehrere Sätze zu demselben Stichtag in dieser Tabelle auftreten.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, zu dem dieser Tabellen-Eintrag gehört.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, können mehrere Sätze zu derselben Lade_ID dieser Tabelle auftreten.
Es können mehrere Sätze zu einem Ladejob in dieser Tabelle stehen.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, zu dem dieser Satz geschrieben wurde.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, können mehrere Sätze zu demselben Ladedatum in dieser Tabelle auftreten.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.SK_Scanstapel IS
'aus IF02_Scanstapel_DMS_01_HBS.FK_IF02_Scanstapel';

COMMENT ON COLUMN DET_Scanstapel.Stapelname IS
'... ist die eindeutige ID des gescannten Stapels

aus IF02_Scanstapel_DMS_01_HBS.Stapel_ID

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Scanstapel.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.Arbeitschritt IS
'Kurztext für den Arbeitsschritt

aus MD22_DMS_Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.Arbeitschritt_kurz IS
'Kurzbezeichnung für den Arbeitsschritt

aus MD22_DMS_Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.Arbeitschritt_lang IS
'Langtext für den Arbeitsschritt

aus MD22_DMS_Arbeitsschritt

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.ID_Arbeitsschritt IS
'für DMS:

entspricht der Aktivitaet_ID

aus MD22_DMS_Arbeitsschritt';

COMMENT ON COLUMN DIM_Arbeitschritt.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Arbeitschritt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.Bearbeiter IS
'Kurztext für den Bearbeiter

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.Bearbeiter_kurz IS
'Kurzbezeichnung für den Bearbeiter

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.Bearbeiter_lang IS
'Langtext für den Bearbeiter

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.ID_Bearbeiter IS
'aus	GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID';

COMMENT ON COLUMN DIM_Bearbeiter.ID_Bearbeiter_Grp IS
'aus	GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID';

COMMENT ON COLUMN DIM_Bearbeiter.ID_Regionaldirektion IS
'verweist auf die RD, der der User zuzuordnen ist. Enthält das zweistellige Buchstaben-Kürzel.';

COMMENT ON COLUMN DIM_Bearbeiter.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter.User_Rolle IS
'gibt an, ob es sich um einen Sachbearbeiter/ AA oder einen Gruppenbriefkasten/ technischen User handelt.

0: AA
1: Gruppenbriefkasten

aus MD20_DMS_User.User_Rolle

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.Bearbeiter_Grp IS
'Kurztext für die Gruppe des Bearbeiters

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.Bearbeiter_Grp_kurz IS
'Kurzbezeichnung für die Gruppe des Bearbeiters

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.Bearbeiter_Grp_lang IS
'Langtext für die Gruppe des Bearbeiters

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.ID_Bearbeiter_Grp IS
'aus	GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID /
		GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bearbeiter_Grp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Arbeitstag_Nr IS
'... ist die laufende Nummer des Arbeitstages, beginnend mit dem 01.01.1.1900j als Nr. "1" (falls es ein Arbeitstag ist) oder Nr. "0" (falls es kein Arbeitstag ist) (der 1.1 ist Feiertag)

Falls der Tag ein Arbeitstag ist, berechnet sich der Inhalt dieses Feldes als "Arbeitstag_Nr vom Vortag +1".
Falls der Tag kein Arbeitstag ist ist der Inhalt = "Arbeitstag_Nr vom Vortag".

Als Arbeitstage gelten alle Tage außer Samstage, Sonntage, bundeseinheitliche Feiertage, Heilig Abend und Silvester.

Dieses Feld erlaubt es, die Länge von Zeitspannen kalenderjahresübergreifend in Arbeitstagen auszurechnen. Wenn durch eine Änderung im Kalender Feiertage wegfallen oder hinzukommen, muß dieser Wert für die Zeit nach der Änderung neu berechnet werden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Datum IS
'Datum im Datumsformat, z.B. 13.12.2013';

COMMENT ON COLUMN DIM_Datum.Feiertag IS
'Kennzeichnung ob es sich um einen bundeseinheitlichen Feiertag (inkl. Heilig Abend und Silvester) handelt.
ja / nein';

COMMENT ON COLUMN DIM_Datum.ID_Datum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Halbjahresletzter IS
'... ist das Datum des letzten Tages des Halbjahres, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Jahresletzter IS
'... ist das Datum des letzten Tages des Jahres, in dem das Datum liegt: JAHR *10000 + 1231';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Monatsletzter IS
'... ist das Datum des letzten Tages des Monats, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Quartalsletzter IS
'... ist das Datum des letzten Tages des Quartals, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Wochenletzter IS
'... ist das Datum des letzten Tages der Woche, in der das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Halbjahr IS
'Die ID_Halbjahr wird mit YYYYH besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Monat IS
'Die ID_Monat wird so gesetzt, dass sie identisch zum Monat zum Datum ist. Aufbau JJJJMM,  z.B. 201307';

COMMENT ON COLUMN DIM_Datum.ID_Quartal IS
'Die ID_Quartal wird mit YYYYQ besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

COMMENT ON COLUMN DIM_Datum.Jahr IS
'Jahr des Datums als vierstellige Zahl';

COMMENT ON COLUMN DIM_Datum.Monatsultimo IS
'...kennzeichnet den letzten Arbeitstag des Monats mit ''ja''

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Quartalsultimo IS
'...kennzeichnet den letzten Arbeitstag des Quartals mit ''ja''

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Tag IS
'Tag des Datums';

COMMENT ON COLUMN DIM_Datum.Tag_kurz IS
'Kurztext des Tages, z.B. Mi, Do, Fr etc.';

COMMENT ON COLUMN DIM_Datum.Tag_lang IS
'Langtext des Tages, z.B. Dienstag, Mittwoch etc.';

COMMENT ON COLUMN DIM_Datum.Werktag IS
'Kennzeichnung ob es sich um einen Werktag handelt (Montag bis Freitag)
ja / nein';

COMMENT ON COLUMN DIM_Dokumentart.Dokumentart IS
'Kurztext für die Dokumentart

1		Antrag
2		Sonstiges
3		Schriftwechsel
4		Berechn./Buchungen
5		SW(DEVK-intern)
6		Dokumente
7		Zahlungserinnerung
8		Mahnung ''38
9		Akte
10	maschinell erstellte Dokumente
11	Scanning
12	Vertragsaenderung
13	Info ADM
14	Mahnung Folgebeitrag
15	Anschreiben Erstbeitrag
...
ca. 450 Einträge,s. Wertelisten-DMS2.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.Dokumentart_kurz IS
'Kurzbezeichnung für die Dokumentart

1		Antrag
2		Sonstiges
3		Schriftwechsel
4		Berechn./Buchungen
5		SW(DEVK-intern)
6		Dokumente
7		Zahlungserinnerung
8		Mahnung ''38
9		Akte
10	maschinell erstellte Dokumente
11	Scanning
12	Vertragsaenderung
13	Info ADM
14	Mahnung Folgebeitrag
15	Anschreiben Erstbeitrag
...
ca. 450 Einträge,s. Wertelisten-DMS2.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.Dokumentart_lang IS
'Langtext für die Dokumentart

1		Antrag
2		Sonstiges
3		Schriftwechsel
4		Berechn./Buchungen
5		SW(DEVK-intern)
6		Dokumente
7		Zahlungserinnerung
8		Mahnung ''38
9		Akte
10	maschinell erstellte Dokumente
11	Scanning
12	Vertragsaenderung
13	Info ADM
14	Mahnung Folgebeitrag
15	Anschreiben Erstbeitrag
...
ca. 450 Einträge,s. Wertelisten-DMS2.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dokumentart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.Empfangskanal IS
'Kurztext für den Empfangskanal

1		SCAN
2		FAX
3		BK
4		ASF
5		MAIL
6		TEL
7		INTERN
8		SAA
9		DOM-Z
10	DOM-A
11	DOM-L
12	DOM-Fax
13	DOM-Mail
14	DOM-AV
15	DOM-GDV
16	ESA
17	GDV
18	CALCPROOF
19	DBFUHR
20	PAD
21	INTERNET
22	TIFF

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.Empfangskanal_kurz IS
'Kurzbezeichnung für den Empfangskanal

1		SCAN
2		FAX
3		BK
4		ASF
5		MAIL
6		TEL
7		INTERN
8		SAA
9		DOM-Z
10	DOM-A
11	DOM-L
12	DOM-Fax
13	DOM-Mail
14	DOM-AV
15	DOM-GDV
16	ESA
17	GDV
18	CALCPROOF
19	DBFUHR
20	PAD
21	INTERNET
22	TIFF

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.Empfangskanal_lang IS
'Langtext für den Empfangskanal

1		SCAN
2		FAX
3		BK
4		ASF
5		MAIL
6		TEL
7		INTERN
8		SAA
9		DOM-Z
10	DOM-A
11	DOM-L
12	DOM-Fax
13	DOM-Mail
14	DOM-AV
15	DOM-GDV
16	ESA
17	GDV
18	CALCPROOF
19	DBFUHR
20	PAD
21	INTERNET
22	TIFF

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.ID_Empfangskanal IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Empfangskanal.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Empfangskanal.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.Geschaeftsbereich IS
'Kurztext für den Geschaeftsbereich

3C		Unterstützungskasse
F			SAP-FI
I			Inkasso
KS		K-Schaden
KV		Krankenversicherung
L			Leben
PV		Vertrieb
RA		Rechtsabteilung
RB		Rechtsschutz-Betrieb
RS		Rechtsschutz-Schaden
S			Schaden
SSHK	SchadenSachHaftpflichtKraft
SU		SchadenUnfall
VB		Monega
IF			Immoblilienfinanzierung - 7200
SHUK	SHUK

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.Geschaeftsbereich_kurz IS
'Kurzbezeichnung für den Geschaeftsbereich

3C		Unterstützungskasse
F			SAP-FI
I			Inkasso
KS		K-Schaden
KV		Krankenversicherung
L			Leben
PV		Vertrieb
RA		Rechtsabteilung
RB		Rechtsschutz-Betrieb
RS		Rechtsschutz-Schaden
S			Schaden
SSHK	SchadenSachHaftpflichtKraft
SU		SchadenUnfall
VB		Monega
IF			Immoblilienfinanzierung - 7200
SHUK	SHUK

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.Geschaeftsbereich_lang IS
'Langtext für den Geschaeftsbereich

3C		Unterstützungskasse
F			SAP-FI
I			Inkasso
KS		K-Schaden
KV		Krankenversicherung
L			Leben
PV		Vertrieb
RA		Rechtsabteilung
RB		Rechtsschutz-Betrieb
RS		Rechtsschutz-Schaden
S			Schaden
SSHK	SchadenSachHaftpflichtKraft
SU		SchadenUnfall
VB		Monega
IF			Immoblilienfinanzierung - 7200
SHUK	SHUK

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.ID_Geschaeftsbereich IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Geschaeftsber.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschaeftsber.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr IS
'Halbjahr im Format YYYYHH, z.B. 201302';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_kurz IS
'Halbjahr als Kurztext, z.B. H2 2013';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_lang IS
'Langtext des Halbjahres, z.B. 2. Halbjahr 2013';

COMMENT ON COLUMN DIM_Halbjahr.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJHH,  z.B. 201302';

COMMENT ON COLUMN DIM_Halbjahr.ID_Jahr IS
'Die ID_Jahr wird so gesetzt, dass sie identisch zum Jahr zum Datum ist. Aufbau JJJJ';

COMMENT ON COLUMN DIM_Halbjahr.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ IS
'Kennzeichen J/N/-';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_BEZ IS
'Bezeichnung';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_LANG IS
'Langbezeichnung';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_SORT IS
'Sortierreihenfolge';

COMMENT ON COLUMN DIM_Jahr.ID_Jahr IS
'Die ID_Jahr wird so gesetzt, dass sie identisch zum Jahr zum Datum ist. Aufbau JJJJ';

COMMENT ON COLUMN DIM_Jahr.Jahr IS
'Jahr des Datums als vierstellige Zahl';

COMMENT ON COLUMN DIM_Jahr.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.ID_Monat IS
'Die ID_Monat wird so gesetzt, dass sie identisch zum Monat zum Datum ist. Aufbau JJJJMM,  z.B. 201307';

COMMENT ON COLUMN DIM_Monat.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Monat.Monat IS
'Name des Monats und Jahr, z.B. "Dez. 2014"';

COMMENT ON COLUMN DIM_Monat.Monat_kurz IS
'Name des Monats und Jahr, z.B. "12.2014"
';

COMMENT ON COLUMN DIM_Monat.Monat_lang IS
'Name des Monats und Jahr, z.B. "Dezember 2014"';

COMMENT ON COLUMN DIM_Monat.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJHH,  z.B. 201302';

COMMENT ON COLUMN DIM_Quartal.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Quartal.Quartal IS
'Quartal im Format YYYYQQ';

COMMENT ON COLUMN DIM_Quartal.Quartal_kurz IS
'Quartal als Kurztext, z.B. Q4 2013';

COMMENT ON COLUMN DIM_Quartal.Quartal_lang IS
'Quartal als Langtext, z.B. 4. Quartal 2013';

COMMENT ON COLUMN DIM_Quartal.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene1 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene2 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene2 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene3 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.ID_RD_Ebene3 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.ID_RD_Ebene1 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldir.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion IS
'Kurztext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurztext

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_kurz IS
'Kurzbezeichnung für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurzbezeichnung

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_lang IS
'Langtext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Langtext

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.Routing IS
'Kurztext für Routing / BZA, das ist ein Postverteilungsmerkmal aus DMS. Enthält neben der BZA (Bestandsbeziehungsart), die sich aus den Nummernkreisen der Versicherungsscheine ermittelt, weitere Merkmale.

112				Unfall (SHUK)
121				Sach-Einzel (SHUK)
122				Glas (SHUK)
123				Hausrat (SHUK)
124				Gebäude (SHUK)
125				CUV (SHUK)
130				Kfz (SHUK)
131				Moped (SHUK)
140				Reisegepäck (SHUK)
141				Kurzfrist Reise (SHUK)
142				Sparda Reisepaket (SHUK)
143				ServicePlus (SHUK)
144				Arbeitslosenkreditversicherung (SHUK)
160				Haftpflicht (SHUK)
701				ACV (SHUK)
Privat			Privat (SHUK, bei Neuanträgen)
Vielschutz	Vielschutz (SHUK, bei Neuanträgen)
Inkasso		Inkasso
bAV				bAV (Inkasso)
Kranken		Kranken (Inkasso)
PC-Miete	PC-Miete (Inkasso)

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.Routing_kurz IS
'Kurzbezeichnung für Routing / BZA, das ist ein Postverteilungsmerkmal aus DMS. Enthält neben der BZA (Bestandsbeziehungsart), die sich aus den Nummernkreisen der Versicherungsscheine ermittelt, weitere Merkmale.

112				Unfall (SHUK)
121				Sach-Einzel (SHUK)
122				Glas (SHUK)
123				Hausrat (SHUK)
124				Gebäude (SHUK)
125				CUV (SHUK)
130				Kfz (SHUK)
131				Moped (SHUK)
140				Reisegepäck (SHUK)
141				Kurzfrist Reise (SHUK)
142				Sparda Reisepaket (SHUK)
143				ServicePlus (SHUK)
144				Arbeitslosenkreditversicherung (SHUK)
160				Haftpflicht (SHUK)
701				ACV (SHUK)
Privat			Privat (SHUK, bei Neuanträgen)
Vielschutz	Vielschutz (SHUK, bei Neuanträgen)
Inkasso		Inkasso
bAV				bAV (Inkasso)
Kranken		Kranken (Inkasso)
PC-Miete	PC-Miete (Inkasso)

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.Routing_lang IS
'Langtext für Routing / BZA, das ist ein Postverteilungsmerkmal aus DMS. Enthält neben der BZA (Bestandsbeziehungsart), die sich aus den Nummernkreisen der Versicherungsscheine ermittelt, weitere Merkmale.

112				Unfall (SHUK)
121				Sach-Einzel (SHUK)
122				Glas (SHUK)
123				Hausrat (SHUK)
124				Gebäude (SHUK)
125				CUV (SHUK)
130				Kfz (SHUK)
131				Moped (SHUK)
140				Reisegepäck (SHUK)
141				Kurzfrist Reise (SHUK)
142				Sparda Reisepaket (SHUK)
143				ServicePlus (SHUK)
144				Arbeitslosenkreditversicherung (SHUK)
160				Haftpflicht (SHUK)
701				ACV (SHUK)
Privat			Privat (SHUK, bei Neuanträgen)
Vielschutz	Vielschutz (SHUK, bei Neuanträgen)
Inkasso		Inkasso
bAV				bAV (Inkasso)
Kranken		Kranken (Inkasso)
PC-Miete	PC-Miete (Inkasso)

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Routing_BZA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.Stapelklasse IS
'Kurztext für die Stapelklasse (Scanweg)

SvB		Scannen vor Bearbeitung
SnB		Scannen nach Bearbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.Stapelklasse_kurz IS
'Kurzbezeichnung für die Stapelklasse (Scanweg)

SvB		Scannen vor Bearbeitung
SnB		Scannen nach Bearbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.Stapelklasse_lang IS
'Langtext für die Stapelklasse (Scanweg)

SvB		Scannen vor Bearbeitung
SnB		Scannen nach Bearbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Stapelklasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.ID_Status_fachlich IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Status_fachlich.Status_fachlich IS
'Kurztext für den fachlichen Status

aus SC02_Schluesselbedeutung.Kurztext

1	gescannt
2	analysiert
3	archiviert
4	zugestellt
5	in Bearbeitung
6	offen
7	erledigt

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.Status_fachlich_kurz IS
'Kurzbezeichnung für den fachlichen Status

aus SC02_Schluesselbedeutung.Kurzbezeichnung

1	gescannt
2	analysiert
3	archiviert
4	zugestellt
5	in Bearbeitung
6	offen
7	erledigt

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.Status_fachlich_lang IS
'Langtext für den fachlichen Status

aus SC02_Schluesselbedeutung.Langtext

1	gescannt
2	analysiert
3	archiviert
4	zugestellt
5	in Bearbeitung
6	offen
7	erledigt

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Status_fachlich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.ID_Veraenderungsart IS
'für DMS:

entspricht dem EventTyp
1,Prozess Objekt
2,Akzeptiert
3,Weitergeleitet
4,Delegiert
5,Prozess Objekt Neustart
6,Erhalten
8,Abwesend
10,Timer abgelaufen
11,Logisch gelöscht
12,Wiederhergestellt
13,Vertraulichkeitsstufe geändert
20,Papier
32,Aktenplan Aenderung
33,Objekt Kopie
34,Dokument verschoben
35,Wiedervorlage setzen
36,Wiedervorlage aufheben
37,Prozess aendern
38,Work Item geloescht
39,Dokument geaendert
40,Dokument geloescht
41,Dokument kopiert
42,Dokument erstellt
43,Original Dokument wurde geloescht
44,Einen Sohn untergeordnet
45,Objekt wurde untergeordnet
46,Einen Sohn entnommen
47,Objekt wurde entnommen
99,Information
200,Umprotokollierung
201,Umprotokollierung des Vorgangs
202,Versand per E-Mail
203,Check-Out
204,Check-In
205,Dokument geöffnet
206,Aufgabe erledigt
207,Aufgabe nicht erledigt
220,Dokument zeichnen
221,Dokument einfrieren
222,Dokumentdatei einfrieren
225,Dokumentdatei gezeichnet
226,Dokument logisch gelöscht
227,Dokument wiederhergestellt
228,Dokument Vertraulichkeitsstufe geändert
244,Einen Sohn zugeordnet
245,Objekt wurde zugeordnet
246,Einen zugeordneten Sohn entnommen
247,Zuordnung fuer Objekt aufgehoben
248,SUB-Objekt erstellt
249,SUB-Objekt synchronisiert
601,DEVK-Ursprung

aus MD23_DMS_Veraenderungsart';

COMMENT ON COLUMN DIM_Veraenderungsart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.Veraenderungsart IS
'Kurztext für die Veraenderungsart

aus MD23_DMS_Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.Veraenderungsart_kurz IS
'Kurzbezeichnung für die Veraenderungsart

aus MD23_DMS_Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Veraenderungsart.Veraenderungsart_lang IS
'Langtext für die Veraenderungsart

aus MD23_DMS_Veraenderungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

COMMENT ON COLUMN DIM_Woche.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Woche IS
'Wochennummer, z.B. 50';

COMMENT ON COLUMN DIM_Woche.Woche_kurz IS
'Kurztext der Woche, z.b. KW 50
';

COMMENT ON COLUMN DIM_Woche.Woche_lang IS
'Langtext der Woche, z. B. Kalenderwoche 50';

COMMENT ON COLUMN F_Dokument_Status.Anzahl_Dokumente IS
'.. ist die Anzahl der Dokumente zum primären Dokument.

aus GP03_Gevo_DMS_01_HBS.Anzahl_Dokumente

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Anzahl_Seiten IS
'.. ist die Anzahl der Seiten zum primären Dokument.

aus GP03_Gevo_DMS_01_HBS.Anzahl_Seiten

für child ???

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Arbeitsschritt IS
'... bezeichnet den Arbeitschritt

Zu beachten ist, dass  von DMS keine Arbeitsschritte oder Tätigleiten geliefert, sondern durch die vorliegenden Dokumente ausgelöste Bearbeitungen dokumentiert werden. Dabei dient die in DMS dokumentierte "Aktivität" als Bezeichnung eines hypothetischen Arbeitsschritts, der aber nicht im Rahmen eines codifizierten Prozesses beschrieben ist, sondern vom Sachbearbeiter individuell gesteuert wird.

11248,SplitArchiveLink
11250,Vorgang bearbeiten
11254,WaitChannelActive
11176,Erkennung
11179,GB-Separator
11181,GDV
11185,Scan
11263,Start
11264,Vorgang bearbeiten
11246,isAsyncComplete
11180,GBSEPARATOR
11260,Initialisieren
11265,Vorgang loeschen
11244,Irrlaeufer erzeugen
11245,isActive
11251,Vorgang bilden
11187,Vorgang löschen
11222,Bearbeiter ermitteln (BEA)
11226,Start
11178,Future: Schaden
11184,Mail/Fax
11186,SUB: Betrieb
11257,Bearbeiter ermitteln (BEA)
11258,Bearbeiter rückmelden
11227,Vorgang bearbeiten
11242,Dokumente anreichern
11243,Ende
11247,PruefeIrrlaeufer
11253,WaitAsyncComplete
11177,Future: EAS
11261,Join_Reaktivieren
11228,Vorgang loeschen
11240,Bearbeiter ermitteln (BEA)
11249,Start
11175,Ende
11182,isActive
11259,Ende
11225,Join_Reaktivieren
11252,Vorgang loeschen
11183,isActive
11224,Initialisieren
11241,Clearing-ZD
11188,WaitChannelActive
11262,Split_Rückmeldung
11223,Ende

aus.GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_ermittelt IS
'... die Identifikation des ermittelten Bearbeiters (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_tatsaechlich IS
'... die Identifikation des verändernden Mitarbeiters (=tatsächlicher Bearbeiter) (=ID aus dem operativen System)

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_vorher IS
'... die Identifikation des vorherigen Bearbeiters (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Dokumentart IS
'... ist die Art des Dokuments, z.B. 

1		Antrag
2		Sonstiges
3		Schriftwechsel
4		Berechn./Buchungen
5		SW(DEVK-intern)
6		Dokumente
7		Zahlungserinnerung
8		Mahnung ''38
9		Akte
10	maschinell erstellte Dokumente
11	Scanning
12	Vertragsaenderung
13	Info ADM
14	Mahnung Folgebeitrag
15	Anschreiben Erstbeitrag
...
ca. 450 Einträge,s. Wertelisten-DMS2.xlsx

aus IF01_Dokument_DMS_01_HBS.C_Dokumentart

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Empfangskanal IS
'... ist ein Weg, über den die DEVK Kommunikationsmittel empfängt.

1		SCAN
2		FAX
3		BK
4		ASF
5		MAIL
6		TEL
7		INTERN
8		SAA
9		DOM-Z
10	DOM-A
11	DOM-L
12	DOM-Fax
13	DOM-Mail
14	DOM-AV
15	DOM-GDV
16	ESA
17	GDV
18	CALCPROOF
19	DBFUHR
20	PAD
21	INTERNET
22	TIFF

aus IF01_Dokument_DMS_01_HBS.C_Empfangskanal

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Geschaeftsbereich IS
'... bezeichnet den Geschäftsbereich, dient als Postverteilungmerkmal für DMS.

=== redundant zu GP05_Geschbereich_DMS_01_HBS.C_Geschaeftsbereich an GP05_Geschaeftsbereich_BH

3C		Unterstützungskasse
F			SAP-FI
I			Inkasso
KS		K-Schaden
KV		Krankenversicherung
L			Leben
PV		Vertrieb
RA		Rechtsabteilung
RB		Rechtsschutz-Betrieb
RS		Rechtsschutz-Schaden
S			Schaden
SSHK	SchadenSachHaftpflichtKraft
SU		SchadenUnfall
VB		Monega
IF			Immoblilienfinanzierung - 7200
SHUK	SHUK

aus.GP04_Taetigkeit_DMS_01_HBS.C_Geschaeftsbereich

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_RD_ermittelt IS
'... ist die RD, der der ermittelte Bearbeiter (entspricht dem aktuellen Postkorb) zugeordnet ist.

aus HARM( RD( GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Regionaldirektion IS
'... gibt an, welcher Regionaldirektion das Dokument zuzuordnen ist.

aus.GP04_Taetigkeit_DMS_01_HBS.C_durchfuehrende_Stelle

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Routing IS
'... ist ein Postverteilungsmerkmal aus DMS. Enthält neben der BZA (Bestandsbeziehungsart), die sich aus den Nummernkreisen der Versicherungsscheine ermittelt, weitere Merkmale.

112				Unfall (SHUK)
121				Sach-Einzel (SHUK)
122				Glas (SHUK)
123				Hausrat (SHUK)
124				Gebäude (SHUK)
125				CUV (SHUK)
130				Kfz (SHUK)
131				Moped (SHUK)
140				Reisegepäck (SHUK)
141				Kurzfrist Reise (SHUK)
142				Sparda Reisepaket (SHUK)
143				ServicePlus (SHUK)
144				Arbeitslosenkreditversicherung (SHUK)
160				Haftpflicht (SHUK)
701				ACV (SHUK)
Privat			Privat (SHUK, bei Neuanträgen)
Vielschutz	Vielschutz (SHUK, bei Neuanträgen)
Inkasso		Inkasso
bAV				bAV (Inkasso)
Kranken		Kranken (Inkasso)
PC-Miete	PC-Miete (Inkasso)

aus IF01_Dokument_DMS_01_HBS. C_Routing

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Stapelklasse IS
'aus IF02_Scanstapel_DMS_01_HBS.C_Scanweg';

COMMENT ON COLUMN F_Dokument_Status.ID_Status_fachlich IS
'fachlicher Status des (primären) Dokuments

aus
select	MDM.ID_Status_fachlich
from	MD24_DMS_Status_fachlich		MDM,
			GP04_Taetigkeit_DMS_01_HBS	Taetigk,
			GP03_Gevo_DMS_01_HBS			GeVo,
			GP03_GP04_BL								Link
where	MDM.ID_Arbeitsschritt						= Taetigk.ID_Arbeitsschritt
and		MDM.ID_Veraenderungsart				=	Taetigk.ID_Veraenderungsart
and		MDM.Prozessmodell_ID					=	GeVo.Prozessmodell_ID
and		Link.FK_GP03_Geschaeftsvorgang	= GeVo.FK_GP03_Geschaeftsvorgang
and		Link.FK_GP04_Taetigkeit					= Taetigk.FK_GP04_Taetigkeit

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Systemeingangsdatum IS
'... ist das Datum des Eingangs der Dokumente des Scanstapels in das Dokumenten-Management-System.
Bei SnB: Scandatum; bei SvB: je Empfangskanal Scandatum, Faxeingang, Maileingang

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus IF02_Scanstapel_DMS_01_HBS.Systemeingangsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Taetigkeitsdatum_Beginn IS
'Beginntermin der aktuellen Tätigkeit.  (Hier: Logdatum des vorherigen gelogten Zeitraums für parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Taetigkeitsdatum_Ende IS
'Endetermin der Tätigkeit.  (Hier: Logdatum des gelogten Zeitraums für parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Veraenderungsart IS
'... beschreibt das Ergebnis der Tätigkeit für das konkrete Geschäftsobjekt, (=DOK-Art)

aus.GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID

1,Prozess Objekt
2,Akzeptiert
3,Weitergeleitet
4,Delegiert
5,Prozess Objekt Neustart
6,Erhalten
8,Abwesend
10,Timer abgelaufen
11,Logisch gelöscht
12,Wiederhergestellt
13,Vertraulichkeitsstufe geändert
20,Papier
32,Aktenplan Aenderung
33,Objekt Kopie
34,Dokument verschoben
35,Wiedervorlage setzen
36,Wiedervorlage aufheben
37,Prozess aendern
38,Work Item geloescht
39,Dokument geaendert
40,Dokument geloescht
41,Dokument kopiert
42,Dokument erstellt
43,Original Dokument wurde geloescht
44,Einen Sohn untergeordnet
45,Objekt wurde untergeordnet
46,Einen Sohn entnommen
47,Objekt wurde entnommen
99,Information
200,Umprotokollierung
201,Umprotokollierung des Vorgangs
202,Versand per E-Mail
203,Check-Out
204,Check-In
205,Dokument geöffnet
206,Aufgabe erledigt
207,Aufgabe nicht erledigt
220,Dokument zeichnen
221,Dokument einfrieren
222,Dokumentdatei einfrieren
225,Dokumentdatei gezeichnet
226,Dokument logisch gelöscht
227,Dokument wiederhergestellt
228,Dokument Vertraulichkeitsstufe geändert
244,Einen Sohn zugeordnet
245,Objekt wurde zugeordnet
246,Einen zugeordneten Sohn entnommen
247,Zuordnung fuer Objekt aufgehoben
248,SUB-Objekt erstellt
249,SUB-Objekt synchronisiert
601,DEVK-Ursprung

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Vorgangsdatum_Beginn IS
'Beginntermin des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Vorgangsdatum_Ende IS
'Endetermin des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_WV_Datum IS
'Wiedervorlagedatum

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Zeitangabe_WV

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.SK_Dokument_Status IS
'aus GP04_Taetigkeit_DMS_01_HBS.SK_GP04_Taetigkeit';

COMMENT ON COLUMN F_Dokument_Status.SK_Kontext IS
'= Hash("DMS" ~ Antragsnummer_A ~Versicherungsscheinnummer_A ~ Zusatznummer_A ~ Partnerordnungsbegriff_A ~ Inkassonummer_A ~ Moped_Kennzeichen_A ~ Vertragskontonummer_A)

bea: zunächst DUMMY, dann zunächst nur Hash ("DMS" ~~Versicherungsscheinnummer_A ~~~~~)

Datenschutz $-
';

COMMENT ON COLUMN F_Dokument_Status.SK_Scanstapel IS
'aus IF02_Scanstapel_DMS_01_HBS.FK_IF02_Scanstapel

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.SLA_Dauer_in_Tagen IS
'Laut SLA''s vereinbarte höchste Bearbeitungsdauer (z.Zt. 3 Kalendertage für Eingangskanal Brief / Fax, 2 Kalendertage für Eingangskanal Mail)

aus Masterdaten MD21_DMS_SLA.SLA_Dauer_in_Tagen

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.Anzahl_Dokumente IS
'.. ist die Anzahl der Dokumente im Scanstapel

aus IF02_Scanstapel_DMS_01_HBS.Anzahl_Dokumente

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.Anzahl_Seiten IS
'.. ist die Anzahl der Seiten im Scanstapel

aus IF02_Scanstapel_DMS_01_HBS.Anzahl_Seiten

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.ID_Stapelklasse IS
'aus IF02_Scanstapel_DMS_01_HBS.C_Scanweg';

COMMENT ON COLUMN F_Scanstapel.ID_Systemeingangsdatum IS
'Beginntermin des Geschäftsvorgangs .

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.SK_Scanstapel IS
'aus IF02_Scanstapel_DMS_01_HBS.FK_IF02_Scanstapel';

COMMENT ON COLUMN F_Scanstapel.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Scanstapel.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN Releasestand.Deploymentdatum IS
'Datum des Deployments, Defaultwert ist sysdate.';

COMMENT ON COLUMN Releasestand.Modelldatum IS
'Datum der Erstellung der DDL zum Releasestand aus dem Datenmodell.
Das entsprechende Datum wird hier als Defaultwert in der DDL hinterlegt (durch create table bzw. alter table)
';

COMMENT ON COLUMN Releasestand.Releasebezeichnung IS
'Bezeichnung des Release';

COMMENT ON TABLE DET_Ladelauf IS
'Protokolldatei für die Ladeläufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DIM_Bearbeiter IS
'.. sind die Postkörbe, und zwar personalisierte und Gruppen-Postkörbe.
...wird aus Bestand und Mappingtabelle(n) ID / AA / RD erstellt.';

COMMENT ON TABLE DIM_Bearbeiter_Grp IS
'muss aus Bestand und Mappingtabelle ID / Gruppe des Bearbeiters erstellt werden.';

COMMENT ON TABLE DIM_Datum IS
'Allgemeine Dimension der Zeit, für die ausgehend vom Datum alle weiteren Eigenschaften ermittelt werden können. Sollte allgemein für Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

COMMENT ON TABLE DIM_Halbjahr IS
'Dimensionstabelle für Halbjahre, die für alle Halbjahresangaben genutzt werden sollte.';

COMMENT ON TABLE DIM_JNKENNZ IS
'Lookup Tabelle für MicroStrategy';

COMMENT ON TABLE DIM_Jahr IS
'Dimensionstabelle für Jahre, die für alle Jahresangaben genutzt werden sollte, z.B. Geschäftsjahre, Anfalljahre, Ereignisjahre, Meldejahre etc.';

COMMENT ON TABLE DIM_Monat IS
'Dimensionstabelle für Monate, die für alle Monatsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_Quartal IS
'Dimensionstabelle für Quartale, die für alle Quartalsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_RD_Ebene1 IS
'Dimension der 1.  Hierarchie-Ebene der Regionaldirektionen ';

COMMENT ON TABLE DIM_RD_Ebene2 IS
'Dimension der 2.  Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland Nord, -Ost, -Süd, West)';

COMMENT ON TABLE DIM_RD_Ebene3 IS
'Dimension der 3. Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland)';

COMMENT ON TABLE DIM_Regionaldir IS
'Dimension der Regionaldirektionen, für die ausgehend von der RD selbst alle weiteren Hierarchien von RD''en ermittelt werden können.';

COMMENT ON TABLE DIM_Woche IS
'Dimensionstabelle für Wochen, die für alle Wochengaben genutzt werden sollte';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einführung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgeführt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

