--<ScriptOptions statementTerminator=";"/>
-- Version 19573

CREATE TABLE PA01_Partner_Par_01_HBS (
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
		Pruefziffer VARCHAR2(8 CHAR),
		C_SchutzKennzeichen_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE PA01_Partner_Par_01_HBS ADD CONSTRAINT PA01_Partner_DWH_01_HBS_PK PRIMARY KEY
	(FK_PA01_Partner,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE PA01_Partner_Par_01_HBS ADD CONSTRAINT PA01_Partner_DWH_01_HBS_FK FOREIGN KEY
	(FK_PA01_Partner)
	REFERENCES PA01_Partner_BH
	(SK_PA01_Partner);

