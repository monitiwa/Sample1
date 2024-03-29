--<ScriptOptions statementTerminator=";"/>

ALTER TABLE ER00_ER01_SammErgSch_01_LBS DROP CONSTRAINT ER01_ER06_SErgS_01_LBS_FK;

ALTER TABLE ER00_ER01_SammelergSchaden_BL DROP CONSTRAINT ER00_ER01_SammelergSch_ER00_FK;

ALTER TABLE ER00_ER01_SammelergSchaden_BL DROP CONSTRAINT ER00_ER01_SammelergSch_ER01_FK;

ALTER TABLE ER00_GE01_NatKatZone_01_LBS DROP CONSTRAINT ER00_GE01_NKZ_01_LBS_FK;

ALTER TABLE ER00_GE01_NatKatZone_BL DROP CONSTRAINT ER00_GE01_NatKatZone_ER00_FK;

ALTER TABLE ER00_GE01_NatKatZone_BL DROP CONSTRAINT ER00_GE01_NatKatZone_GE01_FK;

ALTER TABLE ER00_Sammelereignis_man_01_HBS DROP CONSTRAINT ER00_Sammelereig_man_01_HBS_FK;

ALTER TABLE ER01_ER06_SammErgTSch_01_LBS DROP CONSTRAINT ER01_ER06_SErgTS_01_LBS_FK;

ALTER TABLE ER01_ER06_SammelergteilSch_BL DROP CONSTRAINT ER01_ER06_SammelergSch_ER01_FK;

ALTER TABLE ER01_ER06_SammelergteilSch_BL DROP CONSTRAINT ER01_ER06_SammelergSch_ER06_FK;

ALTER TABLE ER06_GE01_NatKatZone_01_LBS DROP CONSTRAINT ER06_GE01_NKZ_ER06_GE01_FK;

ALTER TABLE ER06_GE01_NatKatZone_BL DROP CONSTRAINT ER06_GE01_ER06_RV_Ereignis_FK;

ALTER TABLE ER06_GE01_NatKatZone_BL DROP CONSTRAINT ER06_GE01_GE01_Gebiet_FK;

ALTER TABLE ER06_SammelereignTeil_ER00_BW DROP CONSTRAINT ER06_SammereignTeil_ER00_FK;

ALTER TABLE ER06_SammelergTeil_man_01_WBS DROP CONSTRAINT ER06_SammelergT_man_01_WBS_FK;

ALTER TABLE GE01_Gebiet_PLZBer_01_HBM DROP CONSTRAINT GE01_Gebiet_PLZBer_01_HBM_FK;

ALTER TABLE LE09_Rueckst_Man_01_HBS DROP CONSTRAINT LE09_Rueckst_Man_01_HBS_FK;

ALTER TABLE ER00_ER01_SammErgSch_01_LBS DROP CONSTRAINT ER01_ER06_SErgS_01_LBS_PK;

ALTER TABLE ER00_ER01_SammelergSchaden_BL DROP CONSTRAINT ER00_ER01_SammelergSchaden_PK;

ALTER TABLE ER00_GE01_NatKatZone_01_LBS DROP CONSTRAINT ER00_GE01_NKZ_01_LBS_PK;

ALTER TABLE ER00_GE01_NatKatZone_BL DROP CONSTRAINT ER00_GE01_NatKatZone_PK;

ALTER TABLE ER00_Sammelereignis_BH DROP CONSTRAINT ER00_Sammelereigniss_BH_PK;

ALTER TABLE ER00_Sammelereignis_man_01_HBS DROP CONSTRAINT ER00_Sammelereig_man_01_HBS_PK;

ALTER TABLE ER01_ER06_SammErgTSch_01_LBS DROP CONSTRAINT ER01_ER06_SErgTS_01_LBS_PK;

ALTER TABLE ER01_ER06_SammelergteilSch_BL DROP CONSTRAINT ER01_ER06_SammelergteilSch_PK;

ALTER TABLE ER06_GE01_NatKatZone_01_LBS DROP CONSTRAINT ER06_GE01_NKZ_01_LBS_PK;

ALTER TABLE ER06_GE01_NatKatZone_BL DROP CONSTRAINT ER06_GE01_BL_PK;

ALTER TABLE ER06_SammelereignTeil_ER00_BW DROP CONSTRAINT ER06_SammereignTeil_ER00_BW_PK;

ALTER TABLE ER06_SammelergTeil_man_01_WBS DROP CONSTRAINT ER06_SammelergT_man_01_WBS_PK;

ALTER TABLE GE01_Gebiet_PLZBer_01_HBM DROP CONSTRAINT GE01_Gebiet_PLZBer_01_HBM_PK;

ALTER TABLE LE09_Rueckst_Man_01_HBS DROP CONSTRAINT LE09_Rueckst_Man_01_HBS_PK;

DROP INDEX ER00_ER01_SammelergSch_ER00_I;

DROP INDEX ER00_ER01_SammelergSch_ER07_I;

DROP INDEX ER00_ER01_SammelergSch_Ladat_I;

DROP INDEX ER00_ER07_Klassenzu_BL_ER00_I;

DROP INDEX ER00_ER07_Klassenzu_BL_ER07_I;

DROP INDEX ER00_ER07_Klassenzu_BL_Ladat_I;

DROP INDEX ER00_GE01_NKZ_01_LBS_FK_I;

DROP INDEX ER00_GE01_NKZ_01_LBS_Hist_I;

DROP INDEX ER00_Sammelereig_man_01_FK_I;

DROP INDEX ER00_Sammelereig_man_01_Hist_I;

DROP INDEX ER01_ER06_SErgS_01_LBS_FK_I;

DROP INDEX ER01_ER06_SErgS_01_LBS_Hist_I;

DROP INDEX ER01_ER06_SErgTS_01_LBS_FK_I;

DROP INDEX ER01_ER06_SErgTS_01_LBS_Hist_I;

DROP INDEX ER01_ER06_SammelergSch_ER01_I;

DROP INDEX ER01_ER06_SammelergSch_ER06_I;

DROP INDEX ER01_ER06_SammelergSch_Ladat_I;

DROP INDEX ER06_GE01_BL_FK_ER06_IDX;

DROP INDEX ER06_GE01_BL_FK_GE01_IDX;

DROP INDEX ER06_GE01_BL_TA_Ladat_IDX;

DROP INDEX ER06_GE01_NKZ_01_LBS_FK_I;

DROP INDEX ER06_GE01_NKZ_01_LBS_Hist_I;

DROP INDEX ER06_SammelergT_man_01_Hist_I;

DROP INDEX ER06_SammereignTeil_ER00_IDX;

DROP INDEX ER06_SammereignTeil_ER00_Lad_I;

DROP INDEX GE01_Gebiet_PLZBer_01_HBM_FK_I;

DROP INDEX GE01_Gebiet_PLZBer_01_HBM_Hi_I;

DROP INDEX LE09_Rueckst_Man_01_HBS_FK_IDX;

DROP INDEX LE09_Rueckst_Man_01_HBS_Hist_I;

DROP TABLE ER00_ER01_SammErgSch_01_LBS;

DROP TABLE ER00_ER01_SammelergSchaden_BL;

DROP TABLE ER00_GE01_NatKatZone_01_LBS;

DROP TABLE ER00_GE01_NatKatZone_BL;

DROP TABLE ER00_Sammelereignis_BH;

DROP TABLE ER00_Sammelereignis_man_01_HBS;

DROP TABLE ER01_ER06_SammErgTSch_01_LBS;

DROP TABLE ER01_ER06_SammelergteilSch_BL;

DROP TABLE ER06_GE01_NatKatZone_01_LBS;

DROP TABLE ER06_GE01_NatKatZone_BL;

DROP TABLE ER06_SammelereignTeil_ER00_BW;

DROP TABLE ER06_SammelergTeil_man_01_WBS;

DROP TABLE GE01_Gebiet_PLZBer_01_HBM;

DROP TABLE LE09_Rueckst_Man_01_HBS;

