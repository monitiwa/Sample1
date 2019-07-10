--<ScriptOptions statementTerminator=";"/>
-- Version 7565

ALTER TABLE MS50101_11_Registrierdaten DROP CONSTRAINT MS50101_11_Registrierdaten_PK;

ALTER TABLE MS50102_22_Zahlungsdaten DROP CONSTRAINT MS50102_22_Zahlungsdaten_PK;

ALTER TABLE MS50103_33_ReserveForderungsdt DROP CONSTRAINT MS50102_33_ReserveForderungsd1;

ALTER TABLE MS50133_23_Leistungsartendaten DROP CONSTRAINT MS50102_23_Leistungsartendate1;

ALTER TABLE MS50201_Summensatz DROP CONSTRAINT MS50201_Summensatz_PK;

DROP TABLE MS50101_11_Registrierdaten;

DROP TABLE MS50102_22_Zahlungsdaten;

DROP TABLE MS50103_33_ReserveForderungsdt;

DROP TABLE MS50133_23_Leistungsartendaten;

DROP TABLE MS50201_Summensatz;

