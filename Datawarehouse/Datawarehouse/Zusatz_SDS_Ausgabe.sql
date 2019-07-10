--<ScriptOptions statementTerminator=";"/>
-- Version 7565

CREATE TABLE MS50101_11_Registrierdaten (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1 BYTE),
		TA_SPERRE CHAR(1 BYTE),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		LGJ CHAR(4 CHAR) NOT NULL,
		LGM CHAR(2 CHAR) NOT NULL,
		SAT CHAR(2 CHAR) DEFAULT '11' NOT NULL,
		ZAE NUMBER(15 , 0) NOT NULL,
		SNR2 VARCHAR2(64 CHAR) NOT NULL,
		ZBS VARCHAR2(2 CHAR),
		AAS VARCHAR2(24 CHAR),
		UKZ VARCHAR2(1 CHAR),
		VNR VARCHAR2(64 CHAR),
		ZNR VARCHAR2(3 CHAR),
		RNR VARCHAR2(3 CHAR),
		RVK VARCHAR2(1 CHAR),
		ANK VARCHAR2(1 CHAR),
		ABW VARCHAR2(1 CHAR),
		BEM VARCHAR2(1 CHAR),
		EDA VARCHAR2(8 CHAR),
		MDA VARCHAR2(4 CHAR),
		ADS VARCHAR2(2 CHAR),
		ATV VARCHAR2(2 CHAR),
		ELA VARCHAR2(2 CHAR),
		SDA VARCHAR2(8 CHAR),
		KAS VARCHAR2(2 CHAR),
		SMM VARCHAR2(1 CHAR),
		PLZ VARCHAR2(5 BYTE),
		ZDA VARCHAR2(8 CHAR),
		ADU VARCHAR2(1 CHAR),
		BKT VARCHAR2(2 CHAR),
		EFU VARCHAR2(1 CHAR),
		INV NUMBER(5 , 2),
		VNN VARCHAR2(64 CHAR),
		LDA VARCHAR2(4 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE MS50102_22_Zahlungsdaten (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1 BYTE),
		TA_SPERRE CHAR(1 BYTE),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		LGJ CHAR(4 CHAR) NOT NULL,
		LGM CHAR(2 CHAR) NOT NULL,
		SAT CHAR(2 CHAR) DEFAULT '22' NOT NULL,
		ZAE NUMBER(15 , 0) NOT NULL,
		SNR2 CHAR(64 CHAR) NOT NULL,
		BTR NUMBER(10 , 2),
		KTO VARCHAR2(1 CHAR),
		KAZ VARCHAR2(2 CHAR),
		UGR VARCHAR2(1 CHAR),
		SCK VARCHAR2(64 CHAR),
		BNR VARCHAR2(6 CHAR),
		BDA VARCHAR2(8 CHAR),
		ZBZ VARCHAR2(2 CHAR),
		AAZ VARCHAR2(24 CHAR),
		AAP VARCHAR2(24 CHAR),
		ZUF VARCHAR2(1 CHAR),
		EMP1 VARCHAR2(180 CHAR),
		EMP2 VARCHAR2(180 CHAR),
		WRG VARCHAR2(3 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE MS50103_33_ReserveForderungsdt (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		LGJ CHAR(4 CHAR) NOT NULL,
		LGM CHAR(2 CHAR) NOT NULL,
		SAT CHAR(2 CHAR) DEFAULT '23' NOT NULL,
		ZAE NUMBER(15 , 0) NOT NULL,
		SNR2 CHAR(64 CHAR) NOT NULL,
		RES NUMBER(8 , 0),
		KAR VARCHAR2(2 CHAR),
		RDA VARCHAR2(8 CHAR),
		VDA VARCHAR2(8 CHAR),
		WRG VARCHAR2(3 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MS50133_23_Leistungsartendaten (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1 BYTE),
		TA_SPERRE CHAR(1 BYTE),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		LGJ CHAR(4 CHAR) NOT NULL,
		LGM CHAR(2 CHAR) NOT NULL,
		SAT CHAR(2 CHAR) DEFAULT '23' NOT NULL,
		ZAE NUMBER(15 , 0) NOT NULL,
		SNR2 CHAR(64 CHAR) NOT NULL,
		LAB NUMBER(10 , 2),
		LAC VARCHAR2(2 CHAR),
		SPL VARCHAR2(1 CHAR),
		WRG VARCHAR2(3 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MS50201_Summensatz (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		SNR2 VARCHAR2(64 CHAR) NOT NULL,
		ZBS VARCHAR2(2 CHAR),
		AAS VARCHAR2(24 CHAR),
		UKZ VARCHAR2(1 CHAR),
		VNR VARCHAR2(64 CHAR),
		ZNR VARCHAR2(3 BYTE),
		RNR VARCHAR2(3 CHAR),
		ANK VARCHAR2(1 CHAR),
		ABW VARCHAR2(1 CHAR),
		BEM VARCHAR2(1 CHAR),
		EDA VARCHAR2(8 CHAR),
		MDA VARCHAR2(4 CHAR),
		ADS VARCHAR2(2 CHAR),
		ATV VARCHAR2(2 CHAR),
		ELA VARCHAR2(2 CHAR),
		SDA VARCHAR2(8 CHAR),
		KAS VARCHAR2(2 CHAR),
		FGJ NUMBER(8 , 0),
		KAF1 VARCHAR2(2 CHAR),
		FDA VARCHAR2(8 CHAR),
		PLZ VARCHAR2(24 CHAR),
		ZDA VARCHAR2(8 CHAR),
		REN1 NUMBER(11 , 2),
		ENT1 NUMBER(11 , 2),
		KOS1 NUMBER(9 , 2),
		REN2 NUMBER(11 , 2),
		ENT2 NUMBER(11 , 2),
		KOS2 NUMBER(9 , 2),
		RGJ NUMBER(8 , 0),
		KAR1 VARCHAR2(2 CHAR),
		VDA VARCHAR2(8 CHAR),
		RVJ NUMBER(8 , 0),
		KAR2 VARCHAR2(2 CHAR),
		RMJ NUMBER(8 , 0),
		KAR3 VARCHAR2(2 CHAR),
		DGJ NUMBER(8 , 0),
		KAD1 VARCHAR2(2 CHAR),
		DVJ NUMBER(8 , 0),
		KAD2 VARCHAR2(2 CHAR),
		DMJ NUMBER(8 , 0),
		KAD3 VARCHAR2(2 CHAR),
		BAN99 NUMBER(5 , 0),
		ANR99 NUMBER(5 , 0),
		RVK VARCHAR2(1 CHAR),
		FVJ NUMBER(8 , 0),
		KAF2 VARCHAR2(2 CHAR),
		FEJ NUMBER(8 , 2),
		KAF3 VARCHAR2(2 CHAR),
		LGJ VARCHAR2(4 CHAR) NOT NULL,
		LGM VARCHAR2(2 CHAR) NOT NULL,
		ADU VARCHAR2(1 CHAR),
		BKT VARCHAR2(2 CHAR),
		EFU VARCHAR2(1 CHAR),
		INV NUMBER(5 , 2),
		VNN VARCHAR2(64 CHAR),
		LDA VARCHAR2(4 CHAR),
		LAB1 NUMBER(11 , 2),
		LAB2 NUMBER(11 , 2),
		ZUF VARCHAR2(1 CHAR),
		SMM VARCHAR2(1 CHAR),
		WRG1 VARCHAR2(3 CHAR),
		WRG2 VARCHAR2(3 CHAR),
		WRG3 VARCHAR2(3 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

ALTER TABLE MS50101_11_Registrierdaten ADD CONSTRAINT MS50101_11_Registrierdaten_PK PRIMARY KEY
	(LGJ,
	 LGM,
	 SNR2,
	 SAT,
	 ZAE);

ALTER TABLE MS50102_22_Zahlungsdaten ADD CONSTRAINT MS50102_22_Zahlungsdaten_PK PRIMARY KEY
	(LGJ,
	 LGM,
	 SNR2,
	 SAT,
	 ZAE);

ALTER TABLE MS50103_33_ReserveForderungsdt ADD CONSTRAINT MS50102_33_ReserveForderungsd1 PRIMARY KEY
	(LGJ,
	 LGM,
	 SNR2,
	 SAT,
	 ZAE);

ALTER TABLE MS50133_23_Leistungsartendaten ADD CONSTRAINT MS50102_23_Leistungsartendate1 PRIMARY KEY
	(LGJ,
	 LGM,
	 SNR2,
	 SAT,
	 ZAE);

ALTER TABLE MS50201_Summensatz ADD CONSTRAINT MS50201_Summensatz_PK PRIMARY KEY
	(SNR2,
	 LGJ,
	 LGM);

COMMENT ON COLUMN MS50101_11_Registrierdaten.AAS IS
'AA DES SACHBEARBEITERS

Datenschutz $A1';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ABW IS
'ABWEICHUNG VOM VERTRAGSSTAND';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ADS IS
'ART/URSACHE DES SCHADENS';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ADU IS
'ART DES UNFALLS';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ANK IS
'ALTES/NEUES KFZ BETEILIGT';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ATV IS
'ANZAHL TOTE UND VERLETZTE';

COMMENT ON COLUMN MS50101_11_Registrierdaten.BEM IS
'BEMERKUNG';

COMMENT ON COLUMN MS50101_11_Registrierdaten.BKT IS
'BETROFFENER KOERPERTEIL';

COMMENT ON COLUMN MS50101_11_Registrierdaten.EDA IS
'EINTRITTSDATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50101_11_Registrierdaten.EFU IS
'ERWEIT. FREIZEITUNFALLSCHUTZ';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ELA IS
'EINTRITTSLAND';

COMMENT ON COLUMN MS50101_11_Registrierdaten.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.INV IS
'INVALIDITAETS-PROZENTSATZ';

COMMENT ON COLUMN MS50101_11_Registrierdaten.KAS IS
'KLASSIF.-ART SCHLUSSMELDUNG';

COMMENT ON COLUMN MS50101_11_Registrierdaten.LDA IS
'LOESCHDATUM (AKTE-VERNICHT.)';

COMMENT ON COLUMN MS50101_11_Registrierdaten.LGJ IS
'laufendes Geschäftsjahr';

COMMENT ON COLUMN MS50101_11_Registrierdaten.LGM IS
'laufender Geschäftsmonat';

COMMENT ON COLUMN MS50101_11_Registrierdaten.MDA IS
'MELDEDATUM (MMTT)';

COMMENT ON COLUMN MS50101_11_Registrierdaten.PLZ IS
'POSTLEITZAHL DES SCHADENORTS*/';

COMMENT ON COLUMN MS50101_11_Registrierdaten.RNR IS
'RISIKO-NR.';

COMMENT ON COLUMN MS50101_11_Registrierdaten.RVK IS
'RUECKVERSICHERUNGS-KENNZ.';

COMMENT ON COLUMN MS50101_11_Registrierdaten.SAT IS
'Satzart "11"';

COMMENT ON COLUMN MS50101_11_Registrierdaten.SDA IS
'SCHLUSSMELDEDATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50101_11_Registrierdaten.SMM IS
'SCHADEN-MINDERNDE-MASSNAHME';

COMMENT ON COLUMN MS50101_11_Registrierdaten.SNR2 IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

Datenschutz $A1';

COMMENT ON COLUMN MS50101_11_Registrierdaten.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50101_11_Registrierdaten.UKZ IS
'UNTERNEHMENSKENNZEICHEN';

COMMENT ON COLUMN MS50101_11_Registrierdaten.VNN IS
'VERSICHERUNGSNEHMER-NAME

Datenschutz $A2';

COMMENT ON COLUMN MS50101_11_Registrierdaten.VNR IS
'VERSICHERUNGSSCHEINNUMMER

Datenschutz $A1';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ZAE IS
'SEGMENTZAEHLER PRO SCHADEN

BIN FIXED (15)';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ZBS IS
'ZUST. BEARBEITUNGSSTELLE';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ZDA IS
'ZUSTAENDIG.-AENDERUNGSDATUM';

COMMENT ON COLUMN MS50101_11_Registrierdaten.ZNR IS
'ZUSATZ-NR. (GNR/LNR/POS)';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.AAP IS
'AA DES PRUEFENDEN SACHBEARB.

Datenschutz $A1';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.AAZ IS
'AA DES ZAHLENDEN SACHBEARB.

Datenschutz $A1';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.BDA IS
'BUCHUNGSDATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.BNR IS
'BELEG-NR.';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.BTR IS
'BETRAG

FIXED  (10,2)';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.EMP1 IS
'EMPFAENGER (ZUNAME;VORNAME)

Datenschutz $A2';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.EMP2 IS
'EMPFAENGER (STR; PLZ; ORT)

Datenschutz $A2';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.KAZ IS
'KLASSIF.-ART ZAHLUNG';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.KTO IS
'KONTO';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.LGJ IS
'laufendes Geschäftsjahr';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.LGM IS
'laufender Geschäftsmonat';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.SAT IS
'Satzart "22"';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.SCK IS
'SCHECK-NR.

Datenschutz $A1';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.SNR2 IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

Datenschutz $A1';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.UGR IS
'UMBUCHUNGS-GRUND';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.WRG IS
'WAEHRUNGSKENNZEICHEN';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.ZAE IS
'SEGMENTZAEHLER PRO SCHADEN

BIN FIXED (15)';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.ZBZ IS
'ZUST. BL/HV DER ZAHLUNG';

COMMENT ON COLUMN MS50102_22_Zahlungsdaten.ZUF IS
'ZUFALLSGENERATOR-ZAHLUNG';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.KAR IS
'KA DER RESERVE-/FORDERUNG';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.LGJ IS
'laufendes Geschäftsjahr';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.LGM IS
'laufender Geschäftsmonat';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.RDA IS
'RESERVE-/FORDERUNGSDATUM';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.RES IS
'RESERVE-/FORDERUNGS-BETRAG

FIXED (8)';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.SAT IS
'Satzart "33"';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.SNR2 IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

Datenschutz $A1';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.VDA IS
'VERAENDERUNGSDATUM(JJJJMMTT)';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.WRG IS
'WAEHRUNGSKENNZEICHEN';

COMMENT ON COLUMN MS50103_33_ReserveForderungsdt.ZAE IS
'SEGMENTZAEHLER PRO SCHADEN

BIN FIXED (15)';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.LAB IS
'BETRAG

FIXED  (10,2)';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.LAC IS
'LEISTUNGSARTEN-CODE';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.LGJ IS
'laufendes Geschäftsjahr';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.LGM IS
'laufender Geschäftsmonat';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.SAT IS
'Satzart "23"';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.SNR2 IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

Datenschutz $A1';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.SPL IS
'SPLITTING-KENNZEICHEN';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.WRG IS
'WAEHRUNGSKENNZEICHEN';

COMMENT ON COLUMN MS50133_23_Leistungsartendaten.ZAE IS
'SEGMENTZAEHLER PRO SCHADEN

BIN FIXED (15)';

COMMENT ON COLUMN MS50201_Summensatz.AAS IS
'AA DES ZUST.SACHBEARBEITERS

Datenschutz $A1';

COMMENT ON COLUMN MS50201_Summensatz.ABW IS
'ABWEICHUNG VOM VERTRAGSSTAND';

COMMENT ON COLUMN MS50201_Summensatz.ADS IS
'ART (URSACHE) DES SCHADENS';

COMMENT ON COLUMN MS50201_Summensatz.ADU IS
'ART DES UNFALLS';

COMMENT ON COLUMN MS50201_Summensatz.ANK IS
'ALTES/NEUES KFZ BETEILIGT';

COMMENT ON COLUMN MS50201_Summensatz.ANR99 IS
'ANSCHRIFTEN-NR. (ANZAHL)';

COMMENT ON COLUMN MS50201_Summensatz.ATV IS
'ANZAHL DER TOTEN/VERLETZTEN';

COMMENT ON COLUMN MS50201_Summensatz.BAN99 IS
'BRIEFARCHIV.-NR. (ANZAHL)';

COMMENT ON COLUMN MS50201_Summensatz.BEM IS
'BEMERKUNG';

COMMENT ON COLUMN MS50201_Summensatz.BKT IS
'BETROFFENER KOERPERTEIL  ';

COMMENT ON COLUMN MS50201_Summensatz.DGJ IS
'RENTENL-RESERVE  (MJ)';

COMMENT ON COLUMN MS50201_Summensatz.DMJ IS
'RENTEN-RESERVE (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.DVJ IS
'RENTEN-RESERVE (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.EDA IS
'EINTRITTS-DATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50201_Summensatz.EFU IS
'ERWEIT. FREIZEITUNFALLSCHUTZ';

COMMENT ON COLUMN MS50201_Summensatz.ELA IS
'EINTRITTSLAND';

COMMENT ON COLUMN MS50201_Summensatz.ENT1 IS
'ENTSCHAEDIGUNGEN (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.ENT2 IS
'ENTSCHAEDIGUNGEN (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.FDA IS
'FORDERUNGS-DATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50201_Summensatz.FEJ IS
'FORDERUNGS-BETRAG (EJ)';

COMMENT ON COLUMN MS50201_Summensatz.FGJ IS
'FORDERUNGS-BETRAG (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.FVJ IS
'FORDERUNGS-BETRAG (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.INV IS
'INVALIDITAETS-PROZENTSATZ ';

COMMENT ON COLUMN MS50201_Summensatz.KAD1 IS
'KLASSIF.-ART  (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAD2 IS
'KLASSIF.-ART  (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAD3 IS
'KLASSIF.-ART  (MJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAF1 IS
'KA DER FORDERUNG (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAF2 IS
'KA DER FORDERUNG (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAF3 IS
'KA DER FORDERUNG (EJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAR1 IS
'KLASSIF.-ART  (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAR2 IS
'KLASSIF.-ART  (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAR3 IS
'KLASSIF.-ART  (MJ)';

COMMENT ON COLUMN MS50201_Summensatz.KAS IS
'KLASSIFIZIERUNGS-ART ZU SDA';

COMMENT ON COLUMN MS50201_Summensatz.KOS1 IS
'KOSTEN   (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.KOS2 IS
'KOSTEN   (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.LAB1 IS
'LEISTUNGSARTEN (GJ) ';

COMMENT ON COLUMN MS50201_Summensatz.LAB2 IS
'LEISTUNGSARTEN (VJ) ';

COMMENT ON COLUMN MS50201_Summensatz.LDA IS
'LOESCHDATUM (AKTE-VERNICHT.)';

COMMENT ON COLUMN MS50201_Summensatz.LGJ IS
'LFD. GESCHAEFTSJAHR';

COMMENT ON COLUMN MS50201_Summensatz.LGM IS
'LFD. GESCHAEFTSMONAT';

COMMENT ON COLUMN MS50201_Summensatz.MDA IS
'MELDE-DATUM (MMTT)';

COMMENT ON COLUMN MS50201_Summensatz.PLZ IS
'POSTLEITZAHL DES SCHADENORTS

Datenschutz $A2';

COMMENT ON COLUMN MS50201_Summensatz.REN1 IS
'RENTEN-ZAHLUNGEN (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.REN2 IS
'RENTEN-ZAHLUNGEN (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.RGJ IS
'KAPITAL-RESERVE  (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.RMJ IS
'KAPITAL-RESERVE  (MJ)';

COMMENT ON COLUMN MS50201_Summensatz.RNR IS
'RISIKO-NR.';

COMMENT ON COLUMN MS50201_Summensatz.RVJ IS
'KAPITAL-RESERVE  (VJ)';

COMMENT ON COLUMN MS50201_Summensatz.RVK IS
'RUECKVERSICH.-KENNZEICHEN';

COMMENT ON COLUMN MS50201_Summensatz.SDA IS
'SCHLUSSMELDEDATUM (JJJJMMTT)';

COMMENT ON COLUMN MS50201_Summensatz.SMM IS
'SCHADEN-MINDERNDE-MASSNAHME ';

COMMENT ON COLUMN MS50201_Summensatz.SNR2 IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

Datenschutz $A1
';

COMMENT ON COLUMN MS50201_Summensatz.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN MS50201_Summensatz.UKZ IS
'UNTERNEHMENSKENNZEICHEN';

COMMENT ON COLUMN MS50201_Summensatz.VDA IS
'VERAENDERUNGS-DATUM (GJ)';

COMMENT ON COLUMN MS50201_Summensatz.VNN IS
'VERSICHERUNGSNEHMER-NAME 

Datenschutz $A2';

COMMENT ON COLUMN MS50201_Summensatz.VNR IS
'VERSICHERUNGSSCHEIN-NR.

Datenschutz $A1';

COMMENT ON COLUMN MS50201_Summensatz.WRG1 IS
'WAEHRUNGSKENNZEICHEN ZAHL. ';

COMMENT ON COLUMN MS50201_Summensatz.WRG2 IS
'WAEHRUNGSKENNZEICHEN LEIST. ';

COMMENT ON COLUMN MS50201_Summensatz.WRG3 IS
'WAEHRUNGSKENNZEICHEN RES. ';

COMMENT ON COLUMN MS50201_Summensatz.ZBS IS
'ZUSTAENDIGE BEARBEIT.-STELLE';

COMMENT ON COLUMN MS50201_Summensatz.ZDA IS
'ZUSTAEND.-AENDER.-DATUM JMT';

COMMENT ON COLUMN MS50201_Summensatz.ZNR IS
'ZUSATZ-NR.(GNR,LNR,POS)';

COMMENT ON COLUMN MS50201_Summensatz.ZUF IS
'ZUFALLSGENERATOR-ZAHLUNG ';

COMMENT ON TABLE MS50101_11_Registrierdaten IS
'PS501 - Ausgabe
Einzelsätze - Satzart ''11'' Registrierdaten';

COMMENT ON TABLE MS50102_22_Zahlungsdaten IS
'PS501 - Ausgabe
Einzelsätze - Satzart ''22'' Zahlungsdaten';

COMMENT ON TABLE MS50103_33_ReserveForderungsdt IS
'PS501 - Ausgabe
Einzelsätze - Satzart ''33'' Reserve-/Forderungsdaten';

COMMENT ON TABLE MS50133_23_Leistungsartendaten IS
'PS501 - Ausgabe
Einzelsätze - Satzart ''23'' Leistungsartendaten';

COMMENT ON TABLE MS50201_Summensatz IS
'PS501 - Ausgabe
Schaden-Summensätze';

