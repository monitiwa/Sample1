--<ScriptOptions statementTerminator=";"/>
-- Version 19709

CREATE INDEX KT06_BelPosLPro_InEx_01_WBM_Hi
	ON KT06_BePoLaufProg_InEx_01_WBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC,
	  DatumZahllauf		ASC)
	PCTFREE 0
	LOGGING;

