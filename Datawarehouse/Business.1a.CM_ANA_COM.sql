--<ScriptOptions statementTerminator=";"/>
-- Version 8362

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugeh�rigen Gerichtsprozesse. 

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Teilschadenbearbeitung in Werktagen bis zur ersten Entsch�digungs- oder Rentenzahlung.

select	min( Werktag_Nr_ab_Stichtag) - Durchlaufzeit__Beginn (+1 ???)
from	LE01_Zahlung_SHUKR_01_HBS	sat,
			ER01_ER02_LE01_BL						link,
			RE01_Kalender_DWH_01_HBS	bis
where	bis.FK_RE01_Kalender= ???
and		bis.Datum = sat.Buchgungsdatum, sat.Belegdatum, sat.Nettofaellifkeit ???
and		link.FK_ER02_Teilschaden = FK_ER02_Teilschaden

--> Historie beachten !!!
--> Zahlungen qualifizieren (Leistungsart?)

number (16, 8)
Datenschutz $B';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_Entsch IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r reine Entsch�digungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_Rente IS
'Erste R�ckstellung, die zu einem Teilschaden f�r Rentenzahlungen angesetzt wurde. Da die Rentenr�ckstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des R�ckstellung f�r Entsch�digungsleistungen, ist im Gegensatz zur Erstr�ckstellung f�r Entsch�digungsleistungen / �u�ere SR nicht das Einrichtungsdatum ausschlaggebend.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_SRK IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r Aufwendungen f�r �u�ere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang IS
'Summe gesicherte Regresseing�nge
Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseing�nge auf Entsch�digungszahlungen.

Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseing�nge
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein IS
'Reine R�ckstellung
Summe aller zum Zeitpunkt t noch vorhandenen R�ckstellungen f�r Entsch�digungen, �u�ere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht ber�cksichtigt

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_Entsch IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenr�ckstellung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens f�r Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_SRK IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Ber�cksichtigt werden alle belastende und nicht belastende Zahlungen. Nicht ber�cksichtigt werden Forderungseing�nge.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_Entsch IS
'Summe reine Entsch�digungszahlungen

Die Summe der reinen Entsch�digungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers f�r Entsch�digungsleistungen. Nicht eingerechnet werden dabei Zahlungen f�r die Schadenregulierung und auch keine Zahlungseing�nge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers f�r Renten. Explizit nicht eingerechnet werden dabei Zahlungseing�nge. Umbuchungen m�ssen dagegen ber�cksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_SRK IS
'Summe reine Aufwendungen �u�ere Schadenregulierung

Die Summe der reinen Aufwendungen f�r �u�ere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers f�r die �u�ere Schadenregulierung des (Teil-)Schadens. Zahlungseing�nge werden dabei nicht ber�cksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden alle Ausgangszahlungen und Regresseing�nge (gesichert und ungesichert).

Datenschutz $-';

