--<ScriptOptions statementTerminator=";"/>
-- Version 14270

CREATE INDEX KT01_Beleg_InEx_02_HBS_Hist_I
	ON KT01_Beleg_InEx_02_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT01_Rueckl_BL_KT01P_IDX
	ON KT01_KT01_Ruecklaeufer_BL
	(FK_KT01_Beleg_P		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT01_Rueckl_BL_KT01_IDX
	ON KT01_KT01_Ruecklaeufer_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT01_Ruecl_InEx_01_LBS_Hi
	ON KT01_KT01_Rueckl_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_KT01_Ruecklaeufer		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT06_Ausgl_InEx_02_Hist_I
	ON KT01_KT06_Ausgl_InEx_02_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_KT06_Ausgleich		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT10_Ausg_BL_FK_KT01_IDX
	ON KT01_KT10_Zahllauf_AusglBel_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT10_Ausg_BL_FK_KT10_IDX
	ON KT01_KT10_Zahllauf_AusglBel_BL
	(FK_KT10_ZahllaufZahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_InEx_01_HBS_Hist_IDX
	ON KT02_Vertragskonto_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT05_BL_FK_KT02_IDX
	ON KT02_KT05_BL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT05_BL_FK_KT05_IDX
	ON KT02_KT05_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT05_InEx_01_LBS_Hist_IDX
	ON KT02_KT05_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_KT05		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT06_BL_KT02_IDX
	ON KT02_KT06_BL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT06_BL_KT06_IDX
	ON KT02_KT06_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT06_BL_Ladat_IDX
	ON KT02_KT06_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_Partner_VK_InEx_01_HI
	ON KT02_Partner_VK_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT03_Zahlplanpos_KT05_BW_IDX
	ON KT03_Zahlplanposition_KT05_BW
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT03_Zahlpp_InEx_01_WBS_Hist_I
	ON KT03_Zahlplanpos_InEx_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT03_Zahlplanposition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_ER01_InExO_Scha_BL_ER01_I
	ON KT05_ER01_InExO_Schaden_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_ER01_InExO_Scha_BL_KT05_I
	ON KT05_ER01_InExO_Schaden_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_ER01_InExO_Scha_BL_Ladat
	ON KT05_ER01_InExO_Schaden_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_InExkObj_InEx_01_HBS_Hist
	ON KT05_InExkassoObj_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_KT06_ZusRef_BL_FK_KT05_I
	ON KT05_KT06_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_KT06_ZusRef_BL_FK_KT06_I
	ON KT05_KT06_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_KT06_ZusRef_BL_TA_Ladat_I
	ON KT05_KT06_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_Ver_BL_KT05_I
	ON KT05_WE01_InExO_Vertrag_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_Ver_BL_Ladat_I
	ON KT05_WE01_InExO_Vertrag_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_Ver_BL_WE01_I
	ON KT05_WE01_InExO_Vertrag_BL
	(FK_WE01_Willenserklaerung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BP_Ausgl_IE_01_LBS_HI
	ON KT06_BelPos_Ausgl_InEx_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelPos_InEx_02_WBS_Hist_I
	ON KT06_BelegPosition_InEx_02_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT10_Reg_BL_FK_KT06_IDX
	ON KT06_KT10_Regulierung_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT10_Reg_BL_FK_KT10_IDX
	ON KT06_KT10_Regulierung_BL
	(FK_KT10_ZahllaufZahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT10_Reg_InEx_01_LBS_His
	ON KT06_KT10_Regul_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_KT10_Regulierung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT10_ZahllaufZa_InEx_01_HBS_HI
	ON KT10_ZahllaufZahl_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT10_ZahllaufZahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT02_BL_KT02_IDX
	ON PA01_PA02_KT02_BL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT02_BL_PA01_IDX
	ON PA01_PA02_KT02_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT02_BL_PA02_IDX
	ON PA01_PA02_KT02_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

