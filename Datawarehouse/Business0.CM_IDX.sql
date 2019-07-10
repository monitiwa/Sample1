--<ScriptOptions statementTerminator=";"/>
-- Version 7710

CREATE INDEX ER01ER01glEr_SHUKR_01_LBS_H_I
	ON ER01_ER01_glEr_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_ER01_gleiches_Ereignis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01WE03_ER02_DS_ER01WE03_FK_I
	ON ER01WE03_ER02_DeckSp_BL
	(FK_ER01_WE03_Deckungsspiegel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01WE03_ER02_DS_ER02_FK_IDX
	ON ER01WE03_ER02_DeckSp_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01WE03_ER02_DS_TA_Ladat_IDX
	ON ER01WE03_ER02_DeckSp_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01WE03_ER02_SHUKR_01_LBS_His
	ON ER01WE03_ER02_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01WE03_ER02_DeckSp		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_DWH_01_HBS_Hist_IDX
	ON ER01_Schaden_DWH_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER01_glEr_BL_FK_ER01_IDX
	ON ER01_ER01_gleiches_Ereignis_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER01_glEr_BL_FK_ER01_P_I
	ON ER01_ER01_gleiches_Ereignis_BL
	(FK_ER01_Schaden_P		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER01_glEr_BL_TA_Ladat_IDX
	ON ER01_ER01_gleiches_Ereignis_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE01_BL_FK_ER01_IDX
	ON ER01_ER02_LE01_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE01_BL_FK_ER02_IDX
	ON ER01_ER02_LE01_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE01_BL_FK_LE01_IDX
	ON ER01_ER02_LE01_BL
	(FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE01_BL_TA_Ladat_IDX
	ON ER01_ER02_LE01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE09_BL_FK_ER01_IDX
	ON ER01_ER02_LE09_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE09_BL_FK_ER02_IDX
	ON ER01_ER02_LE09_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE09_BL_FK_LE09_IDX
	ON ER01_ER02_LE09_BL
	(FK_LE09_Rueckstellung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER02_LE09_BL_TA_Ladat_IDX
	ON ER01_ER02_LE09_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_GE01_SOrt_BL_FK_ER01_IDX
	ON ER01_GE01_Schadenort_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_GE01_SOrt_BL_FK_GE01_IDX
	ON ER01_GE01_Schadenort_BL
	(FK_GE01_Gebiet		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_GE01_SOrt_BL_TA_Ladat_IDX
	ON ER01_GE01_Schadenort_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_GE01_SOrt_SHUKR_01_LBS_Hi
	ON ER01_GE01_SchOrt_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_GE01_Schadenort		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_LE03_BL_FK_ER01_IDX
	ON ER01_LE03_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_LE03_BL_FK_LE03_IDX
	ON ER01_LE03_BL
	(FK_LE03_Regress		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_LE03_BL_TA_Ladat_IDX
	ON ER01_LE03_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_OB01_beschObj_FK_ER01_IDX
	ON ER01_OB01_beschObjekt_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_OB01_beschObj_FK_OB01_IDX
	ON ER01_OB01_beschObjekt_BL
	(FK_OB01_Objekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_OB01_beschObj_Ladat_IDX
	ON ER01_OB01_beschObjekt_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PR01_BL_FK_ER01_IDX
	ON ER01_PR01_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PR01_BL_FK_PR01_IDX
	ON ER01_PR01_BL
	(FK_PR01_Produkt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PR01_BL_TA_Ladat_IDX
	ON ER01_PR01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_PR01_SHUKR_01_LBS_Hist_I
	ON ER01_PR01_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_PR01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_SHUKR_01_HBS_Hist_IDX
	ON ER01_Schaden_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_Schaden_DWH_02_HBM_Hist_I
	ON ER01_Schaden_DWH_02_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC,
	  C_SammelereignisKlasse		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_BL_FK_ER01_IDX
	ON ER01_WE01_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_BL_FK_WE01_IDX
	ON ER01_WE01_BL
	(FK_WE01_Vertrag		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_BL_TA_Ladat_IDX
	ON ER01_WE01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_DeckSp_BL_WE03_IDX
	ON ER01_WE03_Deckungsspiegel_BL
	(FK_WE03_Risiko		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_VertrSpie_BL_ER01_I
	ON ER01_WE01_Vertragsspiegel_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_VertrSpie_BL_Lad_IDX
	ON ER01_WE01_Vertragsspiegel_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_VertrSpie_BL_WE01_I
	ON ER01_WE01_Vertragsspiegel_BL
	(FK_WE01_Vertrag		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE01_VertrSpie_Sch_01_His
	ON ER01_WE01_VertrSpie_Sch_01_LBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_WE01_Vertragsspiegel		ASC,
	  VertragsversionsNr		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE03_DeckSp_BL_ER01_IDX
	ON ER01_WE03_Deckungsspiegel_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE03_DeckSp_BL_Lad_IDX
	ON ER01_WE03_Deckungsspiegel_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_WE03_DeckSp_Sch_01_Hist_I
	ON ER01_WE03_DeckSpie_Sch_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_WE03_Deckungsspiegel		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_DWH_01_WBS_Hist_IDX
	ON ER02_Teilschaden_DWH_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE02_BL_FK_ER02_IDX
	ON ER02_LE02_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE02_BL_FK_LE02_IDX
	ON ER02_LE02_BL
	(FK_LE02_Zahlung_Detail		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE02_BL_TA_Ladat_IDX
	ON ER02_LE02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE04_BL_FK_ER02_IDX
	ON ER02_LE04_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE04_BL_FK_LE04_IDX
	ON ER02_LE04_BL
	(FK_LE04_Regressposition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE04_BL_TA_Ladat_IDX
	ON ER02_LE04_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE04_SHUKR_01_LBS_His_IDX
	ON ER02_LE04_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER02_LE04		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE08_BL_FK_LE08_IDX
	ON ER02_LE08_Anspruch_SHUKR_BL
	(FK_LE08_Anspruch		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_LE08_BL_TA_Ladat_IDX
	ON ER02_LE08_Anspruch_SHUKR_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_SHUKR_01_WBS_Hist_IDX
	ON ER02_Teilschaden_SHUKR_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER02_Teilschaden_ER01_IDX
	ON ER02_Teilschaden_ER01_BW
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE01_Gebiet_SCH_01_HBS_Hist_ID
	ON GE01_Gebiet_Sch_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE01_Gebiet		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_KT01_Beleg_BL_FK_KT01_IDX
	ON LE01_KT01_Beleg_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_KT01_Beleg_BL_FK_LE01_IDX
	ON LE01_KT01_Beleg_BL
	(FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_KT01_Beleg_BL_Ladat_IDX
	ON LE01_KT01_Beleg_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_LE03_BL_FK_LE01_IDX
	ON LE01_LE03_BL
	(FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_LE03_BL_FK_LE03_IDX
	ON LE01_LE03_BL
	(FK_LE03_Regress		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_LE03_BL_TA_Ladat_IDX
	ON LE01_LE03_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_Zahlung_DWH_01_HBS_Hist_I
	ON LE01_Zahlung_DWH_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE01_Zahlung_SHUKR_01_HBS_Hi_I
	ON LE01_Zahlung_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_LE08_BL_FK_LE02_IDX
	ON LE02_LE08_ZahlDet_Anspruch_BL
	(FK_LE02_Zahlung_Detail		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_LE08_BL_FK_LE08_IDX
	ON LE02_LE08_ZahlDet_Anspruch_BL
	(FK_LE08_Anspruch		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_LE08_BL_TA_Ladat_IDX
	ON LE02_LE08_ZahlDet_Anspruch_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_Zahl_Det_DWH_01_Hist_IDX
	ON LE02_Zahlung_Det_DWH_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE02_Zahlung_Detail		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_ZahlungDe_SHUKR_01_WBS_Hi
	ON LE02_Zahlung_Det_SHUKR_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE02_Zahlung_Detail		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_Zahlung_Det_BW_LE01_IDX
	ON LE02_Zahlung_Detail_LE01_BW
	(FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE02_Zahlung_Det_BW_Ladat_IDX
	ON LE02_Zahlung_Detail_LE01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE03_Regress_Bil_01_HBM_HI
	ON LE03_Regress_Bilanz_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE03_Regress		ASC,
	  C_Bilanz_Meldeperiode		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE03_SHUKR_01_HBS_Hist_IDX
	ON LE03_Regress_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE03_Regress		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE04_Regresspos_BW_LE03_IDX
	ON LE04_Regressposition_LE03_BW
	(FK_LE03_Regress		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE04_Regresspos_BW_Ladat_IDX
	ON LE04_Regressposition_LE03_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE04_SHUKR_01_WBS_Hist_IDX
	ON LE04_Regresspos_SHUKR_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE04_Regressposition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE09_Rueckst_Bil_01_HBM_HI
	ON LE09_Rueckst_Bilanz_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE09_Rueckstellung		ASC,
	  C_Bilanz_Meldeperiode		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE09_SHUKR_01_HBS_Hist_IDX
	ON LE09_Rueckst_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE09_Rueckstellung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01OB01_BL_ER1OB1_I
	ON PA01_PA02_ER01OB01_BL
	(FK_ER01_OB01_beschObjekt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01OB01_BL_Lad_IDX
	ON PA01_PA02_ER01OB01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01OB01_BL_PA01_IDX
	ON PA01_PA02_ER01OB01_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01OB01_BL_PA02_IDX
	ON PA01_PA02_ER01OB01_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01OB01_SHU_01_Hi_I
	ON PA01_PA02_ER01OB01_SHUK_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER01OB01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_BL_FK_ER01_IDX
	ON PA01_PA02_ER01_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_BL_FK_PA01_IDX
	ON PA01_PA02_ER01_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_BL_FK_PA02_IDX
	ON PA01_PA02_ER01_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_BL_TA_Ladat_IDX
	ON PA01_PA02_ER01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER01_Par_01_LBS_Hist
	ON PA01_PA02_ER01_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER02_BL_FK_ER02_IDX
	ON PA01_PA02_ER02_BL
	(FK_ER02_Teilschaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER02_BL_FK_PA01_IDX
	ON PA01_PA02_ER02_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER02_BL_FK_PA02_IDX
	ON PA01_PA02_ER02_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER02_BL_TA_Ladat_IDX
	ON PA01_PA02_ER02_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_ER02_SHUKR_01_Hist_I
	ON PA01_PA02_ER02_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_ER02		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE01_BL_FK_LE01_IDX
	ON PA01_PA02_LE01_BL
	(FK_LE01_Zahlung		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE01_BL_FK_PA01_IDX
	ON PA01_PA02_LE01_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE01_BL_FK_PA02_IDX
	ON PA01_PA02_LE01_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE01_BL_TA_Ladat_IDX
	ON PA01_PA02_LE01_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE01_SHUKR_01_Hist_I
	ON PA01_PA02_LE01_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_LE01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE08_BL_FK_LE08_IDX
	ON PA01_PA02_LE08_BL
	(FK_LE08_Anspruch		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE08_BL_FK_PA01_IDX
	ON PA01_PA02_LE08_BL
	(FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE08_BL_FK_PA02_IDX
	ON PA01_PA02_LE08_BL
	(FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE08_BL_TA_Ladat
	ON PA01_PA02_LE08_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_PA02_LE08_SHUKR_01_Hist_I
	ON PA01_PA02_LE08_SHUKR_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_PA02_LE08		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA01_Partner_Sch_01_HBS_Hist_I
	ON PA01_Partner_Sch_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA01_Partner		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PA02_Par_01_HBS_Hist_IDX
	ON PA02_PartnerRolle_Par_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PA02_PartnerRolle		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX PR01_Produkt_SHUKR_01_HBS_Hist
	ON PR01_Produkt_SHUKR_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_PR01_Produkt		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE01_WE02_WE03_BL_FK_WE01_IDX
	ON WE01_WE02_WE03_BBL
	(FK_WE01_Vertrag		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE01_WE02_WE03_BL_FK_WE02_IDX
	ON WE01_WE02_WE03_BBL
	(FK_WE02_Vertragselement		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE01_WE02_WE03_BL_FK_WE03_IDX
	ON WE01_WE02_WE03_BBL
	(FK_WE03_Risiko		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE01_WE02_WE03_BL_TA_Ladat_IDX
	ON WE01_WE02_WE03_BBL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE02_Vertragsel_WE01_BW_IDX
	ON WE02_Vertragselement_WE01_BW
	(FK_WE01_Vertrag		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE02_Vertragsel_WE01_BW_Lad_I
	ON WE02_Vertragselement_WE01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE03_Risiko_SachHU_01_WBS_Hi_I
	ON WE03_Risiko_SachHU_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_WE03_Risiko		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE03_Risiko_WE02_BW_IDX
	ON WE03_Risiko_WE02_BW
	(FK_WE02_Vertragselement		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX WE03_Risiko_WE02_BW_Ladat_IDX
	ON WE03_Risiko_WE02_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

