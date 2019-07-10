--<ScriptOptions statementTerminator=";"/>
-- Version 19589

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DPAYP.DOC2R (1. - 12. Stelle)

Datenschutz $A1';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.BelegPositionNr IS
'.. ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus DPAYP.DOC2R (16. - 19. Stelle)

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.BelegWiederholungsPosNr IS
'.. ist die Wiederholungsposition im Beleg des Vertragskontokorrents aus dem Business-Key, Bestandteil des Business-Keys

aus DPAYP.DOC2R (13. - 15. Stelle) 	(z.Zt. immer 0)

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.C_Postenkennzeichen_B IS
'... bezeichnet den Grund der Ausnahme

aus DPAYP.POKEN, siehe Postenkennzeichen.xls

z.B.
3		Posten ist zur Zahlung gesperrt
4		Konto ist zur Zahlung gesperrt
5		Konto ist f�r Ausgleich gesperrt
6		Kein g�ltiger Zahlweg gefunden
7		Fehler beim Erstellen des Ausgleichsbelegs, bitte Jobprotokoll lesen
8		Partner hat keine Adresse
9		Partner/Konto aus Posten existiert nicht
10	Zahlweg im Posten soll bei diesem Lauf nicht ber�cksichtigt werden
11	Weder Bankverbindung noch Kartenverbindung sind ermittelbar
12	Mindestbetrag f�r Regulierung wurde nicht erreicht
13	Posten ist f�r Ausgleich gesperrt
16	Zahlwege f�r diesen Lauf sind weder im Konto noch im Posten angegeben
17	Zahlwegselektion erfolglos: Forderung nicht regulierbar
18	Zahlwegselektion erfolglos: Guthaben ohne Forderungen, Einzugskunde
19	Zahlwegselektion erfolglos: Guthaben, Selbstzahler
20	R�ckzahlung: Zahlweg bei diesem Lauf nicht zu ber�cksichtigen
21	R�ckzahlung: Hausbank-ID / Konto-ID nicht zu ber�cksichtigen
22	Zahlwegselektion erfolglos: Guthaben mit Forderungen, Einzugskunde
23	R�ckzahlungsanforderung zur Auszahlung gesperrt
24	Zuviele Positionen auszugleichen in einer Zahlung
25	Posten ist zur Zahlung gesperrt (Pr�fung noch nicht abgeschlossen)
26	R�ckzahlungsanforderung gesperrt (Pr�fung noch nicht abgeschlossen)
27	R�ckzahlungsanforderung bereits mit sp�terem Buchungsdatum storniert
28	Partner hat keine Bankverbindung
usw.

Datenschutz $B';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.DatumZahllauf IS
'... ist das Datum des erstellenden Zahlungslaufs

aus DPAYP.LAUFD

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem,

hier := DatumZahllauf +1  um 00.00 Uhr

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

hier := DatumZahllauf +1 um 00.00 Uhr

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.KennungZahllauf IS
'.. ist die Kennung/ Identifikation des Zahlungslaufs.

aus DPAYP.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DPAYP.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.TeilpositionNr IS
'laufende Nummer der Teilposition zur BelegPosition, Bestandteil des Business-Keys.

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition �ber den Restbetrag. Daraus folgt meistens, dass eine Belegposition  h�chstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verh�lt sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten alsomit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

aus DPAYP.DOC2R (20. - 22. Stelle)

Datenschutz $-';

COMMENT ON COLUMN KT06_BePoLaufProg_InEx_01_WBM.Zahlung_lfd IS
'.. ist die laufende Nummer der Zahlung innerhalb des Zahllaufs.

aus DPAYP.PAYNO

Datenschutz $-';

COMMENT ON TABLE KT06_BePoLaufProg_InEx_01_WBM IS
'aus FS-CD / DPAYP,  falls DOC2T= 02 "Belegposition im Kontokorrent" 
und ausschlie�lich f�r Prognosel�ufe (FAUFI = Prog*)

';

