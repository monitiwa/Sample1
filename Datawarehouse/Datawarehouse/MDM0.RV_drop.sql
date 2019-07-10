--<ScriptOptions statementTerminator=";"/>

ALTER TABLE MD08_Gefahr_S DROP CONSTRAINT MD08_Gefahr_S_PK;

ALTER TABLE MD09_Gefahr_Def_S DROP CONSTRAINT MD09_Gefahr_Def_S_PK;

ALTER TABLE MD10_MD13_NatKat_Geb_L DROP CONSTRAINT MD10_MD13_NatKat_Geb_L_PK;

ALTER TABLE MD10_NatKatEreignis_S DROP CONSTRAINT MD10_NatKatEreignis_S_PK;

ALTER TABLE MD11_MD13_RVEreig_Geb_L DROP CONSTRAINT MD11_MD13_RVEreig_Geb_L_PK;

ALTER TABLE MD11_RV_NatKatEreignis_S DROP CONSTRAINT MD11_RV_NatKatEreignis_S_PK;

ALTER TABLE MD13_Gebiet_PlzBer_S DROP CONSTRAINT MD13_Gebiet_PlzBer_S_PK;

DROP TABLE MD08_Gefahr_S;

DROP TABLE MD09_Gefahr_Def_S;

DROP TABLE MD10_MD13_NatKat_Geb_L;

DROP TABLE MD10_NatKatEreignis_S;

DROP TABLE MD11_MD13_RVEreig_Geb_L;

DROP TABLE MD11_RV_NatKatEreignis_S;

DROP TABLE MD13_Gebiet_PlzBer_S;
