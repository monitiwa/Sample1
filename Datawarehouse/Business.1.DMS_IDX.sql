--<ScriptOptions statementTerminator=";"/>
-- Version 11254

CREATE INDEX GP03_DMS_01_HBS_Hist_IDX
	ON GP03_Gevo_DMS_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GP03_Geschaeftsvorgang		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_GP04_BL_FK_GP03
	ON GP03_GP04_BL
	(FK_GP03_Geschaeftsvorgang		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_GP04_BL_FK_GP04
	ON GP03_GP04_BL
	(FK_GP04_Taetigkeit		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_GP04_BL_Ladat_I
	ON GP03_GP04_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF01_Ausl_BL_FK_GP03_IDX
	ON GP03_IF01_Ausloeser_BL
	(FK_GP03_Geschaeftsvorgang		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF01_Ausl_BL_FK_IF01_IDX
	ON GP03_IF01_Ausloeser_BL
	(FK_IF01_Dokument		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF01_Ausl_BL_TA_Ladat_IDX
	ON GP03_IF01_Ausloeser_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF02_BL_FK_GP05_IDX
	ON GP03_IF02_BL
	(FK_GP03_Geschaeftsvorgang		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF02_BL_FK_IF02_IDX
	ON GP03_IF02_BL
	(FK_IF02_Scanstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_IF02_BL_Ladat_IDX
	ON GP03_IF02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_WE01_BL_FK_GP03_IDX
	ON GP03_WE01_BL
	(FK_GP03_Geschaeftsvorgang		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_WE01_BL_FK_WE01_IDX
	ON GP03_WE01_BL
	(FK_WE01_Willenserklaerung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP03_WE01_BL_TA_Ladat_IDX
	ON GP03_WE01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GP04_Taetigkeit_DMS_01_HBS_Hi
	ON GP04_Taetigkeit_DMS_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GP04_Taetigkeit		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX IF01_DMS_01_HBS_Hist_IDX
	ON IF02_Scanstapel_DMS_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_IF02_Scanstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX IF01_Dokument_DMS_01_HBS_Hist
	ON IF01_Dokument_DMS_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_IF01_Dokument		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX IF01_IF02_BL_FK_IF01
	ON IF01_IF02_BL
	(FK_IF01_Dokument		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX IF01_IF02_BL_FK_IF02
	ON IF01_IF02_BL
	(FK_IF02_Scanstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX IF01_IF02_BL_Ladat_I
	ON IF01_IF02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE01_WE_DMS_HBS_Hist_IDX
	ON WE01_WE_DMS_01_HBS
	(TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_WE01_Willenserklaerung		ASC)
	PCTFREE 0
	LOGGING;

