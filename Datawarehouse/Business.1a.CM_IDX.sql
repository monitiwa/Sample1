--<ScriptOptions statementTerminator=";"/>
-- Version 8362

CREATE INDEX ER01_ER03_Kundenpr_FK_ER01_IDX
	ON ER01_ER03_Kundenprozess_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER03_Kundenpr_FK_ER03_IDX
	ON ER01_ER03_Kundenprozess_BL
	(FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER03_Kundenpr_Ladat_IDX
	ON ER01_ER03_Kundenprozess_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_SHUKR_02_HBS_Hist_IDX
	ON ER01_Schaden_SHUKR_02_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_GerVerf_Sch_R_01_HBS_Hi
	ON ER03_GerVerf_Schaden_R_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

