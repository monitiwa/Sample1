--<ScriptOptions statementTerminator=";"/>
-- Version 9761

ALTER TABLE DET_Schaden DROP CONSTRAINT DET_Schaden_PK;

ALTER TABLE DET_ZhlgFordDetail DROP CONSTRAINT DET_ZhlgFordDetail_PK;

ALTER TABLE DIM_AbschlussVerfahren DROP CONSTRAINT DET_AbschlussVerfahren_PK;

ALTER TABLE DIM_AusgangVerfahren DROP CONSTRAINT DET_AusgangVerfahren_PK;

ALTER TABLE DIM_Fachgebiet DROP CONSTRAINT DIM_Fachgebiet_PK;

ALTER TABLE DIM_Geltungsbereich DROP CONSTRAINT DET_Geltungsbereich_PK;

ALTER TABLE DIM_Grosskunde DROP CONSTRAINT DIM_Grosskunde_PK;

ALTER TABLE DIM_Rueckversicherung DROP CONSTRAINT DIM_Rueckversicherung_PK;

ALTER TABLE DIM_Schaden_Besonderheit DROP CONSTRAINT DIM_Schaden_Besonderheit_PK;

ALTER TABLE DIM_Unfallart DROP CONSTRAINT DET_Unfallart_PK;

ALTER TABLE DIM_Verletzung DROP CONSTRAINT DET_Verletzung_PK;

ALTER TABLE DIM_Verletzung_Koerperteil DROP CONSTRAINT DET_Verletzung_Koerperteil_PK;

ALTER TABLE DMK_Schadenmerkmale DROP CONSTRAINT DMK_Schadenmerkmale_PK;

ALTER TABLE DMK_Vertragsmerkmale DROP CONSTRAINT DMK_Vertragsmerkmale_PK;

ALTER TABLE F_Schaden DROP CONSTRAINT F_Schaden_PK;

ALTER TABLE F_Teilschaden DROP CONSTRAINT F_Teilschaden_PK;

ALTER TABLE F_Zhlg_Ford_Detail DROP CONSTRAINT F_Zhlg_Ford_Detail_PK;

ALTER TABLE R_Schaden_Apraxa_RA DROP CONSTRAINT R_Schaden_Apraxa_RA_PK;

ALTER TABLE R_Schaden_Eigener_RA DROP CONSTRAINT R_Schaden_Eigener_RA;

DROP INDEX DMK_Schadenmerkmale_IDX;

DROP INDEX DMK_Vertragsmerkmale_IDX;

DROP TABLE DET_Schaden;

DROP TABLE DET_ZhlgFordDetail;

DROP TABLE DIM_AbschlussVerfahren;

DROP TABLE DIM_AusgangVerfahren;

DROP TABLE DIM_Fachgebiet;

DROP TABLE DIM_Geltungsbereich;

DROP TABLE DIM_Grosskunde;

DROP TABLE DIM_Rueckversicherung;

DROP TABLE DIM_Schaden_Besonderheit;

DROP TABLE DIM_Unfallart;

DROP TABLE DIM_Verletzung;

DROP TABLE DIM_Verletzung_Koerperteil;

DROP TABLE DMK_Schadenmerkmale;

DROP TABLE DMK_Vertragsmerkmale;

DROP TABLE F_Schaden;

DROP TABLE F_Teilschaden;

DROP TABLE F_Zhlg_Ford_Detail;

DROP TABLE R_Schaden_Apraxa_RA;

DROP TABLE R_Schaden_Eigener_RA;

