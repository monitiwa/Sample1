--<ScriptOptions statementTerminator=";"/>

ALTER TABLE MD15_Schadenursache DROP CONSTRAINT MD15_Schadenursache_PK;

ALTER TABLE MD16_Regionaldirektion DROP CONSTRAINT MD16_Regionaldirektion_PK;

ALTER TABLE MD17_Schadenstatus DROP CONSTRAINT MD17_Schadenstatus_PK;

ALTER TABLE MD18_UKZ DROP CONSTRAINT MD18_UKZ_PK;

DROP TABLE MD15_Schadenursache;

DROP TABLE MD16_Regionaldirektion;

DROP TABLE MD17_Schadenstatus;

DROP TABLE MD18_UKZ;

