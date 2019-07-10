--<ScriptOptions statementTerminator=";"/>
-- Version 9488

CREATE TABLE ER01_ER02_ER03_BL (
		SK_ER01_ER02_ER03 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_ER02_ER03_SHUKR_01_LBS (
		FK_ER01_ER02_ER03 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_OB01_bescObj_SHUKR_01_LBM (
		FK_ER01_OB01_beschObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Beschaedigung NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_OB01_bescObj_SHUKR_01_LBS (
		FK_ER01_OB01_beschObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		C_Beschaedigungstyp NUMBER(28 , 0),
		C_Beschaedigungsgrad NUMBER(28 , 0),
		C_Beschaed_Indikatoren_vorh NUMBER(28 , 0),
		C_Beschaedtyp_Daten_vorh NUMBER(28 , 0),
		C_Haftpflicht_Kennz NUMBER(28 , 0),
		Beschreibung_Beschaed_B VARCHAR2(180 CHAR),
		Vorauss_Schadenhoehe NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_PA02_VNRolle_BL (
		SK_ER01_PA02_VNRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_Schaden_Eskalat_R_01_HBS (
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Eskalationsstufe VARCHAR2(8 CHAR),
		C_Hellschaltung NUMBER(28 , 0),
		Ausfuehrungsdatum DATE,
		Anfragedatum DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER02_Teilschaden_SHUKR_02_WBS (
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Teilschaden_LFD VARCHAR2(8 CHAR),
		C_Steuerung NUMBER(28 , 0),
		C_Teilschadenart NUMBER(28 , 0),
		Haftungsquote NUMBER(16 , 8),
		C_Komplexitaet NUMBER(28 , 0),
		C_SchadenOhneForderung NUMBER(28 , 0),
		C_Bearbeitungsstatus NUMBER(28 , 0),
		Betrugsverdacht_C VARCHAR2(64 CHAR),
		C_TeilfallUngueltig NUMBER(28 , 0),
		C_Abgelehnt NUMBER(28 , 0),
		C_Fehlanlage NUMBER(28 , 0),
		Ueberstimmungsgrund VARCHAR2(24 CHAR),
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		C_Regresspotential NUMBER(28 , 0),
		C_Ersatzpflicht NUMBER(28 , 0),
		C_Besonderheiten NUMBER(28 , 0),
		Invaliditaet_Beginn_B VARCHAR2(64 CHAR),
		Invaliditaet_Proz_B VARCHAR2(64 CHAR),
		Anzahl_Insassen NUMBER(10 , 0),
		Anzahl_Familienangehoerige NUMBER(10 , 0),
		C_Mitarbeiter NUMBER(28 , 0),
		C_Fahrgast_OePNV NUMBER(28 , 0),
		C_Mehrleistung NUMBER(28 , 0),
		C_Sondervereinb_Mehrl NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_GerVerf_eig_SHUKR_01_HBS (
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Verfahrens_GUID_A VARCHAR2(180 CHAR),
		Verfahrensnummer VARCHAR2(24 CHAR),
		C_Verfahrensstatus NUMBER(28 , 0),
		Verfahrensbeschreibung_B VARCHAR2(180 CHAR),
		C_Verfahrensart NUMBER(28 , 0),
		C_Verfahrensgegenstand_B NUMBER(28 , 0),
		Verjaehrungsfrist_Ende DATE,
		Aufnahmedatum DATE,
		C_Haftung NUMBER(28 , 0),
		Offenlegungsdatum DATE,
		Verfahrensbemerkung_B VARCHAR2(1400 CHAR),
		C_Waehrung NUMBER(28 , 0),
		Streitwert_geschaetzt NUMBER(16 , 2),
		Streitwert_tatsaechlich NUMBER(16 , 2),
		Anwaltsbudget NUMBER(16 , 2),
		Erledigungsdatum DATE,
		C_Erledigungsart NUMBER(28 , 0),
		C_Erledigungszeitpunkt_im_Verf NUMBER(28 , 0),
		Urteilsbetrag NUMBER(16 , 2),
		Rechtskraftdatum DATE,
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_LE03_BL (
		SK_ER03_LE03 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_LE03_SHUKR_01_LBS (
		FK_ER03_LE03 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER04_GerInstanz_SHUKR_01_WBS (
		FK_ER04_Gerichtsinstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Schadennummer_A VARCHAR2(64 CHAR),
		Verfahrensnummer VARCHAR2(24 CHAR),
		Instanznummer_lfd VARCHAR2(8 CHAR),
		Instanz_GUID_A VARCHAR2(180 CHAR),
		C_Instanzstatus NUMBER(28 , 0),
		Aktenzeichen_A VARCHAR2(180 CHAR),
		Eingangsdatum_Gericht DATE,
		externe_Referenz_A VARCHAR2(180 CHAR),
		Erwiderungsfrist_Ende DATE,
		Zustellungsdatum DATE,
		rechtl_Vertretung NUMBER(28 , 0),
		C_Berufung_Rev_durch NUMBER(28 , 0),
		Instanzbeginndatum DATE,
		Instanzendedatum DATE,
		C_Instanzergebnis NUMBER(28 , 0),
		C_Gerichtstand_Land NUMBER(28 , 0),
		C_Verfahrensinstanz NUMBER(28 , 0),
		C_Gerichtsbarkeit NUMBER(28 , 0),
		C_Gerichtsstand_Region NUMBER(28 , 0),
		Gerichtsstand_Gemeinde VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		Verhandlungsdatum DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER04_Gerichtsinstanz_ER03_BW (
		SK_ER04_Gerichtsinstanz VARCHAR2(64 CHAR) NOT NULL,
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_KT01_Beleg_SHUKR_01_LBS (
		FK_LE01_KT01_Beleg_BL VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_LE03_SHUKR_01_LBS (
		FK_LE01_LE03 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_ZahlungZuf_SHUKR_01_HBS (
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Teilschaden_LFD VARCHAR2(8 CHAR),
		Zahlungsnummer VARCHAR2(24 CHAR),
		C_Pruefung_Zuf_vorgesehen NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_Zahlung_SHUKR_02_HBS (
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Teilschaden_LFD VARCHAR2(8 CHAR),
		Zahlungsnummer VARCHAR2(24 CHAR),
		C_SatzartDerZahlung NUMBER(28 , 0),
		C_Zahlungsart NUMBER(28 , 0),
		Betrag NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		BetragInEuro NUMBER(16 , 2),
		Zahlungsnotiz_AB VARCHAR2(180 CHAR),
		C_BruttoNetto NUMBER(28 , 0),
		C_Zahlweg NUMBER(28 , 0),
		Buchungsdatum DATE,
		Belegdatum DATE,
		Nettofaelligkeit DATE,
		C_ZahlungStatus NUMBER(28 , 0),
		Schecknummer_A VARCHAR2(64 CHAR),
		Scheckaussteller_ProvKonto_A VARCHAR2(64 CHAR),
		C_ScheckOffen NUMBER(28 , 0),
		C_Migriert NUMBER(28 , 0),
		C_durchgefuehrt NUMBER(28 , 0),
		C_Vollmachtsstufe NUMBER(28 , 0),
		geprueft_von_A VARCHAR2(64 CHAR),
		uebergeben_am DATE,
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		UrsprGeforderterBetrag NUMBER(16 , 2),
		UrsprGeforderterBetragInEuro NUMBER(16 , 2),
		EingegangenerBetrag NUMBER(16 , 2),
		EingegangenerBetragInEuro NUMBER(16 , 2),
		Migr_Zahlungsempf1_A VARCHAR2(180 CHAR),
		Migr_Zahlungsempf2_A VARCHAR2(180 CHAR),
		C_Abgabestatus NUMBER(28 , 0),
		C_Art_des_Zahlungspflichtigen NUMBER(28 , 0),
		Abgabedatum DATE,
		Aktenzeichen_ext_A VARCHAR2(180 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE OB01_Objekt_Sch_01_HBS (
		FK_OB01_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Objekt_lfd VARCHAR2(8 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		C_Kategorie NUMBER(28 , 0),
		C_ObjektArt NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER01_SHUKR_01_LBM (
		FK_PA01_PA02_ER01 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Verletzung_B NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER01_SHUKR_02_LBS (
		FK_PA01_PA02_ER01 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		C_Todesfall NUMBER(28 , 0),
		C_Verletzungen_B NUMBER(28 , 0),
		Alter_Person NUMBER(10 , 0),
		Invaliditaet_Proz_B VARCHAR2(64 CHAR),
		Beruf VARCHAR2(64 CHAR),
		Taetigkeit_akt VARCHAR2(64 CHAR),
		Arbeitgeber VARCHAR2(180 CHAR),
		C_selbstaendig NUMBER(28 , 0),
		Sterbedatum DATE,
		Beschreibung_Verletzung_B VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER04_BL (
		SK_PA01_PA02_ER04 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_ER04_Gerichtsinstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER04_SHUKR_01_LBS (
		FK_PA01_PA02_ER04 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE ER01_ER02_ER03_BL ADD CONSTRAINT ER01_ER02_ER03_BL_PK PRIMARY KEY
	(SK_ER01_ER02_ER03);

ALTER TABLE ER01_ER02_ER03_SHUKR_01_LBS ADD CONSTRAINT ER01_ER02_ER03_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01_ER02_ER03,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_OB01_bescObj_SHUKR_01_LBM ADD CONSTRAINT ER01_OB01_beOb_SHUKR_01_LBM_PK PRIMARY KEY
	(FK_ER01_OB01_beschObjekt,
	 C_Beschaedigung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_OB01_bescObj_SHUKR_01_LBS ADD CONSTRAINT ER01_OB01_beOb_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01_OB01_beschObjekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_PA02_VNRolle_BL ADD CONSTRAINT ER01_PA02_VNRolle_BL_PK PRIMARY KEY
	(SK_ER01_PA02_VNRolle);

ALTER TABLE ER01_Schaden_Eskalat_R_01_HBS ADD CONSTRAINT ER01_Eskalat_R_01_HBS_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER02_Teilschaden_SHUKR_02_WBS ADD CONSTRAINT ER02_SHUKR_02_WBS_PK PRIMARY KEY
	(FK_ER02_Teilschaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_GerVerf_eig_SHUKR_01_HBS ADD CONSTRAINT ER03_GerVerf_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_ER03_Gerichtsverfahren,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_LE03_BL ADD CONSTRAINT ER03_LE03_BL_PK PRIMARY KEY
	(SK_ER03_LE03);

ALTER TABLE ER03_LE03_SHUKR_01_LBS ADD CONSTRAINT ER03_LE03_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER03_LE03,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER04_GerInstanz_SHUKR_01_WBS ADD CONSTRAINT ER04_GerInst_SHUKR_01_WBS_PK PRIMARY KEY
	(FK_ER04_Gerichtsinstanz,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER04_Gerichtsinstanz_ER03_BW ADD CONSTRAINT ER04_Gerichtsinstanz_BH_PK PRIMARY KEY
	(SK_ER04_Gerichtsinstanz);

ALTER TABLE LE01_KT01_Beleg_SHUKR_01_LBS ADD CONSTRAINT LE01_KT01_Bel_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_LE01_KT01_Beleg_BL,
	 TA_Ladedatum,
	 Fachlich_Gueltig_Beginn,
	 Erfassung_Gueltig_Beginn);

ALTER TABLE LE01_LE03_SHUKR_01_LBS ADD CONSTRAINT LE01_LE03_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_LE01_LE03,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE01_ZahlungZuf_SHUKR_01_HBS ADD CONSTRAINT LE01_ZahlZuf_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_LE01_Zahlung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE01_Zahlung_SHUKR_02_HBS ADD CONSTRAINT LE01_Zahlung_SHUKR_02_HBS_PK PRIMARY KEY
	(FK_LE01_Zahlung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE OB01_Objekt_Sch_01_HBS ADD CONSTRAINT OB01_Objekt_Sch_01_HBS_PK PRIMARY KEY
	(FK_OB01_Objekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_ER01_SHUKR_01_LBM ADD CONSTRAINT PA01_PA02_ER01_SHUKR_01_LBM_PK PRIMARY KEY
	(FK_PA01_PA02_ER01,
	 C_Verletzung_B,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_ER01_SHUKR_02_LBS ADD CONSTRAINT PA01_PA02_ER01_SHUKR_02_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_ER01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_ER04_BL ADD CONSTRAINT PA01_PA02_ER04_BL_PK PRIMARY KEY
	(SK_PA01_PA02_ER04);

ALTER TABLE PA01_PA02_ER04_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER04_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_ER04,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_ER02_ER03_BL ADD CONSTRAINT ER01_ER02_ER03_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER02_ER03_BL ADD CONSTRAINT ER01_ER02_ER03_BL_Teilsch_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER01_ER02_ER03_BL ADD CONSTRAINT ER01_ER02_ER03_BL_Verfahren_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER01_ER02_ER03_SHUKR_01_LBS ADD CONSTRAINT ER01_ER02_ER03_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER01_ER02_ER03)
	REFERENCES ER01_ER02_ER03_BL
	(SK_ER01_ER02_ER03);

ALTER TABLE ER01_OB01_bescObj_SHUKR_01_LBM ADD CONSTRAINT ER01_OB01_beOb_SHUKR_01_LBM_FK FOREIGN KEY
	(FK_ER01_OB01_beschObjekt)
	REFERENCES ER01_OB01_beschObjekt_BL
	(SK_ER01_OB01_beschObjekt)
	ON DELETE CASCADE;

ALTER TABLE ER01_OB01_bescObj_SHUKR_01_LBS ADD CONSTRAINT ER01_OB01_beOb_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER01_OB01_beschObjekt)
	REFERENCES ER01_OB01_beschObjekt_BL
	(SK_ER01_OB01_beschObjekt);

ALTER TABLE ER01_PA02_VNRolle_BL ADD CONSTRAINT ER01_PA02_VNRolle_BL_PartRo_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle)
	ON DELETE CASCADE;

ALTER TABLE ER01_PA02_VNRolle_BL ADD CONSTRAINT ER01_PA02_VNRolle_BL_Schad_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_Schaden_Eskalat_R_01_HBS ADD CONSTRAINT ER01_Eskalat_R_01_HBS_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER02_Teilschaden_SHUKR_02_WBS ADD CONSTRAINT ER02_SHUKR_02_WBS_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER03_GerVerf_eig_SHUKR_01_HBS ADD CONSTRAINT ER03_GerVerf_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER03_LE03_BL ADD CONSTRAINT ER03_LE03_BL_Regress_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress)
	ON DELETE CASCADE;

ALTER TABLE ER03_LE03_BL ADD CONSTRAINT ER03_LR03_Gerichtsverfahren_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren)
	ON DELETE CASCADE;

ALTER TABLE ER03_LE03_SHUKR_01_LBS ADD CONSTRAINT ER03_LE03_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER03_LE03)
	REFERENCES ER03_LE03_BL
	(SK_ER03_LE03)
	ON DELETE CASCADE;

ALTER TABLE ER04_GerInstanz_SHUKR_01_WBS ADD CONSTRAINT ER04_GerInst_SHUKR_01_WBS_FK FOREIGN KEY
	(FK_ER04_Gerichtsinstanz)
	REFERENCES ER04_Gerichtsinstanz_ER03_BW
	(SK_ER04_Gerichtsinstanz);

ALTER TABLE ER04_Gerichtsinstanz_ER03_BW ADD CONSTRAINT ER04_Instanz_ER03_Verfahren_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE LE01_KT01_Beleg_SHUKR_01_LBS ADD CONSTRAINT LE01_KT01_Bel_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_LE01_KT01_Beleg_BL)
	REFERENCES LE01_KT01_Beleg_BL
	(SK_LE01_KT01_Beleg_BL);

ALTER TABLE LE01_LE03_SHUKR_01_LBS ADD CONSTRAINT LE01_LE03_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_LE01_LE03)
	REFERENCES LE01_LE03_BL
	(SK_LE01_LE03)
	ON DELETE CASCADE;

ALTER TABLE LE01_ZahlungZuf_SHUKR_01_HBS ADD CONSTRAINT LE01_ZahlZuf_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE LE01_Zahlung_SHUKR_02_HBS ADD CONSTRAINT LE01_Zahlung_SHUKR_02_HBS_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE OB01_Objekt_Sch_01_HBS ADD CONSTRAINT OB01_Objekt_Sch_01_HBS_FK FOREIGN KEY
	(FK_OB01_Objekt)
	REFERENCES OB01_Objekt_BH
	(SK_OB01_Objekt);

ALTER TABLE PA01_PA02_ER01_SHUKR_01_LBM ADD CONSTRAINT PA01_PA02_ER01_SHUKR_01_LBM_FK FOREIGN KEY
	(FK_PA01_PA02_ER01)
	REFERENCES PA01_PA02_ER01_BL
	(SK_PA01_PA02_ER01)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER01_SHUKR_02_LBS ADD CONSTRAINT PA01_PA02_ER01_SHUKR_02_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_ER01)
	REFERENCES PA01_PA02_ER01_BL
	(SK_PA01_PA02_ER01);

ALTER TABLE PA01_PA02_ER04_BL ADD CONSTRAINT PA01_PA02_ER04_BL_GerIns_FK FOREIGN KEY
	(FK_ER04_Gerichtsinstanz)
	REFERENCES ER04_Gerichtsinstanz_ER03_BW
	(SK_ER04_Gerichtsinstanz);

ALTER TABLE PA01_PA02_ER04_BL ADD CONSTRAINT PA01_PA02_ER04_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_ER04_BL ADD CONSTRAINT PA01_PA02_ER04_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_ER04_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER04_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_ER04)
	REFERENCES PA01_PA02_ER04_BL
	(SK_PA01_PA02_ER04)
	ON DELETE CASCADE;

