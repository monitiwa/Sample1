--<ScriptOptions statementTerminator=";"/>
-- Version 16981

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
		C_BelegHerkunft NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT01_Rueckl_InEx_01_LBS (
		FK_KT01_KT01_Ruecklaeufer VARCHAR2(64 CHAR) NOT NULL,
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
		RuecklaeuferStapel VARCHAR2(24 CHAR),
		StapelPos_lfd VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT01_Ruecklaeufer_BL (
		SK_KT01_KT01_Ruecklaeufer VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg_P VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT06_Ausgl_InEx_02_LBS (
		FK_KT01_KT06_Ausgleich VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT01_KT10_Zahllauf_AusglBel_BL (
		SK_KT01_KT10_Zahllauf_AusglBel VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT10_ZahllaufZahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT05_BL (
		SK_KT02_KT05 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		QF_INSOBJECT_quellintern VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_KT05_InEx_01_LBS (
		FK_KT02_KT05 VARCHAR2(64 CHAR) NOT NULL,
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

CREATE TABLE KT02_KT06_BL (
		SK_KT02_KT06 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_Partner_VK_InEx_01_HBS (
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
		Mandant VARCHAR2(8 CHAR),
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		C_Eingangszahlweg NUMBER(28 , 0),
		angelegt_am DATE,
		geaendert_am DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_Vertragskonto_BH (
		SK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT02_Vertragskonto_InEx_01_HBS (
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
		Mandant VARCHAR2(8 CHAR),
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		C_Vertragskontotyp NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT03_Zahlplanpos_InEx_01_WBS (
		FK_KT03_Zahlplanposition VARCHAR2(64 CHAR) NOT NULL,
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
		POB_A VARCHAR2(64 CHAR),
		InExkassoObjektNr_A VARCHAR2(64 CHAR),
		ZPPosition VARCHAR2(24 CHAR),
		ZPPosition_Zusatz VARCHAR2(24 CHAR),
		angelegt_am DATE,
		geaendert_am DATE,
		FachlicherBeginn DATE,
		C_Einmalzahlung NUMBER(28 , 0),
		gueltig_von DATE,
		gueltig_bis DATE,
		Betrag NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		ZW_InEx_Beginn DATE,
		C_Archivierung NUMBER(28 , 0),
		vorzeitigBeenden DATE,
		C_Hauptvorgang NUMBER(28 , 0),
		C_Teilvorgang NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT03_Zahlplanposition_KT05_BW (
		SK_KT03_Zahlplanposition VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_ER01_InExO_Schaden_BL (
		SK_KT05_ER01_InExO_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_InExkassoObj_InEx_01_HBS (
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
		C_InExkassoObjektTyp NUMBER(28 , 0),
		POB_A VARCHAR2(64 CHAR),
		C_Zahlweise_vertraglich NUMBER(28 , 0),
		C_StatusInkassoObjekt NUMBER(28 , 0),
		C_Lieferung_faelligkeitsbez NUMBER(28 , 0),
		angelegt_am DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_InExkassoObjekt_BH (
		SK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT05_KT06_BL (
		SK_KT05_KT06 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT05_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
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

CREATE TABLE KT06_BelPos_Ausgl_InEx_01_WBS (
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
		AusgleichsbelegNr_A VARCHAR2(64 CHAR),
		C_Ausgleichsstatus NUMBER(28 , 0),
		C_Ausgleichsgrund NUMBER(28 , 0),
		C_zurueckgenommen NUMBER(28 , 0),
		Ausgleichsbuchungsdatum DATE,
		Ausgleichsbetrag NUMBER(16 , 2),
		C_Ausgleichswaehrung NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_BelegPosition_InEx_02_WBS (
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
		C_Buchungskreis NUMBER(28 , 0),
		C_Hauptvorgang NUMBER(28 , 0),
		C_Teilvorgang NUMBER(28 , 0),
		BetragInEuro NUMBER(16 , 2),
		C_InEx_Produktgruppe NUMBER(28 , 0),
		C_ArtGerichtlicheMahn_B NUMBER(28 , 0),
		C_AbschlussGerichtlMahn_B NUMBER(28 , 0),
		C_Steuerkennzeichen NUMBER(28 , 0),
		SteuerInEuro NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_KT10_Regul_InEx_01_LBS (
		FK_KT06_KT10_Regulierung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Postenkennzeichen_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_KT10_Regulierung_BL (
		SK_KT06_KT10_Regulierung VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		FK_KT10_ZahllaufZahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT10_ZahllaufZahl_InEx_01_HBS (
		FK_KT10_ZahllaufZahlung VARCHAR2(64 CHAR) NOT NULL,
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
		Laufdatum DATE,
		Laufkennung VARCHAR2(24 CHAR),
		Zahlung_lfd VARCHAR2(24 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT10_ZahllaufZahlung_BH (
		SK_KT10_ZahllaufZahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE PA01_PA02_KT02_BL (
		SK_PA01_PA02_KT02 VARCHAR2(64 CHAR) NOT NULL,
		FK_PA01_Partner VARCHAR2(64 CHAR) NOT NULL,
		FK_PA02_PartnerRolle VARCHAR2(64 CHAR) NOT NULL,
		FK_KT02_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE KT01_Beleg_InEx_02_HBS ADD CONSTRAINT KT01_Beleg_InEx_02_HBS_PK PRIMARY KEY
	(FK_KT01_Beleg,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT01_Rueckl_InEx_01_LBS ADD CONSTRAINT KT01_KT01_Ruecl_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT01_KT01_Ruecklaeufer,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT01_Ruecklaeufer_BL ADD CONSTRAINT KT01_KT01_Rueckl_BL_PK PRIMARY KEY
	(SK_KT01_KT01_Ruecklaeufer);

ALTER TABLE KT01_KT06_Ausgl_InEx_02_LBS ADD CONSTRAINT KT01_KT06_Ausgl_InEx_02_LBS_PK PRIMARY KEY
	(FK_KT01_KT06_Ausgleich,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT10_Zahllauf_AusglBel_BL ADD CONSTRAINT KT01_KT10_Ausg_BL_PK PRIMARY KEY
	(SK_KT01_KT10_Zahllauf_AusglBel);

ALTER TABLE KT02_KT05_BL ADD CONSTRAINT KT02_KT05_BL_PK PRIMARY KEY
	(SK_KT02_KT05);

ALTER TABLE KT02_KT05_InEx_01_LBS ADD CONSTRAINT KT02_KT05_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT02_KT05,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT02_KT06_BL ADD CONSTRAINT KT02_KT06_BL_PK PRIMARY KEY
	(SK_KT02_KT06);

ALTER TABLE KT02_Partner_VK_InEx_01_HBS ADD CONSTRAINT KT02_Partner_VK_InEx_01_PK PRIMARY KEY
	(FK_KT02_Vertragskonto,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT02_Vertragskonto_BH ADD CONSTRAINT KT02_Vertragskonto_BH_PK PRIMARY KEY
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_Vertragskonto_InEx_01_HBS ADD CONSTRAINT KT02_Vertragskonto_InEx_01_HB3 PRIMARY KEY
	(FK_KT02_Vertragskonto,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT03_Zahlplanpos_InEx_01_WBS ADD CONSTRAINT KT03_Zahlplanp_InEx_01_WBS_PK PRIMARY KEY
	(FK_KT03_Zahlplanposition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT03_Zahlplanposition_KT05_BW ADD CONSTRAINT KT03_Zahlplanpos_KT05_BW_PK PRIMARY KEY
	(SK_KT03_Zahlplanposition);

ALTER TABLE KT05_ER01_InExO_Schaden_BL ADD CONSTRAINT KT05_ER01_InExO_Scha_BL_PK PRIMARY KEY
	(SK_KT05_ER01_InExO_Schaden);

ALTER TABLE KT05_InExkassoObj_InEx_01_HBS ADD CONSTRAINT KT05_InExkObj_InEx_01_HBS_PK PRIMARY KEY
	(FK_KT05_InExkassoObjekt,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT05_InExkassoObjekt_BH ADD CONSTRAINT KT05_InExkassoObjekt_BH_PK PRIMARY KEY
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_KT06_BL ADD CONSTRAINT KT05_KT06_ZusRef_BL_PK PRIMARY KEY
	(SK_KT05_KT06);

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Ver_BL_PK PRIMARY KEY
	(SK_KT05_WE01_InExO_Vertrag);

ALTER TABLE KT06_BelPos_Ausgl_InEx_01_WBS ADD CONSTRAINT KT06_BP_Ausgl_IE_01_LBS_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT06_BelegPosition_InEx_02_WBS ADD CONSTRAINT KT06_BelegPos_InEx_02_WBS_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT06_KT10_Regul_InEx_01_LBS ADD CONSTRAINT KT06_KT10_Reg_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT06_KT10_Regulierung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT06_KT10_Regulierung_BL ADD CONSTRAINT KT01_KT10_Reg_BL_PK PRIMARY KEY
	(SK_KT06_KT10_Regulierung);

ALTER TABLE KT10_ZahllaufZahl_InEx_01_HBS ADD CONSTRAINT KT10_ZahllaufZa_InEx_01_HBS_PK PRIMARY KEY
	(FK_KT10_ZahllaufZahlung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT10_ZahllaufZahlung_BH ADD CONSTRAINT KT10_ZahllaufZahlung_BH_PK PRIMARY KEY
	(SK_KT10_ZahllaufZahlung);

ALTER TABLE PA01_PA02_KT02_BL ADD CONSTRAINT PA01_PA02_KT02_BL_PK PRIMARY KEY
	(SK_PA01_PA02_KT02);

ALTER TABLE KT01_Beleg_InEx_02_HBS ADD CONSTRAINT KT01_Beleg_InEx_02_HBS_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT01_Rueckl_InEx_01_LBS ADD CONSTRAINT KT01_KT01_Ruecl_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT01_KT01_Ruecklaeufer)
	REFERENCES KT01_KT01_Ruecklaeufer_BL
	(SK_KT01_KT01_Ruecklaeufer);

ALTER TABLE KT01_KT01_Ruecklaeufer_BL ADD CONSTRAINT KT01_KT01_Rueckl_BL_Beleg_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT01_Ruecklaeufer_BL ADD CONSTRAINT KT01_KT01_Rueckl_BL_Beleg_P_FK FOREIGN KEY
	(FK_KT01_Beleg_P)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT06_Ausgl_InEx_02_LBS ADD CONSTRAINT KT01_KT06_Ausgl_InEx_02_LBS_FK FOREIGN KEY
	(FK_KT01_KT06_Ausgleich)
	REFERENCES KT01_KT06_Ausgleich_BL
	(SK_KT01_KT06_Ausgleich);

ALTER TABLE KT01_KT10_Zahllauf_AusglBel_BL ADD CONSTRAINT KT01_KT10_Ausg_BL_Beleg_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT10_Zahllauf_AusglBel_BL ADD CONSTRAINT KT01_KT10_Ausg_BL_ZahllaufZ_FK FOREIGN KEY
	(FK_KT10_ZahllaufZahlung)
	REFERENCES KT10_ZahllaufZahlung_BH
	(SK_KT10_ZahllaufZahlung);

ALTER TABLE KT02_KT05_BL ADD CONSTRAINT KT02_KT05_BL_KT02_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_KT05_BL ADD CONSTRAINT KT02_KT05_BL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT02_KT05_InEx_01_LBS ADD CONSTRAINT KT02_KT05_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT02_KT05)
	REFERENCES KT02_KT05_BL
	(SK_KT02_KT05);

ALTER TABLE KT02_KT06_BL ADD CONSTRAINT KT02_KT06_BL_KT02_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_KT06_BL ADD CONSTRAINT KT02_KT06_BL_KT06_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT02_Partner_VK_InEx_01_HBS ADD CONSTRAINT KT02_Partner_VK_InEx_01_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT02_Vertragskonto_InEx_01_HBS ADD CONSTRAINT KT02_Vertragskonto_InEx_01_HB4 FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

ALTER TABLE KT03_Zahlplanpos_InEx_01_WBS ADD CONSTRAINT KT03_Zahlplanp_InEx_01_WBS_FK FOREIGN KEY
	(FK_KT03_Zahlplanposition)
	REFERENCES KT03_Zahlplanposition_KT05_BW
	(SK_KT03_Zahlplanposition);

ALTER TABLE KT03_Zahlplanposition_KT05_BW ADD CONSTRAINT KT03_Zahlplanpos_KT05_BW_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_ER01_InExO_Schaden_BL ADD CONSTRAINT KT05_ER01_BL_InkassObjekt_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_ER01_InExO_Schaden_BL ADD CONSTRAINT KT05_ER01_BL_Schaden_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE KT05_InExkassoObj_InEx_01_HBS ADD CONSTRAINT KT05_InExkObj_InEx_01_HBS_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_KT06_BL ADD CONSTRAINT KT05_KT06_ZusRef_BL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_KT06_BL ADD CONSTRAINT KT05_KT06_ZusRef_BL_KT06_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Ver_BL_KT05_FK FOREIGN KEY
	(FK_KT05_InExkassoObjekt)
	REFERENCES KT05_InExkassoObjekt_BH
	(SK_KT05_InExkassoObjekt);

ALTER TABLE KT05_WE01_InExO_Vertrag_BL ADD CONSTRAINT KT05_WE01_InExO_Vertrag_BL FOREIGN KEY
	(FK_WE01_Willenserklaerung)
	REFERENCES WE01_Willenserklaerung_BH
	(SK_WE01_Willenserklaerung);

ALTER TABLE KT06_BelPos_Ausgl_InEx_01_WBS ADD CONSTRAINT KT06_BP_Ausgl_IE_01_LBS_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_BelegPosition_InEx_02_WBS ADD CONSTRAINT KT06_BelegPos_InEx_02_WBS_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_KT10_Regul_InEx_01_LBS ADD CONSTRAINT KT06_KT10_Reg_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT06_KT10_Regulierung)
	REFERENCES KT06_KT10_Regulierung_BL
	(SK_KT06_KT10_Regulierung);

ALTER TABLE KT06_KT10_Regulierung_BL ADD CONSTRAINT KT06_KT10_Reg_BL_KT06_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_KT10_Regulierung_BL ADD CONSTRAINT KT06_KT10_Reg_BL_KT10_FK FOREIGN KEY
	(FK_KT10_ZahllaufZahlung)
	REFERENCES KT10_ZahllaufZahlung_BH
	(SK_KT10_ZahllaufZahlung);

ALTER TABLE KT10_ZahllaufZahl_InEx_01_HBS ADD CONSTRAINT KT10_ZahllaufZa_InEx_01_HBS_FK FOREIGN KEY
	(FK_KT10_ZahllaufZahlung)
	REFERENCES KT10_ZahllaufZahlung_BH
	(SK_KT10_ZahllaufZahlung);

ALTER TABLE PA01_PA02_KT02_BL ADD CONSTRAINT PA01_PA02_KT02_BL_PartRo_FK FOREIGN KEY
	(FK_PA02_PartnerRolle)
	REFERENCES PA02_PartnerRolle_BH
	(SK_PA02_PartnerRolle);

ALTER TABLE PA01_PA02_KT02_BL ADD CONSTRAINT PA01_PA02_KT02_BL_Partn_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

ALTER TABLE PA01_PA02_KT02_BL ADD CONSTRAINT PA01_PA02_KT02_BL_VertK_FK FOREIGN KEY
	(FK_KT02_Vertragskonto)
	REFERENCES KT02_Vertragskonto_BH
	(SK_KT02_Vertragskonto);

