--<ScriptOptions statementTerminator=";"/>

CREATE TABLE MD07_Spaet_Rueckvers_Pausch (
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		C_Risikotraeger NUMBER(28 , 0) NOT NULL,
		C_Sparte NUMBER(28 , 0) NOT NULL,
		Sparte_Bez VARCHAR2(24 CHAR) NOT NULL,
		Eintrittsjahr NUMBER(10 , 0) NOT NULL,
		Statistikjahr NUMBER(10 , 0) NOT NULL,
		Statistikmonat NUMBER(10 , 0) NOT NULL,
		SpaetschRueckstEntsch NUMBER(16 , 2),
		SpaetschRueckstKosten NUMBER(16 , 2),
		RueckversRueckstEntsch NUMBER(16 , 2),
		RueckversRueckstKosten NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE MD07_Spaet_Rueckvers_Pausch ADD CONSTRAINT MD07_Spaet_Rueckvers_Pausch_PK PRIMARY KEY
	(TA_Ladedatum,
	 C_Risikotraeger,
	 C_Sparte,
	 Statistikjahr,
	 Statistikmonat,
	 Eintrittsjahr,
	 Sparte_Bez);

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.C_Risikotraeger IS
'...ist das Unternehmenskennzeichen des Risikotr�gers. 

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.C_Sparte IS
'... ist die Spartenkennziffer, auf welche sich die R�ckstellungspauschalen beziehen

Quelle: Excel

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Eintrittsjahr IS
'... definiert das Eintrittsjahr, f�r das diese R�ckstellungen gebildet worden sind.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.RueckversRueckstEntsch IS
'... R�ckversicherungspauschale - Entsch�digungen. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.RueckversRueckstKosten IS
'...R�ckversicherungspauschale - Kosten. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.SpaetschRueckstEntsch IS
'... ist der Betrag, der f�r Entsch�digungszahlungen von Sp�tsch�den zur�ckgestellt wurde. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.SpaetschRueckstKosten IS
'... ist der Betrag, der f�r Kosten der Schadenregulierung von Sp�tsch�den zur�ckgestellt wurde. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Sparte_Bez IS
'Spartenbezeichner innerhalb der Spartenkennziffer, z.B. Hausrat und Wohngeb�ude innerhalb der Spartenkennziffer 60 (Elementar)

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Statistikjahr IS
'... definiert das Statistikjahr, in dem diese R�ckstellungen gebildet worden sind, d.h. zusammen mit dem Statistikmonat das Enddatum, ab dem neu gemeldete Sp�tsch�den durch die Sp�tschadenpauschale gedeckt sind.

Beispiel: 
Eintrittsjahr 1991
Statistikjahr 1991
Statistikmonat 12

=> Alle Sch�den des Eintrittsjahres 1991 mit Meldejahr >=1992 sind durch die Sp�tschadenpauschale abgedeckt

Beispiel 2:
Eintrittsjahr 1991
Statistikjahr 1994
Statistikmonat 03

=> Alle Sch�den des Eintrittsjahres 1991 mit Meldedatum >=01.04.1994 sind durch die Sp�tschadenpauschale abgedeckt

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.Statistikmonat IS
'... definiert den Statistikmonat im Statistikjahr, in dem diese R�ckstellungen gebildet worden sind, d.h. ab dem neu gemeldete Sp�tsch�den durch die Sp�tschadenpauschale gedeckt sind.

Beispiel: 
Eintrittsjahr 1991
Statistikjahr 1991
Statistikmonat 12

=> Alle Sch�den des Eintrittsjahres 1991 mit Meldejahr >=1992 sind durch die Sp�tschadenpauschale abgedeckt

Beispiel 2:
Eintrittsjahr 1991
Statistikjahr 1994
Statistikmonat 03

=> Alle Sch�den des Eintrittsjahres 1991 mit Meldedatum >=01.04.1994 sind durch die Sp�tschadenpauschale abgedeckt

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der n�chste Datensatz in die Tabelle geladen wurde, Es entspricht dem Lade-Lauf-Datum des n�chsten Laufs.	date

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN MD07_Spaet_Rueckvers_Pausch.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

