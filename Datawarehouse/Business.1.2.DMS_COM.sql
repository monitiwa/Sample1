--<ScriptOptions statementTerminator=";"/>
-- Modellversion 13555

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.C_erstmals_zugestellt IS
'ja, wenn c_zugestellt = ja
	und (innerhalb des Gesch�ftsvorgangs) f�r den zeitlichen Vorg�nger c_zugestellt = "nein"
nein sonst

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.C_zugestellt IS
'ja, wenn (innerhalb des Gesch�ftsvorgangs)
			(		GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID = 11250 (Vorgang bearbeiten)
			und GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID = 6 (Erhalten)
			)
			oder f�r den zeitlichen Vorg�nger bereits "ja" gilt
nein sonst

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Clearing_Beginn IS
'Beginntermin des 1. Clearings.

Wenn (innerhalb des Gesch�ftsvorgangs)
			(		GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID = z.B. 11241 (Clearing-ZD)
			und GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID = 6 (Erhalten)
			und f�r den zeitlichen Vorg�nger Clearing_Beginn leer ist
			)
dann GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
sonst Wert des zeitlichen Vorg�ngers.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Clearing_Ende IS
'Endetermin des (bisher) letzten Clearings.

Wenn (innerhalb des Gesch�ftsvorgangs)
			(		GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID = z.B.  11250 (Vorgang bearbeiten)
			und GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID = 6 (Erhalten)
			und f�r den zeitlichen Vorg�nger Clearing_Beginn nicht leer ist
			und f�r den zeitlichen Vorg�nger Clearing_Ende leer ist
			)
dann	GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
wenn	(		GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID = 11241 (Clearing-ZD)
			und GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID = 6 (Erhalten)
dann	leer
sonst 	Wert des zeitlichen Vorg�ngers.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

DMS: LogDatum

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

DMS: nicht vorhanden

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.FK_GP04_Taetigkeit IS
'

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

DMS: LogDatum
 
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

DMS: nicht vorhanden

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Geschaeftsvorgang_ID_A IS
'... ist der identifizierende Ordnungsbegriff f�r den Gesch�ftsvorgang.

aus
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task.VorgangsID
		oder
	Geschaeftsvorgang_ID		V_DMS_Doxis_Task_Parent.VorgangsID

Datenschutz $A1';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Naechste_Taetigkeit_Beginn IS
'... ist der Beginn der n�chsten fachlichen T�tigkeit, alse der Beginn der ersten Mikrot�tigkeit nach Beenedigung der letzten zu dieser T�tigkteeit geh�renden Mikrot�tigkeit.

aus 
		GP04_Taetigkeit_DMS_01_HBS-Taetigkeitsdatum_Begin
der n�chsten T�tigkeit.
 
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Sortierung_Taetigkeit_lfd IS
'... identifiziert die aktuelle T�tigkeit (Log-Nr)

konvertiert als number

aus.GP04_Taetigkeit_DMS_01_HBS.Taetigkeit_lfd

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Taetigkeit_lfd IS
'... identifiziert die T�tigkeit

aus
	Taetigkeit_lfd					V_DMS_Doxis_Task.LogNr
		oder
	Taetigkeit_lfd					V_DMS_Doxis_Task_Parent.LogNr

Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.Taetigkeitsdatum_Beginn IS
'Beginntermin der T�tigkeit.

aus
	GP04_Taetigkeit_DMS_01_HBS-Taetigkeitsdatum_Begin


Bea: Realisiert ist hier das "eigene" LogDatum

 Datenschutz $-';

COMMENT ON COLUMN GP04_Taetigkeit_DMS_DWH_01_HBS.erstmals_zugestellt_am IS
'Zeitpunkt der 1. Zustellung.

Wenn (innerhalb des Gesch�ftsvorgangs)
			(		GP04_Taetigkeit_DMS_01_HBS.Arbeitsschritt_ID = z.B. 11250 (Vorgang bearbeiten)
			und GP04_Taetigkeit_DMS_01_HBS.Veraenderungsart_ID = 6 (Erhalten)
			und f�r den zeitlichen Vorg�nger erstmals_zugestellt_am leer ist
			)
dann GP04_Taetigkeit_DMS_01_HBS.Taetigkeitsdatum_Beginn
sonst Wert des zeitlichen Vorg�ngers.

Datenschutz $-';

