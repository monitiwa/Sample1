--<ScriptOptions statementTerminator=";"/>
-- Version 11385

CREATE TABLE GP03_GP04_BL (
		SK_GP03_GP04 VARCHAR2(64 CHAR) NOT NULL,
		FK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		FK_GP04_Taetigkeit VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP03_Geschaeftsvorgang_BH (
		SK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP03_Gevo_DMS_01_HBS (
		FK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Geschaeftsvorgang_ID_A VARCHAR2(64 CHAR),
		Vorgangsdatum_Beginn DATE,
		Vorgangsdatum_Ende DATE,
		C_Geschaeftsprozess NUMBER(28 , 0),
		Prozessmodell_ID NUMBER(28 , 0),
		Anzahl_Dokumente NUMBER(10 , 0),
		Anzahl_Seiten NUMBER(10 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP03_IF01_Ausloeser_BL (
		SK_GP03_IF01_Ausloeser VARCHAR2(64 CHAR) NOT NULL,
		FK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		FK_IF01_Dokument VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP03_IF02_BL (
		SK_GP03_IF02 VARCHAR2(64 CHAR) NOT NULL,
		FK_IF02_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		FK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP03_WE01_BL (
		SK_GP03_WE01 VARCHAR2(64 CHAR) NOT NULL,
		FK_GP03_Geschaeftsvorgang VARCHAR2(64 CHAR) NOT NULL,
		FK_WE01_Willenserklaerung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP04_Taetigkeit_BH (
		SK_GP04_Taetigkeit VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE GP04_Taetigkeit_DMS_01_HBS (
		FK_GP04_Taetigkeit VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Geschaeftsvorgang_ID_A VARCHAR2(64 CHAR),
		Taetigkeit_lfd VARCHAR2(10 CHAR),
		Taetigkeitsdatum_Beginn DATE,
		Taetigkeitsdatum_Ende DATE,
		Bearbeiter_tatsaechlich_ID VARCHAR2(24 CHAR),
		Bearbeiter_ermittelt_ID VARCHAR2(24 CHAR),
		Bearbeiter_vorher_ID VARCHAR2(24 CHAR),
		Veraenderungsart_ID NUMBER(28 , 0),
		Veraenderungsbeschreibung VARCHAR2(500 CHAR),
		Taetigkeitsbeschreibung VARCHAR2(1400 CHAR),
		C_durchfuehrende_Stelle NUMBER(28 , 0),
		C_Unterbrechung NUMBER(28 , 0),
		C_Inkraftsetzung NUMBER(28 , 0),
		C_Bearbeiterwechsel NUMBER(28 , 0),
		C_Geschaeftsbereich NUMBER(28 , 0),
		Arbeitsschritt_ID NUMBER(28 , 0),
		Zeitangabe_WV DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE IF01_Dokument_BH (
		SK_IF01_Dokument VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE IF01_Dokument_DMS_01_HBS (
		FK_IF01_Dokument VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Dokument_ID_A VARCHAR2(64 CHAR),
		C_Dokumentart NUMBER(28 , 0),
		C_Empfangskanal NUMBER(28 , 0),
		C_Routing NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE IF01_IF02_BL (
		SK_IF01_IF02 VARCHAR2(64 CHAR) NOT NULL,
		FK_IF02_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		FK_IF01_Dokument VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE IF02_Scanstapel_BH (
		SK_IF02_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE IF02_Scanstapel_DMS_01_HBS (
		FK_IF02_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Stapel_ID VARCHAR2(64 CHAR),
		C_Scanweg NUMBER(28 , 0),
		Anzahl_Dokumente NUMBER(10 , 0),
		Anzahl_Seiten NUMBER(10 , 0),
		Systemeingangsdatum DATE,
		C_Empfangskanal NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE WE01_WE_DMS_01_HBS (
		FK_WE01_Willenserklaerung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		C_WE_Art NUMBER(28 , 0),
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE GP03_GP04_BL ADD CONSTRAINT GP03_GP04_BL_PK PRIMARY KEY
	(SK_GP03_GP04);

ALTER TABLE GP03_Geschaeftsvorgang_BH ADD CONSTRAINT GP03_Geschaeftsvorgang_BH_PK PRIMARY KEY
	(SK_GP03_Geschaeftsvorgang);

ALTER TABLE GP03_Gevo_DMS_01_HBS ADD CONSTRAINT GP03_Gevo_DMS_01_HBS_PK PRIMARY KEY
	(FK_GP03_Geschaeftsvorgang,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GP03_IF01_Ausloeser_BL ADD CONSTRAINT GP03_IF01_Ausloeser_BL_PK PRIMARY KEY
	(SK_GP03_IF01_Ausloeser);

ALTER TABLE GP03_IF02_BL ADD CONSTRAINT GP03_IF02_BL_PK PRIMARY KEY
	(SK_GP03_IF02);

ALTER TABLE GP03_WE01_BL ADD CONSTRAINT GP03_WE01_BL_PK PRIMARY KEY
	(SK_GP03_WE01);

ALTER TABLE GP04_Taetigkeit_BH ADD CONSTRAINT GP04_Taetigkeit_BH_PK PRIMARY KEY
	(SK_GP04_Taetigkeit);

ALTER TABLE GP04_Taetigkeit_DMS_01_HBS ADD CONSTRAINT GP04_Taetigkeit_DMS_01_HBS_PK PRIMARY KEY
	(FK_GP04_Taetigkeit,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE IF01_Dokument_BH ADD CONSTRAINT IF01_Dokument_BH_PK PRIMARY KEY
	(SK_IF01_Dokument);

ALTER TABLE IF01_Dokument_DMS_01_HBS ADD CONSTRAINT IF01_Dokument_DMS_01_HBS_PK PRIMARY KEY
	(FK_IF01_Dokument,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE IF01_IF02_BL ADD CONSTRAINT IF01_IF02_BL_PK PRIMARY KEY
	(SK_IF01_IF02);

ALTER TABLE IF02_Scanstapel_BH ADD CONSTRAINT IF02_Scanstapel_BH_PK PRIMARY KEY
	(SK_IF02_Scanstapel);

ALTER TABLE IF02_Scanstapel_DMS_01_HBS ADD CONSTRAINT IF02_Scanstapel_DMS_01_HBS_PK PRIMARY KEY
	(FK_IF02_Scanstapel,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE WE01_WE_DMS_01_HBS ADD CONSTRAINT WE01_WE_DMS_HBS_PK PRIMARY KEY
	(FK_WE01_Willenserklaerung,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE GP03_GP04_BL ADD CONSTRAINT GP03_GP04_BL_Geschvorgang_FK FOREIGN KEY
	(FK_GP03_Geschaeftsvorgang)
	REFERENCES GP03_Geschaeftsvorgang_BH
	(SK_GP03_Geschaeftsvorgang);

ALTER TABLE GP03_GP04_BL ADD CONSTRAINT GP03_GP04_BL_Taetigkeit_FK FOREIGN KEY
	(FK_GP04_Taetigkeit)
	REFERENCES GP04_Taetigkeit_BH
	(SK_GP04_Taetigkeit);

ALTER TABLE GP03_Gevo_DMS_01_HBS ADD CONSTRAINT GP03_Gevo_DMS_01_HBS_FK FOREIGN KEY
	(FK_GP03_Geschaeftsvorgang)
	REFERENCES GP03_Geschaeftsvorgang_BH
	(SK_GP03_Geschaeftsvorgang);

ALTER TABLE GP03_IF01_Ausloeser_BL ADD CONSTRAINT GP03_IF01_Ausl_BL_Dokument_FK FOREIGN KEY
	(FK_IF01_Dokument)
	REFERENCES IF01_Dokument_BH
	(SK_IF01_Dokument);

ALTER TABLE GP03_IF01_Ausloeser_BL ADD CONSTRAINT GP03_IF01_Ausl_BL_GeVo_FK FOREIGN KEY
	(FK_GP03_Geschaeftsvorgang)
	REFERENCES GP03_Geschaeftsvorgang_BH
	(SK_GP03_Geschaeftsvorgang);

ALTER TABLE GP03_IF02_BL ADD CONSTRAINT GP03_IF02_BL_GP03_FK FOREIGN KEY
	(FK_GP03_Geschaeftsvorgang)
	REFERENCES GP03_Geschaeftsvorgang_BH
	(SK_GP03_Geschaeftsvorgang)
	ON DELETE CASCADE;

ALTER TABLE GP03_IF02_BL ADD CONSTRAINT GP03_IF02_BL_IF02_FK FOREIGN KEY
	(FK_IF02_Scanstapel)
	REFERENCES IF02_Scanstapel_BH
	(SK_IF02_Scanstapel);

ALTER TABLE GP03_WE01_BL ADD CONSTRAINT GP03_WE01_BL_Geschaeftsvo_FK FOREIGN KEY
	(FK_GP03_Geschaeftsvorgang)
	REFERENCES GP03_Geschaeftsvorgang_BH
	(SK_GP03_Geschaeftsvorgang);

ALTER TABLE GP03_WE01_BL ADD CONSTRAINT GP03_W_WE01_Willenserklaer_FK FOREIGN KEY
	(FK_WE01_Willenserklaerung)
	REFERENCES WE01_Willenserklaerung_BH
	(SK_WE01_Willenserklaerung)
	ON DELETE CASCADE;

ALTER TABLE GP04_Taetigkeit_DMS_01_HBS ADD CONSTRAINT GP04_Taetigkeit_DMS_01_HBS_FK FOREIGN KEY
	(FK_GP04_Taetigkeit)
	REFERENCES GP04_Taetigkeit_BH
	(SK_GP04_Taetigkeit);

ALTER TABLE IF01_Dokument_DMS_01_HBS ADD CONSTRAINT IF01_Dokument_DMS_01_HBS_FK FOREIGN KEY
	(FK_IF01_Dokument)
	REFERENCES IF01_Dokument_BH
	(SK_IF01_Dokument);

ALTER TABLE IF01_IF02_BL ADD CONSTRAINT IF01_IF02_BL_Dokument_FK FOREIGN KEY
	(FK_IF01_Dokument)
	REFERENCES IF01_Dokument_BH
	(SK_IF01_Dokument);

ALTER TABLE IF01_IF02_BL ADD CONSTRAINT IF01_IF02_BL_Scanstapel_FK FOREIGN KEY
	(FK_IF02_Scanstapel)
	REFERENCES IF02_Scanstapel_BH
	(SK_IF02_Scanstapel);

ALTER TABLE IF02_Scanstapel_DMS_01_HBS ADD CONSTRAINT IF02_Scanstapel_DDMS_01_HBS_FK FOREIGN KEY
	(FK_IF02_Scanstapel)
	REFERENCES IF02_Scanstapel_BH
	(SK_IF02_Scanstapel);

ALTER TABLE WE01_WE_DMS_01_HBS ADD CONSTRAINT WE01_WE_DMS_HBS_FK FOREIGN KEY
	(FK_WE01_Willenserklaerung)
	REFERENCES WE01_Willenserklaerung_BH
	(SK_WE01_Willenserklaerung)
	ON DELETE CASCADE;

