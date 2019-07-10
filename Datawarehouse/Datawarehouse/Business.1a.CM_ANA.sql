--<ScriptOptions statementTerminator=";"/>
-- Version 8362

CREATE TABLE ER02_Teilschaden_DWH_02_WBS (
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
		Teilsch_Zahlungen_saldiert NUMBER(16 , 2),
		Teilsch_Rueckst_rein_Entsch NUMBER(16 , 2),
		Teilsch_Rueckst_rein_Rente NUMBER(16 , 2),
		Teilsch_Rueckst_rein_SRK NUMBER(16 , 2),
		Teilsch_Rueckst_rein NUMBER(16 , 2),
		Teilsch_Zahlung_rein_Entsch NUMBER(16 , 2),
		Teilsch_Zahlung_rein_Rente NUMBER(16 , 2),
		Teilsch_Zahlung_rein_SRK NUMBER(16 , 2),
		Teilsch_Zahlung_rein NUMBER(16 , 2),
		Durchlaufzeit_1_Zahlung_B VARCHAR2(64 CHAR),
		Erstrueckstellung_Entsch NUMBER(16 , 2),
		Erstrueckstellung_Rente NUMBER(16 , 2),
		Erstrueckstellung_SRK NUMBER(16 , 2),
		AnzahlGerichtsverfahren NUMBER(10 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE ER02_Teilschaden_DWH_02_WBS ADD CONSTRAINT ER02_DWH_02_WBS_PK PRIMARY KEY
	(FK_ER02_Teilschaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER02_Teilschaden_DWH_02_WBS ADD CONSTRAINT ER02_DWH_02_WBS_FK FOREIGN KEY
	(FK_ER02_Teilschaden)
	REFERENCES ER02_Teilschaden_ER01_BW
	(SK_ER02_Teilschaden)
	ON DELETE CASCADE;

