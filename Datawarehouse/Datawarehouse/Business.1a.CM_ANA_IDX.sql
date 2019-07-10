--<ScriptOptions statementTerminator=";"/>
-- Version 8362

CREATE INDEX ER02_DWH_02_WBS_Hist_IDX
	ON ER02_Teilschaden_DWH_02_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

