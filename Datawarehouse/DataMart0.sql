--<ScriptOptions statementTerminator=";"/>
--Version 7094

CREATE TABLE DET_NatKatEreignis (
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		NatKat_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		NatKat_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		NatKat_Eintrittsdatum_Beginn DATE NOT NULL,
		NatKat_Eintrittsdatum_Ende DATE NOT NULL,
		RV_Ereignis_ID VARCHAR2(8 CHAR),
		RV_Ereignis_Name VARCHAR2(180 CHAR),
		RV_Eintrittsdatum_Beginn DATE,
		RV_Eintrittsdatum_Ende DATE,
		Bearbeitungsstand VARCHAR2(180 CHAR),
		Bemerkung VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Regress (
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regress_Lfd VARCHAR2(8 CHAR) NOT NULL,
		Regressposition_lfd VARCHAR2(8 CHAR),
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadennummer_A VARCHAR2(64 CHAR) NOT NULL,
		Deckungsquote NUMBER(16 , 8) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		SchadenSB_Grp VARCHAR2(24 CHAR) NOT NULL,
		GesSchaden_geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schadenort (
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Teilschaden (
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Haftungsquote NUMBER(16 , 8) NOT NULL,
		Ueberstimmungsgrund VARCHAR2(24 CHAR) NOT NULL,
		angelegt_am DATE NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertrag (
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Zahlungsnummer_A VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsnotiz_AB VARCHAR2(180 CHAR) NOT NULL,
		Schecknummer_A VARCHAR2(24 CHAR) NOT NULL,
		Scheckaussteller_ProvKonto_A VARCHAR2(24 CHAR) NOT NULL,
		geprueft_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
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

CREATE TABLE DET_ZhlgFordDetail (
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZhlgFordNr_A VARCHAR2(24 CHAR) NOT NULL,
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
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ABCV_Bescheinigung_kurz VARCHAR2(24 CHAR) NOT NULL,
		ABCV_Bescheinigung_liegt_vor VARCHAR2(64 CHAR) NOT NULL,
		ABCV_Bescheinigung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BearbeitungsstatusGrund (
		ID_BearbeitungsstatusGrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BearbeitungsstatusGrund_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		BearbeitungsstatusGrund_B VARCHAR2(64 CHAR) NOT NULL,
		BearbeitungsstatusGrund_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bedingungsschluessel (
		ID_Bedingungsschluessel NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bedingungsschluessel_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bedingungsschluessel VARCHAR2(64 CHAR) NOT NULL,
		Bedingungsschluessel_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bestandsbeziehungsart (
		ID_Bestandsbeziehungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BZA_kurz VARCHAR2(24 CHAR) NOT NULL,
		BZA VARCHAR2(64 CHAR) NOT NULL,
		BZA_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Betragstyp (
		ID_Betragstyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragstyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragstyp VARCHAR2(64 CHAR) NOT NULL,
		Betragstyp_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bewertung_VTP (
		ID_Bewertung_VTP NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bewertung_VTP_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bewertung_VTP VARCHAR2(64 CHAR) NOT NULL,
		Bewertung_VTP_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BruttoNetto (
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BruttoNetto_kurz VARCHAR2(24 CHAR) NOT NULL,
		BruttoNetto VARCHAR2(64 CHAR) NOT NULL,
		BruttoNetto_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrt (
		ID_CodeOrt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrt_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrt_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrt_lang_A VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrtsteil (
		ID_CodeOrtsteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrtsteil_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrtsteil_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrtsteil_lang_A VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Deckungsart (
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsart VARCHAR2(64 CHAR) NOT NULL,
		Deckungsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschluesselK (
		ID_DeckungsschluesselK NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselK_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselK VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselK_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschluesselKH (
		ID_DeckungsschluesselKH NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselKH_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselKH VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselKH_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Deckungsstatus (
		ID_Deckungsstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsstatus VARCHAR2(64 CHAR) NOT NULL,
		Deckungsstatus_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Dunkelverarbeitung (
		ID_Dunkelverarbeitung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Dunkelverarbeitung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Dunkelverarbeitung VARCHAR2(64 CHAR) NOT NULL,
		Dunkelverarbeitung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ereignisart (
		ID_Ereignisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Ereignisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisart VARCHAR2(64 CHAR) NOT NULL,
		Ereignisart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erstkontakt (
		ID_Erstkontakt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erstkontakt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erstkontakt VARCHAR2(64 CHAR) NOT NULL,
		Erstkontakt_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Fallzahlungspostentyp (
		ID_Fallzahlungspostentyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fallzahlungspostentyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Fallzahlungspostentyp VARCHAR2(64 CHAR) NOT NULL,
		Fallzahlungspostentyp_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Familienstand (
		ID_Familienstand NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Familienstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Familienstand VARCHAR2(64 CHAR) NOT NULL,
		Familienstand_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezFirma (
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezFirma_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezFirma VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezFirma_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezFirmaTarif (
		ID_GeschaeftsbezFirmaTarif NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezFirmaTarif_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezFirmaTarif VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezFirmaTarif_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezTaetigkTarif (
		ID_GeschaeftsbezTaetigkTarif NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezTaetigkTarif_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezTaetigkTarif VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezTaetigkTarif_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschaeftsbezTaetigkeit (
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezTaetigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geschlecht (
		ID_Geschlecht NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geschlecht_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geschlecht VARCHAR2(64 CHAR) NOT NULL,
		Geschlecht_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Jahr (
		ID_Jahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Sequenz NUMBER(5 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizierungRueckst (
		ID_KlassifizierungRueckst NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungRueckst_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungRueckst VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungRueckst_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizierungSchluss (
		ID_KlassifizierungSchluss NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungSchluss_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungSchluss VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungSchluss_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Laenderkennzeichen (
		ID_Laenderkennzeichen NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Laenderkennzeichen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Laenderkennzeichen VARCHAR2(64 CHAR) NOT NULL,
		Laenderkennzeichen_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Leistungsart (
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Leistungsart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_B VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Leistungsart_Typ_kurz VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_Typ VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_Typ_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Meldeweg (
		ID_Meldeweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Meldeweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Meldeweg VARCHAR2(64 CHAR) NOT NULL,
		Meldeweg_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Monat (
		ID_Monat NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Name VARCHAR2(24 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Nationalitaet (
		ID_Nationalitaet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Nationalitaet_kurz VARCHAR2(24 CHAR) NOT NULL,
		Nationalitaet VARCHAR2(64 CHAR) NOT NULL,
		Nationalitaet_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partnergemeinschaftsart (
		ID_Partnergemeinschaftsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnergemeinschaftsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnergemeinschaftsart VARCHAR2(64 CHAR) NOT NULL,
		Partnergemeinschaftsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partnertyp (
		ID_Partnertyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnertyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnertyp VARCHAR2(64 CHAR) NOT NULL,
		Partnertyp_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_Ident (
		ID_Personenzustand_Ident NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_Ident_kurz VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_Ident VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_Ident_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_negativ (
		ID_Personenzustand_negativ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_neg_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_neg_B VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_neg_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Personenzustand_positiv (
		ID_Personenzustand_positiv NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Personenzustand_pos_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Personenzustand_pos_B VARCHAR2(64 CHAR) NOT NULL,
		Personenzustand_pos_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Postleitzahl (
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Postleitzahl_A VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Produkt (
		ID_Produkt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Produktname_kurz VARCHAR2(24 CHAR) NOT NULL,
		Produktname VARCHAR2(64 CHAR) NOT NULL,
		Produktname_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Region (
		ID_Region NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Region_kurz VARCHAR2(24 CHAR) NOT NULL,
		Region VARCHAR2(24 CHAR) NOT NULL,
		Region_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regionaldirektion (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		RD_Ebene1_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1_lang VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2_lang VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_lang VARCHAR2(64 CHAR) NOT NULL
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

CREATE TABLE DIM_Regressart (
		ID_Regressart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressart VARCHAR2(64 CHAR) NOT NULL,
		Regressart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressgrund (
		ID_Regressgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressgrund VARCHAR2(64 CHAR) NOT NULL,
		Regressgrund_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressstatus (
		ID_Regressstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressstatus VARCHAR2(64 CHAR) NOT NULL,
		Regressstatus_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstAenderungsgrund (
		ID_RueckstAenderungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Aenderungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Aenderungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Aenderungsgrund_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstSetzungsmethode (
		ID_RueckstSetzungsmethode NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Setzungsmethode_kurz VARCHAR2(24 CHAR) NOT NULL,
		Setzungsmethode VARCHAR2(64 CHAR) NOT NULL,
		Setzungsmethode_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstellungsBetragsart (
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragsart VARCHAR2(64 CHAR) NOT NULL,
		Betragsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rueckversicherungsart (
		ID_Rueckversicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherungsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SBGruppe (
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SBGrp_kurz VARCHAR2(24 CHAR) NOT NULL,
		SBGrp VARCHAR2(64 CHAR) NOT NULL,
		SBGrp_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SammelereignisKlasse (
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SammelereignisKlasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		SammelereignisKlasse VARCHAR2(64 CHAR) NOT NULL,
		SammelereignisKlasse_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SatzartDerZahlung (
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SatzartDerZahlung_kurz VARCHAR2(24 CHAR) NOT NULL,
		SatzartDerZahlung VARCHAR2(64 CHAR) NOT NULL,
		SatzartDerZahlung_lang VARCHAR2(500 CHAR) NOT NULL
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

CREATE TABLE DIM_SchadenKomplexitaet (
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Komplexitaet_kurz VARCHAR2(24 CHAR) NOT NULL,
		Komplexitaet VARCHAR2(64 CHAR) NOT NULL,
		Komplexitaet_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadenSteuerung (
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Steuerung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Steuerung VARCHAR2(64 CHAR) NOT NULL,
		Steuerung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenfallart (
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenfallart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Schadenfallart_B VARCHAR2(64 CHAR) NOT NULL,
		Schadenfallart_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenrueckstellungsart (
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckstellungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckstellungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckstellungsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenstatus (
		ID_Schadenstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus VARCHAR2(64 CHAR) NOT NULL,
		Schadenstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Schadenstatus_Ebene1 VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus_Ebene2 VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenursache (
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenursache VARCHAR2(64 CHAR) NOT NULL,
		Schadenursache_lang VARCHAR2(500 CHAR) NOT NULL,
		Gefahr VARCHAR2(64 CHAR) NOT NULL,
		Gefahr_lang VARCHAR2(500 CHAR) NOT NULL,
		Partner_Objekttyp VARCHAR2(64 CHAR) NOT NULL,
		Partner_Objekttyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Teilsparte VARCHAR2(64 CHAR) NOT NULL,
		Teilsparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sparte VARCHAR2(64 CHAR) NOT NULL,
		Sparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene4 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene5 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene6 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_lang VARCHAR2(500 CHAR) NOT NULL,
		Spartenbuendel_Ebene7 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schuldigkeit (
		ID_Schuldigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schuldigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schuldigkeit VARCHAR2(64 CHAR) NOT NULL,
		Schuldigkeit_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenkennziffer (
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Spartenkennziffer_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenkennziffer VARCHAR2(64 CHAR) NOT NULL,
		Spartenkennziffer_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Teilschadenart (
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Teilschadenart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilschadenart VARCHAR2(64 CHAR) NOT NULL,
		Teilschadenart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Telefonwerbung (
		ID_Telefonwerbung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Telefonwerbung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Telefonwerbung VARCHAR2(64 CHAR) NOT NULL,
		Telefonwerbung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UKZ (
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
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
		Unternehmen_Rechtsform_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Versicherungsart (
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Versicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Versicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Versicherungsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vertragsart (
		ID_Vertragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vertragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vertragsart VARCHAR2(64 CHAR) NOT NULL,
		Vertragsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vollmachtsstufe (
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vollmachtsstufe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vollmachtsstufe VARCHAR2(64 CHAR) NOT NULL,
		Vollmachtsstufe_lang VARCHAR2(500 CHAR) NOT NULL
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

CREATE TABLE DIM_Waehrung (
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Waehrung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Waehrung VARCHAR2(64 CHAR) NOT NULL,
		Waehrung_lang VARCHAR2(500 CHAR) NOT NULL
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

CREATE TABLE DIM_Wagnisart (
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Wagnisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Wagnisart VARCHAR2(64 CHAR) NOT NULL,
		Wagnisart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Werbeunterdrueckung (
		ID_Werbeunterdrueckung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Werbeunterdrueckung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Werbeunterdrueckung VARCHAR2(64 CHAR) NOT NULL,
		Werbeunterdrueckung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungStatus (
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungStatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungStatus VARCHAR2(64 CHAR) NOT NULL,
		ZahlungStatus_lang VARCHAR2(500 CHAR) NOT NULL
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

CREATE TABLE DIM_Zahlungsart (
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsart VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlungsgrund (
		ID_Zahlungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsgrund_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungsgrundGruppe (
		ID_ZahlungsgrundGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungsgrundGruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungsgrundGruppe VARCHAR2(64 CHAR) NOT NULL,
		ZahlungsgrundGruppe_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlweg (
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlweg VARCHAR2(64 CHAR) NOT NULL,
		Zahlweg_lang VARCHAR2(500 CHAR) NOT NULL
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

CREATE TABLE DIM_Zeit (
		ID_ZEIT NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Datum DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		Quartal NUMBER(10 , 0) NOT NULL,
		Quartal_Langtext VARCHAR2(64 CHAR) NOT NULL,
		Quartal_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Halbjahr NUMBER(10 , 0) NOT NULL,
		Halbjahr_Langtext VARCHAR2(64 CHAR) NOT NULL,
		Halbjahr_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		ID_Monat NUMBER(28 , 0) NOT NULL,
		Monat NUMBER(10 , 0) NOT NULL,
		Monat_Langtext VARCHAR2(64 CHAR) NOT NULL,
		Monat_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Woche NUMBER(10 , 0) NOT NULL,
		Woche_Langtext VARCHAR2(64 CHAR) NOT NULL,
		Woche_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Tag NUMBER(10 , 0) NOT NULL,
		Tag_Langtext VARCHAR2(64 CHAR) NOT NULL,
		Tag_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Werktag CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zeitzone (
		ID_Zeitzone NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zeitzone_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zeitzone VARCHAR2(64 CHAR) NOT NULL,
		Zeitzone_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_vereinbDatenschutz (
		ID_vereinbDatenschutz NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		vereinbDatenschutz_kurz VARCHAR2(24 CHAR) NOT NULL,
		vereinbDatenschutz VARCHAR2(64 CHAR) NOT NULL,
		vereinbDatenschutz_lang VARCHAR2(500 CHAR) NOT NULL
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
		ID_BearbeitungsstatusGrund NUMBER(28 , 0) NOT NULL,
		ID_Zeitzone NUMBER(28 , 0) NOT NULL
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

CREATE TABLE DMK_TeilschadenMerkmale (
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL
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
		KaskoMobil CHAR(1) NOT NULL
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

CREATE TABLE DMK_ZhlgFordMerkmale (
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL
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

CREATE TABLE F_Bilanzrueckstellungen (
		SK_F_Bilanzrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
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
		Vorjahr_Regressreservebetrag NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Regress (
		SK_F_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Sendedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		BetragGeschaetzt NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_RegressPosition (
		SK_F_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2),
		Regressbetrag NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SSP_RVP (
		SK_SSP_RVP VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Statjahr NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Statmonat NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_SSP_RVPMerkmale NUMBER(28 , 0) NOT NULL,
		Abwicklungsperiode NUMBER(28 , 0) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schaden (
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Meldejahr NUMBER(28 , 0) NOT NULL,
		ID_Anlagejahr NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussjahr NUMBER(28 , 0) NOT NULL,
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
		Regress_gesi_initial NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen NUMBER(16 , 2) NOT NULL,
		Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Rueckstellungen_saldiert NUMBER(16 , 2) NOT NULL,
		Schadenaufwand_ohne_IK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Zahlung_rein NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlTote NUMBER(10 , 0) NOT NULL,
		AnzahlVerletzte NUMBER(10 , 0) NOT NULL,
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
		Klasse_NatKat_fuer_Austauschqu CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schadenrueckstellungen (
		SK_F_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Teilschaden (
		SK_F_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_Auslandsbuero VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_Auslandsbuero_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		ID_Erfassungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Meldejahr NUMBER(28 , 0) NOT NULL,
		ID_Anlagejahr NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussjahr NUMBER(28 , 0) NOT NULL,
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
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		TeilfallUngueltig CHAR(1) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang NUMBER(16 , 2) NOT NULL,
		Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Zahlung_rein NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlGerichtsverfahren NUMBER(10 , 0) NOT NULL,
		RegulierungAussendienst CHAR(1) NOT NULL,
		FalschberatungAussendienst CHAR(1) NOT NULL,
		SchadenfeststellerVorOrt CHAR(1) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		Abgelehnt CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		Betrugsverdacht_C CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zhlg_Ford (
		SK_F_Zhlg_Ford VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Region_zahlungsausloesend NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Belegdatum NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeit NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Buchungsjahr NUMBER(28 , 0) NOT NULL,
		ID_Buchungsmonat NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		SK_Partner_Zahlungsempf VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkmal_ZahlEmpf NUMBER(28 , 0) NOT NULL,
		Betrag NUMBER(16 , 2) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		EingegangenerBetrag NUMBER(16 , 2) NOT NULL,
		EingegangenerBetragInEuro NUMBER(16 , 2) NOT NULL,
		ScheckOffen CHAR(1) NOT NULL,
		Migriert CHAR(1) NOT NULL,
		durchgefuehrt CHAR(1) NOT NULL,
		Pruefung_Zuf CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zhlg_Ford_Detail (
		SK_F_Zhlg_Ford_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		Teilbetrag NUMBER(16 , 2) NOT NULL,
		TeilbetragInEuro NUMBER(16 , 2) NOT NULL,
		GeforderterBetrag NUMBER(16 , 2) NOT NULL,
		GeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_RVEreign (
		ID_Schaden_RVEreign NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_RV_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Regbeauftragter (
		ID_Schaden_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_VerletztePerson (
		ID_Schaden_VerletztePerson NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerletztePerson VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_VerletztePerson NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Handwerker (
		ID_Teilschaden_Handwerker NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Handwerker VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Handwerker NUMBER(28 , 0) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Regbeauftragter (
		ID_Teilschaden_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilschaden_Sachverst (
		ID_Teilschaden_Sachverst NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Sachverstaendiger VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Sachverstaendiger NUMBER(28 , 0) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE INDEX DMK_Partnermerkmale_IDX
	ON DMK_Partnermerkmale
	(Geburtsjahr		ASC,
	  verstorben		ASC,
	  ACV_Mitglied		ASC,
	  selbsstaendig_KZ		ASC,
	  Ruhestand		ASC,
	  Teilungsabkommen		ASC,
	  Makler		ASC,
	  ID_Personenzustand_Ident		ASC,
	  ID_ABCV_Bescheinigung		ASC,
	  ID_Nationalitaet		ASC,
	  ID_Familienstand		ASC,
	  ID_Geschlecht		ASC,
	  ID_Erstkontakt		ASC,
	  ID_Telefonwerbung		ASC,
	  ID_Werbeunterdrueckung		ASC,
	  ID_vereinbDatenschutz		ASC,
	  ID_Partnergemeinschaftsart		ASC,
	  ID_Partnertyp		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX DMK_ZhlgFordMerkmale_IDX
	ON DMK_ZhlgFordMerkmale
	(ID_SatzartDerZahlung		ASC,
	  ID_Zahlungsart		ASC,
	  ID_BruttoNetto		ASC,
	  ID_Zahlweg		ASC,
	  ID_ZahlungStatus		ASC,
	  ID_Vollmachtsstufe		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DET_RegressPosition_IDX
	ON DET_RegressPosition
	(SK_RegressPosition		ASC,
	  Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DET_Regress_IDX
	ON DET_Regress
	(SK_Regress		ASC,
	  Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DIM_VertragsdeckMerkmale_IDX
	ON DMK_VertragsdeckMerkmale
	(ID_Deckungsart		ASC,
	  ID_Deckungsstatus		ASC,
	  ID_Rueckversicherungsart		ASC,
	  KaskoMobil		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_BilRueckstMerkmale_IDX
	ON DMK_BilRueckstMerkmale
	(ID_MJ_Kapitalreserveklasse		ASC,
	  ID_VJ_Kapitalreserveklasse		ASC,
	  ID_MJ_Rentenreserveklasse		ASC,
	  ID_VJ_Rentenreserveklasse		ASC,
	  ID_MJ_Regressreserveklasse		ASC,
	  ID_VJ_Regressreserveklasse		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_RegressMerkmale_IDX
	ON DMK_RegressMerkmale
	(ID_RegressMerkmale		ASC,
	  ID_Regressart		ASC,
	  ID_Regressgrund		ASC,
	  ID_Regressstatus		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_SSP_RVPMerkmale_IDX
	ON DMK_SSP_RVPMerkmale
	(ID_Schadenrueckstellungsart		ASC,
	  ID_RueckstellungsBetragsart		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_Schadenmerkmale_IDX
	ON DMK_Schadenmerkmale
	(ID_Meldeweg		ASC,
	  ID_Ereignisart		ASC,
	  ID_SchadenKomplexitaet		ASC,
	  ID_Wagnisart		ASC,
	  ID_SchadenSteuerung		ASC,
	  ID_SchuldigkeitSichtVU		ASC,
	  ID_SchuldigkeitSichtVN		ASC,
	  ID_Bewertung_VTP		ASC,
	  ID_KlassifizierungSchluss		ASC,
	  ID_Dunkelverarbeitung		ASC,
	  ID_Schadenfallart		ASC,
	  ID_zust_SBGruppe		ASC,
	  ID_BearbeitungsstatusGrund		ASC,
	  ID_Zeitzone		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_Schadenortmerkmale_IDX
	ON DMK_Schadenortmerkmale
	(ID_Laenderkennzeichen		ASC,
	  ID_CodeOrt		ASC,
	  ID_CodeOrtsteil		ASC,
	  ID_Postleitzahl		ASC,
	  ID_Region		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_SchadenrueckstMerkmale_IDX
	ON DMK_SchadenrueckstMerkmale
	(ID_RueckstAenderungsgrund		ASC,
	  ID_RueckstSetzungsmethode		ASC,
	  ID_Schadenrueckstellungsart		ASC,
	  ID_RueckstellungsBetragsart		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_TeilschadenMerkmale_IDX
	ON DMK_TeilschadenMerkmale
	(ID_Deckungsart		ASC,
	  ID_SchadenKomplexitaet		ASC,
	  ID_SchadenSteuerung		ASC,
	  ID_Teilschadenart		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_Vertragsmerkmale_IDX
	ON DMK_Vertragsmerkmale
	(ID_GeschaeftsbezFirma		ASC,
	  ID_GeschaeftsbezTaetigkeit		ASC,
	  ID_Produkt		ASC,
	  Versicherungszweig		ASC,
	  Autoplus		ASC,
	  ID_Bestandsbeziehungsart		ASC,
	  ID_Vertragsart		ASC,
	  Rabattschutz		ASC,
	  Beitragsrueckstand		ASC,
	  ID_Bedingungsschluessel		ASC,
	  ID_Wagnisart		ASC,
	  SchadenfreiheitsklasseKH		ASC,
	  SchadenfreiheitsrabattKH		ASC,
	  ID_DeckungsschluesselKH		ASC,
	  SchadenfreiheitsklasseVK		ASC,
	  SchadenfreiheitsrabattVK		ASC,
	  ID_DeckungsschluesselK		ASC,
	  KaskoMobil		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_ZhlgFordDetMerkmale_IDX
	ON DMK_ZhlgFordDetMerkmale
	(ID_Fallzahlungspostentyp		ASC,
	  ID_Betragstyp		ASC,
	  ID_Zahlungsart		ASC,
	  ID_BruttoNetto		ASC,
	  ID_Zahlungsgrund		ASC,
	  ID_ZahlungsgrundGruppe		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX F_Schaden_I
	ON F_Schaden
	(SK_F_Schaden		ASC,
	  Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE DET_NatKatEreignis ADD CONSTRAINT DET_NatKatEreignis_PK PRIMARY KEY
	(SK_NatKatEreignis,
	 Gueltig_Beginn);

ALTER TABLE DET_Partner ADD CONSTRAINT DET_Partner_PK PRIMARY KEY
	(SK_Partner,
	 Gueltig_Beginn);

ALTER TABLE DET_RV_NatKatEreignis ADD CONSTRAINT DET_RV_NatKat_Ereignis_PK  PRIMARY KEY
	(SK_RV_NatKatEreignis,
	 Gueltig_Beginn);

ALTER TABLE DET_Regress ADD CONSTRAINT DET_Regress_PK PRIMARY KEY
	(SK_Regress,
	 Gueltig_Beginn);

ALTER TABLE DET_RegressPosition ADD CONSTRAINT DET_RegressPosition_PK PRIMARY KEY
	(SK_RegressPosition,
	 Gueltig_Beginn);

ALTER TABLE DET_Schaden ADD CONSTRAINT DET_Schaden_PK PRIMARY KEY
	(SK_Schaden,
	 Gueltig_Beginn);

ALTER TABLE DET_Schadenort ADD CONSTRAINT DET_Schadenort_PK PRIMARY KEY
	(SK_Schadenort,
	 Gueltig_Beginn);

ALTER TABLE DET_Schadenrueckstellungen ADD CONSTRAINT DET_Schadenrueckstellungen_PK PRIMARY KEY
	(SK_Schadenrueckstellungen,
	 Gueltig_Beginn);

ALTER TABLE DET_Teilschaden ADD CONSTRAINT DET_Teilschaden_PK PRIMARY KEY
	(SK_Teilschaden,
	 Gueltig_Beginn);

ALTER TABLE DET_Vertrag ADD CONSTRAINT DET_Vertrag_PK PRIMARY KEY
	(SK_Vertrag,
	 Gueltig_Beginn);

ALTER TABLE DET_Vertragsdeckung ADD CONSTRAINT DET_Vertragsdeckung_PK PRIMARY KEY
	(SK_Vertragsdeckung,
	 Gueltig_Beginn);

ALTER TABLE DET_ZahlungForderung ADD CONSTRAINT DET_ZahlungForderung_PK PRIMARY KEY
	(SK_ZahlungForderung,
	 Gueltig_Beginn);

ALTER TABLE DET_ZhlgFordDetail ADD CONSTRAINT DET_ZhlgFordDetail_PK PRIMARY KEY
	(SK_ZhlgFordDetail,
	 Gueltig_Beginn);

ALTER TABLE DIM_ABCV_Bescheinigung ADD CONSTRAINT DIM_ABCV_Bescheinigung_PK PRIMARY KEY
	(ID_ABCV_Bescheinigung,
	 Gueltig_Beginn);

ALTER TABLE DIM_BearbeitungsstatusGrund ADD CONSTRAINT DIM_BearbeitungsstatusGrund_PK PRIMARY KEY
	(ID_BearbeitungsstatusGrund,
	 Gueltig_Beginn);

ALTER TABLE DIM_Bedingungsschluessel ADD CONSTRAINT DIM_Bedingungsschluessel_PK PRIMARY KEY
	(ID_Bedingungsschluessel,
	 Gueltig_Beginn);

ALTER TABLE DIM_Bestandsbeziehungsart ADD CONSTRAINT DIM_Bestandsbeziehungsart_PK PRIMARY KEY
	(ID_Bestandsbeziehungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Betragstyp ADD CONSTRAINT DIM_Betragstyp_PK PRIMARY KEY
	(ID_Betragstyp,
	 Gueltig_Beginn);

ALTER TABLE DIM_Bewertung_VTP ADD CONSTRAINT DIM_Bewertung_VTP_PK PRIMARY KEY
	(ID_Bewertung_VTP,
	 Gueltig_Beginn);

ALTER TABLE DIM_BruttoNetto ADD CONSTRAINT DIM_BruttoNetto_PK PRIMARY KEY
	(ID_BruttoNetto,
	 Gueltig_Beginn);

ALTER TABLE DIM_CodeOrt ADD CONSTRAINT DIM_CodeOrt_PK PRIMARY KEY
	(ID_CodeOrt,
	 Gueltig_Beginn);

ALTER TABLE DIM_CodeOrtsteil ADD CONSTRAINT DIM_CodeOrtsteil_PK PRIMARY KEY
	(ID_CodeOrtsteil,
	 Gueltig_Beginn);

ALTER TABLE DIM_Deckungsart ADD CONSTRAINT DIM_Deckungsart_PK PRIMARY KEY
	(ID_Deckungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_DeckungsschluesselK ADD CONSTRAINT DIM_DeckungsschluesselK_PK PRIMARY KEY
	(ID_DeckungsschluesselK,
	 Gueltig_Beginn);

ALTER TABLE DIM_DeckungsschluesselKH ADD CONSTRAINT DIM_DeckungsschluesselKH_PK PRIMARY KEY
	(ID_DeckungsschluesselKH,
	 Gueltig_Beginn);

ALTER TABLE DIM_Deckungsstatus ADD CONSTRAINT DIM_Deckungsstatus_PK PRIMARY KEY
	(ID_Deckungsstatus,
	 Gueltig_Beginn);

ALTER TABLE DIM_Dunkelverarbeitung ADD CONSTRAINT DIM_Dunkelverarbeitung_PK PRIMARY KEY
	(ID_Dunkelverarbeitung,
	 Gueltig_Beginn);

ALTER TABLE DIM_Ereignisart ADD CONSTRAINT DIM_Ereignisart_PK PRIMARY KEY
	(ID_Ereignisart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Erstkontakt ADD CONSTRAINT DIM_Erstkontakt_PK PRIMARY KEY
	(ID_Erstkontakt,
	 Gueltig_Beginn);

ALTER TABLE DIM_Fallzahlungspostentyp ADD CONSTRAINT DIM_Fallzahlungspostentyp_PK PRIMARY KEY
	(ID_Fallzahlungspostentyp,
	 Gueltig_Beginn);

ALTER TABLE DIM_Familienstand ADD CONSTRAINT DIM_Familienstand_PK PRIMARY KEY
	(ID_Familienstand,
	 Gueltig_Beginn);

ALTER TABLE DIM_GeschaeftsbezFirma ADD CONSTRAINT DIM_GeschaeftsbezFirma_PK PRIMARY KEY
	(ID_GeschaeftsbezFirma,
	 Gueltig_Beginn);

ALTER TABLE DIM_GeschaeftsbezFirmaTarif ADD CONSTRAINT DIM_GeschaeftsbezFirmaTarif_PK PRIMARY KEY
	(ID_GeschaeftsbezFirmaTarif,
	 Gueltig_Beginn);

ALTER TABLE DIM_GeschaeftsbezTaetigkTarif ADD CONSTRAINT DIM_GeschaeftsbezTaetigkTarif1 PRIMARY KEY
	(ID_GeschaeftsbezTaetigkTarif,
	 Gueltig_Beginn);

ALTER TABLE DIM_GeschaeftsbezTaetigkeit ADD CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK PRIMARY KEY
	(ID_GeschaeftsbezTaetigkeit,
	 Gueltig_Beginn);

ALTER TABLE DIM_Geschlecht ADD CONSTRAINT DIM_Geschlecht_PK PRIMARY KEY
	(ID_Geschlecht,
	 Gueltig_Beginn);

ALTER TABLE DIM_Jahr ADD CONSTRAINT D_Jahr_PK PRIMARY KEY
	(ID_Jahr);

ALTER TABLE DIM_KlassifizierungRueckst ADD CONSTRAINT DIM_Klassifizierungsart_PK PRIMARY KEY
	(ID_KlassifizierungRueckst,
	 Gueltig_Beginn);

ALTER TABLE DIM_KlassifizierungSchluss ADD CONSTRAINT DIM_KlassifizierungSchluss_PK PRIMARY KEY
	(ID_KlassifizierungSchluss,
	 Gueltig_Beginn);

ALTER TABLE DIM_Laenderkennzeichen ADD CONSTRAINT DIM_Laenderkennzeichen_PK PRIMARY KEY
	(ID_Laenderkennzeichen,
	 Gueltig_Beginn);

ALTER TABLE DIM_Leistungsart ADD CONSTRAINT DIM_Leistungsart_PK PRIMARY KEY
	(ID_Leistungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Meldeweg ADD CONSTRAINT DIM_Meldeweg_PK PRIMARY KEY
	(ID_Meldeweg,
	 Gueltig_Beginn);

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(ID_Monat);

ALTER TABLE DIM_Nationalitaet ADD CONSTRAINT DIM_Nationalitaet_PK PRIMARY KEY
	(ID_Nationalitaet,
	 Gueltig_Beginn);

ALTER TABLE DIM_Partnergemeinschaftsart ADD CONSTRAINT DIM_Partnergemeinschaftsart_PK PRIMARY KEY
	(ID_Partnergemeinschaftsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Partnertyp ADD CONSTRAINT DIM_Partnertyp_PK PRIMARY KEY
	(ID_Partnertyp,
	 Gueltig_Beginn);

ALTER TABLE DIM_Personenzustand_Ident ADD CONSTRAINT DIM_Personenzustand_Ident_PK PRIMARY KEY
	(ID_Personenzustand_Ident,
	 Gueltig_Beginn);

ALTER TABLE DIM_Personenzustand_negativ ADD CONSTRAINT DIM_Personenzustand_negativ_PK PRIMARY KEY
	(ID_Personenzustand_negativ,
	 Gueltig_Beginn);

ALTER TABLE DIM_Personenzustand_positiv ADD CONSTRAINT DIM_Personenzustand_positiv_PK PRIMARY KEY
	(ID_Personenzustand_positiv,
	 Gueltig_Beginn);

ALTER TABLE DIM_Postleitzahl ADD CONSTRAINT DIM_Postleitzahl_PK PRIMARY KEY
	(ID_Postleitzahl,
	 Gueltig_Beginn);

ALTER TABLE DIM_Produkt ADD CONSTRAINT DIM_Produkt_PK PRIMARY KEY
	(ID_Produkt,
	 Gueltig_Beginn);

ALTER TABLE DIM_Region ADD CONSTRAINT DIM_Region_PK PRIMARY KEY
	(ID_Region,
	 Gueltig_Beginn);

ALTER TABLE DIM_Regionaldirektion ADD CONSTRAINT DIM_Regionaldirektion_PK PRIMARY KEY
	(ID_Regionaldirektion,
	 Gueltig_Beginn);

ALTER TABLE DIM_Regressart ADD CONSTRAINT DIM_Regressart_PK PRIMARY KEY
	(ID_Regressart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Regressgrund ADD CONSTRAINT DIM_Regressgrund_PK PRIMARY KEY
	(ID_Regressgrund,
	 Gueltig_Beginn);

ALTER TABLE DIM_Regressstatus ADD CONSTRAINT DIM_Regressstatus_PK PRIMARY KEY
	(ID_Regressstatus,
	 Gueltig_Beginn);

ALTER TABLE DIM_RueckstAenderungsgrund ADD CONSTRAINT DIM_RueckstAenderungsgrund_PK PRIMARY KEY
	(ID_RueckstAenderungsgrund,
	 Gueltig_Beginn);

ALTER TABLE DIM_RueckstSetzungsmethode ADD CONSTRAINT DIM_RueckstSetzungsmethode_PK PRIMARY KEY
	(ID_RueckstSetzungsmethode,
	 Gueltig_Beginn);

ALTER TABLE DIM_RueckstellungsBetragsart ADD CONSTRAINT DIM_RueckstBetragsart_PK PRIMARY KEY
	(ID_RueckstellungsBetragsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Rueckversicherungsart ADD CONSTRAINT DIM_Rueckversicherungsart_PK PRIMARY KEY
	(ID_Rueckversicherungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_SBGruppe ADD CONSTRAINT DIM_zust_SBGruppe_PK PRIMARY KEY
	(ID_zust_SBGruppe,
	 Gueltig_Beginn);

ALTER TABLE DIM_SammelereignisKlasse ADD CONSTRAINT DIM_SammelereignisKlasse_PK PRIMARY KEY
	(ID_SammelereignisKlasse,
	 Gueltig_Beginn);

ALTER TABLE DIM_SatzartDerZahlung ADD CONSTRAINT DIM_SatzartDerZahlung_PK PRIMARY KEY
	(ID_SatzartDerZahlung,
	 Gueltig_Beginn);

ALTER TABLE DIM_SchadenKomplexitaet ADD CONSTRAINT DIM_SchadenKomplexitaet_PK PRIMARY KEY
	(ID_SchadenKomplexitaet,
	 Gueltig_Beginn);

ALTER TABLE DIM_SchadenSteuerung ADD CONSTRAINT DIM_SchadenSteuerung_PK PRIMARY KEY
	(ID_SchadenSteuerung,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schadenfallart ADD CONSTRAINT DIM_Schadenfallart_PK PRIMARY KEY
	(ID_Schadenfallart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schadenrueckstellungsart ADD CONSTRAINT DIM_Schadenrueckstellart_PK PRIMARY KEY
	(ID_Schadenrueckstellungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schadenstatus ADD CONSTRAINT DIM_Schadenstatus_PK PRIMARY KEY
	(ID_Schadenstatus,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schadenursache ADD CONSTRAINT DIM_Schadenursache_PK PRIMARY KEY
	(ID_Schadenursache,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schuldigkeit ADD CONSTRAINT DIM_Schuldigkeit_PK PRIMARY KEY
	(ID_Schuldigkeit,
	 Gueltig_Beginn);

ALTER TABLE DIM_Spartenkennziffer ADD CONSTRAINT DIM_Spartenkennziffer_PK PRIMARY KEY
	(ID_Spartenkennziffer,
	 Gueltig_Beginn);

ALTER TABLE DIM_Teilschadenart ADD CONSTRAINT DIM_Teilschadenart_PK PRIMARY KEY
	(ID_Teilschadenart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Telefonwerbung ADD CONSTRAINT DIM_Telefonwerbung_PK PRIMARY KEY
	(ID_Telefonwerbung,
	 Gueltig_Beginn);

ALTER TABLE DIM_UKZ ADD CONSTRAINT DIM_UKZ_PK PRIMARY KEY
	(ID_UKZ,
	 Gueltig_Beginn);

ALTER TABLE DIM_Versicherungsart ADD CONSTRAINT DIM_Versicherungsart_PK PRIMARY KEY
	(ID_Versicherungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Vertragsart ADD CONSTRAINT DIM_Vertragsmerkmale_PK PRIMARY KEY
	(ID_Vertragsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Vollmachtsstufe ADD CONSTRAINT DIM_Vollmachtsstufe_PK PRIMARY KEY
	(ID_Vollmachtsstufe,
	 Gueltig_Beginn);

ALTER TABLE DIM_Waehrung ADD CONSTRAINT DIM_Waehrung_PK PRIMARY KEY
	(ID_Waehrung,
	 Gueltig_Beginn);

ALTER TABLE DIM_Wagnisart ADD CONSTRAINT DIM_Wagnisart_PK PRIMARY KEY
	(ID_Wagnisart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Werbeunterdrueckung ADD CONSTRAINT DIM_Werbeunterdrueckung_PK PRIMARY KEY
	(ID_Werbeunterdrueckung,
	 Gueltig_Beginn);

ALTER TABLE DIM_ZahlungStatus ADD CONSTRAINT DIM_ZahlungStatus_PK PRIMARY KEY
	(ID_ZahlungStatus,
	 Gueltig_Beginn);

ALTER TABLE DIM_Zahlungsart ADD CONSTRAINT DIM_Zahlungsart_PK PRIMARY KEY
	(ID_Zahlungsart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Zahlungsgrund ADD CONSTRAINT DIM_Zahlungsgrund_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Zahlungsgrund);

ALTER TABLE DIM_ZahlungsgrundGruppe ADD CONSTRAINT DIM_ZahlungsgrundGruppe_PK PRIMARY KEY
	(ID_ZahlungsgrundGruppe,
	 Gueltig_Beginn);

ALTER TABLE DIM_Zahlweg ADD CONSTRAINT DIM_Zahlweg_PK PRIMARY KEY
	(ID_Zahlweg,
	 Gueltig_Beginn);

ALTER TABLE DIM_Zeit ADD CONSTRAINT D_Zeit_PK PRIMARY KEY
	(ID_ZEIT);

ALTER TABLE DIM_Zeitzone ADD CONSTRAINT DIM_Zeitzone_PK PRIMARY KEY
	(ID_Zeitzone,
	 Gueltig_Beginn);

ALTER TABLE DIM_vereinbDatenschutz ADD CONSTRAINT DIM_vereinbDatenschutz_PK PRIMARY KEY
	(ID_vereinbDatenschutz,
	 Gueltig_Beginn);

ALTER TABLE DMK_BilRueckstMerkmale ADD CONSTRAINT DMK_BilRueckstMerkmale_PK PRIMARY KEY
	(ID_BilRueckstMerkmale);

ALTER TABLE DMK_Partnermerkmale ADD CONSTRAINT DIM_Partnermerkmale_PK PRIMARY KEY
	(ID_Partnermerkmal);

ALTER TABLE DMK_RegressMerkmale ADD CONSTRAINT DIM_RegressMerkmale_PK PRIMARY KEY
	(ID_RegressMerkmale);

ALTER TABLE DMK_SSP_RVPMerkmale ADD CONSTRAINT DMK_SSP_RVPMerkmale_PK PRIMARY KEY
	(ID_SSP_RVPMerkmale);

ALTER TABLE DMK_Schadenmerkmale ADD CONSTRAINT DMK_Schadenmerkmale_PK PRIMARY KEY
	(ID_Schadenmerkmale);

ALTER TABLE DMK_Schadenortmerkmale ADD CONSTRAINT DMK_Schadenortmerkmale_PK PRIMARY KEY
	(ID_Schadenortmerkmale);

ALTER TABLE DMK_SchadenrueckstMerkmale ADD CONSTRAINT DMK_SchadenrueckstMerkmale_PK PRIMARY KEY
	(ID_Schadenrueckstmerkmale);

ALTER TABLE DMK_TeilschadenMerkmale ADD CONSTRAINT DMK_TeilschadenMerkmale_PK PRIMARY KEY
	(ID_TeilschadenMerkmale);

ALTER TABLE DMK_VertragsdeckMerkmale ADD CONSTRAINT DMK_VertragsdeckMerkmale_PK PRIMARY KEY
	(ID_VertragsdeckMerkmale);

ALTER TABLE DMK_Vertragsmerkmale ADD CONSTRAINT DMK_Vertragsmerkmale_PK PRIMARY KEY
	(ID_Vertragsmerkmale);

ALTER TABLE DMK_ZhlgFordDetMerkmale ADD CONSTRAINT DMK_ZhlgFordDetMerkmale_PK PRIMARY KEY
	(ID_ZhlgFordDetMerkmale);

ALTER TABLE DMK_ZhlgFordMerkmale ADD CONSTRAINT DMK_ZhlgFordMerkmale_PK PRIMARY KEY
	(ID_ZahlgFordMerkmale);

ALTER TABLE F_Bilanzrueckstellungen ADD CONSTRAINT F_Bilanzrueckstellungen_PK PRIMARY KEY
	(SK_F_Bilanzrueckstellungen,
	 Gueltig_Beginn);

ALTER TABLE F_Regress ADD CONSTRAINT F_Regress_PK PRIMARY KEY
	(SK_F_Regress,
	 Gueltig_Beginn);

ALTER TABLE F_RegressPosition ADD CONSTRAINT F_RegressPos_PK PRIMARY KEY
	(SK_F_RegressPosition,
	 Gueltig_Beginn);

ALTER TABLE F_SSP_RVP ADD CONSTRAINT F_SSP_RVP_PK PRIMARY KEY
	(Gueltig_Beginn,
	 SK_SSP_RVP);

ALTER TABLE F_Schaden ADD CONSTRAINT F_Schaden_PK PRIMARY KEY
	(SK_F_Schaden,
	 Gueltig_Beginn);

ALTER TABLE F_Schadenrueckstellungen ADD CONSTRAINT F_Schadenrueckstellungen_PK PRIMARY KEY
	(SK_F_Schadenrueckstellungen,
	 Gueltig_Beginn);

ALTER TABLE F_Teilschaden ADD CONSTRAINT F_Teilschaden_PK PRIMARY KEY
	(SK_F_Teilschaden,
	 Gueltig_Beginn);

ALTER TABLE F_Zhlg_Ford ADD CONSTRAINT F_Zahlung_PK PRIMARY KEY
	(Gueltig_Beginn,
	 SK_F_Zhlg_Ford);

ALTER TABLE F_Zhlg_Ford_Detail ADD CONSTRAINT F_Zhlg_Ford_Detail_PK PRIMARY KEY
	(Gueltig_Beginn,
	 SK_F_Zhlg_Ford_Detail);

ALTER TABLE R_Schaden_RVEreign ADD CONSTRAINT R_Schaden_RVEreign_PK PRIMARY KEY
	(ID_Schaden_RVEreign,
	 Gueltig_Beginn);

ALTER TABLE R_Schaden_Regbeauftragter ADD CONSTRAINT R_Schaden_Regbeauftragter_PK PRIMARY KEY
	(ID_Schaden_Regbeauftragter,
	 Gueltig_Beginn);

ALTER TABLE R_Schaden_VerletztePerson ADD CONSTRAINT R_Schaden_VerletztePerson_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Schaden_VerletztePerson);

ALTER TABLE R_Teilschaden_Handwerker ADD CONSTRAINT R_Teilschaden_Handwerker_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Teilschaden_Handwerker);

ALTER TABLE R_Teilschaden_Regbeauftragter ADD CONSTRAINT R_Teilschaden_Regbeauftr_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Teilschaden_Regbeauftragter);

ALTER TABLE R_Teilschaden_Sachverst ADD CONSTRAINT R_Teilschaden_Sachverst_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Teilschaden_Sachverst);

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-?
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-?
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-?';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-?';

COMMENT ON COLUMN DET_NatKatEreignis.SK_NatKatEreignis IS
'aus ER00_Sammelergnis_man_01_HBS. FK_ER00_Sammelereignis';

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

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.Bemerkung IS
'... ist eine Bemerkung zum RV-Ereignis

aus aus ER06_SammelergTeil_man_01_WBS.Bemerkung

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-?
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-?
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Beginn

Datenschutz $-?
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Ende

Datenschutz $-?
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Ereignis_ID IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus ER06_SammelergTeil_man_01_WBS.Sammelereignisteil_ID

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.RV_Ereignis_Name IS
'... ist die Bezeichnung des RV-Ereignisses

aus ER06_SammelergTeil_man_01_WBS.SammelereignisteilName

Datenschutz $-?';

COMMENT ON COLUMN DET_RV_NatKatEreignis.SK_RV_NatKatEreignis IS
'aus ER06_SammelergTeil_man_01_WBS. FK_ER06_SammelereignTeil
';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreignis.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

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

COMMENT ON COLUMN DET_Schaden.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegenüber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ER01_Schaden_SHUKR_01_HBS.Deckungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.GesSchaden_geaendert_von_Grp IS
'... ist die Gruppe des Users der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_von_A

Datenschutz $A1';

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

COMMENT ON COLUMN DET_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

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

COMMENT ON COLUMN DET_Schadenort.Hausnummer_A IS
'aus GE01_Gebiet_Sch_01_HBS.Hausnummer_A

Datenschutz $A2';

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

COMMENT ON COLUMN DET_Schadenrueckstellungen.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

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

COMMENT ON COLUMN DET_Teilschaden.Haftungsquote IS
'.. ist nur in KH und Allg. H relevant und bezeichnet den Anteil der Haftung der DEVK gegenüber Dritten (Anspruchssteller).

aus ER02_Teilschaden_SHUKR_01_WBS.Haftungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DET_Teilschaden.Schadennummer_A IS
'Schadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

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

Datenschutz $-? Liste
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

COMMENT ON COLUMN DET_Vertrag.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz beginnt.

aus ER01_WE01_VertrSpie_Sch_01_LBM.Materieller_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

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

Datenschutz $-?';

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

Datenschutz $-? Liste';

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

COMMENT ON COLUMN DET_ZahlungForderung.Zahlungsnummer_A IS
'laufende Nummer der Zahlung am Teilschaden.

aus LE01_Zahlung_SHUKR_01_HBS.Zahlungsnummer_A

Datenschutz $A1';

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

COMMENT ON COLUMN DET_ZhlgFordDetail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

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

COMMENT ON COLUMN DET_ZhlgFordDetail.ZhlgFordNr_A IS
'
aus LE02_Zahlung_Det_SHUKR_01_WBS.Zahlungsnummer_A für Zahlungen / Forderungen aus CM
aus KT01_Beleg_InEx_01_HBS.BelegNr_A für Zahlungseingänge aus CD

Datenschutz $A1';

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

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.ID_ABCV_Bescheinigung IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ABCV_Bescheinigung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.BearbeitungsstatusGrund_B IS
'Kurztext für den Bearbeitungsstatus

aus ER01_Schaden_SHUKR_01_HBS.C_BearbeitungsstatusGrund_B

z.B. Fehlanlage, Betrug, keine Haftung, keine Deckung

Datenschutz $B';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.BearbeitungsstatusGrund_kurz_B IS
'Kurzbezeichnung für den Bearbeitungsstatus

aus ER01_Schaden_SHUKR_01_HBS.C_BearbeitungsstatusGrund_B

z.B. Fehlanlage, Betrug, keine Haftung, keine Deckung

Datenschutz $B';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.BearbeitungsstatusGrund_lang_B IS
'Langtext für den Bearbeitungsstatus

aus ER01_Schaden_SHUKR_01_HBS.C_BearbeitungsstatusGrund_B

z.B. Fehlanlage, Betrug, keine Haftung, keine Deckung

Datenschutz $B';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.ID_BearbeitungsstatusGrund IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BearbeitungsstatusGrund.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschluessel.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Bestandsbeziehungsart.ID_Bestandsbeziehungsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA';

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

COMMENT ON COLUMN DIM_Betragstyp.ID_Betragstyp IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

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

COMMENT ON COLUMN DIM_Bewertung_VTP.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

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

COMMENT ON COLUMN DIM_BruttoNetto.ID_BruttoNetto IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto';

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

COMMENT ON COLUMN DIM_CodeOrt.ID_CodeOrt IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A';

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

COMMENT ON COLUMN DIM_CodeOrtsteil.ID_CodeOrtsteil IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

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

COMMENT ON COLUMN DIM_Deckungsart.ID_Deckungsart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart';

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

Datenschutz $-? Liste';

COMMENT ON COLUMN DIM_DeckungsschluesselK.DeckungsschluesselK_kurz IS
'Kurzbezeichnung für den Deckungsschlüssel Kasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-? Liste';

COMMENT ON COLUMN DIM_DeckungsschluesselK.DeckungsschluesselK_lang IS
'Langtext für den Deckungsschlüssel Kasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-? Liste';

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

Datenschutz $-? Liste';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.DeckungsschluesselKH_kurz IS
'Kurzbezeichnung für den Deckungsschlüssel Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-? Liste';

COMMENT ON COLUMN DIM_DeckungsschluesselKH.DeckungsschluesselKH_lang IS
'Langtext für den Deckungsschlüssel Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-? Liste';

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
'Kurztext für den Deckungsstatus

Laufend
Wartezeit
Schwebend

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.ID_Deckungsstatus IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus';

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

Datenschutz $-?';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Dunkelverarbeitung_kurz IS
'Kurzbezeichnung für das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-?';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.Dunkelverarbeitung_lang IS
'Langtext für das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollständig automatisiert („dunkel“) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollständig", "teilweise", "nein"

aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-?';

COMMENT ON COLUMN DIM_Dunkelverarbeitung.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung';

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

COMMENT ON COLUMN DIM_Ereignisart.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart';

COMMENT ON COLUMN DIM_Ereignisart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Erstkontakt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erstkontakt.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Fallzahlungspostentyp.ID_Fallzahlungspostentyp IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp';

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

COMMENT ON COLUMN DIM_Familienstand.ID_Familienstand IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN DIM_Familienstand.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_GeschaeftsbezFirma.ID_GeschaeftsbezFirma IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirma';

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

COMMENT ON COLUMN DIM_GeschaeftsbezFirmaTarif.ID_GeschaeftsbezFirmaTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezFirmaTarif';

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

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkTarif.ID_GeschaeftsbezTaetigkTarif IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif';

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

COMMENT ON COLUMN DIM_GeschaeftsbezTaetigkeit.ID_GeschaeftsbezTaetigkeit IS
'aus PA01_Partner_Par_01_HBS.C_GeschaeftsbezTaetigkeit';

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

COMMENT ON COLUMN DIM_Geschlecht.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.ID_Jahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungRueckst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss IS
'Kurztext für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16)

(ehem. "KAS")

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-?';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss_kurz IS
'Kurzbezeichnung für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16)

(ehem. "KAS")

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-?';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.KlassifizierungSchluss_lang IS
'Langtext für die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden ‚belastende‘ (Handwerker, Reparatur) oder nur ‚unbelastende‘ (Gutachter etc.) Zahlungen enthält. Bei den unbelastenden Schäden werden zusätzlich zwei Sonderfälle separiert: Schäden, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Schäden, die durch einen Schadenrückkauf des Kunden keine belastende Wirkung haben (TB 16)

(ehem. "KAS")

aus ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss

Datenschutz $-?';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizierungSchluss.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Laenderkennzeichen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Leistungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Meldeweg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.ID_Monat IS
'Jahr/Monat im Format JJJJMM';

COMMENT ON COLUMN DIM_Monat.Name IS
'Name des Monats und Jahr, z.B. "Dezember 2014"';

COMMENT ON COLUMN DIM_Monat.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Nationalitaet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Nationalitaet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnergemeinschaftsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Partnertyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_Ident.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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
'v für den neg. Personenzustand

aus PA01_Partner_Par_01_HBS.C_Personenzustand_neg_B

- - - 0 	nicht definiert	
- - - 1	unerwünschte Person (natürliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_negativ.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Personenzustand_positiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.ID_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DIM_Postleitzahl.Postleitzahl_A IS
'... ist die Postleitzahl zur Beschreibung eines Ortes, also keine Großkunden- oder Postfach-PLZ

aus GE01_Gebiet_Sch_01_HBS.Postleitzahl_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Produkt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Region.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene1 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene1_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene1_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene2 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene2_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene2_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene3 IS
'Kurztext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene3_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, W, S, O, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.RD_Ebene3_lang IS
'Langtext für die Region einer RD oder Zentrale

Nord, West, Süd, Ost, Sonstige

Datenschutz $-';

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

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldirektion.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Regressart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Regressgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.ID_RueckstAenderungsgrund IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAenderungsgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzungsmethode.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart IS
'Klassifizierung für Rückstellungen:

- individuelle Schadenrückstellung
- pauschale Rückstellung für Spätschäden
- Rückversicherungspauschale (nur bis 2013)

aus LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-?';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart_kurz IS
'Kurzbezeichnung für die Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS..C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.Betragsart_lang IS
'Langtext für die Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

(BEA: für migrierte Altschäden: alle Rückstellungen beim ersten Teilfall, keine Rückstellungen für Kosten (in Entschädigungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS..C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstellungsBetragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.ID_Rueckversicherungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart IS
'Kurztext für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-? Definition';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart_kurz IS
'Kurzbezeichnung für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-? Definition';

COMMENT ON COLUMN DIM_Rueckversicherungsart.Rueckversicherungsart_lang IS
'Kurztext für die Rueckversicherungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-? Definition';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.ID_zust_SBGruppe IS
'aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp IS
'Kurztext für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_kurz IS
'Kurztext für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_lang IS
'Langtext für die zuständige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

Datenschutz $-?';

COMMENT ON COLUMN DIM_SammelereignisKlasse.SammelereignisKlasse_kurz IS
'Kurzbezeichnung der Klassifizierung von Sammelereignissen / Naturkatastrophen

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-?';

COMMENT ON COLUMN DIM_SammelereignisKlasse.SammelereignisKlasse_lang IS
'Langtext der Klassifizierung von Sammelereignissen / Naturkatastrophen

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-?';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKlasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SatzartDerZahlung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexitaet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Schadenfallart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenrueckstellungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN DIM_Schadenstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Gefahr IS
'Kurztext für die Gefahr';

COMMENT ON COLUMN DIM_Schadenursache.Gefahr_lang IS
'Langtext für die Gefahr';

COMMENT ON COLUMN DIM_Schadenursache.Partner_Objekttyp IS
'Kurztext für den Partner-Objekttyp';

COMMENT ON COLUMN DIM_Schadenursache.Partner_Objekttyp_lang IS
'Langtext für den Partner-Objekttyp';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache IS
'Kurztext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-?';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache_lang IS
'Langtext für die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-?';

COMMENT ON COLUMN DIM_Schadenursache.Sparte IS
'Kurztext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Sparte_lang IS
'Langtext der Sparte

aus ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene1 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene1_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene2 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene2_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene3 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene3_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene4 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene4_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene5 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene5_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene6 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene6_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene7 IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Spartenbuendel_Ebene7_lang IS
'
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Teilsparte IS
'Kurztext für die Teilsparte';

COMMENT ON COLUMN DIM_Schadenursache.Teilsparte_lang IS
'Langtext für die Teilsparte';

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

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziffer.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.ID_Teilschadenart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart';

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

COMMENT ON COLUMN DIM_UKZ.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

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

COMMENT ON COLUMN DIM_Versicherungsart.ID_Versicherungsart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart';

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

COMMENT ON COLUMN DIM_Vertragsart.ID_Vertragsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart';

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

COMMENT ON COLUMN DIM_Vollmachtsstufe.ID_Vollmachtsstufe IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe';

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

COMMENT ON COLUMN DIM_Waehrung.ID_Waehrung IS
'aus C_Waehrung';

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



Datenschutz $-';

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

COMMENT ON COLUMN DIM_Werbeunterdrueckung.ID_Werbeunterdrueckung IS
'aus PA01_Partner_Par_01_HBS.C_Werbeunterdrueckung';

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

COMMENT ON COLUMN DIM_ZahlungStatus.ID_ZahlungStatus IS
'aus LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus';

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

COMMENT ON COLUMN DIM_Zahlungsart.ID_Zahlungsart IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

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

COMMENT ON COLUMN DIM_Zahlungsgrund.ID_Zahlungsgrund IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

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

COMMENT ON COLUMN DIM_ZahlungsgrundGruppe.ID_ZahlungsgrundGruppe IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

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

COMMENT ON COLUMN DIM_Zahlweg.ID_Zahlweg IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

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

aus LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

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

aus LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

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

aus LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeit.Datum IS
'Datum im Datumsformat, z.B. 13.12.2013';

COMMENT ON COLUMN DIM_Zeit.Halbjahr IS
'Halbjahr im Format YYYYHH, z.B. 201302';

COMMENT ON COLUMN DIM_Zeit.Halbjahr_Kurztext IS
'Halbjahr als Kurztext, z.B. H2 2013';

COMMENT ON COLUMN DIM_Zeit.Halbjahr_Langtext IS
'Langtext des Halbjahres, z.B. 2. Halbjahr 2013';

COMMENT ON COLUMN DIM_Zeit.ID_Monat IS
'Die ID_Monat wird mit JJJJMM besetzt.';

COMMENT ON COLUMN DIM_Zeit.ID_ZEIT IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Zeit.Jahr IS
'Jahr des Datums als vierstellige Zahl';

COMMENT ON COLUMN DIM_Zeit.Monat IS
'Monat des Datums als Zahl, z.B. 12';

COMMENT ON COLUMN DIM_Zeit.Monat_Kurztext IS
'Monat als Kurzbezeichner, z.B. Jan, Feb, etc.
';

COMMENT ON COLUMN DIM_Zeit.Monat_Langtext IS
'Monat als Langtext, z.B. Januar, Februar etc.';

COMMENT ON COLUMN DIM_Zeit.Quartal IS
'Quartal im Format YYYYQQ';

COMMENT ON COLUMN DIM_Zeit.Quartal_Kurztext IS
'Quartal als Kurztext, z.B. Q4 2013';

COMMENT ON COLUMN DIM_Zeit.Quartal_Langtext IS
'Quartal als Langtext, z.B. 4. Quartal 2013';

COMMENT ON COLUMN DIM_Zeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeit.Tag IS
'Tag des Datums';

COMMENT ON COLUMN DIM_Zeit.Tag_Kurztext IS
'Kurztext des Tages, z.B. Mi, Do, Fr etc.';

COMMENT ON COLUMN DIM_Zeit.Tag_Langtext IS
'Langtext des Tages, z.B. Dienstag, Mittwoch etc.';

COMMENT ON COLUMN DIM_Zeit.Werktag IS
'Kennzeichnung ob es sich um einen Werktag handelt (Montag bis Freitag)
ja / nein';

COMMENT ON COLUMN DIM_Zeit.Woche IS
'Wochennummer, z.B. 50';

COMMENT ON COLUMN DIM_Zeit.Woche_Kurztext IS
'Kurztext der Woche, z.b. KW 50
';

COMMENT ON COLUMN DIM_Zeit.Woche_Langtext IS
'Langtext der Woche, z. B. Kalenderwoche 50';

COMMENT ON COLUMN DIM_Zeitzone.ID_Zeitzone IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

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

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_BearbeitungsstatusGrund IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Meldeweg IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenKomplexitaet IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenSteuerung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Steuerung';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVN IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVU IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

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

COMMENT ON COLUMN DMK_TeilschadenMerkmale.ID_Deckungsart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart';

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
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart';

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

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Zahlweg IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_BilRueckstMerkmale IS
'identifiziert den Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_KapitalrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_RegressrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Bilanzrueckstellungen.ID_MJ_RentenrueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

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

COMMENT ON COLUMN F_Bilanzrueckstellungen.SK_F_Bilanzrueckstellungen IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellungen.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

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

COMMENT ON COLUMN F_Regress.BetragGeschaetzt IS
'Geschätzter Betrag des Regresses in Regresswährung

aus LE03_Regress_SHUKR_01_HBS.BetragGeschaetzt

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.ID_Sendedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.ID_Waehrung IS
'Kurztext der Regresswährung 

aus LE03_Regress_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Regress.SK_F_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

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

COMMENT ON COLUMN F_RegressPosition.SK_F_RegressPosition IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_RegressPosition.SK_Regress IS
'aus LE04_Regressposition_LE03_BW.FK_LE03_Regress';

COMMENT ON COLUMN F_RegressPosition.SK_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition';

COMMENT ON COLUMN F_RegressPosition.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_RegressPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

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

COMMENT ON COLUMN F_SSP_RVP.RueckstellungsbetragInEuro IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

aus LE09_Rueckst_Man_01_HBM.RueckstellungsbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.SK_SSP_RVP IS
'aus LE09_Rueckst_Man_01_HBM.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_SSP_RVP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Abgabe_RD IS
'Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an eine andere RD (Regionaldirektion) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_RD

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Abgabe_Z IS
'Kennzeichen Abgabe an Z

Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an die Z (Zentrale) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_Z

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AktiveMeldung IS
'Aktive Meldung an Uniwagnis

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_AktiveMeldung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlTote IS
'.. ist die Anzahl der Toten

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ER01_Schaden_SHUKR_01_HBS.AnzahlToteVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlVerletzte IS
'.. ist die Anzahl der Verletzten

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.Auffaelligkeit IS
'Auffälligkeiten

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Auffaelligkeit

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als hätte sich der Schaden in Deutschland ereignet.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_Auslandsschadenschutz

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.BelastendeZahlungen IS
'
aus ER01_Schaden_SHUKR_01_HBS.BelastendeZahlungen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Dreiv_Spaet_Schaden IS
'...gibt an, ob ein Schaden in den ersten drei Quartalen eingetreten ist und erst zu einem späteren Zeitpunkt beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Dreiv_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Schadenbearbeitung in Arbeitstagen bis zur ersten Entschädigungs- oder Rentenzahlung.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $B';

COMMENT ON COLUMN F_Schaden.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Ersatzpflicht

Datenschutz $-
';

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

COMMENT ON COLUMN F_Schaden.Fehlanlage IS
'Fehlanlage

Ja / nein

aus ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Geschäftsjahres) ereignet hat und gemeldet wurde.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_GJ_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_wiedereroeffnet IS
'Kennzeichen Schaden im GJ wiedereröffnet

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und irgendwann im GJ bis zum Betrachtungszeitpunkt den Status ‚geöffnet‘ hatte bzw. aktuell hat oder im GJ eine Zahlung erfolgt ist.
Jede Öffnung eines Schadens wird hierbei betrachtet, unabhängig davon, ob sie monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_wiedereroeffnet_monetaer IS
'"Kennzeichen Schaden im GJ wiedereröffnet monetär

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und im GJ des Betrachtungszeitpunktes entweder zum Stichtag den Status ‚geöffnet‘ hat und eine Rückstellung gesetzt wurde oder aber im Laufe des GJ eine Zahlung erfolgt ist.
Der Fokus hier liegt darin, ob eine Wiedereröffnung des Schadens monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet_monetaer

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GeschlossenMitEntsch IS
'Merker, ob Schließen mit Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GeschlossenOhneEntsch IS
'Merker, ob Schließen ohne Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Halbj_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Halbjahr eingetreten ist und erst in einem späteren Halbjahr beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein
aus ER01_Schaden_DWH_01_HBS.C_Halbj_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Hausakte IS
'... ist das Kennzeichen, ob es sich um einen "Hausakte"-Schaden handelt oder nicht.

ja/nein

aus ER01_Schaden_DWH_01_HBS.POLPROD.C_Hausakte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_AbgabedatumInkasso IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anlagejahr IS
'... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'')

für CM:
aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Datenschutz $-
';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstatusdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstelledatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Loeschdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Meldejahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

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

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussjahr IS
'... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde

aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr

Datenschutz $-?
';

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Schaden.ID_Waehrung IS
'Limit- und Selbstbehaltwährung aus dem Vertrag zum Schaden

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Wiedervorlage IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu sämtlichen Verträgen

aus ER01_Schaden_SHUKR_01_HBS.JahresbeitragKunde

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.KeineBelastung IS
'Keine Belastung trotz Entschädigungszahlungen (Teilungsabkommen)

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineStufung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Klasse_Erdb_Erdru_Lawine_Sonst IS
'Ist dem Schaden die SammelereignisKlasse  3	(Erdbeben/Erdrutsch/Lawinen/Sonstige) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 3	Erdbeben/Erdrutsch/Lawinen/Sonstige

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.Klasse_Flut_Ueberschw_Rueckst IS
'Ist dem Schaden die SammelereignisKlasse  2	(Flut/Überschwemmung/Rückstau) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 2	Flut/Überschwemmung/Rückstau

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.Klasse_NatKat_fuer_Austauschqu IS
'Ist dem Schaden die SammelereignisKlasse  4	(Nat-Kat für Austauschquoten) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 4	Nat-Kat für Austauschquoten

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.Klasse_Sturm_Hagel IS
'Ist dem Schaden die SammelereignisKlasse  1	(Sturm/Hagel) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 1	Sturm/Hagel

Datenschutz $-?';

COMMENT ON COLUMN F_Schaden.Migriert IS
'migrierter Schaden

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ProzessKennzeichen IS
'... gibt an, ob es im Zuge der Schadenregulierung eine gerichtliche Auseinandersetzung gegeben hat / gibt.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_ProzessKennzeichen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Quartal_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Quartal eingetreten ist und erst in einem Folgequartal beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Quartal_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

aus ER01_Schaden_DWH_01_HBS.

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

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial IS
'Initial-Summe gesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

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

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_Entsch IS
'Offene gesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_Rente IS
'Offene gesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_SRK IS
'Offene gesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

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

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial IS
'Initial-Summe ungesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (''ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

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

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen IS
'Offene ungesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

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

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

aus ER01_Schaden_DWH_01_HBS.

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

COMMENT ON COLUMN F_Schaden.SFR_Belastung IS
'SFR-Belastung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SFR_Belastung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

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

COMMENT ON COLUMN F_Schaden.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Schaden_rueckgekauft IS
'Kennzeichen im Kfz-Bereich, dass der Versicherungsnehmer die Zahlungen für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Schaden_rueckgekauft

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Schadenaufwand_ohne_IK IS
'Schadenaufwand ohne innere Kosten

Gesamter Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseingänge, Rückstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht berücksichtigt, ebenso innere Kosten.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Kalenderjahr eingetreten ist, das vor dem Kalenderjahr der Meldung beim Versicherungsunternehmen liegt.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.VersicherungsschVersagt IS
'Merker, ob Versicherungsschutz versagt

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastenden und nicht belastenden Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

aus ER01_Schaden_DWH_01_HBS.

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

COMMENT ON COLUMN F_Schaden.aufwandsneutral IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und der Schadenaufwand ohne innere Kosten <=0 ist. 
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.aufwandsneutral_ohne_SRK IS
'Kennzeichen aufwandsneutral ohne äußere Schadenregulierung

Bei einem Schaden wird dieses Kennzeichen gesetzt, wenn er den Schadenstatus ‚Abgeschlossen'' hat und die saldierten Schadenzahlungen für Entschädigungen und Renten <=0 sind. Aufwendungen für äußere Schadenregulierung können dagegen aufgetreten sein, der Schaden muss also nicht insgesamt aufwandsneutral sein.  Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Hinweis: Dies entspricht inhaltlich der bisherigen o.E.-Logik in der SDS-Statistik

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral_ohne_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ohneEntschaedigung IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und  keinerlei reine Entschädigungs- oder reine Rentenzahlungen geflossen sind.
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Das Kennzeichen ‚o.E.‘ wurde früher auch als ‚o.Z.‘ bezeichnet (ohne Zahlung). 

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_OE

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ER01_Schaden_SHUKR_01_HBS.C_sensiblerSchaden

Datenschutz  $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.ID_Schadenrueckstmerkmale IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

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

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_Schadenrueckstellungen.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadenrueckstellungen.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Abgelehnt

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugehörigen Gerichtsprozesse. 

Datenschutz $-?';

COMMENT ON COLUMN F_Teilschaden.Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_Betrugsverdacht_C

wg. Nicht-Änderbarkeit in der Historie: Datenschutz $C';

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

COMMENT ON COLUMN F_Teilschaden.FalschberatungAussendienst IS
'... gibt an, ob durch den Außendienst eine falsche Beratung stattgefunden hat.

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_FalschberatungAussendienst

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Fehlanlage IS
'Fehlanlage

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Anlagejahr IS
'... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'')

für CM:
aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Datenschutz $-
';

COMMENT ON COLUMN F_Teilschaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Erfassungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Meldejahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

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

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussjahr IS
'... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde

aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr

Datenschutz $-?
';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.

Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.RegulierungAussendienst IS
'... gibt an, ob die Regulierung durch den Aussendienst vorgenommen wurde

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_RegulierungAussendienst

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SK_F_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

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

COMMENT ON COLUMN F_Teilschaden.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS,C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SchadenfeststellerVorOrt IS
'... gibt an, ob ein Schadenfeststeller vor Ort war.

ja/ nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_SchadenfeststellerVorOrt

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TeilfallUngueltig IS
'Teilfall ist ungültig

Ja / Nein

aus ER02_Teilschaden_SHUKR_01_WBS.C_TeilfallUngueltig

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

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

COMMENT ON COLUMN F_Teilschaden.Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastende und nicht belastende Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

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

COMMENT ON COLUMN F_Zhlg_Ford.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Belegdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Buchungsjahr IS
'... ist das Kalenderjahr, in dem die Zahlung gebucht wurde.

aus LE01_Zahlung_DWH_01_HBS.Buchungsjahr

Datenschutz $-?
';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Buchungsmonat IS
'... ist der Kalendermonat, in dem die Zahlung gebucht wurde

aus LE01_Zahlung_DWH_01_HBS.Buchungsmonat

Datenschutz $-?
';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Nettofaelligkeit IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Region_zahlungsausloesend IS
'aus LE01_Zahlung_DWH_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zhlg_Ford.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford.Migriert IS
'Zahlung zu migriertem Schaden

Ja / Nein

aus LE01_Zahlung_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford.Pruefung_Zuf IS
'... gibt an, ob die Zahlung per Zufallsgenerator für eine manuelle Prüfung ausgewählt wurde.

ja / nein/ unzutreffend

aus LE01_Zahlung_DWH_01_HBS.C_Pruefung_Zuf

Datenschutz $-?';

COMMENT ON COLUMN F_Zhlg_Ford.SK_F_Zhlg_Ford IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Partner_Zahlungsempf IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zhlg_Ford.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford.ScheckOffen IS
'Kennzeichen, ob der Scheck noch offen ist.

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_01_HBS.C_ScheckOffen

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

COMMENT ON COLUMN F_Zhlg_Ford.durchgefuehrt IS
'Zahlung wurde bereits durchgefuehrt

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_01_HBS.C_durchgefuehrt

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetrag IS
'... enthält  für Regress-Zahlungen den Gesamtbetrag der Regressforderung, während ''Teilbetrag'' nur den Betrag aus der aktuellen Zahlung wiedergibt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZhlgFordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_F_Zhlg_Ford_Detail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

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

COMMENT ON COLUMN R_Schaden_RVEreign.ID_SammelereignisKlasse IS
'aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

Repräsentiert die Sammelereignisklasse zu ID_RV_NatKatEreignis.';

COMMENT ON COLUMN R_Schaden_RVEreign.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftragter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerletztePerson.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Handwerker.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Regbeauftragter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilschaden_Sachverst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

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

COMMENT ON TABLE DIM_DeckungsschluesselKH IS
'
';

COMMENT ON TABLE DIM_Jahr IS
'Dimensionstabelle für Jahre, die für alle Jahresangaben genutzt werden sollte, z.B. Geschäftsjahre, Anfalljahre, Ereignisjahre, Meldejahre etc.';

COMMENT ON TABLE DIM_KlassifizierungRueckst IS
'Klassifizierungsart für einen Betrag

- Rente
- Entschädigung
- Kosten';

COMMENT ON TABLE DIM_Leistungsart IS
'Dimensionstabelle der Leistungsarten';

COMMENT ON TABLE DIM_SammelereignisKlasse IS
'ersetzt eine DMK_NatKatEreignis, weil dort nur ein Eintrag vorhanden wäre.';

COMMENT ON TABLE DIM_Schadenstatus IS
'Dimensionstabelle des Schadenstatus.';

COMMENT ON TABLE DIM_UKZ IS
'Dimensionstabelle für die Unternehmenskennzeichen (i.d.R. Risikoträger)';

COMMENT ON TABLE DIM_Vollmachtsstufe IS
'
';

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

COMMENT ON TABLE DIM_Zeit IS
'Allgemeine Dimension Zeit, die ausgehend vom Datum alle weiteren Eigenschaften enthält. Sollte allgemein für Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

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
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am

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
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am

';

COMMENT ON TABLE DMK_TeilschadenMerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

angelegt_am  ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung aus ER02_Teilschaden_SHUKR_01_WBS.geaendert_am
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

