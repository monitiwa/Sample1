--<ScriptOptions statementTerminator=";"/>
-- Version 8362

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugehörigen Gerichtsprozesse. 

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Teilschadenbearbeitung in Werktagen bis zur ersten Entschädigungs- oder Rentenzahlung.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.

Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Rueckst_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastende und nicht belastende Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_DWH_02_WBS.Teilsch_Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

Datenschutz $-';

