--<ScriptOptions statementTerminator=";"/>
-- Version 17922

CREATE TABLE KT01_Beleg_InEx_02_HBS (
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
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
		BelegNr_A VARCHAR2(64 CHAR),
		C_Belegart NUMBER(28 , 0),
		C_RuecklaeuferGrund NUMBER(28 , 0),
		angelegt_am DATE,
		Belegdatum DATE,
		Buchungsdatum DATE,
		C_BelegHerkunft NUMBER(28 , 0),
		angelegt_von_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT08_BBL (
		SK_KT01_KT08 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT09_Bel_Ink_InEx_01_LBS (
		FK_KT01_KT09_Bel_Inkasso VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT01_KT09_Bel_Inkasso_BL (
		SK_KT01_KT09_Bel_Inkasso VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT09_Inkassierungsmassnahme VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT12_ZahlungsBeleg_BBL (
		SK_KT01_KT12_ZahungsBeleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT12_Zahlungsstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT13_ZahlStBl_InEx_01_LBS (
		FK_KT01_KT13_Zahlstap_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_aus_Klaerung NUMBER(28 , 0),
		Teilklaerungsposition_LFD VARCHAR2(8 CHAR),
		zugeordneter_Betrag NUMBER(16 , 2),
		C_Zahlweg_Rueckzahlung NUMBER(28 , 0),
		C_Umbuchung_Kurzkontierung NUMBER(28 , 0),
		Verwendungsbeschreibung_AB VARCHAR2(500 CHAR),
		Klaerungskonto_abweichend VARCHAR2(24 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT13_Zahlstap_AusglBel_BL (
		SK_KT01_KT13_Zahlstap_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT13_ZahlStapelPos VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT04_BL (
		SK_KT02_KT04 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		FK_KT04_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT04_InEx_01_LBS (
		FK_KT02_KT04 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Ueberwachungsmassnahme_von DATE,
		Ueberwachungsmassnahme_bis DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT08_BBL (
		SK_KT02_KT08 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT09_BL (
		SK_KT02_KT09 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		FK_KT09_Inkassierungsmassnahme VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT09_InEx_01_LBS (
		FK_KT02_KT09 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT02_VKSperre_InEx_01_HBM (
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sperre_Id_A VARCHAR2(64 CHAR) NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Vertragskonto_A VARCHAR2(64 CHAR),
		C_Prozess_gesperrt NUMBER(28 , 0) NOT NULL,
		C_Sperrgrund_B NUMBER(28 , 0),
		gueltig_von DATE,
		gueltig_bis DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		angelegt_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		ersterBeginn DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_KT05_BL (
		SK_KT04_KT05 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT04_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_KT05_InEx_01_LBS (
		FK_KT04_KT05 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Ueberwachungsmassnahme_von DATE,
		Ueberwachungsmassnahme_bis DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_KT06_BL (
		SK_KT04_KT06 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT04_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_KT06_InEx_01_LBS (
		FK_KT04_KT06 VARCHAR2(64 CHAR) NOT NULL,
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
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		POB_A VARCHAR2(64 CHAR),
		Ueberwachung_LFD VARCHAR2(8 CHAR),
		C_Buchungskreis NUMBER(28 , 0),
		BelegNr_A VARCHAR2(64 CHAR),
		BelegWiederholungsPosNr VARCHAR2(8 CHAR),
		BelegPositionNr VARCHAR2(8 CHAR),
		TeilpositionNr VARCHAR2(8 CHAR),
		DatumUeberwachungslauf DATE,
		KennungUeberwachungslauf VARCHAR2(24 CHAR),
		C_Waehrung NUMBER(28 , 0),
		Ueberwachungsbetrag NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_Ueberwachung_BH (
		SK_KT04_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT04_Ueberwachung_InEx_01_HBM (
		FK_KT04_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Buchungskreis NUMBER(28 , 0) NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		InExkassoObjektNr_A VARCHAR2(64 CHAR),
		POB_A VARCHAR2(64 CHAR),
		Ueberwachung_LFD VARCHAR2(8 CHAR),
		DatumUeberwachungslauf DATE,
		KennungUeberwachungslauf VARCHAR2(24 CHAR),
		Ausstellungsdatum DATE,
		Druckdatum DATE,
		C_Ueberwachungsverfahren NUMBER(28 , 0),
		C_Ueberwachungsstufe_B NUMBER(28 , 0),
		C_UeberwachungsstufenTyp_B NUMBER(28 , 0),
		C_Waehrung NUMBER(28 , 0),
		Ueberwachungssaldo NUMBER(16 , 2),
		C_Abgabe_Inkassobuero_B NUMBER(28 , 0),
		C_Ueberwachungsstorno_B NUMBER(28 , 0),
		UeberwBearbeitungsschritt NUMBER(10 , 0),
		C_UeberwachungsverfahrensTyp NUMBER(28 , 0),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		C_UeberwVerfahrenStatus_B NUMBER(28 , 0),
		naechstUeberwLaufdatum DATE,
		Ueberwachungsmassnahme_von DATE,
		Ueberwachungsmassnahme_bis DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_ER01_InExOSch_InEx_01_LBS (
		FK_KT05_ER01_InExO_Schaden VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT05_IEOSperre_InEx_01_HBM (
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sperre_Id_A VARCHAR2(64 CHAR) NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		InExkassoObjektNr_A VARCHAR2(64 CHAR),
		C_Prozess_gesperrt NUMBER(28 , 0) NOT NULL,
		C_Sperrgrund_B NUMBER(28 , 0),
		gueltig_von DATE,
		gueltig_bis DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		angelegt_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		ersterBeginn DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_InExkassoObj_InEx_02_HBS (
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
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
		InExkassoObjektNr_A VARCHAR2(64 CHAR),
		C_InExkassoObjektArt NUMBER(28 , 0),
		POB_A VARCHAR2(64 CHAR),
		C_Periodizitaet_Sollstellung NUMBER(28 , 0),
		C_Wechseloption_ZW_InEx NUMBER(28 , 0),
		Zahlplan_gueltig_beginn DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_InExkassoObj_InEx_03_HBS (
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
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
		InExkassoObjektNr_A VARCHAR2(64 CHAR),
		C_InExkassoObjektArt NUMBER(28 , 0),
		POB_A VARCHAR2(64 CHAR),
		C_VertragsfuehrendeStelle NUMBER(28 , 0),
		C_Ueberwachungsvariante NUMBER(28 , 0),
		C_Status_Abgabe_Inkbuero_Btr_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_KT08_BBL (
		SK_KT05_KT08 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_WE01_InExOVer_InEx_01_LBS (
		FK_KT05_WE01_InExO_Vertrag VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT05_WE01_InExO_Vertrag_BL (
		SK_KT05_WE01_InExO_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Willenserklaerung VARCHAR2(64 CHAR) NOT NULL,
		QF_INSOBJECT_quellintern VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_BelegPosSperr_InEx_01_WBM (
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sperre_Id_A VARCHAR2(64 CHAR) NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		BelegNr_A VARCHAR2(64 CHAR),
		BelegPositionNr VARCHAR2(8 CHAR),
		BelegTeilPosition_Lfd VARCHAR2(8 CHAR),
		C_Prozess_gesperrt NUMBER(28 , 0) NOT NULL,
		C_Sperrgrund_B NUMBER(28 , 0),
		gueltig_von DATE,
		gueltig_bis DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		angelegt_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		ersterBeginn DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_BelegPosition_InEx_03_WBS (
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
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
		BelegNr_A VARCHAR2(64 CHAR),
		BelegWiederholungsPosNr VARCHAR2(8 CHAR),
		BelegPositionNr VARCHAR2(8 CHAR),
		TeilpositionNr VARCHAR2(8 CHAR),
		Nettofaelligkeit DATE,
		Betrag NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		C_hat_Stellvertreterbeleg NUMBER(28 , 0),
		C_hat_Ausloeserbeleg NUMBER(28 , 0),
		C_RD_vertragsfuehrend NUMBER(28 , 0),
		Abrechnungszeit_von DATE,
		Abrechnungszeit_bis DATE,
		C_Status_Abgabe_Inkbuero_Sch_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_KT08_BL (
		SK_KT06_KT08 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_KT08_InEx_01_LBS (
		SK_KT06_KT08 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT08_InkassoPos_InEx_01_HBS (
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
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
		BelegNr_A VARCHAR2(64 CHAR),
		Abgabedatum DATE,
		InkassoPositionLfdNr VARCHAR2(8 CHAR),
		InkassoPosHistorieLfdNr VARCHAR2(8 CHAR),
		BetragInkasso NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		C_Abgabegrund_B NUMBER(28 , 0),
		C_Abgabestatus NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT08_InkassoPosition_BH (
		SK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT08_KT09_BL (
		SK_KT08_KT09 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		FK_KT09_Inkassierungsmassnahme VARCHAR2(64) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT08_KT09_InEx_01_LBS (
		FK_KT08_KT09 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT09_Inkassierung_InEx_01_HBS (
		FK_KT09_Inkassierungsmassnahme VARCHAR2(64 CHAR) NOT NULL,
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
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		POB_A VARCHAR2(64 CHAR),
		Abgabedatum DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT09_Inkassierungsmassnahme_BH (
		SK_KT09_Inkassierungsmassnahme VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT12_Zahlstapel_InEx_01_HBS (
		FK_KT12_Zahlungsstapel VARCHAR2(64 CHAR) NOT NULL,
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
		Zahlstapel_Id_A VARCHAR2(64 CHAR),
		Bankverrechnungskonto VARCHAR2(24 CHAR),
		C_Belegart NUMBER(28 , 0),
		C_Waehrung NUMBER(28 , 0),
		Buchungsdatum_vorgesehen DATE,
		Belegdatum_vorgesehen DATE,
		Valutadatum DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT12_Zahlungsstapel_BH (
		SK_KT12_Zahlungsstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT13_ZahlstapelPos_InEx_01_WBS (
		FK_KT13_ZahlstapelPos VARCHAR2(64 CHAR) NOT NULL,
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
		Zahlstapel_Id_A VARCHAR2(64 CHAR),
		ZahlstapelPosNr VARCHAR2(8 CHAR),
		Zahlbetrag NUMBER(16 , 2),
		zugeordneter_Betrag NUMBER(16 , 2),
		Verwendungszweck_AB VARCHAR2(500 CHAR),
		C_Bank_Land NUMBER(28 , 0),
		Bankleitzahl_A VARCHAR2(64 CHAR),
		Bankkontonummer_A VARCHAR2(64 CHAR),
		Auftraggeber_A VARCHAR2(500 CHAR),
		C_Dauerauftrag NUMBER(28 , 0),
		C_Zahlweg_Rueckzahlung NUMBER(28 , 0),
		C_Umbuchung_Kurzkontierung NUMBER(28 , 0),
		Verwendungsbeschreibung_AB VARCHAR2(500 CHAR),
		IBAN_AB VARCHAR2(180 CHAR),
		BIC_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT13_ZahlstapelPos_KT12_BW (
		SK_KT13_ZahlstapelPos VARCHAR2(64 CHAR) NOT NULL,
		FK_KT12_Zahlungsstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_KT01_BL (
		SK_PA01_PA02_KT01 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_KT01_InEx_01_LBS (
		FK_PA01_PA02_KT01 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_KT08_BL (
		SK_PA01_PA02_KT08 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_KT08_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_KT08_InEx_01_LBS (
		FK_PA01_PA02_KT08 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE PA01_PA02_KT09_BL (
		SK_PA01_PA02_KT09 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_KT09_Inkassierungsmassnahme VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_KT09_InEx_01_LBS (
		FK_PA01_PA02_KT09 VARCHAR2(64 CHAR) NOT NULL,
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

ALTER TABLE KT01_Beleg_InEx_02_HBS ADD CONSTRAINT KT01_Beleg_InEx_02_HBS_PK PRIMARY KEY
	(FK_KT01_Beleg,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT08_BBL ADD CONSTRAINT KT01_KT08_BBL_PK PRIMARY KEY
	(SK_KT01_KT08);

ALTER TABLE KT01_KT09_Bel_Ink_InEx_01_LBS ADD CONSTRAINT KT01_KT09_Bel_Ink_InEx_01_PK PRIMARY KEY
	(FK_KT01_KT09_Bel_Inkasso,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT09_Bel_Inkasso_BL ADD CONSTRAINT KT01_KT09_Bel_Ink_BL_PK PRIMARY KEY
	(SK_KT01_KT09_Bel_Inkasso);

ALTER TABLE KT01_KT12_ZahlungsBeleg_BBL ADD CONSTRAINT KT01_KT12_ZahlBel_BBL_PK PRIMARY KEY
	(SK_KT01_KT12_ZahungsBeleg);

ALTER TABLE KT01_KT13_ZahlStBl_InEx_01_LBS ADD CONSTRAINT  KT01_KT13_KK_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT01_KT13_Zahlstap_Beleg,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT13_Zahlstap_AusglBel_BL ADD CONSTRAINT KT01_KT13_KK_BL_PK PRIMARY KEY
	(SK_KT01_KT13_Zahlstap_Beleg);

ALTER TABLE KT02_KT04_BL ADD CONSTRAINT KT02_KT04_BL_PK PRIMARY KEY
	(SK_KT02_KT04);

ALTER TABLE KT02_KT04_InEx_01_LBS ADD CONSTRAINT KT02_KT04_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT02_KT04,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT02_KT08_BBL ADD CONSTRAINT KT02_KT08_BBL_PK PRIMARY KEY
	(SK_KT02_KT08);

ALTER TABLE KT02_KT09_BL ADD CONSTRAINT KT02_KT09_BL_PK PRIMARY KEY
	(SK_KT02_KT09);

ALTER TABLE KT02_KT09_InEx_01_LBS ADD CONSTRAINT KT02_KT09_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT02_KT09,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT02_VKSperre_InEx_01_HBM ADD CONSTRAINT KT02_VKSperre_InEx_01_HBM_PK PRIMARY KEY
	(FK_KT02_Vertragskonto,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 Sperre_Id_A);

ALTER TABLE KT04_KT05_BL ADD CONSTRAINT KT04_KT05_BL_PK PRIMARY KEY
	(SK_KT04_KT05);

ALTER TABLE KT04_KT05_InEx_01_LBS ADD CONSTRAINT KT04_KT05_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT04_KT05,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT04_KT06_BL ADD CONSTRAINT KT04_KT06_BL_PK PRIMARY KEY
	(SK_KT04_KT06);

ALTER TABLE KT04_KT06_InEx_01_LBS ADD CONSTRAINT KT04_KT06_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT04_KT06,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT04_Ueberwachung_BH ADD CONSTRAINT KT04_Ueberwachung_BH_PK PRIMARY KEY
	(SK_KT04_Ueberwachung);

ALTER TABLE KT04_Ueberwachung_InEx_01_HBM ADD CONSTRAINT KT04_Ueberwachung_InEx_01_HBM1 PRIMARY KEY
	(FK_KT04_Ueberwachung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 C_Buchungskreis);

ALTER TABLE KT05_ER01_InExOSch_InEx_01_LBS ADD CONSTRAINT KT05_ER01_IEOSc_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT05_ER01_InExO_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT05_IEOSperre_InEx_01_HBM ADD CONSTRAINT KT05_IEOSperre_InEx_01_HBM_PK PRIMARY KEY
	(FK_KT05_InExkassoObjekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 Sperre_Id_A);

ALTER TABLE KT05_InExkassoObj_InEx_02_HBS ADD CONSTRAINT KT05_InExkObj_InEx_02_HBS_PK PRIMARY KEY
	(FK_KT05_InExkassoObjekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT05_InExkassoObj_InEx_03_HBS ADD CONSTRAINT KT05_InExkObj_InEx_03_HBS_PK PRIMARY KEY
	(FK_KT05_InExkassoObjekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT05_KT08_BBL ADD CONSTRAINT KT05_KT08_BBL_PK PRIMARY KEY
	(SK_KT05_KT08);

ALTER TABLE KT05_WE01_InExOVer_InEx_01_LBS ADD CONSTRAINT KT05_WE01_IEOVe_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT05_WE01_InExO_Vertrag,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Ver_BL_PK PRIMARY KEY
	(SK_KT05_WE01_InExO_Vertrag);

ALTER TABLE KT06_BelegPosSperr_InEx_01_WBM ADD CONSTRAINT KT06_BelegPosSp_InEx_01_WBM_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 Sperre_Id_A);

ALTER TABLE KT06_BelegPosition_InEx_03_WBS ADD CONSTRAINT KT06_BelegPos_InEx_03_WBS_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT06_KT08_BL ADD CONSTRAINT KT06_KT08_BL_PK PRIMARY KEY
	(SK_KT06_KT08);

ALTER TABLE KT06_KT08_InEx_01_LBS ADD CONSTRAINT KT06_KT08_InEx_01_LBS_PK PRIMARY KEY
	(SK_KT06_KT08,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT08_InkassoPos_InEx_01_HBS ADD CONSTRAINT KT08_InkassoPos_InEx_01_HBS_PK PRIMARY KEY
	(FK_KT08_InkassoPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT08_InkassoPosition_BH ADD CONSTRAINT KT08_InkassoPosition_PK PRIMARY KEY
	(SK_KT08_InkassoPosition);

ALTER TABLE KT08_KT09_BL ADD CONSTRAINT KT08_KT09_BL_PK PRIMARY KEY
	(SK_KT08_KT09);

ALTER TABLE KT08_KT09_InEx_01_LBS ADD CONSTRAINT KT08_KT09_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT08_KT09,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT09_Inkassierung_InEx_01_HBS ADD CONSTRAINT KT09_Inkassierung_InEx_01_HBS2 PRIMARY KEY
	(FK_KT09_Inkassierungsmassnahme,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT09_Inkassierungsmassnahme_BH ADD CONSTRAINT KT09_Inkassierungsmassn_BH_PK PRIMARY KEY
	(SK_KT09_Inkassierungsmassnahme);

ALTER TABLE KT12_Zahlstapel_InEx_01_HBS ADD CONSTRAINT KT12_Zahlstapel_InEx_01_PK PRIMARY KEY
	(FK_KT12_Zahlungsstapel,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT12_Zahlungsstapel_BH ADD CONSTRAINT KT12_Zahlungsstapel_BH_PK PRIMARY KEY
	(SK_KT12_Zahlungsstapel);

ALTER TABLE KT13_ZahlstapelPos_InEx_01_WBS ADD CONSTRAINT KT13_ZahlstapelPos_InEx_01_PK PRIMARY KEY
	(FK_KT13_ZahlstapelPos,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT13_ZahlstapelPos_KT12_BW ADD CONSTRAINT KT13_ZahlstapelPos_KT12_BW_PK PRIMARY KEY
	(SK_KT13_ZahlstapelPos);

ALTER TABLE PA01_PA02_KT01_BL ADD CONSTRAINT PA01_PA02_KT01_BL_PK PRIMARY KEY
	(SK_PA01_PA02_KT01);

ALTER TABLE PA01_PA02_KT01_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT01_InEx_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_KT01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_KT08_BL ADD CONSTRAINT PA01_PA02_KT08_BL_PK PRIMARY KEY
	(SK_PA01_PA02_KT08);

ALTER TABLE PA01_PA02_KT08_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT08_InEx_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_KT08,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_PA02_KT09_BL ADD CONSTRAINT PA01_PA02_KT09_BL_PK PRIMARY KEY
	(SK_PA01_PA02_KT09);

ALTER TABLE PA01_PA02_KT09_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT09_InEx_01_LBS_PK PRIMARY KEY
	(FK_PA01_PA02_KT09,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_Beleg_InEx_02_HBS ADD CONSTRAINT KT01_Beleg_InEx_02_HBS_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT08_BBL ADD CONSTRAINT KT01_KT08_BBL_KT01_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT08_BBL ADD CONSTRAINT KT01_KT08_BBL_KT08_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition);

ALTER TABLE KT01_KT09_Bel_Ink_InEx_01_LBS ADD CONSTRAINT KT01_KT09_Bel_Ink_InEx_01_FK FOREIGN KEY
	(FK_KT01_KT09_Bel_Inkasso)
	REFERENCES KT01_KT09_Bel_Inkasso_BL
	(SK_KT01_KT09_Bel_Inkasso);

ALTER TABLE KT01_KT09_Bel_Inkasso_BL ADD CONSTRAINT KT01_KT09_Bel_Ink_BL_KT01_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT09_Bel_Inkasso_BL ADD CONSTRAINT KT01_KT09_Bel_Ink_BL_KT09_FK FOREIGN KEY
	(FK_KT09_Inkassierungsmassnahme)
	REFERENCES KT09_Inkassierungsmassnahme_BH
	(SK_KT09_Inkassierungsmassnahme);

ALTER TABLE KT01_KT12_ZahlungsBeleg_BBL ADD CONSTRAINT KT01_KT12_ZahlBel_BBL_KT01_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT12_ZahlungsBeleg_BBL ADD CONSTRAINT KT01_KT12_ZahlBel_BBL_KT12_FK FOREIGN KEY
	(FK_KT12_Zahlungsstapel)
	REFERENCES KT12_Zahlungsstapel_BH
	(SK_KT12_Zahlungsstapel)
	ON DELETE RESTRICT;

ALTER TABLE KT01_KT13_ZahlStBl_InEx_01_LBS ADD CONSTRAINT  KT01_KT13_KK_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT01_KT13_Zahlstap_Beleg)
	REFERENCES KT01_KT13_Zahlstap_AusglBel_BL
	(SK_KT01_KT13_Zahlstap_Beleg);

ALTER TABLE KT01_KT13_Zahlstap_AusglBel_BL ADD CONSTRAINT KT01_KT13_KK_BL_KT01_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT13_Zahlstap_AusglBel_BL ADD CONSTRAINT KT01_KT13_KK_BL_KT13_FK FOREIGN KEY
	(FK_KT13_ZahlStapelPos)
	REFERENCES KT13_ZahlstapelPos_KT12_BW
	(SK_KT13_ZahlstapelPos);

ALTER TABLE KT02_KT04_BL ADD CONSTRAINT KT02_KT04_BL_KT02_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_KT04_BL ADD CONSTRAINT KT02_KT04_BL_KT04_FK FOREIGN KEY
	(FK_KT04_Ueberwachung)
	REFERENCES KT04_Ueberwachung_BH
	(SK_KT04_Ueberwachung);

ALTER TABLE KT02_KT04_InEx_01_LBS ADD CONSTRAINT KT02_KT04_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT02_KT04)
	REFERENCES KT02_KT04_BL
	(SK_KT02_KT04);

ALTER TABLE KT02_KT08_BBL ADD CONSTRAINT KT02_KT08_BBL_KT02_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_KT08_BBL ADD CONSTRAINT KT02_KT08_BBL_KT08_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition);

ALTER TABLE KT02_KT09_BL ADD CONSTRAINT KT02_KT09_BL_KT02_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_KT09_BL ADD CONSTRAINT KT02_KT09_BL_KT09_FK FOREIGN KEY
	(FK_KT09_Inkassierungsmassnahme)
	REFERENCES KT09_Inkassierungsmassnahme_BH
	(SK_KT09_Inkassierungsmassnahme);

ALTER TABLE KT02_KT09_InEx_01_LBS ADD CONSTRAINT KT02_KT09_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT02_KT09)
	REFERENCES KT02_KT09_BL
	(SK_KT02_KT09);

ALTER TABLE KT02_VKSperre_InEx_01_HBM ADD CONSTRAINT KT02_VKSperre_InEx_01_HBM_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT04_KT05_BL ADD CONSTRAINT KT04_KT05_BL_KT04_FK FOREIGN KEY
	(FK_KT04_Ueberwachung)
	REFERENCES KT04_Ueberwachung_BH
	(SK_KT04_Ueberwachung);

ALTER TABLE KT04_KT05_BL ADD CONSTRAINT KT04_KT05_BL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT04_KT05_InEx_01_LBS ADD CONSTRAINT KT04_KT05_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT04_KT05)
	REFERENCES KT04_KT05_BL
	(SK_KT04_KT05);

ALTER TABLE KT04_KT06_BL ADD CONSTRAINT KT04_KT06_BL_KT04_FK FOREIGN KEY
	(FK_KT04_Ueberwachung)
	REFERENCES KT04_Ueberwachung_BH
	(SK_KT04_Ueberwachung);

ALTER TABLE KT04_KT06_BL ADD CONSTRAINT KT04_KT06_BL_KT06_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT04_KT06_InEx_01_LBS ADD CONSTRAINT KT04_KT06_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT04_KT06)
	REFERENCES KT04_KT06_BL
	(SK_KT04_KT06);

ALTER TABLE KT04_Ueberwachung_InEx_01_HBM ADD CONSTRAINT KT04_Ueberwachung_InEx_01_HBM2 FOREIGN KEY
	(FK_KT04_Ueberwachung)
	REFERENCES KT04_Ueberwachung_BH
	(SK_KT04_Ueberwachung);

ALTER TABLE KT05_ER01_InExOSch_InEx_01_LBS ADD CONSTRAINT KT05_ER01_IEOSc_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT05_ER01_InExO_Schaden)
	REFERENCES KT05_ER01_InExO_Schaden_BL
	(SK_KT05_ER01_InExO_Schaden)
	ON DELETE CASCADE;

ALTER TABLE KT05_IEOSperre_InEx_01_HBM ADD CONSTRAINT KT05_IEOSperre_InEx_01_HBM_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_InExkassoObj_InEx_02_HBS ADD CONSTRAINT KT05_InExkObj_InEx_02_HBS_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_InExkassoObj_InEx_03_HBS ADD CONSTRAINT KT05_InExkObj_InEx_03_HBS_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_KT08_BBL ADD CONSTRAINT KT05_KT08_BBL_FK_KT08_IDX FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition);

ALTER TABLE KT05_KT08_BBL ADD CONSTRAINT KT05_KT08_BBL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_WE01_InExOVer_InEx_01_LBS ADD CONSTRAINT KT05_WE01_IEOVe_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT05_WE01_InExO_Vertrag)
	REFERENCES KT05_WE01_InExO_Vertrag_BL
	(SK_KT05_WE01_InExO_Vertrag)
	ON DELETE CASCADE;

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Ver_BL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Vertrag_BL FOREIGN KEY
	(FK_WE01_Willenserklaerung)
	REFERENCES WE01_Willenserklaerung_BH
	(SK_WE01_Willenserklaerung);

ALTER TABLE KT06_BelegPosSperr_InEx_01_WBM ADD CONSTRAINT KT06_BelegPosSp_InEx_01_WBM_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_BelegPosition_InEx_03_WBS ADD CONSTRAINT KT06_BelegPos_InEx_03_WBS_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_KT08_BL ADD CONSTRAINT KT06_KT08_BL_BelegPositio_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_KT08_BL ADD CONSTRAINT KT06_KT08_BL_InkassoPos_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition);

ALTER TABLE KT06_KT08_InEx_01_LBS ADD CONSTRAINT KT06_KT08_InEx_01_LBS_FK FOREIGN KEY
	(SK_KT06_KT08)
	REFERENCES KT06_KT08_BL
	(SK_KT06_KT08);

ALTER TABLE KT08_InkassoPos_InEx_01_HBS ADD CONSTRAINT KT08_InkassoPos_InEx_01_HBS_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition);

ALTER TABLE KT08_KT09_BL ADD CONSTRAINT KT08_KT09_BL_KT08_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition)
	ON DELETE CASCADE;

ALTER TABLE KT08_KT09_BL ADD CONSTRAINT KT08_KT09_BL_KT09_FK FOREIGN KEY
	(FK_KT09_Inkassierungsmassnahme)
	REFERENCES KT09_Inkassierungsmassnahme_BH
	(SK_KT09_Inkassierungsmassnahme)
	ON DELETE CASCADE;

ALTER TABLE KT08_KT09_InEx_01_LBS ADD CONSTRAINT KT08_KT09_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT08_KT09)
	REFERENCES KT08_KT09_BL
	(SK_KT08_KT09)
	ON DELETE CASCADE;

ALTER TABLE KT09_Inkassierung_InEx_01_HBS ADD CONSTRAINT KT09_Inkassierung_InEx_01_HBS1 FOREIGN KEY
	(FK_KT09_Inkassierungsmassnahme)
	REFERENCES KT09_Inkassierungsmassnahme_BH
	(SK_KT09_Inkassierungsmassnahme);

ALTER TABLE KT12_Zahlstapel_InEx_01_HBS ADD CONSTRAINT KT12_Zahlstapel_InEx_01_FK FOREIGN KEY
	(FK_KT12_Zahlungsstapel)
	REFERENCES KT12_Zahlungsstapel_BH
	(SK_KT12_Zahlungsstapel);

ALTER TABLE KT13_ZahlstapelPos_InEx_01_WBS ADD CONSTRAINT KT13_ZahlstapelPos_InEx_01_FK FOREIGN KEY
	(FK_KT13_ZahlstapelPos)
	REFERENCES KT13_ZahlstapelPos_KT12_BW
	(SK_KT13_ZahlstapelPos);

ALTER TABLE KT13_ZahlstapelPos_KT12_BW ADD CONSTRAINT KT13_ZahlstapelPos_KT12_BW_FK FOREIGN KEY
	(FK_KT12_Zahlungsstapel)
	REFERENCES KT12_Zahlungsstapel_BH
	(SK_KT12_Zahlungsstapel);

ALTER TABLE PA01_PA02_KT01_BL ADD CONSTRAINT PA01_PA02_KT01_BL_Beleg_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE PA01_PA02_KT01_BL ADD CONSTRAINT PA01_PA02_KT01_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_KT01_BL ADD CONSTRAINT PA01_PA02_KT01_BL_Rolle_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_KT01_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT01_InEx_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_KT01)
	REFERENCES PA01_PA02_KT01_BL
	(SK_PA01_PA02_KT01);

ALTER TABLE PA01_PA02_KT08_BL ADD CONSTRAINT PA01_PA02_KT08_BL_PartnerRo_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_KT08_BL ADD CONSTRAINT PA01_PA02_KT08_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_KT08_BL ADD CONSTRAINT PA01_PA02_KT08_InkassoPos_FK FOREIGN KEY
	(FK_KT08_InkassoPosition)
	REFERENCES KT08_InkassoPosition_BH
	(SK_KT08_InkassoPosition)
	ON DELETE CASCADE;

ALTER TABLE PA01_PA02_KT08_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT08_InEx_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_KT08)
	REFERENCES PA01_PA02_KT08_BL
	(SK_PA01_PA02_KT08);

ALTER TABLE PA01_PA02_KT09_BL ADD CONSTRAINT PA01_PA02_KT09_BL_Inkassier_FK FOREIGN KEY
	(FK_KT09_Inkassierungsmassnahme)
	REFERENCES KT09_Inkassierungsmassnahme_BH
	(SK_KT09_Inkassierungsmassnahme);

ALTER TABLE PA01_PA02_KT09_BL ADD CONSTRAINT PA01_PA02_KT09_BL_PartnerRo_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_KT09_BL ADD CONSTRAINT PA01_PA02_KT09_BL_Partner_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_KT09_InEx_01_LBS ADD CONSTRAINT PA01_PA02_KT09_InEx_01_LBS_FK FOREIGN KEY
	(FK_PA01_PA02_KT09)
	REFERENCES PA01_PA02_KT09_BL
	(SK_PA01_PA02_KT09);

