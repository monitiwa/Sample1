--<ScriptOptions statementTerminator=";"/>
-- Version 9090

CREATE TABLE WE01_Willenserklaerung_BH (
		SK_WE01_Willenserklaerung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE WE01_Willenserklaerung_BH ADD CONSTRAINT WE01_Willenserklaerung_PK PRIMARY KEY
	(SK_WE01_Willenserklaerung);

