--<ScriptOptions statementTerminator=";"/>
-- Version 11863

CREATE TABLE GE02_GE05_Komman_Anschrift_BL (
		SK_GE02_GE05_Komman_Anschrift VARCHAR2(64 CHAR) NOT NULL,
		FK_GE02_Kommunikationsangabe VARCHAR2(64 CHAR) NOT NULL,
		FK_GE05_Anschrift VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GE02_GE05_Par_01_LBS (
		FK_GE02_GE05_Komman_Anschrift VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE GE02_KommAng_Par_01_HBS (
		FK_GE02_Kommunikationsangabe VARCHAR2(64 CHAR) NOT NULL,
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
		KommId_lfd VARCHAR2(8 CHAR),
		C_Kommunikationstyp NUMBER(28 , 0),
		C_Adresstyp NUMBER(28 , 0),
		C_Laenderkennzeichen NUMBER(28 , 0),
		C_UnipostKennzeichen NUMBER(28 , 0),
		C_Nutzungsart NUMBER(28 , 0),
		C_Adressermittlungsergebnis NUMBER(28 , 0),
		C_Adressermittlungsstand NUMBER(28 , 0),
		GDV_DienstleisterOrdnungsbegr VARCHAR2(64 CHAR),
		GDV_Dienstleisternummer_A VARCHAR2(24 CHAR),
		Postleitzahl_A VARCHAR2(24 CHAR),
		Postfach_A VARCHAR2(24 CHAR),
		Telefonnummer_A VARCHAR2(180 CHAR),
		E_Mail_Adresse_A VARCHAR2(500 CHAR),
		Faxnummer_A VARCHAR2(180 CHAR),
		Web_Adresse_A VARCHAR2(180 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GE02_Kommunikationsangabe_BH (
		SK_GE02_Kommunikationsangabe VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GE05_Anschrift_BH (
		SK_GE05_Anschrift VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GE05_Anschrift_Par_01_HBS (
		FK_GE05_Anschrift VARCHAR2(64 CHAR) NOT NULL,
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
		AnschriftenNr VARCHAR2(8 CHAR),
		C_Laenderkennzeichen NUMBER(28 , 0),
		C_UnipostKennzeichen NUMBER(28 , 0),
		C_Adressermittlungsergebnis NUMBER(28 , 0),
		C_Adressermittlungsstand NUMBER(28 , 0),
		GDV_DienstleisterOrdnungsbegr VARCHAR2(64 CHAR),
		Postleitzahl_A VARCHAR2(24 CHAR),
		Ortsname_A VARCHAR2(180 CHAR),
		Strassenname_A VARCHAR2(64 CHAR),
		Hausnummer_A VARCHAR2(64 CHAR),
		Adresszusatz_A VARCHAR2(180 CHAR),
		Ortsteil_A VARCHAR2(180 CHAR),
		Auslandsadresse_A VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_GE02_BL (
		SK_PA01_GE02 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_GE02_Kommunikationsangabe VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_GE02_Par_01_LBS (
		FK_GE02_PA01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA01_PA02_BL (
		SK_PA01_PA01_PA02 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner_P VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA01_PA02_Par_01_LBS (
		FK_PA01_PA01_PA02 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_PA05_BL (
		SK_PA01_PA02_PA05 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_PA05_Bankverbindung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_PA05_Par_01_LBS (
		FK_PA01_PA02_PA05 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_WE01_BL (
		SK_PA01_PA02_WE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Willenserklaerung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_WE01_Par_01_LBS (
		FK_PA01_PA02_WE01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PartnerGemErb_Par_01_HBS (
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
		C_Partnertyp NUMBER(28 , 0),
		C_Erbl_Partnertyp NUMBER(28 , 0),
		C_vereinbDatenschutz NUMBER(28 , 0),
		C_Werbeunterdrueckung NUMBER(28 , 0),
		C_Telefonwerbung NUMBER(28 , 0),
		C_Erstkontakt NUMBER(28 , 0),
		Name_A VARCHAR2(180 CHAR),
		Erbl_Namenszusatz_A VARCHAR2(64 CHAR),
		Erbl_Vorname_A VARCHAR2(180 CHAR),
		C_Erbl_Titel NUMBER(28 , 0),
		C_Erbl_Geschlecht NUMBER(28 , 0),
		C_Erbl_Anrede NUMBER(28 , 0),
		Erbl_Geburtsdatum_A VARCHAR2(64 CHAR),
		Erbl_Geburtsjahr VARCHAR2(8 CHAR),
		Erbl_Geburtsort VARCHAR2(64 CHAR),
		C_Erbl_Familienstand NUMBER(28 , 0),
		C_Erbl_verstorben NUMBER(28 , 0),
		C_Erbl_Akademiker NUMBER(28 , 0),
		Erbl_Beruf VARCHAR2(64 CHAR),
		C_Erbl_Nationalitaet NUMBER(28 , 0),
		C_Erbl_Fuehrerscheinklasse NUMBER(28 , 0),
		C_Erbl_ABCV_Beschein_liegt_vor NUMBER(28 , 0),
		C_Erbl_ACV_Mitglied NUMBER(28 , 0),
		C_Erbl_selbsstaendig_KZ NUMBER(28 , 0),
		C_Erbl_Ruhestand NUMBER(28 , 0),
		Erbl_Gewerbe VARCHAR2(64 CHAR),
		C_GeschaeftsbezTaetigkeit NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeitTarif NUMBER(28 , 0),
		C_Makler NUMBER(28 , 0),
		C_Personenzustand_Ident NUMBER(28 , 0),
		C_SchutzKennzeichen_B NUMBER(28 , 0),
		ErbL_Sozialversicherungsnr_AB VARCHAR2(180 CHAR),
		Vermittlerkontonummer_A VARCHAR2(64 CHAR),
		C_Personenzustand_pos_B NUMBER(28 , 0),
		C_Personenzustand_neg_B NUMBER(28 , 0),
		Erbl_Sterbedatum DATE,
		C_Partnergemeinschaftsart NUMBER(28 , 0),
		C_Gueterstand NUMBER(28 , 0),
		C_GeschaeftsbezFirma NUMBER(28 , 0),
		C_GeschaeftsbezFirmaTarif NUMBER(28 , 0),
		C_Erb_kz NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PartnerGem_Par_01_HBS (
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
		C_Partnertyp NUMBER(28 , 0),
		C_Partnergemeinschaftsart NUMBER(28 , 0),
		C_vereinbDatenschutz NUMBER(28 , 0),
		C_Werbeunterdrueckung NUMBER(28 , 0),
		C_Telefonwerbung NUMBER(28 , 0),
		C_Erstkontakt NUMBER(28 , 0),
		Name_A VARCHAR2(180 CHAR),
		C_Gueterstand NUMBER(28 , 0),
		C_GeschaeftsbezFirma NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeit NUMBER(28 , 0),
		C_GeschaeftsbezFirmaTarif NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeitTarif NUMBER(28 , 0),
		C_Makler NUMBER(28 , 0),
		Vermittlerkontonummer_A VARCHAR2(64 CHAR),
		C_Personenzustand_pos_B NUMBER(28 , 0),
		C_Personenzustand_neg_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PartnerJur_Par_01_HBS (
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
		C_Partnertyp NUMBER(28 , 0),
		C_DEVK_Unternehmen NUMBER(28 , 0),
		C_vereinbDatenschutz NUMBER(28 , 0),
		C_Werbeunterdrueckung NUMBER(28 , 0),
		Name_A VARCHAR2(180 CHAR),
		C_Rechtsform NUMBER(28 , 0),
		C_Konzernnummer NUMBER(28 , 0),
		Abrechnungsstelle VARCHAR2(8 CHAR),
		Sozialversicherungstraeger_Nr VARCHAR2(64 CHAR),
		Versicherungsunternehmen_Nr VARCHAR2(24 CHAR),
		C_Gerichtsart NUMBER(28 , 0),
		C_GeschaeftsbezFirma NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeit NUMBER(28 , 0),
		C_GeschaeftsbezFirmaTarif NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeitTarif NUMBER(28 , 0),
		C_Teilungsabkommen NUMBER(28 , 0),
		C_Makler NUMBER(28 , 0),
		Bankleitzahl_A VARCHAR2(64 CHAR),
		BIC_A VARCHAR2(64 CHAR),
		Vermittlerkontonummer_A VARCHAR2(64 CHAR),
		C_Personenzustand_pos_B NUMBER(28 , 0),
		C_Personenzustand_neg_B NUMBER(28 , 0),
		C_Unternehmenskennzeichen NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PartnerNat_Par_01_HBS (
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
		C_Partnertyp NUMBER(28 , 0),
		C_vereinbDatenschutz NUMBER(28 , 0),
		C_Werbeunterdrueckung NUMBER(28 , 0),
		C_Telefonwerbung NUMBER(28 , 0),
		C_Erstkontakt NUMBER(28 , 0),
		Name_A VARCHAR2(180 CHAR),
		Namenszusatz_A VARCHAR2(64 CHAR),
		Vorname_A VARCHAR2(180 CHAR),
		C_Titel NUMBER(28 , 0),
		C_Geschlecht NUMBER(28 , 0),
		C_Anrede NUMBER(28 , 0),
		Geburtsdatum_A VARCHAR2(64 CHAR),
		Geburtsjahr VARCHAR2(8 CHAR),
		Geburtsort VARCHAR2(64 CHAR),
		C_Familienstand NUMBER(28 , 0),
		C_verstorben NUMBER(28 , 0),
		C_Akademiker NUMBER(28 , 0),
		Beruf VARCHAR2(64 CHAR),
		C_Nationalitaet NUMBER(28 , 0),
		C_Fuehrerscheinklasse NUMBER(28 , 0),
		C_ABCV_Bescheinigung_liegt_vor NUMBER(28 , 0),
		C_ACV_Mitglied NUMBER(28 , 0),
		C_selbsstaendig_KZ NUMBER(28 , 0),
		C_Ruhestand NUMBER(28 , 0),
		Gewerbe VARCHAR2(64 CHAR),
		C_GeschaeftsbezTaetigkeit NUMBER(28 , 0),
		C_GeschaeftsbezTaetigkeitTarif NUMBER(28 , 0),
		C_Makler NUMBER(28 , 0),
		C_Personenzustand_Ident NUMBER(28 , 0),
		C_SchutzKennzeichen_B NUMBER(28 , 0),
		Sozialversicherungsnummer_AB VARCHAR2(64 CHAR),
		Vermittlerkontonummer_A VARCHAR2(64 CHAR),
		C_Personenzustand_pos_B NUMBER(28 , 0),
		C_Personenzustand_neg_B NUMBER(28 , 0),
		Sterbedatum DATE,
		C_Erb_kz NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PartnerOrga_Par_01_HBS (
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
		C_Partnertyp NUMBER(28 , 0),
		C_vereinbDatenschutz NUMBER(28 , 0),
		C_Werbeunterdrueckung NUMBER(28 , 0),
		C_Erstkontakt NUMBER(28 , 0),
		C_Organisationseinheitart NUMBER(28 , 0),
		Name_A VARCHAR2(180 CHAR),
		Kurzname_alfa VARCHAR2(64 CHAR),
		Kurzname_num VARCHAR2(64 CHAR),
		C_RD NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA03_AmtlDokument_Par_01_WBS (
		FK_PA03_AmtlichesDokument VARCHAR2(64 CHAR) NOT NULL,
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
		Dokument_lfd VARCHAR2(8 CHAR),
		ausstellendeBehoerde VARCHAR2(64 CHAR),
		AusstellungsOrt VARCHAR2(64 CHAR),
		AusstellungsDatum DATE,
		DokumentGueltigAb DATE,
		DokumentGueltigBis DATE,
		C_Dokumentenart_B NUMBER(28 , 0),
		DokumentenNummer_AC VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA03_AmtlichesDokument_PA01_BW (
		SK_PA03_AmtlichesDokument VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA04_Kundenmerkmal_PA01_BW (
		SK_PA04_Kundenmerkmal VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA04_Kundenmerkmal_Par_01_WBS (
		FK_PA04_Kundenmerkmal VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Kundenmerkmal_lfd VARCHAR2(8 CHAR),
		C_Geschaeftsbereich NUMBER(28 , 0),
		C_Kodierung_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA05_Bankverbindung_BH (
		SK_PA05_Bankverbindung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA05_Bankverbindung_Par_01_HBS (
		FK_PA05_Bankverbindung VARCHAR2(64 CHAR) NOT NULL,
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
		Inkassonummer VARCHAR2(8 CHAR),
		C_Land NUMBER(28 , 0),
		IBAN_AB VARCHAR2(180 CHAR),
		Kontonummer_AB VARCHAR2(64 CHAR),
		Bankleitzahl_A VARCHAR2(64 CHAR),
		BIC_A VARCHAR2(64 CHAR),
		Bankname_A VARCHAR2(180 CHAR),
		C_Bank_Klassifizierung NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE GE02_GE05_Komman_Anschrift_BL ADD CONSTRAINT GE02_GE05_BL_PK PRIMARY KEY
	(SK_GE02_GE05_Komman_Anschrift);

ALTER TABLE GE02_GE05_Par_01_LBS ADD CONSTRAINT GE02_GE05_Par_01_LBS_PK PRIMARY KEY
	(FK_GE02_GE05_Komman_Anschrift,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GE02_KommAng_Par_01_HBS ADD CONSTRAINT GE02_KommAng_PAR_01_HBS_PK PRIMARY KEY
	(FK_GE02_Kommunikationsangabe,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GE02_Kommunikationsangabe_BH ADD CONSTRAINT GE02_Kommunikationsang_BH_PK PRIMARY KEY
	(SK_GE02_Kommunikationsangabe);

ALTER TABLE GE05_Anschrift_BH ADD CONSTRAINT GE05_Anschrift_BH_PK PRIMARY KEY
	(SK_GE05_Anschrift);

ALTER TABLE GE05_Anschrift_Par_01_HBS ADD CONSTRAINT GE05_Anschrift_Par_01_HBS_PK PRIMARY KEY
	(FK_GE05_Anschrift,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_GE02_BL ADD CONSTRAINT PA01_GE02_BL_PK PRIMARY KEY
	(SK_PA01_GE02);

ALTER TABLE PA01_GE02_Par_01_LBS ADD CONSTRAINT PA01_GE02_Par_01_LBS_PK PRIMARY KEY
	(FK_GE02_PA01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA01_PA02_BL ADD CONSTRAINT PA01_PA01_PA02_BL_PK PRIMARY KEY
	(SK_PA01_PA01_PA02);

ALTER TABLE PA01_PA01_PA02_Par_01_LBS ADD CONSTRAINT PA01_PA01_PA02_Par_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA01_PA02,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_PA05_BL ADD CONSTRAINT PA01_PA02_PA05_BL_PK PRIMARY KEY
	(SK_PA01_PA02_PA05);

ALTER TABLE PA01_PA02_PA05_Par_01_LBS ADD CONSTRAINT PA01_PA02_PA05_Par_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_PA05,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_WE01_BL ADD CONSTRAINT PA01_PA02_WE01_BL_PK PRIMARY KEY
	(SK_PA01_PA02_WE01);

ALTER TABLE PA01_PA02_WE01_Par_01_LBS ADD CONSTRAINT PA01_PA02_WE01_Par_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_WE01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PartnerGemErb_Par_01_HBS ADD CONSTRAINT PA01_ParGemErb_Par_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PartnerGem_Par_01_HBS ADD CONSTRAINT PA01_PartnGem_Par_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PartnerJur_Par_01_HBS ADD CONSTRAINT PA01_PartnJur_Par_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PartnerNat_Par_01_HBS ADD CONSTRAINT PA01_PartnNat_Par_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PartnerOrga_Par_01_HBS ADD CONSTRAINT PA01_PartnOrg_Par_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA03_AmtlDokument_Par_01_WBS ADD CONSTRAINT PA03_AmtlDok_Par_01_WBS_PK PRIMARY KEY
	(FK_PA03_AmtlichesDokument,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA03_AmtlichesDokument_PA01_BW ADD CONSTRAINT PA03_AmtlichesDok_BW_PK PRIMARY KEY
	(SK_PA03_AmtlichesDokument);

ALTER TABLE PA04_Kundenmerkmal_PA01_BW ADD CONSTRAINT PA04_Kundenmerkmal_BW_PK PRIMARY KEY
	(SK_PA04_Kundenmerkmal);

ALTER TABLE PA04_Kundenmerkmal_Par_01_WBS ADD CONSTRAINT PA04_Kundenmerkm_Par_01_WBS_PK PRIMARY KEY
	(FK_PA04_Kundenmerkmal,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA05_Bankverbindung_BH ADD CONSTRAINT PA05_Bankverbindung_BH_PK PRIMARY KEY
	(SK_PA05_Bankverbindung);

ALTER TABLE PA05_Bankverbindung_Par_01_HBS ADD CONSTRAINT PA05_Bankverb_Par_01_HBS_FK PRIMARY KEY
	(FK_PA05_Bankverbindung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GE02_GE05_Komman_Anschrift_BL ADD CONSTRAINT GE02_GE05_BL_Anschrift_FK FOREIGN KEY
	(FK_GE05_Anschrift)
	REFERENCES GE05_Anschrift_BH
	(SK_GE05_Anschrift);

ALTER TABLE GE02_GE05_Komman_Anschrift_BL ADD CONSTRAINT GE02_GE05_BL_Kommunikation_FK FOREIGN KEY
	(FK_GE02_Kommunikationsangabe)
	REFERENCES GE02_Kommunikationsangabe_BH
	(SK_GE02_Kommunikationsangabe);

ALTER TABLE GE02_GE05_Par_01_LBS ADD CONSTRAINT GE02_GE05_Par_01_LBS_FK FOREIGN KEY
	(FK_GE02_GE05_Komman_Anschrift)
	REFERENCES GE02_GE05_Komman_Anschrift_BL
	(SK_GE02_GE05_Komman_Anschrift);

ALTER TABLE GE02_KommAng_Par_01_HBS ADD CONSTRAINT GE02_KommAng_PAR_01_HBS_FK FOREIGN KEY
	(FK_GE02_Kommunikationsangabe)
	REFERENCES GE02_Kommunikationsangabe_BH
	(SK_GE02_Kommunikationsangabe);

ALTER TABLE GE05_Anschrift_Par_01_HBS ADD CONSTRAINT GE05_Anschrift_Par_01_HBS_FK FOREIGN KEY
	(FK_GE05_Anschrift)
	REFERENCES GE05_Anschrift_BH
	(SK_GE05_Anschrift);

ALTER TABLE PA01_GE02_BL ADD CONSTRAINT PA01_GE02_BL_Kommunik_FK FOREIGN KEY
	(FK_GE02_Kommunikationsangabe)
	REFERENCES GE02_Kommunikationsangabe_BH
	(SK_GE02_Kommunikationsangabe);

ALTER TABLE PA01_GE02_BL ADD CONSTRAINT PA01_GE02_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_GE02_Par_01_LBS ADD CONSTRAINT PA01_GE02_Par_01_LBS_FK FOREIGN KEY
	(FK_GE02_PA01)
	REFERENCES PA01_GE02_BL
	(SK_PA01_GE02);

ALTER TABLE PA01_PA01_PA02_BL ADD CONSTRAINT PA01_PA01_PA02_BL_PartnerP_FK FOREIGN KEY
	(FK_PA01_Partner_P)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA01_PA02_BL ADD CONSTRAINT PA01_PA01_PA02_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA01_PA02_BL ADD CONSTRAINT PA01_PA01_PA02_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA01_PA02_Par_01_LBS ADD CONSTRAINT PA01_PA01_PA02_Par_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA01_PA02)
	REFERENCES PA01_PA01_PA02_BL
	(SK_PA01_PA01_PA02);

ALTER TABLE PA01_PA02_PA05_BL ADD CONSTRAINT PA01_PA02_PA05_BL_Bankverb_FK FOREIGN KEY
	(FK_PA05_Bankverbindung)
	REFERENCES PA05_Bankverbindung_BH
	(SK_PA05_Bankverbindung);

ALTER TABLE PA01_PA02_PA05_BL ADD CONSTRAINT PA01_PA02_PA05_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_PA05_BL ADD CONSTRAINT PA01_PA02_PA05_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_PA05_Par_01_LBS ADD CONSTRAINT PA01_PA02_PA05_Par_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_PA05)
	REFERENCES PA01_PA02_PA05_BL
	(SK_PA01_PA02_PA05);

ALTER TABLE PA01_PA02_WE01_BL ADD CONSTRAINT PA01_PA02_WE01_BL_PartnerRo_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_WE01_BL ADD CONSTRAINT PA01_PA02_WE01_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_WE01_BL ADD CONSTRAINT PA01_PA02_WE01_BL_WE01_FK FOREIGN KEY
	(FK_WE01_Willenserklaerung)
	REFERENCES WE01_Willenserklaerung_BH
	(SK_WE01_Willenserklaerung);

ALTER TABLE PA01_PA02_WE01_Par_01_LBS ADD CONSTRAINT PA01_PA02_WE01_Par_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_WE01)
	REFERENCES PA01_PA02_WE01_BL
	(SK_PA01_PA02_WE01);

ALTER TABLE PA01_PartnerGemErb_Par_01_HBS ADD CONSTRAINT PA01_ParGemErb_Par_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PartnerGem_Par_01_HBS ADD CONSTRAINT PA01_PartnGem_Par_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PartnerJur_Par_01_HBS ADD CONSTRAINT PA01_PartnJur_Par_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PartnerNat_Par_01_HBS ADD CONSTRAINT PA01_PartnNat_Par_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PartnerOrga_Par_01_HBS ADD CONSTRAINT PA01_PartnOrg_Par_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA03_AmtlDokument_Par_01_WBS ADD CONSTRAINT PA03_AmtlDok_Par_01_WBS_FK FOREIGN KEY
	(FK_PA03_AmtlichesDokument)
	REFERENCES PA03_AmtlichesDokument_PA01_BW
	(SK_PA03_AmtlichesDokument);

ALTER TABLE PA03_AmtlichesDokument_PA01_BW ADD CONSTRAINT PA03_AmtlichesDok_PA01_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA04_Kundenmerkmal_PA01_BW ADD CONSTRAINT PA04_Kundenmerkmal_PA01_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA04_Kundenmerkmal_Par_01_WBS ADD CONSTRAINT PA04_Kundenmerkm_Par_01_WBS_FK FOREIGN KEY
	(FK_PA04_Kundenmerkmal)
	REFERENCES PA04_Kundenmerkmal_PA01_BW
	(SK_PA04_Kundenmerkmal);

ALTER TABLE PA05_Bankverbindung_Par_01_HBS ADD CONSTRAINT PA05_Bankverb_Par_01_HBS_PK FOREIGN KEY
	(FK_PA05_Bankverbindung)
	REFERENCES PA05_Bankverbindung_BH
	(SK_PA05_Bankverbindung);

