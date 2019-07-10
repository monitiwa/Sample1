--<ScriptOptions statementTerminator=";"/>
-- Version 9450

CREATE INDEX GE02_GE05_BL_FK_GE02_IDX
	ON GE02_GE05_Komman_Anschrift_BL
	(FK_GE02_Kommunikationsangabe		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE02_GE05_BL_FK_GE05_IDX
	ON GE02_GE05_Komman_Anschrift_BL
	(FK_GE05_Anschrift		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE02_GE05_BL_TA_Ladat_IDX
	ON GE02_GE05_Komman_Anschrift_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE02_GE05_Par_01_LBS_Hist_IDX
	ON GE02_GE05_Par_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE02_GE05_Komman_Anschrift		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE02_KommAng_PAR_01_HBS_Hist_I
	ON GE02_KommAng_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE02_Kommunikationsangabe		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE05_Anschrift_Par_01_HBS_Hist
	ON GE05_Anschrift_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE05_Anschrift		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_GE02_BL_FK_GE02_IDX
	ON PA01_GE02_BL
	(FK_GE02_Kommunikationsangabe		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_GE02_BL_FK_PA01_IDX
	ON PA01_GE02_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_GE02_BL_TA_Ladat_IDX
	ON PA01_GE02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_GE02_Par_01_LBS_Hist_IDX
	ON PA01_GE02_Par_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE02_PA01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA01_PA02_BL_FK_PA01_IDX
	ON PA01_PA01_PA02_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA01_PA02_BL_FK_PA01_P_I
	ON PA01_PA01_PA02_BL
	(FK_PA01_Partner_P		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA01_PA02_BL_FK_PA02_IDX
	ON PA01_PA01_PA02_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA01_PA02_BL_TA_Ladat_IDX
	ON PA01_PA01_PA02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA01_PA02_Par_01_LBS_Hist
	ON PA01_PA01_PA02_Par_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA01_PA02		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_PA05_BL_FK_PA01_IDX
	ON PA01_PA02_PA05_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_PA05_BL_FK_PA02_IDX
	ON PA01_PA02_PA05_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_PA05_BL_FK_PA05_IDX
	ON PA01_PA02_PA05_BL
	(FK_PA05_Bankverbindung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_PA05_BL_TA_Ladat_IDX
	ON PA01_PA02_PA05_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_PA05_Par_01_LBS_Hist
	ON PA01_PA02_PA05_Par_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_PA05		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_WE01_BL_FK_Ladat_IDX
	ON PA01_PA02_WE01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_WE01_BL_FK_PA01_IDX
	ON PA01_PA02_WE01_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_WE01_BL_FK_PA02_IDX
	ON PA01_PA02_WE01_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_WE01_BL_FK_WE01_IDX
	ON PA01_PA02_WE01_BL
	(FK_WE01_Willenserklaerung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_WE01_Par_01_LBS_Hi_I
	ON PA01_PA02_WE01_Par_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_WE01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_ParGemErb_Par_01_HBS_Hi_I
	ON PA01_PartnerGemErb_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PartnGem_Par_01_HBS_His_I
	ON PA01_PartnerGem_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PartnJur_Par_01_HBS_His_I
	ON PA01_PartnerJur_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PartnNat_Par_01_HBS_His_I
	ON PA01_PartnerNat_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PartnOrg_Par_01_HBS_His_I
	ON PA01_PartnerOrga_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_Partner_Par_01_HBS_UKZ_I
	ON PA01_PartnerOrga_Par_01_HBS
	(Kurzname_alfa		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA03_AmtlDok_Par_01_WBS_Hist_I
	ON PA03_AmtlDokument_Par_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA03_AmtlichesDokument		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA03_AmtlichesDok_BW_Ladat_IDX
	ON PA03_AmtlichesDokument_PA01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA03_AmtlichesDok_PA01_IDX
	ON PA03_AmtlichesDokument_PA01_BW
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA04_Kundenmerkm_Par_01_WBS_Hi
	ON PA04_Kundenmerkmal_Par_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA04_Kundenmerkmal		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA04_Kundenmerkmal_BW_Ladat_I
	ON PA04_Kundenmerkmal_PA01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA04_Kundenmerkmal_PA01_IDX
	ON PA04_Kundenmerkmal_PA01_BW
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA05_Bankverb_Par_01_HBS_Hist
	ON PA05_Bankverbindung_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA05_Bankverbindung		ASC)
	PCTFREE 0
	LOGGING;

