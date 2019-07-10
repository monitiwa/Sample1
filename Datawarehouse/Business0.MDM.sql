--<ScriptOptions statementTerminator=";"/>

CREATE TABLE ER00_ER01_SammErgSch_01_LBS (
		FK_ER00_ER01_SammelergSchaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER00_ER01_SammelergSchaden_BL (
		SK_ER00_ER01_SammelergSchaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER00_Sammelereignis VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER00_GE01_NatKatZone_01_LBS (
		FK_ER00_GE01_NatKatZone VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER00_GE01_NatKatZone_BL (
		SK_ER00_GE01_NatKatZone VARCHAR2(64 CHAR) NOT NULL,
		FK_ER00_Ereignis VARCHAR2(64 CHAR) NOT NULL,
		FK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER00_Sammelereignis_BH (
		SK_ER00_Sammelereignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER00_Sammelereignis_man_01_HBS (
		FK_ER00_Sammelereignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sammelereignis_ID VARCHAR2(8 CHAR),
		Sammelereignis_Name VARCHAR2(180 CHAR),
		Eintrittsdatum_Beginn DATE,
		Eintrittsdatum_Ende DATE,
		C_SammelereignisKlasse NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_ER06_SammErgTSch_01_LBS (
		FK_ER01_ER06_SammelergteilSch VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER01_ER06_SammelergteilSch_BL (
		SK_ER01_ER06_SammelergteilSch VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER06_SammelereignTeil VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER06_GE01_NatKatZone_01_LBS (
		FK_ER06_GE01 VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE ER06_GE01_NatKatZone_BL (
		SK_ER06_GE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_ER06_SammelereignTeil VARCHAR2(64 CHAR) NOT NULL,
		FK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER06_SammelereignTeil_ER00_BW (
		SK_ER06_SammelereignTeil VARCHAR2(64 CHAR) NOT NULL,
		FK_ER00_Sammelereignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER06_SammelergTeil_man_01_WBS (
		FK_ER06_SammelereignTeil VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Sammelereignisteil_ID VARCHAR2(8 CHAR),
		SammelereignisteilName VARCHAR2(180 CHAR),
		Eintrittsdatum_Beginn DATE,
		Eintrittsdatum_Ende DATE,
		Bearbeitungsstand VARCHAR2(180 CHAR),
		Bemerkung VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE TABLE GE01_Gebiet_PLZBer_01_HBM (
		FK_GE01_Gebiet VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		PLZ_von VARCHAR2(8 CHAR) NOT NULL,
		PLZ_bis VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE LE09_Rueckst_Man_01_HBS (
		FK_LE09_Rueckstellung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_Betragsart NUMBER(28 , 0) NOT NULL,
		Eintrittsdatum_von DATE NOT NULL,
		Eintrittsdatum_bis DATE,
		C_Risikotraeger NUMBER(28 , 0) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2),
		Buchungsdatum DATE,
		Meldedatum_von DATE,
		Meldedatum_bis DATE,
		C_Rueckstellungsart NUMBER(28 , 0) NOT NULL,
		Sparte_Bez VARCHAR2(24 CHAR) NOT NULL,
		C_Sparte NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE INDEX ER00_ER01_SammelergSch_ER00_I
	ON ER00_ER01_SammelergSchaden_BL
	(FK_ER00_Sammelereignis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_ER01_SammelergSch_ER07_I
	ON ER00_ER01_SammelergSchaden_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_ER01_SammelergSch_Ladat_I
	ON ER00_ER01_SammelergSchaden_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_ER07_Klassenzu_BL_ER00_I
	ON ER00_GE01_NatKatZone_BL
	(FK_ER00_Ereignis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_ER07_Klassenzu_BL_ER07_I
	ON ER00_GE01_NatKatZone_BL
	(FK_GE01_Gebiet		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_ER07_Klassenzu_BL_Ladat_I
	ON ER00_GE01_NatKatZone_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_GE01_NKZ_01_LBS_Hist_I
	ON ER00_GE01_NatKatZone_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER00_GE01_NatKatZone		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER00_Sammelereig_man_01_Hist_I
	ON ER00_Sammelereignis_man_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER00_Sammelereignis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER06_SErgS_01_LBS_Hist_I
	ON ER00_ER01_SammErgSch_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER00_ER01_SammelergSchaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER06_SErgTS_01_LBS_Hist_I
	ON ER01_ER06_SammErgTSch_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_ER06_SammelergteilSch		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER06_SammelergSch_ER01_I
	ON ER01_ER06_SammelergteilSch_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER06_SammelergSch_ER06_I
	ON ER01_ER06_SammelergteilSch_BL
	(FK_ER06_SammelereignTeil		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER06_SammelergSch_Ladat_I
	ON ER01_ER06_SammelergteilSch_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_GE01_BL_FK_ER06_IDX
	ON ER06_GE01_NatKatZone_BL
	(FK_ER06_SammelereignTeil		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_GE01_BL_FK_GE01_IDX
	ON ER06_GE01_NatKatZone_BL
	(FK_GE01_Gebiet		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_GE01_BL_TA_Ladat_IDX
	ON ER06_GE01_NatKatZone_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_GE01_NKZ_01_LBS_Hist_I
	ON ER06_GE01_NatKatZone_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER06_GE01		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_SammelergT_man_01_Hist_I
	ON ER06_SammelergTeil_man_01_WBS
	(TA_Ersatzdatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER06_SammelereignTeil		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_SammereignTeil_ER00_IDX
	ON ER06_SammelereignTeil_ER00_BW
	(FK_ER00_Sammelereignis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER06_SammereignTeil_ER00_Lad_I
	ON ER06_SammelereignTeil_ER00_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX GE01_Gebiet_PLZBer_01_HBM_Hi_I
	ON GE01_Gebiet_PLZBer_01_HBM
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_GE01_Gebiet		ASC,
	  PLZ_von		ASC,
	  PLZ_bis		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX LE09_Rueckst_Man_01_HBS_Hist_I
	ON LE09_Rueckst_Man_01_HBS
	(TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_LE09_Rueckstellung		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX ER00_GE01_NKZ_01_LBS_FK_I
	ON ER00_GE01_NatKatZone_01_LBS
	(FK_ER00_GE01_NatKatZone		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX ER00_Sammelereig_man_01_FK_I
	ON ER00_Sammelereignis_man_01_HBS
	(FK_ER00_Sammelereignis		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX ER01_ER06_SErgS_01_LBS_FK_I
	ON ER00_ER01_SammErgSch_01_LBS
	(FK_ER00_ER01_SammelergSchaden		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX ER01_ER06_SErgTS_01_LBS_FK_I
	ON ER01_ER06_SammErgTSch_01_LBS
	(FK_ER01_ER06_SammelergteilSch		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX ER06_GE01_NKZ_01_LBS_FK_I
	ON ER06_GE01_NatKatZone_01_LBS
	(FK_ER06_GE01		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX GE01_Gebiet_PLZBer_01_HBM_FK_I
	ON GE01_Gebiet_PLZBer_01_HBM
	(FK_GE01_Gebiet		ASC,
	  PLZ_von		ASC,
	  PLZ_bis		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX LE09_Rueckst_Man_01_HBS_FK_IDX
	ON LE09_Rueckst_Man_01_HBS
	(FK_LE09_Rueckstellung		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE ER00_ER01_SammErgSch_01_LBS ADD CONSTRAINT ER01_ER06_SErgS_01_LBS_PK PRIMARY KEY
	(FK_ER00_ER01_SammelergSchaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER00_ER01_SammelergSchaden_BL ADD CONSTRAINT ER00_ER01_SammelergSchaden_PK PRIMARY KEY
	(SK_ER00_ER01_SammelergSchaden);

ALTER TABLE ER00_GE01_NatKatZone_01_LBS ADD CONSTRAINT ER00_GE01_NKZ_01_LBS_PK PRIMARY KEY
	(FK_ER00_GE01_NatKatZone,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER00_GE01_NatKatZone_BL ADD CONSTRAINT ER00_GE01_NatKatZone_PK PRIMARY KEY
	(SK_ER00_GE01_NatKatZone);

ALTER TABLE ER00_Sammelereignis_BH ADD CONSTRAINT ER00_Sammelereigniss_BH_PK PRIMARY KEY
	(SK_ER00_Sammelereignis);

ALTER TABLE ER00_Sammelereignis_man_01_HBS ADD CONSTRAINT ER00_Sammelereig_man_01_HBS_PK PRIMARY KEY
	(FK_ER00_Sammelereignis,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_ER06_SammErgTSch_01_LBS ADD CONSTRAINT ER01_ER06_SErgTS_01_LBS_PK PRIMARY KEY
	(FK_ER01_ER06_SammelergteilSch,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER01_ER06_SammelergteilSch_BL ADD CONSTRAINT ER01_ER06_SammelergteilSch_PK PRIMARY KEY
	(SK_ER01_ER06_SammelergteilSch);

ALTER TABLE ER06_GE01_NatKatZone_01_LBS ADD CONSTRAINT ER06_GE01_NKZ_01_LBS_PK PRIMARY KEY
	(FK_ER06_GE01,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER06_GE01_NatKatZone_BL ADD CONSTRAINT ER06_GE01_BL_PK PRIMARY KEY
	(SK_ER06_GE01);

ALTER TABLE ER06_SammelereignTeil_ER00_BW ADD CONSTRAINT ER06_SammereignTeil_ER00_BW_PK PRIMARY KEY
	(SK_ER06_SammelereignTeil);

ALTER TABLE ER06_SammelergTeil_man_01_WBS ADD CONSTRAINT ER06_SammelergT_man_01_WBS_PK PRIMARY KEY
	(FK_ER06_SammelereignTeil,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GE01_Gebiet_PLZBer_01_HBM ADD CONSTRAINT GE01_Gebiet_PLZBer_01_HBM_PK PRIMARY KEY
	(FK_GE01_Gebiet,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 PLZ_von,
	 PLZ_bis);

ALTER TABLE LE09_Rueckst_Man_01_HBS ADD CONSTRAINT LE09_Rueckst_Man_01_HBS_PK PRIMARY KEY
	(FK_LE09_Rueckstellung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER00_ER01_SammErgSch_01_LBS ADD CONSTRAINT ER01_ER06_SErgS_01_LBS_FK FOREIGN KEY
	(FK_ER00_ER01_SammelergSchaden)
	REFERENCES ER00_ER01_SammelergSchaden_BL
	(SK_ER00_ER01_SammelergSchaden);

ALTER TABLE ER00_ER01_SammelergSchaden_BL ADD CONSTRAINT ER00_ER01_SammelergSch_ER00_FK FOREIGN KEY
	(FK_ER00_Sammelereignis)
	REFERENCES ER00_Sammelereignis_BH
	(SK_ER00_Sammelereignis)
	ON DELETE CASCADE;

ALTER TABLE ER00_ER01_SammelergSchaden_BL ADD CONSTRAINT ER00_ER01_SammelergSch_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden)
	ON DELETE CASCADE;

ALTER TABLE ER00_GE01_NatKatZone_01_LBS ADD CONSTRAINT ER00_GE01_NKZ_01_LBS_FK FOREIGN KEY
	(FK_ER00_GE01_NatKatZone)
	REFERENCES ER00_GE01_NatKatZone_BL
	(SK_ER00_GE01_NatKatZone)
	ON DELETE CASCADE;

ALTER TABLE ER00_GE01_NatKatZone_BL ADD CONSTRAINT ER00_GE01_NatKatZone_ER00_FK FOREIGN KEY
	(FK_ER00_Ereignis)
	REFERENCES ER00_Sammelereignis_BH
	(SK_ER00_Sammelereignis)
	ON DELETE CASCADE;

ALTER TABLE ER00_GE01_NatKatZone_BL ADD CONSTRAINT ER00_GE01_NatKatZone_GE01_FK FOREIGN KEY
	(FK_GE01_Gebiet)
	REFERENCES GE01_Gebiet_BH
	(SK_GE01_Gebiet)
	ON DELETE CASCADE;

ALTER TABLE ER00_Sammelereignis_man_01_HBS ADD CONSTRAINT ER00_Sammelereig_man_01_HBS_FK FOREIGN KEY
	(FK_ER00_Sammelereignis)
	REFERENCES ER00_Sammelereignis_BH
	(SK_ER00_Sammelereignis)
	ON DELETE CASCADE;

ALTER TABLE ER01_ER06_SammErgTSch_01_LBS ADD CONSTRAINT ER01_ER06_SErgTS_01_LBS_FK FOREIGN KEY
	(FK_ER01_ER06_SammelergteilSch)
	REFERENCES ER01_ER06_SammelergteilSch_BL
	(SK_ER01_ER06_SammelergteilSch);

ALTER TABLE ER01_ER06_SammelergteilSch_BL ADD CONSTRAINT ER01_ER06_SammelergSch_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden)
	ON DELETE CASCADE;

ALTER TABLE ER01_ER06_SammelergteilSch_BL ADD CONSTRAINT ER01_ER06_SammelergSch_ER06_FK FOREIGN KEY
	(FK_ER06_SammelereignTeil)
	REFERENCES ER06_SammelereignTeil_ER00_BW
	(SK_ER06_SammelereignTeil)
	ON DELETE CASCADE;

ALTER TABLE ER06_GE01_NatKatZone_01_LBS ADD CONSTRAINT ER06_GE01_NKZ_ER06_GE01_FK FOREIGN KEY
	(FK_ER06_GE01)
	REFERENCES ER06_GE01_NatKatZone_BL
	(SK_ER06_GE01)
	ON DELETE CASCADE;

ALTER TABLE ER06_GE01_NatKatZone_BL ADD CONSTRAINT ER06_GE01_ER06_RV_Ereignis_FK FOREIGN KEY
	(FK_ER06_SammelereignTeil)
	REFERENCES ER06_SammelereignTeil_ER00_BW
	(SK_ER06_SammelereignTeil)
	ON DELETE CASCADE;

ALTER TABLE ER06_GE01_NatKatZone_BL ADD CONSTRAINT ER06_GE01_GE01_Gebiet_FK FOREIGN KEY
	(FK_GE01_Gebiet)
	REFERENCES GE01_Gebiet_BH
	(SK_GE01_Gebiet)
	ON DELETE CASCADE;

ALTER TABLE ER06_SammelereignTeil_ER00_BW ADD CONSTRAINT ER06_SammereignTeil_ER00_FK FOREIGN KEY
	(FK_ER00_Sammelereignis)
	REFERENCES ER00_Sammelereignis_BH
	(SK_ER00_Sammelereignis)
	ON DELETE CASCADE;

ALTER TABLE ER06_SammelergTeil_man_01_WBS ADD CONSTRAINT ER06_SammelergT_man_01_WBS_FK FOREIGN KEY
	(FK_ER06_SammelereignTeil)
	REFERENCES ER06_SammelereignTeil_ER00_BW
	(SK_ER06_SammelereignTeil)
	ON DELETE CASCADE;

ALTER TABLE GE01_Gebiet_PLZBer_01_HBM ADD CONSTRAINT GE01_Gebiet_PLZBer_01_HBM_FK FOREIGN KEY
	(FK_GE01_Gebiet)
	REFERENCES GE01_Gebiet_BH
	(SK_GE01_Gebiet);

ALTER TABLE LE09_Rueckst_Man_01_HBS ADD CONSTRAINT LE09_Rueckst_Man_01_HBS_FK FOREIGN KEY
	(FK_LE09_Rueckstellung)
	REFERENCES LE09_Rueckstellung_BH
	(SK_LE09_Rueckstellung);

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.FK_ER00_ER01_SammelergSchaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammErgSch_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.FK_ER00_Sammelereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.SK_ER00_ER01_SammelergSchaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_ER01_SammelergSchaden_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.FK_ER00_GE01_NatKatZone IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.FK_ER00_Ereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.FK_GE01_Gebiet IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.SK_ER00_GE01_NatKatZone IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_GE01_NatKatZone_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_BH.SK_ER00_Sammelereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse IS
'... ist eine Klassifizierung von Sammelereignissen / Naturkatastrophen

aus GEFAHR_ID bzw. EREIGNIS_GEFAHR

1	Sturm/Hagel
2	Flut/Überschwemmung/Rückstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat für Austauschquoten

Datenschutz $-?';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

EREIGNISDATUM_START || EREIGNISUHRZEIT_START

Datenschutz $-?
';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgelöst wurde.

EREIGNISDATUM_ENDE || EREIGNISUHRZEIT_ENDE
Bei nicht gefüllter Uhrzeit ist 23:59 zu setzen.

Datenschutz $-?
';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.FK_ER00_Sammelereignis IS
'
Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID IS
'... ist die eindeutige Nummer eines Ereignisses, i.d.R. einer Naturkatastrophe. Die Nummer wird von RV durch das Excel-Sheet NN vorgegeben.

aus NATKAT_EREIGNIS_ID

Datenschutz $-?';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name IS
'... ist die Bezeichnung des Sammelereignisses

aus EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER00_Sammelereignis_man_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.FK_ER01_ER06_SammelergteilSch IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammErgTSch_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.FK_ER06_SammelereignTeil IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.SK_ER01_ER06_SammelergteilSch IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER06_SammelergteilSch_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.FK_ER06_GE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.FK_ER06_SammelereignTeil IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird


Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.FK_GE01_Gebiet IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.SK_ER06_GE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_GE01_NatKatZone_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.FK_ER00_Sammelereignis IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.SK_ER06_SammelereignTeil IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelereignTeil_ER00_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Bearbeitungsstand IS
'... ist eine Notiz zum Bearbeitungsstand des RV-Ereignisses

aus BEARBEITUNGSSTAND

Datenschutz $-?';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Bemerkung IS
'... ist eine Bemerkung zum RV-Ereignis

aus BEMERKUNGEN

Datenschutz $-?';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Beginn IS
'... ist der früheste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

RV_EREIGNISDATUM_START || RV_EREIGNISUHRZEIT_START

Datenschutz $-?
';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Ende IS
'... ist der späteste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgelöst wurde.

RV_EREIGNISDATUM_ENDE || RV_EREIGNISUHRZEIT_ENDE
Bei nicht gefüllter Uhrzeit ist 23:59 zu setzen.

Datenschutz $-?
';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.FK_ER06_SammelereignTeil IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.SammelereignisteilName IS
'... ist die Bezeichnung des RV-Ereignisses

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.Sammelereignisteil_ID IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus RV_EREIGNIS_NAME

Datenschutz $-?';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER06_SammelergTeil_man_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.FK_GE01_Gebiet IS
'
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.PLZ_bis IS
'... ist die gröste PLZ eines PLZ-Bereichs

Datenschutz $-?';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.PLZ_von IS
'... ist die kleinste PLZ eines PLZ-Bereichs

Datenschutz $-?';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE01_Gebiet_PLZBer_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Buchungsdatum IS
'... gibt das Datum an, an dem die Rückstellung gebucht wurde.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.C_Betragsart IS
'... bezeichnet die Art des Betrags:

- IBNR
- Rückversicherungspauschale

Quelle: Excel

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.C_Risikotraeger IS
'...ist das Unternehmenskennzeichen des Risikoträgers. 

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.C_Rueckstellungsart IS
'Art der Rückstellung:

- Rente
- Entschädigung
- Kosten (durch DEVK beauftragte Sachverständige)

abgeleitet aus Excel

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.C_Sparte IS
'... ist die Sparte (hier spezielle Art von Schaden)

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Eintrittsdatum_bis IS
'... definiert zusammen mit Eintrittsdatum_von den Zeitraum, in dem Spätschäden sich ereignet haben, für die diese Rückstellung gebildet worden ist. I.d.R. 31.12. eines Eintrittsjahres.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Eintrittsdatum_von IS
'... definiert zusammen mit Eintrittsdatum_bis den Zeitraum, in dem Spätschäden sich ereignet haben, für die diese Rückstellung gebildet worden ist. I.d.R. 1.1. eines Eintrittsjahres.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Erfassung_Gueltig_Beginn IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Erfassung_Gueltig_Ende IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.FK_LE09_Rueckstellung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Fachlich_Gueltig_Beginn IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Fachlich_Gueltig_Ende IS
'

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Meldedatum_bis IS
'... ... gibt das Datum an, bis zu dem die pauschale Rückstellung gültig sein soll, d.h. Ende des Zeitraums für das Meldedatum von Spätschäden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Meldedatum_von IS
'... gibt das Datum an, ab dem die pauschale Rückstellung gültig sein soll, d.h. Anfang des Zeitraums für das Meldedatum von Spätschäden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.RueckstellungsbetragInEuro IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn später eine Zahlung in einer Fremdwährung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.Sparte_Bez IS
'Bezeichner der Sparte aus Sicht des Fachbereichs Schaden. Wird benötigt, um innerhalb bestimmter Spartenkennziffern eine weitere Unterteilung herbeizuführen, z.B. in 60 (Elementar) Unterteilung in Hausrat und Wohngebäude.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE09_Rueckst_Man_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE ER00_ER01_SammelergSchaden_BL IS
'Beziehung zwischen Schaden (ER01) und Sammelereignisl (ER00) im Sinne von

FK_ER01_Schaden gehört zu FK_ER00_Sammelereignis

Business Key:

NATKAT_EREIGNIS_ID (Nummer des Sammelereignises)

ICLCLAIMASSIGN.CLIENT (Mandant)
ICLCLAIMASSIGN.CLAIM (Schadennummer)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

Die Nummer des Sammelereignises (NATKAT_EREIGNIS_ID) wird per Excel geliefert. 

Die Beziehung besteht genau dann, wenn.

- ER01_Schaden_DWH_01_HBS.C_SammelereignisKlasse = ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse
- ER01_Schaden_DWH_01_HBS.Eintrittsdatum liegt zwischen ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn und Eintrittsdatum_Ende
- es existiert ein ER01_GE01_Schadenort_BL -> GE01_Gebiet_Sch_01_HBS.Postleitzahl_A liegt zwischen ER00_GE01_NatKatZone_BL.GE01_Gebiet_PLZBer_01_HBS.PLZ_von und PLZ_bis 



';

COMMENT ON TABLE ER00_GE01_NatKatZone_BL IS
'
';

COMMENT ON TABLE ER00_Sammelereignis_BH IS
'... ist ein von RV per Excel vorgegebenes Ereignis, i.d.R. eine Naturkatastrophe, dem anhand von vorgegebenen Kriterien eine Menge von Schäden zugeordnet werden kann.

Business-Key ist die von RV vorgegebene Kennung "NATKAT_EREIGNIS_ID" (SammelEreignis_ID)';

COMMENT ON TABLE ER00_Sammelereignis_man_01_HBS IS
'

';

COMMENT ON TABLE ER01_ER06_SammelergteilSch_BL IS
'Beziehung zwischen Schaden (ER01) und Sammelereignis-Teil (ER06) im Sinne von

FK_ER01_Schaden gehört zu dem Teil FK_ER06_SammelereignTeil eines Sammelereignisses

Business Key:
ICLCLAIMASSIGN.CLIENT (Mandant)
ICLCLAIMASSIGN.CLAIM (Schadennummer)

RV_EREIGNIS_ID (Nummer des Sammelereignisteils)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

Die Nummer des Sammelereignisteils (RV_EREIGNIS_ID) wird per Excel geliefert. 

Die Beziehung besteht genau dann, wenn.

- ER01_Schaden_DWH_01_HBS.C_SammelereignisKlasse = ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse für das eindeutig zu ER06 gehörende ER00
- ER01_Schaden_DWH_01_HBS.Eintrittsdatum liegt zwischen ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Beginn und Eintrittsdatum_Ende
- es existiert ein ER01_GE01_Schadenort_BL -> GE01_Gebiet_Sch_01_HBS.Postleitzahl_A liegt zwischen ER06_GE01_NatKatZone_BL.GE01_Gebiet_PLZBer_01_HBS.PLZ_von und PLZ_bis 

';

COMMENT ON TABLE ER06_SammelereignTeil_ER00_BW IS
'.. ist ein für Zwecke der Rückversicherung gesondert betrachteter Teil eines Sammelereignisses. Dafür sind i.d.R. Gegebenheiten des RV-Vertrags maßgebend, die sich auf  zeitliche, geografische oder inhaltliche Eigenschaften des Sammelereignisses beziehen (Einschränkung der Dauer in Stunden, regionale Einschränkung, Einschränkung z.B. auf Windstärke)

aus Excel

Business Key:
die von RV vorgegebene Kennung "RV_EREIGNIS_ID"
';

COMMENT ON TABLE LE09_Rueckst_Man_01_HBS IS
'für pauschale Rückstellungen in SHUKR';

