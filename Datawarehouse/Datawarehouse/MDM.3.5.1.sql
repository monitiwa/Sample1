--<ScriptOptions statementTerminator=";"/>
-- Version 13049

CREATE TABLE MD32_Par_Vorw_Land (
		ID_Par_Vorw_Land NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Land_Vorwahl VARCHAR2(8 CHAR) NOT NULL,
		Land_Bezeichnung VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD32_Par_Vorw_Land ADD CONSTRAINT MD32_Par_Vorw_Land_PK PRIMARY KEY
	(ID_Par_Vorw_Land,
	 TA_Ladedatum);

COMMENT ON COLUMN MD32_Par_Vorw_Land.ID_Par_Vorw_Land IS
'Entspricht der von PARIS verwendeten ID für die Ländervorwahl
wie in PA01_232.TEL_NR_LAND

Datenschutz $-';

COMMENT ON COLUMN MD32_Par_Vorw_Land.Land_Bezeichnung IS
'Bezeichnung des Landes';

COMMENT ON COLUMN MD32_Par_Vorw_Land.Land_Vorwahl IS
'Ländervorwahl

z.B. 
0093		Afghanistan 
0020		Ägypten 
00355		Albanien
00213		Algerien
001340	Amerikanische Jungferninseln
00376		Andorra
00244		Angola
001264	Anguilla
001268	Antigua, Barbuda 
00599		Antillen (niederländische)
...';

COMMENT ON COLUMN MD32_Par_Vorw_Land.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD32_Par_Vorw_Land.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD32_Par_Vorw_Land.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD32_Par_Vorw_Land.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD32_Par_Vorw_Land.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE MD32_Par_Vorw_Land IS
'enthält das Mapping für Paris-Vorwahlkennzeichen zu Telefonvorwahlnummern und Länderbezeichnungen
';

