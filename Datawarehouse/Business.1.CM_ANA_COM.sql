--<ScriptOptions statementTerminator=";"/>
-- Version 9136

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.FK_ER04_Gerichtsinstanz IS
'
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Instanz_Anfangsjahr IS
'Das Instanz-Anfangsjahr gibt das Jahr an, in dem die gerichtliche Auseinandersetzung in der genannten Instanz begonnen hat. 

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Instanz_Endejahr IS
'Das Instanz-Endejahr gibt bei am Stichtag beendeten Instanzen das Jahr an, in dem die gerichtliche Auseinandersetzung zuletzt beendet wurde. 
Hinweis: Falls in Revision gegangen wird, kann eine ggf. bereits beendete Instanz wieder eröffnet werden.  Betrachtet wird das letzte Ende-Datum.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Instanznummer_lfd IS
'... ist die identifizierende Nummer der Instanz des Gerichtsverfahrens.

Schaden: Diese Nummer gilt relativ zum referenzierten Gerichtsverfahren. 
in Schaden vorhanden: NotNull

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Laufzeit IS
'Laufzeit der Instanz gemessen in Arbeitstagen für abgeschlossene Prozesse.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.Laufzeit_Beginn IS
'Beginn der Laufzeit der Instanz in der Darstellung "Werktag_Nr_ab_Stichtag" (s. RE01_Kalender_DWH_01_HBS)
Dieses Feld erlaubt es, durch Durchschnittsbildung und Subtraktion der Werktags-Nr. des Auswertungsstichtags die durchschnittliche Laufzeit von offenen Instanzen zu ermitteln.

select Werktag_Nr_ab_Stichtag from RE01_Kalender_DWH_01_HBS
where .....
and		Datum = Instanzbeginndatum


Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_DWH_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

