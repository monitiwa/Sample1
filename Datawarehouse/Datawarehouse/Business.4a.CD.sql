--<ScriptOptions statementTerminator=";"/>
-- Version 19589

CREATE TABLE KT06_BePoLaufProg_InEx_01_WBM (
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		BelegNr_A VARCHAR2(64 CHAR),
		BelegWiederholungsPosNr VARCHAR2(8 CHAR),
		BelegPositionNr VARCHAR2(8 CHAR),
		TeilpositionNr VARCHAR2(8 CHAR),
		DatumZahllauf DATE NOT NULL,
		KennungZahllauf VARCHAR2(24 CHAR),
		Zahlung_lfd VARCHAR2(24 CHAR),
		C_Postenkennzeichen_B NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE KT06_BePoLaufProg_InEx_01_WBM ADD CONSTRAINT KT06_BelPosLPro_InEx_01_WBM_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn,
	 DatumZahllauf);

ALTER TABLE KT06_BePoLaufProg_InEx_01_WBM ADD CONSTRAINT KT06_BelPosLPro_InEx_01_WBM_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

