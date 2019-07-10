--<ScriptOptions statementTerminator=";"/>
-- Version 12151

ALTER TABLE MD27_Grosskundenvertraege DROP CONSTRAINT MD27_Grosskundenvertraege_PK;

ALTER TABLE MD28_Telegutachten DROP CONSTRAINT MD28_Telegutachten_PK;

ALTER TABLE MD29_VTP_Mitarbeiter DROP CONSTRAINT MD29_VTP_Mitarbeiter_PK;

DROP TABLE MD27_Grosskundenvertraege;

DROP TABLE MD28_Telegutachten;

DROP TABLE MD29_VTP_Mitarbeiter;

