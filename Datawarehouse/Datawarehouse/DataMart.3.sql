--<ScriptOptions statementTerminator=";"/>
-- Version 11765

CREATE TABLE DET_Besch_Objekt (
		SK_Besch_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		Beschreibung_Beschaed_B VARCHAR2(64 CHAR) NOT NULL,
		Objekt_lfd VARCHAR2(8 CHAR) NOT NULL,
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_GerichtsInstanz (
		SK_GerichtsInstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensnummer VARCHAR2(24 CHAR) NOT NULL,
		Instanznummer_lfd VARCHAR2(8 CHAR) NOT NULL,
		Instanz_GUID_A VARCHAR2(180 CHAR) NOT NULL,
		Aktenzeichen_A VARCHAR2(180 CHAR) NOT NULL,
		externe_Referenz_A VARCHAR2(180 CHAR) NOT NULL,
		Gerichtsstand_Gemeinde VARCHAR2(64 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Gerichtsverfahren (
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Verfahrens_GUID_A VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensnummer VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensbeschreibung_B VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensbemerkung_B VARCHAR2(500 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
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

CREATE TABLE DET_NatKatEreignis (
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		NatKat_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		NatKat_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		NatKat_Eintrittsdatum_Beginn DATE NOT NULL,
		NatKat_Eintrittsdatum_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Partner (
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Partnermerkmal NUMBER(28 , 0) NOT NULL,
		POB_A VARCHAR2(64 CHAR) NOT NULL,
		Organisationseinheitart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Organisationseinheitart VARCHAR2(64 CHAR) NOT NULL,
		Organisationseinheitart_lang VARCHAR2(500 CHAR) NOT NULL,
		Name_A VARCHAR2(500 CHAR) NOT NULL,
		Namenszusatz_A VARCHAR2(64 CHAR) NOT NULL,
		Vorname_A VARCHAR2(180 CHAR) NOT NULL,
		Kurzname VARCHAR2(64 CHAR) NOT NULL,
		Titel_kurz VARCHAR2(24 CHAR) NOT NULL,
		Titel VARCHAR2(64 CHAR) NOT NULL,
		Titel_lang VARCHAR2(500 CHAR) NOT NULL,
		Anrede_kurz VARCHAR2(24 CHAR) NOT NULL,
		Anrede VARCHAR2(64 CHAR) NOT NULL,
		Anrede_lang VARCHAR2(500 CHAR) NOT NULL,
		Geburtsort VARCHAR2(64 CHAR) NOT NULL,
		Akademiker_kurz VARCHAR2(24 CHAR) NOT NULL,
		Akademiker VARCHAR2(64 CHAR) NOT NULL,
		Akademiker_lang VARCHAR2(500 CHAR) NOT NULL,
		Beruf VARCHAR2(64 CHAR) NOT NULL,
		Fuehrerscheinklasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Fuehrerscheinklasse VARCHAR2(64 CHAR) NOT NULL,
		Fuehrerscheinklasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Gueterstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gueterstand VARCHAR2(64 CHAR) NOT NULL,
		Gueterstand_lang VARCHAR2(500 CHAR) NOT NULL,
		Rechtsform_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rechtsform VARCHAR2(64 CHAR) NOT NULL,
		Rechtsform_lang VARCHAR2(500 CHAR) NOT NULL,
		Gewerbe VARCHAR2(64 CHAR) NOT NULL,
		Konzernnummer_kurz VARCHAR2(24 CHAR) NOT NULL,
		Konzernnummer VARCHAR2(64 CHAR) NOT NULL,
		Konzernnummer_lang VARCHAR2(500 CHAR) NOT NULL,
		Abrechnungsstelle VARCHAR2(64 CHAR) NOT NULL,
		Sozialversicherungstraeger_Nr VARCHAR2(64 CHAR) NOT NULL,
		Versicherungsunternehmen_Nr VARCHAR2(64 CHAR) NOT NULL,
		Gerichtsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gerichtsart VARCHAR2(64 CHAR) NOT NULL,
		Gerichtsart_lang VARCHAR2(500 CHAR) NOT NULL,
		SchutzKennzeichen_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		SchutzKennzeichen_B VARCHAR2(64 CHAR) NOT NULL,
		SchutzKennzeichen_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sozialversicherungsnummer_AB VARCHAR2(180 CHAR) NOT NULL,
		Bankleitzahl_A VARCHAR2(64 CHAR) NOT NULL,
		BIC_A VARCHAR2(64 CHAR) NOT NULL,
		Vermittlerkontonummer_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_RV_NatKatEreignis (
		SK_RV_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		NatKat_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		NatKat_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		NatKat_Eintrittsdatum_Beginn DATE NOT NULL,
		NatKat_Eintrittsdatum_Ende DATE NOT NULL,
		RV_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		RV_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		RV_Eintrittsdatum_Beginn DATE NOT NULL,
		RV_Eintrittsdatum_Ende DATE NOT NULL,
		Bearbeitungsstand VARCHAR2(180 CHAR) NOT NULL,
		Bemerkung VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Regress (
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		Regress_Lfd VARCHAR2(8 CHAR) NOT NULL,
		Schuldquote NUMBER(16 , 8) NOT NULL,
		Regresswahrscheinlichkeit NUMBER(16 , 8) NOT NULL,
		Schliessungsgrund VARCHAR2(180 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_RegressPosition (
		SK_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regress_Lfd VARCHAR2(8 CHAR) NOT NULL,
		Regressposition_lfd VARCHAR2(8 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(64 CHAR) NOT NULL,
		Deckungsquote NUMBER(16 , 8) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		SchadenSB_Grp VARCHAR2(24 CHAR) NOT NULL,
		GesSchaden_geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		AZ_VN_Rechtsanwalt_A VARCHAR2(500 CHAR) NOT NULL,
		AZ_Gericht_A VARCHAR2(500 CHAR) NOT NULL,
		Kundennr_Arbeitslosenvers_A VARCHAR2(64 CHAR) NOT NULL,
		VNR_Arbeitslosenvers_A VARCHAR2(64 CHAR) NOT NULL,
		Amtliches_Kennzeichen_A VARCHAR2(64 CHAR) NOT NULL,
		HoeheGeldbusse_B NUMBER(16 , 2) NOT NULL,
		Progression NUMBER(16 , 2) NOT NULL,
		Tagegeld_Beginn NUMBER(10 , 0) NOT NULL,
		CoC_VerlaengerungsGrund VARCHAR2(180 CHAR) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schadenort (
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		Adress_Id_A VARCHAR2(24 CHAR) NOT NULL,
		Bezirk VARCHAR2(64 CHAR) NOT NULL,
		Ortsteil_A VARCHAR2(64 CHAR) NOT NULL,
		Strassenname_A VARCHAR2(64 CHAR) NOT NULL,
		Hausnummer_A VARCHAR2(24 CHAR) NOT NULL,
		Adresszusatz_A VARCHAR2(180 CHAR) NOT NULL,
		Gebaeude_A VARCHAR2(24 CHAR) NOT NULL,
		Etage_A VARCHAR2(24 CHAR) NOT NULL,
		WohnungNr_A VARCHAR2(24 CHAR) NOT NULL,
		Ortsname_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schadenrueckstellungen (
		SK_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Teilschaden (
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Haftungsquote NUMBER(16 , 8) NOT NULL,
		Ueberstimmungsgrund VARCHAR2(24 CHAR) NOT NULL,
		angelegt_am DATE NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Invaliditaet_Proz_B NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Verl_Person (
		SK_Verl_Person VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Alter_Person NUMBER(10 , 0) NOT NULL,
		Invaliditaet_Proz_B NUMBER(16 , 2) NOT NULL,
		Beruf VARCHAR2(64 CHAR) NOT NULL,
		Taetigkeit_akt VARCHAR2(64 CHAR) NOT NULL,
		Arbeitgeber VARCHAR2(180 CHAR) NOT NULL,
		Beschreibung_Verletzung_B VARCHAR2(180 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertrag (
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Zusatznummer VARCHAR2(8 CHAR) NOT NULL,
		Zusatznummer_Deckung VARCHAR2(8 CHAR) NOT NULL,
		Zusatznummer_InExkasso VARCHAR2(8 CHAR) NOT NULL,
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		ACV_Mitglied_A VARCHAR2(64 CHAR) NOT NULL,
		ACV_Eintrittsdatum DATE NOT NULL,
		ACV_Mitgliedsnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Materieller_Beginn DATE NOT NULL,
		Enddatum DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertragsdeckung (
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		Deckung VARCHAR2(24 CHAR) NOT NULL,
		Materieller_Beginn DATE NOT NULL,
		Enddatum DATE NOT NULL,
		DeckungsartName VARCHAR2(180 CHAR) NOT NULL,
		DeckungName VARCHAR2(180 CHAR) NOT NULL,
		Vertragsteilnummer_A VARCHAR2(24 CHAR) NOT NULL,
		geaendert_am DATE NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Branchenname VARCHAR2(64 CHAR) NOT NULL,
		Schadenfreiheitsklasse VARCHAR2(64 CHAR) NOT NULL,
		Schadenfreiheitsrabatt NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_ZahlungForderung (
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Zahlungsnummer VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsnotiz_AB VARCHAR2(180 CHAR) NOT NULL,
		Schecknummer_A VARCHAR2(24 CHAR) NOT NULL,
		Scheckaussteller_ProvKonto_A VARCHAR2(24 CHAR) NOT NULL,
		geprueft_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Migr_Zahlungsempf1_A VARCHAR2(64 CHAR) NOT NULL,
		Migr_Zahlungsempf2_A VARCHAR2(64 CHAR) NOT NULL,
		Aktenzeichen_ext_A VARCHAR2(64 CHAR) NOT NULL,
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_ZhlgFordDetail (
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL,
		Zahlung_Detail_LFD VARCHAR2(8 CHAR) NOT NULL,
		geaendert_von_Grp  VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ABCV_Bescheinigung (
		ID_ABCV_Bescheinigung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ABCV_Bescheinigung_kurz VARCHAR2(24 CHAR) NOT NULL,
		ABCV_Bescheinigung_liegt_vor VARCHAR2(64 CHAR) NOT NULL,
		ABCV_Bescheinigung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Abgabestatus (
		ID_Abgabestatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Abgabestatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Abgabestatus VARCHAR2(64 CHAR) NOT NULL,
		Abgabestatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AbschlussVerfahren (
		ID_AbschlussVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_Art_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang_Art VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_Art_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AusgangVerfahren (
		ID_AusgangVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Auswertung_individuell (
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		Auswertung_individuell_kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertung_individuell VARCHAR2(64 CHAR) NOT NULL,
		Auswertung_individuell_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Auswertungsbereich (
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Auswertungsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Auswertungsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bedingungsschluessel (
		ID_Bedingungsschluessel NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bedingungsschluessel_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bedingungsschluessel VARCHAR2(64 CHAR) NOT NULL,
		Bedingungsschluessel_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Berufung_Rev_durch (
		ID_Berufung_Rev_durch NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Berufung_Rev_durch_kurz VARCHAR2(24 CHAR) NOT NULL,
		Berufung_Rev_durch VARCHAR2(64 CHAR) NOT NULL,
		Berufung_Rev_durch_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Beschaedigungsgrad (
		ID_Beschaedigungsgrad NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Beschaedigungsgrad_kurz VARCHAR2(24 CHAR) NOT NULL,
		Beschaedigungsgrad VARCHAR2(64 CHAR) NOT NULL,
		Beschaedigungsgrad_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Beschaedigungstyp (
		ID_Beschaedigungstyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Beschaedigungstyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Beschaedigungstyp VARCHAR2(64 CHAR) NOT NULL,
		Beschaedigungstyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bestandsbeziehungsart (
		ID_Bestandsbeziehungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BZA_kurz VARCHAR2(24 CHAR) NOT NULL,
		BZA VARCHAR2(64 CHAR) NOT NULL,
		BZA_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Betragstyp (
		ID_Betragstyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragstyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragstyp VARCHAR2(64 CHAR) NOT NULL,
		Betragstyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bewertung_VTP (
		ID_Bewertung_VTP NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bewertung_VTP_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bewertung_VTP VARCHAR2(64 CHAR) NOT NULL,
		Bewertung_VTP_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BruttoNetto (
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BruttoNetto_kurz VARCHAR2(24 CHAR) NOT NULL,
		BruttoNetto VARCHAR2(64 CHAR) NOT NULL,
		BruttoNetto_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrt (
		ID_CodeOrt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrt_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrt_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrt_lang_A VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrtsteil (
		ID_CodeOrtsteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrtsteil_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrtsteil_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrtsteil_lang_A VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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

CREATE TABLE DIM_Deckungsart (
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsart VARCHAR2(64 CHAR) NOT NULL,
		Deckungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschluesselK (
		ID_DeckungsschluesselK NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselK_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselK VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselK_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschluesselKH (
		ID_DeckungsschluesselKH NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselKH_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselKH VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselKH_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Deckungsstatus (
		ID_Deckungsstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsstatus VARCHAR2(64 CHAR) NOT NULL,
		Deckungsstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Dunkelverarbeitung (
		ID_Dunkelverarbeitung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Dunkelverarbeitung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Dunkelverarbeitung VARCHAR2(64 CHAR) NOT NULL,
		Dunkelverarbeitung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ereignisart (
		ID_Ereignisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Ereignisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisart VARCHAR2(64 CHAR) NOT NULL,
		Ereignisart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ereignisklasse (
		ID_Ereignisklasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Ereignisklasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisklasse VARCHAR2(64 CHAR) NOT NULL,
		Ereignisklasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erledigungsart (
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erledigungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erledigungsart VARCHAR2(64 CHAR) NOT NULL,
		Erledigungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erledigungszeitpkt_im_Verf (
		ID_Erledigungszeitpkt_im_Verf NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erledigungszeitpkt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erledigungszeitpkt VARCHAR2(64 CHAR) NOT NULL,
		Erledigungszeitpkt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erstkontakt (
		ID_Erstkontakt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erstkontakt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erstkontakt VARCHAR2(64 CHAR) NOT NULL,
		Erstkontakt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Eskalationsstufe (
		ID_Eskalationsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Eskalationsstufe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Eskalationsstufe VARCHAR2(64 CHAR) NOT NULL,
		Eskalationsstufe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Fachgebiet (
		ID_Fachgebiet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fachgebiet_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Fachgebiet_B VARCHAR2(64 CHAR) NOT NULL,
		Fachgebiet_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Fallzahlungspostentyp (
		ID_Fallzahlungspostentyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fallzahlungspostentyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Fallzahlungspostentyp VARCHAR2(64 CHAR) NOT NULL,
		Fallzahlungspostentyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Familienstand (
		ID_Familienstand NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Familienstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Familienstand VARCHAR2(64 CHAR) NOT NULL,
		Familienstand_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Gefahr (
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Partner_Objekttyp NUMBER(28 , 0) NOT NULL,
		ID_Ereignisklasse NUMBER(28 , 0) NOT NULL,
		Gefahr_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gefahr VARCHAR2(64 CHAR) NOT NULL,
		Gefahr_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geltungsbereich (
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geltungsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geltungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Geltungsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Gerichtsbarkeit (
		ID_Gerichtsbarkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Gerichtsbarkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gerichtsbarkeit VARCHAR2(64 CHAR) NOT NULL,
		Gerichtsbarkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezFirma (
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezFirma_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezFirma VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezFirma_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezFirmaTarif (
		ID_GeschaeftsbezFirmaTarif NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezFirmaTarif_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezFirmaTarif VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezFirmaTarif_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezTaetigkTarif (
		ID_GeschaeftsbezTaetigkTarif NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezTaetigkTarif_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezTaetigkTarif VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezTaetigkTarif_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezTaetigkeit (
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezTaetigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geschlecht (
		ID_Geschlecht NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geschlecht_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geschlecht VARCHAR2(64 CHAR) NOT NULL,
		Geschlecht_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Grosskunde (
		ID_Grosskunde NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Grosskunde_kurz VARCHAR2(24 CHAR) NOT NULL,
		Grosskunde VARCHAR2(64 CHAR) NOT NULL,
		Grosskunde_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Haftung (
		ID_Haftung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Haftung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Haftung VARCHAR2(64 CHAR) NOT NULL,
		Haftung_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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

CREATE TABLE DIM_Instanzstatus (
		ID_Instanzstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Instanzstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Instanzstatus VARCHAR2(64 CHAR) NOT NULL,
		Instanzstatus_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizierungRueckst (
		ID_KlassifizierungRueckst NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungRueckst_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungRueckst VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungRueckst_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizierungSchluss (
		ID_KlassifizierungSchluss NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungSchluss_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungSchluss VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungSchluss_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Laenderkennzeichen (
		ID_Laenderkennzeichen NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Laenderkennzeichen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Laenderkennzeichen VARCHAR2(64 CHAR) NOT NULL,
		Laenderkennzeichen_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Leistungsart (
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Leistungsart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_B VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Leistungsart_Typ_kurz VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_Typ VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_Typ_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Typ_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Meldeweg (
		ID_Meldeweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Meldeweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Meldeweg VARCHAR2(64 CHAR) NOT NULL,
		Meldeweg_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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

CREATE TABLE DIM_Nationalitaet (
		ID_Nationalitaet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Nationalitaet_kurz VARCHAR2(24 CHAR) NOT NULL,
		Nationalitaet VARCHAR2(64 CHAR) NOT NULL,
		Nationalitaet_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ObjektArt (
		ID_ObjektArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ObjektArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		ObjektArt VARCHAR2(64 CHAR) NOT NULL,
		ObjektArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partner_Objekttyp (
		ID_Partner_Objekttyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Teilsparte NUMBER(28 , 0) NOT NULL,
		Partner_Objekttyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partner_Objekttyp VARCHAR2(64 CHAR) NOT NULL,
		Partner_Objekttyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partnergemeinschaftsart (
		ID_Partnergemeinschaftsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnergemeinschaftsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnergemeinschaftsart VARCHAR2(64 CHAR) NOT NULL,
		Partnergemeinschaftsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partnertyp (
		ID_Partnertyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnertyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnertyp VARCHAR2(64 CHAR) NOT NULL,
		Partnertyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_Ident (
		ID_Personenzustand_Ident NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_Ident_kurz VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_Ident VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_Ident_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_negativ (
		ID_Personenzustand_negativ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_neg_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_neg_B VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_neg_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_positiv (
		ID_Personenzustand_positiv NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_pos_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_pos_B VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_pos_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Postleitzahl (
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Postleitzahl_A VARCHAR2(24 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Produkt (
		ID_Produkt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Produktname_kurz VARCHAR2(24 CHAR) NOT NULL,
		Produktname VARCHAR2(64 CHAR) NOT NULL,
		Produktname_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RD_Ebene3_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RechtswegEbene (
		ID_RechtswegEbene NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RechtswegEbene_kurz VARCHAR2(24 CHAR) NOT NULL,
		RechtswegEbene VARCHAR2(64 CHAR) NOT NULL,
		RechtswegEbene_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Region (
		ID_Region NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Region_kurz VARCHAR2(24 CHAR) NOT NULL,
		Region VARCHAR2(24 CHAR) NOT NULL,
		Region_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regionaldirektion (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressart (
		ID_Regressart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressart VARCHAR2(64 CHAR) NOT NULL,
		Regressart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressgrund (
		ID_Regressgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressgrund VARCHAR2(64 CHAR) NOT NULL,
		Regressgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regresspotential (
		ID_Regresspotential NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regresspotential_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regresspotential VARCHAR2(64 CHAR) NOT NULL,
		Regresspotential_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressstatus (
		ID_Regressstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressstatus VARCHAR2(64 CHAR) NOT NULL,
		Regressstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstAenderungsgrund (
		ID_RueckstAenderungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Aenderungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Aenderungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Aenderungsgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstSetzungsmethode (
		ID_RueckstSetzungsmethode NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Setzungsmethode_kurz VARCHAR2(24 CHAR) NOT NULL,
		Setzungsmethode VARCHAR2(64 CHAR) NOT NULL,
		Setzungsmethode_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstellungsBetragsart (
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragsart VARCHAR2(64 CHAR) NOT NULL,
		Betragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rueckversicherung (
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherung VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rueckversicherungsart (
		ID_Rueckversicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SBGruppe (
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SBGrp_kurz VARCHAR2(24 CHAR) NOT NULL,
		SBGrp VARCHAR2(64 CHAR) NOT NULL,
		SBGrp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SammelereignisKlasse (
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SammelereignisKlasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		SammelereignisKlasse VARCHAR2(64 CHAR) NOT NULL,
		SammelereignisKlasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SatzartDerZahlung (
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SatzartDerZahlung_kurz VARCHAR2(24 CHAR) NOT NULL,
		SatzartDerZahlung VARCHAR2(64 CHAR) NOT NULL,
		SatzartDerZahlung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadenKomplexitaet (
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Komplexitaet_kurz VARCHAR2(24 CHAR) NOT NULL,
		Komplexitaet VARCHAR2(64 CHAR) NOT NULL,
		Komplexitaet_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadenSteuerung (
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Steuerung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Steuerung VARCHAR2(64 CHAR) NOT NULL,
		Steuerung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schaden_Besonderheit (
		ID_Schaden_Besonderheit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Besonderheiten_kurz VARCHAR2(24 CHAR) NOT NULL,
		Besonderheiten VARCHAR2(64 CHAR) NOT NULL,
		Besonderheiten_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenfallart (
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenfallart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Schadenfallart_B VARCHAR2(64 CHAR) NOT NULL,
		Schadenfallart_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenrueckstellungsart (
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckstellungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckstellungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckstellungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenstatus (
		ID_Schadenstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus VARCHAR2(64 CHAR) NOT NULL,
		Schadenstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Schadenstatus_Ebene1 VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenursache (
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenursache_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenursache VARCHAR2(64 CHAR) NOT NULL,
		Schadenursache_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schuldigkeit (
		ID_Schuldigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schuldigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schuldigkeit VARCHAR2(64 CHAR) NOT NULL,
		Schuldigkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Sparte (
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene1 NUMBER(28 , 0) NOT NULL,
		Sparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Sparte VARCHAR2(64 CHAR) NOT NULL,
		Sparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene1 (
		ID_Spartenbuendel_Ebene1 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene2 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene1_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene2 (
		ID_Spartenbuendel_Ebene2 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene3 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene2_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene3 (
		ID_Spartenbuendel_Ebene3 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene4 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene3_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene4 (
		ID_Spartenbuendel_Ebene4 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene5 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene4_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene4 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene5 (
		ID_Spartenbuendel_Ebene5 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene6 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene5_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene5 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene6 (
		ID_Spartenbuendel_Ebene6 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene7 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene6_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene6 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_Ebene7 (
		ID_Spartenbuendel_Ebene7 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Spartenbuendel_Ebene7_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene7 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenkennziffer (
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Spartenkennziffer_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenkennziffer VARCHAR2(64 CHAR) NOT NULL,
		Spartenkennziffer_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Teilschadenart (
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Teilschadenart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilschadenart VARCHAR2(64 CHAR) NOT NULL,
		Teilschadenart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Teilsparte (
		ID_Teilsparte NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		Teilsparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilsparte VARCHAR2(64 CHAR) NOT NULL,
		Teilsparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Telefonwerbung (
		ID_Telefonwerbung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Telefonwerbung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Telefonwerbung VARCHAR2(64 CHAR) NOT NULL,
		Telefonwerbung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UKZ (
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Unternehmen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_lang VARCHAR2(500 CHAR) NOT NULL,
		Unternehmen_Gruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen_Gruppe VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_Gruppe_lang VARCHAR2(500 CHAR) NOT NULL,
		Unternehmen_Rechtsform_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen_Rechtsform VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_Rechtsform_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Gruppe_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Rechtsform_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Unfallart (
		ID_Unfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Unfallart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unfallart VARCHAR2(64 CHAR) NOT NULL,
		Unfallart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensart (
		ID_Verfahrensart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensart VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensgegenstand (
		ID_Verfahrensgegenstand NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensgegenstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensgegenstand VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensgegenstand_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensstatus (
		ID_Verfahrensstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensstatus VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verletzung (
		ID_Verletzung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verletzung_Kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Verletzung_B VARCHAR2(64 CHAR) NOT NULL,
		Verletzung_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verletzung_Koerperteil (
		ID_Verletzung_Koerperteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Koerperteil_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Koerperteil_B VARCHAR2(64 CHAR) NOT NULL,
		Koerperteil_langB VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Versicherungsart (
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Versicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Versicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Versicherungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vertragsart (
		ID_Vertragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vertragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vertragsart VARCHAR2(64 CHAR) NOT NULL,
		Vertragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vollmachtsstufe (
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vollmachtsstufe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vollmachtsstufe VARCHAR2(64 CHAR) NOT NULL,
		Vollmachtsstufe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Waehrung (
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Waehrung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Waehrung VARCHAR2(64 CHAR) NOT NULL,
		Waehrung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Wagnisart (
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Wagnisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Wagnisart VARCHAR2(64 CHAR) NOT NULL,
		Wagnisart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Werbeunterdrueckung (
		ID_Werbeunterdrueckung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Werbeunterdrueckung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Werbeunterdrueckung VARCHAR2(64 CHAR) NOT NULL,
		Werbeunterdrueckung_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Woche_kurz VARCHAR2(64 CHAR) NOT NULL,
		Woche NUMBER(10 , 0) NOT NULL,
		Woche_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungStatus (
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungStatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungStatus VARCHAR2(64 CHAR) NOT NULL,
		ZahlungStatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlungsart (
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsart VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlungsgrund (
		ID_Zahlungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungsgrundGruppe (
		ID_ZahlungsgrundGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungsgrundGruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungsgrundGruppe VARCHAR2(64 CHAR) NOT NULL,
		ZahlungsgrundGruppe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungspflichtigerArt (
		ID_ZahlungspflichtigerArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungspflichtigerArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungspflichtigerArt VARCHAR2(64 CHAR) NOT NULL,
		ZahlungspflichtigerArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlweg (
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlweg VARCHAR2(64 CHAR) NOT NULL,
		Zahlweg_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zeitzone (
		ID_Zeitzone NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zeitzone_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zeitzone VARCHAR2(64 CHAR) NOT NULL,
		Zeitzone_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_vereinbDatenschutz (
		ID_vereinbDatenschutz NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		vereinbDatenschutz_kurz VARCHAR2(24 CHAR) NOT NULL,
		vereinbDatenschutz VARCHAR2(64 CHAR) NOT NULL,
		vereinbDatenschutz_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BeschObjektFlags (
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Beschaed_Indikatoren_vorh CHAR(1) NOT NULL,
		Beschaedtyp_Daten_vorh CHAR(1) NOT NULL,
		Haftpflicht_Kennz CHAR(1) NOT NULL,
		Beschaed_Kfz_Dach_Boden CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Seite_Mitte_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Seite_Mitte_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Rundum CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BeschObjektMerkmale (
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Beschaedigungstyp NUMBER(28 , 0) NOT NULL,
		ID_Beschaedigungsgrad NUMBER(28 , 0) NOT NULL,
		ID_ObjektArt NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BilRueckstMerkmale (
		ID_BilRueckstMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_MJ_Kapitalreserveklasse NUMBER(28 , 0) NOT NULL,
		ID_VJ_Kapitalreserveklasse NUMBER(28 , 0) NOT NULL,
		ID_MJ_Rentenreserveklasse NUMBER(28 , 0) NOT NULL,
		ID_VJ_Rentenreserveklasse NUMBER(28 , 0) NOT NULL,
		ID_MJ_Regressreserveklasse NUMBER(28 , 0) NOT NULL,
		ID_VJ_Regressreserveklasse NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_GerichtsInstMerkmale (
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Instanzstatus NUMBER(28 , 0) NOT NULL,
		ID_Berufung_Rev_durch NUMBER(28 , 0) NOT NULL,
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		ID_Gerichtstand_Land NUMBER(28 , 0) NOT NULL,
		ID_RechtswegEbene NUMBER(28 , 0) NOT NULL,
		ID_Gerichtsbarkeit NUMBER(28 , 0) NOT NULL,
		ID_Region NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_GerichtsverfMerkmale (
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensstatus NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensart NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensgegenstand NUMBER(28 , 0) NOT NULL,
		ID_Haftung NUMBER(28 , 0) NOT NULL,
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		ID_Erledigungszeitpkt_im_Verf NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Partnermerkmale (
		ID_Partnermerkmal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Personenzustand_Ident NUMBER(28 , 0) NOT NULL,
		ID_Personenzustand_negativ NUMBER(28 , 0) NOT NULL,
		ID_Personenzustand_positiv NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezFirmaTarif NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezTaetigkTarif NUMBER(28 , 0) NOT NULL,
		ID_ABCV_Bescheinigung NUMBER(28 , 0) NOT NULL,
		ID_Nationalitaet NUMBER(28 , 0) NOT NULL,
		ID_Familienstand NUMBER(28 , 0) NOT NULL,
		ID_Geschlecht NUMBER(28 , 0) NOT NULL,
		ID_Erstkontakt NUMBER(28 , 0) NOT NULL,
		Geburtsjahr VARCHAR2(8 CHAR) NOT NULL,
		ID_Telefonwerbung NUMBER(28 , 0) NOT NULL,
		ID_Werbeunterdrueckung NUMBER(28 , 0) NOT NULL,
		ID_vereinbDatenschutz NUMBER(28 , 0) NOT NULL,
		ID_Partnergemeinschaftsart NUMBER(28 , 0) NOT NULL,
		verstorben CHAR(1) NOT NULL,
		ID_Partnertyp NUMBER(28 , 0) NOT NULL,
		ACV_Mitglied CHAR(1) NOT NULL,
		selbsstaendig_KZ CHAR(1) NOT NULL,
		Ruhestand CHAR(1) NOT NULL,
		Teilungsabkommen CHAR(1) NOT NULL,
		Makler CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_RegressMerkmale (
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Regressart NUMBER(28 , 0) NOT NULL,
		ID_Regressgrund NUMBER(28 , 0) NOT NULL,
		ID_Regressstatus NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SSP_RVPMerkmale (
		ID_SSP_RVPMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadenFlags (
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		sensiblerSchaden CHAR(1) NOT NULL,
		Ersatzpflicht CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		SFR_Belastung CHAR(1) NOT NULL,
		KeineBelastung CHAR(1) NOT NULL,
		Auslandsschadenschutz CHAR(1) NOT NULL,
		GeschlossenMitEntsch CHAR(1) NOT NULL,
		GeschlossenOhneEntsch CHAR(1) NOT NULL,
		VersicherungsschVersagt CHAR(1) NOT NULL,
		KeineStufung CHAR(1) NOT NULL,
		Migriert CHAR(1) NOT NULL,
		Auffaelligkeit CHAR(1) NOT NULL,
		AktiveMeldung CHAR(1) NOT NULL,
		GJ_Schaden CHAR(1) NOT NULL,
		Spaet_Schaden CHAR(1) NOT NULL,
		Schaden_rueckgekauft CHAR(1) NOT NULL,
		ProzessKennzeichen CHAR(1) NOT NULL,
		Hausakte CHAR(1) NOT NULL,
		aufwandsneutral CHAR(1) NOT NULL,
		ohneEntschaedigung CHAR(1) NOT NULL,
		Abgabe_RD CHAR(1) NOT NULL,
		aufwandsneutral_ohne_SRK CHAR(1) NOT NULL,
		GJ_wiedereroeffnet CHAR(1) NOT NULL,
		GJ_wiedereroeffnet_monetaer CHAR(1) NOT NULL,
		Quartal_Spaet_Schaden CHAR(1) NOT NULL,
		Halbj_Spaet_Schaden CHAR(1) NOT NULL,
		Dreiv_Spaet_Schaden CHAR(1) NOT NULL,
		Abgabe_Z CHAR(1) NOT NULL,
		Klasse_Sturm_Hagel CHAR(1) NOT NULL,
		Klasse_Flut_Ueberschw_Rueckst CHAR(1) NOT NULL,
		Klasse_Erdb_Erdru_Lawine_Sonst CHAR(1) NOT NULL,
		Klasse_NatKat_fuer_Austauschqu CHAR(1) NOT NULL,
		Ordnungswidrigkeit_Kennz CHAR(1) NOT NULL,
		Sozialrechtsschutz_Kennz CHAR(1) NOT NULL,
		Strafverfahren_Kennz CHAR(1) NOT NULL,
		Freizeit_Unfallschutz CHAR(1) NOT NULL,
		VTP_Info CHAR(1) NOT NULL,
		Halter CHAR(1) NOT NULL,
		CoC_zur_Loeschung_vorgesehen CHAR(1) NOT NULL,
		CoC_zur_Sperrung_vorgesehen CHAR(1) NOT NULL,
		Hellschaltung CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Schadenmerkmale (
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Meldeweg NUMBER(28 , 0) NOT NULL,
		ID_Ereignisart NUMBER(28 , 0) NOT NULL,
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		ID_SchuldigkeitSichtVU NUMBER(28 , 0) NOT NULL,
		ID_SchuldigkeitSichtVN NUMBER(28 , 0) NOT NULL,
		ID_Bewertung_VTP NUMBER(28 , 0) NOT NULL,
		ID_KlassifizierungSchluss NUMBER(28 , 0) NOT NULL,
		ID_Dunkelverarbeitung NUMBER(28 , 0) NOT NULL,
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		ID_Zeitzone NUMBER(28 , 0) NOT NULL,
		ID_AusgangVerfahren NUMBER(28 , 0) NOT NULL,
		ID_AbschlussVerfahren NUMBER(28 , 0) NOT NULL,
		ID_Schaden_Besonderheit NUMBER(28 , 0) NOT NULL,
		ID_Verletzung NUMBER(28 , 0) NOT NULL,
		ID_Verletzung_Koerperteil NUMBER(28 , 0) NOT NULL,
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		ID_Unfallart NUMBER(28 , 0) NOT NULL,
		ID_Fachgebiet NUMBER(28 , 0) NOT NULL,
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL,
		ID_Eskalationsstufe NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Schadenortmerkmale (
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Laenderkennzeichen NUMBER(28 , 0) NOT NULL,
		ID_CodeOrt NUMBER(28 , 0) NOT NULL,
		ID_CodeOrtsteil NUMBER(28 , 0) NOT NULL,
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		ID_Region NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadenrueckstMerkmale (
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_RueckstAenderungsgrund NUMBER(28 , 0) NOT NULL,
		ID_RueckstSetzungsmethode NUMBER(28 , 0) NOT NULL,
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Schadenursache_Gefahr (
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		Spartenliste_ID NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_TeilschadenFlags (
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		Abgelehnt CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		Betrugsverdacht_C CHAR(1) NOT NULL,
		Ersatzpflicht CHAR(1) NOT NULL,
		Mitarbeiter CHAR(1) NOT NULL,
		Fahrgast_OePNV CHAR(1) NOT NULL,
		Mehrleistung CHAR(1) NOT NULL,
		Sondervereinb_Mehrl CHAR(1) NOT NULL,
		TeilfallUngueltig CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_TeilschadenMerkmale (
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL,
		ID_Regresspotential NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_VertragsdeckMerkmale (
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		ID_Deckungsstatus NUMBER(28 , 0) NOT NULL,
		ID_Rueckversicherungsart NUMBER(28 , 0) NOT NULL,
		KaskoMobil CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Vertragsmerkmale (
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		ID_Produkt NUMBER(28 , 0) NOT NULL,
		Versicherungszweig VARCHAR2(8 CHAR) NOT NULL,
		Autoplus CHAR(1) NOT NULL,
		ID_Bestandsbeziehungsart NUMBER(28 , 0) NOT NULL,
		ID_Vertragsart NUMBER(28 , 0) NOT NULL,
		Rabattschutz CHAR(1) NOT NULL,
		Beitragsrueckstand CHAR(1) NOT NULL,
		ID_Bedingungsschluessel NUMBER(28 , 0) NOT NULL,
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		SchadenfreiheitsklasseKH VARCHAR2(64 CHAR) NOT NULL,
		SchadenfreiheitsrabattKH NUMBER(16 , 2) NOT NULL,
		ID_DeckungsschluesselKH NUMBER(28 , 0) NOT NULL,
		SchadenfreiheitsklasseVK VARCHAR2(64 CHAR) NOT NULL,
		SchadenfreiheitsrabattVK NUMBER(16 , 2) NOT NULL,
		ID_DeckungsschluesselK NUMBER(28 , 0) NOT NULL,
		KaskoMobil CHAR(1) NOT NULL,
		ID_Grosskunde NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordDetMerkmale (
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Fallzahlungspostentyp NUMBER(28 , 0) NOT NULL,
		ID_Betragstyp NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsgrund NUMBER(28 , 0) NOT NULL,
		ID_ZahlungsgrundGruppe NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordFlags (
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ScheckOffen CHAR(1) NOT NULL,
		Migriert CHAR(1) NOT NULL,
		durchgefuehrt CHAR(1) NOT NULL,
		Pruefung_Zuf CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordMerkmale (
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL,
		ID_Abgabestatus NUMBER(28 , 0) NOT NULL,
		ID_ZahlungspflichtigerArt NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Besch_Objekt (
		SK_Besch_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Waehrung_Schadenhoehe NUMBER(28 , 0) NOT NULL,
		Vorauss_Schadenhoehe NUMBER(16 , 2) NOT NULL,
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Bilanzrueckstellungen (
		SK_Bilanzrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_BilRueckstMerkmale NUMBER(28 , 0) NOT NULL,
		ID_MJ_KapitalrueckstDatum NUMBER(28 , 0) NOT NULL,
		ID_VJ_KapitalrueckstDatum NUMBER(28 , 0) NOT NULL,
		ID_MJ_RentenrueckstDatum NUMBER(28 , 0) NOT NULL,
		ID_VJ_RentenrueckstDatum NUMBER(28 , 0) NOT NULL,
		ID_MJ_RegressrueckstDatum NUMBER(28 , 0) NOT NULL,
		ID_VJ_RegressrueckstDatum NUMBER(28 , 0) NOT NULL,
		Meldejahr_Kapitalreservebetrag NUMBER(16 , 2) NOT NULL,
		Vorjahr_Kapitalreservebetrag NUMBER(16 , 2) NOT NULL,
		Meldejahr_Rentenreservebetrag NUMBER(16 , 2) NOT NULL,
		Vorjahr_Rentenreservebetrag NUMBER(16 , 2) NOT NULL,
		Meldejahr_Regressreservebetrag NUMBER(16 , 2) NOT NULL,
		Vorjahr_Regressreservebetrag NUMBER(16 , 2) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_GerichtsInstanz (
		SK_GerichtsInstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		Laufzeit NUMBER(16 , 8) NOT NULL,
		ID_Eingangsdatum_Gericht NUMBER(28 , 0) NOT NULL,
		ID_Erwiderungsfrist_Ende NUMBER(28 , 0) NOT NULL,
		ID_Zustellungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Instanz_Beginndatum NUMBER(28 , 0) NOT NULL,
		ID_Instanz_Endedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Verhandlungsdatum NUMBER(28 , 0) NOT NULL,
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Gerichtsverfahren (
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		ID_Verjaehrungsfrist_Ende NUMBER(28 , 0) NOT NULL,
		ID_Aufnahmedatum NUMBER(28 , 0) NOT NULL,
		ID_Offenlegungsdatum NUMBER(28 , 0) NOT NULL,
		Streitwert_geschaetzt NUMBER(16 , 2) NOT NULL,
		Streitwert_tatsaechlich NUMBER(16 , 2) NOT NULL,
		Anwaltsbudget NUMBER(16 , 2) NOT NULL,
		ID_Erledigungsdatum NUMBER(28 , 0) NOT NULL,
		Urteilsbetrag NUMBER(16 , 2) NOT NULL,
		ID_Rechtskraftdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Regress (
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Sendedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		BetragGeschaetzt NUMBER(16 , 2) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_RegressPosition (
		SK_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2) NOT NULL,
		Regressbetrag NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SSP_RVP (
		SK_SSP_RVP VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Statjahr NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Statmonat NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_SSP_RVPMerkmale NUMBER(28 , 0) NOT NULL,
		Abwicklungsperiode NUMBER(28 , 0) NOT NULL,
		Rueckstellungswert NUMBER(16 , 2) NOT NULL,
		Sparte_Bez VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Bearbeitungsstelledatum NUMBER(28 , 0) NOT NULL,
		ID_Bearbeitungsstatusdatum NUMBER(28 , 0) NOT NULL,
		ID_Loeschdatum NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_GesSchaden_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_AbgabedatumInkasso NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Wiedervorlage NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		BelastendeZahlungen NUMBER(16 , 2) NOT NULL,
		AnzahlToteVerletzte NUMBER(10 , 0) NOT NULL,
		JahresbeitragKunde NUMBER(16 , 2) NOT NULL,
		Rueckkaufbetrag NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_SRK NUMBER(16 , 2) NOT NULL,
		Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Rueckstellungen_saldiert NUMBER(16 , 2) NOT NULL,
		Schadenaufwand_ohne_IK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlTote NUMBER(10 , 0) NOT NULL,
		AnzahlVerletzte NUMBER(10 , 0) NOT NULL,
		ID_Waehrung_aussergeri NUMBER(28 , 0) NOT NULL,
		Streitwert_aussergeri NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz1 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz1 NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz2 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz2 NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz3 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz3 NUMBER(16 , 2) NOT NULL,
		ID_arbeitslos_VNSicht_seit NUMBER(28 , 0) NOT NULL,
		ID_arbeitslos_seit NUMBER(28 , 0) NOT NULL,
		ID_Arbeitslosengeld_seit NUMBER(28 , 0) NOT NULL,
		ID_Karenzzeit_bis NUMBER(28 , 0) NOT NULL,
		ID_LetzterPosteingang NUMBER(28 , 0) NOT NULL,
		ID_CoC_Loeschdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		ID_CoC_Sperrdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		ID_Ausfuehrungsdatum  NUMBER(28 , 0) NOT NULL,
		ID_Anfragedatum NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schadenrueckstellungen (
		SK_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Teilschaden (
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_Auslandsbuero VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_Auslandsbuero_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		ID_Erfassungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_GesSchaden_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Invaliditaet_Beginn_B NUMBER(28 , 0) NOT NULL,
		Teilsch_Regr_gesi_Eing_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Regr_gesi_Eing_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Regr_gesi_Eing_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Regr_unges_Eing_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Regr_unges_Eing_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Regr_unges_Eing_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlGerichtsverfahren NUMBER(10 , 0) NOT NULL,
		Anzahl_Insassen NUMBER(10 , 0) NOT NULL,
		Anzahl_Familienangehoerige NUMBER(10 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Verl_Person (
		SK_Verl_Person VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Verl_Person VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkmal_Verl_Person NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		Todesfall CHAR(1) NOT NULL,
		Verletzungen_B CHAR(1) NOT NULL,
		selbstaendig CHAR(1) NOT NULL,
		ID_Sterbedatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zhlg_Ford (
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Region_zahlungsausloesend NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Belegdatum NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeit NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		SK_Partner_Zahlungsempf VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkmal_ZahlEmpf NUMBER(28 , 0) NOT NULL,
		Betrag NUMBER(16 , 2) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		EingegangenerBetrag NUMBER(16 , 2) NOT NULL,
		EingegangenerBetragInEuro NUMBER(16 , 2) NOT NULL,
		ID_Abgabedatum NUMBER(28 , 0) NOT NULL,
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zhlg_Ford_Detail (
		SK_Zhlg_Ford_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		Teilbetrag NUMBER(16 , 2) NOT NULL,
		TeilbetragInEuro NUMBER(16 , 2) NOT NULL,
		GeforderterBetrag NUMBER(16 , 2) NOT NULL,
		GeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		SK_Partner_Zahlungsempf VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkmal_ZahlEmpf NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_SSP_RVP_Ausw_indiv (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		FK_SSP_RVP VARCHAR2(64 CHAR) NOT NULL,
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Apraxa_RA (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Apraxa_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Apraxa_RA NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Eigener_RA (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Eigener_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Eigener_RA NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_RVEreign (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_RV_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Regbeauftragter (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_VerletztePerson (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerletztePerson VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_VerletztePerson NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Spartenliste_Ausw_indiv (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenliste NUMBER(28 , 0) NOT NULL,
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Handwerker (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Handwerker VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Handwerker NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Regbeauftragter (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Sachverst (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Sachverstaendiger VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Sachverstaendiger NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_VerletztePerson (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerletztePerson VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_VerletztePerson NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '14.09.2016','DD.MM.YYYY') NOT NULL,
		Deploymentdatum DATE DEFAULT sysdate NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_Besch_Objekt ADD CONSTRAINT DET_Besch_Objekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Besch_Objekt);

ALTER TABLE DET_GerichtsInstanz ADD CONSTRAINT DET_GerichtsInstanz_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_GerichtsInstanz);

ALTER TABLE DET_Gerichtsverfahren ADD CONSTRAINT DET_Gerichtsverfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Gerichtsverfahren);

ALTER TABLE DET_Ladelauf ADD CONSTRAINT DET_Ladelauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag);

ALTER TABLE DET_NatKatEreignis ADD CONSTRAINT DET_NatKatEreignis_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_NatKatEreignis);

ALTER TABLE DET_Partner ADD CONSTRAINT DET_Partner_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Partner);

ALTER TABLE DET_RV_NatKatEreignis ADD CONSTRAINT DET_RV_NatKat_Ereignis_PK  PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RV_NatKatEreignis);

ALTER TABLE DET_Regress ADD CONSTRAINT DET_Regress_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Regress);

ALTER TABLE DET_RegressPosition ADD CONSTRAINT DET_RegressPosition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RegressPosition);

ALTER TABLE DET_Schaden ADD CONSTRAINT DET_Schaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden);

ALTER TABLE DET_Schadenort ADD CONSTRAINT DET_Schadenort_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenort);

ALTER TABLE DET_Schadenrueckstellungen ADD CONSTRAINT DET_Schadenrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenrueckstellungen);

ALTER TABLE DET_Teilschaden ADD CONSTRAINT DET_Teilschaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden);

ALTER TABLE DET_Verl_Person ADD CONSTRAINT DET_Verl_Person_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Verl_Person);

ALTER TABLE DET_Vertrag ADD CONSTRAINT DET_Vertrag_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Vertrag);

ALTER TABLE DET_Vertragsdeckung ADD CONSTRAINT DET_Vertragsdeckung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Vertragsdeckung);

ALTER TABLE DET_ZahlungForderung ADD CONSTRAINT DET_ZahlungForderung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_ZahlungForderung);

ALTER TABLE DET_ZhlgFordDetail ADD CONSTRAINT DET_ZhlgFordDetail_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_ZhlgFordDetail);

ALTER TABLE DIM_ABCV_Bescheinigung ADD CONSTRAINT DIM_ABCV_Bescheinigung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ABCV_Bescheinigung);

ALTER TABLE DIM_Abgabestatus ADD CONSTRAINT DIM_Abgabestatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Abgabestatus);

ALTER TABLE DIM_AbschlussVerfahren ADD CONSTRAINT DET_AbschlussVerfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_AbschlussVerfahren);

ALTER TABLE DIM_AusgangVerfahren ADD CONSTRAINT DET_AusgangVerfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_AusgangVerfahren);

ALTER TABLE DIM_Auswertung_individuell ADD CONSTRAINT DIM_Auswertung_individuell_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Auswertung_individuell);

ALTER TABLE DIM_Auswertungsbereich ADD CONSTRAINT DET_Auswertungsbereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Auswertungsbereich);

ALTER TABLE DIM_Bedingungsschluessel ADD CONSTRAINT DIM_Bedingungsschluessel_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bedingungsschluessel);

ALTER TABLE DIM_Berufung_Rev_durch ADD CONSTRAINT DIM_Berufung_Rev_durch_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Berufung_Rev_durch);

ALTER TABLE DIM_Beschaedigungsgrad ADD CONSTRAINT DIM_Beschaedigungsgrad_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Beschaedigungsgrad);

ALTER TABLE DIM_Beschaedigungstyp ADD CONSTRAINT DIM_Beschaedigungstyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Beschaedigungstyp);

ALTER TABLE DIM_Bestandsbeziehungsart ADD CONSTRAINT DIM_Bestandsbeziehungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bestandsbeziehungsart);

ALTER TABLE DIM_Betragstyp ADD CONSTRAINT DIM_Betragstyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Betragstyp);

ALTER TABLE DIM_Bewertung_VTP ADD CONSTRAINT DIM_Bewertung_VTP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bewertung_VTP);

ALTER TABLE DIM_BruttoNetto ADD CONSTRAINT DIM_BruttoNetto_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_BruttoNetto);

ALTER TABLE DIM_CodeOrt ADD CONSTRAINT DIM_CodeOrt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_CodeOrt);

ALTER TABLE DIM_CodeOrtsteil ADD CONSTRAINT DIM_CodeOrtsteil_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_CodeOrtsteil);

ALTER TABLE DIM_Datum ADD CONSTRAINT DIM_Datum_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Datum);

ALTER TABLE DIM_Deckungsart ADD CONSTRAINT DIM_Deckungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Deckungsart);

ALTER TABLE DIM_DeckungsschluesselK ADD CONSTRAINT DIM_DeckungsschluesselK_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_DeckungsschluesselK);

ALTER TABLE DIM_DeckungsschluesselKH ADD CONSTRAINT DIM_DeckungsschluesselKH_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_DeckungsschluesselKH);

ALTER TABLE DIM_Deckungsstatus ADD CONSTRAINT DIM_Deckungsstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Deckungsstatus);

ALTER TABLE DIM_Dunkelverarbeitung ADD CONSTRAINT DIM_Dunkelverarbeitung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Dunkelverarbeitung);

ALTER TABLE DIM_Ereignisart ADD CONSTRAINT DIM_Ereignisart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Ereignisart);

ALTER TABLE DIM_Ereignisklasse ADD CONSTRAINT DIM_Ereignisklasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Ereignisklasse);

ALTER TABLE DIM_Erledigungsart ADD CONSTRAINT DIM_Erledigungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Erledigungsart);

ALTER TABLE DIM_Erledigungszeitpkt_im_Verf ADD CONSTRAINT DIM_Erledigungszeitpkt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Erledigungszeitpkt_im_Verf);

ALTER TABLE DIM_Erstkontakt ADD CONSTRAINT DIM_Erstkontakt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Erstkontakt);

ALTER TABLE DIM_Eskalationsstufe ADD CONSTRAINT DIM_Eskalationsstufe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Eskalationsstufe);

ALTER TABLE DIM_Fachgebiet ADD CONSTRAINT DIM_Fachgebiet_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Fachgebiet);

ALTER TABLE DIM_Fallzahlungspostentyp ADD CONSTRAINT DIM_Fallzahlungspostentyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Fallzahlungspostentyp);

ALTER TABLE DIM_Familienstand ADD CONSTRAINT DIM_Familienstand_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Familienstand);

ALTER TABLE DIM_Gefahr ADD CONSTRAINT DIM_Gefahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Gefahr);

ALTER TABLE DIM_Geltungsbereich ADD CONSTRAINT DET_Geltungsbereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Geltungsbereich);

ALTER TABLE DIM_Gerichtsbarkeit ADD CONSTRAINT DIM_Gerichtsbarkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Gerichtsbarkeit);

ALTER TABLE DIM_GeschaeftsbezFirma ADD CONSTRAINT DIM_GeschaeftsbezFirma_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezFirma);

ALTER TABLE DIM_GeschaeftsbezFirmaTarif ADD CONSTRAINT DIM_GeschaeftsbezFirmaTarif_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezFirmaTarif);

ALTER TABLE DIM_GeschaeftsbezTaetigkTarif ADD CONSTRAINT DIM_GeschaeftsbezTaetigkTarif1 PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezTaetigkTarif);

ALTER TABLE DIM_GeschaeftsbezTaetigkeit ADD CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezTaetigkeit);

ALTER TABLE DIM_Geschlecht ADD CONSTRAINT DIM_Geschlecht_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Geschlecht);

ALTER TABLE DIM_Grosskunde ADD CONSTRAINT DIM_Grosskunde_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Grosskunde);

ALTER TABLE DIM_Haftung ADD CONSTRAINT DIM_Haftung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Haftung);

ALTER TABLE DIM_Halbjahr ADD CONSTRAINT DIM_Halbjahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Halbjahr);

ALTER TABLE DIM_Instanzstatus ADD CONSTRAINT DIM_Instanzstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Instanzstatus);

ALTER TABLE DIM_JNKENNZ ADD CONSTRAINT LKP_KENNZ_PK PRIMARY KEY
	(KENNZ);

ALTER TABLE DIM_Jahr ADD CONSTRAINT DIM_Jahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Jahr);

ALTER TABLE DIM_KlassifizierungRueckst ADD CONSTRAINT DIM_Klassifizierungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_KlassifizierungRueckst);

ALTER TABLE DIM_KlassifizierungSchluss ADD CONSTRAINT DIM_KlassifizierungSchluss_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_KlassifizierungSchluss);

ALTER TABLE DIM_Laenderkennzeichen ADD CONSTRAINT DIM_Laenderkennzeichen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Laenderkennzeichen);

ALTER TABLE DIM_Leistungsart ADD CONSTRAINT DIM_Leistungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Leistungsart);

ALTER TABLE DIM_Meldeweg ADD CONSTRAINT DIM_Meldeweg_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Meldeweg);

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Monat);

ALTER TABLE DIM_Nationalitaet ADD CONSTRAINT DIM_Nationalitaet_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Nationalitaet);

ALTER TABLE DIM_ObjektArt ADD CONSTRAINT DIM_ObjektArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ObjektArt);

ALTER TABLE DIM_Partner_Objekttyp ADD CONSTRAINT DIM_Partner_Objekttyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partner_Objekttyp);

ALTER TABLE DIM_Partnergemeinschaftsart ADD CONSTRAINT DIM_Partnergemeinschaftsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partnergemeinschaftsart);

ALTER TABLE DIM_Partnertyp ADD CONSTRAINT DIM_Partnertyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partnertyp);

ALTER TABLE DIM_Personenzustand_Ident ADD CONSTRAINT DIM_Personenzustand_Ident_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Personenzustand_Ident);

ALTER TABLE DIM_Personenzustand_negativ ADD CONSTRAINT DIM_Personenzustand_negativ_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Personenzustand_negativ);

ALTER TABLE DIM_Personenzustand_positiv ADD CONSTRAINT DIM_Personenzustand_positiv_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Personenzustand_positiv);

ALTER TABLE DIM_Postleitzahl ADD CONSTRAINT DIM_Postleitzahl_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Postleitzahl);

ALTER TABLE DIM_Produkt ADD CONSTRAINT DIM_Produkt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Produkt);

ALTER TABLE DIM_Quartal ADD CONSTRAINT DIM_Quartal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Quartal);

ALTER TABLE DIM_RD_Ebene1 ADD CONSTRAINT DIM_RD_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene1);

ALTER TABLE DIM_RD_Ebene2 ADD CONSTRAINT DIM_RD_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene2);

ALTER TABLE DIM_RD_Ebene3 ADD CONSTRAINT DIM_RD_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene3);

ALTER TABLE DIM_RechtswegEbene ADD CONSTRAINT DIM_RechtswegEbene_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RechtswegEbene);

ALTER TABLE DIM_Region ADD CONSTRAINT DIM_Region_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Region);

ALTER TABLE DIM_Regionaldirektion ADD CONSTRAINT DIM_Regionaldirektion_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regionaldirektion);

ALTER TABLE DIM_Regressart ADD CONSTRAINT DIM_Regressart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressart);

ALTER TABLE DIM_Regressgrund ADD CONSTRAINT DIM_Regressgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressgrund);

ALTER TABLE DIM_Regresspotential ADD CONSTRAINT DIM_Regresspotential_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regresspotential);

ALTER TABLE DIM_Regressstatus ADD CONSTRAINT DIM_Regressstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressstatus);

ALTER TABLE DIM_RueckstAenderungsgrund ADD CONSTRAINT DIM_RueckstAenderungsgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstAenderungsgrund);

ALTER TABLE DIM_RueckstSetzungsmethode ADD CONSTRAINT DIM_RueckstSetzungsmethode_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstSetzungsmethode);

ALTER TABLE DIM_RueckstellungsBetragsart ADD CONSTRAINT DIM_RueckstBetragsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstellungsBetragsart);

ALTER TABLE DIM_Rueckversicherung ADD CONSTRAINT DIM_Rueckversicherung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Rueckversicherung);

ALTER TABLE DIM_Rueckversicherungsart ADD CONSTRAINT DIM_Rueckversicherungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Rueckversicherungsart);

ALTER TABLE DIM_SBGruppe ADD CONSTRAINT DIM_zust_SBGruppe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_zust_SBGruppe);

ALTER TABLE DIM_SammelereignisKlasse ADD CONSTRAINT DIM_SammelereignisKlasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SammelereignisKlasse);

ALTER TABLE DIM_SatzartDerZahlung ADD CONSTRAINT DIM_SatzartDerZahlung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SatzartDerZahlung);

ALTER TABLE DIM_SchadenKomplexitaet ADD CONSTRAINT DIM_SchadenKomplexitaet_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SchadenKomplexitaet);

ALTER TABLE DIM_SchadenSteuerung ADD CONSTRAINT DIM_SchadenSteuerung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SchadenSteuerung);

ALTER TABLE DIM_Schaden_Besonderheit ADD CONSTRAINT DIM_Schaden_Besonderheit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schaden_Besonderheit);

ALTER TABLE DIM_Schadenfallart ADD CONSTRAINT DIM_Schadenfallart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenfallart);

ALTER TABLE DIM_Schadenrueckstellungsart ADD CONSTRAINT DIM_Schadenrueckstellart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenrueckstellungsart);

ALTER TABLE DIM_Schadenstatus ADD CONSTRAINT DIM_Schadenstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenstatus);

ALTER TABLE DIM_Schadenursache ADD CONSTRAINT DIM_Schadenursache_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenursache);

ALTER TABLE DIM_Schuldigkeit ADD CONSTRAINT DIM_Schuldigkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schuldigkeit);

ALTER TABLE DIM_Sparte ADD CONSTRAINT DIM_Sparte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Sparte);

ALTER TABLE DIM_Spartenbuendel_Ebene1 ADD CONSTRAINT DIM_Spartenbuendel_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene1);

ALTER TABLE DIM_Spartenbuendel_Ebene2 ADD CONSTRAINT DIM_Spartenbuendel_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene2);

ALTER TABLE DIM_Spartenbuendel_Ebene3 ADD CONSTRAINT DIM_Spartenbuendel_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene3);

ALTER TABLE DIM_Spartenbuendel_Ebene4 ADD CONSTRAINT DIM_Spartenbuendel_Ebene4_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene4);

ALTER TABLE DIM_Spartenbuendel_Ebene5 ADD CONSTRAINT DIM_Spartenbuendel_Ebene5_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene5);

ALTER TABLE DIM_Spartenbuendel_Ebene6 ADD CONSTRAINT DIM_Spartenbuendel_Ebene6_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene6);

ALTER TABLE DIM_Spartenbuendel_Ebene7 ADD CONSTRAINT DIM_Spartenbuendel_Ebene7_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene7);

ALTER TABLE DIM_Spartenkennziffer ADD CONSTRAINT DIM_Spartenkennziffer_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenkennziffer);

ALTER TABLE DIM_Teilschadenart ADD CONSTRAINT DIM_Teilschadenart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Teilschadenart);

ALTER TABLE DIM_Teilsparte ADD CONSTRAINT DIM_Teilsparte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Teilsparte);

ALTER TABLE DIM_Telefonwerbung ADD CONSTRAINT DIM_Telefonwerbung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Telefonwerbung);

ALTER TABLE DIM_UKZ ADD CONSTRAINT DIM_UKZ_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_UKZ);

ALTER TABLE DIM_Unfallart ADD CONSTRAINT DET_Unfallart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Unfallart);

ALTER TABLE DIM_Verfahrensart ADD CONSTRAINT DIM_Verfahrensart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensart);

ALTER TABLE DIM_Verfahrensgegenstand ADD CONSTRAINT DIM_Verfahrensgegenstand_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensgegenstand);

ALTER TABLE DIM_Verfahrensstatus ADD CONSTRAINT DIM_Verfahrensstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensstatus);

ALTER TABLE DIM_Verletzung ADD CONSTRAINT DET_Verletzung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verletzung);

ALTER TABLE DIM_Verletzung_Koerperteil ADD CONSTRAINT DET_Verletzung_Koerperteil_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verletzung_Koerperteil);

ALTER TABLE DIM_Versicherungsart ADD CONSTRAINT DIM_Versicherungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Versicherungsart);

ALTER TABLE DIM_Vertragsart ADD CONSTRAINT DIM_Vertragsmerkmale_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Vertragsart);

ALTER TABLE DIM_Vollmachtsstufe ADD CONSTRAINT DIM_Vollmachtsstufe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Vollmachtsstufe);

ALTER TABLE DIM_Waehrung ADD CONSTRAINT DIM_Waehrung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Waehrung);

ALTER TABLE DIM_Wagnisart ADD CONSTRAINT DIM_Wagnisart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Wagnisart);

ALTER TABLE DIM_Werbeunterdrueckung ADD CONSTRAINT DIM_Werbeunterdrueckung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Werbeunterdrueckung);

ALTER TABLE DIM_Woche ADD CONSTRAINT D_Woche_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Woche);

ALTER TABLE DIM_ZahlungStatus ADD CONSTRAINT DIM_ZahlungStatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungStatus);

ALTER TABLE DIM_Zahlungsart ADD CONSTRAINT DIM_Zahlungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlungsart);

ALTER TABLE DIM_Zahlungsgrund ADD CONSTRAINT DIM_Zahlungsgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlungsgrund);

ALTER TABLE DIM_ZahlungsgrundGruppe ADD CONSTRAINT DIM_ZahlungsgrundGruppe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungsgrundGruppe);

ALTER TABLE DIM_ZahlungspflichtigerArt ADD CONSTRAINT DIM_ZahlungspflichtigerArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungspflichtigerArt);

ALTER TABLE DIM_Zahlweg ADD CONSTRAINT DIM_Zahlweg_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlweg);

ALTER TABLE DIM_Zeitzone ADD CONSTRAINT DIM_Zeitzone_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zeitzone);

ALTER TABLE DIM_vereinbDatenschutz ADD CONSTRAINT DIM_vereinbDatenschutz_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_vereinbDatenschutz);

ALTER TABLE DMK_BeschObjektFlags ADD CONSTRAINT DMK_BeschObjektFlags_PK PRIMARY KEY
	(ID_BeschObjektFlags);

ALTER TABLE DMK_BeschObjektMerkmale ADD CONSTRAINT DMK_BeschObjektMerkmale_PK PRIMARY KEY
	(ID_BeschObjektMerkmale);

ALTER TABLE DMK_BilRueckstMerkmale ADD CONSTRAINT DMK_BilRueckstMerkmale_PK PRIMARY KEY
	(ID_BilRueckstMerkmale);

ALTER TABLE DMK_GerichtsInstMerkmale ADD CONSTRAINT DMK_GerichtsInstMerkmale_PK PRIMARY KEY
	(ID_GerichtsInstMerkmale);

ALTER TABLE DMK_GerichtsverfMerkmale ADD CONSTRAINT DMK_GerichtsverfahrenMerkm_PK PRIMARY KEY
	(ID_GerichtsverfMerkmal);

ALTER TABLE DMK_Partnermerkmale ADD CONSTRAINT DMK_Partnermerkmale_PK PRIMARY KEY
	(ID_Partnermerkmal);

ALTER TABLE DMK_RegressMerkmale ADD CONSTRAINT DMK_RegressMerkmale_PK PRIMARY KEY
	(ID_RegressMerkmale);

ALTER TABLE DMK_SSP_RVPMerkmale ADD CONSTRAINT DMK_SSP_RVPMerkmale_PK PRIMARY KEY
	(ID_SSP_RVPMerkmale);

ALTER TABLE DMK_SchadenFlags ADD CONSTRAINT DMK_Schadenflags_PK PRIMARY KEY
	(ID_SchadenFlags);

ALTER TABLE DMK_Schadenmerkmale ADD CONSTRAINT DMK_Schadenmerkmale_PK PRIMARY KEY
	(ID_Schadenmerkmale);

ALTER TABLE DMK_Schadenortmerkmale ADD CONSTRAINT DMK_Schadenortmerkmale_PK PRIMARY KEY
	(ID_Schadenortmerkmale);

ALTER TABLE DMK_SchadenrueckstMerkmale ADD CONSTRAINT DMK_SchadenrueckstMerkmale_PK PRIMARY KEY
	(ID_Schadenrueckstmerkmale);

ALTER TABLE DMK_Schadenursache_Gefahr ADD CONSTRAINT DMK_Schadenursache_Gefahr_PK PRIMARY KEY
	(ID_Spartenliste);

ALTER TABLE DMK_TeilschadenFlags ADD CONSTRAINT DMK_TeilschadenFlags_PK PRIMARY KEY
	(ID_TeilschadenFlags);

ALTER TABLE DMK_TeilschadenMerkmale ADD CONSTRAINT DMK_TeilschadenMerkmale_PK PRIMARY KEY
	(ID_TeilschadenMerkmale);

ALTER TABLE DMK_VertragsdeckMerkmale ADD CONSTRAINT DMK_VertragsdeckMerkmale_PK PRIMARY KEY
	(ID_VertragsdeckMerkmale);

ALTER TABLE DMK_Vertragsmerkmale ADD CONSTRAINT DMK_Vertragsmerkmale_PK PRIMARY KEY
	(ID_Vertragsmerkmale);

ALTER TABLE DMK_ZhlgFordDetMerkmale ADD CONSTRAINT DMK_ZhlgFordDetMerkmale_PK PRIMARY KEY
	(ID_ZhlgFordDetMerkmale);

ALTER TABLE DMK_ZhlgFordFlags ADD CONSTRAINT DMK_ZhlgFordFlags_PK PRIMARY KEY
	(ID_ZhlgFordFlags);

ALTER TABLE DMK_ZhlgFordMerkmale ADD CONSTRAINT DMK_ZhlgFordMerkmale_PK PRIMARY KEY
	(ID_ZahlgFordMerkmale);

ALTER TABLE F_Besch_Objekt ADD CONSTRAINT F_Besch_Objekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Besch_Objekt);

ALTER TABLE F_Bilanzrueckstellungen ADD CONSTRAINT F_Bilanzrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Bilanzrueckstellungen);

ALTER TABLE F_GerichtsInstanz ADD CONSTRAINT F_GerichtsInstanz_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_GerichtsInstanz);

ALTER TABLE F_Gerichtsverfahren ADD CONSTRAINT F_Gerichtsverfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Gerichtsverfahren);

ALTER TABLE F_Regress ADD CONSTRAINT F_Regress_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Regress);

ALTER TABLE F_RegressPosition ADD CONSTRAINT F_RegressPos_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RegressPosition);

ALTER TABLE F_SSP_RVP ADD CONSTRAINT F_SSP_RVP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_SSP_RVP);

ALTER TABLE F_Schaden ADD CONSTRAINT F_Schaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden);

ALTER TABLE F_Schadenrueckstellungen ADD CONSTRAINT F_Schadenrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenrueckstellungen);

ALTER TABLE F_Teilschaden ADD CONSTRAINT F_Teilschaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden);

ALTER TABLE F_Verl_Person ADD CONSTRAINT F_Verl_Pers_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Verl_Person);

ALTER TABLE F_Zhlg_Ford ADD CONSTRAINT F_Zahlung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_ZahlungForderung);

ALTER TABLE F_Zhlg_Ford_Detail ADD CONSTRAINT F_Zhlg_Ford_Detail_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Zhlg_Ford_Detail);

ALTER TABLE R_SSP_RVP_Ausw_indiv ADD CONSTRAINT R_SSP_RVP_Ausw_indiv_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 FK_SSP_RVP,
	 ID_Auswertung_individuell);

ALTER TABLE R_Schaden_Apraxa_RA ADD CONSTRAINT R_Schaden_Apraxa_RA_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Apraxa_RA);

ALTER TABLE R_Schaden_Eigener_RA ADD CONSTRAINT R_Schaden_Eigener_RA PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Eigener_RA);

ALTER TABLE R_Schaden_RVEreign ADD CONSTRAINT R_Schaden_RVEreign_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_RV_NatKatEreignis,
	 ID_SammelereignisKlasse);

ALTER TABLE R_Schaden_Regbeauftragter ADD CONSTRAINT R_Schaden_Regbeauftragter_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Regbeauftragter);

ALTER TABLE R_Schaden_VerletztePerson ADD CONSTRAINT R_Schaden_VerletztePerson_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_VerletztePerson);

ALTER TABLE R_Spartenliste_Ausw_indiv ADD CONSTRAINT R_Spartenliste_Ausw_indiv_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenliste,
	 ID_Auswertung_individuell);

ALTER TABLE R_Teilschaden_Handwerker ADD CONSTRAINT R_Teilschaden_Handwerker_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Handwerker);

ALTER TABLE R_Teilschaden_Regbeauftragter ADD CONSTRAINT R_Teilschaden_Regbeauftr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Regbeauftragter);

ALTER TABLE R_Teilschaden_Sachverst ADD CONSTRAINT R_Teilschaden_Sachverst_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Sachverstaendiger);

ALTER TABLE R_Teilschaden_VerletztePerson ADD CONSTRAINT R_Teilschaden_VerlPerson_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_VerletztePerson);

COMMENT ON COLUMN DET_Besch_Objekt.Beschreibung_Beschaed_B IS
'Beschreibung der Beschädigung

aus ER01_OB01_bescObj_SHUKR_01_LBS.Beschreibung_Beschaed_B

Datenschutz $B';

COMMENT ON COLUMN DET_Besch_Objekt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.Objekt_lfd IS
'... ist eine laufende Nummer zur eindeutigen Identifizierung von Objekten innerhalb eines Schadens.

aus OB01_Objekt_Sch_01_HBS.Objekt_lfd

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.SK_Besch_Objekt IS
'aus ER01_OB01_bescObj_SHUKR_01_LBS.FK_ER01_OB01_beschObjekt

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ersatzdatum IS
'... identifiziert bei rückwirkend korrigierten Sätzen, wann der Datensatz durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz erstmals ins Data Mart geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Aktenzeichen_A IS
'... ist das bei Gericht geführte Aktenzeichen der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Aktenzeichen_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.Gerichtsstand_Gemeinde IS
'... ist die Gemeinde des Gerichtsstands der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Gerichtsstand_Gemeinde

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Instanz_GUID_A IS
'...ist die GUID der Verfahrensinstanz

aus ER04_GerInstanz_SHUKR_01_WBS.Instanz_GUID_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.Instanznummer_lfd IS
'... ist die identifizierende Nummer der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Instanznummer_lfd 
(Instanznummer, relativ zum Gerichtsverfahren)

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.SK_GerichtsInstanz IS
'aus ER04_GerInstanz_SHUKR_01_WBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN DET_GerichtsInstanz.Schadennummer_A IS
'
aus ER04_GerInstanz_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Verfahrensnummer IS
'
aus ER04_GerInstanz_SHUKR_01_WBS.Verfahrensnummer

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.externe_Referenz_A IS
'... ist eine Referenz auf externe Unterlagen. ???

aus ER04_GerInstanz_SHUKR_01_WBS.externe_Referenz_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ER04_GerInstanz_SHUKR_01_WBS.geaendert_von_A

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN DET_Gerichtsverfahren.Schadennummer_A IS
'
aus ER03_GerVerf_eig_SHUKR_01_HBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.Verfahrens_GUID_A IS
'...ist die GUID des Verfahrens

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrens_GUID_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Gerichtsverfahren.Verfahrensbemerkung_B IS
'... ist eine Bemerkung zum Verfahren.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbemerkung_B

wegen Freitext: Datenschutz $B';

COMMENT ON COLUMN DET_Gerichtsverfahren.Verfahrensbeschreibung_B IS
'... ist eine Freitext-Beschreibung des Verfahrens.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbeschreibung_B
	
Datenschutz $B';

COMMENT ON COLUMN DET_Gerichtsverfahren.Verfahrensnummer IS
'... ist die identifizierende Nummer des Gerichtsverfahrens.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensnummer
("Eindeutiger technischer Name des Verfahrens")

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverfahren.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_von_A

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

COMMENT ON COLUMN DET_NatKatEreignis.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.SK_NatKatEreignis IS
'aus ER00_Sammelergnis_man_01_HBS. FK_ER00_Sammelereignis';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Abrechnungsstelle IS
'Im Rahmen des Pensionsfonds wird dieses Feld zur sauberen Zuordnung von Firmenabhängigkeiten benötigt. Der Inhalt ist abhängig von der Konzern-Nr.

aus PA01_Partner_Par_01_HBS.Abrechnungsstelle

Datenschutz $-			';

COMMENT ON COLUMN DET_Partner.Akademiker IS
'Kurztext des akademischen Grades

aus PA01_Partner_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Akademiker_kurz IS
'Kurzbezeichnung des akademischen Grades

aus PA01_Partner_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Akademiker_lang IS
'Langtext des akademischen Grades

aus PA01_Partner_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Anrede IS
'Kurztext der Anrede

Herr
Frau
...
aus PA01_Partner_Par_01_HBS.C_Anrede

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Anrede_kurz IS
'Kurzbezeichnung der Anrede

Herr
Frau
...
aus PA01_Partner_Par_01_HBS.C_Anrede

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Anrede_lang IS
'Langtext der Anrede

Herr
Frau
...
aus PA01_Partner_Par_01_HBS.C_Anrede

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.BIC_A IS
'... ist der "Bank Indentifier Code" oder "SWIFT-Code" zur Identifikation von Geschäftsstellen im Zahlungsverkehr (gemäß Norm ISO 9362), falls der Partner ein Kreditinstitut ist.

aus PA01_Partner_Par_01_HBS.BIC_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Bankleitzahl_A IS
'... ist die Identifikation deutscher Kreditinstitute (=BLZ), falls der Partner ein Kreditinstitut ist.

aus PA01_Partner_Par_01_HBS.Bankleitzahl_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Beruf IS
'Freitext

aus PA01_Partner_Par_01_HBS.Beruf

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Fuehrerscheinklasse IS
'Kurztext der Führerscheinklasse

aus PA01_Partner_Par_01_HBS.C_Fuehrerscheinklasse

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Fuehrerscheinklasse_kurz IS
'Kurzbezeichnung der Führerscheinklasse

aus PA01_Partner_Par_01_HBS.C_Fuehrerscheinklasse

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Fuehrerscheinklasse_lang IS
'Langtext der Führerscheinklasse

aus PA01_Partner_Par_01_HBS.C_Fuehrerscheinklasse

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Geburtsort IS
'
aus PA01_Partner_Par_01_HBS.Geburtsort

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gerichtsart IS
'Kurztext der Gerichtsart bei Gerichten

aus PA01_Partner_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gerichtsart_kurz IS
'Kurzbezeichnung der Gerichtsart bei Gerichten

aus PA01_Partner_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gerichtsart_lang IS
'Langtext der Gerichtsart bei Gerichten

aus PA01_Partner_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gewerbe IS
'... ist eine wirtschaftliche Tätigkeit, die auf eigene Rechnung, eigene Verantwortung und auf Dauer mit der Absicht zur Gewinnerzielung betrieben wird.

Klartext

aus PA01_Partner_Par_01_HBS.Gewerbe

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueterstand IS
'Kurztext des Güterstandes der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Gueterstand

01 kein Güterstand 
02 Gütergemeinschaft
03 Gütertrennung
04 Zugewinngemeinschaft
05 unbekannt

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueterstand_kurz IS
'Kurzbezeichnung des Güterstandes der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Gueterstand

01 kein Güterstand 
02 Gütergemeinschaft
03 Gütertrennung
04 Zugewinngemeinschaft
05 unbekannt

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueterstand_lang IS
'Langtext des Güterstandes der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Gueterstand

01 kein Güterstand 
02 Gütergemeinschaft
03 Gütertrennung
04 Zugewinngemeinschaft
05 unbekannt

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Konzernnummer IS
'Kurztext für die Klassifizierung der Firma als DB, Sparda, DEVK+DB-Umfeld oder Allgemeiner Markt.

aus PA01_Partner_Par_01_HBS.C_Konzernnummer

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Konzernnummer_kurz IS
'Kurzbezeichnung für die Klassifizierung der Firma als DB, Sparda, DEVK+DB-Umfeld oder Allgemeiner Markt.

aus PA01_Partner_Par_01_HBS.C_Konzernnummer

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Konzernnummer_lang IS
'Langtext für die Klassifizierung der Firma als DB, Sparda, DEVK+DB-Umfeld oder Allgemeiner Markt.

aus PA01_Partner_Par_01_HBS.C_Konzernnummer

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Kurzname IS
'... ist eine bekannte Abkürzung, z.B. "05" für "RD Köln" oder das Unternehmenskennzeichen  (G, N, A, L) für Unternehmen des DEVK-Konzerns

aus PA01_Partner_Par_01_HBS.Kurzname

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Name_A IS
'... ist für natürliche Personen der Nachname (=Name_NP in PARIS) und für juristische Personen der Name (=Name_Inst in PARIS, =Zuname1+Zuname2 in KFZ)

aus PA01_Partner_Par_01_HBS.Name_A
und PA01_Partner_Sch_01_HBS.Name_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Namenszusatz_A IS
'sen., jun., leer

aus PA01_Partner_Par_01_HBS.Namenszusatz_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Organisationseinheitart IS
'Kurztext der Art der Organisationseinheit, z.B. Regionaldirektion, Zentrale, Abteilung, Gruppe, .... für OEen innerhalb der DEVK

aus PA01_Partner_Par_01_HBS.C_Organisationseinheitart

07	Abt					Abteilung
04	GL					Geschäftsleitung
08	Gruppe			Gruppe
05	HA					Hauptabteilung
03	RD					Regionaldirektion
06	Stabsbereich	Stabsbereich
02	Vorstand			Vorstand
01	Zentrale			Zentrale
09	keine Organisationseinheit	
10	KKC					Kunden-Kompetenz-Center

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Organisationseinheitart_kurz IS
'Kurzbezeichnung der Art der Organisationseinheit, z.B. Regionaldirektion, Zentrale, Abteilung, Gruppe, .... für OEen innerhalb der DEVK

aus PA01_Partner_Par_01_HBS.C_Organisationseinheitart

07	Abt					Abteilung
04	GL					Geschäftsleitung
08	Gruppe			Gruppe
05	HA					Hauptabteilung
03	RD					Regionaldirektion
06	Stabsbereich	Stabsbereich
02	Vorstand			Vorstand
01	Zentrale			Zentrale
09	keine Organisationseinheit	
10	KKC					Kunden-Kompetenz-Center

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Organisationseinheitart_lang IS
'Langtext der Art der Organisationseinheit, z.B. Regionaldirektion, Zentrale, Abteilung, Gruppe, .... für OEen innerhalb der DEVK

aus PA01_Partner_Par_01_HBS.C_Organisationseinheitart

07	Abt					Abteilung
04	GL					Geschäftsleitung
08	Gruppe			Gruppe
05	HA					Hauptabteilung
03	RD					Regionaldirektion
06	Stabsbereich	Stabsbereich
02	Vorstand			Vorstand
01	Zentrale			Zentrale
09	keine Organisationseinheit	
10	KKC					Kunden-Kompetenz-Center

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.

aus PA01_Partner_Par_01_HBS.POB_A
und PA01_Partner_Sch_01_HBS.POB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.Rechtsform IS
'Kurztext der Rechtsform für juristische Personen

AG, GmbH, GbR, ...

aus PA01_Partner_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DET_Partner.Rechtsform_kurz IS
'Kurzbezeichnung der Rechtsform für juristische Personen

AG, GmbH, GbR, ...

aus PA01_Partner_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DET_Partner.Rechtsform_lang IS
'Langtext der Rechtsform für juristische Personen

AG, GmbH, GbR, ...

aus PA01_Partner_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DET_Partner.SK_Partner IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DET_Partner.SchutzKennzeichen_B IS
'Kurztext für die Identifizierung besonders geschützter Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

Zur Zeit existieren nur zwei Ausprägungen entsprechend "ja / nein". Im Rahmen laufender Projekte wird das Schutzbedürfnis detaillierter beschrieben werden. Die dann existierenden Ausprägungen werden beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur für bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschränkten Nutzerkreisen zu Kenntnis gebracht werden dürfen.

geplante Ausprägungen s. Partnerschutz_SL:

0 ungeschützt
1 geschützt
2 einfacher Schutz
3 erweiterter Schutz
4 besonderer Schutz

2-4 werden noch nicht verwendet (04/2013)

aus PA01_Partner_Par_01_HBS.C_SchutzKennzeichen_B

Datenschutz $B';

COMMENT ON COLUMN DET_Partner.SchutzKennzeichen_kurz_B IS
'Kurzbezeichnung für die Identifizierung besonders geschützter Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

Zur Zeit existieren nur zwei Ausprägungen entsprechend "ja / nein". Im Rahmen laufender Projekte wird das Schutzbedürfnis detaillierter beschrieben werden. Die dann existierenden Ausprägungen werden beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur für bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschränkten Nutzerkreisen zu Kenntnis gebracht werden dürfen.

geplante Ausprägungen s. Partnerschutz_SL:

0 ungeschützt
1 geschützt
2 einfacher Schutz
3 erweiterter Schutz
4 besonderer Schutz

2-4 werden noch nicht verwendet (04/2013)

aus PA01_Partner_Par_01_HBS.C_SchutzKennzeichen_B

Datenschutz $B';

COMMENT ON COLUMN DET_Partner.SchutzKennzeichen_lang_B IS
'Langtext für die Identifizierung besonders geschützter Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

Zur Zeit existieren nur zwei Ausprägungen entsprechend "ja / nein". Im Rahmen laufender Projekte wird das Schutzbedürfnis detaillierter beschrieben werden. Die dann existierenden Ausprägungen werden beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur für bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschränkten Nutzerkreisen zu Kenntnis gebracht werden dürfen.

geplante Ausprägungen s. Partnerschutz_SL:

0 ungeschützt
1 geschützt
2 einfacher Schutz
3 erweiterter Schutz
4 besonderer Schutz

2-4 werden noch nicht verwendet (04/2013)

aus PA01_Partner_Par_01_HBS.C_SchutzKennzeichen_B

Datenschutz $B';

COMMENT ON COLUMN DET_Partner.Sozialversicherungsnummer_AB IS
'...ist die externe Nummer der Bundes- bzw. Landesversicherungsanstalt für Angestellte; früher: Rentenversicherungsnummer

aus PA01_Partner_Par_01_HBS.Sozialversicherungsnummer_AB

Datenschutz $A1B';

COMMENT ON COLUMN DET_Partner.Sozialversicherungstraeger_Nr IS
'nur für Sozialversicherungsträger

aus PA01_Partner_Par_01_HBS.Sozialversicherungstraeger_Nr

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Titel IS
'Kurztext des Adelstitels

aus PA01_Partner_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Titel_kurz IS
'Kurzbezeichnung des Adelstitels

aus PA01_Partner_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Titel_lang IS
'Langtext des Adelstitels

aus PA01_Partner_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Vermittlerkontonummer_A IS
'Vermittler-Kto-Nr. des Vermittlers, der zu dieser Person als letzter Abschluß-Provision erhielt.

aus PA01_Partner_Par_01_HBS.Vermittlerkontonummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.Versicherungsunternehmen_Nr IS
'nur für Partner, die Versicherungen sind

aus PA01_Partner_Par_01_HBS.Versicherungsunternehmen_Nr

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Vorname_A IS
'... ist für natürliche Personen der Vorname.

aus PA01_Partner_Par_01_HBS.Vorname_A

Datenschutz $A2';

COMMENT ON COLUMN DET_RV_NatKatEreignis.Bearbeitungsstand IS
'... ist eine Notiz zum Bearbeitungsstand des RV-Ereignisses

aus aus ER06_SammelergTeil_man_01_WBS.Bearbeitungsstand

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.Bemerkung IS
'... ist eine Bemerkung zum RV-Ereignis

aus aus ER06_SammelergTeil_man_01_WBS.Bemerkung

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Ende

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Ereignis_ID IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus ER06_SammelergTeil_man_01_WBS.Sammelereignisteil_ID

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Ereignis_Name IS
'... ist die Bezeichnung des RV-Ereignisses

aus ER06_SammelergTeil_man_01_WBS.SammelereignisteilName

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.SK_RV_NatKatEreignis IS
'aus ER06_SammelergTeil_man_01_WBS. FK_ER06_SammelereignTeil
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN DET_Regress.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

aus LE03_Regress_SHUKR_01_HBS.Regress_Lfd

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Regresswahrscheinlichkeit IS
'Schätzung für die Wahrscheinlichkeit eines erfolgreichen Regresses

Datenqualität zu schlecht

aus LE03_Regress_SHUKR_01_HBS.Regresswahrscheinlichkeit

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN DET_Regress.Schliessungsgrund IS
'Schließungsgrund für Regress - Freitextfeld

aus LE03_Regress_SHUKR_01_HBS.Schliessungsgrund

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Schuldquote IS
'Schuldquote für den Regress bei prozentualer Verteilung der Verantwortung für den Schaden

aus LE03_Regress_SHUKR_01_HBS.Schuldquote

Datenqualität zu schlecht und Verwendung in der Quelle unklar

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE03_Regress_SHUKR_01_HBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_RegressPosition.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

aus LE03_Regress_SHUKR_01_HBS.Regress_Lfd

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Regressposition_lfd IS
'... ist die Nummer der Regressposition innerhalb eines Regresses.

aus LE04_Regresspos_SHUKR_01_WBS.Regressposition_lfd

bei laufender Nummer innerhalb des Regress: Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.SK_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition';

COMMENT ON COLUMN DET_RegressPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE04_Regresspos_SHUKR_01_WBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.AZ_Gericht_A IS
'... ist das Aktenzeichen des Gerichts (nur für RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_Gericht_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.AZ_VN_Rechtsanwalt_A IS
'... ist das Aktenzeichen des Rechtsanwalts des VN (nur für RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_VN_Rechtsanwalt_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Amtliches_Kennzeichen_A IS
'... ist das amtliche Kennzeichen des Fahrzeugs.

aus ER01_Schaden_SHUKR_02_HBS.Amtliches_Kennzeichen_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.CoC_VerlaengerungsGrund IS
'... ist ein Text, der im Zusammenhang mit der Verlängerung der CoC-Löschfrist erstellt wird.

aus ER01_Schaden_SHUKR_02_HBS.CoC_VerlaengerungsGrund

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegenüber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ER01_Schaden_SHUKR_01_HBS.Deckungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.GesSchaden_geaendert_von_Grp IS
'... ist die Gruppe des Users der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.HoeheGeldbusse_B IS
'...ist die Höhe der Geldbuße

vermutlich eher Filter als Kennzahl?

aus ER01_Schaden_SHUKR_02_HBS.HoeheGeldbusse_B

Datenschutz $B';

COMMENT ON COLUMN DET_Schaden.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DET_Schaden.Kundennr_Arbeitslosenvers_A IS
'... ist die Kundennummer der Arbeitslosenversicherung

aus ER01_Schaden_SHUKR_02_HBS.Kundennr_Arbeitslosenvers_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Progression IS
'Progression in Prozent - Vertrags- bzw. Produkteigenschaft

0
225
300
350
500

aus ER01_Schaden_SHUKR_02_HBS.Progression

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DET_Schaden.SchadenSB_Grp IS
'... ist die Gruppe des Sachbearbeiter, der für den Schaden zuständig ist

aus ER01_Schaden_SHUKR_01_HBS.SchadenSB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Schadennummer_A IS
'
aus ER01_Schaden_SHUKR_01_HBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Tagegeld_Beginn IS
'Tagegeld Leistungsbeginn

aus ER01_Schaden_SHUKR_02_HBS.Tagegeld_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.VNR_Arbeitslosenvers_A IS
'... ist die Versicherungsnummer der Arbeitslosenversicherung

aus ER01_Schaden_SHUKR_02_HBS.VNR_Arbeitslosenvers_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.angelegt_von_Grp IS
'... ist die Gruppe des Users, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.angelegt_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schadenort.Adress_Id_A IS
'Bezeichnet in CM eine Adressinformation, die einem SAP-Business Partner zugeordnet ist.

aus aus GE01_Gebiet_Sch_01_HBS.Adress_Id_A

Datenschutz $A1
';

COMMENT ON COLUMN DET_Schadenort.Adresszusatz_A IS
'... ist eine unstrukturierte Ergänzung zur Adresse.
Beispiele:
-  Etage/Stock/OG/UG/Garten/Vorder-/Hinterhaus/..
-  Angaben bzgl. Ortsteile, Wohnungs-, Zimmer-,Appartement- und sonstige Nummern
-  Hinweise auf (vorübergehende) Mitbewohner(innen): "c/o", "z.Hd.", "bei",...

aus GE01_Gebiet_Sch_01_HBS.Adresszusatz_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Bezirk IS
'Bezirk (US: County)

aus GE01_Gebiet_Sch_01_HBS.Bezirk

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Etage_A IS
'... definiert das Geschoss, z.B. zur näheren Beschreibung eines Schadenortes

Werte: UG, EG, 01 (1_), 02 (2_), .... , 99 

aus GE01_Gebiet_Sch_01_HBS.Etage_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Gebaeude_A IS
'Gebäude (Nummer oder Kürzel)

aus GE01_Gebiet_Sch_01_HBS.Gebaeude_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Hausnummer_A IS
'aus GE01_Gebiet_Sch_01_HBS.Hausnummer_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DET_Schadenort.Ortsname_A IS
'
aus GE01_Gebiet_Sch_01_HBS.Ortsname_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Ortsteil_A IS
'aus GE01_Gebiet_Sch_01_HBS.Ortsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Strassenname_A IS
'aus GE01_Gebiet_Sch_01_HBS.Strassenname_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.WohnungNr_A IS
'Nummer einer Wohnung, eines Appartements oder eines Raumes

aus GE01_Gebiet_Sch_01_HBS.WohnungNr_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenrueckstellungen.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.ID_Schadenrueckstmerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN DET_Schadenrueckstellungen.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckstellungen.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE09_Rueckst_SHUKR_01_HBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Haftungsquote IS
'.. ist nur in KH und Allg. H relevant und bezeichnet den Anteil der Haftung der DEVK gegenüber Dritten (Anspruchssteller).

aus ER02_Teilschaden_SHUKR_01_WBS.Haftungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DET_Teilschaden.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DET_Teilschaden.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidität

aus ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Proz_B

Datenschutz $B';

COMMENT ON COLUMN DET_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DET_Teilschaden.Schadennummer_A IS
'Schadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Teilschaden_LFD

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Ueberstimmungsgrund IS
'Uberstimmungsgrund - laut SAP hinterliegt keine Werteliste.

aus ER02_Teilschaden_SHUKR_01_WBS.Ueberstimmungsgrund
z.Zt. leer

Datenschutz $-
';

COMMENT ON COLUMN DET_Teilschaden.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.angelegt_von_Grp IS
'... ist die Gruppe des Users, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ER02_Teilschaden_SHUKR_01_WBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Verl_Person.Alter_Person IS
'Personenalter

aus PA01_PA02_ER01_SHUKR_02_LBS.Alter_Person

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Arbeitgeber IS
'Arbeitgeber

aus PA01_PA02_ER01_SHUKR_02_LBS.Arbeitgeber

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Beruf IS
'Beruf

aus PA01_PA02_ER01_SHUKR_02_LBS.Beruf

Datenschutz $-
';

COMMENT ON COLUMN DET_Verl_Person.Beschreibung_Verletzung_B IS
'Beschreibung der Verletzung

aus PA01_PA02_ER01_SHUKR_02_LBS.Beschreibung_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DET_Verl_Person.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidität

aus PA01_PA02_ER01_SHUKR_02_LBS.Invaliditaet_Proz_B

Datenschutz $B
';

COMMENT ON COLUMN DET_Verl_Person.SK_Verl_Person IS
'aus PA01_PA02_ER01_SHUKR_02_LBS.FK_PA01_PA02_ER01

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Taetigkeit_akt IS
'Aktuelle Tätigkeit

aus PA01_PA02_ER01_SHUKR_02_LBS.Taetigkeit_akt

Datenschutz $-
';

COMMENT ON COLUMN DET_Verl_Person.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus PA01_PA02_ER01_SHUKR_02_LBS.geaendert_von_A

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.ACV_Eintrittsdatum IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Eintrittsdatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.ACV_Mitglied_A IS
'Nummer aus der BUT000 (Geschäftspartnertabelle)

aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitglied_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.ACV_Mitgliedsnummer_A IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitgliedsnummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.Enddatum IS
'... der Zeitpunkt, an dem der Versicherungsschutz endet. ???

aus ER01_WE01_VertrSpie_Sch_01_LBM.Enddatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz beginnt.

aus ER01_WE01_VertrSpie_Sch_01_LBM.Materieller_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN DET_Vertrag.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Versicherungsscheinnummer_A IS
'... ist die Versicherungsscheinnummer mit Prüfziffer

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.VertragsversionsNr IS
'... ist der Zähler der Vertragsversion in CM

aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_InExkasso

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer
Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer_Deckung IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_Deckung

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer_InExkasso IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_InExkasso

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Branchenname IS
'Name der Branche 

Aus ER01_WE03_DeckSpie_Sch_01_LBS.Branchenname

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Deckung IS
'... ist der Zähler für die Deckungen des Vertrags aus CM

aus ER01_WE03_DeckSpie_Sch_01_LBS.Deckung

original char(4)

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.DeckungName IS
'Bezeichnung der Deckung

aus ER01_WE03_DeckSpie_Sch_01_LBS.DeckungName

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.DeckungsartName IS
'Bezeichnung der Deckungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.DeckungsartName

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Enddatum IS
'... der Zeitpunkt, an dem der Versicherungsschutz zur Deckung endet.

aus ER01_WE03_DeckSpie_Sch_01_LBS.Enddatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz zur Deckung beginnt.

aus ER01_WE03_DeckSpie_Sch_01_LBS.Materieller_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.SK_Vertragsdeckung IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.FK_ER01_WE03_Deckungsspiegel';

COMMENT ON COLUMN DET_Vertragsdeckung.Schadenfreiheitsklasse IS
'Schadensfreiheitklasse für die jeweilige Deckung - Freitext

aus ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsklasse

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Schadenfreiheitsrabatt IS
'Schadenfreiheitsrabatt für di jeweilige Deckung

aus ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsrabatt

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Vertragsteilnummer_A IS
'eindeutige Vertragsteilnummer

aus ER01_WE03_DeckSpie_Sch_01_LBS.Vertragsteilnummer_A

Datenschutz $A1
';

COMMENT ON COLUMN DET_Vertragsdeckung.VertragsversionsNr IS
'... ist der Zähler der Vertragsversion aus CM

aus ER01_WE03_DeckSpie_Sch_01_LBS.VertragsversionsNr

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.geaendert_am IS
'.. ist das Datum und die Uhrzeit der Aktualisierung des Vertragsspiegels

aus ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_von_A 

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Aktenzeichen_ext_A IS
'Aktenzeichen des externen Inkasso oder Regress-Büros

aus LE01_Zahlung_SHUKR_02_HBS.Aktenzeichen_ext_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DET_ZahlungForderung.ID_ZhlgFordFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DET_ZahlungForderung.Migr_Zahlungsempf1_A IS
'...ist für aus SDS migrierte Schäden das erste Freitextfeld mit Informationen zum Zahlungsempfänger

aus LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf1_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Migr_Zahlungsempf2_A IS
'...ist für aus SDS migrierte Schäden das zweite Freitextfeld mit Informationen zum Zahlungsempfänger

aus LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf2_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DET_ZahlungForderung.Schadennummer_A IS
'Schadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Scheckaussteller_ProvKonto_A IS
'Provisionskonto-Nummer des Scheckausstellers fuer manuelle Scheckzahlungen
In der Quelle 8stellig, Freitext

aus LE01_Zahlung_SHUKR_01_HBS.Scheckaussteller_ProvKonto_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Schecknummer_A IS
'Schecknummer fuer manuelle Scheckzahlungen

aus LE01_Zahlung_SHUKR_01_HBS.Schecknummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Teilschaden_LFD

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Zahlungsnotiz_AB IS
'...ist der "Verwendungszweck", der auf dem Kontoauszug des Kunden erscheint. Enthält evtl. identifizierende und sonstige sensible Inhalte (Freitext).

aus LE01_Zahlung_SHUKR_01_HBS.Zahlungsnotiz_AB

Datenschutz $A1B';

COMMENT ON COLUMN DET_ZahlungForderung.Zahlungsnummer IS
'laufende Nummer der Zahlung am Teilschaden.

aus LE01_Zahlung_SHUKR_01_HBS.Zahlungsnummer

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.angelegt_von_Grp IS
'... ist die Gruppe des Users, der die Zahlung angelegt hat

aus LE01_Zahlung_SHUKR_01_HBS.angelegt_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE01_Zahlung_SHUKR_01_HBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.geprueft_von_Grp IS
'... ist die Gruppe des Users, der die Prüfung durchgeführt hat

aus LE01_Zahlung_SHUKR_01_HBS.geprueft_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.BelegNr_A IS
'Belegnummer gem. FS-CD

aus KT01_Beleg_InEx_01_HBS.BelegNr_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.ID_ZhlgFordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN DET_ZhlgFordDetail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.Zahlung_Detail_LFD IS
'laufende Nummer der Zahlung_Detail

aus LE02_Zahlung_Det_SHUKR_01_WBS.Zahlung_Detail_LFD für Zahlungen / Forderungen aus CM
"000" für Zahlungseingänge aus CD

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.geaendert_von_Grp  IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_von_A 

Datenschutz $A1';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.ABCV_Bescheinigung_kurz IS
'Kurzbezeichnung der ABCV-Bescheinigung

Agrarier
Beamter
C
Vereinsmitglied
liegt nicht vor

aus PA01_Partner_Par_01_HBS.C_ABCV_Bescheinigung_liegt_vor

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.ABCV_Bescheinigung_lang IS
'Langtext der ABCV-Bescheinigung

Agrarier
Beamter
C
Vereinsmitglied
liegt nicht vor

aus PA01_Partner_Par_01_HBS.C_ABCV_Bescheinigung_liegt_vor

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.ABCV_Bescheinigung_liegt_vor IS
'Kurztext der ABCV-Bescheinigung

Agrarier
Beamter
C
Vereinsmitglied
liegt nicht vor

aus PA01_Partner_Par_01_HBS.C_ABCV_Bescheinigung_liegt_vor

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.ID_ABCV_Bescheinigung IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus IS
'Kurztext für den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassobüro)
3	Sonstige (Inkassobüro)
4	M+R (Regressbüro)
5	Sonstige (Regressbüro)

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus_kurz IS
'Kurzbezeichnung für den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassobüro)
3	Sonstige (Inkassobüro)
4	M+R (Regressbüro)
5	Sonstige (Regressbüro)

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus_lang IS
'Langtext für den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassobüro)
3	Sonstige (Inkassobüro)
4	M+R (Regressbüro)
5	Sonstige (Regressbüro)

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.ID_Abgabestatus IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.ID_AbschlussVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.ID_AusgangVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.Auswertung_individuell IS
'Kurztext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.Auswertung_individuell_lang IS
'Langtext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_individuell.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsbereich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.Bedingungsschluessel IS
'Kurztext für den AVB-Schlüssel

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.Bedingungsschluessel_kurz IS
'Kurzbezeichnung für den AVB-Schlüssel

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.Bedingungsschluessel_lang IS
'Langtext für den AVB-Schlüssel

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.Berufung_Rev_durch IS
'Kurztext für den die Instanz durch Berufung, Revision oder Beschwerde auslösenden Prozessbeteiligten:

DEVK
Prozessgegner

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.Berufung_Rev_durch_kurz IS
'Kurzbezeichnung für den die Instanz durch Berufung, Revision oder Beschwerde auslösenden Prozessbeteiligten:

DEVK
Prozessgegner

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.Berufung_Rev_durch_lang IS
'Langtext für den die Instanz durch Berufung, Revision oder Beschwerde auslösenden Prozessbeteiligten:

DEVK
Prozessgegner

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.ID_Berufung_Rev_durch IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Berufung_Rev_durch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.Beschaedigungsgrad IS
'Kurztext für Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.Beschaedigungsgrad_kurz IS
'Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.Beschaedigungsgrad_lang IS
'Langtext für Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungsgrad.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.Beschaedigungstyp IS
'Kurztext für Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungstyp.Beschaedigungstyp_kurz IS
'Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungstyp.Beschaedigungstyp_lang IS
'Langtext für Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

Datenschutz $-
';

COMMENT ON COLUMN DIM_Beschaedigungstyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Beschaedigungstyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.BZA IS
'Kurztext für de die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.BZA_kurz IS
'Kurzbezeichnung für die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.BZA_lang IS
'Langtext für de die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.ID_Bestandsbeziehungsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp IS
'Kurztext für den Betragstyp, beinhaltet insbesondere den Umgang mit einem evtl. vorhandenen Selbstbehalt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp_kurz IS
'Kurzbezeichnung für den Betragstyp, beinhaltet insbesondere den Umgang mit einem evtl. vorhandenen Selbstbehalt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp_lang IS
'Langtext für den Betragstyp, beinhaltet insbesondere den Umgang mit einem evtl. vorhandenen Selbstbehalt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.ID_Betragstyp IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DIM_Betragstyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP IS
'Kurztext für  die Bewertung VtP-Regulierung

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

aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP_kurz IS
'Kurzbezeichnung für  die Bewertung VtP-Regulierung

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

aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP_lang IS
'Langtext für  die Bewertung VtP-Regulierung

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

aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto IS
'Kurztext für den Steuertyp des Betrages

brutto / netto

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto_kurz IS
'Kurzbezeichnung für den Steuertyp des Betrages

brutto / netto

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto_lang IS
'Langtext für den Steuertyp des Betrages

brutto / netto

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.ID_BruttoNetto IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_A IS
'Kurztext des Orts für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_kurz_A IS
'Kurzbezeichnung des Orts für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_lang_A IS
'Langtext des Orts für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.ID_CodeOrt IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A';

COMMENT ON COLUMN DIM_CodeOrt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_A IS
'Kurztext des Ortsteils für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_kurz_A IS
'Kurzbezeichnung des Ortsteils für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_lang_A IS
'Langtext des Ortsteils für Orts- und Straßendatei

aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.ID_CodeOrtsteil IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Datum.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

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
'Die ID_Monat wird mit JJJJMM besetzt.';

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

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart IS
'Kurztext für die Art der Deckung (Komfort, Aktiv .....) 

aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart_kurz IS
'Kurzbezeichnung für die Art der Deckung (Komfort, Aktiv .....) 

aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart_lang IS
'Langtext für die Art der Deckung (Komfort, Aktiv .....) 

aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.ID_Deckungsart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart';

COMMENT ON COLUMN DIM_Deckungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.DeckungsschluesselK IS
'Kurztext für den Deckungsschlüssel Kasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.DeckungsschluesselK_kurz IS
'Kurzbezeichnung für den Deckungsschlüssel Kasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.DeckungsschluesselK_lang IS
'Langtext für den Deckungsschlüssel Kasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselK.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.DeckungsschluesselKH IS
'Kurztext für den Deckungsschlüssel Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.DeckungsschluesselKH_kurz IS
'Kurzbezeichnung für den Deckungsschlüssel Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.DeckungsschluesselKH_lang IS
'Langtext für den Deckungsschlüssel Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus IS
'Kurztext für den Deckungsstatus

Laufend
Wartezeit
Schwebend

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus_kurz IS
'Kurzbezeichnung für den Deckungsstatus

Laufend
Wartezeit
Schwebend

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus_lang IS
'Langtext für den Deckungsstatus

Laufend
Wartezeit
Schwebend

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.ID_Deckungsstatus IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Dunkelverarbeitung IS
'Kurztext für das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Dunkelverarbeitung_kurz IS
'Kurzbezeichnung für das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Dunkelverarbeitung_lang IS
'Langtext für das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart IS
'Kurztext für die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

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

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart_kurz IS
'Kurzbezeichnung für die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

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

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart_lang IS
'Langtext für die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

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

COMMENT ON COLUMN DIM_Ereignisart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart';

COMMENT ON COLUMN DIM_Ereignisart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse IS
'Kurztext für die Ereignisklasse';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse_kurz IS
'Kurzbezeichnung für die Ereignisklasse';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse_lang IS
'Langtext für die Ereignisklasse';

COMMENT ON COLUMN DIM_Ereignisklasse.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart IS
'Kurztext für die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme
Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart_kurz IS
'Kurzbezeichnung für die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart_lang IS
'Langtext für die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.Erledigungszeitpkt IS
'Kurztext für den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
während der Verhandlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.Erledigungszeitpkt_kurz IS
'Kurzbezeichnung für den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
während der Verhandlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.Erledigungszeitpkt_lang IS
'Langtext für den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
während der Verhandlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.ID_Erledigungszeitpkt_im_Verf IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungszeitpkt_im_Verf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.Erstkontakt IS
'Kurztext der Dokumentation, wie der Erstkontakt zustande kam. Siehe PARIS-Schlüsseltabelle Erstkontakt_SL:

aus PA01_Partner_Par_01_HBS.C_Erstkontakt

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Außend.
angest. Außend.
hauptberufl. Außend.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Großkundenbetreuung RD 27
allgemeines Maklergeschäft

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.Erstkontakt_kurz IS
'Kurzbezeichnung der Dokumentation, wie der Erstkontakt zustande kam. Siehe PARIS-Schlüsseltabelle Erstkontakt_SL:

aus PA01_Partner_Par_01_HBS.C_Erstkontakt

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Außend.
angest. Außend.
hauptberufl. Außend.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Großkundenbetreuung RD 27
allgemeines Maklergeschäft

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.Erstkontakt_lang IS
'Langtext der Dokumentation, wie der Erstkontakt zustande kam. Siehe PARIS-Schlüsseltabelle Erstkontakt_SL:

aus PA01_Partner_Par_01_HBS.C_Erstkontakt

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Außend.
angest. Außend.
hauptberufl. Außend.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Großkundenbetreuung RD 27
allgemeines Maklergeschäft

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe IS
'Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schließen

ermittelt aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe_kurz IS
'Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schließen

ermittelt aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe_lang IS
'Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schließen

ermittelt aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.ID_Eskalationsstufe IS
'aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_kurz_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_lang_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.ID_Fachgebiet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.Fallzahlungspostentyp IS
'Kurztext für den Fallzahlungspostentyp

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

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.Fallzahlungspostentyp_kurz IS
'Kurzbezeichnung für den Fallzahlungspostentyp

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

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.Fallzahlungspostentyp_lang IS
'Langtext für den Fallzahlungspostentyp

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

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.ID_Fallzahlungspostentyp IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand IS
'Kurztext des Familienstandes

aus PA01_Partner_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand_kurz IS
'Kurzbezeichnung des Familienstandes

aus PA01_Partner_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand_lang IS
'Langtext des Familienstandes

aus PA01_Partner_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.ID_Familienstand IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DIM_Familienstand.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.Gefahr IS
'Kurztext für die Gefahr';

COMMENT ON COLUMN DIM_Gefahr.Gefahr_lang IS
'Langtext für die Gefahr';

COMMENT ON COLUMN DIM_Gefahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_kurz IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_lang IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.ID_Geltungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit IS
'Kurztext für den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit_kurz IS
'Kurzbezeichnung für den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit_lang IS
'Langtext für den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.GeschaeftsbezFirma IS
'Kurztext der 1. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.GeschaeftsbezFirma_kurz IS
'Kurzbezeichnung der 1. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.GeschaeftsbezFirma_lang IS
'Langtext der 1. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.ID_GeschaeftsbezFirma IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.GeschaeftsbezFirmaTarif IS
'Kurztext der 1. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezFirma, aber für Zwecke der Tarifierung angepasst (Rabatt)

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.GeschaeftsbezFirmaTarif_kurz IS
'Kurzbezeichnung der 1. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezFirma, aber für Zwecke der Tarifierung angepasst (Rabatt)


aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.GeschaeftsbezFirmaTarif_lang IS
'Langtext der 1. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezFirma, aber für Zwecke der Tarifierung angepasst (Rabatt)

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.ID_GeschaeftsbezFirmaTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.GeschaeftsbezTaetigkTarif IS
'Kurztext der 2. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezTaetigkeit, aber für Zwecke der Tarifierung angepasst (Rabatt)

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.GeschaeftsbezTaetigkTarif_kurz IS
'Kurzbezeichnung der 2. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezTaetigkeit, aber für Zwecke der Tarifierung angepasst (Rabatt)

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.GeschaeftsbezTaetigkTarif_lang IS
'Langtext der 2. Stelle des "Tarifierungs-Geschäftsbeziehungsschlüssel" oder "TGBS"
wie GeschaeftsbezTaetigkeit, aber für Zwecke der Tarifierung angepasst (Rabatt)

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.ID_GeschaeftsbezTaetigkTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.GeschaeftsbezTaetigkeit IS
'Kurztext der 2. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.GeschaeftsbezTaetigkeit_kurz IS
'Kurzbezeichnung der 2. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.GeschaeftsbezTaetigkeit_lang IS
'Langtext der 2. Stelle des "Geschäftsbeziehungsschlüssel" oder "GBS"

aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.ID_GeschaeftsbezTaetigkeit IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht IS
'Kurztext des Geschlechts

aus PA01_Partner_Par_01_HBS.C_Geschlecht

männlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht_kurz IS
'Kurzbezeichnung des Geschlechts

aus PA01_Partner_Par_01_HBS.C_Geschlecht

männlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht_lang IS
'Langtext des Geschlechts

aus PA01_Partner_Par_01_HBS.C_Geschlecht

männlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde IS
'Kurztext des Grosskunden

aus MD27_Grosskundenvertraege.VN_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_kurz IS
'Kurzbezeichnung des Grosskunden

aus MD27_Grosskundenvertraege.VN_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_lang IS
'Langtext des Grosskunden

aus MD27_Grosskundenvertraege.VN_Lang

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.ID_Grosskunde IS
'aus MD27_Grosskundenvertraege.C_Grosskunde';

COMMENT ON COLUMN DIM_Grosskunde.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung IS
'Kurztext für Haftung

Eindeutig
Keine
Strittig

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung_kurz IS
'Kurzbezeichnung für Haftung 

Eindeutig
Keine
Strittig

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung_lang IS
'Langtext für Haftung

Eindeutig
Keine
Strittig

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

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

COMMENT ON COLUMN DIM_Instanzstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus IS
'Kurztext für den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus_kurz IS
'Kurzbezeichnung für den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus_lang IS
'Langtext für den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Jahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.ID_Jahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Jahr IS
'Jahr des Datums als vierstellige Zahl';

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

COMMENT ON COLUMN DIM_KlassifizierungRueckst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.ID_KlassifizierungRueckst IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.KlassifizierungRueckst IS
'Kurztext der Klassifizierungsart, für einen Rueckstellungsbetrag

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.KlassifizierungRueckst_kurz IS
'Kurzbezeichnung der Klassifizierungsart, für die der Rueckstellungsbetrag gemeldet wird.

aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.KlassifizierungRueckst_lang IS
'Langtext der Klassifizierungsart, für die der Rueckstellungsbetrag gemeldet wird.

aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss IS
'Kurztext für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16). Für Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss_kurz IS
'Kurzbezeichnung für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16). Für Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss_lang IS
'Langtext für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16). Für Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.ID_Laenderkennzeichen IS
'aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen';

COMMENT ON COLUMN DIM_Laenderkennzeichen.Laenderkennzeichen IS
'Kurztext für das Land, in dem sich das Gebiet befindet.

aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.Laenderkennzeichen_kurz IS
'Kurzbezeichnung für das Land, in dem sich das Gebiet befindet.

aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.Laenderkennzeichen_lang IS
'Langtext für das Land, in dem sich das Gebiet befindet.

aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_B IS
'Kurztext der Leistungsart

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ IS
'Kurztext für die Klassifizierung der Leistungsart nach

Entschädigung
Rente
Kosten (Schadenregulierungskosten)

aus LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ_kurz IS
'Kurzbezeichnung für die Klassifizierung der Leistungsart nach

Entschädigung
Rente
Kosten (Schadenregulierungskosten)

aus LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ_lang IS
'Langtext für die Klassifizierung der Leistungsart nach

Entschädigung
Rente
Kosten (Schadenregulierungskosten)

aus LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_kurz_B IS
'Kurzbezeichnung der Leistungsart

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_lang_B IS
'Langtext der Leistungsart

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.ID_Meldeweg IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg IS
'Kurztext für den Kanal, über welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg_kurz IS
'Kurzbezeichnung für den Kanal, über welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg_lang IS
'Langtext für den Kanal, über welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.ID_Monat IS
'Jahr/Monat im Format JJJJMM';

COMMENT ON COLUMN DIM_Monat.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Monat.Monat IS
'Name des Monats und Jahr, z.B. "Dez. 2014"';

COMMENT ON COLUMN DIM_Monat.Monat_kurz IS
'Name des Monats und Jahr, z.B. "12.2014"
';

COMMENT ON COLUMN DIM_Monat.Monat_lang IS
'Name des Monats und Jahr, z.B. "Dezember 2014"';

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

COMMENT ON COLUMN DIM_Nationalitaet.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.ID_Nationalitaet IS
'aus PA01_Partner_Par_01_HBS.C_Nationalitaet';

COMMENT ON COLUMN DIM_Nationalitaet.Nationalitaet IS
'Kurztext der Nationalität

Dieses Attribut bezeichnet die Staatsangehörigkeit, nicht ethnische Besonderheiten oder Minderheiten.

aus PA01_Partner_Par_01_HBS.C_Nationalitaet

00 - Deutschland
10 - keine Nationalität angegeben (ab 01.07.04)
50 - Albanien
51 - Bulgarien
52 - Bosnien-Herzegowina (A)
53 - Belarus (Weißrußland)
54 - Schweiz
55 - Estland
56 - Finnland
57 - Liechtenstein
58 - Kroatien (A)
59 - Island
60 - Litauen
61 - Lettland
62 - Monaco
63 - Norwegen
64 - Rumänien
65 - Russische Föderation
66 - Schweden
67 - Slowenien (A)
68 - Ukraine
71 - Belgien
72 - Dänemark
73 - Frankreich
74 - Grossbritannien
75 - Irland
76 - Italien (A)
77 - Luxemburg
78 - Niederlande
81 - Polen
82 - ehm. Tschecheslowakei (nicht mehr gültig)
83 - Ungarn
84 - Tschechien
85 - sonstige Osteuropäer
86 - Slowakei
88 - Marokko
89 - Tunesien

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.Nationalitaet_kurz IS
'Kurzbezeichnung der Nationalität

Dieses Attribut bezeichnet die Staatsangehörigkeit, nicht ethnische Besonderheiten oder Minderheiten.

aus PA01_Partner_Par_01_HBS.C_Nationalitaet

00 - Deutschland
10 - keine Nationalität angegeben (ab 01.07.04)
50 - Albanien
51 - Bulgarien
52 - Bosnien-Herzegowina (A)
53 - Belarus (Weißrußland)
54 - Schweiz
55 - Estland
56 - Finnland
57 - Liechtenstein
58 - Kroatien (A)
59 - Island
60 - Litauen
61 - Lettland
62 - Monaco
63 - Norwegen
64 - Rumänien
65 - Russische Föderation
66 - Schweden
67 - Slowenien (A)
68 - Ukraine
71 - Belgien
72 - Dänemark
73 - Frankreich
74 - Grossbritannien
75 - Irland
76 - Italien (A)
77 - Luxemburg
78 - Niederlande
81 - Polen
82 - ehm. Tschecheslowakei (nicht mehr gültig)
83 - Ungarn
84 - Tschechien
85 - sonstige Osteuropäer
86 - Slowakei
88 - Marokko
89 - Tunesien

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.Nationalitaet_lang IS
'Langtext der Nationalität

Dieses Attribut bezeichnet die Staatsangehörigkeit, nicht ethnische Besonderheiten oder Minderheiten.

aus PA01_Partner_Par_01_HBS.C_Nationalitaet

00 - Deutschland
10 - keine Nationalität angegeben (ab 01.07.04)
50 - Albanien
51 - Bulgarien
52 - Bosnien-Herzegowina (A)
53 - Belarus (Weißrußland)
54 - Schweiz
55 - Estland
56 - Finnland
57 - Liechtenstein
58 - Kroatien (A)
59 - Island
60 - Litauen
61 - Lettland
62 - Monaco
63 - Norwegen
64 - Rumänien
65 - Russische Föderation
66 - Schweden
67 - Slowenien (A)
68 - Ukraine
71 - Belgien
72 - Dänemark
73 - Frankreich
74 - Grossbritannien
75 - Irland
76 - Italien (A)
77 - Luxemburg
78 - Niederlande
81 - Polen
82 - ehm. Tschecheslowakei (nicht mehr gültig)
83 - Ungarn
84 - Tschechien
85 - sonstige Osteuropäer
86 - Slowakei
88 - Marokko
89 - Tunesien

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ID_ObjektArt IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt IS
'Kurztext für die ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt_kurz IS
'Kurzbezeichnung für die ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt_lang IS
'Langtext für die ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.Partner_Objekttyp IS
'Kurztext für den Partner-Objekttyp';

COMMENT ON COLUMN DIM_Partner_Objekttyp.Partner_Objekttyp_lang IS
'Langtext für den Partner-Objekttyp';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partner_Objekttyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.Partnergemeinschaftsart IS
'Kurztext der Art der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Partnergemeinschaftsart

08	Ehe-/Lebensp.										Ehe-/Lebenspartnerschaft
09	eheähnliche Gem.									eheähnliche Gemeinschaft (Lebensgemeinschaft)
04	Haushalt													Haushalt
00	Erbenge.													Erbengemeinschaft
07	Eigentümerge.										Eigentümergemeinschaft
01	Versichertenge.										Versichertengemeinschaft
03	Sozietät, 	GbR											Sozietät, GbR (wie Kanzleien, Steuerberatergesellschaften, Wirtschaftsprüfer) 
02	Büro/Praxisge., GbR								Büro/Praxisgemeinschaft, GbR
10	Gemeinschaftspraxis, GbR					Gemeinschaftspraxis, GbR
99	Partnergemeinschaftsart unbekannt	Partnergemeinschaftsart unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.Partnergemeinschaftsart_kurz IS
'Kurzbezeichnung der Art der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Partnergemeinschaftsart

08	Ehe-/Lebensp.										Ehe-/Lebenspartnerschaft
09	eheähnliche Gem.									eheähnliche Gemeinschaft (Lebensgemeinschaft)
04	Haushalt													Haushalt
00	Erbenge.													Erbengemeinschaft
07	Eigentümerge.										Eigentümergemeinschaft
01	Versichertenge.										Versichertengemeinschaft
03	Sozietät, 	GbR											Sozietät, GbR (wie Kanzleien, Steuerberatergesellschaften, Wirtschaftsprüfer) 
02	Büro/Praxisge., GbR								Büro/Praxisgemeinschaft, GbR
10	Gemeinschaftspraxis, GbR					Gemeinschaftspraxis, GbR
99	Partnergemeinschaftsart unbekannt	Partnergemeinschaftsart unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.Partnergemeinschaftsart_lang IS
'Langtext der Art der Partnergemeinschaft

aus PA01_Partner_Par_01_HBS.C_Partnergemeinschaftsart

08	Ehe-/Lebensp.										Ehe-/Lebenspartnerschaft
09	eheähnliche Gem.									eheähnliche Gemeinschaft (Lebensgemeinschaft)
04	Haushalt													Haushalt
00	Erbenge.													Erbengemeinschaft
07	Eigentümerge.										Eigentümergemeinschaft
01	Versichertenge.										Versichertengemeinschaft
03	Sozietät, 	GbR											Sozietät, GbR (wie Kanzleien, Steuerberatergesellschaften, Wirtschaftsprüfer) 
02	Büro/Praxisge., GbR								Büro/Praxisgemeinschaft, GbR
10	Gemeinschaftspraxis, GbR					Gemeinschaftspraxis, GbR
99	Partnergemeinschaftsart unbekannt	Partnergemeinschaftsart unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.ID_Partnertyp IS
'aus PA01_Partner_Par_01_HBS.C_Partnertyp';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp IS
'Kurztext der Spezialisierung des Partners, also 

2	Natürliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

aus PA01_Partner_Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp_kurz IS
'Kurzbezeichnung der Spezialisierung des Partners, also 

2	Natürliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

aus PA01_Partner_Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp_lang IS
'Langtext der Spezialisierung des Partners, also 

2	Natürliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

aus PA01_Partner_Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.Personenzustand_Ident IS
'Kurztext für den Personenzustand_Ident 

- 0 - - 	nicht definiert		
- 5 - -	Verstorben		
- 7 - -	Identifikation nachgewiesen

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.Personenzustand_Ident_kurz IS
'Kurzbezeichnung für den Personenzustand_Ident 

aus PA01_Partner_Par_01_HBS.C_Personenzustand_Ident

- 0 - - 	nicht definiert		
- 5 - -	Verstorben		
- 7 - -	Identifikation nachgewiesen

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.Personenzustand_Ident_lang IS
'Langtext für den Personenzustand_Ident 

- 0 - - 	nicht definiert		
- 5 - -	Verstorben		
- 7 - -	Identifikation nachgewiesen

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.Personenzustand_neg_B IS
'Kurztext für den neg. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_neg_B

- - - 0 	nicht definiert	
- - - 1	unerwünschte Person (natürliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_negativ.Personenzustand_neg_kurz_B IS
'Kurzbezeichnung für den neg. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_neg_B

- - - 0 	nicht definiert	
- - - 1	unerwünschte Person (natürliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_negativ.Personenzustand_neg_lang_B IS
'Langtext für den neg. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_neg_B

- - - 0 	nicht definiert	
- - - 1	unerwünschte Person (natürliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.ID_Personenzustand_positiv IS
'aus PA01_Partner_Par_01_HBS.C_Personenzustand_pos_B';

COMMENT ON COLUMN DIM_Personenzustand_positiv.Personenzustand_pos_B IS
'Kurztext für den pos. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_pos_B

- - 0 - 	nicht definiert	
- - 1 -	erwünschte Person (natürliche / juristische) - ohne Grund	
- - 2 - 	einflußreiche Person (natürliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Großkunde	
- - 5 - 	Identifikation prüfen	


Ibs. wegen Ausprägung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_positiv.Personenzustand_pos_kurz_B IS
'Kurzbezeichnung für den pos. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_pos_B

- - 0 - 	nicht definiert	
- - 1 -	erwünschte Person (natürliche / juristische) - ohne Grund	
- - 2 - 	einflußreiche Person (natürliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Großkunde	
- - 5 - 	Identifikation prüfen	


Ibs. wegen Ausprägung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_positiv.Personenzustand_pos_lang_B IS
'Langtext für den pos. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_pos_B

- - 0 - 	nicht definiert	
- - 1 -	erwünschte Person (natürliche / juristische) - ohne Grund	
- - 2 - 	einflußreiche Person (natürliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Großkunde	
- - 5 - 	Identifikation prüfen	


Ibs. wegen Ausprägung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.ID_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DIM_Postleitzahl.Postleitzahl_A IS
'... ist die Postleitzahl zur Beschreibung eines Ortes, also keine Großkunden- oder Postfach-PLZ

aus GE01_Gebiet_Sch_01_HBS.Postleitzahl_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.ID_Produkt IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname';

COMMENT ON COLUMN DIM_Produkt.Produktname IS
'Kurztext für den Namen des Produkts

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Produktname_kurz IS
'Kurzbezeichnung für den Namen des Produkts

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Produktname_lang IS
'Langtext für den Namen des Produkts

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

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

COMMENT ON COLUMN DIM_RD_Ebene1.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

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

COMMENT ON COLUMN DIM_RD_Ebene2.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

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

COMMENT ON COLUMN DIM_RD_Ebene3.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

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

COMMENT ON COLUMN DIM_RechtswegEbene.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.ID_RechtswegEbene IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressart';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene IS
'Kurztext für die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene_kurz IS
'Kurzbezeichnung für die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene_lang IS
'Langtext für die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.ID_Region IS
'aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region IS
'Kurztext für Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region_kurz IS
'Kurzbezeichnung für Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region_lang IS
'Langtext für Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.ID_RD_Ebene1 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldirektion.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldirektion.Regionaldirektion IS
'Kurztext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurztext

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.Regionaldirektion_kurz IS
'Kurzbezeichnung für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurzbezeichnung

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.Regionaldirektion_lang IS
'Langtext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Langtext

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.ID_Regressart IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressart';

COMMENT ON COLUMN DIM_Regressart.Regressart IS
'Kurztext der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
Überzahlung zurückgefordert
Verkauf Schadengut
SFR-Rückkaufsangebot

aus LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Regressart_kurz IS
'Kurzbezeichnung der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
Überzahlung zurückgefordert
Verkauf Schadengut
SFR-Rückkaufsangebot

aus LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Regressart_lang IS
'Langtext der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
Überzahlung zurückgefordert
Verkauf Schadengut
SFR-Rückkaufsangebot

aus LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.ID_Regressgrund IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund IS
'Kurztext für den Grund des Regresses

aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund_kurz IS
'Kurzbezeichnung für den Grund des Regresses

aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund_lang IS
'Langtext für den Grund des Regresses

aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.ID_Regresspotential IS
'aus C_Regresspotential';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential IS
'Kurztext für Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential_kurz IS
'Kurzbezeichnung für Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential_lang IS
'Langtext für Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.ID_Regressstatus IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus IS
'Kurztext für den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus_kurz IS
'Kurzbezeichnung für den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus_lang IS
'Langtext für den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.Aenderungsgrund IS
'Kurztext für den Grund der Rückstellungsänderung

z.B.: Wiedereröffnung Teilfall, Schließung Teilfall, Erstreserve

aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.Aenderungsgrund_kurz IS
'Kurzbezeichnung für den Grund der Rückstellungsänderung

z.B.: Wiedereröffnung Teilfall, Schließung Teilfall, Erstreserve

aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.Aenderungsgrund_lang IS
'Langtext für den Grund der Rückstellungsänderung

z.B.: Wiedereröffnung Teilfall, Schließung Teilfall, Erstreserve

aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.ID_RueckstAenderungsgrund IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.ID_RueckstSetzungsmethode IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.Setzungsmethode IS
'Kurztext dafür, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.Setzungsmethode_kurz IS
'Kurzbezeichnung dafür, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.Setzungsmethode_lang IS
'Langtext dafür, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart IS
'Kurztext für Klassifizierung für Rückstellungen:

- individuelle Schadenrückstellung
- pauschale Rückstellung für Spätschäden
- Rückversicherungspauschale (nur bis 2013)

aus LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart_kurz IS
'Kurzbezeichnung Kurztext für Klassifizierung für Rückstellungen:

- individuelle Schadenrückstellung
- pauschale Rückstellung für Spätschäden
- Rückversicherungspauschale (nur bis 2013)

aus LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart_lang IS
'Langtext für Klassifizierung für Rückstellungen:

- individuelle Schadenrückstellung
- pauschale Rückstellung für Spätschäden
- Rückversicherungspauschale (nur bis 2013)

aus LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung_kurz IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung_lang IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.ID_Rueckversicherungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart IS
'Kurztext für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart_kurz IS
'Kurzbezeichnung für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart_lang IS
'Langtext für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.ID_zust_SBGruppe IS
'aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp IS
'Kurztext für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_kurz IS
'Kurzbezeichnung für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_lang IS
'Langtext für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.ID_SammelereignisKlasse IS
'aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse';

COMMENT ON COLUMN DIM_SammelereignisKlasse.SammelereignisKlasse IS
'Kurztext der Klassifizierung von Sammelereignissen / Naturkatastrophen

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.SammelereignisKlasse_kurz IS
'Kurzbezeichnung der Klassifizierung von Sammelereignissen / Naturkatastrophen

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.SammelereignisKlasse_lang IS
'Langtext der Klassifizierung von Sammelereignissen / Naturkatastrophen

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.ID_SatzartDerZahlung IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung';

COMMENT ON COLUMN DIM_SatzartDerZahlung.SatzartDerZahlung IS
'Kurztext der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder Rückzahlung handelt

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

aus LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.SatzartDerZahlung_kurz IS
'Kurzbezeichnung der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder Rückzahlung handelt

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

aus LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.SatzartDerZahlung_lang IS
'Langtext der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder Rückzahlung handelt

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

aus LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.ID_SchadenKomplexitaet IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.Komplexitaet IS
'Kurztext für die Komplexität des Schadens

Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.Komplexitaet_kurz IS
'Kurzbezeichnung für die Komplexität des Schadens

Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.Komplexitaet_lang IS
'Langtext für die Komplexität des Schadens

Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.ID_SchadenSteuerung IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung IS
'Kurztext für die Art der Schadensteuerung

aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung_kurz IS
'Kurzbezeichnung für die Art der Schadensteuerung

aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung_lang IS
'Langtext für die Art der Schadensteuerung

aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten_kurz IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten_lang IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.ID_Schaden_Besonderheit IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_B IS
'Kurztext für die Interne "Fallart"

aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

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

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_kurz_B IS
'Kurzbezeichnung für die Interne "Fallart"

aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

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

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_lang_B IS
'Langtext für die Interne "Fallart"

aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

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

COMMENT ON COLUMN DIM_Schadenfallart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.Rueckstellungsart IS
'Kurztext für die Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS..C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.Rueckstellungsart_kurz IS
'Kurzbezeichnung für die Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS..C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.Rueckstellungsart_lang IS
'Langtext für die Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS..C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.ID_Schadenstatus IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus IS
'Kurztext für den Status der Bearbeitung des Schadens

0		Offen
1		Wiedereröffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_Ebene1 IS
'Kurzbezeichnung für die Zusammenfassungen von Schadenstatus_Detail

Ausprägungen

Geöffnet:			"Offen" oder "Wiedereröffnet"
Abgeschlossen:	"Geschlossen" oder "Ereignis ohne Forderung"
Fehler:					"unbekannt"

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_Ebene2 IS
'Kurztext für die Zusammenfassungen von Schadenstatus_Detail

Ausprägungen

Geöffnet:			"Offen" oder "Wiedereröffnet"
Abgeschlossen:	"Geschlossen" oder "Ereignis ohne Forderung"
Fehler:					"unbekannt"

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_kurz IS
'Kurzbezeichnung für den Status der Bearbeitung des Schadens

0		Offen
1		Wiedereröffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_lang IS
'Langtext für den Status der Bearbeitung des Schadens

0		Offen
1		Wiedereröffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache IS
'Kurztext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache_kurz IS
'Kurzbezeichnung für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache_lang IS
'Langtext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.ID_Schuldigkeit IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit IS
'Kurztext für die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit_kurz IS
'Kurzbezeichnung für die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit_lang IS
'Langtext für die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Sparte IS
'Kurztext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Sparte_lang IS
'Langtext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.Spartenbuendel_Ebene1 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.Spartenbuendel_Ebene1_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene1.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.Spartenbuendel_Ebene2 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.Spartenbuendel_Ebene2_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene2.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.Spartenbuendel_Ebene3 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.Spartenbuendel_Ebene3_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene3.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.Spartenbuendel_Ebene4 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.Spartenbuendel_Ebene4_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene4.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.Spartenbuendel_Ebene5 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.Spartenbuendel_Ebene5_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene5.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.Spartenbuendel_Ebene6 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.Spartenbuendel_Ebene6_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene6.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.Spartenbuendel_Ebene7 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.Spartenbuendel_Ebene7_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_Ebene7.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.ID_Teilschadenart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart IS
'Kurztext für die Teilschadenart

aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart_kurz IS
'Kurzbezeichnung für die Teilschadenart

aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart_lang IS
'Langtext für die Teilschadenart

aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Teilsparte IS
'Kurztext für die Teilsparte';

COMMENT ON COLUMN DIM_Teilsparte.Teilsparte_lang IS
'Langtext für die Teilsparte';

COMMENT ON COLUMN DIM_Telefonwerbung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.Telefonwerbung IS
'Kurztext für das Einverständnis zur oder Ablehnung der telefonischen Werbung

aus PA01_Partner_Par_01_HBS.C_Telefonwerbung

0 unbekannt
1 Uneingeschränkte Telefonwerbung; Einverständniserklärung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverständniserklärung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdrücklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.Telefonwerbung_kurz IS
'Kurzbezeichnung für das Einverständnis zur oder die Ablehnung der telefonischen Werbung

aus PA01_Partner_Par_01_HBS.C_Telefonwerbung

0 unbekannt
1 Uneingeschränkte Telefonwerbung; Einverständniserklärung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverständniserklärung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdrücklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN DIM_Telefonwerbung.Telefonwerbung_lang IS
'Langtext für das Einverständnis zur oder Ablehnung der telefonischen Werbung

aus PA01_Partner_Par_01_HBS.C_Telefonwerbung

0 unbekannt
1 Uneingeschränkte Telefonwerbung; Einverständniserklärung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverständniserklärung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdrücklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN DIM_UKZ.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen IS
'Kurztext des Unternehmens, z.B. ''DEVK-L"

Datebschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe IS
'Kurztext für eine Gruppe von Konzern-Unternehmen - sofern es keine übergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe_kurz IS
'Kurzbezeichnung für eine Gruppe von Konzern-Unternehmen - sofern es keine übergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe_lang IS
'Langtext für eine Gruppe von Konzern-Unternehmen - sofern es keine übergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform IS
'Kurztext für die Rechtsform von Konzernunternehmen
z.B. "Vereine"

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform_kurz IS
'Kurzbezeichnung für die Rechtsform von Konzernunternehmen
z.B. "Vereine"

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform_lang IS
'Langtext für die Rechtsform von Konzernunternehmen
z.B. "Vereine"

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_kurz IS
'Kurzbezeichnung des Unternehmens, z.B. ''E'', ''V'' (UKZ)

Datebschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_lang IS
'Langtext des Unternehmens, z.B. "DEVK Sach- und HUK-Versicherungsverein a.G."

aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.ID_Unfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN DIM_Unfallart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart_kurz IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart_lang IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.ID_Verfahrensart IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart IS
'Kurztext für die Art der Zahlung

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

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

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart_kurz IS
'Kurzbezeichnung für die Art der Zahlung

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

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

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart_lang IS
'Langtext für die Verfahrensart

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.ID_Verfahrensgegenstand IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.Verfahrensgegenstand IS
'Kurztext für den Verfahrensgegenstand

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entschädigungshöhe
0005		Schmerzensgeldhöhe
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist überschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gründe (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.Verfahrensgegenstand_kurz IS
'Kurzbezeichnung für den Verfahrensgegenstand

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entschädigungshöhe
0005		Schmerzensgeldhöhe
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist überschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gründe (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensgegenstand.Verfahrensgegenstand_lang IS
'Langtext für den Verfahrensgegenstand

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entschädigungshöhe
0005		Schmerzensgeldhöhe
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist überschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gründe (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus IS
'Kurztext für den Verfahrensstatus

offen
geschlossen
wiedereröffnet
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus_kurz IS
'Kurzbezeichnung für den Verfahrensstatus

offen
geschlossen
wiedereröffnet
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus_lang IS
'Langtext für den Verfahrensstatus

offen
geschlossen
wiedereröffnet
storniert

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.ID_Verletzung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

COMMENT ON COLUMN DIM_Verletzung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und Bänderriß, Zerrung, Verrenkung, Zerreißung
03	Verstauchung,Quetschung,Erschütterung,Schürf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedmaßen / Sinnesorganen
07	Teil-/Verlust v. Gliedmaßen/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-erschütterung)
13	Infektionen (auch Wundinfektionen) außer Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_Kurz_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und Bänderriß, Zerrung, Verrenkung, Zerreißung
03	Verstauchung,Quetschung,Erschütterung,Schürf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedmaßen / Sinnesorganen
07	Teil-/Verlust v. Gliedmaßen/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-erschütterung)
13	Infektionen (auch Wundinfektionen) außer Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_lang_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und Bänderriß, Zerrung, Verrenkung, Zerreißung
03	Verstauchung,Quetschung,Erschütterung,Schürf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedmaßen / Sinnesorganen
07	Teil-/Verlust v. Gliedmaßen/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-erschütterung)
13	Infektionen (auch Wundinfektionen) außer Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.ID_Verletzung_Koerperteil IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_B IS
'Körperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Zähne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbelsäule ohne Querschnittslähmung
21	Wirbelsäule mit Querschnittslähmung
22	Brustkorb/Bauch
23	Becken
24	Unterleib
25	mehrere Teile des Rumpfes

30	eine Niere
31	beide Nieren
32	Milz
33	Nieren und Milz
34	Leber
35	mehrere der vorstehenden Organe
36	sonstige innere Organe

40	ein Daumen
41	ein Zeigefinger
42	ein anderer Finger
43	mehrere Finger
44	eine Hand
45	ein Arm unterhalb des Ellenbogengelenks
46	ein Arm bis oberhalb des Ellenbogengelenks
47	ein Arm im Schultergelenk
48	beide Hände/beide Arme
50	eine Großzehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fuß mit Fußgelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis über die Mitte des Oberschenkels
58	beide Füße/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedmaßen
61	Gliedmaßen und Kopf/Hals
62	Gliedmaßen und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere Körperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,tödl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes Körperteil noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_kurz_B IS
'Körperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Zähne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbelsäule ohne Querschnittslähmung
21	Wirbelsäule mit Querschnittslähmung
22	Brustkorb/Bauch
23	Becken
24	Unterleib
25	mehrere Teile des Rumpfes

30	eine Niere
31	beide Nieren
32	Milz
33	Nieren und Milz
34	Leber
35	mehrere der vorstehenden Organe
36	sonstige innere Organe

40	ein Daumen
41	ein Zeigefinger
42	ein anderer Finger
43	mehrere Finger
44	eine Hand
45	ein Arm unterhalb des Ellenbogengelenks
46	ein Arm bis oberhalb des Ellenbogengelenks
47	ein Arm im Schultergelenk
48	beide Hände/beide Arme
50	eine Großzehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fuß mit Fußgelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis über die Mitte des Oberschenkels
58	beide Füße/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedmaßen
61	Gliedmaßen und Kopf/Hals
62	Gliedmaßen und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere Körperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,tödl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes Körperteil noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_langB IS
'Körperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Zähne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbelsäule ohne Querschnittslähmung
21	Wirbelsäule mit Querschnittslähmung
22	Brustkorb/Bauch
23	Becken
24	Unterleib
25	mehrere Teile des Rumpfes

30	eine Niere
31	beide Nieren
32	Milz
33	Nieren und Milz
34	Leber
35	mehrere der vorstehenden Organe
36	sonstige innere Organe

40	ein Daumen
41	ein Zeigefinger
42	ein anderer Finger
43	mehrere Finger
44	eine Hand
45	ein Arm unterhalb des Ellenbogengelenks
46	ein Arm bis oberhalb des Ellenbogengelenks
47	ein Arm im Schultergelenk
48	beide Hände/beide Arme
50	eine Großzehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fuß mit Fußgelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis über die Mitte des Oberschenkels
58	beide Füße/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedmaßen
61	Gliedmaßen und Kopf/Hals
62	Gliedmaßen und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere Körperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,tödl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes Körperteil noch nicht bekannt

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.ID_Versicherungsart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart IS
'Kurztext für die Versicherungsart

aus ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart_kurz IS
'Kurzbezeichnung für die Versicherungsart

aus ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart_lang IS
'Langtext für die Versicherungsart

aus ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.ID_Vertragsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart';

COMMENT ON COLUMN DIM_Vertragsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart IS
'Kurztext für die Vertragsart

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

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

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart_kurz IS
'Kurzbezeichnung für die Vertragsart

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

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

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart_lang IS
'Langtext für die Vertragsart

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

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

COMMENT ON COLUMN DIM_Vollmachtsstufe.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.ID_Vollmachtsstufe IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe IS
'Kurztext für die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A/B/C

aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe_kurz IS
'Kurzbezeichnung für die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A/B/C

aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe_lang IS
'Langtext für die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A/B/C

aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.ID_Waehrung IS
'aus C_Waehrung';

COMMENT ON COLUMN DIM_Waehrung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung IS
'Kurztext für die Währung

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung_kurz IS
'Kurzbezeichnung für die Währung

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung_lang IS
'Langtext für die Währung

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart IS
'Kurztext
- für die Wagnisart aus dem Vertragsspiegel von CM
aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- für die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

Gültige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

aus ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart_kurz IS
'Kurzbezeichnung
- für die Wagnisart aus dem Vertragsspiegel von CM
aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- für die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

Gültige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

aus ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart_lang IS
'Langtext
- für die Wagnisart aus dem Vertragsspiegel von CM
aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- für die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

Gültige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

aus ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.ID_Werbeunterdrueckung IS
'aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.Werbeunterdrueckung IS
'Kurztext der Kanäle, über die der Kunde nicht zu Marketingzwecken angesprochen werden möchte. Siehe PARIS-Schlüsseltabelle Werbeunterdrueckung_SL:

aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung

Werbung erwünscht
keinerlei Werbung erwünscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gewünscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.Werbeunterdrueckung_kurz IS
'Kurzbezeichnung der Kanäle, über die der Kunde nicht zu Marketingzwecken angesprochen werden möchte. Siehe PARIS-Schlüsseltabelle Werbeunterdrueckung_SL:

aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung

Werbung erwünscht
keinerlei Werbung erwünscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gewünscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueckung.Werbeunterdrueckung_lang IS
'Langtext der Kanäle, über die der Kunde nicht zu Marketingzwecken angesprochen werden möchte. Siehe PARIS-Schlüsseltabelle Werbeunterdrueckung_SL:

aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung

Werbung erwünscht
keinerlei Werbung erwünscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gewünscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

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

COMMENT ON COLUMN DIM_ZahlungStatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ID_ZahlungStatus IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus IS
'Kurztext für den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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

aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus_kurz IS
'Kurzbezeichnung für den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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

aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus_lang IS
'Langtext für den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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

aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.ID_Zahlungsart IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart IS
'Kurztext für die Art der Zahlung

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

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

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart_kurz IS
'Kurzbezeichnung für die Art der Zahlung

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

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

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart_lang IS
'Langtext für die Art der Zahlung

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

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

COMMENT ON COLUMN DIM_Zahlungsgrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.ID_Zahlungsgrund IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund IS
'Kurztext für den Zahlungsgrund

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

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

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund_kurz IS
'Kurzbezeichnung für den Zahlungsgrund

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

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

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund_lang IS
'Langtext für den Zahlungsgrund

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

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

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.ID_ZahlungsgrundGruppe IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.ZahlungsgrundGruppe IS
'Kurztext für die Zahlungsgrund-Gruppe

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.ZahlungsgrundGruppe_kurz IS
'Kurzbezeichnung für die Zahlungsgrund-Gruppe

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.ZahlungsgrundGruppe_lang IS
'Langtext für die Zahlungsgrund-Gruppe

aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.ID_ZahlungspflichtigerArt IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.ZahlungspflichtigerArt IS
'Kurztext für die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.ZahlungspflichtigerArt_kurz IS
'Kurzbezeichnung für die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungspflichtigerArt.ZahlungspflichtigerArt_lang IS
'Langtext für die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.ID_Zahlweg IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DIM_Zahlweg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg IS
'Kurztext für den Zahlweg

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg_kurz IS
'Kurzbezeichnung für den Zahlweg

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg_lang IS
'Langtext für den Zahlweg

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.ID_Zeitzone IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DIM_Zeitzone.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone IS
'Kurztext für die Zeitzone eines Datums

aus ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone_kurz IS
'Kurzbezeichnung für die Zeitzone eines Datums

aus ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone_lang IS
'Langtext für die Zeitzone eines Datums

aus ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.vereinbDatenschutz IS
'Kurztext der vereinbarten Datenschutzerklärung, s. PARIS-Schlüsseltabelle Datensch_SL

aus PA01_Partner_Par_01_HBS.C_vereinbDatenschutz

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.vereinbDatenschutz_kurz IS
'Kurzbezeichnung der vereinbarten Datenschutzerklärung, s. PARIS-Schlüsseltabelle Datensch_SL

aus PA01_Partner_Par_01_HBS.C_vereinbDatenschutz

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN DIM_vereinbDatenschutz.vereinbDatenschutz_lang IS
'Langtext der vereinbarten Datenschutzerklärung, s. PARIS-Schlüsseltabelle Datensch_SL

aus PA01_Partner_Par_01_HBS.C_vereinbDatenschutz

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Indikatoren_vorh IS
'Beschädigungsindikatoren vorhanden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaed_Indikatoren_vorh

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Dach_Boden IS
'Beschreibung der Beschädigung Kfz - Dach / Boden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - DB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich IS
'Beschreibung der Beschädigung Kfz - Frontbereich

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich_L IS
'Beschreibung der Beschädigung Kfz - Frontbereich Links

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FBL

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich_R IS
'Beschreibung der Beschädigung Kfz - Frontbereich rechts

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FBR

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich IS
'Beschreibung der Beschädigung Kfz - Heckbereich

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich_L IS
'Beschreibung der Beschädigung Kfz - Heckbereich links

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HBL

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich_R IS
'Beschreibung der Beschädigung Kfz - Heckbereich rechts

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HBR

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Rundum IS
'Beschreibung der Beschädigung Kfz - Rundum

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung =	Kfz - RU

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Seite_Mitte_L IS
'Beschreibung der Beschädigung Kfz - Links Seite Mitte

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - LSM

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Seite_Mitte_R IS
'Beschreibung der Beschädigung Kfz - Rechte Seite Mitte

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - RSM

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaedtyp_Daten_vorh IS
'Beschädigungstyp-spezifische Daten vorhanden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedtyp_Daten_vorh

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Haftpflicht_Kennz IS
'Haftpflicht?

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Haftpflicht_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkmale.ID_Beschaedigungsgrad IS
'Beschädigungsgrad

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkmale.ID_Beschaedigungstyp IS
'Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

aus ER01_OB01_bescObj_SHUKR_01_LBS.Beschaedigungstyp

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkmale.ID_ObjektArt IS
'Art des beschädigten oder versicherten Objektes

aus OB01_Objekt_Sch_01_HBS.C_ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_BilRueckstMerkmale IS
'identifiziert den Schaden';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_MJ_Kapitalreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_MJ_Regressreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_MJ_Rentenreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_VJ_Kapitalreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_VJ_Regressreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.ID_VJ_Rentenreserveklasse IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten

z.B. aus LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Berufung_Rev_durch IS
'... ist der die Instanz durch Berufung, Revision oder Beschwerde auslösende Prozessbeteiligte.

DEVK
Prozessgegner

aus ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Erledigungsart IS
'... ist das Ergebnis der Instanz.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
< 50% gewonnen
>= 50% gewonnen
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

aus ER04_GerInstanz_SHUKR_01_WBS.C_Instanzergebnis

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Gerichtsbarkeit IS
'... ist der betroffene Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Gerichtstand_Land IS
'... ist das Land des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
AD	Andorra
AF	Afghanistan
AL	Albanien
AM	Armenien
AT	Östereich
AU	Australien
DE	Deutschland
...

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtstand_Land

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Instanzstatus IS
'... gibt den Status der Instanz des Gerichtsverfahrens an.

offen
akzeptiert
abgelehnt
storniert

aus ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_RechtswegEbene IS
'... ist die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

aus ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.ID_Region IS
'... ist die Region des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
Antwerpen
Buenos Aires
Schleswig-Holstein
...

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsstand_Region

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsInstMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Erledigungsart IS
'... ist die Art, in der das Verfahren erledigt wurde.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Erledigungszeitpkt_im_Verf IS
'... ist der Zeitpunkt im Verfahren relativ zum Verfahrensablauf, an dem das Verfahren erledigt wurde.

Klage abgewiesen
vor der Verhandlung
während der Verhandlung

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Haftung IS
'... ist die Einschätzung der Haftung der DEVK.

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Verfahrensart IS
'... ist die Art de Verfahrens.

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-
';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Verfahrensgegenstand IS
'... ist der Gegenstand, um den es im Verfahren geht.

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entschädigungshöhe
0005		Schmerzensgeldhöhe
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist überschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gründe (z.B.Anf.wg.Argl.)

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B

wegen bestimmter Ausprägungen : Datenschutz $B';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Verfahrensstatus IS
'... gibt den Status des Verfahrens an.

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.ID_Waehrung IS
'... ist die Währung für den Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Waehrung_aussergeri

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_GerichtsverfMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.ACV_Mitglied IS
'ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_ACV_Mitglied

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.Geburtsjahr IS
'... ist das Jahr aus dem Geburtsdatum bzw. der 1.1. des Geburtsjahres. Dieses Datum steht für Auswertungen zur Verfügung, deren Zweck keinen Personenbezug zulässt.

aus PA01_Partner_Par_01_HBS.Geburtsjahr

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_ABCV_Bescheinigung IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Familienstand IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_GeschaeftsbezFirma IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_GeschaeftsbezFirmaTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_GeschaeftsbezTaetigkTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_GeschaeftsbezTaetigkeit IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Nationalitaet IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Partnertyp IS
'aus PA01_Partner_Par_01_HBS.C_Partnertyp';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Personenzustand_positiv IS
'aus PA01_Partner_Par_01_HBS.C_Personenzustand_pos_B';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Werbeunterdrueckung IS
'aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung';

COMMENT ON COLUMN DMK_Partnermerkmale.Makler IS
'Partner ist Makler

ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_Makler

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.Ruhestand IS
'ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_Ruhestand

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.Teilungsabkommen IS
'Unternehmen hat den Teilungsabkommen zugestimmt

ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_Teilungsabkommen

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.selbsstaendig_KZ IS
'ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_selbsstaendig_KZ

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.verstorben IS
'
ja / nein/ unzutreffend

aus PA01_Partner_Par_01_HBS.C_verstorben

Datenschutz $-';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressart IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressart';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressgrund IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressstatus IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus';

COMMENT ON COLUMN DMK_RegressMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_RegressMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.ID_SSP_RVPMerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Abgabe_RD IS
'Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an eine andere RD (Regionaldirektion) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_RD

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Abgabe_Z IS
'Kennzeichen Abgabe an Z

Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an die Z (Zentrale) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_Z

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.AktiveMeldung IS
'Aktive Meldung an Uniwagnis

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_AktiveMeldung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Auffaelligkeit IS
'Auffälligkeiten

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Auffaelligkeit

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als hätte sich der Schaden in Deutschland ereignet.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_Auslandsschadenschutz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.CoC_zur_Loeschung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gelöscht werden wird.

ja/ neinja / nein/ unzutreffend
aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Loeschung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.CoC_zur_Sperrung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gesperrt werden wird.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Sperrung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Dreiv_Spaet_Schaden IS
'...gibt an, ob ein Schaden in den ersten drei Quartalen eingetreten ist und erst zu einem späteren Zeitpunkt beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Dreiv_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Ersatzpflicht

Datenschutz $-
';

COMMENT ON COLUMN DMK_SchadenFlags.Fehlanlage IS
'Fehlanlage

Ja / nein

aus ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Freizeit_Unfallschutz IS
'Anwendung erw. Freizeitunfallschutz

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Freizeit_Unfallschutz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Geschäftsjahres) ereignet hat und gemeldet wurde.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_GJ_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_wiedereroeffnet IS
'Kennzeichen Schaden im GJ wiedereröffnet

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und irgendwann im GJ bis zum Betrachtungszeitpunkt den Status ‚geöffnet‘ hatte bzw. aktuell hat oder im GJ eine Zahlung erfolgt ist.
Jede Öffnung eines Schadens wird hierbei betrachtet, unabhängig davon, ob sie monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_wiedereroeffnet_monetaer IS
'Kennzeichen Schaden im GJ wiedereröffnet monetär

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und im GJ des Betrachtungszeitpunktes entweder zum Stichtag den Status ‚geöffnet‘ hat und eine Rückstellung gesetzt wurde oder aber im Laufe des GJ eine Zahlung erfolgt ist.
Der Fokus hier liegt darin, ob eine Wiedereröffnung des Schadens monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet_monetaer

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GeschlossenMitEntsch IS
'Merker, ob Schließen mit Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GeschlossenOhneEntsch IS
'Merker, ob Schließen ohne Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Halbj_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Halbjahr eingetreten ist und erst in einem späteren Halbjahr beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein
aus ER01_Schaden_DWH_01_HBS.C_Halbj_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Halter IS
'Ist der VN gleichzeitig der Halter?

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Halter

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Hausakte IS
'... ist das Kennzeichen, ob es sich um einen "Hausakte"-Schaden handelt oder nicht.

ja/nein

aus ER01_Schaden_DWH_01_HBS.POLPROD.C_Hausakte

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Hellschaltung IS
'Ist der Schaden aufgrund der Eskalationsstufe hellgeschaltet worden (nur Rechtsschutz)?

ja / nein/ unzutreffend

aus ER01_Schaden_Eskalat_R_01_HBS.C_Hellschaltung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.KeineBelastung IS
'Keine Belastung trotz Entschädigungszahlungen (Teilungsabkommen)

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineStufung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Erdb_Erdru_Lawine_Sonst IS
'Ist dem Schaden die SammelereignisKlasse  3	(Erdbeben/Erdrutsch/Lawinen/Sonstige) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 3	Erdbeben/Erdrutsch/Lawinen/Sonstige

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Flut_Ueberschw_Rueckst IS
'Ist dem Schaden die SammelereignisKlasse  2	(Flut/Überschwemmung/Rückstau) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 2	Flut/Überschwemmung/Rückstau

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_NatKat_fuer_Austauschqu IS
'Ist dem Schaden die SammelereignisKlasse  4	(Nat-Kat für Austauschquoten) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 4	Nat-Kat für Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Sturm_Hagel IS
'Ist dem Schaden die SammelereignisKlasse  1	(Sturm/Hagel) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 1	Sturm/Hagel

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Migriert IS
'migrierter Schaden

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Ordnungswidrigkeit_Kennz IS
'Ordnungswidrigkeitsverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Ordnungswidrigkeit_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.ProzessKennzeichen IS
'... gibt an, ob es im Zuge der Schadenregulierung eine gerichtliche Auseinandersetzung gegeben hat / gibt.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_ProzessKennzeichen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Quartal_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Quartal eingetreten ist und erst in einem Folgequartal beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Quartal_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.SFR_Belastung IS
'SFR-Belastung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SFR_Belastung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Schaden_rueckgekauft IS
'Kennzeichen im Kfz-Bereich, dass der Versicherungsnehmer die Zahlungen für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Schaden_rueckgekauft

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Sozialrechtsschutz_Kennz IS
'Sozialrechtsschutz (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Sozialrechtsschutz_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Kalenderjahr eingetreten ist, das vor dem Kalenderjahr der Meldung beim Versicherungsunternehmen liegt.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Strafverfahren_Kennz IS
'Strafverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Strafverfahren_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.VTP_Info IS
'VTP-Info Unfallregulierung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_VTP_Info

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.VersicherungsschVersagt IS
'Merker, ob Versicherungsschutz versagt

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.aufwandsneutral IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und der Schadenaufwand ohne innere Kosten <=0 ist. 
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.aufwandsneutral_ohne_SRK IS
'Kennzeichen aufwandsneutral ohne äußere Schadenregulierung

Bei einem Schaden wird dieses Kennzeichen gesetzt, wenn er den Schadenstatus ‚Abgeschlossen'' hat und die saldierten Schadenzahlungen für Entschädigungen und Renten <=0 sind. Aufwendungen für äußere Schadenregulierung können dagegen aufgetreten sein, der Schaden muss also nicht insgesamt aufwandsneutral sein.  Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Hinweis: Dies entspricht inhaltlich der bisherigen o.E.-Logik in der SDS-Statistik

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral_ohne_SRK

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.ohneEntschaedigung IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und  keinerlei reine Entschädigungs- oder reine Rentenzahlungen geflossen sind.
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Das Kennzeichen ‚o.E.‘ wurde früher auch als ‚o.Z.‘ bezeichnet (ohne Zahlung). 

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_OE

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ER01_Schaden_SHUKR_01_HBS.C_sensiblerSchaden

Datenschutz  $-';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_AbschlussVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_AusgangVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Eskalationsstufe IS
'aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Fachgebiet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Geltungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Meldeweg IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenKomplexitaet IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenSteuerung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Steuerung';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schaden_Besonderheit IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVN IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVU IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Unfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Verletzung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Verletzung_Koerperteil IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Wagnisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Wagnis';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Zeitzone IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_zust_SBGruppe IS
'aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DMK_Schadenmerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_CodeOrt IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_CodeOrtsteil IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_Laenderkennzeichen IS
'aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_Region IS
'aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenortmerkmale.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DMK_Schadenortmerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenortmerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenrueckstMerkmale.ID_RueckstAenderungsgrund IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund';

COMMENT ON COLUMN DMK_SchadenrueckstMerkmale.ID_RueckstSetzungsmethode IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode';

COMMENT ON COLUMN DMK_SchadenrueckstMerkmale.ID_Schadenrueckstmerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN DMK_SchadenrueckstMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenrueckstMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenursache_Gefahr.Spartenliste_ID IS
'Index aus den Masterdaten, entspricht der Zeile in der "Spartenliste" (Excel)';

COMMENT ON COLUMN DMK_Schadenursache_Gefahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenursache_Gefahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Abgelehnt

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_Betrugsverdacht_C

wg. Nicht-Änderbarkeit in der Historie: Datenschutz $C';

COMMENT ON COLUMN DMK_TeilschadenFlags.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Ersatzpflicht

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Fahrgast_OePNV IS
'Kennzeichnet, ob Anspruchsteller Fahrgast ÖPNV ist. (????)

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Fahrgast_OePNV

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Fehlanlage IS
'Fehlanlage

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DMK_TeilschadenFlags.Mehrleistung IS
'Mehrleistung ab 90%

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Mehrleistung

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Mitarbeiter IS
'Kennzeichnet, ob Anspruchsteller DEVK/DB Mitarbeiter ist.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Mitarbeiter

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS,C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Sondervereinb_Mehrl IS
'Sondervereinbarung Mehrleistung

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Sondervereinb_Mehrl

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TeilfallUngueltig IS
'Teilfall ist ungültig

Ja / Nein

aus ER02_Teilschaden_SHUKR_01_WBS.C_TeilfallUngueltig

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_Regresspotential IS
'Regresspotenzial eines Teilfalles (Regressprüfstatus)

leer	Nicht geprüft
1		Vorhanden
2		Nicht vorhanden
3		Regress nicht erlaubt

ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_SchadenKomplexitaet IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_SchadenSteuerung IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_Teilschadenart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.ID_Deckungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsart';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.ID_Deckungsstatus IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.ID_Rueckversicherungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.KaskoMobil IS
'ja / nein/ unzutreffend

aus  ER01_WE03_DeckSpie_Sch_01_LBS.C_KaskoMobil

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragsdeckMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Autoplus IS
'ja/nein

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Autoplus

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Beitragsrueckstand IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Beitragsrueckstand

ja / nein

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezFirma IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezTaetigkeit IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Grosskunde IS
'aus ER01_WE01_VertrSpie_Sch_01_LBS.C_Grosskunde';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Vertragsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart';

COMMENT ON COLUMN DMK_Vertragsmerkmale.KaskoMobil IS
'ja / nein/ unzutreffend

aus  ER01_WE01_VertrSpie_Sch_01_LBM.C_KaskoMobil

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Rabattschutz IS
'Rabattschutz

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Rabattschutz

ja / nein/ unzutreffend

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsklasseKH IS
'Schadensfreiheitklasse Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseKH

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsklasseVK IS
'Schadensfreiheitklasse Vollkasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseVK

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsrabattKH IS
'Schadenfreiheitsrabatt Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattKH

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsrabattVK IS
'Schadenfreiheitsrabatt Vollkasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattVK

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Versicherungszweig IS
'Der Versicherungszweig wird auch als Branchenschlüsselzahl (BSZ) gem. GDV bezeichnet

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungszweig

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.ID_Fallzahlungspostentyp IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.ID_Zahlungsgrund IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.ID_ZahlungsgrundGruppe IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.ID_ZhlgFordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.ID_ZhlgFordFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DMK_ZhlgFordFlags.Migriert IS
'Zahlung zu migriertem Schaden

Ja / Nein

aus LE01_Zahlung_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.Pruefung_Zuf IS
'... gibt an, ob die Zahlung per Zufallsgenerator für eine manuelle Prüfung ausgewählt wurde.

ja / nein/ unzutreffend

aus LE01_Zahlung_DWH_01_HBS.C_Pruefung_Zuf

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.ScheckOffen IS
'Kennzeichen, ob der Scheck noch offen ist.

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_01_HBS.C_ScheckOffen

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.durchgefuehrt IS
'Zahlung wurde bereits durchgefuehrt

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_01_HBS.C_durchgefuehrt

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Abgabestatus IS
'Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassobüro)
3	Sonstige (Inkassobüro)
4	M+R (Regressbüro)
5	Sonstige (Regressbüro)

aus LE01_Zahlung_SHUKR_02_HBS.Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_BruttoNetto IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_SatzartDerZahlung IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Vollmachtsstufe IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlungStatus IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Zahlungsart IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlungspflichtigerArt IS
'Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

aus LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Zahlweg IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Besch_Objekt.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Besch_Objekt.ID_Waehrung_Schadenhoehe IS
'Währung der voraussichtlichen Schadenhöhe

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus OB01_Objekt_Sch_01_HBS.geaendert_am


Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.SK_Besch_Objekt IS
'aus ER01_OB01_bescObj_SHUKR_01_LBS.FK_ER01_OB01_beschObjekt';

COMMENT ON COLUMN F_Besch_Objekt.SK_Schaden IS
'aus PA01_PA02_ER01_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Besch_Objekt.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Besch_Objekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Vorauss_Schadenhoehe IS
'Voraussichtliche Schadenhöhe

aus ER01_OB01_bescObj_SHUKR_01_LBS.Vorauss_Schadenhoehe

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_BilRueckstMerkmale IS
'identifiziert den Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_KapitalrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_RegressrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_RentenrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_VJ_KapitalrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_VJ_RegressrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_VJ_RentenrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Meldejahr_Kapitalreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Meldejahr_Regressreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Meldejahr_Rentenreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.SK_Bilanzrueckstellungen IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellungen.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellungen.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Vorjahr_Kapitalreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Vorjahr_Regressreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.Vorjahr_Rentenreservebetrag IS
'... ist der gemeldete Betrag.

aus LE09_Rueckst_Bilanz_01_HBM.Bilanz_Meldebetrag

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Eingangsdatum_Gericht IS
'... ist das Datum des Eingangs des Verfahrens zu dieser Instanz bei Gericht.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Eingangsdatum_Gericht

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Erwiderungsfrist_Ende IS
'... ist das Datum,bis zu dem eine Erwiderung bei Gericht eingegangen sein muss, um wirksam zu sein.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Erwiderungsfrist_Ende

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Instanz_Beginndatum IS
'... ist das Datum des Beginns der Instanz.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Instanzbeginndatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Instanz_Endedatum IS
'... ist das Datum des Endes der Instanz.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Instanzendedatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_GerichtsInstanz.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Verhandlungsdatum IS
'...das Datum der Verhandlung.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

in Schaden vorhanden: Nullable
Wie das Attribut genutzt wird ist unklar, ibs. hinsichtlich zukünftiger Termine oder der vollständigen Erfassung aller Termine in der Zeitreihe.
Zunächst wird die Befüllung des Weak Links "ER05_GerVerhandlung_ER04_BW" zurückgestellt und deshalb (vorläufig) dieses Attribut der Gerichts-Instanz zugeordnet.

aus ER04_GerInstanz_SHUKR_01_WBS.Verhandlungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Zustellungsdatum IS
'... ist der Tag, an dem der Adressat vom Zugang des zugestellten Schriftstücks (insbes. der Klage) persönlich Kenntnis erlangt und es empfangsbereit entgegennimmt. 

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Zustellungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Laufzeit IS
'Laufzeit der Instanz gemessen in Arbeitstagen für abgeschlossene Prozesse.

aus ER04_GerInstanz_DWH_01_WBS.Laufzeit

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Schaden IS
'aus ER01_ER02_ER03_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Teilschaden IS
'aus ER01_ER02_ER03_BL.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Anwaltsbudget IS
'... ist der Betrag für das Anwaltsbudget des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Anwaltsbudget

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Aufnahmedatum IS
'... ist das Datum der Verfahrensaufnahme.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Aufnahmedatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Erledigungsdatum IS
'... ist das Datum, an dem das Verfahren erledigt ist.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Erledigungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_GerichtsverfMerkmal IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS..FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Offenlegungsdatum IS
'... ist das Datum der Offenlegung des Sachverhalts.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Offenlegungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Rechtskraftdatum IS
'... ist das Datum der Rechtskraft des Urteils bzw. des Vergleichs.
Das ist das Ende einer Frist, um z.B. Widerspruch einzulegen bzw. in Revision zu gehen. Ist das Rechtskraftdatum erreicht, kann keine Revision mehr eingelegt werden.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Rechtskraftdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Verjaehrungsfrist_Ende IS
'... ist das Datum, an dem die Verjährung eintritt.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verjaehrungsfrist_Ende

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Schaden IS
'aus ER01_ER02_ER03_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Teilschaden IS
'aus ER01_ER02_ER03_BL.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Gerichtsverfahren.Streitwert_geschaetzt IS
'... ist der Betrag des geschätzten Streitwerts des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_geschaetzt

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Streitwert_tatsaechlich IS
'... ist der Betrag des tatsächlichen Streitwerts des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_tatsaechlich

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Urteilsbetrag IS
'... ist der Betrag de Urteils (bzw. des Vergleichs) bei einem erledigten Verfahren.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Urteilsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Regress.BetragGeschaetzt IS
'Geschätzter Betrag des Regresses in Regresswährung

aus LE03_Regress_SHUKR_01_HBS.BetragGeschaetzt

Datenschutz $-';

COMMENT ON COLUMN F_Regress.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Regress.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Regress.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Regress.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Regress.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Regress.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Regress.ID_Sendedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Regress.ID_Waehrung IS
'Kurztext der Regresswährung 

aus LE03_Regress_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Regress.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_RegressPosition.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_RegressPosition.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_RegressPosition.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_RegressPosition.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_RegressPosition.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_RegressPosition.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_RegressPosition.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_RegressPosition.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_RegressPosition.ID_Waehrung IS
'Kurztext der Regresswährung 

aus LE04_Regresspos_SHUKR_01_WBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.ID_geaendert_am IS
'aus LE04_Regresspos_SHUKR_01_WB.geaendert_am';

COMMENT ON COLUMN F_RegressPosition.Regressbetrag IS
'... ist der Betrag, ???.

aus  LE04_Regresspos_SHUKR_01_WBS.Regressbetrag

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Rueckstellungsbetrag IS
'... ist der Betrag in Euro, um den sich die Rückstellung verändert.

Dieses Feld wird nur für gesicherte Regresse verwendet.

aus LE04_Regresspos_SHUKR_01_WBS.Rueckstellungsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.SK_Regress IS
'aus LE04_Regressposition_LE03_BW.FK_LE03_Regress';

COMMENT ON COLUMN F_RegressPosition.SK_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition';

COMMENT ON COLUMN F_RegressPosition.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_RegressPosition.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_RegressPosition.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_RegressPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

aus LE09_Rueckst_Man_01_HBM.Eintrittsdatum_von, wenn jahr(Eintrittsdatum_von) = jahr(Eintrittsdatum_bis)

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_SSP_RVPMerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_SSP_RVP.ID_Statjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_Statmonat IS
'Jahr/Monat im Format JJJJMM';

COMMENT ON COLUMN F_SSP_RVP.ID_UKZ IS
'
aus LE09_Rueckst_Man_01_HBM.C_Risikotraeger';

COMMENT ON COLUMN F_SSP_RVP.Rueckstellungswert IS
'... ist abhängig von Betragsart und Rueckstellungsart entweder
- ein Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt
oder
- eine geschätzte Anzahl von (für die Zukunft erwarteten) Spätschäden.

aus LE09_Rueckst_Man_01_HBM.RueckstellungsbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.Sparte_Bez IS
'Bezeichner der Sparte aus Sicht des Fachbereichs Schaden. Wird benötigt, um innerhalb bestimmter Spartenkennziffern eine weitere Unterteilung herbeizuführen, z.B. in 60 (Elementar) Unterteilung in Hausrat und Wohngebäude.

aus LE09_Rueckst_Man_01_HBS.Sparte_Bez

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlTote IS
'.. ist die Anzahl der Toten

aus ER01_Schaden_DWH_01_HBS.AnzahlTote

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ER01_Schaden_SHUKR_01_HBS.AnzahlToteVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlVerletzte IS
'.. ist die Anzahl der Verletzten

aus ER01_Schaden_DWH_01_HBS.AnzahlVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.BelastendeZahlungen IS
'
aus ER01_Schaden_DWH_nn_HBS.BelastendeZahlungen (zukünftig)

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Schadenbearbeitung in Arbeitstagen bis zur ersten Entschädigungs- oder Rentenzahlung.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $B';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_AbgabedatumInkasso IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anfragedatum IS
'Anfragedatum zur Eskalation (nur Rechtsschutz)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Arbeitslosengeld_seit IS
'Arbeitslosengeld bewilligt ab

aus ER01_Schaden_SHUKR_02_HBS.Arbeitslosengeld_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Ausfuehrungsdatum  IS
'Ausführungsdatum zur Eskalation (nur Rechtsschutz)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT
';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstatusdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstelledatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_CoC_Loeschdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gelöscht werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Loeschdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_CoC_Sperrdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gesperrt werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Sperrdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Karenzzeit_bis IS
'Arbeitslosenversicherung: Karenzzeit bis

aus ER01_Schaden_SHUKR_02_HBS.Karenzzeit_bis

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_LetzterPosteingang IS
'Datum des letzten Posteingangs

aus ER01_Schaden_SHUKR_02_HBS.LetzterPosteingang

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Loeschdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Partner_VN_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Schaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Schaden.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schaden.ID_SammelereignisKlasse IS
'... ist die Sammelereignisklasse zum Sammelereignis gem. ID_Sammelereignis

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse';

COMMENT ON COLUMN F_Schaden.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Schaden.ID_Waehrung IS
'Limit- und Selbstbehaltwährung aus dem Vertrag zum Schaden

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz1 IS
'... ist die Währung für den Streitwert 1. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz1

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz2 IS
'... ist die Währung für den Streitwert 2. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz2

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz3 IS
'... ist die Währung für den Streitwert 3. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz3

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_aussergeri IS
'... ist die Währung für den Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_aussergeri

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Wiedervorlage IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_VNSicht_seit IS
'Arbeitslos aus VN-Sicht seit

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_VNSicht_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_seit IS
'Arbeitslos gemeldet zum

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu sämtlichen Verträgen

aus ER01_Schaden_SHUKR_01_HBS.JahresbeitragKunde

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Entsch IS
'Initial-Summe gesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Rente IS
'Initial-Summe gesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_SRK IS
'Initial-Summe gesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen IS
'Offene gesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Entsch IS
'Initial-Summe ungesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Rente IS
'Initial-Summe ungesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_SRK IS
'Initial-Summe ungesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Entsch IS
'Offene ungesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Rente IS
'Offene ungesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_SRK IS
'Offene ungesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckkaufbetrag IS
'Betrag im Kfz-Bereich, den der Versicherungsnehmer für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

aus ER01_Schaden_DWH_01_HBS.Rueckkaufbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellungen_saldiert IS
'Saldierte Schadenrückstellungen
Summe aller zum Betrachtungszeitpunkt noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines Schadens. Offene Anteile gesicherter Regresse werden dabei berücksichtigt.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Schaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Business Key des Eintrags in die Dimension.

Zusammensetzung:

Adress_Id_A

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Schadenaufwand_ohne_IK IS
'Schadenaufwand ohne innere Kosten

Gesamter Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseingänge, Rückstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht berücksichtigt, ebenso innere Kosten.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz1 IS
'Streitwert 1. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz1

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz2 IS
'Streitwert 2. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz2

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz3 IS
'Streitwert 3. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz3

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_aussergeri IS
'Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_aussergeri

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Schadenrueckstmerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Waehrung IS
'Kurztext für die Rückstellungswährung

aus LE09_Rueckst_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.Rueckstellungsbetrag IS
'... ist der Betrag der Rückstellung

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS.Rueckstellungsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.RueckstellungsbetragInEuro IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS.Rueckstellungsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugehörigen Gerichtsprozesse. 

aus ER02_Teilschaden_DWH_01_WBS.AnzahlGerichtsverfahren

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Anzahl_Familienangehoerige IS
'Anzahl der Familienangehoerigen (des VN/ der versicherten Person?) unter den verunglückten Personen

aus ER02_Teilschaden_DWH_01_WBS.Anzahl_Familienangehoerige

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Anzahl_Insassen IS
'Anzahl der Insassen in einem verunglückten Fahrzeug

aus ER02_Teilschaden_DWH_01_WBS.Anzahl_Insassen

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Durchlaufzeit_1_Zahlung_B IS
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

Datenschutz $B';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.


Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Erfassungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Invaliditaet_Beginn_B IS
'Geltendmachung Invalidität

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Beginn_B

Datenschutz $B';

COMMENT ON COLUMN F_Teilschaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Partner_Auslandsbuero_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.ID_Partner_VN_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Teilschaden.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Teilschaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_Auslandsbuero IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Teilschaden.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Business Key des Eintrags in die Dimension.

Zusammensetzung:

Adress_Id_A

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.

Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Verl_Person.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Verl_Person.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Verl_Person.ID_Sterbedatum IS
'Sterbedatum

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus PA01_PA02_ER01_SHUKR_02_LBS.Sterbedatum

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Verl_Person.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus PA01_PA02_ER01_SHUKR_02_LBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.SK_Partner_Verl_Person IS
'aus PA01_PA02_ER01_BL.FK_PA01_Partner';

COMMENT ON COLUMN F_Verl_Person.SK_Schaden IS
'aus PA01_PA02_ER01_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Verl_Person.SK_Verl_Person IS
'aus PA01_PA02_ER01_SHUKR_02_LBS.FK_PA01_PA02_ER01';

COMMENT ON COLUMN F_Verl_Person.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Verl_Person.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Todesfall IS
'Kennzeichen: Todesfall?

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_Todesfall

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Verletzungen_B IS
'Kennzeichen: Bestehende Verletzungen?

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_Verletzungen_B

Datenschutz $B';

COMMENT ON COLUMN F_Verl_Person.selbstaendig IS
'selbständig

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_selbstaendig

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.Betrag IS
'... ist der Gesamtbetrag der Zahlung -- Summe der Teilzahlungen?

aus LE01_Zahlung_SHUKR_01_HBS.Betrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.BetragInEuro IS
'... ist der Gesamtbetrag der Zahlung in Euro -- Summe der Teilzahlungen in Euro?

aus LE01_Zahlung_SHUKR_01_HBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.EingegangenerBetrag IS
'... ist bei Forderungen der bereits eingezahlte Betrag der Gesamtforderung

aus LE01_Zahlung_SHUKR_01_HBS. EingegangenerBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.EingegangenerBetragInEuro IS
'... gibt den in Euro umgerechneten Betrag an.

aus LE01_Zahlung_SHUKR_01_HBS.EingegangenerBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Abgabedatum IS
'Abgabedatum der Forderung (an externes Inkasso o.ä.)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE01_Zahlung_SHUKR_02_HBS.Abgabedatum

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Belegdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Nettofaelligkeit IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Region_zahlungsausloesend IS
'aus LE01_Zahlung_DWH_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zhlg_Ford.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Zhlg_Ford.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.ID_ZhlgFordFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Partner_Zahlungsempf IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Zhlg_Ford.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.UrsprGeforderterBetrag IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung.

aus LE01_Zahlung_SHUKR_01_HBS. UrsprGeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.UrsprGeforderterBetragInEuro IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung, umgerechnet in Euro.

aus LE01_Zahlung_SHUKR_01_HBS. UrsprGeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetrag IS
'... enthält  für Regress-Zahlungen den Gesamtbetrag der Regressforderung, während ''Teilbetrag'' nur den Betrag aus der aktuellen Zahlung wiedergibt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZhlgFordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZhlgFordFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Partner_Zahlungsempf IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Zhlg_Ford_Detail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.Teilbetrag IS
'... ist ein Teilbetrag einer Zahlung der sich hinsichtlich Leistungsart oder Betragsteil unterscheiden läßt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.Teilbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TeilbetragInEuro IS
'... gibt den im Euro umgerechneten Teilbetrag an.

aus LE02_Zahlung_Det_SHUKR_01_WBS.TeilbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.UrsprGeforderterBetrag IS
'... enthält  für Regress-Zahlungen den ursprünglich vor Verhandlungen geforderten Gesamtbetrag der Regressforderung.

aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.UrsprGeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten vor Verhandlungen geforderten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.ID_Auswertungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.ID_SammelereignisKlasse IS
'aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

Repräsentiert die Sammelereignisklasse zu ID_RV_NatKatEreignis.';

COMMENT ON COLUMN R_Schaden_RVEreign.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.ID_Auswertungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenliste_Ausw_indiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.Gueltig_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_VerletztePerson.TA_Ladedatum IS
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

COMMENT ON TABLE DET_NatKatEreignis IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Eintrittsdatum_Beginn
Eintrittsdatum_Ende';

COMMENT ON TABLE DET_Partner IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Geburtsdatum_A aus PA01_Partner_Par_01_HBS.Geburtsdatum_A';

COMMENT ON TABLE DET_Regress IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Sendedatum (Benachrichtigung zur Regress-Einleitung) aus LE03_Regress_SHUKR_01_HBS.Sendedatum

geaendert_am ...  ist der Zeitpunkt der letzten Änderung aus LE03_Regress_SHUKR_01_HBS.geaendert_am
';

COMMENT ON TABLE DET_Schaden IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

Schadenbearbeitungsstelle
Vertragsbearbeitende Stelle
anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle



folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum

Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum

Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum

Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. Für den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum

Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum

angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am

GesSchaden_geaendert_am Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am

AbgabedatumInkasso Abgabedatum an Inkassobüro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso

Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum

Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung

Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum



folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:

Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr

Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es zählt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr

Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DET_Schadenrueckstellungen IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am
Buchungsdatum ... gibt das Datum an, an dem die Rückstellung gebucht wurde. aus LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum


';

COMMENT ON TABLE DET_Teilschaden IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

angelegt_am  ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung aus ER02_Teilschaden_SHUKR_01_WBS.geaendert_am
';

COMMENT ON TABLE DET_Vertrag IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

vertragsfuehrendeRD Kurztext für die vertragsführende RD. aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD';

COMMENT ON TABLE DET_ZahlungForderung IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

zahlungsauslösende Stelle


folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum
Belegdatum ... Belegdatum der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Belegdatum
Nettofaelligkeit	... Nettofaelligkeit der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Nettofaelligkeit
uebergeben_am ...  ist der Zeitpunkt der Übergabe an Inkasso-/Exkassosystem. aus LE01_Zahlung_SHUKR_01_HBS.uebergeben_am
angelegt_am	... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde. aus LE01_Zahlung_SHUKR_01_HBS.angelegt_am
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE01_Zahlung_SHUKR_01_HBS.geaendert_am


nach DIM_Jahr:

Buchungsjahr ... ist das Kalenderjahr, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsjahr


nach DIM_Monat:

Buchungsmonat ... ist der Kalendermonat, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsmonat';

COMMENT ON TABLE DET_ZhlgFordDetail IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am

Enthält auch die Information über Zahlungseingänge zu Forderungen aus FS-CD unter der Zahlung_Detail_lfd "000".';

COMMENT ON TABLE DIM_AbschlussVerfahren IS
'
';

COMMENT ON TABLE DIM_AusgangVerfahren IS
'
';

COMMENT ON TABLE DIM_Auswertung_individuell IS
'Enthält die Knoten innerhalb der Auswertungsbereiche';

COMMENT ON TABLE DIM_Auswertungsbereich IS
'Enthält den Auswertungsbereich, also die Sicht auf die Daten, für die eine individuelle Aggregationsschicht über Spartenlisten-Einträge definiert wird, z.B.

- Proris
- Spartensicht für VIII';

COMMENT ON TABLE DIM_Datum IS
'Allgemeine Dimension Zeit, die ausgehend vom Datum alle weiteren Eigenschaften enthält. Sollte allgemein für Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

COMMENT ON TABLE DIM_DeckungsschluesselKH IS
'
';

COMMENT ON TABLE DIM_Ereignisklasse IS
'Aggregationen über Gefahren mit gleichem Ereignis, z.B. "Feuer", "Leitungswasser", "Sturm",...';

COMMENT ON TABLE DIM_Eskalationsstufe IS
'Schritt im Eskalationsprozess für rechtsschutz-Schäden:

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schließen';

COMMENT ON TABLE DIM_Fachgebiet IS
'
';

COMMENT ON TABLE DIM_Geltungsbereich IS
'
';

COMMENT ON TABLE DIM_Halbjahr IS
'Dimensionstabelle für Halbjahre, die für alle Halbjahresangaben genutzt werden sollte.';

COMMENT ON TABLE DIM_JNKENNZ IS
'Lookup Tabelle für MicroStrategy';

COMMENT ON TABLE DIM_Jahr IS
'Dimensionstabelle für Jahre, die für alle Jahresangaben genutzt werden sollte, z.B. Geschäftsjahre, Anfalljahre, Ereignisjahre, Meldejahre etc.';

COMMENT ON TABLE DIM_KlassifizierungRueckst IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten';

COMMENT ON TABLE DIM_Leistungsart IS
'Dimensionstabelle der Leistungsarten';

COMMENT ON TABLE DIM_Quartal IS
'Dimensionstabelle für Quartale, die für alle Quartalsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_RD_Ebene1 IS
'Dimension der 1.  Hierarchie-Ebene der Regionaldirektionen ';

COMMENT ON TABLE DIM_RD_Ebene2 IS
'Dimension der 2.  Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland Nord, -Ost, -Süd, West)';

COMMENT ON TABLE DIM_RD_Ebene3 IS
'Dimension der 3. Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland)';

COMMENT ON TABLE DIM_SammelereignisKlasse IS
'ersetzt eine DMK_NatKatEreignis, weil dort nur ein Eintrag vorhanden wäre.';

COMMENT ON TABLE DIM_Schadenstatus IS
'Dimensionstabelle des Schadenstatus.';

COMMENT ON TABLE DIM_UKZ IS
'Dimensionstabelle für die Unternehmenskennzeichen (i.d.R. Risikoträger)';

COMMENT ON TABLE DIM_Unfallart IS
'
';

COMMENT ON TABLE DIM_Verfahrensgegenstand IS
'
';

COMMENT ON TABLE DIM_Verletzung IS
'
';

COMMENT ON TABLE DIM_Verletzung_Koerperteil IS
'
';

COMMENT ON TABLE DIM_Vollmachtsstufe IS
'
';

COMMENT ON TABLE DIM_Woche IS
'Dimensionstabelle für Wochen, die für alle Wochengaben genutzt werden sollte';

COMMENT ON TABLE DIM_ZahlungStatus IS
'
';

COMMENT ON TABLE DIM_Zahlungsgrund IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am';

COMMENT ON TABLE DIM_ZahlungsgrundGruppe IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am';

COMMENT ON TABLE DMK_BilRueckstMerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldejahr-Kapitalreservedatum
Vorjahr-Kapitalreservedatum
Meldejahr-Rentenreservedatum
Vorjahr-Rentenreservedatum
Meldejahr-Regressreservedatum
Vorjahr-Regressreservedatum';

COMMENT ON TABLE DMK_Partnermerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Geburtsdatum_A aus PA01_Partner_Par_01_HBS.Geburtsdatum_A';

COMMENT ON TABLE DMK_RegressMerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Sendedatum (Benachrichtigung zur Regress-Einleitung) aus LE03_Regress_SHUKR_01_HBS.Sendedatum

geaendert_am ...  ist der Zeitpunkt der letzten Änderung aus LE03_Regress_SHUKR_01_HBS.geaendert_am
';

COMMENT ON TABLE DMK_SSP_RVPMerkmale IS
'

';

COMMENT ON TABLE DMK_Schadenmerkmale IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

Schadenbearbeitungsstelle
Vertragsbearbeitende Stelle
anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle



folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum

Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum

Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum

Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. Für den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum

Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum

angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am

GesSchaden_geaendert_am Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am

AbgabedatumInkasso Abgabedatum an Inkassobüro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso

Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum

Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung

Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum



folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:

Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr

Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es zählt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr

Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DMK_SchadenrueckstMerkmale IS
'

';

COMMENT ON TABLE DMK_TeilschadenFlags IS
'
';

COMMENT ON TABLE DMK_Vertragsmerkmale IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

vertragsfuehrendeRD Kurztext für die vertragsführende RD. aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD';

COMMENT ON TABLE DMK_ZhlgFordDetMerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am';

COMMENT ON TABLE DMK_ZhlgFordMerkmale IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

zahlungsauslösende Stelle


folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum
Belegdatum ... Belegdatum der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Belegdatum
Nettofaelligkeit	... Nettofaelligkeit der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Nettofaelligkeit
uebergeben_am ...  ist der Zeitpunkt der Übergabe an Inkasso-/Exkassosystem. aus LE01_Zahlung_SHUKR_01_HBS.uebergeben_am
angelegt_am	... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde. aus LE01_Zahlung_SHUKR_01_HBS.angelegt_am
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE01_Zahlung_SHUKR_01_HBS.geaendert_am


nach DIM_Jahr:

Buchungsjahr ... ist das Kalenderjahr, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsjahr


nach DIM_Monat:

Buchungsmonat ... ist der Kalendermonat, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsmonat';

COMMENT ON TABLE F_SSP_RVP IS
'Spätschadenpauschalen und Rückversicherungspauschalen

Rückversicherungspauschalen werden nur bis 2013 (einschließlich) gesetzt.';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einführung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgeführt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

