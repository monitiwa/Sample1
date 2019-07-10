--<ScriptOptions statementTerminator=";"/>
-- Version 12443

ALTER TABLE MD20_DMS_User DROP CONSTRAINT MD20_DMS_User_PK;

ALTER TABLE MD21_DMS_SLA DROP CONSTRAINT MD21_DMS_SLA_PK;

ALTER TABLE MD22_DMS_Arbeitsschritt DROP CONSTRAINT MD22_DMS_Arbeitsschritt_PK;

ALTER TABLE MD23_DMS_Veraenderungsart DROP CONSTRAINT MD23_DMS_Veraenderungsart_PK;

ALTER TABLE MD24_DMS_Status_fachlich DROP CONSTRAINT MD24_DMS_Status_fachlich_PK;

ALTER TABLE MD25_DMS_Prozessmodell DROP CONSTRAINT MD25_DMS_Prozessmodell_PK;

DROP TABLE MD20_DMS_User;

DROP TABLE MD21_DMS_SLA;

DROP TABLE MD22_DMS_Arbeitsschritt;

DROP TABLE MD23_DMS_Veraenderungsart;

DROP TABLE MD24_DMS_Status_fachlich;

DROP TABLE MD25_DMS_Prozessmodell;

