--<ScriptOptions statementTerminator=";"/>
-- Version 13599

CREATE TABLE DET_Dokument_Status (
		SK_Dokument_Status VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Veraenderungsbeschreibung VARCHAR2(500 CHAR) NOT NULL,
		Taetigkeitsbeschreibung VARCHAR2(1400 CHAR) NOT NULL,
		Vorgangszeitpunkt_Beginn DATE NOT NULL,
		WV_Zeitpunkt DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Prozessmodell (
		ID_Prozessmodell NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Prozessmodell_kurz VARCHAR2(24 CHAR) NOT NULL,
		Prozessmodell VARCHAR2(64 CHAR) NOT NULL,
		Prozessmodell_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Dokument_Status (
		SK_Dokument_Status VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_Scanstapel VARCHAR2(64 CHAR) NOT NULL,
		SK_Kontext VARCHAR2(64 CHAR) NOT NULL,
		ID_Vorgangsdatum_Beginn NUMBER(28 , 0) NOT NULL,
		ID_Vorgangsdatum_Ende NUMBER(28 , 0) NOT NULL,
		ID_Taetigkeitsdatum_Beginn NUMBER(28 , 0) NOT NULL,
		ID_Taetigkeitsdatum_Ende NUMBER(28 , 0) NOT NULL,
		ID_Veraenderungsart NUMBER(28 , 0) NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		ID_Geschaeftsbereich NUMBER(28 , 0) NOT NULL,
		ID_Arbeitsschritt NUMBER(28 , 0) NOT NULL,
		ID_WV_Datum NUMBER(28 , 0) NOT NULL,
		ID_Dokumentart NUMBER(28 , 0) NOT NULL,
		ID_Empfangskanal NUMBER(28 , 0) NOT NULL,
		ID_Routing NUMBER(28 , 0) NOT NULL,
		ID_Stapelklasse NUMBER(28 , 0) NOT NULL,
		ID_Status_fachlich NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_tatsaechlich NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_ermittelt NUMBER(28 , 0) NOT NULL,
		ID_Bearbeiter_vorher NUMBER(28 , 0) NOT NULL,
		ID_Systemeingangsdatum NUMBER(28 , 0) NOT NULL,
		ID_RD_ermittelt NUMBER(28 , 0) NOT NULL,
		Anzahl_Dokumente NUMBER(10 , 0) NOT NULL,
		Anzahl_Seiten NUMBER(10 , 0) NOT NULL,
		SLA_Dauer_in_Tagen NUMBER(10 , 0) NOT NULL,
		ID_Prozessmodell NUMBER(28 , 0) NOT NULL,
		Geschaeftsvorgang_ID_A VARCHAR2(24 CHAR) NOT NULL,
		Sortierung_Taetigkeit_lfd NUMBER(10 , 0) NOT NULL,
		Taetigkeitszeitpunkt_Beginn DATE NOT NULL,
		Taetigkeitszeitpunkt_Ende DATE NOT NULL,
		erstmals_zugestellt CHAR(1) NOT NULL,
		Clearing_Beginn DATE NOT NULL,
		Clearing_Ende DATE NOT NULL,
		Systemeingangszeitpunkt DATE NOT NULL,
		erstmals_zugestellt_am DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_Dokument_Status ADD CONSTRAINT DET_Dokument_Status_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Dokument_Status);

ALTER TABLE DIM_Prozessmodell ADD CONSTRAINT DIM_Prozessmodell_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Prozessmodell);

ALTER TABLE F_Dokument_Status ADD CONSTRAINT F_Dokument_Status_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Dokument_Status);

COMMENT ON COLUMN DET_Dokument_Status.SK_Dokument_Status IS
'aus GP04_Taetigkeit_DMS_01_HBS.FK_GP04_Taetigkeit';

COMMENT ON COLUMN DET_Dokument_Status.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Taetigkeitsbeschreibung IS
'... enthält zusätzliche Informationen zu Tätigkeit als Freitext

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsbeschreibung

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Veraenderungsbeschreibung IS
'... beschreibt das Ergebnis der Tätigkeit als Freitext

aus.GP04_Taetigkeit_DMS_01_HBS.Veraenderungssbeschreibung

Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.Vorgangszeitpunkt_Beginn IS
'Beginntermin (als Timestamp) des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN DET_Dokument_Status.WV_Zeitpunkt IS
'Wiedervorlagedatum (als Timestamp) 

aus.GP04_Taetigkeit_DMS_01_HBS.Zeitangabe_WV

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.ID_Prozessmodell IS
'aus MD25_DMS_Prozessmodell.ID_Prozessmodell';

COMMENT ON COLUMN DIM_Prozessmodell.Prozessmodell IS
'aus MD25_DMS_Prozessmodell.Prozessmodell

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.Prozessmodell_kurz IS
'aus MD25_DMS_Prozessmodell.ID_Prozessmodell

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.Prozessmodell_lang IS
'aus MD25_DMS_Prozessmodell.Prozessmodell

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.Sortierung_lfd IS
'aus MD25_DMS_Prozessmodell.ID_Prozessmodell';

COMMENT ON COLUMN DIM_Prozessmodell.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Prozessmodell.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Anzahl_Dokumente IS
'.. ist die Anzahl der Dokumente zum primären Dokument.

aus GP03_Gevo_DMS_01_HBS.Anzahl_Dokumente

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Anzahl_Seiten IS
'.. ist die Anzahl der Seiten zum primären Dokument.

aus GP03_Gevo_DMS_01_HBS.Anzahl_Seiten

für child ???

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Clearing_Beginn IS
'Beginntermin (mit Uhrzeit) des 1. Clearings.

aus GP04_Taetigkeit_DMS_DWH_01_HBS.Clearing_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Clearing_Ende IS
'Endetermin (mit Uhrzeit) des (bisher) letzten Clearings.

aus GP04_Taetigkeit_DMS_DWH_01_HBS.Clearing_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Geschaeftsvorgang_ID_A IS
'... ist der identifizierende Ordnungsbegriff für den Geschäftsvorgang.

BEA: Zur Zeit wird für Zwecke der DMS-Statistiken nicht zwischen dem (führenden) Dokument und dem zugehörigen Geschäftsvorgang unterschieden. 

aus GP03_Gevo_DMS_01_HBS.Geschaeftsvorgang_ID_A

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Arbeitsschritt IS
'... bezeichnet den Arbeitschritt

Zu beachten ist, dass  von DMS keine Arbeitsschritte oder Tätigleiten geliefert, sondern durch die vorliegenden Dokumente ausgelöste Bearbeitungen dokumentiert werden. Dabei dient die in DMS dokumentierte "Aktivität" als Bezeichnung eines hypothetischen Arbeitsschritts, der aber nicht im Rahmen eines codifizierten Prozesses beschrieben ist, sondern vom Sachbearbeiter individuell gesteuert wird.

11248,SplitArchiveLink
11250,Vorgang bearbeiten
11254,WaitChannelActive
11176,Erkennung
11179,GB-Separator
11181,GDV
11185,Scan
11263,Start
11264,Vorgang bearbeiten
11246,isAsyncComplete
11180,GBSEPARATOR
11260,Initialisieren
11265,Vorgang loeschen
11244,Irrlaeufer erzeugen
11245,isActive
11251,Vorgang bilden
11187,Vorgang löschen
11222,Bearbeiter ermitteln (BEA)
11226,Start
11178,Future: Schaden
11184,Mail/Fax
11186,SUB: Betrieb
11257,Bearbeiter ermitteln (BEA)
11258,Bearbeiter rückmelden
11227,Vorgang bearbeiten
11242,Dokumente anreichern
11243,Ende
11247,PruefeIrrlaeufer
11253,WaitAsyncComplete
11177,Future: EAS
11261,Join_Reaktivieren
11228,Vorgang loeschen
11240,Bearbeiter ermitteln (BEA)
11249,Start
11175,Ende
11182,isActive
11259,Ende
11225,Join_Reaktivieren
11252,Vorgang loeschen
11183,isActive
11224,Initialisieren
11241,Clearing-ZD
11188,WaitChannelActive
11262,Split_Rückmeldung
11223,Ende

aus.GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_ermittelt IS
'... die Identifikation des ermittelten Bearbeiters (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_tatsaechlich IS
'... die Identifikation des verändernden Mitarbeiters (=tatsächlicher Bearbeiter) (=ID aus dem operativen System)

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Bearbeiter_vorher IS
'... die Identifikation des vorherigen Bearbeiters (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID

Datenschutz $A1';

COMMENT ON COLUMN F_Dokument_Status.ID_Dokumentart IS
'... ist die Art des Dokuments, z.B. 

1		Antrag
2		Sonstiges
3		Schriftwechsel
4		Berechn./Buchungen
5		SW(DEVK-intern)
6		Dokumente
7		Zahlungserinnerung
8		Mahnung ''38
9		Akte
10	maschinell erstellte Dokumente
11	Scanning
12	Vertragsaenderung
13	Info ADM
14	Mahnung Folgebeitrag
15	Anschreiben Erstbeitrag
...
ca. 450 Einträge,s. Wertelisten-DMS2.xlsx

aus IF01_Dokument_DMS_01_HBS.C_Dokumentart

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Empfangskanal IS
'... ist ein Weg, über den die DEVK Kommunikationsmittel empfängt.

1		SCAN
2		FAX
3		BK
4		ASF
5		MAIL
6		TEL
7		INTERN
8		SAA
9		DOM-Z
10	DOM-A
11	DOM-L
12	DOM-Fax
13	DOM-Mail
14	DOM-AV
15	DOM-GDV
16	ESA
17	GDV
18	CALCPROOF
19	DBFUHR
20	PAD
21	INTERNET
22	TIFF

aus IF01_Dokument_DMS_01_HBS.C_Empfangskanal

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Geschaeftsbereich IS
'... bezeichnet den Geschäftsbereich, dient als Postverteilungmerkmal für DMS.

=== redundant zu GP05_Geschbereich_DMS_01_HBS.C_Geschaeftsbereich an GP05_Geschaeftsbereich_BH

3C		Unterstützungskasse
F			SAP-FI
I			Inkasso
KS		K-Schaden
KV		Krankenversicherung
L			Leben
PV		Vertrieb
RA		Rechtsabteilung
RB		Rechtsschutz-Betrieb
RS		Rechtsschutz-Schaden
S			Schaden
SSHK	SchadenSachHaftpflichtKraft
SU		SchadenUnfall
VB		Monega
IF			Immoblilienfinanzierung - 7200
SHUK	SHUK

aus.GP04_Taetigkeit_DMS_01_HBS.C_Geschaeftsbereich

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Prozessmodell IS
'aus MD25_DMS_Prozessmodell.ID_Prozessmodell';

COMMENT ON COLUMN F_Dokument_Status.ID_RD_ermittelt IS
'... ist die RD, der der ermittelte Bearbeiter (entspricht dem aktuellen Postkorb) zugeordnet ist.

aus HARM( RD( GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Regionaldirektion IS
'... gibt an, welcher Regionaldirektion das Dokument zuzuordnen ist.

aus.GP04_Taetigkeit_DMS_01_HBS.C_durchfuehrende_Stelle

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Routing IS
'... ist ein Postverteilungsmerkmal aus DMS. Enthält neben der BZA (Bestandsbeziehungsart), die sich aus den Nummernkreisen der Versicherungsscheine ermittelt, weitere Merkmale.

112				Unfall (SHUK)
121				Sach-Einzel (SHUK)
122				Glas (SHUK)
123				Hausrat (SHUK)
124				Gebäude (SHUK)
125				CUV (SHUK)
130				Kfz (SHUK)
131				Moped (SHUK)
140				Reisegepäck (SHUK)
141				Kurzfrist Reise (SHUK)
142				Sparda Reisepaket (SHUK)
143				ServicePlus (SHUK)
144				Arbeitslosenkreditversicherung (SHUK)
160				Haftpflicht (SHUK)
701				ACV (SHUK)
Privat			Privat (SHUK, bei Neuanträgen)
Vielschutz	Vielschutz (SHUK, bei Neuanträgen)
Inkasso		Inkasso
bAV				bAV (Inkasso)
Kranken		Kranken (Inkasso)
PC-Miete	PC-Miete (Inkasso)

aus IF01_Dokument_DMS_01_HBS. C_Routing

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Stapelklasse IS
'aus IF02_Scanstapel_DMS_01_HBS.C_Scanweg';

COMMENT ON COLUMN F_Dokument_Status.ID_Status_fachlich IS
'fachlicher Status des (primären) Dokuments

aus
select	MDM.ID_Status_fachlich
from	MD24_DMS_Status_fachlich		MDM,
			GP04_Taetigkeit_DMS_01_HBS	Taetigk,
			GP03_Gevo_DMS_01_HBS			GeVo,
			GP03_GP04_BL								Link
where	MDM.ID_Arbeitsschritt						= Taetigk.ID_Arbeitsschritt
and		MDM.ID_Veraenderungsart				=	Taetigk.ID_Veraenderungsart
and		MDM.Prozessmodell_ID					=	GeVo.Prozessmodell_ID
and		Link.FK_GP03_Geschaeftsvorgang	= GeVo.FK_GP03_Geschaeftsvorgang
and		Link.FK_GP04_Taetigkeit					= Taetigk.FK_GP04_Taetigkeit

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Systemeingangsdatum IS
'... ist das Datum des Eingangs der Dokumente des Scanstapels in das Dokumenten-Management-System.
Bei SnB: Scandatum; bei SvB: je Empfangskanal Scandatum, Faxeingang, Maileingang

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus IF02_Scanstapel_DMS_01_HBS.Systemeingangsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Taetigkeitsdatum_Beginn IS
'Beginntermin der aktuellen Tätigkeit.  (Hier: Logdatum des vorherigen gelogten Zeitraums für parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Taetigkeitsdatum_Ende IS
'Endetermin der Tätigkeit.  (Hier: Logdatum des gelogten Zeitraums für parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Veraenderungsart IS
'... beschreibt das Ergebnis der Tätigkeit für das konkrete Geschäftsobjekt, (=DOK-Art)

aus.GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID

1,Prozess Objekt
2,Akzeptiert
3,Weitergeleitet
4,Delegiert
5,Prozess Objekt Neustart
6,Erhalten
8,Abwesend
10,Timer abgelaufen
11,Logisch gelöscht
12,Wiederhergestellt
13,Vertraulichkeitsstufe geändert
20,Papier
32,Aktenplan Aenderung
33,Objekt Kopie
34,Dokument verschoben
35,Wiedervorlage setzen
36,Wiedervorlage aufheben
37,Prozess aendern
38,Work Item geloescht
39,Dokument geaendert
40,Dokument geloescht
41,Dokument kopiert
42,Dokument erstellt
43,Original Dokument wurde geloescht
44,Einen Sohn untergeordnet
45,Objekt wurde untergeordnet
46,Einen Sohn entnommen
47,Objekt wurde entnommen
99,Information
200,Umprotokollierung
201,Umprotokollierung des Vorgangs
202,Versand per E-Mail
203,Check-Out
204,Check-In
205,Dokument geöffnet
206,Aufgabe erledigt
207,Aufgabe nicht erledigt
220,Dokument zeichnen
221,Dokument einfrieren
222,Dokumentdatei einfrieren
225,Dokumentdatei gezeichnet
226,Dokument logisch gelöscht
227,Dokument wiederhergestellt
228,Dokument Vertraulichkeitsstufe geändert
244,Einen Sohn zugeordnet
245,Objekt wurde zugeordnet
246,Einen zugeordneten Sohn entnommen
247,Zuordnung fuer Objekt aufgehoben
248,SUB-Objekt erstellt
249,SUB-Objekt synchronisiert
601,DEVK-Ursprung

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Vorgangsdatum_Beginn IS
'Beginntermin des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_Vorgangsdatum_Ende IS
'Endetermin des Geschäftsvorgangs. (Hier: parent- bzw. child-Prozess DOXIS)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.ID_WV_Datum IS
'Wiedervorlagedatum

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus.GP04_Taetigkeit_DMS_01_HBS.Zeitangabe_WV

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.SK_Dokument_Status IS
'aus GP04_Taetigkeit_DMS_01_HBS.SK_GP04_Taetigkeit';

COMMENT ON COLUMN F_Dokument_Status.SK_Kontext IS
'= Hash("DMS" ~ Antragsnummer_A ~Versicherungsscheinnummer_A ~ Zusatznummer_A ~ Partnerordnungsbegriff_A ~ Inkassonummer_A ~ Moped_Kennzeichen_A ~ Vertragskontonummer_A)

bea: zunächst DUMMY, dann zunächst nur Hash ("DMS" ~~Versicherungsscheinnummer_A ~~~~~)

Datenschutz $-
';

COMMENT ON COLUMN F_Dokument_Status.SK_Scanstapel IS
'aus IF02_Scanstapel_DMS_01_HBS.FK_IF02_Scanstapel

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.SLA_Dauer_in_Tagen IS
'Laut SLA''s vereinbarte höchste Bearbeitungsdauer (z.Zt. 3 Kalendertage für Eingangskanal Brief / Fax, 2 Kalendertage für Eingangskanal Mail)

aus Masterdaten MD21_DMS_SLA.SLA_Dauer_in_Tagen

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Sortierung_Taetigkeit_lfd IS
'... identifiziert die aktuelle Tätigkeit (Log-Nr)

konvertiert als number

aus.GP04_Taetigkeit_DMS_DWH_01_HBS.Sortierung_Taetigkeit_lfd

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Systemeingangszeitpunkt IS
'... ist das Datum des Eingangs der Dokumente des Scanstapels in das Dokumenten-Management-System.
Bei SnB: Scandatum; bei SvB: je Empfangskanal Scandatum, Faxeingang, Maileingang

aus IF02_Scanstapel_DMS_01_HBS.Systemeingangsdatum
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Taetigkeitszeitpunkt_Beginn IS
'Beginntermin (mit Uhrzeit) der aktuellen Tätigkeit. 

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.Taetigkeitszeitpunkt_Ende IS
'Endetermin (mit Uhrzeit) der aktuellen Tätigkeit.

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Ende
 
Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.erstmals_zugestellt IS
'Kennzeichen: erstmals zugestellt?

ja / nein/ unzutreffend

aus GP04_Taetigkeit_DMS_DWH_01_HBS.C_erstmals_zugestellt

Datenschutz $-';

COMMENT ON COLUMN F_Dokument_Status.erstmals_zugestellt_am IS
'Zeitpunkt der 1. Zustellung.

aus GP04_Taetigkeit_DMS_DWH_01_HBS.erstmals_zugestellt_am
 
Datenschutz $-';

