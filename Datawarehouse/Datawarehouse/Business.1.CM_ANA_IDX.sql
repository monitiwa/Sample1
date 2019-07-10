--<ScriptOptions statementTerminator=";"/>
-- Version 9136

CREATE INDEX ER04_GerInstanz_DWH_01_WBS_Hi
	ON ER04_GerInstanz_DWH_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER04_Gerichtsinstanz		ASC)
	PCTFREE 0
	LOGGING;

