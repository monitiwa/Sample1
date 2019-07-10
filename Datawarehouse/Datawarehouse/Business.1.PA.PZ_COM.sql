--<ScriptOptions statementTerminator=";"/>
-- Version 19573

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.C_SchutzKennzeichen_B IS
'... identifiziert besonders gesch�tzte Partner (Mitarbeiter, VIPs, Zeugenschutz,...) bzw. Partner, deren Stammdaten nicht ver�ndert werden sollen (Gesch�ftspartner).

Auspr�gungen beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur f�r bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschr�nkten Nutzerkreisen zu Kenntnis gebracht werden d�rfen.

NEU ab Herbst 2018 (?):

0 (kein Eintrag in PARIS) � kein Zugriffsschutz
1 (2 auf der PARIS-Datenbank) � �echte� VIP�s
3 � Banken aus Vertragsverh�ltnissen
4 � amtliche Auskunftssperre
5 � Zeugenschutz
6 � Mitarbeiter
7 � VTM/VTP
8 � Datenschutz-Sperrkennzeichen

Datenschutz $B';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.POB_A IS
'.... ist der Partner-Ordnungsbegriff aus PARIS, ohne Pr�fziffer,  gem�� des Business Keys von PA01_Partner_BH.

Datenschutz $A1';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.Pruefziffer IS
'... ist die Pr�fziffer zum POB berechnet nach dem Modulo-11-Verfahren (siehe Anhang) oder

aus PARIS: substr( POB_PZ, 9, 1)
aus BP: substr( PARTNER, 10, 1) oder anderes POB enthaltendes Attribut (z.B. XBLNR, GPART, ...)

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_Partner_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE PA01_Partner_Par_01_HBS IS
'... sind Zusatz-Informationen zum Partner.';

