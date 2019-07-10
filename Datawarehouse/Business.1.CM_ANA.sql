--<ScriptOptions statementTerminator=";"/>
-- Version 9140

CREATE TABLE ER04_GerInstanz_DWH_01_WBS (
		FK_ER04_Gerichtsinstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Instanznummer_lfd VARCHAR2(8 CHAR),
		Instanz_Endejahr VARCHAR2(8 CHAR),
		Instanz_Anfangsjahr VARCHAR2(8 CHAR),
		Laufzeit_Beginn NUMBER(16 , 8),
		Laufzeit NUMBER(16 , 8)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE ER04_GerInstanz_DWH_01_WBS ADD CONSTRAINT ER04_GerInstanz_DWH_01_WBS_PK PRIMARY KEY
	(FK_ER04_Gerichtsinstanz,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER04_GerInstanz_DWH_01_WBS ADD CONSTRAINT ER04_GerInstanz_DWH_01_WBS_FK FOREIGN KEY
	(FK_ER04_Gerichtsinstanz)
	REFERENCES ER04_Gerichtsinstanz_ER03_BW
	(SK_ER04_Gerichtsinstanz);

