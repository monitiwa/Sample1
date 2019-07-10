--<ScriptOptions statementTerminator=";"/>
-- Version 9488

CREATE INDEX ER01ER0ER03_SHUKR_01_LBS_H_I
	ON ER01_ER02_ER03_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_ER02_ER03		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01OB01beOb_SHUKR_01_LBM_Hi_I
	ON ER01_OB01_bescObj_SHUKR_01_LBM
	(TA_Ersatzdatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01OB01beOb_SHUKR_01_LBS_Hi_I
	ON ER01_OB01_bescObj_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_OB01_beschObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_ER03_BL_FK_ER01_IDX
	ON ER01_ER02_ER03_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_ER03_BL_FK_ER02_IDX
	ON ER01_ER02_ER03_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_ER03_BL_FK_ER03_IDX
	ON ER01_ER02_ER03_BL
	(FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_ER03_BL_TA_Ladat_IDX
	ON ER01_ER02_ER03_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_Eskalat_R_01_HBS_Hist_IDX
	ON ER01_Schaden_Eskalat_R_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PA02_VNRolle_BL_FK_ER01_I
	ON ER01_PA02_VNRolle_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PA02_VNRolle_BL_FK_PA02_I
	ON ER01_PA02_VNRolle_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PA02_VNRolle_BL_Ladat_IDX
	ON ER01_PA02_VNRolle_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_SHUKR_02_WBS_Hist_IDX
	ON ER02_Teilschaden_SHUKR_02_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_GerVerf_SHUKR_01_HBS_Hi
	ON ER03_GerVerf_eig_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_LE03_BL_FK_ER03_IDX
	ON ER03_LE03_BL
	(FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_LE03_BL_FK_LE03_IDX
	ON ER03_LE03_BL
	(FK_LE03_Regress		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_LE03_BL_TA_Ladat_IDX
	ON ER03_LE03_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_LE03_SHUKR_01_LBS_His_IDX
	ON ER03_LE03_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER03_LE03		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER04_Gerichtsinstanz_ER03_IDX
	ON ER04_Gerichtsinstanz_ER03_BW
	(FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER04_Ins_SHUKR_01_LBS_Hist_IDX
	ON ER04_GerInstanz_SHUKR_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER04_Gerichtsinstanz		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_KT01_Bel_SHUKR_01_LBS_His
	ON LE01_KT01_Beleg_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_KT01_Beleg_BL		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_LE03_SHUKR_01_LBS_His_IDX
	ON LE01_LE03_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_LE03		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_ZahlZuf_SHUKR_01_HBS_Hist
	ON LE01_ZahlungZuf_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_Zahlung_SHUKR_02_HBS_Hist
	ON LE01_Zahlung_SHUKR_02_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX OB01_Objekt_Sch_01_HBS_Hist_I
	ON OB01_Objekt_Sch_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_OB01_Objekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_SHUKR_01_LBM_Hi
	ON PA01_PA02_ER01_SHUKR_01_LBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_SHUKR_02_LBS_Hi
	ON PA01_PA02_ER01_SHUKR_02_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER04_BL_FK_ER04_IDX
	ON PA01_PA02_ER04_BL
	(FK_ER04_Gerichtsinstanz		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER04_BL_FK_PA01_IDX
	ON PA01_PA02_ER04_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER04_BL_FK_PA02_IDX
	ON PA01_PA02_ER04_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER04_BL_TA_Ladat_IDX
	ON PA01_PA02_ER04_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER04_SHUKR_01_Hist_I
	ON PA01_PA02_ER04_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER04		ASC)
	PCTFREE 0
	LOGGING;

