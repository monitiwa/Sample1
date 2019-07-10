--<ScriptOptions statementTerminator=";"/>
-- Version 17875

CREATE TABLE MD35_UeberwVerf_vorges (
		ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		gueltig_beginn DATE NOT NULL,
		gueltig_ende DATE NOT NULL,
		ID_UeberwVerf_vorges NUMBER(28 , 0),
		C_Ueberwachungsvariante NUMBER(28 , 0),
		C_Buchungskreis NUMBER(28 , 0),
		C_InEx_Produktgruppe  NUMBER(28 , 0),
		C_Hauptvorgang NUMBER(28 , 0),
		C_Teilvorgang NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD35_UeberwVerf_vorges ADD CONSTRAINT MD35_UeberwVerf_vorges_PK PRIMARY KEY
	(ID,
	 TA_Ladedatum,
	 gueltig_beginn);

COMMENT ON COLUMN MD35_UeberwVerf_vorges.C_Buchungskreis IS
'.... ist für eine Belegposition KT06_BelegPosition_KT01_BW->
	KT06_BelegPosition_InEx_..._WBS.C_Buchungskreis.

Inhalt ''-1'' für "don''t care"

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.C_Hauptvorgang IS
'.... ist für eine Belegposition KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Hauptvorgang.

Inhalt ''-1'' für "don''t care"
Bea: HV = -1 ist bei gesetztem TV nicht zulässig.

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.C_InEx_Produktgruppe  IS
'.... ist für eine Belegposition KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_InEx_Produktgruppe

Inhalt ''-1'' für "don''t care"

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.C_Teilvorgang IS
'.... ist für eine Belegposition KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Teilvorgang.

Inhalt ''-1'' für "don''t care"
Bea: enthält den harmonisierten Wert für HV UND TV!
=> Wenn HV = -1 muss zwingend auch TV = -1 sein!

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.C_Ueberwachungsvariante IS
'.... ist für eine Belegposition KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkasssoObjekt_BH->
	KT05_InExkassoObj_InEx_..._HBS.C_Ueberwachungsvariante

Inhalt ''-1'' für "don''t care"

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.ID IS
'... ist ein eindeutiger Schlüssel, z.B. die Zeilennummer der vorgebenen Mapping-Tabelle';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.ID_UeberwVerf_vorges IS
'.... ist das vorgesehene Überwachungsverfahren für die Konstellation der Atttributwerte.

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.gueltig_beginn IS
'erster Stichtag, zu dem der Satzinhalt Gültigkeit hat.

Datenschutz $-';

COMMENT ON COLUMN MD35_UeberwVerf_vorges.gueltig_ende IS
'Erster Stichtag, an dem der Satzinhalt keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON TABLE MD35_UeberwVerf_vorges IS
'... Hilfstabelle zu Ermittlung des Überwachungsverfahrens, nach dem eine Belegposition überwacht wird (z.B. aus Mahnvariante, Buchungskreis, InExProduktgruppe, Hauptvorgang,Teilvorgang).';

