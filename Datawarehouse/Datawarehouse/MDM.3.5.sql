--<ScriptOptions statementTerminator=";"/>
-- Version 12151

CREATE TABLE MD27_Grosskundenvertraege (
		ID_Grosskunden_VNR NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		gueltig_beginn DATE NOT NULL,
		gueltig_ende DATE NOT NULL,
		Vertragsnummer VARCHAR2(24 CHAR) NOT NULL,
		Szenario VARCHAR2(500 CHAR) NOT NULL,
		Bereich VARCHAR2(24 CHAR) NOT NULL,
		VN_Kurz VARCHAR2(500 CHAR) NOT NULL,
		VN_Lang VARCHAR2(500 CHAR) NOT NULL,
		C_Grosskunde NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD28_Telegutachten (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		gueltig_beginn DATE NOT NULL,
		gueltig_ende DATE NOT NULL,
		Szenario VARCHAR2(500 CHAR) NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Anzahl_Telegutachten_KH NUMBER(10 , 0) NOT NULL,
		Anzahl_Telegutachten_KK NUMBER(10 , 0) NOT NULL,
		Anzahl_Telegutachten_PH NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE MD29_VTP_Mitarbeiter (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		gueltig_beginn DATE NOT NULL,
		gueltig_ende DATE NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		Szenario VARCHAR2(500 CHAR) NOT NULL,
		Anzahl_VTP_insgesamt NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_DEVK NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_Sparda NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_VTM NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_MBER NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_BB NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_VL_Sparda NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_uebrige NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_Einstieg NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_Regel NUMBER(10 , 0) NOT NULL,
		Anzahl_VTP_Spezial NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD27_Grosskundenvertraege ADD CONSTRAINT MD27_Grosskundenvertraege_PK PRIMARY KEY
	(ID_Grosskunden_VNR,
	 TA_Ladedatum,
	 gueltig_beginn);

ALTER TABLE MD28_Telegutachten ADD CONSTRAINT MD28_Telegutachten_PK PRIMARY KEY
	(ID_Regionaldirektion,
	 TA_Ladedatum,
	 gueltig_beginn);

ALTER TABLE MD29_VTP_Mitarbeiter ADD CONSTRAINT MD29_VTP_Mitarbeiter_PK PRIMARY KEY
	(ID_Regionaldirektion,
	 TA_Ladedatum,
	 gueltig_beginn);

COMMENT ON COLUMN MD27_Grosskundenvertraege.Bereich IS
'Identifikation des Bereichs bzw. der Gruppe, aus der die Anforderung / der Sondervertrag stammt.

aus SC3_GROSSKUNDEN.BEREICH

Datenschutz $-?';

COMMENT ON COLUMN MD27_Grosskundenvertraege.Szenario IS
'Szenario des Exports, um Varianten zu erkennen

aus SC3_GROSSKUNDEN.SZENARIO

Datenschutz $-?';

COMMENT ON COLUMN MD27_Grosskundenvertraege.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD27_Grosskundenvertraege.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD27_Grosskundenvertraege.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD27_Grosskundenvertraege.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD27_Grosskundenvertraege.VN_Kurz IS
'Kurzbezeichner des Großkunden / des Sondervertrags

aus SC3_GROSSKUNDEN.VN_KURZ

Datenschutz $-?';

COMMENT ON COLUMN MD27_Grosskundenvertraege.VN_Lang IS
'Langbezeichner / Hinweistext zum Sondervertrag / Großkunden

aus SC3_GROSSKUNDEN.VERSICHERUNGSNEHMER_HINWEIS

Datenschutz $-?';

COMMENT ON COLUMN MD27_Grosskundenvertraege.Vertragsnummer IS
'Vertragsnummer bzw. auch Angabe der ersten Stellen der Vertragsnummer, die zur Identifikation der Sonderverträge benötigt werden.

aus SC3_GROSSKUNDEN.VERTRAG

Datenschutz $-?';

COMMENT ON COLUMN MD27_Grosskundenvertraege.gueltig_beginn IS
'erster Stichtag, zu dem der Satzinhalt Gültigkeit hat.

aus SC3_GROSSKUNDEN.STICHTAG

Datenschutz $-';

COMMENT ON COLUMN MD27_Grosskundenvertraege.gueltig_ende IS
'Erster Stichtag, an dem der Satzinhalt keine Gültigkeit mehr hat.

aus SC3_GROSSKUNDEN.STICHTAG der folgenden Lieferung

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.Anzahl_Telegutachten_KH IS
'Anzahl der Telegutachten im Bereich Kraftfahrt Haftpflicht

aus SC4_TELEGUTACHTEN.KH_ANZ

Datenschutz $-?';

COMMENT ON COLUMN MD28_Telegutachten.Anzahl_Telegutachten_KK IS
'Anzahl der Telegutachten im Bereich Kraftfahrt Kasko

aus SC4_TELEGUTACHTEN.KK_ANZ

Datenschutz $-?';

COMMENT ON COLUMN MD28_Telegutachten.Anzahl_Telegutachten_PH IS
'Identifikation des Bereichs bzw. der Gruppe, aus der die Anforderung / der Sondervertrag stammt.

aus SC4_TELEGUTACHTEN.PH_ANZ

Datenschutz $-?';

COMMENT ON COLUMN MD28_Telegutachten.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.FK_SC01_Schluessel

anhand SC4_TELEGUTACHTEN.RD';

COMMENT ON COLUMN MD28_Telegutachten.Regionaldirektion_kurz IS
'Nummer der RD – zweistellig mit führender Null = Kurzbezeichnung für die RD oder Zentrale

aus SC4_TELEGUTACHTEN.RD

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.Szenario IS
'Szenario des Exports, um Varianten zu erkennen

aus  SC4_TELEGUTACHTEN.SZENARIO

Datenschutz $-?';

COMMENT ON COLUMN MD28_Telegutachten.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.gueltig_beginn IS
'erster Stichtag, zu dem der Satzinhalt Gültigkeit hat.

aus  SC4_TELEGUTACHTEN.STICHTAG

Datenschutz $-';

COMMENT ON COLUMN MD28_Telegutachten.gueltig_ende IS
'Erster Stichtag, an dem der Satzinhalt keine Gültigkeit mehr hat.

aus  SC4_TELEGUTACHTEN.STICHTAG der folgenden Lieferung

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_BB IS
'Anzahl der Vertriebspartner BB ???

aus SC5_ VTP_MITARBEITER.BB

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_DEVK IS
'Anzahl der Vertriebspartner DEVK

aus SC5_ VTP_MITARBEITER.DEVK

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_Einstieg IS
'Anzahl der Vertriebspartner mit Vollmachtsstufe Einstieg

aus SC5_ VTP_MITARBEITER.EINSTIEG

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_MBER IS
'????

aus SC5_ VTP_MITARBEITER.MBER

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_Regel IS
'Anzahl der Vertriebspartner mit Vollmachtsstufe Regel

aus SC5_ VTP_MITARBEITER.REGEL

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_Sparda IS
'Anzahl der Vertriebspartner Sparda

aus SC5_ VTP_MITARBEITER.Sparda

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_Spezial IS
'Anzahl der Vertriebspartner mit Vollmachtsstufe Spezial

aus SC5_ VTP_MITARBEITER.SPEZIAL

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_VL_Sparda IS
'Anzahl der Vertriebsleiter Sparda innerhalb der Vertriebspartner

aus SC5_ VTP_MITARBEITER.VL-Sparda

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_VTM IS
'Anzahl der Vertrauensmänner innerhalb der Vertriebspartner

aus SC5_ VTP_MITARBEITER.VTM

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_insgesamt IS
'Anzahl der Vertriebspartner insgesamt

aus SC5_ VTP_MITARBEITER.insgesamt

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Anzahl_VTP_uebrige IS
'Anzahl der übrigen Vertriebspartner 

aus SC5_ VTP_MITARBEITER.übrige

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.FK_SC01_Schluessel

anhand SC5_ VTP_MITARBEITER.RD';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Regionaldirektion_kurz IS
'Nummer der RD – zweistellig mit führender Null = Kurzbezeichnung für die RD oder Zentrale

aus SC5_ VTP_MITARBEITER.RD

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Regionaldirektion_lang IS
'Langtext für die RD oder Zentrale

aus SC5_ VTP_MITARBEITER.RD_NAME

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.Szenario IS
'Szenario des Exports, um Varianten zu erkennen

aus SC5_ VTP_MITARBEITER.SZENARIO

Datenschutz $-?';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.gueltig_beginn IS
'erster Stichtag, zu dem der Satzinhalt Gültigkeit hat.

aus  SC5_ VTP_MITARBEITER.STICHTAG

Datenschutz $-';

COMMENT ON COLUMN MD29_VTP_Mitarbeiter.gueltig_ende IS
'Erster Stichtag, an dem der Satzinhalt keine Gültigkeit mehr hat.

aus  SC5_ VTP_MITARBEITER.STICHTAG der folgenden Lieferung

Datenschutz $-';

COMMENT ON TABLE MD27_Grosskundenvertraege IS
'Angaben über Verrträge von Großkunden oder Sonderverträge.';

COMMENT ON TABLE MD28_Telegutachten IS
'Anzahl der Telegutachten pro RD, Stichtag und KH/KK/PH';

COMMENT ON TABLE MD29_VTP_Mitarbeiter IS
'Anzahl der VTP_Mitarbeiter pro RD, Stichtag und weiterer Eigenschaften';

