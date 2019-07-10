--<ScriptOptions statementTerminator=";"/>
-- Modellversion 13555

CREATE TABLE GP04_Taetigkeit_DMS_DWH_01_HBS (
		FK_GP04_Taetigkeit VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Geschaeftsvorgang_ID_A VARCHAR2(64 CHAR),
		Taetigkeit_lfd VARCHAR2(10 CHAR),
		Sortierung_Taetigkeit_lfd NUMBER(10 , 0),
		C_zugestellt NUMBER(28 , 0),
		C_erstmals_zugestellt NUMBER(28 , 0),
		Clearing_Beginn DATE,
		Clearing_Ende DATE,
		erstmals_zugestellt_am DATE,
		Taetigkeitsdatum_Beginn DATE,
		Naechste_Taetigkeit_Beginn DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE GP04_Taetigkeit_DMS_DWH_01_HBS ADD CONSTRAINT GP04_Taetigkeit_DMS_DWH_01_PK PRIMARY KEY
	(FK_GP04_Taetigkeit,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GP04_Taetigkeit_DMS_DWH_01_HBS ADD CONSTRAINT GP04_Taetigkeit_DMS_DWH_01_FK FOREIGN KEY
	(FK_GP04_Taetigkeit)
	REFERENCES GP04_Taetigkeit_BH
	(SK_GP04_Taetigkeit);

