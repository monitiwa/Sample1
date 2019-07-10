--<ScriptOptions statementTerminator=";"/>

ALTER TABLE SC01_Schluessel DROP CONSTRAINT SC01_Schluessel_HUB_PK;

ALTER TABLE SC02_Schluesselbedeutung DROP CONSTRAINT SC02_Schluessel_PK;

ALTER TABLE SC04_DWH_Tabelle DROP CONSTRAINT SC04_DWH_Tabelle_3NF_PK;

ALTER TABLE SC05_DWH_Attribut DROP CONSTRAINT SC05_DWH_Attribut_3NF_PK;

ALTER TABLE SC06_DWH_Domaene DROP CONSTRAINT SC06_DWH_Kodierungsgruppe_3NF1;

ALTER TABLE SC07_Harmonisierung DROP CONSTRAINT SC07_Harmonisierung_PK;

ALTER TABLE SC08_ValideWerte DROP CONSTRAINT SC08_Validierung_PK;

ALTER TABLE SC09_Fehlertabelle DROP CONSTRAINT SC09_Fehlertabelle_PK;

ALTER TABLE SC10_Validierungsregel DROP CONSTRAINT SC10_Validierungsregel_PK;

ALTER TABLE SC11_Kennzeichen_Aggr DROP CONSTRAINT SC11_Kennzeichen_Aggr_PK;

DROP INDEX SC01_Schluessel_HUB_IDX;

DROP INDEX SC02_Schluesselbedeutg_Hist_I;

DROP INDEX SC02_Schluesselbedeutung_IDX;

DROP INDEX SC04_DWH_Tabelle_Hist_I;

DROP INDEX SC04_DWH_Tabelle_IDX;

DROP INDEX SC05_DWH_Attribut_Hist_I;

DROP INDEX SC05_DWH_Attribut_IDX;

DROP INDEX SC06_DWH_Domaene_Hist_I;

DROP INDEX SC06_DWH_Domaene_IDX;

DROP INDEX SC07_Harmonisierung_Hist_I;

DROP INDEX SC07_Harmonisierung_IDX;

DROP INDEX SC11_Kennzeichen_Aggr_FK_IDX;

DROP INDEX SC11_Kennzeichen_Aggr_Hist_IDX;

DROP TABLE SC01_Schluessel;

DROP TABLE SC02_Schluesselbedeutung;

DROP TABLE SC04_DWH_Tabelle;

DROP TABLE SC05_DWH_Attribut;

DROP TABLE SC06_DWH_Domaene;

DROP TABLE SC07_Harmonisierung;

DROP TABLE SC08_ValideWerte;

DROP TABLE SC09_Fehlertabelle;

DROP TABLE SC10_Validierungsregel;

DROP TABLE SC11_Kennzeichen_Aggr;

CREATE SCHEMA AUTHORIZATION Schluesselsysteme;

CREATE TABLE SC01_Schluessel (
		SK_SC01_Schluessel NUMBER(28 , 0) NOT NULL,
		TA_Extraktionsdatum DATE NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Domaene VARCHAR2(64 CHAR) NOT NULL,
		BK_SC01_Schluessel VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC02_Schluesselbedeutung (
		ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		FK_SC01_Schluessel NUMBER(28 , 0) NOT NULL,
		Sprache VARCHAR2(24 CHAR) NOT NULL,
		Kurzbezeichnung VARCHAR2(24 CHAR) NOT NULL,
		Kurztext VARCHAR2(64 CHAR) NOT NULL,
		Langtext VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC04_DWH_Tabelle (
		Tabellenname VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		DWH_Ebene VARCHAR2(8 CHAR) NOT NULL,
		DWH_Tabellenart VARCHAR2(8 CHAR) NOT NULL,
		KNZ_Virtuell VARCHAR2(8 CHAR) DEFAULT 'N' NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC05_DWH_Attribut (
		Tabellenname VARCHAR2(64 CHAR) NOT NULL,
		Attributname VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		Domaene VARCHAR2(64 CHAR),
		Beschreibung VARCHAR2(180 CHAR) NOT NULL,
		Inhalt_identifizierend VARCHAR2(8 CHAR) NOT NULL,
		Inhalt_schutzwuerdig VARCHAR2(8 CHAR) NOT NULL,
		durch_DSB_bewertet VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC06_DWH_Domaene (
		Domaene VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		Beschreibung VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC07_Harmonisierung (
		ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		FK_SC01_Zielschluessel NUMBER(28 , 0) NOT NULL,
		RAW_Tabellenname VARCHAR2(64 CHAR) NOT NULL,
		RAW_TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		RAW_Attributname VARCHAR2(64 CHAR) NOT NULL,
		RAW_Attributwert VARCHAR2(180 CHAR) NOT NULL,
		RAW_Attributname2 VARCHAR2(64 CHAR),
		RAW_Attributwert2 VARCHAR2(180 CHAR),
		RAW_Attributname3 VARCHAR2(64 CHAR),
		RAW_Attributwert3 VARCHAR2(180 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC08_ValideWerte (
		ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		V_Regel_ID NUMBER(28 , 0) NOT NULL,
		V_Wert VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC09_Fehlertabelle (
		ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Tabellenname VARCHAR2(64 CHAR) NOT NULL,
		Attributname VARCHAR2(64 CHAR) NOT NULL,
		Attribut_TA_Ladedatum DATE NOT NULL,
		V_Regel_ID NUMBER(28 , 0),
		Fehlerklasse NUMBER(10 , 0) NOT NULL,
		Fehlerbeschreibung VARCHAR2(500 CHAR) NOT NULL,
		Fehlertyp VARCHAR2(64 CHAR) NOT NULL,
		Datensatz_Id NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC10_Validierungsregel (
		V_Regel_ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_Quellsystem VARCHAR2(8 CHAR) NOT NULL,
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Tabellenname VARCHAR2(64 CHAR) NOT NULL,
		Attributname VARCHAR2(64 CHAR) NOT NULL,
		Attribut_TA_Ladedatum DATE NOT NULL,
		Fehlerklasse NUMBER(10 , 0) NOT NULL,
		Fehlertyp VARCHAR2(64 CHAR) NOT NULL,
		V_Regel_Kurztext VARCHAR2(64 CHAR) NOT NULL,
		V_Regel_Langtext VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE SC11_Kennzeichen_Aggr (
		SK_SC11_Kennzeichen_Aggr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		FK_SC11_Kennzeichen_P NUMBER(28 , 0) NOT NULL,
		FK_SC11_Kennzeichen NUMBER(28 , 0) NOT NULL,
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Level_Nr_P NUMBER(10 , 0),
		Level_Nr NUMBER(10 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE INDEX SC02_Schluesselbedeutg_Hist_I
	ON SC02_Schluesselbedeutung
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  FK_SC01_Schluessel		ASC,
	  Sprache		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC04_DWH_Tabelle_Hist_I
	ON SC04_DWH_Tabelle
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Tabellenname		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC05_DWH_Attribut_Hist_I
	ON SC05_DWH_Attribut
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Tabellenname		ASC,
	  Attributname		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC06_DWH_Domaene_Hist_I
	ON SC06_DWH_Domaene
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Domaene		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC07_Harmonisierung_Hist_I
	ON SC07_Harmonisierung
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_SC01_Zielschluessel		ASC,
	  RAW_TA_Quellsystem		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC07_Harmonisierung_IDX
	ON SC07_Harmonisierung
	(FK_SC01_Zielschluessel		ASC,
	  RAW_TA_Quellsystem		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX SC11_Kennzeichen_Aggr_Hist_IDX
	ON SC11_Kennzeichen_Aggr
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_SC11_Kennzeichen_P		ASC)
	PCTFREE 0
	LOGGING
	STORAGE (
	INITIAL 65536
	MINEXTENTS 1
	MAXEXTENTS 2147483645
	PCTINCREASE 0
	BUFFER_POOL KEEP);

CREATE UNIQUE INDEX SC01_Schluessel_HUB_IDX
	ON SC01_Schluessel
	(BK_SC01_Schluessel		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX SC02_Schluesselbedeutung_IDX
	ON SC02_Schluesselbedeutung
	(FK_SC01_Schluessel		ASC,
	  Sprache		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX SC04_DWH_Tabelle_IDX
	ON SC04_DWH_Tabelle
	(Tabellenname		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX SC05_DWH_Attribut_IDX
	ON SC05_DWH_Attribut
	(Tabellenname		ASC,
	  Attributname		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX SC06_DWH_Domaene_IDX
	ON SC06_DWH_Domaene
	(Domaene		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX SC11_Kennzeichen_Aggr_FK_IDX
	ON SC11_Kennzeichen_Aggr
	(FK_SC11_Kennzeichen_P		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE SC01_Schluessel ADD CONSTRAINT SC01_Schluessel_HUB_PK PRIMARY KEY
	(SK_SC01_Schluessel);

ALTER TABLE SC02_Schluesselbedeutung ADD CONSTRAINT SC02_Schluessel_PK PRIMARY KEY
	(ID);

ALTER TABLE SC04_DWH_Tabelle ADD CONSTRAINT SC04_DWH_Tabelle_3NF_PK PRIMARY KEY
	(Tabellenname,
	 TA_Ladedatum);

ALTER TABLE SC05_DWH_Attribut ADD CONSTRAINT SC05_DWH_Attribut_3NF_PK PRIMARY KEY
	(Tabellenname,
	 Attributname,
	 TA_Ladedatum);

ALTER TABLE SC06_DWH_Domaene ADD CONSTRAINT SC06_DWH_Kodierungsgruppe_3NF1 PRIMARY KEY
	(Domaene,
	 TA_Ladedatum);

ALTER TABLE SC07_Harmonisierung ADD CONSTRAINT SC07_Harmonisierung_PK PRIMARY KEY
	(ID);

ALTER TABLE SC10_Validierungsregel ADD CONSTRAINT SC10_Validierungsregel_PK PRIMARY KEY
	(V_Regel_ID);

ALTER TABLE SC11_Kennzeichen_Aggr ADD CONSTRAINT SC11_Kennzeichen_Aggr_PK PRIMARY KEY
	(SK_SC11_Kennzeichen_Aggr,
	 TA_Ladedatum);

COMMENT ON COLUMN SC01_Schluessel.BK_SC01_Schluessel IS
'fachlicher Schlüssel aus einer Quelle, aus der geladen wird. Ansonsten: Quelle+Domaene+Schlüssel-Kurzbezeichnung

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.Domaene IS
'

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.SK_SC01_Schluessel IS
'... Primärschlüssel des harmonisierten Schlüssel.
Dieser Wert wird als WErt in den entsprechenden Attributen des DWH genutzt.

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.TA_Extraktionsdatum IS
'Identifiziert eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC01_Schluessel.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.FK_SC01_Schluessel IS
'
Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.ID IS
'
Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Kurzbezeichnung IS
'... ist de harmonisierte  Bezeichnung (meist Abkürzung) im DWH (=Zielschlüssel im DWH).
Beispiele: DE, US, GB für Land; m,  w für Geschlecht; 112, 124 für Wagnisart; entsprechende fremdsprachige Ausdrücke für andere Sprachen.

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Kurztext IS
'... 
Beispiel: Deutschland, Vereinigte Staaten, Großbritannien, für Land; männlich, weiblich für Geschlecht; entsprechende fremdsprachige Ausdrücke für andere Sprachen.

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Langtext IS
'... 
Beispiel: Bundesrepublik Deutschland, Vereinigte Staaten von Amerika, Vereinigtes Königreich von Großbritannien, für Land, männlich, weiblich für Geschlecht; entsprechende fremdsprachige Ausdrücke für andere Sprachen.

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.Sprache IS
'... Bezeichnung der Sprache von Krztext,Langtext und Kodierung in dieser Instanz.
Standardwert für das Data Warehouse der DEVK: DEVK DWH Standard
Falls übersetzt wird, steht hier die Zielsprache der Übersetzung, z.B. Englisch, Außendienst, Eiopa, ...

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC02_Schluesselbedeutung.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC04_DWH_Tabelle.DWH_Ebene IS
'... ist die Ebene im DWH, zu der diese Tabelle gehört.

Da im DVK DWH Harmonisierung ausschließlich beim Übergang von DWH RAW nach DWH BUSINESS geschieht, sind dies die einzigen erlaubten Werte.

Datenschutz $-?';

COMMENT ON COLUMN SC04_DWH_Tabelle.DWH_Tabellenart IS
'HUB, LINK, SATELLIT

Datenschutz $-';

COMMENT ON COLUMN SC04_DWH_Tabelle.KNZ_Virtuell IS
'... gibt an, ob die Tabelle im DWH-Modell physisch existiert (J).

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN SC04_DWH_Tabelle.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC04_DWH_Tabelle.TA_Ladedatum IS
'Zeitpunkt (bis Minute) des Ladebeginns in den Business-Data Vault

Datenschutz $-';

COMMENT ON COLUMN SC04_DWH_Tabelle.Tabellenname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.Attributname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.Beschreibung IS
'

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.Domaene IS
'

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.Inhalt_identifizierend IS
'... enthält die Bewertung des Attributs als "identifizierend" (A1) oder "zusammen mit wenigen anderen Attributen identifizierend" (A2).
Entweder die vorläufige Bewertung durch die DWH-Organisation oder die Bewertung durch den Datenschutzbeauftragten wird hier vermerkt.

Ausprägungen: 
A1	identifizierend
A2	zusammen mit wenigen anderen Attributen identifizierend
-		nicht identifizierend

Datenschutz $-?';

COMMENT ON COLUMN SC05_DWH_Attribut.Inhalt_schutzwuerdig IS
'... enthält die Bewertung des Attributs als "mit besonders sensiblem Inhalt" (B) oder "dessen Speicherung mit Personenbezug außerhalb des operativen Systems unzulässig ist" (C).
Entweder die vorläufige Bewertung durch die DWH-Organisation oder die Bewertung durch den Datenschutzbeauftragten wird hier vermerkt.

Ausprägungen: 
B		besonders sensibler Inhalt
C		Speicherung mit Personenbezug außerhalb des operativen Systems unzulässig
-		inhaltlich nicht besonders sensibel

Datenschutz $-?';

COMMENT ON COLUMN SC05_DWH_Attribut.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.TA_Ladedatum IS
'Zeitpunkt (bis Minute) des Ladebeginns in den Business-Data Vault

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.Tabellenname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC05_DWH_Attribut.durch_DSB_bewertet IS
'... enthält die Information, ob die Bewertung der Sensibilität des Attributs hinsichtlich Datenschutzgesetz und CoC durch den Datenschutzbeauftragten vorgenommen worden ist, d.h. dass die Inhalte der beiden Attribute "Inhalt_identifizierend" und "Inhalt_schutzwuerdig" nicht mehr als vorläufig betrachtet werden.

Ausprägungen: 
ja			Inhalt durch DSB bewertet
nein		Bewertung vorläufig (z.B. durch DWH-Organisation)

Datenschutz $-?';

COMMENT ON COLUMN SC06_DWH_Domaene.Beschreibung IS
'

Datenschutz $-';

COMMENT ON COLUMN SC06_DWH_Domaene.Domaene IS
'

Datenschutz $-';

COMMENT ON COLUMN SC06_DWH_Domaene.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC06_DWH_Domaene.TA_Ladedatum IS
'Zeitpunkt (bis Minute) des Ladebeginns in den Business-Data Vault

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.FK_SC01_Zielschluessel IS
'
Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.ID IS
'
Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributname2 IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributname3 IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributwert IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributwert2 IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Attributwert3 IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_TA_Quellsystem IS
'... ist der Wert im technischen Attribut "TA_Quellsystem" der zu dieser Harmonisierung zugehörigen Instanzen der in RAW_Tabellenname genannten Tabelle des RAW.

I.A. ist es die Quelle der zu harmonisierenden Information (evtl. als virtuelle Zusammenfassung). Die erlaubten liefernden Systeme sind (evtl. inkl. der einzelnen zugehörigen Quellen) in einer Transformationstabelle im Rahmen des ETL-Prozesses dokumentiert.

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.RAW_Tabellenname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC07_Harmonisierung.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.ID IS
'
Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.TA_Ersatzdatum IS
'Identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.V_Regel_ID IS
'... ist die DWH-weite ID der Validierungsregel

Datenschutz $-';

COMMENT ON COLUMN SC08_ValideWerte.V_Wert IS
'... ist ein Wert, der im angegebenen Attribut der angegebenen Tabelle zulässig ist.

Datenschutz $-
';

COMMENT ON COLUMN SC09_Fehlertabelle.Attribut_TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Attributname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Datensatz_Id IS
'Surrogat-Key des betroffenen Datensatzes im Raw Data Vault

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Fehlerbeschreibung IS
'... ist die Beschreibung des Fehlers - im Falle von Validierungsfehlern identisch zu SC10_Validierung.V_Regel_Langtext

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Fehlerklasse IS
'... gibt an, wie im Falle eines Fehlers verfahren werden soll. Die Fehlerklassen orientieren sich am Validierungskonzept und sind derzeit mit den Werten 1-4 vorgesehen.

1 = Leichter Fehler - ohne direkte Konsequenzen
2 = Fehler, der zu geringen DQ-Problemen im DWH führen kann. Datensatz wird aber weiterverarbeitet
3 = Fehler, der vor der Beladung des Business Data Vault geklärt werden muss (Datensatz wird nur in Raw Data Vault geladen) 
4 = Schwerwiegender Fehler, der dazu führt, dass der Datensatz bereits in der Stage in die Fehlertabelle ausgesteuert wird

Im Falle von Validierungsfehlern identisch zur Fehlerklasse der angewendeten Validierungsregel.

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Fehlertyp IS
'... ist die Identifikation des Fehlertyps. Muss ggf. noch erweitert werden. Aus heutiger Sicht gibt es folgende Ausprägungen:

''Validierung''
''Dummy''

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.ID IS
'

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.Tabellenname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC09_Fehlertabelle.V_Regel_ID IS
'... ist die VR_ID aus SC10_Validierungsregel (optional). Tabelle dient nicht nur zur Erfassung von Validierungsfehlern.

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Attribut_TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Attributname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Fehlerklasse IS
'... gibt an, wie im Falle eines Fehlers verfahren werden soll. Die Fehlerklassen orientieren sich am Validierungskonzept und sind derzeit mit den Werten 1-4 vorgesehen.

1 = Leichter Fehler - ohne direkte Konsequenzen
2 = Fehler, der zu geringen DQ-Problemen im DWH führen kann. Datensatz wird aber weiterverarbeitet
3 = Fehler, der vor der Beladung des Business Data Vault geklärt werden muss (Datensatz wird nur in Raw Data Vault geladen) 
4 = Schwerwiegender Fehler, der dazu führt, dass der Datensatz bereits in der Stage in die Fehlertabelle ausgesteuert wird

Im Falle von Validierungsfehlern identisch zur Fehlerklasse der angewendeten Validierungsregel.

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Fehlertyp IS
'... ist die Identifikation des Fehlertyps. Muss ggf. noch erweitert werden. Aus heutiger Sicht gibt es folgende Ausprägungen:

''Validierung''
''Dummy''


Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.TA_Quellsystem IS
'... Bezeichnung des Quellsystems, aus dem der Datensatz geladen wurde

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.Tabellenname IS
'

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.V_Regel_ID IS
'... ist die DWH-weite ID der Validierungsregel

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.V_Regel_Kurztext IS
'... ist die Kurzbeschreibung der Regel, z.B. ''Formatprüfung'' oder ''Werteliste'' etc.

Datenschutz $-';

COMMENT ON COLUMN SC10_Validierungsregel.V_Regel_Langtext IS
'... ist die Langtext - Beschreibung der Regel

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.FK_SC11_Kennzeichen IS
'

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.FK_SC11_Kennzeichen_P IS
'Schlüssel des übergeordneten Kennzeichens bei Kennzeichen-Hierarchien

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Level_Nr IS
'... ist die Level-Nummer der ''Hierarchiestufe'' des ''child'' FK_SC11_Kennzeichen. Für das elementare Level = 0.
Level_Nr ist kleiner als Level_Nr_P

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.Level_Nr_P IS
'... ist die Level-Nummer der ''Hierarchiestufe'' des ''parent'' FK_SC11_Kennzeichen_P. 
Level_Nr_P ist größer als Level_Nr.

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.SK_SC11_Kennzeichen_Aggr IS
'
Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der nächste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des nächsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN SC11_Kennzeichen_Aggr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON TABLE SC07_Harmonisierung IS
'.. die Einträge werden pro Liefersystem (=Quellsystem) gebildet, es ist möglich, gleich liefernde Quellen virtuell zusammenzufassen und als eine Quelle (z.B. allSource) aufzufassen

';

COMMENT ON TABLE SC08_ValideWerte IS
'... beschreibt die validierung inkl. der Validierungsregel für das zugehörige DWH-Attribut.';

COMMENT ON TABLE SC09_Fehlertabelle IS
'... hält die Fehler fest, die beim Laden in das DWH entstehen.';

COMMENT ON TABLE SC11_Kennzeichen_Aggr IS
'... ordnet Kennzeichen für Einzel- oder aggregierte Ebenen (FK_SC11_Kennzeichen) Kennzeichen einer höheren Aggregationsebene (FK_SC11_Kennzeichen_P) zu. Zu beachten ist, dass die so der höheren Aggregationsebene zugeordneten Kennzeichen eine disjunkte Zerlegung der Aggregation repräsentieren.

';

