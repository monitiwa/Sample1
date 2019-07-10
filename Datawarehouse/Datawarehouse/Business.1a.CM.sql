--<ScriptOptions statementTerminator=";"/>
-- Version 8362

CREATE TABLE ER01_ER03_Kundenprozess_BL (
		SK_ER01_ER03_Kundenprozess VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_Schaden_SHUKR_02_HBS (
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
		Mandant VARCHAR2(8 CHAR),
		Schadennummer_A VARCHAR2(64 CHAR),
		Meldedatum DATE,
		C_Meldeweg NUMBER(28 , 0),
		C_Ereignisart NUMBER(28 , 0),
		C_Schadenursache NUMBER(28 , 0),
		C_Sparte NUMBER(28 , 0),
		Eintrittsdatum DATE,
		C_Bearbeitungsstatus NUMBER(28 , 0),
		Bearbeitungsstatusdatum DATE,
		C_Komplexitaet NUMBER(28 , 0),
		Deckungsquote NUMBER(16 , 8),
		C_SchadenOhneForderung NUMBER(28 , 0),
		AnzahlToteVerletzte NUMBER(10 , 0),
		C_Bearbeitungsstelle NUMBER(28 , 0),
		Bearbeitungsstelledatum DATE,
		C_sensiblerSchaden NUMBER(28 , 0),
		C_VIP_Schaden_C NUMBER(28 , 0),
		Loeschdatum DATE,
		C_Wagnis NUMBER(28 , 0),
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		SchadenSB_A VARCHAR2(64 CHAR),
		C_Steuerung NUMBER(28 , 0),
		Wiedervorlagedatum DATE,
		GesSchaden_geaendert_am DATE,
		GesSchaden_geaendert_von_A VARCHAR2(64 CHAR),
		C_Schadenfallart_B NUMBER(28 , 0),
		C_EintrittsdatumZeitzone NUMBER(28 , 0),
		C_SchuldigkeitSichtVU NUMBER(28 , 0),
		C_SchuldigkeitSichtVN NUMBER(28 , 0),
		C_Ersatzpflicht NUMBER(28 , 0),
		AbgabedatumInkasso DATE,
		C_Fehlanlage NUMBER(28 , 0),
		C_SFR_Belastung NUMBER(28 , 0),
		C_KeineBelastung NUMBER(28 , 0),
		C_Bewertung_VTP NUMBER(28 , 0),
		C_Auslandsschadenschutz NUMBER(28 , 0),
		C_GeschlossenMitEntsch NUMBER(28 , 0),
		C_GeschlossenOhneEntsch NUMBER(28 , 0),
		C_VersicherungsschutzVersagt NUMBER(28 , 0),
		C_Versicherungsart NUMBER(28 , 0),
		C_KeineStufung NUMBER(28 , 0),
		C_Migriert NUMBER(28 , 0),
		C_Auffaelligkeit NUMBER(28 , 0),
		C_AktiveMeldung NUMBER(28 , 0),
		JahresbeitragKunde NUMBER(16 , 2),
		C_VertragsfuehrendeStelle NUMBER(28 , 0),
		C_Besonderheiten NUMBER(28 , 0),
		C_Verletzung_B NUMBER(28 , 0),
		C_Koerperteil_B NUMBER(28 , 0),
		C_Rueckversicherung NUMBER(28 , 0),
		C_Freizeit_Unfallschutz NUMBER(28 , 0),
		C_VTP_Info NUMBER(28 , 0),
		arbeitslos_VNSicht_ab DATE,
		Kundennr_Arbeitslosenvers_A VARCHAR2(64 CHAR),
		VNR_Arbeitslosenvers_A VARCHAR2(64 CHAR),
		arbeitslos_ab DATE,
		Arbeitslosengeld_ab DATE,
		Karenzzeit_bis DATE,
		Amtliches_Kennzeichen_A VARCHAR2(64 CHAR),
		HoeheGeldbusse_B VARCHAR2(64 CHAR),
		C_Halter NUMBER(28 , 0),
		C_Unfallart NUMBER(28 , 0),
		C_Fachgebiet_B NUMBER(28 , 0),
		Progression NUMBER(16 , 2),
		Tagegeld_Beginn NUMBER(10 , 0),
		LetzterPosteingang DATE,
		C_Geltungsbereich NUMBER(28 , 0),
		C_Schliessart NUMBER(28 , 0),
		CoC_Loeschdatum_vorgesehen DATE,
		CoC_Sperrdatum_vorgesehen DATE,
		C_CoC_zur_Loeschung_vorgesehen NUMBER(28 , 0),
		C_CoC_zur_Sperrung_vorgesehen NUMBER(28 , 0),
		CoC_VerlaengerungsGrund VARCHAR2(180 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_GerVerf_Schaden_R_01_HBS (
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
		AZ_VN_Rechtsanwalt_A VARCHAR2(500 CHAR),
		C_RS_Prozessausgang NUMBER(28 , 0),
		C_RS_Prozessausgang_Art NUMBER(28 , 0),
		AZ_Gericht_A VARCHAR2(500 CHAR),
		C_Waehrung_aussergeri NUMBER(28 , 0),
		Streitwert_aussergeri NUMBER(16 , 2),
		C_Waehrung_Instanz1 NUMBER(28 , 0),
		Streitwert_Instanz1 NUMBER(16 , 2),
		C_Waehrung_Instanz2 NUMBER(28 , 0),
		Streitwert_Instanz2 NUMBER(16 , 2),
		C_Waehrung_Instanz3 NUMBER(28 , 0),
		Streitwert_Instanz3 NUMBER(16 , 2),
		C_Ordnungswidrigkeit_Kennz NUMBER(28 , 0),
		C_Sozialrechtsschutz_Kennz NUMBER(28 , 0),
		C_Strafverfahren_Kennz NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_Gerichtsverfahren_BH (
		SK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenprozess_BL_PK PRIMARY KEY
	(SK_ER01_ER03_Kundenprozess);

ALTER TABLE ER01_Schaden_SHUKR_02_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_02_HBS_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_GerVerf_Schaden_R_01_HBS ADD CONSTRAINT ER03_GerVerf_Sch_R_01_HBS_PK PRIMARY KEY
	(FK_ER03_Gerichtsverfahren,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_Gerichtsverfahren_BH ADD CONSTRAINT ER03_Gerichtsverfahren_BH_PK PRIMARY KEY
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenpr_BL_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenpr_BL_ER03_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER01_Schaden_SHUKR_02_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_02_HBS_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER03_GerVerf_Schaden_R_01_HBS ADD CONSTRAINT ER03_GerVerf_Sch_R_01_HBS_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

