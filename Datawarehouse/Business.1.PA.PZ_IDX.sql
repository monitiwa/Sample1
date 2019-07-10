--<ScriptOptions statementTerminator=";"/>
-- Version 19573

CREATE INDEX PA01_Partner_DWH_01_HBS_Hist_I
	ON PA01_Partner_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

