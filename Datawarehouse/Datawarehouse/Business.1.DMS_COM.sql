--<ScriptOptions statementTerminator=";"/>
-- Version 11254

COMMENT ON COLUMN GP03_GP04_BL.FK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.FK_GP04_Taetigkeit IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.SK_GP03_GP04 IS
'
Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_GP04_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Geschaeftsvorgang_BH.SK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_Geschaeftsvorgang_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Geschaeftsvorgang_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_Geschaeftsvorgang_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Geschaeftsvorgang_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Anzahl_Dokumente IS
'.. ist die Anzahl der bearbeiteten Dokumente.
bei SnB: Anzahl Trennblätter (??)
bei SvB: Anzahl Dokumente aus Smartfix

aus V_DMS_Doxis_Task_Parent.AnzahlDoks

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Anzahl_Seiten IS
'.. ist die Anzahl der bearbeiteten Seiten.

aus  V_DMS_Doxis_Task_Parent.AnzahlSeiten

für child ???

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.C_Geschaeftsprozess IS
'...ist für DMS zunächst identisch mit der Bezeichnung der Dokumentenart des auslösenden (primären) Dokuments.

=== redundant zu GP01_Gepro_DMS_01_HBS.Geschaeftsprozessname an GP01_Geschaeftsprozess_BH

Zu beachten ist, dass  von DMS keine Geschäftsprozesse oder Geschäftsvorfälle geliefert, sondern durch die vorliegenden Dokumente ausgelöste Bearbeitungen dokumentiert werden. Dabei dient die Dokumentenart des "primären Dokuments" als Bezeichnung für ein prozessähnliches Muster, das aber nicht einem codifizierten Prozess folgt, sondern von Sachbearbeitern individuell gesteuert wird.

aus V_DMS_Doxis_Task.DokArt 

für parent-Prozesse ?? leer oder konstant ??

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

DMS: DatumVon

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

DMS: DatumBis

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.FK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

DMS: DatumVon
 
Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

DMS: DatumBis

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Geschaeftsvorgang_ID_A IS
'... ist der identifizierende Ordnungsbegriff für den Geschäftsvorgang.

aus
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
oder
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID

Datenschutz $A1';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Prozessmodell_ID IS
'...identifiziert das Prozessmodell für die beteiligten DMS-Prozesse

=== redundant zu GP01_Gepro_DMS_01_HBS.Prozessmodell_ID an GP01_Geschaeftsprozess_BH

Zu beachten ist, dass DMS keine Geschäftsprozesse oder Geschäftsvorfälle liefert, sondern nur Informationen über die technischen Prozesse

aus V_DMS_Doxis_Task_Parent.Prozessmodell_ID
bzw. V_DMS_Doxis_Task.Prozessmodell_ID

Datenschutz $-?';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Beginn IS
'Beginntermin des Geschäftsvorgangs .

aus V_DMS_Doxis_Task_Parent.DatumVon
oder V_DMS_Doxis_Task.DatumVon
 
Datenschutz $-';

COMMENT ON COLUMN GP03_Gevo_DMS_01_HBS.Vorgangsdatum_Ende IS
'Endetermin des Geschäftsvorgangs .

aus V_DMS_Doxis_Task_Parent.LogDatum
oder V_DMS_Doxis_Task.LogDatum

oder Abschlüsseln???

 
Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.FK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.FK_IF01_Dokument IS
'
Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.SK_GP03_IF01_Ausloeser IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF01_Ausloeser_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.FK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.FK_IF02_Scanstapel IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.SK_GP03_IF02 IS
'
Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_IF02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.FK_GP03_Geschaeftsvorgang IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.FK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.SK_GP03_WE01 IS
'

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP03_WE01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_BH.SK_GP04_Taetigkeit IS
'

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID IS
'... ID für die Bezeichnung des Arbeitschrittes

=== redundant zu GP02_Arbeitsschr_DMS_nn_HBS.Arbeitsschritt_ID an GP02_Arbeitsschritt_BH

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

aus V_DMS_Doxis_Task_Parent.Aktivitaet_ID
oder V_DMS_Doxis_Task.Aktivitaet_ID

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_ermittelt_ID IS
'... die Identifikation des ermittelten Postkorbs (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus
	V_DMS_Doxis_Task.Aktuellepostkorb_ID
		oder
	V_DMS_Doxis_Task_Parent.Aktuellepostkorb_ID

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_tatsaechlich_ID IS
'... die Identifikation des verändernden Mitarbeiters (=tatsächlicher Bearbeiter) (=ID aus dem operativen System)

aus
	V_DMS_Doxis_Task.Bearbeiter_ID
		oder
	V_DMS_Doxis_Task_Parent.Bearbeiter_ID

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Bearbeiter_vorher_ID IS
'... die Identifikation des vorherigen Postkorbs (kann ein Mitarbeiter, eine Oganisationseinheit oder eine Stelle sein), damit dient es auch zu Identifikation seines Postkorbs.

aus V_DMS_Doxis_Task.LetztePostkorb_ID
		oder
	V_DMS_Doxis_Task_Parent.LetztePostkorb_ID

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.C_Bearbeiterwechsel IS
'... dokumentiert die Einhaltung der Definition von Arbeitsschritt/ Tätigkeit bzgl. Bearbeiterwechsel:
Ein Arbeitsschritt soll durch einen Bearbeiter bearbeitet werden. Wechselt der Bearbeiter während der Tätigkeit,liegt ein Verstoß gegen die Definition eines Arbeitsschritt vor. Ein Bearbeiter kann eine natürliche Person, eine Stelle oder auch eine ganze Organisationseinheit (z.B. eine Gruppe) sein, daher kann ein Bearbeiterwechsel i.d.R. durch definitorische oder organisatorische Maßnahmen vermieden werden. Eine korrekt geschnittene Tätigkeit enthält in diesem Attribut "nein".

ja / nein/ unbekannt

DMS: vermutlich konstant "nein", weil ein Bearbeiterwechsel das Routing in einen anderen Postkorb und damit das Ende der DMS-"Tätigkeit" bedeutet.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.C_Geschaeftsbereich IS
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

aus V_DMS_Doxis_Task_Parent.GB
aus V_DMS_Doxis_Task: leer

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.C_Inkraftsetzung IS
'... dokumentiert die Einhaltung der Definition von Arbeitsschritt/ Tätigkeit bzgl. Inkraftsetzung:
Ein Arbeitsschritt soll mit einer Inkraftsetzung beendet werden. Wird ein Dokument z.B. nur weitergeleitet, liegt keine Inkraftsetzung vor. Das bedeutet einen Verstoß gegen die Definition eines Arbeitsschritt. Eine korrekt geschnittene Tätigkeit enthält in diesem Attribut "nein".

ja / nein/ unbekannt

DMS: vermutlich konstant "unbekannt"

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.C_Unterbrechung IS
'... dokumentiert die Einhaltung der Definition von Arbeitsschritt/ Tätigkeit bzgl. vorgesehene Unterbrechung:
Eine Tätigkeit soll in einem Zuge durchgeführt werden können. Eine vorgesehene Unterbrechung ist also ein Verstoß gegen die Definition eines Arbeitsschritts. Eine korrekt geschnittene Tätigkeit enthält in diesem Attribut "nein".

ja / nein/ unbekannt

DMS: vermutlich konstant "unbekannt"

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.C_durchfuehrende_Stelle IS
'... gibt an, durch welche Regionaldirektion die Tätigkeit durchgeführt werden soll.

aus V_DMS_Doxis_Task.RD
aus V_DMS_Doxis_Task_Parent: leer

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

DMS: LogDatum

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

DMS: nicht vorhanden

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.FK_GP04_Taetigkeit IS
'

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

DMS: LogDatum
 
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

DMS: nicht vorhanden

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Geschaeftsvorgang_ID_A IS
'... ist der identifizierende Ordnungsbegriff für den Geschäftsvorgang.

aus
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
		oder
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID

Datenschutz $A1';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Taetigkeit_lfd IS
'... identifiziert die Tätigkeit

aus
	Taetigkeit_lfd					V_DMS_Doxis_Task.LogNr
		oder
	Taetigkeit_lfd					V_DMS_Doxis_Task_Parent.LogNr

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsbeschreibung IS
'... enthält zusätzliche Informationen zu Tätigkeit als Freitext

aus
	V_DMS_Doxis_Task_Parent.InfoText
		oder
	V_DMS_Doxis_Task.InfoText

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn IS
'Beginntermin der Tätigkeit.

aus
	V_DMS_Doxis_Task.LogDatum des Vorgängers
		oder
	V_DMS_Doxis_Task_Parent.LogDatum des Vorgängers

 Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Ende IS
'Endetermin der Tätigkeit.

aus
	V_DMS_Doxis_Task.LogDatum
		oder
	V_DMS_Doxis_Task_Parent.LogDatum
 
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID IS
'... ist eine ID für die Beschreibung das Ergebnis der Tätigkeit für das konkrete Geschäftsobjekt

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

aus
	V_DMS_Doxis_Task_Parent.EventTyp
		oder
	V_DMS_Doxis_Task.EventTyp

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Veraenderungsbeschreibung IS
'... beschreibt das Ergebnis der Tätigkeit als Freitext

aus
	V_DMS_Doxis_Task_Parent.Ereignistext
		oder
	V_DMS_Doxis_Task.Ereignistext

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_01_HBS.Zeitangabe_WV IS
'Wiedervorlagedatum

=== redundant zu GP06_Termin_DMS_01_HBS.Zeitangabe an GP06_Termin_BH

aus V_DMS_Doxis_Task_Parent.Wiedervorlagedatum
oder V_DMS_Doxis_Task.Wiedervorlagedatum

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_BH.SK_IF01_Dokument IS
'

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.C_Dokumentart IS
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

aus V_DMS_Doxis_Task.DokArt

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.C_Empfangskanal IS
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

aus V_DMS_Doxis_Task_Parent.Quelle

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.C_Routing IS
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

aus V_DMS_Doxis_Task.Routing (ehemals BZA)

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.Dokument_ID_A IS
'... identifiziert das Dokument, für DMS das primäre Dokument

aus DMS, weil die Dok-Id nicht geliefert wird:
	V_DMS_Doxis_Task_Parent.VorgangsID
	oder
	V_DMS_Doxis_Task.PI_Dx4Tec_ParentPID

Datenschutz $A1';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.FK_IF01_Dokument IS
'

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_Dokument_DMS_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.FK_IF01_Dokument IS
'

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.FK_IF02_Scanstapel IS
'

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.SK_IF01_IF02 IS
'
Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN IF01_IF02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_BH.SK_IF02_Scanstapel IS
'

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Anzahl_Dokumente IS
'.. ist die Anzahl der gescannten Dokumente.
bei SnB: Anzahl Trennblätter (???)

aus V_DMS_Doxis_Task_Parent.AnzahlDoks (nur für SnB)

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Anzahl_Seiten IS
'.. ist die Anzahl der gecannten Seiten.

aus V_DMS_Doxis_Task_Parent.AnzahlSeiten (nur für SnB)

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.C_Scanweg IS
'... ist die Platzierung des Scannens zur Bearbeitung des gescannten Inhalts.

Werte: SvB (=Scannen vor Bearbeitung), SnB (=Scannen nach Bearbeitung) (aus Stapelklasse bzw. Stapelprofil)

aus V_DMS_Doxis_Task_Parent.Stapelklasse

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.FK_IF02_Scanstapel IS
'

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Stapel_ID IS
'... ist die eindeutige ID des gescannten Stapels

aus V_DMS_Doxis_Task_Parent.Stapelname

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.Systemeingangsdatum IS
'... ist das Datum des Eingangs der Dokumente des Scanstapels in das Dokumenten-Management-System.
Bei SnB: Scandatum; bei SvB: je Empfangskanal Scandatum, Faxeingang, Maileingang

aus V_DMS_Doxis_Task_Parent.Systemeingangsdatum

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN IF02_Scanstapel_DMS_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.C_WE_Art IS
'... ist die Klassifizierung der Willenserklärung als

Vertrag
Antrag
Angebot

lifefactory:
if lv.lvstatus in (2, 5, 6)
then "Antrag"
else "Vertrag"

DMS:
konstant "Vertrag" (?)

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

CRS01101.BEARBDAT oder
CRS02101.BEARBDAT

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.FK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem 

kss.StTICHTAGS_JJ, ~MM, ~TT
 
Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_WE_DMS_01_HBS.Versicherungsscheinnummer_A IS
'... ist die Versicherungsscheinnummer mit Prüfziffer

aus V_DMS_Doxis_Task.PI_Dx4_Vnr

Datenschutz $A1';

COMMENT ON TABLE GP03_GP04_BL IS
'Zuordnung von einer Tätigkeit zu einem Geschäftsvorgang

BK:

Lifefactory:
GP03:	Geschaeftsvorgang_ID	bearbNW.lvID
													bearb.NW.businessProzessID
GP04:	Taetigkeit_ID					bearbNW.lvID
													bearbNW.bearbID

DMS:
GP03:	Geschaeftsvorgang_ID	VorgangsID
GP04:	Geschaeftsvorgang_ID	VorgangsID
			Taetigkeit_lfd					LogNr				(falls uneindeutig LogDatum ~ LogNr)';

COMMENT ON TABLE GP03_Geschaeftsvorgang_BH IS
'... ist eine Instanz eines Geschäftsprozesses.
Der Geschäftsvorgang kann langlebig sein, sich also über mehrere Tage erstrecken. Der Zustand
des Geschäftsvorgangs ist jederzeit ableitbar aus dem Zustand seiner Tätigkeiten.

BEA: Für Zwecke von DMS werden hier Sachverhalte abgebildet, die nicht in allen Punkten der Definition des Geschäftsvorgangs folgen. Z.B. führt bei DMS das Warten auf einen Antwortbrief und dessen Bearbeitung zum Ende des alten "Vorgangs" und Eröffnung eines neuen, d.h. das Gebot der "Vollständigkeit" eines Geschäftsprozesses wird regelmäßig nicht erfüllt. (Andererseits beendet die Setzung eines Termins den "Vorgang" nicht, da DMS Wiedervorlagen organisiert.)


BK:
Geschaeftsvorgang_ID

Geschaeftsvorgang_ID ist eine Zeichenkombination zur Identifizierung des Geschäftsvorgangs. 
Sie kann ein Geschäftsprozessname und eine laufende Nummer sein, die die Anzahl der Instanzen des Geschäftsprozesses abzählt, d.h. bei jedem Durchlaufen des Geschäftsprozesses wird eine neue laufende Nummer vergeben.

aus DMS:
Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
oder
Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID
';

COMMENT ON TABLE GP03_IF01_Ausloeser_BL IS
'... verbindet einen Geschäftsvorgang mt dem auslösenden Dokument.


BK:
DMS:
GP03:	Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
		oder
			Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID
IF01:	(weil die Dok-Id nicht geliefert wird:) 
			Geschaeftsvorgang_ID		V_DMS_Doxis_Task.PI_Dx4Tec_ParentPID
				oder
			Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID
	 ';

COMMENT ON TABLE GP03_IF02_BL IS
'Zuordnung eines Scanstapels zu einem Geschäftsvorgang

redundant wegen Scanstapel -> Dokument -> Geschäftsvorgang

BK:
DMS:
GP03:	Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID
IF02:	Stapel_Name						V_DMS_Doxis_Task_Parent.Stapelname

';

COMMENT ON TABLE GP03_WE01_BL IS
'... verbindet Willenserklärung und Geschäftsvorgang.


BK:
DMS:
GP03:	Geschaeftsvorgang_ID		DMS_Doxis_Task.VorgangsID
WE01:	VNR										DMS_Doxis_Task.PI_Dx4_Vnr		BEA: unterschiedliche Behandlung für Verträge/ Anträge/ 9-stellig/ 11-stellig';

COMMENT ON TABLE GP04_Taetigkeit_BH IS
'... ist eine Instanz eines Arbeitsschrittes.

Eine Tätigkeit wird in der Regel für ein führendes konkretes Geschäftsobjekt durchgeführt. Eine
Tätigkeit ist jederzeit unvorhergesehen unterbrechbar (technisch und zeitlich) und kann wieder
aufgenommen werden (private Zwischenspeicherung) für den Fall, dass die Arbeitseinheit
''Tätigkeit'' nicht zu Ende gebracht werden konnte. Eine begonnene Tätigkeit kann nicht
weitergeleitet werden.

BEA: Für Zwecke von DMS werden hier Arbeitseinheiten abgebildet, die nicht in allen Punkten der Definition von Arbeitsschritt/ Tätigkeit folgen. Z.B. ist bei DMS nicht maßgeblich, dass die Tätigkeit mit einer Inkraftsetzung endet, sondern dass des primäre Dokument weitergeleitet oder als "erledigt" gekennzeichnet wird. Folglich können die hier als "Tätigkeit" hinterlegten Arbeitseinheiten auch keine oder mehrere Inkraftsetzungen umfassen. Eine vorhersehbare Unterbrechung (z.B. wegen Korrespondenz) beendet hier die "Tätigkeit" nicht. (Möglicherweise wird aber ein Antwortschreiben zu einem neuen Geschäftsvorgang und folglich einer neuen Tätigkeit führen, so dass die aktuelle Tätigkeit mit einer abgebrochenen Wiedervorlage endet).
Die Verstöße gegen die Definition von Arbeitsschritt/ Tätigkeit werden in besonderen Attributen dokumentiert.

BK:
Taetigkeit_ID

Taetigkeit_ID ist eine Zeichenkombination zur Identifizierung der Tätigkeit. 
Sie kann ein Arbeitsschrittname und eine laufende Nummer sein, die die Anzahl der Instanzen des Arbeitsschritts abzählt, d.h. bei jedem Durchlaufen des Arbeitsschrittes wird eine neue laufende Nummer vergeben.

Lifefactory: 
	Taetigkeit_ID =
		interne Vertrags-ID		bearbNW.lvID	
		Bearbeitung-lfd				bearbNW.bearbID

DMS:
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
		oder
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID
	Taetigkeit_lfd						V_DMS_Doxis_Task.LogNr
		oder
	Taetigkeit_lfd						V_DMS_Doxis_Task_Parent.LogNr

VVW, AORG:
		Taetigkeit_ID=
			ADKNR           				....ADKNR
			Änderungsdatum			....AENDDAT (bzw. VEREINBAR.GEAENDERTAM)

VVW, ADMDATB:
		Taetigkeit_ID=
			Vermittlerkontonummer		...MKT
			Änderungsdatum					....(Änderungsdatum und -zeit), Format: Char(12), JJMMTTHHMMSS

';

COMMENT ON TABLE IF01_Dokument_BH IS
'... ist ein Objekt, das Informationen für Prozesse der DEVK zur Verfügung stellt und für das gilt, dass diese Informationen

- inhaltlich zusammengehören und 
- auf einem einheitlichen Medium festgehalten werden und 
- für Prozesse der DEVK relevant sind (unabhängig davon, ob diese dokumentiert sind oder nicht), z.B. Prozess für Betrieb, Schaden, Aufbewahrung, Entsorgung,... und 
- eine gemeinsame Dokumentart haben und 
- nicht den Charakter eines Arbeitsstands haben und 
- aufbewahrungswürdig sind, d.h.
	o sie führen in der DEVK zu Veränderung von Basisdaten (d.h. von Inhalten von Basiskomponenten des Bebauungsplans), oder 
	o sie führen in der DEVK zu „Beauskunftung“, oder 
	o sie stoßen einen Geschäftsvorgang an, oder 
	o sie unterliegen rechtlicher Aufbewahrungspflicht

BK: Dokument_ID

aus DMS: falls die Dok-Id nicht geliefert wird:
	V_DMS_Doxis_Task_Parent.VorgangsID
	oder
	V_DMS_Doxis_Task.PI_Dx4Tec_ParentPID

Zu beachten ist, dass DMS nur das primäre Dokument innerhalb des DMS-"Vorgangs" betrachtet und daher die Zuordnung zu dem betreffenden parent-GeVo eineindeutig ist.
';

COMMENT ON TABLE IF01_IF02_BL IS
'Zuordnung von einem Scanstapel zu den enthaltenen Dokumenten.


BK:
DMS:
IF01:	Dokument_ID					(weil die Dok-Id nicht geliefert wird:)
														V_DMS_Doxis_Task_Parent.VorgangsID
IF02:	Stapel_Nr							V_DMS_Doxis_Task_Parent.Stapelname


';

COMMENT ON TABLE IF02_Scanstapel_BH IS
'... ist eine Menge von Papierdokumenten, welche gemeinsam gescannt werden sollen bzw. wurden.

BK:
DMS:
Stapelname		V_DMS_Doxis_Task_Parent.Stapelname
';

