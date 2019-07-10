--<ScriptOptions statementTerminator=";"/>
-- Version 11554

ALTER TABLE DET_Dokument_Status DROP CONSTRAINT DET_Dokument_Status_PK;

ALTER TABLE DET_Kontext DROP CONSTRAINT DET_Kontext_PK;

ALTER TABLE DET_Ladelauf DROP CONSTRAINT DET_Ladelauf_PK;

ALTER TABLE DET_Scanstapel DROP CONSTRAINT DET_Scanstapel_PK;

ALTER TABLE DIM_Arbeitschritt DROP CONSTRAINT DIM_Arbeitschritt_PK;

ALTER TABLE DIM_Bearbeiter DROP CONSTRAINT DIM_Bearbeiter_PK;

ALTER TABLE DIM_Bearbeiter_Grp DROP CONSTRAINT DIM_Bearbeiter_Grp_PK;

ALTER TABLE DIM_Datum DROP CONSTRAINT DIM_Datum_PK;

ALTER TABLE DIM_Dokumentart DROP CONSTRAINT DIM_Dokumentart_PK;

ALTER TABLE DIM_Empfangskanal DROP CONSTRAINT DIM_Empfangskanal_PK;

ALTER TABLE DIM_Geschaeftsber DROP CONSTRAINT DIM_Geschaeftsbereich_PK;

ALTER TABLE DIM_Halbjahr DROP CONSTRAINT DIM_Halbjahr_PK;

ALTER TABLE DIM_JNKENNZ DROP CONSTRAINT DIM_JNKENNZ_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT DIM_Jahr_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_Quartal DROP CONSTRAINT DIM_Quartal_PK;

ALTER TABLE DIM_RD_Ebene1 DROP CONSTRAINT DIM_RD_Ebene1_PK;

ALTER TABLE DIM_RD_Ebene2 DROP CONSTRAINT DIM_RD_Ebene2_PK;

ALTER TABLE DIM_RD_Ebene3 DROP CONSTRAINT DIM_RD_Ebene3_PK;

ALTER TABLE DIM_Regionaldir DROP CONSTRAINT DIM_Regionaldirektion_PK;

ALTER TABLE DIM_Routing_BZA DROP CONSTRAINT DIM_Routing_PK;

ALTER TABLE DIM_Stapelklasse DROP CONSTRAINT DIM_Stapelklasse_PK;

ALTER TABLE DIM_Status_fachlich DROP CONSTRAINT DIM_Status_fachlich_PK;

ALTER TABLE DIM_Veraenderungsart DROP CONSTRAINT DIM_Veraenderungsart_PK;

ALTER TABLE DIM_Woche DROP CONSTRAINT DIM_Woche_PK;

ALTER TABLE F_Dokument_Status DROP CONSTRAINT F_Dokument_Status_PK;

ALTER TABLE F_Scanstapel DROP CONSTRAINT F_Scanstapel_PK;

DROP TABLE DET_Dokument_Status;

DROP TABLE DET_Kontext;

DROP TABLE DET_Ladelauf;

DROP TABLE DET_Scanstapel;

DROP TABLE DIM_Arbeitschritt;

DROP TABLE DIM_Bearbeiter;

DROP TABLE DIM_Bearbeiter_Grp;

DROP TABLE DIM_Datum;

DROP TABLE DIM_Dokumentart;

DROP TABLE DIM_Empfangskanal;

DROP TABLE DIM_Geschaeftsber;

DROP TABLE DIM_Halbjahr;

DROP TABLE DIM_JNKENNZ;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_Monat;

DROP TABLE DIM_Quartal;

DROP TABLE DIM_RD_Ebene1;

DROP TABLE DIM_RD_Ebene2;

DROP TABLE DIM_RD_Ebene3;

DROP TABLE DIM_Regionaldir;

DROP TABLE DIM_Routing_BZA;

DROP TABLE DIM_Stapelklasse;

DROP TABLE DIM_Status_fachlich;

DROP TABLE DIM_Veraenderungsart;

DROP TABLE DIM_Woche;

DROP TABLE F_Dokument_Status;

DROP TABLE F_Scanstapel;

DROP TABLE Releasestand;
