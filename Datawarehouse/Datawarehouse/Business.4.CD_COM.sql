--<ScriptOptions statementTerminator=";"/>
-- Version 14450

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DFKKKO.OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Belegdatum IS
'... ist das Datum, an dem ein Beleg (insbesondere ein Zahlungseingang) im Unternehmen eingeht bzw. die DEVK von einer Zahlung erstmalig Kenntnis erhält. Kann abweichend vom Valutadatum und vom Erfassungsdatum (Angelegt_am) sein.

aus DFKKKO.BLDAT

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Buchungsdatum IS
'... ist das echte Fälligkeitsdatum, welches von der Nettofälligkeit bspw. dann abweicht, wenn die Fälligkeit auf einen Feiertag fällt (01.01.), wird für den Abgleich mit dem Hauptbuch verwendet.

aus DFKKKO.BUDAT

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.C_BelegHerkunft IS
'... gibt an, wie der Beleg erstellt worden ist bzw. welcher maschinelle Ablauf den Beleg erstellt hat

s. BelegHerkunft.xls (nicht alle werden verwendet)

aus DFKKKO.HERKF

1		Manuelle Buchung
2		Storno
3		Kontenpflege
4		Maschinelles Ausgleichen
5		Zahlungsstapel
6		Zahllauf
7		Zinsbeleg
8		Rückläufer
9		Rücknahme Ausgleich
10	SD Faktura
11	Beleg aus Mahnlauf
12	Ratenplan
13	Barsicherheit
14	Korrespondenz
15	Gebühr
16	Ausbuchung
17	Massenausbuchung
18	Sonstige Aktivitäten
19	Manuelle Zahlung
1A	Externe Barzahlung
1B	Externe Kartenzahlung
1C	Externe Scheckzahlung
1D	Externe Postauftrag
1E	Externe Zahlung
1I		Händlerprovision
1S	Storno von Externe Kasse
1T	Transferbeleg
1X	Einlage durch externe Kasse
1Y	Entnahme durch externe Kasse
1Z	Differenzbuchung durch externe Kasse
20	Manuelle Kartenzahlung
21	Manuelle Scheckzahlung
22	Manueller Postauftrag
23	Rückläufer zum Zahlungsauftrag
24	Barkasse: mehrere Zahlungstypen
25	Scheckstapel
26	Abrechnung Zahlkarte
27	Zinsbeleg Zinslauf
28	Zinsbeleg Mahnung
29	Zinsbeleg Fakturierung
30	Zins Laufzeit Raten
31	Erlösumbuchungslauf
32	Zweifelhaftstellung / Einzelwertberichtg
33	Belegübernahme
34	Transfer offener Posten
35	Rückzahlung
36	Beleg über Buchungsschnittstelle
37	Zinsbeleg Barzahlung
38	FI-CA: Abf. Bollo
39	Teilrücknahme Ausgleich
40	Fremdwährungsbewertung
41	Convert Stat to Real
42	Beleg Korrespondenzmahnen
43	Einnahmenverteilung
44	Anordnung
45	Zahlungsauftragsstapel
46	Scheckeinlösung
47	Ausgleichen (Biller Direct)
48	Bündelung von Posten
49	Storno Überzahlung (Biller Direct)
4I		Inkassogebühren, -zins und -ausbuchungen
4S	Storno Einnahmenverteilung
50	Faktura Billing Engine
51	Aufteilung nach GeschBer und ProfitCtr
52	Zusatzbuchung bei Storno oder Rückläufer
53	Änderung / Ausbuchung Quellensteuer
54	Transfer offener Posten aus Guthabenklae
55	Kreditkartenstapel
56	Umgliederung aus OP-Liste zum Stichtag
57	Storno Einlagen/Entnahmen im Kassenbuch
58	Externe Zahlstelle, Dateiübernahme
59	Storno Fremdwährungsbewertung
60	Manuelle Scheckausgabe
61	Zinsbuchung zum Zahlungsversprechen
62	Sonstige Buchung zum Zahlungsversprechen
63	Rückbuchung Akonto auf Klärung
64	Bestätigte Gutschriftsumbuchung
65	Manuelle Sammelrechnung
67	Ausgleichen (Zahlungsservices)
68	Scheckabtretung
70	IDOC Beleguebernahme
71	IDOC Belegstorno
72	IDOC Rechnung
73	IDOC Gutschrift
74	IDOC Ausbuchung
75	IDOC Anzahlungsanforderung
77	Fakturierung
78	Storno Fakturierung
79	Forderung an externe Händler
80	Umbuchen auf anderen verantw. Buchungsk.
81	Korrekturbuchung nach VBUND-Änderung
82	Forderung an Inkassobüro
85	Umbuchung auf Hauptbuch
90	RE: Periodische Buchung
91	RE: Nebenkostenabrechnung
92	RE: Umsatzabrechnung
98	Jahresabschlußbuchung
99	Technischer Beleg
A1	Gutschrift aus Anpassungsanforderung
A2	Forderung aus Anpassungsanforderung
L1	Leasing (Agency Business)
V1	Sollstellung
V2	Zahlplan
V3	Umsatzverrechnung
V4	IS-CD Maklermeldung
V5	IS-CD-Maklermeld Sum
V6	IS-CD-Depotverrechng
V7	Buchung MitvAnteile
V8	Kontokorent. Ausgl.
V9	ISCD-Maklerm. Nachb.
VA	ISCD-Währungswechsel
VB	Maklermeldg Verrechn
VC	Aufteilung Guthabenposten
VD	Ausgleich der ältesten Schuld
VF	Verrechnung vorl. Prämienanforderung
VI		Agenturinkasso
VS	Korrektur ungültiger Steuersätze
VU	Umbuchung für Ausgangszahlung

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.C_Belegart IS
'... gibt an, um welche Art von Belegen es sich handelt. Liste ist zwischen Nebenbuch und Hauptbuch verschieden.

aus DFKKKO.BLART

Werteliste:
00 Migration
01 Nacharbeit Migration
10 Forderung
11 Gebühr
12 Zinsen
13 Rücknahme Niederschl
14 Buchung aus GM
15 Ratenplan
16 Buchung f Stundung
17 PC Miete
18 Ford. Vorwegabzug
19 ZfA Zulagenforderung
20 Eingangszahlung
21 Ausgangszahlung
22 Rückläufer
23 Scheckeinlösung
24 Bareinzahlung RD
25 Leistungseinbehalt K
26 Umwandlung Leben
27 Schaden Makler RD27
28 Ausgl. Vorwegabzug
29 ZfA Eingangszahlung
30 Stornierung
31 Scheckstorno Altsys.
32 Klärungsbuchung
33 Kostenforderung
40 BUZ-Leistung
41 Leistungseinbehalt
50 Manuelle Buchung
51 Postentransfer oder BZ-Wechsel
52 Umbuchung anderer FB
60 Masch. Ausgleichen
61 Ausgleichsbuchung
70 Ford./Verb. Schaden
71 Umbuchung Schaden
75 Ford./Verb. LL
76 Sto. Ford./Verb. LL
77 Verrechnung LL
80 Forderungsberichtig.
81 Umbuchung (verz.Erl)
82 Man. Ausbuchung
83 Umgliederung
84 Ausbuchung m. Steuer
85 Ausbuchung o. Steuer
86 Umbuchung
87 Vertragsumsetzung
90 Zulagenforderung FPT
91 Eingangszahlung FPT
99 Bündelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.C_RuecklaeuferGrund IS
'... gibt den Grund an, warum es zu einem Rückläufer kam.

aus DFKKKO.RLGRD

Bea: durch Einführung von SEPA sind zwei unterschiedliche Kürzelsysteme vorhanden (alt/ SEPA), zwischen denen es aber keine zu Uneindeutigkeit führenden Überschneidungen gibt. Es besteht also keine Verwechslungsgefahr. Nach SEPA-Einführung werden die alten Kürzel bis auf "ZER Exkassorückläufer" und "ZSR Scheckrückläufer" nicht mehr verwendet.

SEPA:
901       IBAN fehlerhaft
902       Konto aufgelöst
903       Konto für LSV gesperrt
904       Zahlungsart für Konto unzulässig
905       Transaktionscode unzulässig/falsches Dateiformat
906       Rückgabe mangels Deckung
907       Doppeleinreichung
908       Adresse ZahlEmpfänger fehlt/unvollständig
909       Kein gültiges Mandat
910       Mandatsinformation fehlerhaft/unvollständig
911       Dateiformat ungültig
912       Widerspruch der Lastschrift durch den Zahlungspfli
913       Kontoinhaber verstorben
914       Sonstige Gründe (Text: ohne Angaben)
915       BIC passt nicht zum Konto
916       CutOff-Zeit überschritten
917       Ablehnung auf Grund von aufsichtsrechtl. Vorschr.
918       Spezifische Dienstleistung der Bank des Zahlungspf
919       Rückgabe aufgrund eines Recalls
928       Kennung des Zahlungseinreichers ist nicht korrekt
930       Zahler Ist Ein Verbraucher
931       Falsche Lastschriftart
950       Bank ist nicht SEPA-fähig

"alt":
Z00       ohne Grund
Z20       Angaben nicht eindeutig
Z30       Keine Einzugsermächtigung
Z40       Rückruf
Z50       Widerspruch
Z60       Rückgabe
Z70       Nichtvorlage GSE-Papier
Z80       Reserve
Z90       Reserve
ZB1       Z00+Z10+902+914 für geänderte Bankverbindung
ZB2       Z20-Z60+901+903-913+915-931 für geänderte Bankverb
ZER       Exkassorückläufer
ZSR       Scheckrückläufer

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKKO.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.angelegt_am IS
'... gibt die  tatsächliche physische Zeit an, zu der der Beleg in der Quelldatenbank angelegt worden ist 

aus DFKKKO.CPUDT || DFKKKO.CPUTM

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.FK_KT01_KT01_Ruecklaeufer IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKRP.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.RuecklaeuferStapel IS
'Bezeichnung des Rückläuferstapels

aus DFKKRP.KEYR1

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.StapelPos_lfd IS
'.. ist die laufende Nummer des Rückläufers in seinem Rückläuferstapel

aus DFKKRP.POSRA

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Rueckl_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.FK_KT01_Beleg_P IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.SK_KT01_KT01_Ruecklaeufer IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT01_Ruecklaeufer_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.FK_KT01_KT06_Ausgleich IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_02_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.FK_KT10_ZahllaufZahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.SK_KT01_KT10_Zahllauf_AusglBel IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT10_Zahllauf_AusglBel_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.SK_KT02_KT05 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.FK_KT02_KT05 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT05_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.FK_KT06_BelegPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.SK_KT02_KT06 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT06_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg IS
'... gibt u.a. an, wann der LSV-Einzug stattfinden soll. Wird vom operativen System vorgegeben.

Insbesondere ist in FS-CD zu jedem Zahlweg eine bestimmte DEVK-Bankverbindung hinterlegt.

für FS-CD /nicht-K: FKKVKP.EZAWE

0  	LSV zum 1. des Monats
1  	LSV zum 15. des Monats
5  	LSV zum 1. oder 15. des Monats
6		SCHADEN LSV

Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.FK_KT02_Vertragskonto IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

für FS-CD aus: FKKVKP.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet werden sollen bzw. dürfen.

Ein Wechsel des zugeordneten Vertragskontoinhabers ist nicht vorgesehen, in diesem Fall wird ein neues Vertragskonto angelegt, auf das die InkassoObjekte umgesetzt werden.

Vertragskonto aus dem Business-Key

für FS-CD /nicht-K: FKKVKP.VKONT

für FS-CD / K:
aus SEPA_MANDATE.REF_ID

Datenschutz $A1';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.angelegt_am IS
'... gibt das Datum an, an dem das Vertragskonto erstmalig angelegt wurde

für FS-CD /nicht-K: FKKVKP.ERDAT

Datenschutz $-';

COMMENT ON COLUMN KT02_Partner_VK_InEx_01_HBS.geaendert_am IS
'... gibt an, wann diese Änderung durchgeführt wurde

für FS-CD /nicht-K: FKKVKP.AEDATP

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_BH.SK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.C_Vertragskontotyp IS
'... gibt den Typ des Vertragskontos an.

für FS-CD /nicht-K: DIMAIOBPAR.PARTNERACCTYP

10 Beitrag/Prämie (Standard)
20 Riester
27 Großkundenbetreuung
30 Leben-BUZ-Leistungsfall
40 PC-Miete
50 fondsgebundene Rentenversicherung (FRV)
60 vermögenswirksame Lebensversicherung
70 CRI-Lebensversicherung
75 Krankheitskostenvoll
76 Staatlich geförderte Pflegetageversicherung
80 Direktversicherung
90 DB-Spezialdienst - Betr. Altersvorsorge
C2 Schaden
LL Leben Leistung

für K:
10 Beitrag/Prämie (Standard) konstant

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

für FS-CD aus:DIMAIOBPAR.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_Vertragskonto_InEx_01_HBS.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet werden sollen bzw. dürfen.

Ein Wechsel des zugeordneten Vertragskontoinhabers ist nicht vorgesehen, in diesem Fall wird ein neues Vertragskonto angelegt, auf das die InkassoObjekte umgesetzt werden.

Vertragskonto aus dem Business-Key

für FS-CD /nicht-K: DIMAIOBPAR.PARTNERACC

für FS-CD / K:
aus SEPA_MANDATE.REF_ID

Datenschutz $A1';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Betrag IS
'.... gibt den Betrag an, über den die Zahlplanposition lautet.
Je nach Eintrag im Attribut "C_Einmalzahlung" handelt es sich um einen einmaligen Betrag oder eine laufend Rate.

in der Quelle FS-CD gibt es zwei Felder, die diesen Betrag repräsentieren:
Betrag:   für Einmalaufträge
Rate:      für periodische Aufträge

aus VVSCPOS.AMOUNT_INST (Rate) bzw. aus VVSCPOS.AMOUNT_TOTAL (Betrag)

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.C_Archivierung IS
'.... gibt an, ob die Zahlplanposition archiviert ist. 

Diese Zahlplanpositionen sind für die Sollstellung nicht relevant. Dieses Kennzeichen wird bei der Sollstellung gesetzt oder wenn eine entsprechende Lieferung mit TypZP=99 erfolgt.

aus VVSCPOS.ARCHI

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.C_Einmalzahlung IS
'... gibt an, ob es sich um eine Einmalzahlung handelt.

ja/ nein

aus VVSCPOS.PSNGL

Wert:
X Einmalzahlung

Bea: Redundant zu
ja, falls VVSCPOS.AMOUNT_INST =leer
nein, falls VVSCPOS.AMOUNT_INST <> leer

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.C_Hauptvorgang IS
'z. B. Forderung, Schadenzahlung
4-stelliges Kürzel
s. auch ''Teilvorgang''

aus VVSCPOS.HVORG

1000 Beitrag
1010 Beitrag Leben Hauptvers.
1020 Beitrag Leben Berufsunf.
1030 Beitrag Leben Unfallzusatz
1040 Beitrag Leben Erwerbsunf.
1050 Beitrag Leben Arbeitsunf.
1060 Beitrag Leben Risikozusatz
1070 Beitrag Leben Hinterbl.vers.
1080 Vertragsübertragung
1100 Inkasso
1400 Ratenplan
1500 Vorwegabzug Leben (Ford/Ausgl)
2000 Gebühr
2100 Zinsen
2200 Kosten
2300 Stundung
3000 Zulage
4100 Umbuchung
4200 Ausgleichsrücknahme
4300 Storno
4500 Vorweggenommene Auszahlung
4600 Manueller Ausgangsscheck
5000 Akonto
6000 Ausgleichsbuchung (Schaden)
6100 Ausgangszahlung (Schaden)
6200 Eingangszahlung (Schaden)
6300 Schaden Regressforderung
6400 Migration Schaden
6500 Ford. / Verbl. Leben Leistung
6501 Neueinstellung ohne Auszahlung
6600 Forderung Leben Leistung
7000 Hauptbuch-Umbuchung (KCLJ)
9000 Bündelung

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.C_Teilvorgang IS
'4-stelliges Kürzel
nur im Zusammenhang mit ''Hauptvorgang'' eindeutig interpretierbar.

aus VVSCPOS.TVORG

z.B.:

HVorg.	Teilvorg.
1000 		0100          Erstbeitrag
1000 		0110          Folgebeitrag
1000 		0130          Einmaliger Beitrag
1000 		0400          PC-Miete
1000 		1999          Rücknahme Niederschlagung
1000 		2999          Rückläufer aus KID
1010 		0100          Erstbeitrag Leben Hauptvers.
1010 		0110          Folgebeitrag Leben Hauptvers.
1010 		0140          Zuzahlung
1010 		0150          Vorwegabzug  Leben Hauptvers.
1010 		0160          Niederschlagung
1020 		0100          Erstbeitrag Leben Berufsunf.
1020 		0110          Folgebeitrag Leben Berufsunf.
1020 		0150          Vorwegabzug
1030 		0100          Erstbeitrag Unfallzusatz
1030 		0110          Folgebeitrag Unfallzusatz
1030 		0150          Vorwegabzug Unfallzusatz
1040 		0100          Erstbeitrag Leben Erwerbsunf.
1040		0110          Folgebeitrag Leben Erwerbsunf.
1040 		0150          Vorwegabzug Leben Erwerbsunf.
1050 		0100          Erstbeitrag Leben Arbeitsunf.
1050 		0110          Folgebeitrag Leben Arbeitsunf.
1050 		0150          Vorwegabzug Leben Arbeitsunf.
1060 		0100          Erstbeitrag Leben Risikozusus.
1060 		0110          Folgebeitrag Leben Risikozus.
1060 		0150          Vorwegabzug Leben Risikozus.
1070 		0100          Erstbeitrag Leben Hint.vers.
1070 		0110          Folgebeitrag Leben Hint.vers.
1070 		0150          Vorwegabzug Leben Hint.vers.
1080 		0200          Deckungskapital
1080 		0201          Gewinnguthaben
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.C_Waehrung IS
'... gibt die zm Betrag gehörende Währung an.

aus VVSCPOS.CURR

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.FK_KT03_Zahlplanposition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
s. "Gueltig_Ab"

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

s. "Gueltig_Bis" und ""vorzeitigBeenden"

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.FachlicherBeginn IS
'... ist die Information des Beginns der Zahlplanposition im operativen System der Sparte. Kann von "gueltig_ab" z.B. wegen rückwirkender Änderungen abweichen.

Bea: Dies ist nicht notwendig ein Vertragsbeginn.

aus VVSCPOS.ZZSPARTENBEGINN

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.InExkassoObjektNr_A IS
'Referenzangabe: Vertragsnummer, Schadennummer, also das zugehörige In-/Exkassoobjekt

aus VVSCPOS.VTREF

Datenschutz $A1';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus VVSCPOS.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD
aus VVSCPOS.GPART

Datenschutz $A1';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.ZPPosition IS
'ZPP-Positionskennung

aus VVSCPOS.POSNR

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.ZPPosition_Zusatz IS
'... ist eine zusätzliche ZPP-Positionskennung 

aus VVSCPOS.SCPOSNR

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.ZW_InEx_Beginn IS
'... ist das Gültig-ab-Datum der Zahlweise für die Zahlplanposition.

aus VVSCPOS.PKEYFD

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.angelegt_am IS
'... gibt das Datum und die Uhrzeit an, an dem die Zahlplanposition erstmalig angelegt worden ist.

aus VVSCPOS.CRDATE und ~.CRTIME (zwei Felder getrennt nach Datum und Uhrzeit)

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.geaendert_am IS
'... Datum und Uhrzeit der letzten Änderung an der Zahlplanposition

aus VVSCPOS.CHDATE und ~.CHTIME (zwei Felder getrennt nach Datum und Uhrzeit)

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.gueltig_bis IS
'... definiert, bis zu welchem Zeitpunkt der Sollstellungslauf diese Zahlplanposition bei der Buchung von Belegen berücksichtigen muß.

aus VVSCPOS.PMTTO
Bea:
Zunächst unbefristete Zahlplanpositionen haben in FS-CD ein PMTTO am 31.12.2099. Dieses Datum ist entsprechend zu transformieren (z.B. 31.12.9999).
In FS-CD wird bei Beendung einer ursprünglich unbefristeten ZPP dieses Feld nicht verändert, sondern die Beendung separat dokumentiert (s. "vorzeitigBeenden"). Übernahme des Inhalts von "vorzeitigBeenden" = VVSCPOS.PMEND ist zu prüfen.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.gueltig_von IS
'... definiert, ab welchem Zeitpunkt der Sollstellungslauf diese Zahlplanposition bei der Buchung von Belegen berücksichtigen muß.

aus VVSCPOS.PMTFR

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanpos_InEx_01_WBS.vorzeitigBeenden IS
'... gibt das Endedatum an, falls eine ursprünglich unbefristet gültige ZPP beendet werden soll.

aus VVSCPOS.PMEND + PMEND_TIME
Dieses Attribut setzt sich zusammen aus den Quelldaten vorzeitigBeenden und Beendigung_um und wird damit auf Uhrzeitebene angegeben.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.SK_KT03_Zahlplanposition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT03_Zahlplanposition_KT05_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.SK_KT05_ER01_InExO_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExO_Schaden_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektArt IS
'... es werden drei Arten von In-/Exkassoobjekten unterschieden.
Dieses Attribut findet sich nicht(!) in der Quelle wieder. Inkassoobjekte mit dem Präfix ICL sind von der Art Schaden, Präfix LL sind LebenLeistung alle anderen sind Vertragsnummern, wobei der 3-stellige Suffix entfällt.

Beitrag
Schaden
LebenLeistung

aus den Präfixen (ICL, LL, keins) in DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektTyp IS
'... gibt an, von welchem Typ das Inkassoobjekt ist.

11	10	Lebensversicherung
12	10	Unfallversicherung
13	10	Krankenversicherung
14	10	Pensionsfonds
21	10	Sachversicherung
22	10	Glasversicherung
23	10	Hausratversicherung
24	10	Gebäudeversicherung
25	10	Caravan-Universal-Versicherung
26	10	PC-Miete
30	10	Kraftfahrtversicherung
31	10	Mopedversicherung
40	10	Reiseversicherung
41	10	kurzfristige Reiseversicherung
42	10	Sparda-Reisepaket-Versicherung
43	10	Service-Plus
44	10	Arbeitslosenkreditversicherung
50	10	Rechtsschutzversicherung
60	10	Haftpflichtversicherung
75	10	Auslandsreisekrankenvers.
77	10	Krankenversicherung ET-B
78	10	Pflegepflichtversicherung
79	10	Geförderte Pflegeversicherung
C2	40	Schaden
LL	40	Leben Leistung

aus DIMAIOBPAR.INSOBJECTTYP

Datenschutz $-
';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.C_Lieferung_faelligkeitsbez IS
'... dokumentiert, ob für dieses Inkassoobjekt eine fälligkeitbezogene Belieferung des Inkassos durchgeführt wird.

Werte: ja/nein

aus DIMAIOBPAR.Z_VO_ZW mit:
- ja, falls DIMAIOBPAR.Z_VO_ZW nicht leer,
- nein, sonst


Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.C_StatusInkassoObjekt IS
'... gibt den Status des zugrundeliegenden Objektes wieder, kommt also in der Regel als Information "aus der Sparte".

10 -- gültiger Vertrag
11 -- beitragsfrei
30 -- erloschen
40 -- besonders (bedeutet, dass die Beziehung InkassoObjekt zu Partner ungültig ist, d.h in der Regel ist ein BZ-Wechsel durchgeführt worden. Diese Information hat die Sparte nicht)

aus DIMAIOBPAR.Z_VSTATUS

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich IS
'...ist die tatsächliche vertraglich vereinbarte Zahlweise.

aus DIMAIOBPAR.Z_VO_ZW, falls nicht leer
oder aus DIMAIOBPAR.PKEY, falls DIMAIOBPAR.Z_VO_ZW leer.

Für alle Verträge, die eine fälligkeitsbezogene Belieferung des Inkassos durchführen ist Z_VO_ZW  gefüllt. Der Wert ist redundant zur zahlweise am Vertrag und bildet den Zustand aus FS-CD ab.

"Ohne diese Info können wir nicht mal ordentlich mahnen oder auswerten."

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT
 
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.InExkassoObjektNr_A IS
'ist der eindeutige Schlüssel des InkassoObjekts (alfanumerisch) aus dem Business-Key, entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr für Versicherungskontozuordnung. Entspricht dann der Versicherungsscheinnummer bzw. Schadennummer.

Auf Wunsch von Herrn Beblik wurden die Präfixe "ICL" und "LL" ebenfalls entfernt.

aus DIMAIOBPAR.INSOBJECT

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DIMAIOBPAR.CLIENT 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, mit Prüfziffer.

aus DIMAIOBPAR.PARTNER

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_01_HBS.angelegt_am IS
'.... gibt an, wann das InkassoObjekt angelegt worden ist

aus DIMAIOBPAR.ERDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObjekt_BH.SK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObjekt_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObjekt_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObjekt_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObjekt_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.SK_KT05_KT06 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT06_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.FK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.SK_KT05_WE01_InExO_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.AusgleichsbelegNr_A IS
'... hält zur Dokumentation die Belegnummer des Ausgleichsbelegs fest.
Dies ist ab dem geeigneten Release redundant zu KT01_KT06_Ausgleich_BL.

aus DFKKOP.AUGBL

Datenschutz $A1?';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Ausgleichsbetrag IS
'... gibt an wie hoch der Ausgleichsbetrag ist. Es kann auch nur teilweise ausgeglichen werden.

aus DFKKOP.AUGBT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Ausgleichsbuchungsdatum IS
'... gibt das Buchungsdatum des Ausgleichsbelegs an

aus DFKKOP.AUGBD

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.C_Ausgleichsgrund IS
'... gibt den Grund an, warum ein Ausgleich hergestellt wurde.

aus DFKKOP.AUGRD

s. Liste Ausgleichsgründe.xls

01 Eingangszahlung
02 Ausgangszahlung
03 Posten transgerieren
04 Ausbuchung
05 Storno
06 Rücknahme statistischer Posten
07 Erstellung der Endabrechnung
08 Kontenpflege
09 Wiederholungsplan gestoppt
10 Rückläufer
11 Rücknahme Ausgleich
12 Erstellung der Sollstellung
13 Ausgleich Zahlung auf Allgemeine Anordnung
14 Massenausbuchung
15 Maschinelles Ausgleichen
16 manuelles Deaktivieren Abschlagsposition
17 Verrechnung Anzahlung mit SD Faktura
18 Maklermeldung
19 Rücknahme Jahresvorausleistung
20 Migration Sollstellung
21 Forderungsübernahme (Debitoren-/Vertragswechsel)
22 Abschlagsplan: Deaktivierung durch Portionswechsel
23 Zahlungsschema: AnzAnfo deakt. In Fakturierung
24 Abschlagsplan: Deaktivierung durch Euroumstellung
25 Gutschriftsverrechnung
26 Zahlung durch externe Zahlstelle gemeldet
27 Zahlungsverteilung
28 Verrechnung vorläufiger Prämienanforderung FS-CD
30 Quellensteuerabzug zum Rechnungszeitpunkt
31 Eingangszahlung mit Kreditinstrument / Wechsel
32 Ausgangszahlung mit Kreditinstrument / Wechsel
33 Umbuchen auf anderen Buchungskreis
34 Guthabenklärung
35 Umbuchung für Ausgangszahlung
41 Rückbuchung Akontozahlung auf das Klärungskonto
45 Ausgleich nach Storno mit erzeugten Gegenbuchungen
70 Ausgleich einer Eingangskorrespondenzanforderung
71 Storno einer Eingangskorrespondenzanforderung
85 Umbuchung auf Hauptbuch

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.C_Ausgleichsstatus IS
'... sagt aus, dass die entsprechende Belegposition ausgeglichen ist.

gültige Werte:

NULL   nicht ausgeglichen
9           ausgeglichen

aus DFKKOP.AUGST

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.C_Ausgleichswaehrung IS
'... gibt an in welcher Währung der Ausgleich stattgefunden hat

aus DFKKOP.AUGWA

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.C_zurueckgenommen IS
'"X" identifiziert Abschreibungen von statistischen Forderungen (? s. Remigrationsregel Leistungssegement und Zahlung),
insbesondere Rücknahme von Regressforderungen

aus DFKKOP.AUGOB 

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelPos_Ausgl_InEx_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DFKKOP.OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.BelegPositionNr IS
'.. ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus DFKKOP.OPUPK

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.BelegWiederholungsPosNr IS
'.. ist die Wiederholungsposition im Beleg des Vertragskontokorrents aus dem Business-Key, Bestandteil des Business-Keys

aus DFKKOP.OPUPW (konstant = 0)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.BetragInEuro IS
'... ist der Betrag in der Hauswährung Euro.

aus DFKKOP.BETRH

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_AbschlussGerichtlMahn_B IS
'gibt Informationen über  den Abschluß der Verfolgung der Forderungen.

offen / erfolgreich/ erfolglos/ unbekannt

aus DFKKOP.Z_STATUS_GM_DOC  (siehe angehängte Ableitungsvorschrift )

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_ArtGerichtlicheMahn_B IS
'gibt Informationen über interne / externe Verfolgung der Forderung

intern/ extern/ unbekannt

aus DFKKOP.Z_STATUS_GM_DOC  (siehe angehängte Ableitungsvorschrift )

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis IS
'... dieses Attribut stellt die zugehörige selbstständig bilanzierende Einheit dar. 

Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus DFKKOP.BUKRS

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang IS
'z. B. Forderung, Schadenzahlung
4-stelliges Kürzel
s. auch ''Teilvorgang''

aus DFKKOP.HVORG

1000 Beitrag
1010 Beitrag Leben Hauptvers.
1020 Beitrag Leben Berufsunf.
1030 Beitrag Leben Unfallzusatz
1040 Beitrag Leben Erwerbsunf.
1050 Beitrag Leben Arbeitsunf.
1060 Beitrag Leben Risikozusatz
1070 Beitrag Leben Hinterbl.vers.
1080 Vertragsübertragung
1100 Inkasso
1400 Ratenplan
1500 Vorwegabzug Leben (Ford/Ausgl)
2000 Gebühr
2100 Zinsen
2200 Kosten
2300 Stundung
3000 Zulage
4100 Umbuchung
4200 Ausgleichsrücknahme
4300 Storno
4500 Vorweggenommene Auszahlung
4600 Manueller Ausgangsscheck
5000 Akonto
6000 Ausgleichsbuchung (Schaden)
6100 Ausgangszahlung (Schaden)
6200 Eingangszahlung (Schaden)
6300 Schaden Regressforderung
6400 Migration Schaden
6500 Ford. / Verbl. Leben Leistung
6501 Neueinstellung ohne Auszahlung
6600 Forderung Leben Leistung
7000 Hauptbuch-Umbuchung (KCLJ)
9000 Bündelung

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe IS
'... bildet Gruppen von Produkten aus Überwachungssicht ab.

aus DFKKOP.PRGRP

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_Steuerkennzeichen IS
'.. ist ein Kennzeichen für die Steuer, die mit dieser Belegposition verbunden ist.

aus DFKKOP.MWSKZ

Steuerkennzeichen	Beschreibung
A0								Ausgangssteuer 0 %
A1								Ausgangssteuer 19 %
A2								Ausgangssteuer 7 %
V0								Vorsteuer 0 %
V1								Vorsteuer 19 %
V2								Vorsteuer 7 %
U1								Umsatzsteuer nach § 13 b UStG 19 % EU
U2								Umsatzsteuer nach § 13 b UStG 7 % EU
U3								Umsatzsteuer nach § 13 b UStG 19 % EU Vorsteuer 19 %
U4								Umsatzsteuer nach § 13 b UStG 19 % Drittland

s. Steuerkennzeichen.xls

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.C_Teilvorgang IS
'4-stelliges Kürzel
nur im Zusammenhang mit ''Hauptvorgang'' eindeutig interpretierbar.

aus DFKKOP.TVORG

z.B.:

HVorg.	Teilvorg.
1000 		0100          Erstbeitrag
1000 		0110          Folgebeitrag
1000 		0130          Einmaliger Beitrag
1000 		0400          PC-Miete
1000 		1999          Rücknahme Niederschlagung
1000 		2999          Rückläufer aus KID
1010 		0100          Erstbeitrag Leben Hauptvers.
1010 		0110          Folgebeitrag Leben Hauptvers.
1010 		0140          Zuzahlung
1010 		0150          Vorwegabzug  Leben Hauptvers.
1010 		0160          Niederschlagung
1020 		0100          Erstbeitrag Leben Berufsunf.
1020 		0110          Folgebeitrag Leben Berufsunf.
1020 		0150          Vorwegabzug
1030 		0100          Erstbeitrag Unfallzusatz
1030 		0110          Folgebeitrag Unfallzusatz
1030 		0150          Vorwegabzug Unfallzusatz
1040 		0100          Erstbeitrag Leben Erwerbsunf.
1040		0110          Folgebeitrag Leben Erwerbsunf.
1040 		0150          Vorwegabzug Leben Erwerbsunf.
1050 		0100          Erstbeitrag Leben Arbeitsunf.
1050 		0110          Folgebeitrag Leben Arbeitsunf.
1050 		0150          Vorwegabzug Leben Arbeitsunf.
1060 		0100          Erstbeitrag Leben Risikozusus.
1060 		0110          Folgebeitrag Leben Risikozus.
1060 		0150          Vorwegabzug Leben Risikozus.
1070 		0100          Erstbeitrag Leben Hint.vers.
1070 		0110          Folgebeitrag Leben Hint.vers.
1070 		0150          Vorwegabzug Leben Hint.vers.
1080 		0200          Deckungskapital
1080 		0201          Gewinnguthaben
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

aus DFKKOP.TVORG

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)


Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKOP.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.SteuerInEuro IS
'Steueranteil an BetragHW in Hauswährung Euro.

aus DFKKOP.SCTAX

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_02_WBS.TeilpositionNr IS
'laufende Nummer der Teilposition zur BelegPosition, Bestandteil des Business-Keys.

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition über den Restbetrag. Daraus folgt meistens, dass eine Belegposition  höchstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verhält sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten alsomit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

aus DFKKOP.OPUPZ

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.C_Postenkennzeichen_B IS
'... bezeichnet den Grund der Ausnahme

z.B. (s. Postenkennzeichen.xls)

3		Posten ist zur Zahlung gesperrt
4		Konto ist zur Zahlung gesperrt
5		Konto ist für Ausgleich gesperrt
6		Kein gültiger Zahlweg gefunden
7		Fehler beim Erstellen des Ausgleichsbelegs, bitte Jobprotokoll lesen
8		Partner hat keine Adresse
9		Partner/Konto aus Posten existiert nicht
10	Zahlweg im Posten soll bei diesem Lauf nicht berücksichtigt werden
11	Weder Bankverbindung noch Kartenverbindung sind ermittelbar
12	Mindestbetrag für Regulierung wurde nicht erreicht
13	Posten ist für Ausgleich gesperrt
16	Zahlwege für diesen Lauf sind weder im Konto noch im Posten angegeben
17	Zahlwegselektion erfolglos: Forderung nicht regulierbar
18	Zahlwegselektion erfolglos: Guthaben ohne Forderungen, Einzugskunde
19	Zahlwegselektion erfolglos: Guthaben, Selbstzahler
20	Rückzahlung: Zahlweg bei diesem Lauf nicht zu berücksichtigen
21	Rückzahlung: Hausbank-ID / Konto-ID nicht zu berücksichtigen
22	Zahlwegselektion erfolglos: Guthaben mit Forderungen, Einzugskunde
23	Rückzahlungsanforderung zur Auszahlung gesperrt
24	Zuviele Positionen auszugleichen in einer Zahlung
25	Posten ist zur Zahlung gesperrt (Prüfung noch nicht abgeschlossen)
26	Rückzahlungsanforderung gesperrt (Prüfung noch nicht abgeschlossen)
27	Rückzahlungsanforderung bereits mit späterem Buchungsdatum storniert
28	Partner hat keine Bankverbindung
usw.

aus DPAYP.POKEN
Liste s. Postenkennzeichen.xls

Datenschutz $B';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.FK_KT06_KT10_Regulierung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regul_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.FK_KT10_ZahllaufZahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.SK_KT06_KT10_Regulierung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT10_Regulierung_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.FK_KT10_ZahllaufZahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum IS
'... ist das Datum des erstellenden Zahlungslaufs

DPAYH.LAUFD

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Laufkennung IS
'.. ist die Kennung/ Identifikation des Zahlungslaufs.

DPAYH.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

DPAYH.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahl_InEx_01_HBS.Zahlung_lfd IS
'.. ist die laufende Nummer der Zahlung innerhalb des Zahllaufs.

DPAYH.PAYNO

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahlung_BH.SK_KT10_ZahllaufZahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahlung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahlung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahlung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT10_ZahllaufZahlung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.SK_PA01_PA02_KT02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE KT01_Beleg_InEx_02_HBS IS
'aus FS-CD / DFKKKO (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT01_KT01_Rueckl_InEx_01_LBS IS
'aus  FS-CD / DFKKRP (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT01_KT01_Ruecklaeufer_BL IS
'Beziehung zwischen Belegen im Sinne von

FK_KT01_Beleg_P ''ist Rückläufer zu Zahlungsbeleg '' FK_KT01_Beleg

Business-Key:
KT01_KT01:
				Bildungsregel								''KONTO''
				Mandant										DFKKRP.MANDT
				Belegnummer Rückläuferbeleg	DFKKRP.RLBEL
				Belegnummer Zahlungsbeleg	DFKKRP.OPBEL

KT01_P:	Bildungsregel								''SHUKR''
				Mandant										DFKKRP.MANDT
				Belegnummer Rückläuferbeleg	DFKKRP.RLBEL

KT01:		Bildungsregel								''SHUKR''
				Mandant										DFKKRP.MANDT
				Belegnummer Zahlungsbeleg	DFKKRP.OPBEL

Bea:
Ein Zahlungsbeleg zu einem Rückläufer hat genau eine Belegposition. Ein Rückläuferbeleg gehört zu genau einem Zahlungsbeleg und hat genau eine Belegposition.
In FS-CD ist ein Rückläuferbeleg ein Ausgleichsbeleg mit Belegart ''Rückläufer''. Beide Belege erhalten den Ausgleichsgrund ''Rückläufer''.
RL-Belege entstehen erst dann, wenn der RL-Stapel gebucht wird. Deshalb sollen Einträge in DFKKRP mit leerer RL-Belegnummer überlesen werden.';

COMMENT ON TABLE KT01_KT06_Ausgl_InEx_02_LBS IS
'Dies ist der erste nicht auf Regresszahlungen spzialisierte Satellit für die Gültigkeit der Ausgleiche (natürlich inkl. Regresszahlungen für Schaden). 

Der Satellit ..._01_LBS ehnthält nur Ausgleiche von Regressforderungen und wird ausschließlich zusammen mit SAP-CM-Ladungen aus SAP-FS/CD geladen.';

COMMENT ON TABLE KT01_KT10_Zahllauf_AusglBel_BL IS
'Zuordnung von Beleg zu Zahllauf-Zahlung in der Belegbeziehung

Beleg ''ist erzeugter Ausgleichsbeleg von '' Zahllauf-Zahlung

Bea: Es muß nicht zu jeder Zahllauf-Zahlung einen erzeugten Beleg geben.
Mehrere Sollstellungs-/ Verbindlichkeitsbelege können durch einen einzelnen erzeugten Beleg ausgeglichen werden.

Quelle: DPAYH

Business-Key für FS-CD:

KT01:	Mandant										DPAYH.MANDT
			Belegnummer Ausgleichsbeleg	DPAYH.DOC1R 			falls DOC1T=02 ''Beleg des Kontokorrents''
KT10:	Mandant										DPAYH.MANDT
			Laufdatum										DPAYH.LAUFD
			Laufkennung									DPAYH.LAUFI
			Herkunft											DPAYH.ORIGN
			Zahlung_lfd									DPAYH.PAYNO
			Subnummer									DPAYH.SUBNO
';

COMMENT ON TABLE KT02_KT05_BL IS
'Link zwischen Vertragskonto und InkassoObjekt im Sinne von 

FK_KT05_InExkassoObjekt ''gehört zu Vertragskonto'' FK_KT02_Vertragskonto

BK
für FS-CD /nicht-K:
KT02:	Mandant										DIMAIOBPAR.CLIENT
			Vertragskontonummer				DIMAIOBPAR.PARTNERACC
KT05	Mandant										DIMAIOBPAR.CLIENT
			InExkassoObjektNr						DIMAIOBPAR.INSOBJECT	wenn ohne Präfix "ICL" oder "LL" dann dreistellige lfdNr weglassen (entspricht dann der Versicherungsscheinnummer)
			POB													DIMAIOBPAR.PARTNER 

für FS-CD / K:
KT02:	Mandant										konstant ''100''
			Vertragskontonummer				SEPA_MANDATE.Beschreibung
KT05	Mandant										konstant ''100''
			Versicherungsscheinnummer		VNR		(für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.)
																			Besser: aus Vertragsbeziehung in Paris
			POB													PNR

für PARIS (ibs. K-Inkasso- und Leben-Vertragskonten):
KT02:	Mandant										konstant ''100''
			Vertragskontonummer				PA01_228.EM_ALT
KT05	Mandant										konstant ''100''
			Versicherungsscheinnummer		alle VNR aus den Vertragsbeziehungen zu POB || PDB_INR (Die Vertragskontonummer ist in Paris POB und PDB_INR eineindeutig zugeordnet.)
			POB													POB

für lifefactory:
	Beitragsinkasso:
KT02:	Mandant										konstant ''100''
			Vertragskontonummer				PA01_228.EM_ALT where POB = partnerLV.partnerID and PDB_INR = partnerLV.kontoID and partnerLV.lvID = lv.lvID
KT05:	Mandant										konstant ''100''
			Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID				besteht aus VNR, PZ, ZNR (11-stellig)
			POB												~.PartnerID

	Leistung:
KT02:	Mandant										konstant ''100''
			Vertragskontonummer				PA01_228.EM_ALT where POB = partnerLV.partnerID and PDB_INR = partnerLV.kontoID and partnerLV.lvID = lv.lvID
KT05:	Mandant										konstant ''100''
			Versicherungsscheinnummer 	''LL'' || jurLV.lvIDext where jurLV.lvID = lv.lvID	besteht aus ''LL'', VNR, PZ, ZNR (13-stellig)
			Geschäftspartner							~.PartnerID
Für lifefactory ist die Vertragskontonummer über POB (partnerlv.partnerID) und INR (partnerlv.kontoID) aus PARIS zu ermitteln.';

COMMENT ON TABLE KT02_KT06_BL IS
'Link zwischen Vertragskonto und Belegposition in Sinne von

FK_KT06_BelegPosition ''bezieht sich auf'' FK_KT02_Vertragskonto

Falls mittels Zahlplanposition erstellet, dann redundant zu: KT06->KT01->KT01_KT03->KT03 ->KT03_KT05 ->KT05 -> KT02_KT05->KT02
Beispiel für Nicht-Redundanz: Mahngebür für mehrere Inkassoobjekte

Business-Key:
KT02:		Mandant										DFKKOP.MANDT
				Vertragskontonummer				DFKKOP.VKONT
KT06:		Bildungsregel								''SHUKR''
				Mandant										DFKKOP.MANDT
				BelegNr											DFKKOP.OPBEL
				WiederholungsPosition_Lfd		DFKKOP.OPUPW		(z.Zt. immer 0)
				BelegPosition_Lfd							DFKKOP.OPUPK
				BelegTeilPosition_Lfd					DFKKOP.OPUPZ';

COMMENT ON TABLE KT02_Partner_VK_InEx_01_HBS IS
'... sind die In-Exkasso-Partner-abhängigen Informationen zum Vertragskonto.

aus FS-CD / FKKVKP (eingeschränkt für LSV-Auswertungen)
';

COMMENT ON TABLE KT02_Vertragskonto_BH IS
'... ist für nicht-K die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam betrachtet werden sollen bzw. dürfen. Dabei werden sie bei mehreren Beitragszahlern (z.B. VN und ZfA bei Riester)  für jeden Beitragszahler getrennt abgerechnet.

Bea: Derzeit (12.2016) gibt es in FS-CD zu jedem Vertragskonto (= Zusammenfassung von Verträgen oder anderen Geschäftsobjekten) genau einen In-/Exkasso-Partner. Falls dies in der Realität anders ist (z.B. bei Riester), wird das Vertragskonto dupliziert. Solange das gilt, haben Vertragskonten und Abrechnungseinheiten (= der Teil des Vertragskontos, der zu genau einem am Vertragskonto beteiligten Partner abgerechnet wird) denselben Business Key.
In dieser Tabelle verschmelzen daher das eigentliche Vertragskonto und die Abrechnungseinheit. Deshalb wird hier im Business-Key auf den Partnerordungsbegriff verzichtet, der Name "Vertragskonto" verwendet und zu diesem HUB zwei Satelliten gefüllt (zum Vertragskonto und zur Abrechnungseinheit). Sollte in der DEVK die Regel: Vertagskonto = Abrechnungseinheit aufgegeben werden, werden  diese in zwei Tabellen separiert und die beteiligten Links untersucht und gegebenenfalls umgehängt.

Für K werden hier die K-Verträge eines Kunden, die über dieselbe Kontoverbindung abgerechnet werden, zusammengefasst. Das Vertragskonto selbst ist in K unbekannt, die Zuordnung wird über POB und PDB_INR vorgenommen (s.u.)

Vertragskonten werden in Paris angelegt; sie entsprechen eineindeutig der "Inkassonummer" zum Partner. Zur Zeit werden K- und nicht-K-Verträge immer über verschiedene Vertragskonten abgerechnet.

BK
für FS-CD /nicht-K:
	Bildungsregel								''KONTO''
	Mandant										FKKVK.MANDT oder FKKVKP.MANDT
	Vertragskontonummer				FKKVK.VKONT oder FKKVKP.VKONT
oder
	Bildungsregel								''KONTO''
	Mandant										DIMAIOBPAR.CLIENT
	Vertragskontonummer				DIMAIOBPAR.PARTNERACC

für FS-CD / K (bisher nur SEPA-Mandate):
	Bildungsregel								''KONTO''
	Mandant										SEPA_MANDATE.MANDT
	Vertragskontonummer				SEPA_MANDATE.REF_ID mit Referenz-Typ="Vertragskonto"

BK für Vertragskonten aus PARIS (insbesondere für K-Inkasso und Leben) :
	Bildungsregel								''KONTO''
	Mandant										konstant ''100''
	Vertragskontonummer				PA01_228.EM_ALT

Die Vertragskontonummer ist in Paris POB (Partner-Ordnungsbegriff) und PDB_INR (Inkassonummer) eineindeutig zugeordnet.
In K-Inkasso wird der Kunde unter der K-internen "Kundenstamm-Nummer" (P1027) geführt, die wiederum dem POB zugeordnet werden kann. Die PNR_INR ist aus den Vertragsdaten zu entnehmen (oder Bestandsbeziehung in Paris?).
Für lifefactory ist die Vertragskontonummer über POB (partnerlv.partnerID) und INR (partnerlv.kontoID) aus PARIS zu ermitteln.';

COMMENT ON TABLE KT02_Vertragskonto_InEx_01_HBS IS
'... sind die In-Exkasso-Partner-unabhängigen Informationen zum Vertragkonto aus dem In-Exkassoobjekt, solange FKKVK nicht geladen wird (zunächst eingeschränkt für LSV)

aus  FS-CD / DIMAIOBPAR (eingeschränkt für LSV-Auswertungen)
';

COMMENT ON TABLE KT03_Zahlplanpos_InEx_01_WBS IS
'aus FS-CD / VVSCPOS (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT03_Zahlplanposition_KT05_BW IS
'für FS-CD:

Zahlplanpositionen werden von den Bestandssystemen eingestellt und für Altsysteme mit einer Zahlweise geliefert. Das bewirkt, dass aus der Zahlplanposition so lange Sollstellungsbelege produziert werden, 
bis eine Änderung vom Bestandssystem mitgeteilt wird.
Die in einem Sollstellungslauf erzeugten Sollstellungs-Belegpositionen werden ggf. zu Belegen zusammengefasst, und zwar (für DEVK) für identische Fälligkeit, InExkassoobjekt (enthält Partner), fachlicher Beginn und Ende.
Zahlplanpositionen beziehen sich auf ein "Versicherungsobjekt" und einen Zahlpartner im Sinne von FS-CD, und damit auf ein InExkasso-Objekt im Sinne von DWH.

Für neue Systeme (LifeFactory) werden Zahlplanpositionen nur zur einmaligen Ausführung angeliefert.

Bea: Durch Simulationsläufe erzeugte Zahlplanpositionen werden nicht ins DWH eingespielt!

aus VVSCPOS

Business Key der Zahlplanposition aus FS-CD:
KT05:
	Mandant					VVSCPOS.MANDT
	InExkassoObjektNr	VVSCPOS.VTREF ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten"), falls kein IPC, LL
										= Versicherungsscheinnummer
	oder							Nummer einer Leistung mit Präfix ''IPC'' (für Sachschäden)
	oder							Nummer einer Leistung mit Präfix ''LL'' (für Leben-Leistung).
	POB								VVSCPOS.GPART
zusätzlich für KT03:
	Positionskennung	 	VVSCPOS.POSNR
	Zeitstempel				VVSCPOS.SCPOSNR

für K-Inkasso:
es ist zu prüfen, ob Zahlplanpositionen aus dem K-Vertragssystem generiert werden können (Vermutung: nein).';

COMMENT ON TABLE KT05_ER01_InExO_Schaden_BL IS
'Link zwischen InExkassoObjekt und Schaden in Sinne von

FK_KT05_InExkassoObjekt ''repräsentiert Schaden'' FK_ER01_Schaden

auch für Leben-Leistung

Business-Key:
für FS-CD (nur für INSOBJECT mit Präfix ''IPC'' und ''LL''):
KT05:	Mandant									DIMAIOBPAR.CLIENT
			InExkassoObjektNr					DIMAIOBPAR.INSOBJECT	Nummer eine Schadens mit Präfix IPC'' oder Nummer einer Leistung mit Präfix ''LL'' (für Leben-Leistung).
			POB												DIMAIOBPAR.PARTNER
ER01:	Schadennummer						DIMAIOBPAR.INSOBJECT 	Präfix ''ICL'' (für Schaden) und ''LL'' bei Leben-Leistungen entfernen


BK aus CM:
KT05:	Mandant									ICLCLAIM.CLIENT					(immer ''100'')
			InExkassoObjektNr					''ICL'' || ICLCLAIM.CLAIM		(Schadennummer mit Präfix ''ICL''))
			POB												ICLPARTOCC.BPARTNER	ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
ER01:	Mandant									ICLCLAIM.CLIENT					(immer ''100'')
			Schadennummer						ICLCLAIM.CLAIM

lifefactory:
KT05:	Mandant										konstant																		(immer ''100'')
			Versicherungsscheinnummer 	''LL'' || jurLV.lvIDext where jurLV.lvID = lv.lvID		(''LL'', VNR, PZ, ZNR insg. 13-stellig)
			POB													~.PartnerID
ER01:	Versicherungsscheinnummer 	''LL'' || jurLV.lvIDext where jurLV.lvID = lv.lvID		(''LL'', VNR, PZ, ZNR insg. 13-stellig)
			vt
			vb';

COMMENT ON TABLE KT05_InExkassoObj_InEx_01_HBS IS
'aus  FS-CD / DIMAIOBPAR (eingeschränkt für LSV-Auswertungen)
';

COMMENT ON TABLE KT05_InExkassoObjekt_BH IS
'... bezeichnet das fachliche Objekt, auf das sich In- oder Exkasso-Vorgänge beziehen, also Verträge oder Schäden bzw. Leistungen, nach zugehörigem In-/Exkasso-Partner (=Geschäftspartner in FS-CD) aufgeteilt. Das InExkassoobjekt wird in FS-CD als "VO: Beziehung Versicherungsobjekt zu Partner in FS-CD" bezeichnet.

Bea: FS-CD erlaubt keine über die Zeit wechselnde Zuordnung eines Versicherungskontos zum "Versicherungsobjekt" eines "Business Partners", d.h. dass ein Wechsel des Versicherungskontos zu einer VNR in FS-CD nicht möglich wäre. Zur Abhilfe wird der VNR eine laufende Nummer angehängt, die verschiedene historische Zustände der Zuordnung unterscheidet. Diese laufende Nummer ist nicht ins DWH zu übernehmen. Dabei muss aber sichergestellt werden, dass für die Fortschreibung im DWH nur das aktuelle "Versicherungsobjekt" herangezogen wird.

Business Key für FS-CD:
	Mandant					DIMAIOBPAR.CLIENT
	InExkassoObjektNr	DIMAIOBPAR.INSOBJECT ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten"), falls kein ICL, LL
										= Versicherungsscheinnummer incl. PZ und ZNR
	oder							Nummer einer Leistung mit Präfix ''IPC'' (für Sachschäden)
	oder							Nummer einer Leistung mit Präfix ''LL'' (für Leben-Leistung).
	POB								DMAIOBPAR.PARTNER

für K-Inkasso:
	Mandant										konstant ''100''
	Versicherungsscheinnummer		VNRPZ || ''00''		(für K-Inkasso  muß die VNRPZ aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.)
																						Besser: aus Vertragsbeziehung in Paris
	POB													PNR || PNRPZ

für lifefactory:
	Beitragsinkasso:
	Mandant										konstant ''100''
	Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID				besteht aus VNR, PZ, ZNR (11-stellig)
	POB													~.partnerID															=POB für verschiedene Tabellen

	Leistung:
	Mandant										konstant ''100''
	Versicherungsscheinnummer 	''LL'' || jurLV.lvIDext where jurLV.lvID = lv.lvID	besteht aus ''LL'', VNR, PZ, ZNR (13-stellig)
	POB													~.partnerID															=POB für verschiedene Tabellen';

COMMENT ON TABLE KT05_KT06_BL IS
'Zuordnung von BelegPositionen zu InExkassoObjekten

BK:
KT05:		Mandant					DFKKOP.MANDT
				InExkassoObjektNr	DFKKOP.VTREF		ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten"), falls kein ICL, LL
																							Versicherungsscheinnummer
																				oder	Nummer eines Schadens mit Präfix ''ICL'' (für Schäden)
																				oder	Nummer einer Leistung mit Präfix ''LL'' (für Leben-Leistung).
				POB								DFKKOP.GPART
KT06:		Bildungsregel								''SHUKR''
				Mandant										DFKKOP.MANDT
				BelegNr											DFKKOP.OPBEL
				WiederholungsPosition_Lfd		DFKKOP.OPUPW		(z.Zt. immer 0)
				BelegPosition_Lfd							DFKKOP.OPUPK
				BelegTeilPosition_Lfd					DFKKOP.OPUPZ';

COMMENT ON TABLE KT05_WE01_InExO_Vertrag_BL IS
'Link zwischen InExkassoObjekt und Vertrag in Sinne von

FK_KT05_InExkassoObjekt ''repräsentiert Vertrag'' FK_WE01_Vertrag

- für Beitragsinkasso

Business Key
für FS-CD (nur für INSOBJECT ohne Präfix ''IPC'' oder ''LL'' ):
KT05:	Mandant									DIMAIOBPAR.CLIENT
			InExkassoObjektNr					DIMAIOBPAR.INSOBJECT	ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten")
																												 (Versicherungsscheinnummer) 
			POB												DMAIOBPAR.PARTNER
WE01:	Versicherungsscheinnummer		DIMAIOBPAR.INSOBJECT 	InkassoObjektNr ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten") 	

für K-Inkasso:
KT05:	''100''
			VNR (Versicherungsscheinnummer)
			PNR
WE01:	VNR (Versicherungsscheinnummer)

(Für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.)

für lifefactory:
KT05:	Mandant										konstant														(immer ''100'')
			Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)
			POB													~.PartnerID
																	BEA: Anträge ausfiltern!
WE01:	Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)


';

COMMENT ON TABLE KT06_BelPos_Ausgl_InEx_01_WBS IS
'aus DFKKOP, nur die Ausgleichsattribute  (eingeschränkt für LSV-Auswertungen)
';

COMMENT ON TABLE KT06_BelegPosition_InEx_02_WBS IS
'aus  FS-CD / DFKKOP (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT06_KT10_Regul_InEx_01_LBS IS
'aus  FS-CD / DPAYP (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT06_KT10_Regulierung_BL IS
'Zuordnung von Belegposition zu Zahllauf-Zahlung in der Beziehung

FK_KT10_ZahllaufZahlung ''dient zur Regulierung'' von FK_KT06_BelegPosition (für Sollstellungs- oder Verbindlichkeitsbelegpositionen). 

Nicht in jedem Fall kann ein entsprechender Ausgleichsbeleg erzeugt werden. Dann wird FK_KT06_BelegPosition durch FK_KT10_ZahllaufZahlung nicht ausgeglichen, sondern diente nur als Auslöser zu FK_KT10_ZahllaufZahlung.

Im Sat finden sich die Ausnahmegründe, falls zu dem Beleg durch den Zahllauf kein Ausgleichsbeleg erzeugt wurde.

Business Keys:
Quelle: DPAYP, falls DOC2T= 02 "Belegposition im Kontokurrent"

KT06_KT10:
			Bildungsregel					''KONTO''
			Mandant							DPAYP.MANDT
			BelegNummer					DPAYP.DOC2R (1. - 12. Stelle)
			WiederholungsPos_Lfd	DPAYP.DOC2R (13. - 15. Stelle) 	(z.Zt. immer 0)
			BelegPositionNr				DPAYP.DOC2R (16. - 19. Stelle)
			TeilpositionNr					DPAYP.DOC2R (20. - 22. Stelle)
			Laufdatum							DPAYP.LAUFD
			Laufkennung						DPAYP.LAUFI
			Herkunft								DPAYP.ORIGN
			Zahlung_lfd						DPAYP.PAYNO
			Subnummer						DPAYP.SUBNO
KT06:	Bildungsregel					''SHUKR''
			Mandant							DPAYP.MANDT
			BelegNummer					DPAYP.DOC2R (1. - 12. Stelle)
			WiederholungsPos_Lfd	DPAYP.DOC2R (13. - 15. Stelle) 	(z.Zt. immer 0)
			BelegPositionNr				DPAYP.DOC2R (16. - 19. Stelle)
			TeilpositionNr					DPAYP.DOC2R (20. - 22. Stelle)
KT10:	Bildungsregel					''KONTO''
			Mandant							DPAYP.MANDT
			Laufdatum							DPAYP.LAUFD
			Laufkennung						DPAYP.LAUFI
			Herkunft								DPAYP.ORIGN
			Zahlung_lfd						DPAYP.PAYNO
			Subnummer						DPAYP.SUBNO
';

COMMENT ON TABLE KT10_ZahllaufZahl_InEx_01_HBS IS
'aus  FS-CD / DPAYH (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT10_ZahllaufZahlung_BH IS
'... ist die eindeutige Bezeichnung der Zahlung als Erzeugnis eines Zahlunglaufs.

Zahlungen aus Zahlläufen führen i.d.R. zu einem Beleg, der weitere Informationen enthält. Bei Vorliegen z.B. von Ein- oder Auszahlungssperren oder Saldo = 0 wird demgegenüber kein Beleg erstellt und an der Zahllauf-Zahlung eine "Ausnahme" dokumentiert (s. Attribut "Gruppennummer"). Um in diesem Fall eine vollständige Darstellung zu ermöglichen, werden einzelne Informationen redundant auch an der Zahllauf-Zahlung gespeichert (z.B. Beziehung zum Vertragskonto). Es kann Zahlungen geben, bei denen der Zahlungs-Partner unbekannt ist (Rücküberweisung von nicht zuzuordnenden Einzahlungen). D.h., dass die Bankverbindung nicht über einen Partner zugeordnet werden kann, sondern nur über die Kontonummer bzw. IBAN.

Quelle: DPAYH

Business-Key:
Mandant			DPAYH.MANDT
Laufdatum			DPAYH.LAUFD
Laufkennung		DPAYH.LAUFI
Herkunft				DPAYH.ORIGN
Zahlung_lfd		DPAYH.PAYNO
Subnummer		DPAYH.SUBNO

Bea: Herkunft und Subnummer spielen anscheinend fachlich keine Rolle und werden nur aufgeführt, um mit Sicherheit Eindeutigkeit zu erreichen. Ein weiterer Teil des Schlüssels in SAP ist XVORL (Kennzeichen: Nur Vorschlagslauf). Anhand dieses Inhalts soll der Bestand gefiltert werden (nur XVORL = leer), insofern ist XVORL hier als konstant und damit irrelevant zu betrachten.';

COMMENT ON TABLE PA01_PA02_KT02_BL IS
'Verbindung von Partner in der Rolle "Vertragskontobeteiligter" und Vertragskonto.

für FS-CD aus FKKVKP

Business-Key
aus SAP FS-CD:
PA01:	Mandant										FKKVKP.MANDT
			Partnerordnungsbegriff (POB)	FKKVKP.GPART																ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:  Rolle												''HARM~'' ||  HARM( "In-/Exkasso-Partner") 				Surrogat-Key zur Rolle
KT02: 	Mandant										FKKVKP.MANDT
			Vertragskontonummer				FKKVKP.VKONT

aus K:
PA01: 	Mandant										''100''
			Partnerordnungsbegriff (POB)	POB																					muss aus der Kundenstammnummer (P1027) abgeleitet weerden
PA02: 	Rolle												''HARM~'' ||  HARM( "In-/Exkasso-Partner") 				Surrogat-Key zur Rolle
KT02: 	Mandant										''100''
			Vertragskontonummer				PA01_228.EM_ALT 														aus Paris zu POB und PDB_INR

aus Paris:
PA01: 	Mandant										''100''
			Partnerordnungsbegriff 				PA01_228.POB
PA02: 	Rolle												''HARM~'' ||  HARM( "In-/Exkasso-Partner")		Surrogat-Key zur Rolle
KT02: 	Mandant										''100''
			Vertragskontonummer				PA01_228.EM_ALT 				aus Paris zu POB und PDB_INR

POB immer ohne Prüfziffer.
Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird

Die Vertragskontonummer ist in Paris POB (Partner-Ordnungsbegriff) und PDB_INR (Inkassonummer) eineindeutig zugeordnet.
In K-Inkasso wird der Kunde unter der K-internen "Kundenstamm-Nummer" (P1027) geführt, die wiederum dem POB zugeordnet werden kann. Die PNR_INR ist aus den Vertragsdaten zu entnehmen (oder Bestandsbeziehung in Paris?).

Der Vertragskontoinhaber wechselt nie.

';

