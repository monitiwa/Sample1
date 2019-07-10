--<ScriptOptions statementTerminator=";"/>
-- Modellversion 13555

CREATE INDEX GP04_Taetigkeit_DMS_DWH_01_Hi
	ON GP04_Taetigkeit_DMS_DWH_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GP04_Taetigkeit		ASC)
	PCTFREE 0
	LOGGING;

