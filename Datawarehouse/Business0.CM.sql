--<ScriptOptions statementTerminator=";"/>
--Version 7009

CREATE TABLE ER01WE03_ER02_DeckSp_BL (
		SK_ER01WE03_ER02_DeckSp VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_WE03_Deckungsspiegel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER01WE03_ER02_SHUKR_01_LBS (
		FK_ER01WE03_ER02_DeckSp VARCHAR2(64 CHAR) NOT NULL,
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
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_ER01_glEr_SHUKR_01_LBS (
		FK_ER01_ER01_gleiches_Ereignis VARCHAR2(64 CHAR) NOT NULL,
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
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_ER01_gleiches_Ereignis_BL (
		SK_ER01_ER01_gleiches_Ereignis VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden_P VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_ER02_LE01_BL (
		SK_ER01_ER02_LE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER01_ER02_LE09_BL (
		SK_ER01_ER02_LE09 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE09_Rueckstellung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_GE01_SchOrt_SHUKR_01_LBS (
		FK_ER01_GE01_Schadenort VARCHAR2(64 CHAR) NOT NULL,
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
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_GE01_Schadenort_BL (
		SK_ER01_GE01_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER01_LE03_BL (
		SK_ER01_LE03 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_OB01_beschObjekt_BL (
		SK_ER01_OB01_beschObjekt VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_OB01_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_PR01_BL (
		SK_ER01_PR01 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_PR01_Produkt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_PR01_SHUKR_01_LBS (
		FK_ER01_PR01 VARCHAR2(64 CHAR) NOT NULL,
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
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_Schaden_BH (
		SK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER01_Schaden_DWH_01_HBS (
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
		Eintrittsjahr VARCHAR2(8 CHAR),
		Meldejahr VARCHAR2(8 CHAR),
		Anlagejahr VARCHAR2(8 CHAR),
		Schadenschlussjahr VARCHAR2(8 CHAR),
		Schadenschlussmeldedatum DATE,
		C_GJ_Schaden NUMBER(28 , 0),
		C_Spaet_Schaden NUMBER(28 , 0),
		C_Schaden_rueckgekauft NUMBER(28 , 0),
		Datum_Erste_Wiedereroeffnung DATE,
		Rueckkaufbetrag NUMBER(16 , 2),
		C_ProzessKennzeichen NUMBER(28 , 0),
		C_Hausakte NUMBER(28 , 0),
		C_aufwandsneutral NUMBER(28 , 0),
		C_OE NUMBER(28 , 0),
		C_Abgabe_RD NUMBER(28 , 0),
		Regress_gesi_initial_Entsch NUMBER(16 , 2),
		Regress_gesi_initial_Rente NUMBER(16 , 2),
		Regress_gesi_initial_SRK NUMBER(16 , 2),
		Regress_gesi_initial NUMBER(16 , 2),
		Regress_ungesi_initial_Entsch NUMBER(16 , 2),
		Regress_ungesi_initial_Rente NUMBER(16 , 2),
		Regress_ungesi_initial_SRK NUMBER(16 , 2),
		Regress_ungesi_initial NUMBER(16 , 2),
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2),
		Regress_gesi_Eingang_Rente NUMBER(16 , 2),
		Regress_gesi_Eingang_SRK NUMBER(16 , 2),
		Regress_gesi_Eingang NUMBER(16 , 2),
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2),
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2),
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2),
		Regress_ungesi_Eingang NUMBER(16 , 2),
		Regress_gesi_offen_Entsch NUMBER(16 , 2),
		Regress_gesi_offen_Rente NUMBER(16 , 2),
		Regress_gesi_offen_SRK NUMBER(16 , 2),
		Regress_gesi_offen NUMBER(16 , 2),
		Regress_ungesi_offen_Entsch NUMBER(16 , 2),
		Regress_ungesi_offen_Rente NUMBER(16 , 2),
		Regress_ungesi_offen_SRK NUMBER(16 , 2),
		Regress_ungesi_offen NUMBER(16 , 2),
		Zahlungen_saldiert NUMBER(16 , 2),
		Rueckstellungen_saldiert NUMBER(16 , 2),
		Schadenaufwand_ohne_IK NUMBER(16 , 2),
		Rueckstellung_rein_Entsch NUMBER(16 , 2),
		Rueckstellung_rein_Rente NUMBER(16 , 2),
		Rueckstellung_rein_SRK NUMBER(16 , 2),
		Rueckstellung_rein NUMBER(16 , 2),
		Zahlung_rein_Entsch NUMBER(16 , 2),
		Zahlung_rein_Rente NUMBER(16 , 2),
		Zahlung_rein_SRK NUMBER(16 , 2),
		Zahlung_rein NUMBER(16 , 2),
		Durchlaufzeit_1_Zahlung_B VARCHAR2(64 CHAR),
		C_aufwandsneutral_ohne_SRK NUMBER(28 , 0),
		C_GJ_wiedereroeffnet NUMBER(28 , 0),
		C_GJ_wiedereroeffnet_monetaer NUMBER(28 , 0),
		C_Quartal_Spaet_Schaden NUMBER(28 , 0),
		C_Halbj_Spaet_Schaden NUMBER(28 , 0),
		C_Dreiv_Spaet_Schaden NUMBER(28 , 0),
		Erstrueckstellung_Entsch NUMBER(16 , 2),
		Erstrueckstellung_Rente NUMBER(16 , 2),
		Erstrueckstellung_SRK NUMBER(16 , 2),
		C_Abgabe_Z NUMBER(28 , 0),
		C_zust_SBGrp NUMBER(28 , 0),
		C_anl_Stelle NUMBER(28 , 0),
		C_Dim_Schadengrund NUMBER(28 , 0),
		C_KlassifizierungSchluss NUMBER(28 , 0),
		AnzahlTote NUMBER(10 , 0),
		AnzahlVerletzte NUMBER(10 , 0),
		C_Dunkelverarbeitung NUMBER(28 , 0),
		C_zust_Stelle NUMBER(28 , 0)
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

CREATE TABLE ER01_Schaden_DWH_02_HBM (
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
		C_SammelereignisKlasse NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_Schaden_SHUKR_01_HBS (
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
		C_BearbeitungsstatusGrund_B NUMBER(28 , 0),
		Bearbeitungsstatusdatum DATE,
		C_Risikotraeger NUMBER(28 , 0),
		C_Komplexitaet NUMBER(28 , 0),
		Deckungsquote NUMBER(16 , 8),
		C_SchadenOhneForderung NUMBER(28 , 0),
		BelastendeZahlungen NUMBER(16 , 2),
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
		C_VertragsfuehrendeStelle NUMBER(28 , 0)
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

CREATE TABLE ER01_WE01_BL (
		SK_ER01_WE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER01_WE01_VertrSpie_Sch_01_LBM (
		FK_ER01_WE01_Vertragsspiegel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR),
		Zusatznummer VARCHAR2(8 CHAR),
		Zusatznummer_Deckung VARCHAR2(8 CHAR),
		Zusatznummer_InExkasso VARCHAR2(8 CHAR),
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		C_GeschaeftsbezFirma NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeit NUMBER(28 , 0),
		ACV_Mitglied_A VARCHAR2(64 CHAR),
		ACV_Eintrittsdatum DATE,
		ACV_Mitgliedsnummer_A VARCHAR2(64 CHAR),
		C_Produktname NUMBER(28 , 0),
		Versicherungszweig VARCHAR2(8 CHAR),
		C_Autoplus NUMBER(28 , 0),
		C_BZA NUMBER(28 , 0),
		Materieller_Beginn DATE,
		Enddatum DATE,
		C_Vertragsart NUMBER(28 , 0),
		C_vertragsfuehrendeRD NUMBER(28 , 0),
		C_Risikotraeger NUMBER(28 , 0),
		C_Waehrung NUMBER(28 , 0),
		C_Rabattschutz NUMBER(28 , 0),
		C_Beitragsrueckstand NUMBER(28 , 0),
		C_Bedingungsschluessel NUMBER(28 , 0),
		C_Wagnisart NUMBER(28 , 0),
		SchadenfreiheitsklasseKH VARCHAR2(64 CHAR),
		SchadenfreiheitsrabattKH NUMBER(16 , 2),
		C_DeckungsschluesselKH NUMBER(28 , 0),
		SchadenfreiheitsklasseVK VARCHAR2(64 CHAR),
		SchadenfreiheitsrabattVK NUMBER(16 , 2),
		C_DeckungsschluesselK NUMBER(28 , 0),
		C_KaskoMobil NUMBER(28 , 0),
		geaendert_am DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_WE01_Vertragsspiegel_BL (
		SK_ER01_WE01_Vertragsspiegel VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_WE03_DeckSpie_Sch_01_LBS (
		FK_ER01_WE03_Deckungsspiegel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		Deckung VARCHAR2(24 CHAR) NOT NULL,
		C_Deckungsart NUMBER(28 , 0),
		Materieller_Beginn DATE,
		Enddatum DATE,
		C_Rueckversicherungsart NUMBER(28 , 0),
		C_Deckungsstatus NUMBER(28 , 0),
		DeckungsartName VARCHAR2(180 CHAR),
		DeckungName VARCHAR2(180 CHAR),
		Vertragsteilnummer_A VARCHAR2(64 CHAR),
		C_KaskoMobil NUMBER(28 , 0),
		Schadenfreiheitsklasse VARCHAR2(64 CHAR),
		Schadenfreiheitsrabatt NUMBER(16 , 2),
		geaendert_am DATE,
		geaendert_von_A  VARCHAR2(64 CHAR),
		Branchenname VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_WE03_Deckungsspiegel_BL (
		SK_ER01_WE03_Deckungsspiegel VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_WE03_Risiko VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER02_LE02_BL (
		SK_ER02_LE02 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE02_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER02_LE04_BL (
		SK_ER02_LE04 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE04_Regressposition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER02_LE04_SHUKR_01_LBS (
		FK_ER02_LE04 VARCHAR2(64 CHAR) NOT NULL,
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
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER02_LE08_Anspruch_SHUKR_BL (
		SK_ER02_LE08 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_LE08_Anspruch VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER02_Teilschaden_DWH_01_WBS (
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
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2),
		Regress_gesi_Eingang_Rente NUMBER(16 , 2),
		Regress_gesi_Eingang_SRK NUMBER(16 , 2),
		Regress_gesi_Eingang NUMBER(16 , 2),
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2),
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2),
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2),
		Regress_ungesi_Eingang NUMBER(16 , 2),
		Zahlungen_saldiert NUMBER(16 , 2),
		Teilsch_Rueckst_rein_Entsch NUMBER(16 , 2),
		Teilsch_Rueckst_rein_Rente NUMBER(16 , 2),
		Teilsch_Rueckst_rein_SRK NUMBER(16 , 2),
		Teilsch_Rueckst_rein NUMBER(16 , 2),
		Zahlung_rein_Entsch NUMBER(16 , 2),
		Zahlung_rein_Rente NUMBER(16 , 2),
		Zahlung_rein_SRK NUMBER(16 , 2),
		Zahlung_rein NUMBER(16 , 2),
		Durchlaufzeit_1_Zahlung_B VARCHAR2(64 CHAR),
		Erstrueckstellung_Entsch NUMBER(16 , 2),
		Erstrueckstellung_Rente NUMBER(16 , 2),
		Erstrueckstellung_SRK NUMBER(16 , 2),
		AnzahlGerichtsverfahren NUMBER(10 , 0)
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

CREATE TABLE ER02_Teilschaden_ER01_BW (
		SK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE ER02_Teilschaden_SHUKR_01_WBS (
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
		C_Deckungsart NUMBER(28 , 0),
		Haftungsquote NUMBER(16 , 8),
		C_RegulierungAussendienst NUMBER(28 , 0),
		C_FalschberatungAussendienst NUMBER(28 , 0),
		C_SchadenfeststellerVorOrt NUMBER(28 , 0),
		C_Komplexitaet NUMBER(28 , 0),
		C_SchadenOhneForderung NUMBER(28 , 0),
		C_Bearbeitungsstatus NUMBER(28 , 0),
		C_Betrugsverdacht_C NUMBER(28 , 0),
		C_TeilfallUngueltig NUMBER(28 , 0),
		C_Abgelehnt NUMBER(28 , 0),
		C_Fehlanlage NUMBER(28 , 0),
		Ueberstimmungsgrund VARCHAR2(24 CHAR),
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR)
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

CREATE TABLE GE01_Gebiet_BH (
		SK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GE01_Gebiet_Sch_01_HBS (
		FK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
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
		Adress_Id_A VARCHAR2(64 CHAR),
		C_Laenderkennzeichen NUMBER(28 , 0),
		C_Adress_Laenderversion NUMBER(28 , 0),
		Postleitzahl_A VARCHAR2(64 CHAR),
		C_Region NUMBER(28 , 0),
		Bezirk VARCHAR2(64 CHAR),
		Ortsname_A VARCHAR2(180 CHAR),
		Ortsteil_A VARCHAR2(180 CHAR),
		Strassenname_A VARCHAR2(180 CHAR),
		Hausnummer_A VARCHAR2(64 CHAR),
		Adresszusatz_A VARCHAR2(500 CHAR),
		Gebaeude_A VARCHAR2(64 CHAR),
		Etage_A VARCHAR2(64 CHAR),
		WohnungNr_A VARCHAR2(64 CHAR),
		C_CodeOrt_A NUMBER(28 , 0),
		C_CodeOrtsteil_A NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_KT01_Beleg_BL (
		SK_LE01_KT01_Beleg_BL VARCHAR2(64 CHAR) NOT NULL,
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE LE01_LE03_BL (
		SK_LE01_LE03 VARCHAR2(64 CHAR) NOT NULL,
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_Zahlung_BH (
		SK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE LE01_Zahlung_DWH_01_HBS (
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
		C_Pruefung_Zuf NUMBER(28 , 0),
		C_Bearbeitungsstelle NUMBER(28 , 0),
		Buchungsjahr NUMBER(10 , 0),
		Buchungsmonat NUMBER(10 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE01_Zahlung_SHUKR_01_HBS (
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
		Zahlungsnummer_A VARCHAR2(24 CHAR),
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
		EingegangenerBetragInEuro NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE02_LE08_ZahlDet_Anspruch_BL (
		SK_LE02_LE08_ZahlDet_Anspruch VARCHAR2(64 CHAR) NOT NULL,
		FK_LE02_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		FK_LE08_Anspruch VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE02_Zahlung_Det_DWH_01_WBS (
		FK_LE02_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Leistungsart_Typ NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE02_Zahlung_Det_SHUKR_01_WBS (
		FK_LE02_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Zahlungsnummer_A VARCHAR2(24 CHAR),
		Zahlung_Detail_LFD VARCHAR2(8 CHAR),
		Buchungsdatum DATE,
		C_Leistungsart_B NUMBER(28 , 0),
		C_Fallzahlungspostentyp NUMBER(28 , 0),
		C_Betragstyp NUMBER(28 , 0),
		C_Zahlungsart NUMBER(28 , 0),
		C_BruttoNetto NUMBER(28 , 0),
		Teilbetrag NUMBER(16 , 2),
		TeilbetragInEuro NUMBER(16 , 2),
		geaendert_von_A  VARCHAR2(64 CHAR),
		geaendert_am DATE,
		C_Zahlungsgrund NUMBER(28 , 0),
		C_ZahlungsgrundGruppe NUMBER(28 , 0),
		GeforderterBetrag NUMBER(16 , 2),
		GeforderterBetragInEuro NUMBER(16 , 2),
		UrsprGeforderterBetrag NUMBER(16 , 2),
		UrsprGeforderterBetragInEuro NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE02_Zahlung_Detail_LE01_BW (
		SK_LE02_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE03_Regress_BH (
		SK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE03_Regress_Bilanz_01_HBM (
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
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
		Regress_Lfd VARCHAR2(8 CHAR),
		C_Bilanz_Meldeperiode NUMBER(28 , 0) NOT NULL,
		Bilanz_Meldedatum DATE,
		Bilanz_Meldebetrag NUMBER(16 , 2),
		C_Klassifizierungsart NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE03_Regress_SHUKR_01_HBS (
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
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
		Regress_Lfd VARCHAR2(8 CHAR),
		C_Regressart NUMBER(28 , 0),
		C_Regressgrund NUMBER(28 , 0),
		BetragGeschaetzt NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		Schuldquote NUMBER(16 , 8),
		Regresswahrscheinlichkeit NUMBER(16 , 8),
		C_Regressstatus NUMBER(28 , 0),
		Sendedatum DATE,
		Schadennummer_A VARCHAR2(64 CHAR),
		Schliessungsgrund VARCHAR2(180 CHAR),
		geaendert_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE04_Regresspos_SHUKR_01_WBS (
		FK_LE04_Regressposition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Regressposition_lfd VARCHAR2(8 CHAR),
		Rueckstellungsbetrag NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		geaendert_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		Regressbetrag NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE04_Regressposition_LE03_BW (
		SK_LE04_Regressposition VARCHAR2(64 CHAR) NOT NULL,
		FK_LE03_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE LE08_Anspruch_BH (
		SK_LE08_Anspruch VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE09_Rueckst_Bilanz_01_HBM (
		FK_LE09_Rueckstellung VARCHAR2(64 CHAR) NOT NULL,
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
		C_Rueckstellungsart NUMBER(28 , 0),
		C_Bilanz_Meldeperiode NUMBER(28 , 0) NOT NULL,
		Bilanz_Meldedatum DATE,
		Bilanz_Meldebetrag NUMBER(16 , 2),
		C_Klassifizierungsart NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE09_Rueckst_SHUKR_01_HBS (
		FK_LE09_Rueckstellung VARCHAR2(64 CHAR) NOT NULL,
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
		C_Rueckstellungsart NUMBER(28 , 0),
		Buchungsdatum DATE,
		Rueckstellungsbetrag NUMBER(16 , 2),
		RueckstellungsbetragInEuro NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		C_Aenderungsgrund NUMBER(28 , 0),
		C_Setzungsmethode NUMBER(28 , 0),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE09_Rueckstellung_BH (
		SK_LE09_Rueckstellung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE OB01_Objekt_BH (
		SK_OB01_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER01OB01_BL (
		SK_PA01_PA02_ER01OB01 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_OB01_beschObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER01OB01_SHUK_01_LBS (
		FK_PA01_PA02_ER01OB01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_ER01_BL (
		SK_PA01_PA02_ER01 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER01_SHUKR_01_LBS (
		FK_PA01_PA02_ER01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_ER02_BL (
		SK_PA01_PA02_ER02 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_ER02_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_ER02_SHUKR_01_LBS (
		FK_PA01_PA02_ER02 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_LE01_BL (
		SK_PA01_PA02_LE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_LE01_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_LE01_SHUKR_01_LBS (
		FK_PA01_PA02_LE01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_LE08_BL (
		SK_PA01_PA02_LE08 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_LE08_Anspruch VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_LE08_SHUKR_01_LBS (
		FK_PA01_PA02_LE08 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_Partner_BH (
		SK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_Partner_Sch_01_HBS (
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		POB_A VARCHAR2(64 CHAR),
		Name_A VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA02_PartnerRolle_BH (
		SK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE PA02_PartnerRolle_Par_01_HBS (
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		RollenId VARCHAR2(8 CHAR),
		Rollenname_lang VARCHAR2(64 CHAR),
		Rollenname_kurz VARCHAR2(24 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PR01_Produkt_BH (
		SK_PR01_Produkt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PR01_Produkt_SHUKR_01_HBS (
		FK_PR01_Produkt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Versicherungszweig NUMBER(28 , 0),
		C_Produktname NUMBER(28 , 0),
		C_Produktlinie NUMBER(28 , 0),
		Tarifkennzeichen VARCHAR2(180 CHAR),
		ProduktID VARCHAR2(64 CHAR),
		generation_produkt VARCHAR2(64 CHAR),
		version_produkt VARCHAR2(64 CHAR),
		C_kalkulatorische_zahlweise NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE WE01_Vertrag_BH (
		SK_WE01_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE WE01_WE02_WE03_BBL (
		SK_WE01_WE02_WE03 VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		FK_WE02_Vertragselement VARCHAR2(64 CHAR) NOT NULL,
		FK_WE03_Risiko VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE WE02_Vertragselement_WE01_BW (
		SK_WE02_Vertragselement VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE WE03_Risiko_SachHU_01_WBS (
		FK_WE03_Risiko VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Risiko_LFD VARCHAR2(8 CHAR),
		C_Risikobezeichnung NUMBER(28 , 0),
		Technischer_Beginn DATE,
		Materieller_Beginn DATE,
		Formeller_Beginn DATE,
		C_Tarifzone NUMBER(28 , 0),
		C_Ueberspannungszone NUMBER(28 , 0),
		C_Fahrraddiebstahlzone NUMBER(28 , 0),
		C_Unterversicherungsverzicht NUMBER(28 , 0),
		C_KombinationVersGefahren NUMBER(28 , 0),
		ErhoehungEntschaedigung NUMBER(16 , 2),
		Risikonachlass NUMBER(16 , 2),
		Versicherungssumme NUMBER(16 , 2),
		Risikosumme NUMBER(16 , 2),
		C_RisikosummeEinheit NUMBER(28 , 0),
		Beitragssatz NUMBER(16 , 2),
		Jahresbeitrag NUMBER(16 , 2),
		Deckung_Selbstbehalt NUMBER(16 , 2),
		Deckung_Personenschaeden NUMBER(16 , 2),
		Deckung_Sachschaeden NUMBER(16 , 2),
		Deckung_Vermoegensschaeden NUMBER(16 , 2),
		C_ArtDerBeitragsberechnung NUMBER(28 , 0),
		C_Deckungserweiterungen NUMBER(28 , 0),
		Versicherungsumfang NUMBER(16 , 2),
		EinmalbetragAbgangManuell NUMBER(16 , 2),
		EinmalbetragZugangManuell NUMBER(16 , 2),
		C_Wagnisnummer NUMBER(28 , 0),
		Glasflaeche NUMBER(16 , 2),
		C_manuelleTarifierung NUMBER(28 , 0),
		C_VeraenderungsArt NUMBER(28 , 0),
		Einschlussdatum DATE,
		Ausschlussdatum DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE WE03_Risiko_WE02_BW (
		SK_WE03_Risiko VARCHAR2(64 CHAR) NOT NULL,
		FK_WE02_Vertragselement VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE ER01WE03_ER02_DeckSp_BL ADD CONSTRAINT ER01WE03_ER02_DeckSp_BL_PK PRIMARY KEY
	(SK_ER01WE03_ER02_DeckSp);

ALTER TABLE ER01WE03_ER02_SHUKR_01_LBS ADD CONSTRAINT ER01WE03_ER02_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01WE03_ER02_DeckSp,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_ER01_glEr_SHUKR_01_LBS ADD CONSTRAINT ER01_ER01_glEr_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01_ER01_gleiches_Ereignis,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_ER01_gleiches_Ereignis_BL ADD CONSTRAINT ER01_ER01_glEr_BL_PK PRIMARY KEY
	(SK_ER01_ER01_gleiches_Ereignis);

ALTER TABLE ER01_ER02_LE01_BL ADD CONSTRAINT ER01_ER02_LE01_BL_PK PRIMARY KEY
	(SK_ER01_ER02_LE01);

ALTER TABLE ER01_ER02_LE09_BL ADD CONSTRAINT ER01_ER02_LE09_BL_PK PRIMARY KEY
	(SK_ER01_ER02_LE09);

ALTER TABLE ER01_GE01_SchOrt_SHUKR_01_LBS ADD CONSTRAINT ER01_GE01_SOrt_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01_GE01_Schadenort,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_GE01_Schadenort_BL ADD CONSTRAINT ER01_GE01_SchOrt_BL_PK PRIMARY KEY
	(SK_ER01_GE01_Schadenort);

ALTER TABLE ER01_LE03_BL ADD CONSTRAINT ER01_LE03_BL_PK PRIMARY KEY
	(SK_ER01_LE03);

ALTER TABLE ER01_OB01_beschObjekt_BL ADD CONSTRAINT ER01_OB01_beschObj_PK PRIMARY KEY
	(SK_ER01_OB01_beschObjekt);

ALTER TABLE ER01_PR01_BL ADD CONSTRAINT ER01_PR01_BL_PK PRIMARY KEY
	(SK_ER01_PR01);

ALTER TABLE ER01_PR01_SHUKR_01_LBS ADD CONSTRAINT ER01_PR01_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_ER01_PR01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_Schaden_BH ADD CONSTRAINT ER01_Schaden_BH_PK PRIMARY KEY
	(SK_ER01_Schaden);

ALTER TABLE ER01_Schaden_DWH_01_HBS ADD CONSTRAINT ER01_Schaden_DWH_01_HBS_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_Schaden_DWH_02_HBM ADD CONSTRAINT ER01_Schaden_DWH_02_HBM_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 C_SammelereignisKlasse,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_Schaden_SHUKR_01_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_WE01_BL ADD CONSTRAINT ER01_WE01_BL_PK PRIMARY KEY
	(SK_ER01_WE01);

ALTER TABLE ER01_WE01_VertrSpie_Sch_01_LBM ADD CONSTRAINT ER01_WE01_VertrSpie_Sch_01_PK PRIMARY KEY
	(FK_ER01_WE01_Vertragsspiegel,
	 VertragsversionsNr,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_WE01_Vertragsspiegel_BL ADD CONSTRAINT ER01_WE01_VertrSpie_BL_PK PRIMARY KEY
	(SK_ER01_WE01_Vertragsspiegel);

ALTER TABLE ER01_WE03_DeckSpie_Sch_01_LBS ADD CONSTRAINT ER01_WE03_DeckSp_Sch_01_PK PRIMARY KEY
	(FK_ER01_WE03_Deckungsspiegel,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_WE03_Deckungsspiegel_BL ADD CONSTRAINT ER01_WE03_DeckSp_BL_PK PRIMARY KEY
	(SK_ER01_WE03_Deckungsspiegel);

ALTER TABLE ER02_LE02_BL ADD CONSTRAINT ER02_LE02_BL_PK PRIMARY KEY
	(SK_ER02_LE02);

ALTER TABLE ER02_LE04_BL ADD CONSTRAINT ER02_LE04_BL_PK PRIMARY KEY
	(SK_ER02_LE04);

ALTER TABLE ER02_LE04_SHUKR_01_LBS ADD CONSTRAINT ER02_LE04_SHUKR_01_LBS_PK PRIMARY KEY
	(Fachlich_Gueltig_Beginn,
	 Erfassung_Gueltig_Beginn,
	 TA_Ladedatum,
	 FK_ER02_LE04);

ALTER TABLE ER02_LE08_Anspruch_SHUKR_BL ADD CONSTRAINT ER02_LE08_BL_PK PRIMARY KEY
	(SK_ER02_LE08);

ALTER TABLE ER02_Teilschaden_DWH_01_WBS ADD CONSTRAINT ER02_DWH_01_WBS_PK PRIMARY KEY
	(FK_ER02_Teilschaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER02_Teilschaden_ER01_BW ADD CONSTRAINT ER02_Teilschaden_BH_PK PRIMARY KEY
	(SK_ER02_Teilschaden);

ALTER TABLE ER02_Teilschaden_SHUKR_01_WBS ADD CONSTRAINT ER02_SHUKR_01_WBS_PK PRIMARY KEY
	(FK_ER02_Teilschaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GE01_Gebiet_BH ADD CONSTRAINT GE01_Gebiet_BH_PK PRIMARY KEY
	(SK_GE01_Gebiet);

ALTER TABLE GE01_Gebiet_Sch_01_HBS ADD CONSTRAINT GE01_Gebiet_SCH_01_HBS_PK PRIMARY KEY
	(FK_GE01_Gebiet,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE01_KT01_Beleg_BL ADD CONSTRAINT LE01_KT01_Beleg_BL_PK PRIMARY KEY
	(SK_LE01_KT01_Beleg_BL);

ALTER TABLE LE01_LE03_BL ADD CONSTRAINT LE01_LE03_BL_PK PRIMARY KEY
	(SK_LE01_LE03);

ALTER TABLE LE01_Zahlung_BH ADD CONSTRAINT LE01_Zahlung_BH_PK PRIMARY KEY
	(SK_LE01_Zahlung);

ALTER TABLE LE01_Zahlung_DWH_01_HBS ADD CONSTRAINT LE01_Zahlung_DWH_01_HBS_PK PRIMARY KEY
	(FK_LE01_Zahlung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE01_Zahlung_SHUKR_01_HBS ADD CONSTRAINT LE01_Zahlung_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_LE01_Zahlung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE02_LE08_ZahlDet_Anspruch_BL ADD CONSTRAINT LE02_LE08_BL_PK PRIMARY KEY
	(SK_LE02_LE08_ZahlDet_Anspruch);

ALTER TABLE LE02_Zahlung_Det_DWH_01_WBS ADD CONSTRAINT LE02_Zahlung_Det_DWH_01_WBS_FK PRIMARY KEY
	(FK_LE02_Zahlung_Detail,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE02_Zahlung_Det_SHUKR_01_WBS ADD CONSTRAINT LE02_Zahlung_Det_SHUKR_01_WBS1 PRIMARY KEY
	(FK_LE02_Zahlung_Detail,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE02_Zahlung_Detail_LE01_BW ADD CONSTRAINT LE02_Zahlung_Det_BW_PK PRIMARY KEY
	(SK_LE02_Zahlung_Detail);

ALTER TABLE LE03_Regress_BH ADD CONSTRAINT LE03_Regress_BH_PK PRIMARY KEY
	(SK_LE03_Regress);

ALTER TABLE LE03_Regress_Bilanz_01_HBM ADD CONSTRAINT LE03_Regress_Bilanz_01_HBM_PK PRIMARY KEY
	(FK_LE03_Regress,
	 C_Bilanz_Meldeperiode,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE03_Regress_SHUKR_01_HBS ADD CONSTRAINT LE03_Regress_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_LE03_Regress,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE04_Regresspos_SHUKR_01_WBS ADD CONSTRAINT LE04_Regresspos_SHUKR_01_WBS_1 PRIMARY KEY
	(FK_LE04_Regressposition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE04_Regressposition_LE03_BW ADD CONSTRAINT LE04_Regresspos_BW_PK PRIMARY KEY
	(SK_LE04_Regressposition);

ALTER TABLE LE08_Anspruch_BH ADD CONSTRAINT LE08_Anspruch_BH_PK PRIMARY KEY
	(SK_LE08_Anspruch);

ALTER TABLE LE09_Rueckst_Bilanz_01_HBM ADD CONSTRAINT LE09_Rueckst_Bilanz_01_HBM_PK PRIMARY KEY
	(FK_LE09_Rueckstellung,
	 C_Bilanz_Meldeperiode,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE09_Rueckst_SHUKR_01_HBS ADD CONSTRAINT LE09_Rueckst_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_LE09_Rueckstellung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE LE09_Rueckstellung_BH ADD CONSTRAINT LE09_Rueckstellung_BH_PK PRIMARY KEY
	(SK_LE09_Rueckstellung);

ALTER TABLE OB01_Objekt_BH ADD CONSTRAINT OB01_Objekt_BH_PK PRIMARY KEY
	(SK_OB01_Objekt);

ALTER TABLE PA01_PA02_ER01OB01_BL ADD CONSTRAINT PA01_PA02_ER01OB01_BL_PK PRIMARY KEY
	(SK_PA01_PA02_ER01OB01);

ALTER TABLE PA01_PA02_ER01OB01_SHUK_01_LBS ADD CONSTRAINT PA01_PA02_ER01OB01_SHUK_01_PK PRIMARY KEY
	(FK_PA01_PA02_ER01OB01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_ER01_BL ADD CONSTRAINT PA01_PA02_ER01_BL_PK PRIMARY KEY
	(SK_PA01_PA02_ER01);

ALTER TABLE PA01_PA02_ER01_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER01_Par_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_ER01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_ER02_BL ADD CONSTRAINT PA01_PA02_ER02_BL_PK PRIMARY KEY
	(SK_PA01_PA02_ER02);

ALTER TABLE PA01_PA02_ER02_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER02_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_ER02,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_LE01_BL ADD CONSTRAINT PA01_PA02_LE01_BL_PK PRIMARY KEY
	(SK_PA01_PA02_LE01);

ALTER TABLE PA01_PA02_LE01_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_LE01_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_LE01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_LE08_BL ADD CONSTRAINT PA01_PA02_LE08_BL_PK PRIMARY KEY
	(SK_PA01_PA02_LE08);

ALTER TABLE PA01_PA02_LE08_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_LE08_SHUKR_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_LE08,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_Partner_BH ADD CONSTRAINT PA01_Partner_BH_PK PRIMARY KEY
	(SK_PA01_Partner);

ALTER TABLE PA01_Partner_Sch_01_HBS ADD CONSTRAINT PA01_Partner_Sch_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA02_PartnerRolle_BH ADD CONSTRAINT PA02_PartnerRolle_BH_PK PRIMARY KEY
	(SK_PA02_PartnerRolle);

ALTER TABLE PA02_PartnerRolle_Par_01_HBS ADD CONSTRAINT PA02_PartRolle_Par_01_HBS_PK PRIMARY KEY
	(FK_PA02_PartnerRolle,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PR01_Produkt_BH ADD CONSTRAINT PR01_Produkt_BH_PK PRIMARY KEY
	(SK_PR01_Produkt);

ALTER TABLE PR01_Produkt_SHUKR_01_HBS ADD CONSTRAINT PR01_Produkt_SHUKR_01_HBS_PK PRIMARY KEY
	(FK_PR01_Produkt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE WE01_Vertrag_BH ADD CONSTRAINT WE01_Vertrag_BH_PK PRIMARY KEY
	(SK_WE01_Vertrag);

ALTER TABLE WE01_WE02_WE03_BBL ADD CONSTRAINT WE01_WE02_WE03_BL_PK PRIMARY KEY
	(SK_WE01_WE02_WE03);

ALTER TABLE WE02_Vertragselement_WE01_BW ADD CONSTRAINT WE02_Vertragsel_WE01_BW_PK PRIMARY KEY
	(SK_WE02_Vertragselement);

ALTER TABLE WE03_Risiko_SachHU_01_WBS ADD CONSTRAINT WE03_Risiko_SachHU_01_WBS_PK PRIMARY KEY
	(FK_WE03_Risiko,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE WE03_Risiko_WE02_BW ADD CONSTRAINT WE03_Risiko_WE02_BW_PK PRIMARY KEY
	(SK_WE03_Risiko);

ALTER TABLE ER01WE03_ER02_DeckSp_BL ADD CONSTRAINT ER01WE03_ER02_DeckSp_ER02_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER01WE03_ER02_DeckSp_BL ADD CONSTRAINT ER01WE03_ER02_DeckSp_ER1WE3_FK FOREIGN KEY
	(FK_ER01_WE03_Deckungsspiegel)
	REFERENCES ER01_WE03_Deckungsspiegel_BL
	(SK_ER01_WE03_Deckungsspiegel);

ALTER TABLE ER01WE03_ER02_SHUKR_01_LBS ADD CONSTRAINT ER01WE03_ER02_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER01WE03_ER02_DeckSp)
	REFERENCES ER01WE03_ER02_DeckSp_BL
	(SK_ER01WE03_ER02_DeckSp);

ALTER TABLE ER01_ER01_glEr_SHUKR_01_LBS ADD CONSTRAINT ER01_ER01_glEr_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER01_ER01_gleiches_Ereignis)
	REFERENCES ER01_ER01_gleiches_Ereignis_BL
	(SK_ER01_ER01_gleiches_Ereignis);

ALTER TABLE ER01_ER01_gleiches_Ereignis_BL ADD CONSTRAINT ER01_ER01_glEr_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER01_gleiches_Ereignis_BL ADD CONSTRAINT ER01_ER01_glEr_BL_Schaden_P_FK FOREIGN KEY
	(FK_ER01_Schaden_P)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER02_LE01_BL ADD CONSTRAINT ER01_ER02_LE01_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER02_LE01_BL ADD CONSTRAINT ER01_ER02_LE01_BL_Teilsch_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER01_ER02_LE01_BL ADD CONSTRAINT ER01_ER02_LE01_BL_Zahlung_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE ER01_ER02_LE09_BL ADD CONSTRAINT ER01_ER02_LE09_BL_Rueckst_FK FOREIGN KEY
	(FK_LE09_Rueckstellung)
	REFERENCES LE09_Rueckstellung_BH
	(SK_LE09_Rueckstellung);

ALTER TABLE ER01_ER02_LE09_BL ADD CONSTRAINT ER01_ER02_LE09_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER02_LE09_BL ADD CONSTRAINT ER01_ER02_LE09_BL_Teilsch_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER01_GE01_SchOrt_SHUKR_01_LBS ADD CONSTRAINT ER01_GE01_SOrt_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_ER01_GE01_Schadenort)
	REFERENCES ER01_GE01_Schadenort_BL
	(SK_ER01_GE01_Schadenort);

ALTER TABLE ER01_GE01_Schadenort_BL ADD CONSTRAINT ER01_GE01_SchOrt_BL_Gebiet_FK FOREIGN KEY
	(FK_GE01_Gebiet)
	REFERENCES GE01_Gebiet_BH
	(SK_GE01_Gebiet);

ALTER TABLE ER01_GE01_Schadenort_BL ADD CONSTRAINT ER01_GE01_SchOrt_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_LE03_BL ADD CONSTRAINT ER01_LE03_BL_Regress_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress);

ALTER TABLE ER01_LE03_BL ADD CONSTRAINT ER01_LE03_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_OB01_beschObjekt_BL ADD CONSTRAINT ER01_OB01_beschObj_Objekt_FK FOREIGN KEY
	(FK_OB01_Objekt)
	REFERENCES OB01_Objekt_BH
	(SK_OB01_Objekt);

ALTER TABLE ER01_OB01_beschObjekt_BL ADD CONSTRAINT ER01_OB01_beschObj_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_PR01_BL ADD CONSTRAINT ER01_PR01_BL_Produkt_FK FOREIGN KEY
	(FK_PR01_Produkt)
	REFERENCES PR01_Produkt_BH
	(SK_PR01_Produkt);

ALTER TABLE ER01_PR01_BL ADD CONSTRAINT ER01_PR01_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_PR01_SHUKR_01_LBS ADD CONSTRAINT ER01_PR01_SHUKR_01_ER01_PR0_FK FOREIGN KEY
	(FK_ER01_PR01)
	REFERENCES ER01_PR01_BL
	(SK_ER01_PR01);

ALTER TABLE ER01_Schaden_DWH_01_HBS ADD CONSTRAINT ER01_Schaden_DWH_01_HBS_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_Schaden_DWH_02_HBM ADD CONSTRAINT ER01_Schaden_DWH_02_HBM_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden)
	ON DELETE CASCADE;

ALTER TABLE ER01_Schaden_SHUKR_01_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_WE01_BL ADD CONSTRAINT ER01_WE01_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_WE01_BL ADD CONSTRAINT ER01_WE01_BL_Vertrag_FK FOREIGN KEY
	(FK_WE01_Vertrag)
	REFERENCES WE01_Vertrag_BH
	(SK_WE01_Vertrag);

ALTER TABLE ER01_WE01_VertrSpie_Sch_01_LBM ADD CONSTRAINT ER01_WE01_VertrSpie_Sch_01_FK FOREIGN KEY
	(FK_ER01_WE01_Vertragsspiegel)
	REFERENCES ER01_WE01_Vertragsspiegel_BL
	(SK_ER01_WE01_Vertragsspiegel);

ALTER TABLE ER01_WE01_Vertragsspiegel_BL ADD CONSTRAINT ER01_WE01_VertrSpie_BL_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_WE01_Vertragsspiegel_BL ADD CONSTRAINT ER01_WE01_VertrSpie_BL_WE01_FK FOREIGN KEY
	(FK_WE01_Vertrag)
	REFERENCES WE01_Vertrag_BH
	(SK_WE01_Vertrag);

ALTER TABLE ER01_WE03_DeckSpie_Sch_01_LBS ADD CONSTRAINT ER01_WE03_DeckSp_Sch_01_FK FOREIGN KEY
	(FK_ER01_WE03_Deckungsspiegel)
	REFERENCES ER01_WE03_Deckungsspiegel_BL
	(SK_ER01_WE03_Deckungsspiegel)
	ON DELETE SET NULL;

ALTER TABLE ER01_WE03_Deckungsspiegel_BL ADD CONSTRAINT ER01_WE03_DeckSp_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_WE03_Deckungsspiegel_BL ADD CONSTRAINT ER01_WE03_DeckSp_WE03_FK FOREIGN KEY
	(FK_WE03_Risiko)
	REFERENCES WE03_Risiko_WE02_BW
	(SK_WE03_Risiko);

ALTER TABLE ER02_LE02_BL ADD CONSTRAINT ER02_LE02_BL_Teilschaden_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER02_LE02_BL ADD CONSTRAINT ER02_LE02_BL_Zahlung_Detail_FK FOREIGN KEY
	(FK_LE02_Zahlung_Detail)
	REFERENCES LE02_Zahlung_Detail_LE01_BW
	(SK_LE02_Zahlung_Detail);

ALTER TABLE ER02_LE04_BL ADD CONSTRAINT ER02_LE04_BL_Regresspo_FK FOREIGN KEY
	(FK_LE04_Regressposition)
	REFERENCES LE04_Regressposition_LE03_BW
	(SK_LE04_Regressposition);

ALTER TABLE ER02_LE04_BL ADD CONSTRAINT ER02_LE04_BL_Teilsch_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER02_LE04_SHUKR_01_LBS ADD CONSTRAINT ER02_LE04_BL_FK FOREIGN KEY
	(FK_ER02_LE04)
	REFERENCES ER02_LE04_BL
	(SK_ER02_LE04)
	ON DELETE CASCADE;

ALTER TABLE ER02_LE08_Anspruch_SHUKR_BL ADD CONSTRAINT ER02_LE08_Anspruch_FK FOREIGN KEY
	(FK_LE08_Anspruch)
	REFERENCES LE08_Anspruch_BH
	(SK_LE08_Anspruch);

ALTER TABLE ER02_LE08_Anspruch_SHUKR_BL ADD CONSTRAINT ER02_LE08_Teilschaden_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE ER02_Teilschaden_DWH_01_WBS ADD CONSTRAINT ER02_DWH_01_WBS_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden)
	ON DELETE CASCADE;

ALTER TABLE ER02_Teilschaden_ER01_BW ADD CONSTRAINT ER02_Teilschaden_ER01_Sch_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER02_Teilschaden_SHUKR_01_WBS ADD CONSTRAINT ER02_SHUKR_01_WBS_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden);

ALTER TABLE GE01_Gebiet_Sch_01_HBS ADD CONSTRAINT GE01_Gebiet_SCH_01_HBS_FK FOREIGN KEY
	(FK_GE01_Gebiet)
	REFERENCES GE01_Gebiet_BH
	(SK_GE01_Gebiet);

ALTER TABLE LE01_KT01_Beleg_BL ADD CONSTRAINT LE01_KT01_Beleg_BL_Beleg_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE LE01_KT01_Beleg_BL ADD CONSTRAINT LE01_KT01_Beleg_BL_Zahlung_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE LE01_LE03_BL ADD CONSTRAINT LE01_LE03_Regress_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress)
	ON DELETE CASCADE;

ALTER TABLE LE01_LE03_BL ADD CONSTRAINT LE01_LE03_Zahlung_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung)
	ON DELETE CASCADE;

ALTER TABLE LE01_Zahlung_DWH_01_HBS ADD CONSTRAINT LE01_Zahlung_DWH_01_HBS_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE LE01_Zahlung_SHUKR_01_HBS ADD CONSTRAINT LE01_Zahlung_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE LE02_LE08_ZahlDet_Anspruch_BL ADD CONSTRAINT LE02_LE08_BL_Anspruch_FK FOREIGN KEY
	(FK_LE08_Anspruch)
	REFERENCES LE08_Anspruch_BH
	(SK_LE08_Anspruch);

ALTER TABLE LE02_LE08_ZahlDet_Anspruch_BL ADD CONSTRAINT LE02_LE08_BL_Zahlung_Detail_FK FOREIGN KEY
	(FK_LE02_Zahlung_Detail)
	REFERENCES LE02_Zahlung_Detail_LE01_BW
	(SK_LE02_Zahlung_Detail);

ALTER TABLE LE02_Zahlung_Det_DWH_01_WBS ADD CONSTRAINT LE02_Zahlung_Det_DWH_01_WBS_PK FOREIGN KEY
	(FK_LE02_Zahlung_Detail)
	REFERENCES LE02_Zahlung_Detail_LE01_BW
	(SK_LE02_Zahlung_Detail);

ALTER TABLE LE02_Zahlung_Det_SHUKR_01_WBS ADD CONSTRAINT LE02_Zahlung_Det_SHUKR_01_WBS2 FOREIGN KEY
	(FK_LE02_Zahlung_Detail)
	REFERENCES LE02_Zahlung_Detail_LE01_BW
	(SK_LE02_Zahlung_Detail);

ALTER TABLE LE02_Zahlung_Detail_LE01_BW ADD CONSTRAINT LE02_Zahlung_Det_BW_LE01_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE LE03_Regress_Bilanz_01_HBM ADD CONSTRAINT LE03_Regress_Bilanz_01_HBM_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress);

ALTER TABLE LE03_Regress_SHUKR_01_HBS ADD CONSTRAINT LE03_Regress_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress);

ALTER TABLE LE04_Regresspos_SHUKR_01_WBS ADD CONSTRAINT LE04_Regresspos_SHUKR_01_WBS_2 FOREIGN KEY
	(FK_LE04_Regressposition)
	REFERENCES LE04_Regressposition_LE03_BW
	(SK_LE04_Regressposition);

ALTER TABLE LE04_Regressposition_LE03_BW ADD CONSTRAINT LE04_Regresspos_BW_LE03_FK FOREIGN KEY
	(FK_LE03_Regress)
	REFERENCES LE03_Regress_BH
	(SK_LE03_Regress);

ALTER TABLE LE09_Rueckst_Bilanz_01_HBM ADD CONSTRAINT LE09_Rueckst_Bilanz_01_HBM_FK FOREIGN KEY
	(FK_LE09_Rueckstellung)
	REFERENCES LE09_Rueckstellung_BH
	(SK_LE09_Rueckstellung);

ALTER TABLE LE09_Rueckst_SHUKR_01_HBS ADD CONSTRAINT LE09_Rueckst_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_LE09_Rueckstellung)
	REFERENCES LE09_Rueckstellung_BH
	(SK_LE09_Rueckstellung);

ALTER TABLE PA01_PA02_ER01OB01_BL ADD CONSTRAINT PA01_PA02_ER01OB01_BL_EROB_FK FOREIGN KEY
	(FK_ER01_OB01_beschObjekt)
	REFERENCES ER01_OB01_beschObjekt_BL
	(SK_ER01_OB01_beschObjekt)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER01OB01_BL ADD CONSTRAINT PA01_PA02_ER01OB01_BL_PA01_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER01OB01_BL ADD CONSTRAINT PA01_PA02_ER01OB01_BL_PA02_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER01OB01_SHUK_01_LBS ADD CONSTRAINT PA01_PA02_ER01OB01_SHUK_01_FK FOREIGN KEY
	(FK_PA01_PA02_ER01OB01)
	REFERENCES PA01_PA02_ER01OB01_BL
	(SK_PA01_PA02_ER01OB01)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER01_BL ADD CONSTRAINT PA01_PA02_ER01_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_ER01_BL ADD CONSTRAINT PA01_PA02_ER01_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_ER01_BL ADD CONSTRAINT PA01_PA02_ER01_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE PA01_PA02_ER01_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER01_Par_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_ER01)
	REFERENCES PA01_PA02_ER01_BL
	(SK_PA01_PA02_ER01);

ALTER TABLE PA01_PA02_ER02_BL ADD CONSTRAINT PA01_PA02_ER02_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_ER02_BL ADD CONSTRAINT PA01_PA02_ER02_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_ER02_BL ADD CONSTRAINT PA01_PA02_ER02_Teilschaden_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_ER02_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_ER02_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_ER02)
	REFERENCES PA01_PA02_ER02_BL
	(SK_PA01_PA02_ER02)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_LE01_BL ADD CONSTRAINT PA01_PA02_LE01_BL_PartnRol_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_LE01_BL ADD CONSTRAINT PA01_PA02_LE01_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_LE01_BL ADD CONSTRAINT PA01_PA02_LE01_BL_Zahlung_FK FOREIGN KEY
	(FK_LE01_Zahlung)
	REFERENCES LE01_Zahlung_BH
	(SK_LE01_Zahlung);

ALTER TABLE PA01_PA02_LE01_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_LE01_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_LE01)
	REFERENCES PA01_PA02_LE01_BL
	(SK_PA01_PA02_LE01)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_LE08_BL ADD CONSTRAINT PA01_PA02_LE08_BL_Anspruch_FK FOREIGN KEY
	(FK_LE08_Anspruch)
	REFERENCES LE08_Anspruch_BH
	(SK_LE08_Anspruch);

ALTER TABLE PA01_PA02_LE08_BL ADD CONSTRAINT PA01_PA02_LE08_BL_PartnRol_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_LE08_BL ADD CONSTRAINT PA01_PA02_LE08_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_LE08_SHUKR_01_LBS ADD CONSTRAINT PA01_PA02_LE08_SHUKR_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_LE08)
	REFERENCES PA01_PA02_LE08_BL
	(SK_PA01_PA02_LE08)
	ON DELETE CASCADE;

ALTER TABLE PA01_Partner_Sch_01_HBS ADD CONSTRAINT PA01_Partner_Sch_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA02_PartnerRolle_Par_01_HBS ADD CONSTRAINT PA02_PartRolle_Par_01_HBS_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PR01_Produkt_SHUKR_01_HBS ADD CONSTRAINT PR01_Produkt_SHUKR_01_HBS_FK FOREIGN KEY
	(FK_PR01_Produkt)
	REFERENCES PR01_Produkt_BH
	(SK_PR01_Produkt);

ALTER TABLE WE01_WE02_WE03_BBL ADD CONSTRAINT WE01_WE02_WE03_BL_Risiko_FK FOREIGN KEY
	(FK_WE03_Risiko)
	REFERENCES WE03_Risiko_WE02_BW
	(SK_WE03_Risiko);

ALTER TABLE WE01_WE02_WE03_BBL ADD CONSTRAINT WE01_WE02_WE03_BL_VEL_FK FOREIGN KEY
	(FK_WE02_Vertragselement)
	REFERENCES WE02_Vertragselement_WE01_BW
	(SK_WE02_Vertragselement);

ALTER TABLE WE01_WE02_WE03_BBL ADD CONSTRAINT WE01_WE02_WE03_BL_Vertrag_FK FOREIGN KEY
	(FK_WE01_Vertrag)
	REFERENCES WE01_Vertrag_BH
	(SK_WE01_Vertrag);

ALTER TABLE WE02_Vertragselement_WE01_BW ADD CONSTRAINT WE02_Vertragsel_WE01_BW_FK FOREIGN KEY
	(FK_WE01_Vertrag)
	REFERENCES WE01_Vertrag_BH
	(SK_WE01_Vertrag);

ALTER TABLE WE03_Risiko_SachHU_01_WBS ADD CONSTRAINT WE03_Risiko_SachHU_01_WBS_FK FOREIGN KEY
	(FK_WE03_Risiko)
	REFERENCES WE03_Risiko_WE02_BW
	(SK_WE03_Risiko);

ALTER TABLE WE03_Risiko_WE02_BW ADD CONSTRAINT WE03_Risiko_WE02_BW_FK FOREIGN KEY
	(FK_WE02_Vertragselement)
	REFERENCES WE02_Vertragselement_WE01_BW
	(SK_WE02_Vertragselement);

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.FK_ER01_WE03_Deckungsspiegel IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.SK_ER01WE03_ER02_DeckSp IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_DeckSp_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.FK_ER01WE03_ER02_DeckSp IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01WE03_ER02_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.FK_ER01_ER01_gleiches_Ereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_glEr_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.FK_ER01_Schaden_P IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.SK_ER01_ER01_gleiches_Ereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER01_gleiches_Ereignis_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.SK_ER01_ER02_LE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.FK_LE09_Rueckstellung IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.SK_ER01_ER02_LE09 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_LE09_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.FK_ER01_GE01_Schadenort IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_SchOrt_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.FK_GE01_Gebiet IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.SK_ER01_GE01_Schadenort IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_GE01_Schadenort_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.SK_ER01_LE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_LE03_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.FK_OB01_Objekt IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.SK_ER01_OB01_beschObjekt IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_beschObjekt_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.FK_PR01_Produkt IS
'... ist die DEVK-Weit eindeutige Nummer des Produkts.
... von DWH generiert, da keine einheitliche Quelle

Datenschutz $-

';

COMMENT ON COLUMN ER01_PR01_BL.SK_ER01_PR01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.FK_ER01_PR01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PR01_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_BH.SK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Anlagejahr IS
'... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'')

für CM:
aus ICLCLAIM.CREATETIME

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.AnzahlTote IS
'.. ist die Anzahl der Toten

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.AnzahlVerletzte IS
'.. ist die Anzahl der Verletzten

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Abgabe_RD IS
'Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an eine andere RD (Regionaldirektion) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag.

ja/nein

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Abgabe_Z IS
'Kennzeichen Abgabe an Z

Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an die Z (Zentrale) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund IS
'... ist die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Dreiv_Spaet_Schaden IS
'...gibt an, ob ein Schaden in den ersten drei Quartalen eingetreten ist und erst zu einem späteren Zeitpunkt beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

if Monat( Eintrittsdatum) <= 9
and (Monat ( Meldedatum) >= 10
or Jahr ( Eintrittsdatum) < Jahr ( Meldedatum) )
then ''ja''
else ''nein''


Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung IS
'... ist das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

durch Betrachtung de anlegenden und bearbeitenden User zu ermitteln (dunkel: technische User)

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Geschäftsjahres) ereignet hat und gemeldet wurde.

if Eintrittsjahr = Meldejahr then ''ja''
else ''nein''

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet IS
'Kennzeichen Schaden im GJ wiedereröffnet

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und irgendwann im GJ bis zum Betrachtungszeitpunkt den Status ‚geöffnet‘ hatte bzw. aktuell hat oder im GJ eine Zahlung erfolgt ist.
Jede Öffnung eines Schadens wird hierbei betrachtet, unabhängig davon, ob sie monetäre Auswirkungen hatte bzw. haben könnte.

ja/nein

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet_monetaer IS
'"Kennzeichen Schaden im GJ wiedereröffnet monetär

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und im GJ des Betrachtungszeitpunktes entweder zum Stichtag den Status ‚geöffnet‘ hat und eine Rückstellung gesetzt wurde oder aber im Laufe des GJ eine Zahlung erfolgt ist.
Der Fokus hier liegt darin, ob eine Wiedereröffnung des Schadens monetäre Auswirkungen hatte bzw. haben könnte.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Halbj_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Halbjahr eingetreten ist und erst in einem späteren Halbjahr beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

if Monat( Eintrittsdatum) <= 6 and Monat( Meldedatum) >= 7
or Jahr ( Eintrittsdatum) < Jahr ( Meldedatum) then ''ja''
else ''nein''


Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Hausakte IS
'... ist das Kennzeichen, ob es sich um einen "Hausakte"-Schaden handelt oder nicht.

ja/nein

"Hausakte"-Schäden werden dazu verwendet, um beispielsweise Zahlungen für den Betrieb von Notrufsäulen oder Rechnungen für Sammelvorgänge (z.B. Massengutachten) vornehmen zu können . 

aus ICLCLAIM.POLPROD:
''ja'' bei Ausprägungen  ZKHAG, ZKHAV, ZHHAG, ZHHAV, ZHRHAV, ZHRHAG, ZGHAV, ZGHAG 
''nein'' sonst

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss IS
'... ist die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16)

(ehem. "KAS")

"Fehlanlage",  "unbelastend", "belastend", "unbelastend (TA)", "unbelastend (TB16)"

Wenn ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage
						dann ‚Fehlanlage‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch
	und nicht ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt
						dann ‚unbelastend‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_Sparte = 11
	und C_VersicherungsschutzVersagt
						dann ‚belastend‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch
	und nicht ER01_Schaden_SHUKR_01_HBS.C_KeineStufung
						dann ‚belastend‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung
						dann ‚unbelastend (TA)‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch
	und ER01_Schaden_SHUKR_01_HBS.C_KeineStufung
						dann ‚unbelastend (TA)‘
Wenn ER01_Schaden_SHUKR_01_HBS.C_Sparte in {11, 14}
	und C_Schaden_rueckgekauft
						dann ‚unbelastend (TB16)‘

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_OE IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und  keinerlei reine Entschädigungs- oder reine Rentenzahlungen geflossen sind.
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Das Kennzeichen ‚o.E.‘ wurde früher auch als ‚o.Z.‘ bezeichnet (ohne Zahlung). 

ja/nein

if C_Bearbeitungsstatus = "Geschlossen" then
	if Zahlung_rein_Entsch <= 0 and Zahlung_rein_Rente <= 0 then "ja"
	else "nein"
else NULL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_ProzessKennzeichen IS
'... gibt an, ob es im Zuge der Schadenregulierung eine gerichtliche Auseinandersetzung gegeben hat / gibt.

ja/nein

exists( select 1 from ER01_ER02_ER03_BL link
			where link.FK_ER01_Schaden = ER01_Schaden_DWH_01_HBS.FK_ER01_Schaden)
or exists( select 1 from ER01_ER02_ER03_BL link,
										ER02_Teilschaden_ER01_BW weaklink
			where weaklink.FK_ER01_Schaden = ER01_Schaden_DWH_01_HBS.FK_ER01_Schaden
			   and  weaklink.SK_ER02_Teilschaden = link.FK_ER02_Teilschaden))

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Quartal_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Quartal eingetreten ist und erst in einem Folgequartal beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

if Monat( Eintrittsdatum) <= 3 and Monat ( Meldedatum) >= 4
or Monat( Eintrittsdatum) <= 6 and Monat ( Meldedatum) >=7
or Monat( Eintrittsdatum) <= 9 and Monat ( Meldedatum) >= 10
or Jahr ( Eintrittsdatum) < Jahr ( Meldedatum) then ''ja''
else ''nein''

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Schaden_rueckgekauft IS
'Kennzeichen im Kfz-Bereich, dass der Versicherungsnehmer die Zahlungen für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

if exists(
				select * from ER01_LE03_BL									Link,
										LE03_Regress_SHUKR_01_HBS		Regress
				where Link.FK_LE03_Regress 		= Regress.FK_LE03_Regress
				and Link.FK_ER01_Schaden 		= ER01_Schaden_DWH_01_HBS.FK_ER01_Schaden
				and Regress.C_Regressart 			= ''SFR-Rückkaufsangebot''
				and (Regress.C_Regressstatus 	= ''Regress volleingezahlt''
						or (Regress.C_Regressstatus = ''Regress geschlossen''
							and exists(	select * from 	LE01_LE04_BL									zahllink,
																		LE04_Regressposition_LE03_BW	Regresspos
																		LE01_Zahlung_SHUKR_01_HBS	zahlung
												where	Regresspos.FK_LE03_Regress			= Regress.SK_LE03_Regress
												and		zahllink.FK_LE04_Regressposition	= Regresspos.SK_LE04_Regressposition
												and		zahllink.FK_LE01_Zahlung				= zahlung.SK_LE01_Zahlung
												and		zahlung.C_ZahlungStatus				in (9 ''Erhalten'', T ''Ausgeglichen''))))
then ''ja''
else ''nein''

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Kalenderjahr eingetreten ist, das vor dem Kalenderjahr der Meldung beim Versicherungsunternehmen liegt.

if Eintrittsjahr < Meldejahr then ''ja''
else ''nein''

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_anl_Stelle IS
'Merkmal einrichtende Bearbeitungsstelle

... gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_aufwandsneutral IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und der Schadenaufwand ohne innere Kosten <=0 ist. 
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.

ja/nein

if C_Bearbeitungsstatus = "Geschlossen" then
	if Schadenaufwand_ohne_IK <= 0 then "ja"
	else "nein"
else NULL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_aufwandsneutral_ohne_SRK IS
'Kennzeichen aufwandsneutral ohne äußere Schadenregulierung

Bei einem Schaden wird dieses Kennzeichen gesetzt, wenn er den Schadenstatus ‚Abgeschlossen'' hat und die saldierten Schadenzahlungen für Entschädigungen und Renten <=0 sind. Aufwendungen für äußere Schadenregulierung können dagegen aufgetreten sein, der Schaden muss also nicht insgesamt aufwandsneutral sein.  Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Hinweis: Dies entspricht inhaltlich der bisherigen o.E.-Logik in der SDS-Statistik

ja/nein

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_zust_SBGrp IS
'Merkmal zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.C_zust_Stelle IS
'Merkmal zuständige Bearbeitungsstelle

... gibt an, durch welche Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung IS
'Datum, zu dem ein Schaden das erste Mal in den Status ‚wiedereröffnet‘ versetzt wurde, d.h. aus dem Status ‚abgeschlossen‘ in den Status ‚geöffnet‘ übergegangen ist, wobei zwischen dem ersten Schadenschluss und der Wiedereröffnung ein Jahreswechsel liegen muss und die Wiedereröffnung muss monetäre Auswirkungen haben, d.h. es ist entweder eine Zahlung im Jahr der Wiedereröffnung erfolgt oder in der Bilanz zum Jahresende der Wiedereröffnung wurde eine Rückstellung gesetzt. 

sonst 31.12.9999

Dieser Begriff ist insbesondere für den Bereich Rechtsschutz relevant, um eine korrekte Zuordnung zur Rückstellung sicherzustellen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Schadenbearbeitung in Arbeitstagen bis zur ersten Entschädigungs- oder Rentenzahlung.

select	min( Werktag_Nr_ab_Stichtag) - Durchlaufzeit_gesamt_Beginn (+1 ???)
from	LE01_Zahlung_SHUKR_01_HBS	sat,
			ER01_ER02_LE01_BL						link,
			RE01_Kalender_DWH_01_HBS	bis
where	bis.FK_RE01_Kalender= ???
and		bis.Datum = sat.Buchgungsdatum, sat.Belegdatum, sat.Nettofaellifkeit ???
and		(link.FK_ER01_Schaden = sat.FK_ER01_Schaden
or			link.FK_ER02_Teilschaden in (	select	SK_ER02_Teilschaden
																from	ER02_Teilschaden_ER01_BW
																where	FK_ER01_Schaden = sat.FK_ER01_Schaden))

--> Historie beachten !!!
--> Zahlungen qualifizieren (Leistungsart?)

number (16, 8)

Datenschutz $B';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Eintrittsjahr IS
'... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'')

für CM:
aus ICLCLAIM.DATELOSS

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Meldejahr IS
'... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es zählt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'')

für CM:
aus ICLCLAIM.LOSSREPCOMPA

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_initial IS
'Initial-Summe gesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_initial_Entsch IS
'Initial-Summe gesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_initial_Rente IS
'Initial-Summe gesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_initial_SRK IS
'Initial-Summe gesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_offen IS
'Offene gesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_offen_Entsch IS
'Offene gesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_offen_Rente IS
'Offene gesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_gesi_offen_SRK IS
'Offene gesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_initial IS
'Initial-Summe ungesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (''ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_initial_Entsch IS
'Initial-Summe ungesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_initial_Rente IS
'Initial-Summe ungesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_initial_SRK IS
'Initial-Summe ungesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_offen IS
'Offene ungesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_offen_Entsch IS
'Offene ungesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_offen_Rente IS
'Offene ungesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Regress_ungesi_offen_SRK IS
'Offene ungesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckkaufbetrag IS
'Betrag im Kfz-Bereich, den der Versicherungsnehmer für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckstellung_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckstellung_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckstellung_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckstellung_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Rueckstellungen_saldiert IS
'Saldierte Schadenrückstellungen
Summe aller zum Betrachtungszeitpunkt noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines Schadens. Offene Anteile gesicherter Regresse werden dabei berücksichtigt.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Schadenaufwand_ohne_IK IS
'Schadenaufwand ohne innere Kosten

Gesamter Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseingänge, Rückstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht berücksichtigt, ebenso innere Kosten.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Schadenschlussjahr IS
'... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde

aus Schadenschlussmeldedatum

Datenschutz $-?
';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum IS
'... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde


Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastenden und nicht belastenden Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_01_HBS.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse IS
'... ist eine dem Schaden anhand von Sparte, C_Ereignisart ("Art des Schadens") und C_Schadenursache zugeordnete Eigenschaft mit den Ausprägungen

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Ein Schaden kann mehreren "Klassen" angehören. Die Sammelereignis-Klasse dient der Zuordnung des Schadens zu Sammelereignissen bzw. Sammelereignis-Teilen (also Naturkatastrophen und deren RV-relevanten Anteilen)

Datenschutz $-?';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_DWH_02_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso IS
'Abgabedatum an Inkassobüro

aus ICLCLAIM.ZZCOL_SMT_DT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ICLCLAIM.ZZATV

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum IS
'... ist das Datum an dem der Bearbeitungsstatus eingetreten ist.

Für den Status geschlossen ist das das Schadenschlussmeldedatum.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum IS
'... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.BelastendeZahlungen IS
'

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_AktiveMeldung IS
'Aktive Meldung an Uniwagnis

Ja / Nein

aus ICLCLAIM.ZZUNIW_ACT_MSG

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Auffaelligkeit IS
'Auffälligkeiten

Ja / Nein

aus ICLCLAIM.ZZUNIW_SUSPICION

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als hätte sich der Schaden in Deutschland ereignet.

Ja / nein

aus ICLCLAIM.ZZAUSLANDFALL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus IS
'... gibt Auskunft über den Status der Bearbeitung

0		Offen
1		Wiedereröffnet
2		Geschlossen
3		Ereignis ohne Forderung

Bisher nicht verwendet:

4		Geschlossen bis auf …
5		Ungültig: nicht bearbeitet
6		Abgelehnt
7		Storniert
8		Genehmigt
9		Beauftragt
10	Freigegeben
11	Begründet
12	Protokolliert
13	Ungültig
14	Keine Differenzen
15	Ausgewählt
16	Bearbeitet
17	Abgeschlossen
18	Umgebucht
19	zu genehmigen
20	<DEFAULT>
21	Zahlung auszuführen
22	Zahlung ausgeführt
23	Rückläufer
24	Scheck auszustellen
25	Scheck ausgestellt
26	Scheck einzulösen
27	Scheck eingelöst
28	Scheck gesperrt
29	Scheck ungültig
30	Beleg ausgeglichen
31	Akzeptiert
32	extRP - in Schwebe
33	extRP - in Bearbeitung
40	Gefordert
41	Ausgeglichen
90	Beauftragt mit Eingang
91	Referenziert (Nachfolger)

aus ICLCLAIM.STATUS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_BearbeitungsstatusGrund_B IS
'.... Grund für den Bearbeitungsstatus (Auswahlbox in SAP, daher auswertbar)

z.B. Fehlanlage, Betrug, keine Haftung, keine Deckung

Ausprägungen lt. Schnittstelle (Stichprobe):
02			9
K4			2
K6			2
K8			1
K9			12
KA			9
NULL		324.682

Datenschutz $B';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle IS
'... ist die RD oder Zentrale, in der der Schaden bearbeitet wird. Entspricht NICHT automatisch der vertragsführenden Stelle.
Klären: evtl. als Schadenrolle abbilden??

aus ICLCLAIM.ZZZBS_NEW ?

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP IS
'Bewertung VtP-Regulierung

Kein Versicherungsschutz/ keine Ersatzpflicht
Neuwert statt Zeitwert
Regulierung über dem Limit
Mehrwertsteuer nicht abgezogen
Selbstbehalt nicht berücksichtigt
Steuerungstarif nicht beachtet
Fehler bei Marderbissschäden
Pauschale Regulierung
Sonstiges
Regulierung zu hoch
Schadenhergang nicht plausibel
Keine Vollmacht für Sparte


aus ICLCLAIM.ZZVTP_SELT_EVAL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone IS
'Zeitzone des Eintrittsdatums

aus ICLCLAIM.LTIMEZONE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Ereignisart IS
'.. spezifiziert die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ICL.CLAIM.LOSSTYPE

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datentyp: varchar2(10)

in Rechtsschutz sehr ähnlich der "Leistungsart":

01-KFZ-Straftat
02-KFZ-Schdenersatz-RS
03-KFZ-Vertrags-RS
04-KFZ-Vers-Vertrags-RS
05-KFZ-Steuer-RS
16-KFZ-Verwaltungs-RS
18-KFZ-Straf-RS
19-KFZ-OWI-RS
51-Allg Straf-RS
52-Schadenersatz-RS
53-Arbeits-RS
54-Sozialgerichts-RS
55-Beratungs-RS
56-Allg Vertrags-RS
58-Vers Vertrag-RS
59-Allg Steuer-RS
60-Führerschein-RS
66-Allg Verwaltungs-RS
67-Diszipl Standes-RS
68-Allg Straf-RS
69-Allg OWI-RS
71-Opfer-RS
98-St -RS für Grund Miete
99-RS für Grund Miete

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ICLCLAIM.COVERED

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage IS
'Fehlanlage

Ja / nein

aus ICLCLAIM.ZZCREA_BYMISTAKE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch IS
'Merker, ob Schließen mit Entschädigung

Ja/Nein

aus ICLCLAIM.ZZCLOSE_WI_COMP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch IS
'Merker, ob Schließen ohne Entschädigung

Ja/Nein

aus ICLCLAIM.ZZCLOSE_WO_COMP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung IS
'Keine Belastung trotz Entschädigungszahlungen (Teilungsabkommen)

Ja / Nein

aus ICLCLAIM.ZZCOMPEN_NOPEN

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

Ja / Nein

aus ICLCLAIM.ZZ_BUSINESS_TRIP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet IS
'... gibt die Komplexität des Schadens an.

Gültige Werte sind:
Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ICLCLAIM.COMPLEX

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Meldeweg IS
'.. über welchen Kanal hat die Schadenmeldung die DEVK erreicht.

z.B. telefonisch
aus ICLCLAIM.ZZCOM_CHANNEL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Migriert IS
'migrierter Schaden

Ja / Nein

aus ICLCLAIM.ZZMIGRATED_CASE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger IS
'.. ist das Unternehmen, das  die Regulierung durchführt. Muss im Schaden zusätzlich zu Vertrag geführt werden, weil es abweichen kann. (Regulierung kann abweichend von Vertragsführung sein).
Stand heute sind beide (Vertrag, Schaden) gleich.

aus Attribut "Policenprodukt"=ICLCLAIM.POLPROD:

ZKHAG = Hausakten Kraftfahrt G
ZKHAV = Hausakten Kraftfahrt V
ZKPG = Kraftfahrt G
ZKPV = Kraftfahrt V

urspr. Datentyp: varchar2(10)

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_SFR_Belastung IS
'SFR-Belastung

Ja / nein

aus ICLCLAIM.ZZCHK_CHARGE_CL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_SchadenOhneForderung IS
'Schaden ohne Forderung

Berücksichtigt alle Teilschäden oder nur den "Fallkopf"??

aus ICLCLAIM,STNOCLAIM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B IS
'Interne "Fallart"

aus ICLCLAIM.CLAIMTYPE

1DKF		Hilfsmittel (PKV)
1H00		DE: Privathaft. Person
1H01		DE: Privathaft. SachVermMiet
1K01		DE: KH (Personen, Sach, Verm.)
1K02		DE: KH (Sach, Verm÷gen)
1K03		DE: Vollkasko
1K04		DE: Teilkasko Brand/Explosion
1K05		DE: Teilkasko Entwendung
1K06		DE: Teilkasko Glasbruch
1K07		DE: Teilkasko Elementarschaden
1K08		DE:Teilkasko Tier-/Wildschaden
1K09		DE: Teilkasko Marderbiss
1K10		DE: Teilkasko Kurzschluss
1K11		DE: Teilkasko Sonst TK-Tatbes.
1L00		DE: Hausrat Brand, Blitz
1L01		DE: Hausrat Sturm,Hagel
1L02		DE: Hausrat Leitungswasser
1L03		DE: Hausrat Einbruch,Diebstahl
1L04		DE: Hausrat Glasbruch
1L05		DE: Hausrat Fahrraddiebstahl
20AQ		Unfallfragebogen
20KO		Kieferorthop?die
20PH		Pharma II
20TR		Arzt-/Zahnbehandlung
20ZE		Zahnersatz
21KO		Kieferorthop?die
2610		Sammelregress (Dummy-Fall)
2AP			GKV: Allgemeiner Prozess
2FK			Fahrkosten
2HM		GKV: Heilmittel
2KST		Krankenhaus station?r ab 2000
2RST		Rehabilitation station?r
2SA0		PKV Kompakt Tarif
2ZL			Zahnersatz
3KHT		Krankenhaustagegeld
3KTG		Krankentagegeld
4000		Privathaftpflicht
4010		Privathaftpflicht SVM
4200		Hausrat Brand, Blitz
4201		Hausrat Einbruch / Diebstahl
4202		Hausrat Leitungswasser
4203		Hausrat Sturm / Hagel
4204		Hausrat
5ACC		Unfall
HABB		Hausrat VHB2000/ Brand, Blitz
HAED		Hausrat VHB2000/ ED
HALW		Hausrat VHB2000/ LW, Rohrbruch
HAP		GKV: Allgemeiner Prozess
HAPF		Gesetzliche Pflegeversicherung
HART		Hausrat VHB2000
HASH		Hausrat VHB2000/ Sturm, Hagel
HFK			Fahrkostenantrag
HIKV		GKV: Hilfsmittel
HIMI		GKV: Hilfmittel
HIPV		PV: Hilfsmittel
HKP			GKV: H?usliche Krankenpflege
HKST		Krankenhaus station?r ab 2000
HM			GKV: Heilmittel
HPKV		Private Krankenversicherung
HT			HO Theft
HZL			Zahnersatz
KDDS		Kraft Diebstahl des Kfz
KDDT		Kraft Teilentwendung aus Kfz
KDZ			Kraft Unfall
MCOM	Accident: Comprehensive
MTFA		Fire and Theft
MTPA		Accident: Third Party only
PAPA		Auto: Collision
PAPG		Auto: Glass Breakage
PAPT		Auto: Fire and Theft
TDF1		Test DummyFall
TDF2		DummyFall
ZH			Allgemeine Haftpflicht
ZKH			Kraftfahrt Haftpflicht
ZKK			Kraftfahrt Vollkasko
ZKT			Kraftfahrt Teilkasko
ZKV			Kraftfahrt Schutzbrief
ZSAS		Sach Sonstige
ZSG			Sach Geb?ude
ZSH			Sach Hausrat

Datenschutz $B
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Schadenursache IS
'... ist die Ursache des Schadens

aus ICLCLAIM.LOSSCAUSE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN IS
'Schuldigkeit aus Sicht des VN

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus 

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU IS
'Schuldigkeit des VN aus Sicht des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus ICLCLAIM.VIEWFAULT

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Sparte IS
'... ist die Sparte [hier spezielle Art von Schaden, Sparten zu betrachten einschließlich "Hausakten"]

aus ICLCLAIM.ZZDIVISION

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Steuerung IS
'... gibt an, welche Art der Schadensteuerung stattgefunden hat.

Fraglich ist, wie die Inhalte auf Fall- und Teilfallebene korrespondieren??

aus ICLCLAIM.ZZCLAIM_MGT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_VIP_Schaden_C IS
'ein Schaden wird zum "VIP-Schaden", wenn mindestens eine am Schaden beteiligte Person das Kennzeichen VIP hat ( =geschützte Daten); so sind z.B. die Daten der DEVK-Mitarbeiter geschützt (besonders interessant für Zeugenschutz).

ja/ nein

aus ICLCLAIM.AUTHCLM

wegen Zeugenschutz: Datenschutz $C';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart IS
'Versicherungsart

aus ICLCLAIM.ZZ_VSARL_VX

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt IS
'Merker, ob Versicherungsschutz versagt

Ja / Nein

aus ICLCLAIM.ZZVSS_VERSAGT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle IS
'... ist die Stelle (RD), die den Vertrag verwaltet. Entspricht der RD aus der Schadennummer.
Klären: evtl. als Schadenrolle abbilden??

aus ICLCLAIM.ZZRD

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_Wagnis IS
'... gibt Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags an, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

Gültige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

aus ICLCLAIM.ZZ_BETR_WGA

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.C_sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ICLCLAIM.XSENSITIVE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegenüber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ICLCLAIM.ZZCOVERAGE_QUOTE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum IS
'... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit).

Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt.

Die Uhrzeit "00:00:00" wird als ''Uhrzeit nicht vorhanden'' interpretiert.

Falldatum in FS-CM, ICLCLAIM.DATELOSS + ICLCLAIM.TIMELOSS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am IS
'Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ICLCLAIM.ACHANGETIME

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_von_A IS
'Änderer der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ICLCLAIM.ACHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu sämtlichen Verträgen

aus ICLCLAIM.ZZCUST_PREMIUM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Loeschdatum IS
'... ist das Liquidationsdatum der Schadenakte.

aus ICLCLAIM.ZZLDA

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Meldedatum IS
'... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde (unabhängig ob vom VN oder Geschädigten, .....).

aus ICLCLAIM.LOSSREPCOMPA

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.SchadenSB_A IS
'... ist der Sachbearbeiter, der für den Schaden zuständig ist

aus ICLCLAIM.OWNER

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Schadennummer_A IS
'
aus CM:
ICLCLAIM.CLAIM (Schadennummer)

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum IS
'Datum der Wiedervorlage

aus ICLCLAIM.ARCHIVE_FLUD

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ICLCLAIM.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.angelegt_von_A IS
'... user, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ICLCLAIM.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLCLAIM.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLCLAIM.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_WE01_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.FK_WE01_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.SK_ER01_WE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Eintrittsdatum IS
'Dieses Attribut gehört zu Partner
======================

aus ICLPOL.ZZACV_ENTRYDATE

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitglied_A IS
'Dieses Attribut gehört zu Partner
======================

Nummer aus der BUT000 (Geschäftspartnertabelle)

aus ICLPOL.ZZACVMEB

Datenschutz $A1';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitgliedsnummer_A IS
'Dieses Attribut gehört zu Partner
======================

aus ICLPOL.ZZACVMEMBNO

Datenschutz $A1';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Autoplus IS
'Dieses Attribut gehört zu Produkt
======================

ja/nein

aus ICLPOL.ZZAUTOPLUS

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA IS
'Dieses Attribut gehört zu Produkt
======================

... ist die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

aus ICLPOL.ZZ_BZA

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel IS
'Dieses Attribut gehört zu Vertrag
======================

AVB-Schlüssel

aus ICLPOL.INSCOND_GEN

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Beitragsrueckstand IS
'Dieses Attribut gehört zu Vertrag
======================

aus ICLPOL.ZZARREARS_TAG

ja / nein

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK IS
'Dieses Attribut gehört zu Risiko
======================

Deckungsschlüssel Kasko

aus ICLPOL.ZZCOVERAGEKEYK

Datenschutz $-? Liste';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH IS
'Dieses Attribut gehört zu Risiko
======================

Deckungsschlüssel Haftpflicht

aus ICLPOL.ZZCOVERAGEKEYH

Datenschutz $-? Liste';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezFirma IS
'Dieses Attribut gehört zu Partner
======================

1. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS" 
aus ICLPOL.ZZGBS

Firma
1.Stelle = 0 Sonstige und ohne Bereich
1.Stelle = 1 Deutsche Bahn AG
1.Stelle = 2 DB AG-Nebenbetriebe,
                    -soziale Einrichtungen und
                    -Tochterunternehmen
1.Stelle = 3 sonstige öffentliche Linienverkehrsunternehmen
1.Stelle = 4 Bundesverkehrsministerium und nachgeordnete Behörden
1.Stelle = 5 Deutsche Bundespost
1.Stelle = 6 Sonstiger öffentlicher Dienst
1.Stelle = 7 Industrie, Baugewerbe, Bergbau
1.Stelle = 8 Handwerk, Landwirschaft            
1.Stelle = 9 Dienstleistung, Handel 

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezTaetigkeit IS
'Dieses Attribut gehört zu Partner
======================

2. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS" aus ICLPOL.ZZGBS

Tätigkeit
2.Stelle = 0 ohne Tätigkeit
2.Stelle = 1 Beamter
2.Stelle = 2 Angestellter
2.Stelle = 3 Arbeiter
2.Stelle = 4 Selbstständige, Freiberufler, Unternehmer,Geschäftsführer
2.Stelle = 5 Firmen und juristische Personen
2.Stelle = 6 Verbände, Vereine
2.Stelle = 7 nicht mehr tätig (Versorgungsempfänger)
2.Stelle = 8 Hausfrauen
2.Stelle = 9 Person in Ausbildung

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_KaskoMobil IS
'Dieses Attribut gehört zu Risiko
======================

aus  ICLPOL.ZZKASKO_KOMFORT

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname IS
'Dieses Attribut gehört zu Produkt
======================

... ist der Name des Produkts

aus ICLPOL.POLPROD

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Rabattschutz IS
'Dieses Attribut gehört zu Vertrag
======================

aus ICLPOL.ZZDISCOUT_PROTE

ja / nein

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Risikotraeger IS
'Dieses Attribut gehört zu Vertrag
======================

...ist das Unternehmenskennzeichen des Risikoträgers. Redundant zu PA01_PA02_WE01_BL mit der Rolle "Risikoträger", falls beide identisch sind (!).

aus ICLPOL.ZZUKZ

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart IS
'Dieses Attribut gehört zu Vertrag
======================

aus ICLPOL.ZZCONTRACT_TYPE

001	Pkw
002	Moped
003	Dummyvertrag (vorläufig)
004	Hausakte
005	Großvertrag Kraft
006	ACV
007	Dummyvertrag (endgültig)
008	Pkw (Historienstand gelöscht)
009	Moped (Historienstand gelöscht)
010	Hausrat
011	verbundene Gebäude
012	gebündelte Gebäude
013	Glas (vorläufig)
014	Glas privat
015	Glas gewerblich (TK Glas)
016	CUV
017	Haft
018	Reise
019	EC
020	TK (Inhalt gewerblich, nicht für Glas)
021	All Risk / Transnet / Vielschutz
022	TV (Technische Versicherung)
023	Dummy Sparte (Gebäude und Hausrat)
024	Historienstand gelöscht
025	Vertragsakte
026	Überlauf
027	Großvertrag (Sach und Haft)
028	Gebäude alt
029	TK Reise
030	Bauleistung Haft
130	Pkw (in Host-Struktur CSL50002 )
131	Moped (in Host-Struktur CSL50002 )

Datenschutz $-
';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Waehrung IS
'Dieses Attribut gehört zu Vertrag
======================

... ist die Limit- und Selbstbehaltwährung

aus ICLPOL.CURR

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart IS
'Dieses Attribut gehört zu Vertragselement
============================

Wagnisart aus dem Vertragsspiegel von CM

aus ICLPOL.ZZRISK_TYPE

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD IS
'Dieses Attribut gehört zu Vertrag
======================

...ist die vertragsführende RD. Redundant zu PA01_PA02_WE01_BL mit der Rolle "vertragsführende RD", falls beide identisch sind (!).

aus ICLPOL.ZZRD

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Enddatum IS
'Dieses Attribut gehört zu Vertrag
======================

... der Zeitpunkt, an dem der Versicherungsschutz endet. ???

aus ICLPOL.EXPIRY

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Materieller_Beginn IS
'Dieses Attribut gehört zu Vertrag
======================

... das Datum, an dem der Versicherungsschutz beginnt.

aus ICLPOL.INCEPTION

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseKH IS
'Dieses Attribut gehört zu Risiko
======================

Schadensfreiheitklasse Haftpflicht

aus ICLPOL.ZCLAIMFREECLH

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseVK IS
'Dieses Attribut gehört zu Risiko
======================

Schadensfreiheitklasse Vollkasko

aus ICLPOL.ZCLAIMFREECLK

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattKH IS
'Dieses Attribut gehört zu Risiko
======================

Schadenfreiheitsrabatt Haftpflicht

aus ICLPOL.ZZCLAIMFREEDISCH

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattVK IS
'Dieses Attribut gehört zu Risiko
======================

Schadenfreiheitsrabatt Vollkasko

aus ICLPOL.ZZCLAIMFREEDISCK

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A IS
'... ist die Versicherungsscheinnummer mit Prüfziffer

aus ICLPOL.POLICY

Datenschutz $A1';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungszweig IS
'Dieses Attribut gehört zu Produkt
======================

Der Versicherungszweig wird auch als Branchenschlüsselzahl (BSZ) gem. GDV bezeichnet

aus ICLPOL.ZZ_VZ

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.VertragsversionsNr IS
'... ist der Zähler der Vertragsversion in CM

aus ICLPOLM.POLVNR

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer IS
'
aus ICLPOL.ZZZNR_VNR

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_Deckung IS
'
aus ICLPOL.ZZZNR_VNR_COV 

Datenschutz $-?';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_InExkasso IS
'
aus ICLPOL.ZZZNR_VNR_CD

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_VertrSpie_Sch_01_LBM.geaendert_am IS
'.. ist das Datum und die Uhrzeit der Aktualisierung des Vertragsspiegels

aus ICLPOL.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.FK_WE01_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.SK_ER01_WE01_Vertragsspiegel IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE01_Vertragsspiegel_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Branchenname IS
'Name der Branche 

Aus ICLPOM.BRCHNR

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsart IS
'Dieses Attribut gehört zu Risiko
======================

Deckungsart

aus ICLPOLM.COVTYPE

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus IS
'Dieses Attribut gehört zu Risiko
======================

Deckungsstatus

Laufend
Wartezeit
Schwebend

aus ICLPOLM.STATUS

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.C_KaskoMobil IS
'Dieses Attribut gehört zu Risiko
======================


aus  ICLPOL.ZZKASKO_KOMFORT

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart IS
'Rueckversicherungsart

aus ICLPOLM.CEDED

Datenschutz $-? Definition';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Deckung IS
'... ist der Zähler für die Deckungen des Vertrags aus CM

aus ICLPOLM.COVERAGE

original char(4)

Datenschutz $-? Liste';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.DeckungName IS
'Dieses Attribut gehört zu Risiko
======================

Bezeichnung der Deckung

aus ICLPOLM.COVERAGEN

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.DeckungsartName IS
'Dieses Attribut gehört zu Risiko
======================

Bezeichnung der Deckungsart

aus ICLPOLM.COVTYPEN

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Enddatum IS
'Dieses Attribut gehört zu Risiko
======================

... der Zeitpunkt, an dem der Versicherungsschutz zur Deckung endet.

aus ICLPOLM.EXPIRY

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.FK_ER01_WE03_Deckungsspiegel IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Materieller_Beginn IS
'Dieses Attribut gehört zu Risiko
======================

... das Datum, an dem der Versicherungsschutz zur Deckung beginnt.

aus ICLPOLM.INCEPTION

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsklasse IS
'Dieses Attribut gehört zu Risiko
======================

Schadensfreiheitklasse für die jeweilige Deckung - Freitext

aus ICLPOL.ZZCLAIMFREECL

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsrabatt IS
'Schadenfreiheitsrabatt für di jeweilige Deckung

aus ICLPOL.ZZCLAIMFREEDISC

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.Vertragsteilnummer_A IS
'Dieses Attribut gehört zu Risiko
======================

eindeutige Vertragsteilnummer

aus ICLPOLM.COVERAGENR_TT

Datenschutz $A1
';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.VertragsversionsNr IS
'... ist der Zähler der Vertragsversion aus CM

aus ICLPOLM.POLVNR

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_am IS
'.. ist das Datum und die Uhrzeit der Aktualisierung des Vertragsspiegels

aus ICLPOL.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_von_A  IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICLPAYI.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.FK_WE03_Risiko IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.SK_ER01_WE03_Deckungsspiegel IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_WE03_Deckungsspiegel_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.FK_LE02_Zahlung_Detail IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.SK_ER02_LE02 IS
'

Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.FK_LE04_Regressposition IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.SK_ER02_LE04 IS
'

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.FK_ER02_LE04 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE04_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.FK_LE08_Anspruch IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.SK_ER02_LE08 IS
'

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_LE08_Anspruch_SHUKR_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugehörigen Gerichtsprozesse. 

Datenschutz $-?';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Teilschadenbearbeitung in Werktagen bis zur ersten Entschädigungs- oder Rentenzahlung.

select	min( Werktag_Nr_ab_Stichtag) - Durchlaufzeit__Beginn (+1 ???)
from	LE01_Zahlung_SHUKR_01_HBS	sat,
			ER01_ER02_LE01_BL						link,
			RE01_Kalender_DWH_01_HBS	bis
where	bis.FK_RE01_Kalender= ???
and		bis.Datum = sat.Buchgungsdatum, sat.Belegdatum, sat.Nettofaellifkeit ???
and		link.FK_ER02_Teilschaden = FK_ER02_Teilschaden

--> Historie beachten !!!
--> Zahlungen qualifizieren (Leistungsart?)

number (16, 8)
Datenschutz $B';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.

Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Teilsch_Rueckst_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Teilsch_Rueckst_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Teilsch_Rueckst_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastende und nicht belastende Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_01_WBS.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.SK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_ER01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja /Nein

ICLSUBCL.STREJECT

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Bearbeitungsstatus IS
'... gibt Auskunft über den Status der Bearbeitung des Teilschadens

Ausprägungen sind zu klären, evtl. wie bei Schaden???

aus ICLSUBCL.STATUS

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein

aus ICLCLAIM.XFRAUD:

wg. Nicht-Änderbarkeit in der Historie: Datenschutz $C';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart IS
'... ist die Art der Deckung (Komfort, Aktiv .....) und wird nicht als Attribut  realisiert sondern als Beziehung zu Vertrag (Risiko).

!! Es ist zu klären in welchem Zusammenhang Teilschadenart (Teilfallart) und Deckungsart stehen und ob ein Wert ggf. ausreicht

aus ICLSUBCL.COVERAGE ?

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_FalschberatungAussendienst IS
'... gibt an, ob durch den Außendienst eine falsche Beratung stattgefunden hat.

ja/ nein

aus ICLSUBCL.ZZCLAIM_SPECS = ''01'' dann ja, sonst nein


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Fehlanlage IS
'Fehlanlage

Ja / nein

ICLSUBCL.ZZCREA_BYMISTAKE

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet IS
'... gibt die Komplexität des Teilschadens an.

Gültige Werte sind (??):
Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ICLSUBCL.COMPLEX

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_RegulierungAussendienst IS
'... gibt an, ob die Regulierung durch den Aussendienst vorgenommen wurde

Leitet sich aus dem SDS-Feld Bemerkung ab.

Datentyp: char(1)

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_SchadenOhneForderung IS
'Schaden ohne Forderung

aus ICLSUBCL,STNOCLAIM

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_SchadenfeststellerVorOrt IS
'... gibt an, ob ein Schadenfeststeller vor Ort war.

ja/ nein

aus ICLSUBCL.ZZCLAIM_SPECS = ''03'' dann ja, sonst nein

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung IS
'... gibt an, welche Art der Schadensteuerung stattgefunden hat.

Fraglich ist, wie die Inhalte auf Fall- und Teilfallebene korrespondieren??

aus ICLSUBCL.ZZCLAIM_MGT

Datenschutz $-
';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_TeilfallUngueltig IS
'Teilfall ist ungültig

Ja / Nein

ICLSUBCL.STINVALID

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart IS
'... wird aus Quelle übernommen.

Es ist zu klären, ob neben der Information "Teilungsabkommen" weitere Infos notwendig sind (Dummyschaden, Teilkasko, ....) z.T. inhaltlich gleiche/ähnliche Werte wie Deckungsart. 

Verwendet z.B. bei KFZ Vollkasko-Teilschaden, der sich auf den Teilkasko-Anteil im Vollkasko bezieht

aus ICLSUBCL.SUBCLTYPE

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Haftungsquote IS
'.. ist nur in KH und Allg. H relevant und bezeichnet den Anteil der Haftung der DEVK gegenüber Dritten (Anspruchssteller).

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLSUBCL.CLIENT

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Schadennummer_A IS
'Schadennummer

aus ICLSUBCL.CLAIM ("Fallnummer" lt. CM)

Datenschutz $A1';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLSUBCL.SUBCLAIM ("Teilfallnummer" lt. CM)

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.Ueberstimmungsgrund IS
'Uberstimmungsgrund - laut SAP hinterliegt keine Werteliste.

aus ICLSUBCL.OVERRULEREASON

(original char(3))

Datenschutz $-? Liste
';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ICLSUBCL.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.angelegt_von_A IS
'... user, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ICLSUBCL.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLSUBCL.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_01_WBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLSUBCL.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN GE01_Gebiet_BH.SK_GE01_Gebiet IS
'
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Adress_Id_A IS
'Bezeichnet in CM eine Adressinformation, die einem SAP-Business Partner zugeordnet ist.

aus ADRC.ADDRNUMBER

Datenschutz $A1
';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Adresszusatz_A IS
'... ist eine unstrukturierte Ergänzung zur Adresse.
Beispiele:
-  Etage/Stock/OG/UG/Garten/Vorder-/Hinterhaus/..
-  Angaben bzgl. Ortsteile, Wohnungs-, Zimmer-,Appartement- und sonstige Nummern
-  Hinweise auf (vorübergehende) Mitbewohner(innen): "c/o", "z.Hd.", "bei",...

aus ADRC.STR_SUPPL1 || '' '' || ADRC.STR_SUPPL2 || '' '' || ADRC.STR_SUPPL3 || ADRC.LOCATION

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Bezirk IS
'Bezirk (US: County)

aus ADRC.COUNTY

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.C_Adress_Laenderversion IS
'.. bezeichnet das länderspezifische Format der Adresse ???

aus ADRC.NATION
in CM nicht gefüllt.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A IS
'Codierung des Orts für Orts- und Straßendatei

aus ADRC.CITY_CODE

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A IS
'Codierung des Ortsteils für Orts- und Straßendatei

aus ADRC.CITYP_CODE

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen IS
'.. ist das Land, in dem sich das Gebiet befindet.

aus ADRC.COUNTRY

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.C_Region IS
'Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

aus ADRC.REGION

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Etage_A IS
'... definiert das Geschoss, z.B. zur näheren Beschreibung eines Schadenortes

Werte: UG, EG, 01 (1_), 02 (2_), .... , 99 

aus ADRC.FLOOR

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet IS
'
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Gebaeude_A IS
'Gebäude (Nummer oder Kürzel)

aus ADRC.BUILDING

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Hausnummer_A IS
'aus ADRC.HOUSE_NUM1 || '' '' || HOUSE_NUM2

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Ortsname_A IS
'
aus ADRC.CITY1

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Ortsteil_A IS
'aus ADRC.CITY2

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Postleitzahl_A IS
'... ist die Postleitzahl zur Beschreibung eines Ortes, also keine Großkunden- oder Postfach-PLZ

aus ADRC.POST_CODE1

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.Strassenname_A IS
'aus ADRC.STREET

Datenschutz $A2';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_Sch_01_HBS.WohnungNr_A IS
'Nummer einer Wohnung, eines Appartements oder eines Raumes

aus ADRC.ROOMNUMBER

Datenschutz $A2';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.SK_LE01_KT01_Beleg_BL IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.SK_LE01_LE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_BH.SK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Buchungsjahr IS
'... ist das Kalenderjahr, in dem die Zahlung gebucht wurde. Aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum bzw. für CM: aus ICLPAY.POSTDATE

Datenschutz $-?
';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Buchungsmonat IS
'... ist der Kalendermonat, in dem die Zahlung gebucht wurde. Aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum bzw. für CM: aus ICLPAY.POSTDATE

1...12

Datenschutz $-?
';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.C_Bearbeitungsstelle IS
'... ist die RD oder Zentrale, die die Zahlung veranlasst hat.
Klären: evtl. als Schadenrolle abbilden??


Datenschutz $-?';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.C_Pruefung_Zuf IS
'... gibt an, ob die Zahlung per Zufallsgenerator für eine manuelle Prüfung ausgewählt wurde.

ja/ nein

Datenschutz $-?';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_DWH_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Belegdatum IS
'... Belegdatum der Zahlung

aus ICLPAY.DOCDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Betrag IS
'... ist der Gesamtbetrag der Zahlung -- Summe der Teilzahlungen?

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.BetragInEuro IS
'... ist der Gesamtbetrag der Zahlung in Euro -- Summe der Teilzahlungen in Euro?

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum IS
'... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird.

aus ICLPAY.POSTDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_BruttoNetto IS
'Steuertyp des Betrages

brutto / netto

Verhältnis zu den entsprechenden Kennzeichen der Zahlung_Detail ist zu klären.

aus ICLPAY.GROSS_NET_PAYMENT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_Migriert IS
'Zahlung zu migriertem Schaden

Ja / Nein

aus ICLPAY.MIGRATION

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung IS
'... gibt an, ob es sich um eine Zahlung oder Rückzahlung handelt

0	Auszahlung
1	Rückzahlung
2	Anforderung aus Regress
3	Auszahlung aus Provenue
4	Verrechnung Selbstbehalt
5	Anforderung aus Provenue
6	Abschlagszahlung
7	Statistische Buchung für Provenue
8	Def. wiederk. Zahlung
9	Wiederkehrende Zahlung

aus ICLPAY.PAYCAT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_ScheckOffen IS
'Kennzeichen, ob der Scheck noch offen ist. Redundant zu In-/Exkasso.

ja / nein

aus ICLPAY.ZZCHECK_OPEN

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe IS
'Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A/B/C

aus ICLPAY.ZZMANDATE_LEVEL

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_Waehrung IS
'... ist die Währung für den entsprechenden (Zahlungs-)Betrag

aus ICLPAY.CURR

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus IS
'... gibt den Lebenszyklus der Zahlung an, interner Zahlungsstatus:

0	Neu
1	Angelegt
2	Freigegeben
3	Freizugeben
4	Abgelehnt
5	Gebucht
6	Zu buchen
7	Storniert
8	Angefordert
9	Erhalten
A	Gelöscht
B	Zu stornieren
C	Teilweise erhalten
D	Selbstbehalt verrechnet
E	Abzulehnen
F	Zu Löschen
G	Geparkt
H	Zu Parken
I	Geparkt (Posteingang)
J	Dublette
M	Verschoben
P	Neu (Umbuchung)
Q	Umzubuchen
R	Umgebucht
S	Auszugleichen
T	Ausgeglichen
U	Zu Stoppen
V	Gestoppt

aus ICLPAY.STATUS

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_Zahlungsart IS
'Zahlungsart:

A	Duplikate
0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFallübergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	Rückzahlung
9	Storno

aus ICLPAY.PAYTYPE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg IS
'... gibt an wie gezahlt wird.

M	Auszahlung an Embargo Schaden
P	SCHADEN SEPA-Überweisung
Q	SCHADEN Umbuchung
R	SCHADEN Verbindlichk. Hausakte
S	SCHADEN Barauszahlung
T	SCHADEN Verrechnung sst. B
U	SCHADEN Verrechnung Beitrag
V	SCHADEN Scheck
W	SCHADEN Ausl.überw. - Sp. Empf
X	SCHADEN Ausl.überw. - Sp. Auft
Y	SCHADEN Ausl.überw. - Sp. get.
Z	SCHADEN Überweisung

aus ICLPAY.METHOD

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.C_durchgefuehrt IS
'Zahlung wurde bereits durchgefuehrt

ja/ nein

aus ICLPAY.XALREADYPAID

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.EingegangenerBetrag IS
'... ist bei Forderungen der bereits eingezahlte Betrag der Gesamtforderung

aus ICLPAY. AMTDONE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.EingegangenerBetragInEuro IS
'... gibt den in Euro umgerechneten Betrag an.

aus ICLPAY.AMTDONE_LOCAL_CCY

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLPAY.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Nettofaelligkeit IS
'... Nettofaelligkeit der Zahlung

aus ICLPAY.DUEDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Schadennummer_A IS
'Schadennummer

aus ICLPAY.CLAIM ("Fallnummer" lt. CM)

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Scheckaussteller_ProvKonto_A IS
'Provisionskonto-Nummer des Scheckausstellers fuer manuelle Scheckzahlungen
In der Quelle 8stellig, Freitext

aus ICLPAY.ZZCOMMISS_NUM

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Schecknummer_A IS
'Schecknummer fuer manuelle Scheckzahlungen

aus ICLPAY.CHECKNUMBER

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLPAY.SUBCLAIM ("Teilfallnummer" lt. CM)

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.UrsprGeforderterBetrag IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung.

aus ICLPAY. AMTNEG

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.UrsprGeforderterBetragInEuro IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung, umgerechnet in Euro.

aus ICLPAY. AMTNEG

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Zahlungsnotiz_AB IS
'...ist der "Verwendungszweck", der auf dem Kontoauszug des Kunden erscheint. Enthält evtl. identifizierende und sonstige sensible Inhalte (Freitext).

aus ICLPAY.NOTE

Datenschutz $A1B';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.Zahlungsnummer_A IS
'laufende Nummer der Zahlung am Teilschaden.

aus ICLPAY.PAYMENT

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.angelegt_am IS
'... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde

aus ICLPAY.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.angelegt_von_A IS
'... user, der  die Zahlung angelegt hat

aus ICLPAY.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLPAY.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICLPAY.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.geprueft_von_A IS
'... ist der User, der die Prüfung durchgeführt hat

aus ICLPAY.APPROVEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_01_HBS.uebergeben_am IS
'...  ist der Zeitpunkt der Übergabe an Inkasso-/Exkassosystem

aus ICLPAY.TRANSFERTIME

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.FK_LE02_Zahlung_Detail IS
'
Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.FK_LE08_Anspruch IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.SK_LE02_LE08_ZahlDet_Anspruch IS
'

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_LE08_ZahlDet_Anspruch_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ IS
'... ist die Klassifizierung der Leistungsart nach

Entschädigung
Rente
Kosten (Schadenregulierungskosten)

aus ICLPAYI.BENTYPE

s. Leistungsarten(BENTYPE)_Auspraegungen.xls

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.FK_LE02_Zahlung_Detail IS
'
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_DWH_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum IS
'... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird.

aus ICLPAYI.POSTDATEI

Möglicherweise identisch mit Buchungsdatum aus der Zahlung ???

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp IS
'... ist der Betragstyp und beinhaltet insbesondere den Umgang mit einem evtl. vorhandenen Selbstbehalt.

Werteliste:
Exkl. Selbstbehalt (Standardwert)
Inkl. Selbstbehalt
Selbstbehalt
Erlassener Selbstbehalt
Limit
Überbezahlter Betrag (durch Limit)
Rückzahlung von Selbstbehalten (Regress)
Vorsteuer
Mehrfachversicherung
Skontonachlass

Der Standardwert "Exkl. Selbsttbehalt" bedeutet dabei, dass die Höhe der Zahlung keinen Selbstbehalt berücksichtigt. Dies ist der Standardwert, da die meisten Risiken keinen Selbstbehalt aufweisen.

aus ICLPAYI.PAMTYPE

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto IS
'Steuertyp des Betrages

brutto / netto

aus ICLPAYI.GROSS_NET

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp IS
'Fallzahlungspostentyp

Werte:
leer	normale Fallzahlungsposition
1		Selbstbehalt auf Anspruch (vor Limit)
2		Selbstbehalt auf Entschädigung (nach Limit)
3		Anforderung des Selbstbehalt
4		Rückzahlung des Selbstbehaltes
C		Mehrfachversicherung
D		Abschlagszahlung
E		Mehrfachversicherung (manuell geändert)
H		Manueller Selbstbehalt
L		Abzug durch Limit
M		Manuelle Zahlung
S		Skontonachlass
T		Vorsteuer
V		Bezahlt über Limit
W		Erlassener Selbstbehalt

aus  ICLPAYI.PAYITEMCAT

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B IS
'... ist entnommen dem Katalog der Leistungsarten

z.B. (häufigste):

ABR			Abzug für Restwert
APUMA	Pannen- oder Unfallhilfe mit Abtransport
E0000		Entschädigungen
FABE		Fiktive Reparaturkosten
KP			Kostenpauschale
MW			Mietwagen
NU			Nutzungsausfall
PS			Parkschadenschutz
PUMA		Pannen- oder Unfallhilfe mit Abtransport - AP
RAE			Rechtsanwaltsgebühren (Entschädigung)
RK			Reparaturkosten
SOE			Sonstige Entschädigungen
SRK			Schadenrückkauf
SV			Sachverständigengebühren (DEVK-Auftrag)
SVG			Sachverständigengebühren (nicht belastend)
WB			Wiederbeschaffungswert
WM			Wertminderung
ZMIG		Zahlung aus Migration

auch:
ATE			Attestkosten / medizinisches Gutachten €
BK			Beerdigungskosten
HK			Heilkosten
PFK			Pflegekosten
RE			Rente
SC			Schmerzensgeld
VAP			Verdienstausfall (Folge eines Personenschadens)
VAS			Verdienstausfall (Folge eines Sachschadens)
VB			Vermehrte Bedürfnisse (Schonkost, etc.)

aus ICLPAYI.BENTYPE

s. Leistungsarten(BENTYPE)_Auspraegungen.xls

Datenschutz $B';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart IS
'... gibt die Art der Zahlung an.

aus ICLPAYI.PAYTYPEI

0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFallübergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	Rückzahlung
9	Storno

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund IS
'... ist der Zahlungsgrund

aus  ICLPAYI.TREASON

Gruppe Grund	Text

D0			0005
D0			01		Waived deductible
D0			02		Balance after deductible
D0			03		Regular collision
D0			13		Hit and Run
K1			01		Beschädigung Karosserie
K1			02		Beschädigung Motorblock
K1			03		Beschädigung Glas
ZK			VS		Vorschuss

falls Liste abschließend: Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe IS
'... ist die Zahlungsgrund-Gruppe

aus  ICLPAYI.TREASONSET

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail IS
'
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetrag IS
'... enthält  für Regress-Zahlungen den Gesamtbetrag der Regressforderung, während ''Teilbetrag'' nur den Betrag aus der aktuellen Zahlung wiedergibt.

aus ICLPAYI.REQUESTED

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten Gesamtbetrag der Regressforderung an.

aus aus ICLPAYI.REQUESTED_LOCAL_CCY

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Teilbetrag IS
'... ist ein Teilbetrag einer Zahlung der sich hinsichtlich Leistungsart oder Betragsteil unterscheiden läßt.

Achtung: Es gibt keine Währungsinformationen zum Teilbetrag in der Tabelle Zahlung_Detail.
Die Währung des Teilbetrags ist stets identisch mit der Währung der übergeordneten Zahlung.

aus ICLPAYI.PAMPAID

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.TeilbetragInEuro IS
'... gibt den im Euro umgerechneten Teilbetrag an.



Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetrag IS
'... enthält  für Regress-Zahlungen den ursprünglich vor Verhandlungen geforderten Gesamtbetrag der Regressforderung.

gehört eigentlich zu Regressforderung, daher redundant 

aus ICLPAYI.REQUESTED_ORIG

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten vor Verhandlungen geforderten Gesamtbetrag der Regressforderung an.

Gehört eigentlich zu Regressforderung, daher redundant.

aus aus ICLPAYI.REQUESTED_ORIG_LOCAL_CCY

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Zahlung_Detail_LFD IS
'laufende Nummer der Zahlung_Detail


aus ICLPAYI.PAYMENTITEM

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.Zahlungsnummer_A IS
'
aus ICLPAYI.PAYMENT

Datenschutz $A1';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLPAYI.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_von_A  IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICLPAYI.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.SK_LE02_Zahlung_Detail IS
'
Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE02_Zahlung_Detail_LE01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_BH.SK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Bilanz_Meldebetrag IS
'... ist der gemeldete Betrag.

Quelle (CM):
ZZCY_REG_RES_AM (für Meldejahr)
ZZPY_REG_RES_AM (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Bilanz_Meldedatum IS
'... ist das Datum, für das der Betrag gemeldet wird.

Quelle (CM):
ZZCY_REG_RES_DT (für Meldejahr)
ZZPY_REG_RES_DT (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.C_Bilanz_Meldeperiode IS
'...beschreibt, zu welcher Meldeperiode die Informationen des Tabelleneintrags gelten, z.B. ob es sich beim Tabelleneintrag um Daten zum Meldejahr oder zum Vorjahr handelt.

Werte:
Meldejahr
Vorjahr

Quelle (CM):
Attributnamen "ZZCY_REG_RES_..." --> Meldejahr
Attributnamen "ZZPY_REG_RES..." --> Vorjahr


Datenschutz $- ';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.C_Klassifizierungsart IS
'... ist die Klassifizierungsart, für das der Betrag gemeldet wird.

Quelle (CM):
ZZCY_REG_RES_CL (für Meldejahr)
ZZPY_REG_RES_CL (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

Für Bilanzregresse aus ICCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

konstant := "BILANZ"

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.Schadennummer_A IS
'Schadennummer

Für Bilanzregresse aus ICCLAIM.CLIENT

Datenschutz $A1';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_Bilanz_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.BetragGeschaetzt IS
'Geschätzter Betrag des Regresses in Regresswährung

aus ICL_SUBROG.ESTIMAMOUNT

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.C_Regressart IS
'... gibt die Art des Regresses an.

Bspl.:

gesicherter Regress
ungesicherter Regress
Überzahlung zurückgefordert
Verkauf Schadengut
SFR-Rückkaufsangebot

aus ICL_SUBROG.TYPE

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.C_Regressgrund IS
'... gibt den Grund für den Regress an

Der Regressgrund ist in CM (KFZ) kein Pflichtfeld. Daher kann zwischen Regressgründen nach Sach- und Rechtslage und solchen die z.B. auf Grund von Fehlbedienungen erfolgten nicht unterschieden werden.

aus ICL_SUBROG.REASON

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.C_Regressstatus IS
'... gibt an, in welchem Bearbeitungszustand der Regress ist.

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

Es gibt kein separates Datum, das angibt, wann diese Änderung stattgefunden hat.

aus ICL_SUBROG.SR_STATUS

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.C_Waehrung IS
'Regresswährung 

aus ICL_SUBROG.CURRENCY

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

Für Bilanzregresse aus ICCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

aus ICL_SUBROG.SUBROG_ID

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Regresswahrscheinlichkeit IS
'Schätzung für die Wahrscheinlichkeit eines erfolgreichen regresses

Datenqualität zu schlecht

aus ICL_SUBROG.PROBABILITY

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Schadennummer_A IS
'Schadennummer

Für Bilanzregresse aus ICCLAIM.CLIENT

Datenschutz $A1';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Schliessungsgrund IS
'Schließungsgrund für Regress - Freitextfeld

aus ICL_SUBROG.CLOSEREASON

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Schuldquote IS
'Schuldquote für den Regress bei prozentualer Verteilung der Verantwortung für den Schaden

aus ICL_SUBROG.LIABRATE

Datenqualität zu schlecht und Verwendung in der Quelle unklar

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.Sendedatum IS
'Sendedatum (Benachrichtigung zur Regress-Einleitung)

aus ICL_SUBROG.SENTDATE

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICL_SUBROG.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE03_Regress_SHUKR_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICL_SUBROG.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.C_Waehrung IS
'Regresswährung 

aus ICL_SUBROG.CURRENCY

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition IS
'
Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Regressbetrag IS
'... ist der Betrag, ???.



aus ICL_SUBROGITEM.RSPENDING

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Regressposition_lfd IS
'... ist die Nummer der Regressposition innerhalb eines Regresses.

aus ICL_SUBROGITEM.SUBROGITEM_ID

bei laufender Nummer innerhalb des Regress: Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.Rueckstellungsbetrag IS
'... ist der Betrag in Euro, um den sich die Rückstellung verändert.

Dieses Feld wird nur für gesicherte Regresse verwendet.

aus ICL_SUBROGITEM.RESERVEAMT

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICL_SUBROGITEM.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE04_Regresspos_SHUKR_01_WBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICL_SUBROGITEM.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.SK_LE04_Regressposition IS
'
Datenschutz $-';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE04_Regressposition_LE03_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE08_Anspruch_BH.SK_LE08_Anspruch IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN LE08_Anspruch_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE08_Anspruch_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE08_Anspruch_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE08_Anspruch_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag IS
'... ist der gemeldete Betrag.

Quelle (CM):
ZZCY_..._RES_AM (für Meldejahr)
ZZPY_..._RES_AM (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldedatum IS
'... ist das Datum, für das der Betrag gemeldet wird.

Quelle (CM):
ZZCY_.._RES,_DT (für Meldejahr)
ZZPY_..._RES_DT (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.C_Bilanz_Meldeperiode IS
'...beschreibt, zu welcher Meldeperiode die Informationen des Tabelleneintrags gelten, z.B. ob es sich beim Tabelleneintrag um Daten zum Meldejahr oder zum Vorjahr handelt.

Werte:
Meldejahr
Vorjahr

Quelle (CM):
Attributnamen "ZZCY_..." --> Meldejahr
Attributnamen "ZZPY_..." --> Vorjahr


Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart IS
'... ist die Klassifizierungsart, für die der Betrag gemeldet wird.

Quelle (CM):
ZZCY_..._RES_CL (für Meldejahr)
ZZPY_..._RES_CL (für Vorjahr)

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.C_Rueckstellungsart IS
'... ist die Art der Bilanz-Rückstellung:

- Entschädigungen
- Renten
- Kosten
- Regressrückstellung (???, ersetzt dann LE03_Regress_Bilanz_01_HBM)

Quelle (CM):
Attributnamen "..._CAP_..." --> Kapitalrückstellung
Attributnamen "..._ANU_..." --> Rentenrückstellung
Attributnmen "..._REG_..." --> Regressrückstellung (???, s.o.)

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.FK_LE09_Rueckstellung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

Für Bilanzrückstellungen aus ICCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Schadennummer_A IS
'Schadennummer

Für Bilanzrückstellungen aus ICCLAIM.CLIENT

Datenschutz $A1';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Bilanz_01_HBM.Teilschaden_LFD IS
'laufende Teilschadennummer

für Bilanzrückstellungen leer

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum IS
'... gibt das Datum an, an dem die Rückstellung gebucht wurde.

aus ICLRESERVE.POSTDATE

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund IS
'... gibt den Grund an, warum die Reserve verändert worden ist.

z.B.: Wiedereröffnung Teilfall, Schließung Teilfall, Erstreserve

aus ICLRESERVE.CHANGEREASON

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart IS
'Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus ICLRESERVE.RESTYPE

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode IS
'... gibt an, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

aus ICLRESERVE.METHOD

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.C_Waehrung IS
'
aus ICLRESERVE.CURR

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLRESERVE.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Rueckstellungsbetrag IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus ICLRESERVE.GROSSRES

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.RueckstellungsbetragInEuro IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

aus ICLRESERVE.GROSSRES

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Schadennummer_A IS
'Schadennummer

aus ICLRESERVE.CLAIM

Datenschutz $A1';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLRESERVE.SUBCL

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLRESERVE.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_SHUKR_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICLRESERVE.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE09_Rueckstellung_BH.SK_LE09_Rueckstellung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckstellung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckstellung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckstellung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckstellung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_BH.SK_OB01_Objekt IS
'
Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.FK_ER01_OB01_beschObjekt IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.SK_PA01_PA02_ER01OB01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.FK_PA01_PA02_ER01OB01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01OB01_SHUK_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.SK_PA01_PA02_ER01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.FK_PA01_PA02_ER01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.SK_PA01_PA02_ER02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.FK_PA01_PA02_ER02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER02_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.SK_PA01_PA02_LE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.FK_PA01_PA02_LE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE01_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.FK_LE08_Anspruch IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.SK_PA01_PA02_LE08 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.FK_PA01_PA02_LE08 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_LE08_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_BH.SK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.Name_A IS
'... ist für natürliche Personen der Zuname und für juristische Personen der Name (=Zuname1+Zuname2 in KFZ)

ICLCLAIM.ZZMELDENDERN (Name des Meldenden) (z.Zt. in der Quelle nicht enthalten)

Datenschutz $A2';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.
In CM können Partner auftreten (Schadenrollen), die nicht nach Paris übernommen werden können.

aus ICLPARTOCC.BPARTNER (um Prüfziffer ergänzen?)

oder für Schadenmelder:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)
ICLCLAIM.ZZMELDENDER

Datenschutz $A1';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Sch_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_BH.SK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.RollenId IS
'- Rollennummer aus Paris  ("Verweis-Schlüssel") bzw. Business Partner ("ROLE"),
- Rollenkürzel für manuell erstellte Rollen, z.B. "Halter", "Fahrer".
- harmonisiert mittels rollenId aus Lifefactory

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Rollenname_kurz IS
'hamonisiertes Kürzel für die Rolle gem. lieferndem System, evtl. identisch mit "RollenId"

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.Rollenname_lang IS
'hamonisierte Bezeichnung der Rolle gem. lieferndem System

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA02_PartnerRolle_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_BH.SK_PR01_Produkt IS
'... ist die DEVK-Weit eindeutige Nummer des Produkts.
... von DWH generiert, da keine einheitliche Quelle

Datenschutz $-

';

COMMENT ON COLUMN PR01_Produkt_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.C_Produktlinie IS
'... ist eine von drei Ausprägungen des Produkts (auch Tarifart genannt).

mögliche Werte:
Premium
Komfort
Aktiv

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.C_Produktname IS
'... ist der Name des Produkts (in Schaden "POLPROD" genannt)

Datentyp: varchar2(50)

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.C_Versicherungszweig IS
'urspr. varchar2( 50)

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.C_kalkulatorische_zahlweise IS
'... beschreibt die kalkulatorische Zahlungsweise als Basis für die Berechnung des kalkulatorischen Beitrags. 

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.FK_PR01_Produkt IS
'... ist die DEVK-Weit eindeutige Nummer des Produkts.
... von DWH generiert, da keine einheitliche Quelle

Datenschutz $-

';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. ableitbar aus Änderuingsdatum im Quellsystem)

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.ProduktID IS
'aus PEAP

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.Tarifkennzeichen IS
'

Datenschutz $-';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.generation_produkt IS
'... ist die Kennzeichnung der Generation, die den jeweiligen historischen Stand des Produkts repräsentiert.

Datenschutz $-
';

COMMENT ON COLUMN PR01_Produkt_SHUKR_01_HBS.version_produkt IS
'

Datenschutz $-';

COMMENT ON COLUMN WE01_Vertrag_BH.SK_WE01_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_Vertrag_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_Vertrag_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE01_Vertrag_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_Vertrag_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.FK_WE01_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.FK_WE02_Vertragselement IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.FK_WE03_Risiko IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.SK_WE01_WE02_WE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE02_WE03_BBL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.FK_WE01_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.SK_WE02_Vertragselement IS
'
Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE02_Vertragselement_WE01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Ausschlussdatum IS
'... ist das Datum des Ausschlusses des Risikos
aus UDK 309 (Unfall)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Beitragssatz IS
'in Promille der Versicherungssumme
PKZ 610 (Glas)
maßgeblicher Prämiensatz (BF)
Jahresbeitragssatz für Eventualität UDK 305 (Unfall)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_ArtDerBeitragsberechnung IS
'Haftpflicht: ABB

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Deckungserweiterungen IS
'Haftpflicht: Deckungserweiterungen (ADE) für Sonderkunden (Kunden bei speziellen Unternehmen)

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Fahrraddiebstahlzone IS
'
urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_KombinationVersGefahren IS
'PKZ 506 HR Kombination der zu versichernden Gefahren

gültige Feldinhalte:
01 - 31,X

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Risikobezeichnung IS
'this -> L_Risiko -> L_Produktbaustein_Risiko -> L_Produktbaustein.Risikobezeichnung

urspr. varchar2( 50)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_RisikosummeEinheit IS
'Einheit, z.B. Quadratmeter

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Tarifzone IS
'... ist die Zone für die Bestimmung des Tarifs, abgeleitet aus der Postleitzahl.

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Ueberspannungszone IS
'... ist die Zone bzgl. des Überspannungsschutzes, abgeleitet aus der Postleitzahl.

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Unterversicherungsverzicht IS
'Werte: Ja/nein; Ersatzwert (Untervers. Verzicht), Werte: 2000, 2001, 4000, 4001

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_VeraenderungsArt IS
'PKZ 410 (Glas)
   1.. - Neugeschäft
   2.. - Veränderungen bedingt durch externe Ursachen (Kunde)
   3.. - Veränderungen bedingt durch interne Ursachen 
         (z.B. Beitragserhöhung; sonstige Aktionen)
   4.. - Korrekturen
   5.. - Unternehmenswechsel
   6.. - Abgänge  - Kündigungen durch den Kunden -
   7.. - Abgänge  _ Kündigungen durch die DEVK
   9.. - Auskünfte (z.B. Sparten- und Historienanzeige)

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_Wagnisnummer IS
'Wagnisnummer (Haftpflicht), Wagnisart (Hausrat)
bea: in anderen Sparten bezeichnet Wagnisnummer eine Detaillierung des Versicherungsumfangs bezogen auf das versicherte Objekt/die versicherte Person, gehört also zum Versicherungselement

urspr. varchar2( 10)

Datenschutz $-
';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.C_manuelleTarifierung IS
'Hier wird die Tarifierungsart beschrieben:

1 – maschinelle Tarifierung
2 – manuelle Tarifierung
3 – Tarifierung mit Bestandsbeiträgen

urspr. varchar2( 10)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Deckung_Personenschaeden IS
'Deckungssumme Personenschäden

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Deckung_Sachschaeden IS
'Deckungssumme Sachschäden

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Deckung_Selbstbehalt IS
'Selbstbehalt, Selbstbeteiligung
Betrag absolut in EUR

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Deckung_Vermoegensschaeden IS
'Deckungssumme Vermoegensschäden

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.EinmalbetragAbgangManuell IS
'

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.EinmalbetragZugangManuell IS
'

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Einschlussdatum IS
'... ist das Datum des Einschlusses des Risikos
aus UDK 308 (Unfall)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.ErhoehungEntschaedigung IS
'Erhöhung der Entschädigungsgrenze (Fahrraddiebstahl WGA 9101 und/oder Wertsachen WGA 9200) in Prozent

PKZ 515 Hausrat

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.FK_WE03_Risiko IS
'
Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Formeller_Beginn IS
'... das Datum, an dem der Versicherungsvertrag (=Police) dem Versicherungsnehmer vorliegt.
Dieses Datum liegt im Quellsystem nicht vor.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Glasflaeche IS
'PKZ 508 (Glas) (ist je nach Wagnisart in dem Datenfeld "Versicherungssumme" dokumentiert)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Jahresbeitrag IS
'

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz beginnt.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Risiko_LFD IS
'... ist die laufende Nummer des Risikos im Vertragselement.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Risikonachlass IS
'in %

Hausrat PKZ 519

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Risikosumme IS
'PKZ 508 (Glas) Risikosumme (PEAP) (wenn nicht Versicherungssumme)

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Technischer_Beginn IS
'... das Datum, an dem der beitragsbelastete Zeitraum beginnt.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Versicherungssumme IS
'Versicherungssumme (Währung gem. WKZ), kann auch Null sein (abhängig von WGA)
PKZ 508 (Glas) Risikosumme (PEAP) Versicherungssumme der Eventualität UDK 304 (Unfall)
Einheit ist EURO

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_SachHU_01_WBS.Versicherungsumfang IS
'Mengeneinheit (z.B. 4 Hunde oder 1 PHV) bzw. Wagnisstärke oder Vers.Summe zur Ermittlung des Beitrags

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.FK_WE02_Vertragselement IS
'
Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.SK_WE03_Risiko IS
'
Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE03_Risiko_WE02_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE ER01WE03_ER02_DeckSp_BL IS
'Zuordnung eines Teilschadens zu einem Deckungsspiegel.

Aus CM werden alle bekannten Deckungsspiegel ohne Rücksicht darauf übernommen, ob sie für den Schaden tatsächlich relevant sind. Hier wird für die Deckungen, die tatsächlich eine Rolle spielen, ein Teilschaden zugeordnet.

BK:

ICLSUBCL.CLIENT (Mandant)
ICLSUBCL.CLAIM (Schadennummer)

BK des Risikos ist aus ICLCLAIM.POLICY (Vertragsnummer) und  ICLSUBCL.COVERAGE (Deckung) abzuleiten. Die Regeln hierzu sind für die einzelnen Sparten zu klären.

ICLSUBCL.CLIENT (Mandant)
ICLSUBCL.CLAIM (Schadennummer)
ICLSUBCL.SUBCLAIM (Teilschaden_LFD)


';

COMMENT ON TABLE ER01_ER01_gleiches_Ereignis_BL IS
'Beziehung zwischen zwei Schäden (ER01)  in Sinne von

FK_ER01_Schaden_P ''gehört zu demselben Schadenereignis wie'' FK_ER01_Schaden

Zu klären: Es handelt sich um eine Äquivalenzrelation, daher gilt die Aussage auch bei vertauschtem Parent und Child.

BK für Schäden aus CM:
ICLCLAIMASSIGN.CLIENT (Mandant)
ICLCLAIMASSIGN.CLAIM (Schadennummer)

ICLCLAIMASSIGN.CLIENT (Mandant)
ICLCLAIMASSIGN.TCLAIM (zugeordnete Schadennummer)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

';

COMMENT ON TABLE ER01_ER02_LE01_BL IS
'Zuordnung einer Zahlung zu einem Schaden und optional (evtl. mittels Dummy) zu einem Teilschaden.
Fachlich ist damit eine Zahlung ENTWEDER einem Schaden ODER einem Teilschaden zugeordnet. 
Zuordnungsvorschrift: Schaden, wenn kein Teilschaden oder ein Dummy-Teilschaden zugeordnet ist; Teilschaden sonst.

Bei Zuordnung zu einem Teilschaden wird der zugehörige Schaden auch verbunden, d.h. dass sowohl der Fremdschlüssel FK_ER01_Schaden als auch der Fremdschlüssel FK_ER02_Teilschaden gefüllt wird.

BK aus CM:


ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM (Schadennummer)

ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM (Schadennummer)
ICLPAY.SUBCLAIM (Teilschaden_Lfd)

ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM. (Schadennummer)
ICLPAY.SUBCLAIM (Teilschaden_Lfd)
ICLPAY.PAYMENT (Zahlung_Lfd)

BK für Kranken aus VUX:
Zuordnung immer auf Teilschadenebene:

khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP oder khe.LFDNR_5 (Tarif)

khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP oder khe.LFDNR_5 ([Tarif | Erstattung_lfd])

Bei der Variante mit "Tarif" ist der BK der Zahlung identisch zu dem BK des Teilschadens, d.h. es gibt pro Teilschaden genau eine (aggregierte) Zahlung. Bei der Variante mit der laufenden Nummer der Erstattung ist der BK identisch zu dem der Zahlung_Detail, d.h. es gibt zu jeder Zahlung_Detail genau eine Zahlung. Welche Variante gewählt wird, ist zu klären.
';

COMMENT ON TABLE ER01_ER02_LE09_BL IS
'Zuordnung einer Rückstellung zu einem Schaden und optional (evtl. mittels Dummy) zu einem Teilschaden.
Fachlich ist damit eine Rückstellung ENTWEDER einem Schaden ODER einem Teilschaden zugeordnet. 
Zuordnung: Schaden, wenn kein Teilschaden oder ein Dummy-Teilschaden zugeordnet ist; Teilschaden sonst.

Bei Zuordnung zu einem Teilschaden wird der zugehörige Schaden auch verbunden, d.h. dass sowohl der Fremdschlüssel FK_ER01_Schaden als auch der Fremdschlüssel FK_ER02_Teilschaden gefüllt wird.

Business-Key aus CM:

bei Schadenzuordnung:
ICLRESERVE.CLIENT (Mandant)
ICLRESERVE.CLAIM (Schadennummer)

ICLRESERVE.CLIENT (Mandant)
ICLRESERVE.CLAIM (Schadennummer)
ICLRESERVE.SUBCL (Teilschaden_LFD)
ICLRESERVE.RESTYPE (Rueckstellungsart)

bei Teilschadenzuordnung:

ICLRESERVE.CLIENT (Mandant)
ICLRESERVE.CLAIM (Schadennummer)
ICLRESERVE.SUBCL (Teilschaden_Lfd)

ICLRESERVE.CLIENT (Mandant)
ICLRESERVE.CLAIM (Schadennummer)
ICLRESERVE.SUBCL (Teilschaden_Lfd)
ICLRESERVE.RESTYPE (Rueckstellungsart)

Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
Schadennummer ist die Nummer des Schaden- / Leistungsfalls,
Teilschaden_LFD die laufende Nummer des Teilschadens relativ zum Schaden  (falls vorhanden, sonst'' 000'')
Rueckstellungsart ist die Art der Rückstellung (Renten, Entschädigungen, Kosten)


aus VUX:
In Kranken findet keine schaden-individuelle Reservierung statt.';

COMMENT ON TABLE ER01_GE01_Schadenort_BL IS
'Beziehung zwischen Schaden (ER01) und Gebiet (GE01) in Sinne von

FK_GE01_Gebiet ''ist Schadenort zu Schaden'' FK_ER01_Schaden

BK für Schäden aus CM und Schadenorte (Gebiet) aus CM:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)

ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.LOSSADDRESS (Adressnummer)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Die Adressnummer ist der Schlüssel des Schadenortes aus Business Partner,
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

';

COMMENT ON TABLE ER01_LE03_BL IS
'Zuordnung eines Regress zu einem Schaden.

BK aus CM für Schaden:
ICL_SUBROG.Client (Mandant)
ICL_SUBROG.Claim (Schadennummer)

BK aus CM für Regress:
Business-Key aus CM:
ICL_SUBROG.Client (Mandant)
ICL_SUBROG.Claim (Schadennummer)
ICL_SUBROG.SUBROG_ID (lfd Nummer des Regress)';

COMMENT ON TABLE ER01_OB01_beschObjekt_BL IS
'Zuordnung eines Objekts (OB01) zu einem Schaden (ER01)

in der Beziehung
FK_OB01_Objekt ''ist geschädigtes Objekt zum Schaden'' FK_ER01_Schaden

BK für Schäden und Objekte aus CM:
ICLDAMOBJ.CLIENT (Mandant)
ICLDAMOBJ.CLAIM (Schadennummer)

ICLDAMOBJ.CLIENT (Mandant)
ICLDAMOBJ.CLAIM (Schadennummer)
ICLDAMOBJ.DAMAGEDOBJ (lfd. Objekt-Nr. pro Schaden)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Objekt_Nr ist die schadeneigene laufende Nummer für beschädigte Objekte.
Mandant = Client wird bei der DEVK z.Zt. in Produktion nicht genutzt.

';

COMMENT ON TABLE ER01_PR01_BL IS
'Beziehung zwischen Schaden und betroffenem Produkt. Redundant zum Produkt am betroffenen Vertrag.


BK für Schaden aus CM und Produkt aus CM:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)

ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.POLPROD (Produktname)
ICLCLAIM.GENERAT (Produktgeneration)
ICLCLAIM.VERSION (Produktversion)
';

COMMENT ON TABLE ER01_Schaden_BH IS
'... Allgemeine Daten zur Verwaltung und Bearbeitung mehrerer Teilschäden.

für Sach und Rechtsschutz::
Ausgehend von einem Schadenereignis der realen Welt werden soviel Schäden registriert wie !!Schaden-Sparten!! eines Vertrages betroffen sind. Die Verbindung von mehreren Schäden durch ein Schadenereignis wird nicht abgebildet, d.h ein Schaden betrifft immer nur genau einen Vertrag.

Schadenereignisse, die z.B. den Hergang schildern, werden nicht abgebildet. Es werden nicht soviele Schäden registriert wie rechtlich selbständige Verträge betroffen sind, sondern soviele wie von der DEVK definierte Schaden-Sparten betroffen sind.

BK aus CM:
''SHUKR~''||CLIENT||''~''||CLAIM
mit
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.



für Kranken:
Für die Leistungsfälle in Kranken wird der  "Beleg" als Schaden angesprochen. Dadurch hat ein Schaden genau einen Anspruchsteller und genau eine versicherte Person, kann sich aber auf mehrere Risiken (= "Tarife" in Kranken) beziehen. 

BK für Kranken aus VUX:
in VUX gibt es für die Leistungsfälle keine eigene Abbildung. Ersatzweise wird der "Beleg" herangezogen. Der "Beleg" hat eine laufende Nummer innerhalb eines "Vorgangs", der seinerseits durch einen Vertrag und ein "Beginndatum" definiert ist:

khb.VTR_NR_15 (Vertragsnummer)
khb.VG_BEGINN_JJ><khb.VG_BEGINN_MM><khb.VG_BEGINN_TT (Vorgangsdatum)
khb.BELEGNR (Belegnummer)
';

COMMENT ON TABLE ER01_Schaden_DWH_01_HBS IS
'

';

COMMENT ON TABLE ER01_Schaden_DWH_02_HBM IS
'Multi-Active Satellite';

COMMENT ON TABLE ER01_WE01_BL IS
'Beziehung Schaden - Vertrag


BK für Schäden und Verträge aus CM:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)
ICLCLAIM.POLICY (Versicherungsscheinnummer)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.


BK für Kranken-Leistungsfälle aus VUX:
khb.VTR_NR_15 (Vertragsnummer)
khb.VG_BEGINN_JJ><khb.VG_BEGINN_MM><khb.VG_BEGINN_TT (Vorgangsdatum)
khb.BELEGNR (Belegnummer)

BK für Vertrag aus VUX:
khb.VTR_NR_15 (Vertragsnummer)';

COMMENT ON TABLE ER01_WE01_VertrSpie_Sch_01_LBM IS
'Vorübergehende Lösung für die Informationen des Vertragsspiegels, solange die Vertragssysteme noch nicht angebunden sind.

Multi-Active Sat mit dem zusätzlichen Schlüssel "VertragsversionsNr".';

COMMENT ON TABLE ER01_WE01_Vertragsspiegel_BL IS
'Zuordnung der Inhalte des "Vertragsspiegels" und "Deckungsspiegels" zum Schaden aus CM. Die Inhalte sind vermutlich redundant, sobald alle betroffenen operativen Systeme angeschlossen sind. Dieser Link wird dann obsolet bzw. kann durch eine Bridge ersetzt werden.

Business-Key:

ICLPOL.CLIENT (Mandant)
ICLPOL.CLAIM (Schadennummer)

ICLPOL.POLICY
';

COMMENT ON TABLE ER01_WE03_DeckSpie_Sch_01_LBS IS
'Vorübergehende Lösung für die Informationen des Deckungsspiegels, solange die Vertragssysteme noch nicht angebunden sind.';

COMMENT ON TABLE ER01_WE03_Deckungsspiegel_BL IS
'Zuordnung der Inhalte des "Deckungsspiegels" zum Schaden aus CM. Die Inhalte sind vermutlich redundant, sobald alle betroffenen operativen Vertragssysteme angeschlossen sind. Dieser Link wird dann obsolet.

"Peg Leg Link" zwischen Schaden und Risiko mit den zusätzlichen BK-Teilen "VertragsversionsNr" und "Deckung".

Business-Key:

ICLPOLM.CLIENT (Mandant)
ICLPOLM.CLAIM (Schadennummer)

BK des Risikos ist aus ICLPOL.POLICY und  ICLPOLM.COVERAGE abzuleiten. Die Regeln hierzu sind für die einzelnen Sparten zu klären.

ICLPOLM.POLVNR	(VertragsversionsNr)
ICLPOLM.COVERAGE	(Deckung)
';

COMMENT ON TABLE ER02_LE02_BL IS
'Beziehung von Zahlung_Detail zu Teilschaden

Business-Key für SHUKR (CM):

ICLPAYI.CLIENT (Mandant)
ICLPAYI.CLAIM (Schadennummer)
ICLPAYI.ITEMSUBCL (Teilschaden_LFD)

ICLPAYI.CLIENT (Mandant)
ICLPAYI.CLAIM (Schadennummer)
ICLPAYI.SUBCLAIM (Teilschaden_LFD)
ICLPAYI.PAYMENT (Zahlung_Lfd)
ICLPAYI.PAYMENTITEM (Zahlung_Detail_Lfd)

Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
Schadennummer ist die Nummer des Schaden- / Leistungsfalls,
Teilschaden_LFD die laufende Nummer des Teilschadens relativ zum Schaden. BEA: Der Teilschaden im Schlüssel der Zahlung muss nicht dem zugelinkten Teilschaden identisch sein!!
Zahlung_Lfd ist eine laufende Nummer der Zahlung innerhalb des Schadens / Teilschadens
Zahlung_Detail_Lfd ist  eine laufende Nummer der Zahlungsposition innerhalb der Zahlung.

für Kranken (VUX):

BK für Teilschaden:
Der Business-Key für Kranken aus VUX setzt sich zusammen aus:
khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP (Tarif)

BK für Zahlung_Detail:
khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP oder khe.LFDNR_5 ([Tarif | Erstattung_lfd])

Erstattung_lfd ist dabei eine laufende Nummer der Erstattung pro Beleg, die durch ihre Eindeutigkeit weitere Schlüssel (Leistungsart, Tarif) entbehrlich macht.



';

COMMENT ON TABLE ER02_LE04_BL IS
'Beziehung von Teilschaden und Regressposition.

Innerhalb eines Regresses hat jede Regressposition genau eine eineindeutige Beziehung zu einem Teilschaden.

BK:
ICL_SUBROGITEM.CLIENT (Mandant)
ICL_SUBROGITEM.CLAIM (Schadennummer)
ICL_SUBROGITEM.SUBCLAIM (Teilschaden_LFD)

ICL_SUBROGITEM.CLIENT (Mandant)
ICL_SUBROGITEM.CLAIM (Schadennummer)
ICL_SUBROGITEM.SUBROG_ID (Regress-lfd)
ICL_SUBROGITEM.SUBROGITEM_ID (Regress-Position-lfd)';

COMMENT ON TABLE ER02_LE08_Anspruch_SHUKR_BL IS
'Zuordnung eines Anspruchs zu einem Teilschaden.

für SHUKR:
Ansprüche werden z.Zt. nicht in CM dokumentiert. Sollte es dazu kommen, so ist ein Anspruch durch den zugehörigen Anspruchsteller einem Teilschaden zugeordnet.

Business Key:
ICLITEM.CLIENT (Mandant)
ICLITEM.CLAIM (Schadennummer)
ICLITEM.SUBCLAIM (Teilschaden_LFD)

ICLITEM.CLIENT (Mandant)
ICLITEM.CLAIM (Schadennummer)
ICLITEM.SUBCLAIM (Teilschaden_LFD)
ICLITEM.ITEM  (Anspruchsposten)

für Kranken:
Der Anspruch wird durch einen "Beleg", d.h. eine durch den Kunden eingereichte Rechnung, formuliert. Damit entspricht der Anspruch 1:1 einem Schaden.
D.h. dass dieser Link unzutreffend ist.
';

COMMENT ON TABLE ER02_Teilschaden_ER01_BW IS
'Teilschäden organisieren Ansprüche und Zahlungen eines bestimmten Anspruchstellers gegen ein bestimmtes Vertragsrisiko. Das bedeutet im Fall von SHUKR:
- verschiedene Anspruchsteller führen zu verschiedenen Teilschäden
- verschiedene versicherte Personen / Objekte führen zu verschiedenen Teilschäden
- verschiedene durch den Schaden angesprochene Risiken führen zu verschiedenen Teilschäden, sofern nicht schon durch die Verteilung des Schadenereignisses auf mehrere Schäden (z.B. bei K-Haftpflicht und K-Kasko) ohnehin eine Trennung herbeigeführt ist.

Der Business-Key für SHUKR aus CM setzt sich zusammen aus:
ICLSUBCL.CLIENT (Mandant)
ICLSUBCL.CLAIM (Schadennummer)
ICLSUBCL.SUBCLAIM (Teilschaden_LFD)

Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
Schadennummer ist die Nummer des Schaden- / Leistungsfalls,
Teilschaden_LFD die laufende Nummer des Teilschadens relativ zum Schaden.


Für die Leistungsfälle in Kranken wird eine eingereichte Rechnung als "Beleg" bezeichnet und i.d.R. als genau ein Schaden im Sinne dieses Datenmodells betrachtet. Zum "Beleg" gibt es einen eindeutig zugeordneten Vertrag und damit einen eindeutigen Anspruchsteller, nämlich den VN, und eine eindeutig bestimmte versicherte Person, aber ggf. verschiedene betroffene "Tarife" = Risiken. D.h. für den Fall von Kranken:
- der Anspruchsteller ist für alle Teilschäden identisch
- die versicherte Person ist für alle Teilschäden identisch
- verschiedene durch den Schaden angesprochene "Tarife" = Risiken führen zu verschiedenen Teilschäden.

in VUX gibt es für die Leistungsfälle keine eigene Abbildung. Ersatzweise wird der "Beleg" herangezogen. Der "Beleg" hat eine laufende Nummer innerhalb eines "Vorgangs", der seinerseits durch einen Vertrag und ein "Beginndatum" definiert ist. Entsprechend gibt es, anders als in SHUKR, keine unterschiedlichen "Anspruchsteller" innerhalb des so definierten Schadens.
Für jeden "Tarif" (das bezeichnet in VUX die Vertragsrisiken), der durch den Beleg berührt wird, wird ein Teilschaden eingerichtet. Ein betroffener "Tarif" wird aber erst dann sichtbar, wenn dazu eine "Erstattung" in die Tabelle khe zum "Beleg" eingetragen wird.  

Der Business-Key für Kranken aus VUX setzt sich zusammen aus:
khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP (Tarif)
';

COMMENT ON TABLE GE01_Gebiet_BH IS
'... ist eine räumliche, regionale Einheit. Beispiele sind Postanschriften, Grundstücke oder Positionsangaben.

Hier wird u.a. auch der Schadenort, das Schadeneintrittsland e.a. hinterlegt.

BK 
- für Adressen aus Paris
POB (Partnerordnungsbegriff)
ANR (Adressnummer_lfd)

Partnerordnungsbegriff ist die eindeutige Nummer des Partners in PARIS,
Adressnummer_lfd ist die laufende Nummer der Adressen, die in PARIS dem Partner zugeordnet sind.


-für Objekte aus Rechtsschutz
CRS01101.VNR (Versicherungsscheinnummer)
CRS01401. LFDOBJ (laufende Objektnummer)

laufende Objektnummer ist die laufende Nummer des Objekts innerhalb des Versicherungsscheins.


- für Schadenorte aus CM:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.LOSSADDRESS (Adressnummer)
oder
ADRC.CLIENT (Mandant)
ADRC.ADDRNUMBER (Adressnummer)

Die Adressnummer ist der Schlüssel des Schadenortes aus Business Partner,
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

- für Objekte aus Vertragssystemen
zu klären

für Postleitzahlenbereiche
Aufzählung aller PLZ_von und PLZ_bis:
PLZ_von-1~PLZ_bis-1~PLZ_von-2~PLZ_bis-2~ ... ~PLZ_von-n~PLZ_bis-n
';

COMMENT ON TABLE LE01_KT01_Beleg_BL IS
'Beziehung einer Zahlung aus CM zu einem Beleg in FS-CD, d.h. die Referenz für im Nebenbuch erstellten Beleg zur Zahlung

BEA: Die Detaillierung der Zahlung oder Forderung (Leistungsarten) findet keinen Niederschlag z.B. in verschiedenen Belegpositionen.

Business.Key aus CM:
ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM. (Schadennummer)
ICLPAY.SUBCLAIM (Teilschaden_Lfd oder "X")
ICLPAY.PAYMENT (Zahlung_Lfd)

ICLPAY.DOCUMENTREF (Belegnummer)
';

COMMENT ON TABLE LE01_LE03_BL IS
'Zuordnung einer Zahlung (LE01) zu einem Regress (LE03) (n:1). Nur für Zahlungen, die Regressen entsprechen.

Business Key:
ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM. (Schadennummer)
ICLPAY.SUBCLAIM (Teilschaden_Lfd oder "000")
ICLPAY.PAYMENT (Zahlung_Lfd)

ICL_SUBROG.Client (Mandant)
ICL_SUBROG.Claim (Schadennummer)
ICL_SUBROGITEM.SUBROG_ID (Regress_Lfd; über ICLPAY.ASSIGN_GUID ermitteln)
';

COMMENT ON TABLE LE01_Zahlung_BH IS
'''Zahlungen'' bildet sowohl Aus- als auch Einzahlungen und Forderungen ab, insbesondere Regressforderungen und -zahlungen.

Zur Beachtung: Zahlungen aus CM sind entweder
- einem Teilfall/Teilschaden zugeordnet (SubClaim in ''001'' - ''999'') oder
- dem "Fallkopf" (d.h. teilschadenübergreifend, SubClaim = ''000'') oder
- keinem Teilfall/ Teilschaden zugeordnet (SubClaim =''  X''), dann sind die Zahlungspositionen auf Teilschäden verteilt.

Business-Key für SHUKR aus CM:

ICLPAY.CLIENT (Mandant)
ICLPAY.CLAIM. (Schadennummer)
ICLPAY.SUBCLAIM (Teilschaden_Lfd oder "000")
ICLPAY.PAYMENT (Zahlung_Lfd)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Teilschaden_Lfd ist die laufende Nummer des Teilschadens innerhalb des Schadens.
Zahlung_Lfd ist eine laufende Nummer der Zahlung innerhalb des Schadens / Teilschadens ????
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

- für Kranken (VUX):

Zahlungen und Zahlung_Detail werden nicht unterschieden, d.h. dass jede Zahlung genau ein Zahlung_Detail hat. Das entsprechende Konstrukt in VUX ist die "Erstattung" aus der Tabelle khe.

Alternativ könnten die einzelnen "Erstattungen" unter Verzicht auf die Leistungsart und das Bearbeitungsdatum zu Zahlungen aggregiert werden, dieses Aggregat hat aber KEINE Entsprechung in VUX. VUX kennt zwar "Zahlungen", die aber zu rein operativen Zwecken auf eine fachlich nicht interessante Weise aus "Erstattungen" zusammengesetzt sind. 

Business-Key:
khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP oder khe.LFDNR_5 ([Tarif | Erstattung_lfd])

Bei der Variante mit "Tarif" ist der BK identisch zu dem BK des Teilschadens, d.h. es gibt pro Teilschaden genau eine (aggregierte) Zahlung. Bei der Variante mit der laufenden Nummer der Erstattung ist der BK identisch zu dem der Zahlung_Detail, d.h. es gibt zu jeder Zahlung_Detail genau eine Zahlung. Welche Variante gewählt wird, ist zu klären.

';

COMMENT ON TABLE LE02_LE08_ZahlDet_Anspruch_BL IS
'Beziehung von  Zahlung Detail zu Anspruch in Sinne von

FK_LE08_Anspruch ''führt zu der Zahlungs-Position'' FK_LE02_Zahlung_Detail

für SHUKR:
Ansprüche werden z.Zt. nicht erfasst.

für Kranken:
Zusammenhang von "Erstattung" (Zahlungsposition) und "Beleg" (Anspruch) in VUX über die "Belegnummer". Bea: ein "Beleg" kann zu mehreren "Erstattungen" führen.

BK für Zahlung Detail:
Kr~<khe.VTR_NR_15> ~ <khe.VG_BEGINN_JJ><khe.VG_BEGINN_MM><khe.VG_BEGINN_TT> ~ <khe.BELEGNR> ~ <khe.LFDNR_5

BK für Anspruch:
Kr~<khe.VTR_NR_15> ~ <khe.VG_BEGINN_JJ><khe.VG_BEGINN_MM><khe.VG_BEGINN_TT> ~ <khe.BELEGNR>';

COMMENT ON TABLE LE02_Zahlung_Detail_LE01_BW IS
'... bildet die Zahlungspositionen innerhalb der Zahlung ab. Zahlungspositionen definieren die Teilbeträge zu den verschiedenen Leistungsarten.

Für Kranken werden Zahlungen und Zahlung_Detail nicht unterschieden, d.h. dass jede Zahlung genau ein Zahlung_Detail hat. Das entsprechende Konstrukt in VUX ist die "Erstattung" aus der Tabelle khe. Der BK ist entsprechend für Zahlung und Zahlung_Detail identisch.

BK
- für SHUKR (CM):
ICLPAYI.CLIENT (Mandant)
ICLPAYI.CLAIM (Schadennummer)
ICLPAYI.CLAIM (Teilschaden_Lfd oder "000")
ICLPAYI.PAYMENT (Zahlung_Lfd)
ICLPAYI.PAYMENTITEM (Zahlung_Detail_Lfd)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Teilschaden_Lfd ist die laufende Nummer des Teilschadens innerhalb des Schadens.
Zahlung_Lfd ist eine laufende Nummer der Zahlung innerhalb des Schadens / Teilschadens
Zahlung_Detail_Lfd ist  eine laufende Nummer der Zahlungsposition innerhalb der Zahlung.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

- für Kranken (VUX):
khe.VTR_NR_15 (Vertragsnummer)
khe.VG_BEGINN_JJ khe.VG_BEGINN_MM khe.VG_BEGINN_TT (Vorgangsdatum)
khe.BELEGNR (Belegnummer)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP oder khe.LFDNR_5 ([Tarif | Erstattung_lfd])

Erstattung_lfd ist dabei eine laufende Nummer der Erstattung pro Beleg, die durch ihre Eindeutigkeit weitere Schlüssel (Leistungsart, Tarif) entbehrlich macht.
';

COMMENT ON TABLE LE03_Regress_BH IS
'... hier werden alle Regresse vermerkt. Regresse verstehen sich immer in Bezug auf genau einen Schaden, ein Schaden kann mehrere Regresse haben.

Es handelt sich dabei nicht nur um Regresse nach Sach- und Rechtslage. Stattdessen wird zu allen(!) Geldeingängen ein Regress angelegt, d.h. es ist kein Geldeingang ohne zugehörigem Regress möglich (z.B. Rückkauf wegen SFR).

Die Attribute "GeschätzterBetrag", "Schuldquote", "Wahrscheinlichkeit" werden nicht(!) in das Modell übernommen, da die Pflegequalität als sehr schlecht angenommen wird.

Business-Key aus CM:
ICL_SUBROG.Client (Mandant)
ICL_SUBROG.Claim (Schadennummer)
ICL_SUBROG.SUBROG_ID (lfd Nummer des Regress)

Für Bilanzregresse:
ICCLAIM.CLIENT (Mandant)
ICCLAIM.CLAIM (Schadennummer)
lfd. Nummer := "BILANZ"';

COMMENT ON TABLE LE03_Regress_Bilanz_01_HBM IS
'Multi-Active Sat für die Bilanzmeldungen eines Regresses. In der Quelle durch Aufzählung von bis zu 3 Tripeln aus Betrag / Meldedatum/ Klassifizierungsart des Meldejahres und  von bis zu 3 Tripeln aus Betrag / Meldedatum/ Klassifizierungsart des Vorjahres abgebildet. 

Die Unterscheidung zwischen Meldejahr und Vorjahr wird im Attribut C_Abschluss_Meldeperiode abgebildet.

In der Quelle gibt es diese Information für gesicherte Regresse. Die Regressart befindet sich unter C_Regressart in LE03_Regress_SHUKR_01_HBS.

';

COMMENT ON TABLE LE03_Regress_SHUKR_01_HBS IS
'

';

COMMENT ON TABLE LE04_Regressposition_LE03_BW IS
'.... repräsentiert den Teil eines Regresses, der auf einen Teilschaden entfällt. Dabei gilt der "Fallkopf", an dem Zahlungen hängen, die direkt dem Schaden zugeordnet sind, als Teilschaden mit der lfd. Nr. "000".

Business-Key:
ICL_SUBROGITEM.CLIENT (Mandant)
ICL_SUBROGITEM.CLAIM (Schadennummer)
ICL_SUBROGITEM.SUBCLAIM (Teilschaden_Lfd)
ICL_SUBROGITEM.SUBROG_ID (Regress_Lfd)
ICL_SUBROGITEM.SUBROGITEM_ID (Regressposition_Lfd)


';

COMMENT ON TABLE LE08_Anspruch_BH IS
'für SHUKR:
In CM werden Ansprüche i.d.R. nicht erfasst. Sollte es dazu kommen, dann ist der

Business Key:
ICLITEM.CLIENT (Mandant)
ICLITEM.CLAIM (Schadennummer)
ICLITEM.SUBCLAIM (Teilschaden_LFD)
ICLITEM.ITEM  (Anspruchsposten)


Für Kranken (VUX):
Der Anspruch wird durch einen "Beleg", d.h. eine durch den Kunden eingereichte Rechnung, formuliert. Damit entspricht der Anspruch 1:1 einem Schaden.
Der Beleg hat eine laufende Nummer innerhalb eines "Vorgangs", der seinerseits durch einen Vertrag und ein "Beginndatum" definiert ist.

Business-Key:
khb.VTR_NR_15 (Vertragsnummer)
khb.VG_BEGINN_JJ khb.VG_BEGINN_MM khb.VG_BEGINN_TT (Vorgangsdatum)
khb.BELEGNR (Belegnummer)

';

COMMENT ON TABLE LE09_Rueckst_Bilanz_01_HBM IS
'Multi-Active Sat für die Bilanzmeldungen einer Rückstellung. In der Quelle durch Aufzählung von bis zu 3 Tripeln aus Betrag / Meldedatum/ Klassifizierungsart des Meldejahres und  von bis zu 3 Tripeln aus Betrag / Meldedatum/ Klassifizierungsart des Vorjahres abgebildet. 

Die Unterscheidung zwischen Meldejahr und Vorjahr wird im Attribut C_Bilanz_Meldeperiode abgebildet.


';

COMMENT ON TABLE LE09_Rueckst_SHUKR_01_HBS IS
'(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)';

COMMENT ON TABLE LE09_Rueckstellung_BH IS
'Schadenrückstellungen
(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus CM:
manuell oder maschinell gesetzte Rückstellung (Restreserve) für offene Schäden, differenziert nach Rueckstellungsart  (Renten, Entschädigungen, Kosten).

Der Business-Key für SHUKR aus CM setzt sich zusammen aus:
ICLRESERVE.CLIENT (Mandant)
ICLRESERVE.CLAIM (Schadennummer)
ICLRESERVE.SUBCL (Teilschaden_LFD)
ICLRESERVE.RESTYPE (Rueckstellungsart)

Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
Schadennummer ist die Nummer des Schaden- / Leistungsfalls,
Teilschaden_LFD die laufende Nummer des Teilschadens relativ zum Schaden  (falls vorhanden, sonst'' 000'')
Rueckstellungsart ist die Art der Rückstellung (Renten, Entschädigungen, Kosten)

Für Bilanz-Rückstellungen ist 
ICCLAIM.CLIENT (Mandant)
ICCLAIM.CLAIM (Schadennummer)
Teilschaden_LFD nicht gefüllt
Rückstellungsart: die Rückstellungsart ist gemäß des Attributnamens zu wählen (siehe Attribut C_Rückstellungsart)


aus VUX / Excel:
pauschal gesetzte Rückstellungen für noch nicht eingereichte Rechnungen zu Behandlungen der Vorjahre, analog zu "Spätschadenpauschalreserven"; aufgeteilt nach "Tarifen", höchstens für drei Vorjahre.

Business-Key:
TAR_KENN
TAR_STUFE
Eintrittsjahr


aus Schaden-Fachbereichsauswertungen/ Excel (Spätschadenpauschalreserven):
pauschal gesetzte Rückstellungen für noch nicht gemeldete Schäden der Vorjahre (Spätschadenpauschalreserven), je Risikoträger / Schadensparte/ Meldejahr / evtl. Anfalljahr

Business-Key:
Risikoträger
Schadensparte
Eintrittsjahr
';

COMMENT ON TABLE OB01_Objekt_BH IS
'Der Business-Key eines Objekts ergibt sich bei versicherten Objekten i.d.R. aus der Versicherungsscheinnummer und Zusatzinformation. Einzelheiten sind pro Quellsystem zu klären.

Versicherungsscheinnummer
Zusatzinformation

Bei Rechtsschutz ist die Zusatzinformation die laufende Objektnummer zum Vertrag:
CRS01101.CRS01101 (Versicherungsscheinnummer)
CRS01401. LFDOBJ (Zusatzinformation)

Geschädigte Objekte zu Schäden aus CM werden mit der Schadennummer und der Objekt-Id aus CM gebildet:

ICLDAMOBJ.CLIENT
ICLDAMOBJ.CLAIM
ICLDAMOBJ.DAMAGEDOBJ

Mandant =client wird bei der DEVK z.Zt. in Produktion nicht genutzt.

Bei geschädigten Objekten, die  versicherte Objekte sind, ist die Identität der Objekte an Schaden und an Vertrag festzustellen.';

COMMENT ON TABLE PA01_PA02_ER01OB01_BL IS
'Partner_Rolle_beschädigtes Objekt

bildet Schaden-Rollen mit Beziehung zum Beschädigten Objekt ab, z.B.
Reparaturbetrieb
Abschleppunternehmen
Anspruchsteller

Business-Key für CM/ Partner:
ICLSUBCL.CLIENT (Mandant)
ICLPARTOCC.BPARTNER
''HARM~'' || Surrogat-Key (Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle ICLPARTOCC.ROLEgeliefert wird
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)
ICLCLAIM.ZZ_BETR_ZNR (lfd. Objekt-Nr. pro Schaden ???)

';

COMMENT ON TABLE PA01_PA02_ER01_BL IS
'Partner_Rolle_Schaden

bildet die Schaden-Rollen ab, z.B.
Anspruchsteller
Schadenmelder
bearbeitende Stelle
zuständiger Sachbearbeiter
versicherte Person
verletzte Person

Business-Key für CM:
ICLPARTOCC.BPARTNER
''HARM~'' || Surrogat-Key (Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle ICLPARTOCC.ROLE geliefert wird)
ICLPARTOCC.CLIENT (Mandant)
ICLPARTOCC.CLAIM (Schadennummer)



BK für "bearbeitende Stelle" aus CM:
select POB from PA01_Partner_Par_01_HBS where Kurzname = ICLCLAIM.ZZRD
''HARM~'' || Surrogat-Key (Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle "bearbeitende Stelle" geliefert wird)
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)';

COMMENT ON TABLE PA01_PA02_ER02_BL IS
'Partner_Rolle_Teilschaden

bildet die Teilschaden-Rollen ab, z.B. Anspruchsteller

BK für Rollen:
''HARM~'' || Surrogat-Key

Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle aus ICLPARTOCC geliefert wird

aus VUX:
kss.PNR_VP where kss.VPNR=0 and kss.VTR_NR_15 = khe.VTR_NR_15 gibt den Versicherungsnehmer, der in der Rolle "Anspruchsteller" dem Teilschaden zur "Erstattung" aus khe zugeordnet wird.

kss.PNR_VP where kss.VPNR=khe.VPNR gibt den Partner, der in der Rolle "versicherte Person" dem Teilschaden zur "Erstattung" aus khe zugeordnet wird.
';

COMMENT ON TABLE PA01_PA02_LE01_BL IS
'Partner_Rolle_Zahlung

bildet die Zahlung-Rollen ab, z.B. 
Zusätzlicher Zahlungempfänger (XPAYEE)
Zuständige Organisationseinheit

BK für Rollen:
''HARM~'' || Surrogat-Key

Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
';

COMMENT ON TABLE PA01_PA02_LE08_BL IS
'Partner_Rolle_Anspruch

Rolle z.B. 
Anspruchsteller ( für Kranken aus khv.GST_LE bzw. immer der VN zum Vertrag)

BK für Rollen:
''HARM~'' || Surrogat-Key

Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
';

COMMENT ON TABLE PA01_Partner_BH IS
'

Business-Keys:
- für Partner aus PARIS: POB (Partnerordnungsbegriff)

- für Partner aus CM:
ICLPARTOCC.BPARTNER (entspricht inhaltlich dem POB aus Paris)

- für Meldender aus CM:
ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)
ICLCLAIM.ZZMELDENDER
Meldender ist dreistellig und entspricht keiner Nummer in Paris

- für Leistungs-/Zahlungsempfänger zu Zahlung_Detail aus CM:
Client (Mandant)
Payee (Partnerordnungsbegriff)
Payee entspricht inhaltlich dem POB aus PARIS.

- für zusätzlicher Leistungs-/Zahlungsempfänger zu Zahlung aus CM:
Client (Mandant)
XPayee (Partnerordnungsbegriff)
XPayee entspricht inhaltlich dem POB aus PARIS.

Partnernummern immer mit Prüfziffer.

für Halter aus KFZ:
VNR (Versicherungsscheinnummer)
''Halter'' (Rolle)

für ''Rechte dritter Personen'':
VNR (Versicherungsscheinnummer)
''DrittePerson'' oder ''BankDrittePerson'' (Rolle)
Bea: klären, ob die Bank nicht bereits Partner in PARIS ist, dann besteht der BK aus dem POB.

für Krankenkassen aus Live Factory:
vp.kkID (Krankenkassen-Id)
''Krankenkasse'' (Rolle)';

COMMENT ON TABLE PA01_Partner_Sch_01_HBS IS
'... dies sind Partnerinformationen aus dem Schaden-System, die nicht in PARIS enthalten sind.';

COMMENT ON TABLE PA02_PartnerRolle_BH IS
'Business Key

''HARM~'' || Surrogat-Key

''Surrogat-Key'' ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert und im Zusammenhang mit harmonisierten Feldern i.d.R. zum Lookup verwendet wird';

COMMENT ON TABLE PA02_PartnerRolle_Par_01_HBS IS
'enthält die Partnerrollen aus SAP-BP.

wird durch ''PA02_PartnerRolle_harm_01_HBS'' ersetzt.';

COMMENT ON TABLE PR01_Produkt_BH IS
'... identifiziert ein Produkt.
 Ein Produkt beschreibt die Konditionen von gleichartigen Versicherungsangeboten, -anträgen und -verträgen.

LIfeFactory (LF):
produktID

Business-Keys:
ProduktID
(Generation)
(Version)

Business Key des Produkts aus CM:
''SHUKR~''||CLIENT||''~''||POLPROD||''~''||GENERATION||''~''||VERSION
mit
ICLCLAIM.POLPROD (Produktname)
ICLCLAIM.GENERAT (Produktgeneration)
ICLCLAIM.VERSION (Produktversion)

für Quellsysteme ohne ausformulierte Produktelemente
Quellsystem
Produkt_ID

für Rechtsschutz:
''RS~Rechtsschutz'' (konstant)

für Kranken:
Produkte sind in VUX nicht abgebildet, eine Zuordnung zu "Tarifen" ist aber möglich, evtl. durch ein Excel-Sheet. BK für Produkte sind beispielhaft
''Kr~Vollversicherung''
''Kr~Auslands-Reisekrankenversicherung''
''Kr~Zusatzversicherung Zahnbehandlung''
...


';

COMMENT ON TABLE WE01_Vertrag_BH IS
' ... ist eine zweiseitige Erstversicherungs-Willenserklärung, die zwischen dem Versicherungsnehmer und einem Versicherungsunternehmen abgeschlossen wird. Verträge werden immer genau einem Versicherungsnehmer, einem Versicherungsunternehmen und einem Versicherungszweig zugeordnet. Ähnlich wie beim Bündel spielt der Versicherungsschein für die Definition des Vertrages eine wesentliche Rolle. Das was als kleinster Versicherungsumfang innerhalb desselben Versicherungszweiges auf einem separaten Versicherungsschein ausgewiesen werden soll, spezifiziert über die obigen Festlegungen (genau ein VN, genau ein VU) hinaus den Vertrag. 

Verträge sind nicht(! ) die rechtlich selbständigen Verträge im juristischen Sinne, sondern können mehrere juristisch selbstständige Verträge desselben Versicherungszweiges umfassen.

Business-Key:

VNR (Versicherungsscheinnummer mit Prüfziffer)

- für Verträge zu Schäden aus CM:
ICLPOL.POLICY (Versicherungsscheinnummer)

- für Verträge aus Lifefactory:
VNR (zur lvID)

Bei Anbindung von Vertragssystemen ist zu prüfen, ob die VNR eindeutig ist oder weiter qualifiziert werden muß, z.B. mit ZNR oder Spartenangabe.';

COMMENT ON TABLE WE01_WE02_WE03_BBL IS
'Zuordnung von Vertrag, Vertragselement und Risiko';

COMMENT ON TABLE WE02_Vertragselement_WE01_BW IS
'... ist ein Teil einer Erstversicherungs-Willenserklärung und dadurch gekennzeichnet, dass versicherte Objekte und/oder versicherte Partner mit dem Vertragselement in Verbindung gebracht werden. In manchen Sparten (Rechtschutz, Haftpflicht) tritt der Versicherungsnehmer an die Stelle der versicherten Person.

Das Vertragselement bildet derart die Klammer um zusammengehörige Risiken, dass alle Risiken zu genau denselben versicherten Objekten/Partnern zusammengefasst werden. Dabei werden die für ein Risiko vorgesehenen versicherten Objekte/Partner beim zugehörigen Produktbaustein im Objekttyp/Partnertyp definiert.

Business-Keys:

- für SachHUKR:

Versicherungsscheinnummer
Vertragselement_LFD

Versicherungsscheinnummer mit Prüfziffer.

Für Quellsysteme, die keine Vertragselemente kennen, z.B. Rechtsschutz, wird die Personen- bzw. Objektkennung anstelle von Vertragselement_LFD angehängt:

für Kranken:
kvt.VTR_NR_15 (Versicherungsscheinnummer)
kvt.VPNR (versPerson_lfd)

für Vertragsspiegel aus CM:
ICLPOL.POLICY (Versicherungsscheinnummer)
''001'' (Vertragselement)

für Vertragselement aus Lifefactory:
VNR (zu lvID)
''...'' (berechnet aus vtvp)';

COMMENT ON TABLE WE03_Risiko_WE02_BW IS
'... ist der Vertragsbestandteil, den das Versicherungsunternehmen dem Kunden als kleinste Einheit anbietet und beschreibt die Ebene der separat ein- und ausschließbaren Produktbausteine eines Versicherungsproduktes.

Business-Keys in der Regel
Versicherungsscheinnummer (mit Prüfziffer)
Vertragselement_LFD
Risiko_LFD

für Vertragsspiegel aus CM / K:
ICLPOL.POLICY (Versicherungsscheinnummer)
''001'' (Vertragselement)
[ ''001'' | ''002'' ] (Haftpficht oder Kasko)


BK für Kranken (VUX) (keine laufende Nummer für Risiko, sondern dreiteiliger Schlüssel für Produktbaustein):
khe.VTR_NR_15 (Vertragsnummer)
khe.VPNR (versichertePerson)
khe.TAR_KENN khe.TAR_STUFE khe.VERS_GRP (Tarif)

Für Quellsysteme, die keine Vertragselemente kennen, wie z.B. Rechtsschutz:
Versicherungsscheinnummer
Risiko_LFD

für Risiko aus Lifefactory:
VNR (zu lvID)
''...'' (berechnet aus vtvp)
vtID
';

