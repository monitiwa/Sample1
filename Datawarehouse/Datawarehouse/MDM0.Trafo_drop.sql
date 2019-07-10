--<ScriptOptions statementTerminator=";"/>

ALTER TABLE MD01_Transformation DROP CONSTRAINT MD01_Transformation_PK;

ALTER TABLE MD02_Trafo_Input_Attribut DROP CONSTRAINT MD02_Trafo_Attribut_PK;

ALTER TABLE MD03_Trafo_Input_Knoten DROP CONSTRAINT MD03_Trafo_Input_Knoten_PK;

ALTER TABLE MD04_Trafo_Input_Uebergang DROP CONSTRAINT MD04_Trafo_Input_Uebergang_PK;

ALTER TABLE MD05_Trafo_Output DROP CONSTRAINT MD05_Trafo_Output_PK;

ALTER TABLE MD06_Trafo_Output_Attribut DROP CONSTRAINT MD06_Trafo_Attribut_PK;

DROP TABLE MD01_Transformation;

DROP TABLE MD02_Trafo_Input_Attribut;

DROP TABLE MD03_Trafo_Input_Knoten;

DROP TABLE MD04_Trafo_Input_Uebergang;

DROP TABLE MD05_Trafo_Output;

DROP TABLE MD06_Trafo_Output_Attribut;

