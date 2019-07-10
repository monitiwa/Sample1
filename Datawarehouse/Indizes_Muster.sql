--<ScriptOptions statementTerminator=";"/>

CREATE INDEX AR01_AR02_ARC_01_LBM_Hist_IDX
	ON AR01_AR02_ARC_01_LBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_AR01_AR02		ASC,
	  Diskriminator		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_ARC_01_LBS_Hist_IDX
	ON AR01_AR02_ARC_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_AR01_AR02		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_BL_FK_AR01_IDX
	ON AR01_AR02_BL
	(FK_AR01_Bezeichnung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_BL_FK_AR02_IDX
	ON AR01_AR02_BL
	(FK_AR02_Nummer		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_BL_oS_FK_AR01_IDX
	ON AR01_AR02_ohne_Sat_BL
	(FK_AR01_Bezeichnung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_BL_oS_FK_AR02_IDX
	ON AR01_AR02_ohne_Sat_BL
	(FK_AR02_Nummer		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_AR02_BL_oS_FK_Ladat_IDX
	ON AR01_AR02_ohne_Sat_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR01_ARC_01_HBS_Hist_IDX
	ON AR01_Bezeichnung_ARC_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_AR01_Bezeichnung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR02_ARC_01_HBS_Hist_IDX
	ON AR02_Nummer_ARC_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_AR02_Nummer		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR03_ARC_01_WBS_Hist_IDX
	ON AR03_Teilbezeichn_ARC_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_AR03_Teilbezeichnung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR03_Teilbezeichn_AR01_BW_IDX
	ON AR03_Teilbezeichnung_AR01_BW
	(FK_AR01_Bezeichnung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX AR03_Teilbezeichn_TA_Ladat_IDX
	ON AR03_Teilbezeichnung_AR01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

