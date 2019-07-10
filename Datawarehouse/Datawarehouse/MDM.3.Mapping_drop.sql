--<ScriptOptions statementTerminator=";"/>
-- Version 10640

ALTER TABLE MD07_Spaet_Rueckvers_Pausch DROP CONSTRAINT MD07_Spaet_Rueckvers_Pausch_PK;

ALTER TABLE MD07_Spaet_Rueckvers_Pausch DROP CONSTRAINT MD07_Spaet_Rueckvers_Pausch_UC;

ALTER TABLE MD15_Schadenursache DROP CONSTRAINT MD15_Schadenursache_PK;

ALTER TABLE MD26_Auswertung_individuell DROP CONSTRAINT MD26_Auswertung_individuell_PK;

ALTER TABLE MD30_SSP_RVP_Ausw_indiv DROP CONSTRAINT MD30_SSP_RVP_Ausw_indiv;

ALTER TABLE MD31_Feiertagskalender DROP CONSTRAINT MD31_Feiertagskalender_PK;

DROP TABLE MD07_Spaet_Rueckvers_Pausch;

DROP TABLE MD15_Schadenursache;

DROP TABLE MD26_Auswertung_individuell;

DROP TABLE MD30_SSP_RVP_Ausw_indiv;

DROP TABLE MD31_Feiertagskalender;

