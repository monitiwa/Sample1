--<ScriptOptions statementTerminator=";"/>

CREATE TABLE MD01_Transformation (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Trafo_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Trafo_Beschreibung VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD02_Trafo_Input_Attribut (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		Input_Attributname VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD03_Trafo_Input_Knoten (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		Trafo_Knoten_ID VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Input_Attributname VARCHAR2(64 CHAR),
		ist_Startknoten CHAR(1 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD04_Trafo_Input_Uebergang (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		Trafo_Vater_Knoten_ID VARCHAR2(64 CHAR) NOT NULL,
		Wert VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Trafo_Sohn_Knoten_ID VARCHAR2(64 CHAR) NOT NULL,
		Operator VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD05_Trafo_Output (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		Trafo_Knoten_ID VARCHAR2(64 CHAR) NOT NULL,
		Output_Attributname VARCHAR2(64 CHAR) NOT NULL,
		Wert VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD06_Trafo_Output_Attribut (
		Trafo_ID VARCHAR2(64 CHAR) NOT NULL,
		Output_Attributname VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD01_Transformation ADD CONSTRAINT MD01_Transformation_PK PRIMARY KEY
	(Trafo_ID,
	 TA_Ladedatum);

ALTER TABLE MD02_Trafo_Input_Attribut ADD CONSTRAINT MD02_Trafo_Attribut_PK PRIMARY KEY
	(Trafo_ID,
	 Input_Attributname,
	 TA_Ladedatum);

ALTER TABLE MD03_Trafo_Input_Knoten ADD CONSTRAINT MD03_Trafo_Input_Knoten_PK PRIMARY KEY
	(Trafo_ID,
	 Trafo_Knoten_ID,
	 TA_Ladedatum);

ALTER TABLE MD04_Trafo_Input_Uebergang ADD CONSTRAINT MD04_Trafo_Input_Uebergang_PK PRIMARY KEY
	(Trafo_ID,
	 Trafo_Vater_Knoten_ID,
	 Wert,
	 TA_Ladedatum);

ALTER TABLE MD05_Trafo_Output ADD CONSTRAINT MD05_Trafo_Output_PK PRIMARY KEY
	(Trafo_ID,
	 Trafo_Knoten_ID,
	 Output_Attributname,
	 Wert,
	 TA_Ladedatum);

ALTER TABLE MD06_Trafo_Output_Attribut ADD CONSTRAINT MD06_Trafo_Attribut_PK PRIMARY KEY
	(Trafo_ID,
	 Output_Attributname,
	 TA_Ladedatum);

COMMENT ON COLUMN MD01_Transformation.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD01_Transformation.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD01_Transformation.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD01_Transformation.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD01_Transformation.Trafo_Beschreibung IS
'... beschreibt die Transformation detailliert.

Datenschutz $-?';

COMMENT ON COLUMN MD01_Transformation.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD01_Transformation.Trafo_Kurztext IS
'... beschreibt die Transformation in Kurzform.

Datenschutz $-?';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.Input_Attributname IS
'... ist der für die ganze Transformation eindeutige Name des Inputattributes. 

Datenschutz $-';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD02_Trafo_Input_Attribut.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.Input_Attributname IS
'... bezeichnet das Input-Attribut für diesen Knoten.

Datenschutz $-?';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.Trafo_Knoten_ID IS
'... ist die Identifizierung eines Knotens innerhalb der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD03_Trafo_Input_Knoten.ist_Startknoten IS
'... legt fest, ob der Knoten ein Startknoten der Transformation ist.

Datenschutz $-?';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.Operator IS
'... gibt den Operator an, mit dem der Wahrheitswert zum Wert für das Input-Attribut bestimmt wird. 

DEFAULT: Gleichheit (=)

Datenschutz $-?';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.Trafo_Sohn_Knoten_ID IS
'... identifiziert der Knoten, mit dem der Übergang endet.

Datenschutz $-?';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.Trafo_Vater_Knoten_ID IS
'... identifiziert der Knoten, mit dem der Übergang beginnt.

Datenschutz $-?';

COMMENT ON COLUMN MD04_Trafo_Input_Uebergang.Wert IS
'... ist der Wert für das Inputattribut des Vater-Knotens, bei dem der Übergang zum Sohn-Knoten stattfindet  (eventuell unter Berücksichtigung des Operators).

Datenschutz $-';

COMMENT ON COLUMN MD05_Trafo_Output.Output_Attributname IS
'... identifiziert das Attribut für den Output.

Datenschutz $-?';

COMMENT ON COLUMN MD05_Trafo_Output.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD05_Trafo_Output.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD05_Trafo_Output.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD05_Trafo_Output.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD05_Trafo_Output.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON COLUMN MD05_Trafo_Output.Trafo_Knoten_ID IS
'... identifiziert den Knoten für den Output.

Datenschutz $-?';

COMMENT ON COLUMN MD05_Trafo_Output.Wert IS
'... identifiziert den Wert des Outputs.

Datenschutz $-?';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.Output_Attributname IS
'... ist der für die ganze Transformation eindeutige Name des Outputattributes. 

Datenschutz $-';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD06_Trafo_Output_Attribut.Trafo_ID IS
'... ist die Identifizierung der Transformation.

Datenschutz $-?';

COMMENT ON TABLE MD01_Transformation IS
'... stellt eine (ganze) Transformation dar.';

COMMENT ON TABLE MD02_Trafo_Input_Attribut IS
'... beschreibt eine Input-Spalte der Transformation.';

COMMENT ON TABLE MD03_Trafo_Input_Knoten IS
'... beschreibt einen Knoten des Entscheidungsbaums der Transformation.';

COMMENT ON TABLE MD04_Trafo_Input_Uebergang IS
'... beschreibt eine Kante des Entscheidungsbaums der Transformation.';

COMMENT ON TABLE MD05_Trafo_Output IS
'... beschreibt einen Output eines Knotens der Transformation. Dies Output-Werte sind genau dann relevant, wenn der Knoten ein Blatt des Entscheidungsbaums ist.';

COMMENT ON TABLE MD06_Trafo_Output_Attribut IS
'... beschreibt eine Output-Spalte der Transformation.';

