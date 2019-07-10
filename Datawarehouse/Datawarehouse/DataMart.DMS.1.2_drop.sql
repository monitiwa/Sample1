--<ScriptOptions statementTerminator=";"/>
-- Version 13599

ALTER TABLE DET_Dokument_Status DROP CONSTRAINT DET_Dokument_Status_PK;

ALTER TABLE DIM_Prozessmodell DROP CONSTRAINT DIM_Prozessmodell_PK;

ALTER TABLE F_Dokument_Status DROP CONSTRAINT F_Dokument_Status_PK;

DROP TABLE DET_Dokument_Status;

DROP TABLE DIM_Prozessmodell;

DROP TABLE F_Dokument_Status;

