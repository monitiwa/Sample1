--<ScriptOptions statementTerminator=";"/>
-- Version 13283

CREATE TABLE DET_DOKUMENT_MAX (
		SK_Dokument_Status VARCHAR2(64 CHAR) NOT NULL,
		MAX_DESC CHAR(3 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_DOKUMENT_MAX ADD CONSTRAINT DET_DOKUMENT_MAX_PK PRIMARY KEY
	(SK_Dokument_Status);
