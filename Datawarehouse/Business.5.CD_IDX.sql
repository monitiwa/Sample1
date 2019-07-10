--<ScriptOptions statementTerminator=";"/>
-- Version 17922

CREATE INDEX  KT01_KT13_KK_InEx_01_LBS_Hi_I
	ON KT01_KT13_ZahlStBl_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_KT13_Zahlstap_Beleg		ASC)
	PCTFREE 0
	LOGGING;

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

CREATE INDEX KT01_KT08_BBL_FK_KT01_IDX
	ON KT01_KT08_BBL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT08_BBL_FK_KT08_IDX
	ON KT01_KT08_BBL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT09_Bel_Ink_FK_KT01_IDX
	ON KT01_KT09_Bel_Inkasso_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT09_Bel_Ink_FK_KT09_IDX
	ON KT01_KT09_Bel_Inkasso_BL
	(FK_KT09_Inkassierungsmassnahme		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT09_Bel_Ink_InEx_01_Hi
	ON KT01_KT09_Bel_Ink_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_KT09_Bel_Inkasso		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT12_ZahlBel_BBL_KT01_IDX
	ON KT01_KT12_ZahlungsBeleg_BBL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT12_ZahlBel_BBL_KT12_IDX
	ON KT01_KT12_ZahlungsBeleg_BBL
	(FK_KT12_Zahlungsstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT13_KK_BL_KT01_IDX
	ON KT01_KT13_Zahlstap_AusglBel_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT13_KK_BL_KT13_IDX
	ON KT01_KT13_Zahlstap_AusglBel_BL
	(FK_KT13_ZahlStapelPos		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT04_BL_KT02_IDX
	ON KT02_KT04_BL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT04_BL_KT04_IDX
	ON KT02_KT04_BL
	(FK_KT04_Ueberwachung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT04_InEx_01_LBS_Hist_IDX
	ON KT02_KT04_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_KT04		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT08_BBL_FK_KT02_IDX
	ON KT02_KT08_BBL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT08_BBL_FK_KT08_IDX
	ON KT02_KT08_BBL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT09_BL_FK_KT02_IDX
	ON KT02_KT09_BL
	(FK_KT02_Vertragskonto		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT09_BL_FK_KT09_IDX
	ON KT02_KT09_BL
	(FK_KT09_Inkassierungsmassnahme		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_KT09_InEx_01_LBS_Hi
	ON KT02_KT09_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_KT09		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT02_VKSperre_InEx_01_HBM_Hist
	ON KT02_VKSperre_InEx_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT02_Vertragskonto		ASC,
	  C_Prozess_gesperrt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_InEx_01_HBM_Hist_IDX
	ON KT04_Ueberwachung_InEx_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT04_Ueberwachung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT05_BL_KT04_IDX
	ON KT04_KT05_BL
	(FK_KT04_Ueberwachung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT05_BL_KT05_IDX
	ON KT04_KT05_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT05_InEx_01_LBS_Hist_IDX
	ON KT04_KT05_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT04_KT05		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT06_BL_FK_KT04_IDX
	ON KT04_KT06_BL
	(FK_KT04_Ueberwachung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT06_BL_FK_KT06_IDX
	ON KT04_KT06_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT04_KT06_InEx_01_LBS_Hist_IDX
	ON KT04_KT06_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT04_KT06		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_ER01_IEOSc_InEx_01_LBS_Hi
	ON KT05_ER01_InExOSch_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_ER01_InExO_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_IEOSperre_InEx_01_HBM_His
	ON KT05_IEOSperre_InEx_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_InExkassoObjekt		ASC,
	  C_Prozess_gesperrt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_InExkObj_InEx_02_HBS_Hist
	ON KT05_InExkassoObj_InEx_02_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_InExkObj_InEx_03_HBS_Hist
	ON KT05_InExkassoObj_InEx_03_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_KT08_BBL_FK_KT05_IDX
	ON KT05_KT08_BBL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_KT08_BBL_FK_KT08_IDX
	ON KT05_KT08_BBL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_IEOVe_InEx_01_LBS_Hi
	ON KT05_WE01_InExOVer_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT05_WE01_InExO_Vertrag		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_QF_INSOBJECT_I
	ON KT05_WE01_InExO_Vertrag_BL
	(QF_INSOBJECT_quellintern		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_Ver_BL_KT05_I
	ON KT05_WE01_InExO_Vertrag_BL
	(FK_KT05_InExkassoObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT05_WE01_InExO_Ver_BL_WE01_I
	ON KT05_WE01_InExO_Vertrag_BL
	(FK_WE01_Willenserklaerung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelPosSp_InEx_01_WBM_Hist
	ON KT06_BelegPosSperr_InEx_01_WBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC,
	  C_Prozess_gesperrt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelPos_InEx_03_WBS_Hist_I
	ON KT06_BelegPosition_InEx_03_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT08_BL_KT06_IDX
	ON KT06_KT08_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT08_BL_KT08_IDX
	ON KT06_KT08_BL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_KT08_InEx_01_LBS_Hist_IDX
	ON KT06_KT08_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  SK_KT06_KT08		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT08_InkassoPos_InEx_01_HBS_Hi
	ON KT08_InkassoPos_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT08_KT09_BL_KT08_IDX
	ON KT08_KT09_BL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT08_KT09_BL_KT09_IDX
	ON KT08_KT09_BL
	(FK_KT09_Inkassierungsmassnahme		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT08_KT09_InEx_01_LBS_Hist_IDX
	ON KT08_KT09_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT08_KT09		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT09_InEx_01_HBS_Hist_IDX
	ON KT09_Inkassierung_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT09_Inkassierungsmassnahme		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT12_Zahlstapel_InEx_01_Hist_I
	ON KT12_Zahlstapel_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT12_Zahlungsstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT13_ZahlstapelPos_InEx_01_HI
	ON KT13_ZahlstapelPos_InEx_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT13_ZahlstapelPos		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT13_ZahlstapelPos_KT12_BW_IDX
	ON KT13_ZahlstapelPos_KT12_BW
	(FK_KT12_Zahlungsstapel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT01_BL_FK_KT01_IDX
	ON PA01_PA02_KT01_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT01_BL_FK_PA01_IDX
	ON PA01_PA02_KT01_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT01_BL_FK_PA02_IDX
	ON PA01_PA02_KT01_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT01_InEx_01_LBS_His
	ON PA01_PA02_KT01_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_KT01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT08_BL_FK_KT08_IDX
	ON PA01_PA02_KT08_BL
	(FK_KT08_InkassoPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT08_BL_FK_PA01_IDX
	ON PA01_PA02_KT08_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT08_BL_FK_PA02_IDX
	ON PA01_PA02_KT08_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT08_InEx_01_LBS_His
	ON PA01_PA02_KT08_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_KT08		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT09_BL_FK_KT09_IDX
	ON PA01_PA02_KT09_BL
	(FK_KT09_Inkassierungsmassnahme		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT09_BL_FK_PA01_IDX
	ON PA01_PA02_KT09_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT09_BL_FK_PA02_IDX
	ON PA01_PA02_KT09_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_KT09_InEx_01_LBS_His
	ON PA01_PA02_KT09_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_KT09		ASC)
	PCTFREE 0
	LOGGING;

