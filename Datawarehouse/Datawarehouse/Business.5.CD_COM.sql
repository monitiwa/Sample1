--<ScriptOptions statementTerminator=";"/>
-- Version 17922

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DFKKKO.OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Belegdatum IS
'... ist das Datum, an dem ein Beleg (insbesondere ein Zahlungseingang) im Unternehmen eingeht bzw. die DEVK von einer Zahlung erstmalig Kenntnis erh�lt. Kann abweichend vom Valutadatum und vom Erfassungsdatum (Angelegt_am) sein.

aus DFKKKO.BLDAT

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Buchungsdatum IS
'... ist das echte F�lligkeitsdatum, welches von der Nettof�lligkeit bspw. dann abweicht, wenn die F�lligkeit auf einen Feiertag f�llt (01.01.), wird f�r den Abgleich mit dem Hauptbuch verwendet.

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
8		R�ckl�ufer
9		R�cknahme Ausgleich
10	SD Faktura
11	Beleg aus Mahnlauf
12	Ratenplan
13	Barsicherheit
14	Korrespondenz
15	Geb�hr
16	Ausbuchung
17	Massenausbuchung
18	Sonstige Aktivit�ten
19	Manuelle Zahlung
1A	Externe Barzahlung
1B	Externe Kartenzahlung
1C	Externe Scheckzahlung
1D	Externe Postauftrag
1E	Externe Zahlung
1I		H�ndlerprovision
1S	Storno von Externe Kasse
1T	Transferbeleg
1X	Einlage durch externe Kasse
1Y	Entnahme durch externe Kasse
1Z	Differenzbuchung durch externe Kasse
20	Manuelle Kartenzahlung
21	Manuelle Scheckzahlung
22	Manueller Postauftrag
23	R�ckl�ufer zum Zahlungsauftrag
24	Barkasse: mehrere Zahlungstypen
25	Scheckstapel
26	Abrechnung Zahlkarte
27	Zinsbeleg Zinslauf
28	Zinsbeleg Mahnung
29	Zinsbeleg Fakturierung
30	Zins Laufzeit Raten
31	Erl�sumbuchungslauf
32	Zweifelhaftstellung / Einzelwertberichtg
33	Beleg�bernahme
34	Transfer offener Posten
35	R�ckzahlung
36	Beleg �ber Buchungsschnittstelle
37	Zinsbeleg Barzahlung
38	FI-CA: Abf. Bollo
39	Teilr�cknahme Ausgleich
40	Fremdw�hrungsbewertung
41	Convert Stat to Real
42	Beleg Korrespondenzmahnen
43	Einnahmenverteilung
44	Anordnung
45	Zahlungsauftragsstapel
46	Scheckeinl�sung
47	Ausgleichen (Biller Direct)
48	B�ndelung von Posten
49	Storno �berzahlung (Biller Direct)
4I		Inkassogeb�hren, -zins und -ausbuchungen
4S	Storno Einnahmenverteilung
50	Faktura Billing Engine
51	Aufteilung nach GeschBer und ProfitCtr
52	Zusatzbuchung bei Storno oder R�ckl�ufer
53	�nderung / Ausbuchung Quellensteuer
54	Transfer offener Posten aus Guthabenklae
55	Kreditkartenstapel
56	Umgliederung aus OP-Liste zum Stichtag
57	Storno Einlagen/Entnahmen im Kassenbuch
58	Externe Zahlstelle, Datei�bernahme
59	Storno Fremdw�hrungsbewertung
60	Manuelle Scheckausgabe
61	Zinsbuchung zum Zahlungsversprechen
62	Sonstige Buchung zum Zahlungsversprechen
63	R�ckbuchung Akonto auf Kl�rung
64	Best�tigte Gutschriftsumbuchung
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
79	Forderung an externe H�ndler
80	Umbuchen auf anderen verantw. Buchungsk.
81	Korrekturbuchung nach VBUND-�nderung
82	Forderung an Inkassob�ro
85	Umbuchung auf Hauptbuch
90	RE: Periodische Buchung
91	RE: Nebenkostenabrechnung
92	RE: Umsatzabrechnung
98	Jahresabschlu�buchung
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
VA	ISCD-W�hrungswechsel
VB	Maklermeldg Verrechn
VC	Aufteilung Guthabenposten
VD	Ausgleich der �ltesten Schuld
VF	Verrechnung vorl. Pr�mienanforderung
VI		Agenturinkasso
VS	Korrektur ung�ltiger Steuers�tze
VU	Umbuchung f�r Ausgangszahlung

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.C_Belegart IS
'... gibt an, um welche Art von Belegen es sich handelt. Liste ist zwischen Nebenbuch und Hauptbuch verschieden.

aus DFKKKO.BLART

Werteliste:
00 Migration
01 Nacharbeit Migration
10 Forderung
11 Geb�hr
12 Zinsen
13 R�cknahme Niederschl
14 Buchung aus GM
15 Ratenplan
16 Buchung f Stundung
17 PC Miete
18 Ford. Vorwegabzug
19 ZfA Zulagenforderung
20 Eingangszahlung
21 Ausgangszahlung
22 R�ckl�ufer
23 Scheckeinl�sung
24 Bareinzahlung RD
25 Leistungseinbehalt K
26 Umwandlung Leben
27 Schaden Makler RD27
28 Ausgl. Vorwegabzug
29 ZfA Eingangszahlung
30 Stornierung
31 Scheckstorno Altsys.
32 Kl�rungsbuchung
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
99 B�ndelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.C_RuecklaeuferGrund IS
'... gibt den Grund an, warum es zu einem R�ckl�ufer kam.

aus DFKKKO.RLGRD

Bea: durch Einf�hrung von SEPA sind zwei unterschiedliche K�rzelsysteme vorhanden (alt/ SEPA), zwischen denen es aber keine zu Uneindeutigkeit f�hrenden �berschneidungen gibt. Es besteht also keine Verwechslungsgefahr. Nach SEPA-Einf�hrung werden die alten K�rzel bis auf "ZER Exkassor�ckl�ufer" und "ZSR Scheckr�ckl�ufer" nicht mehr verwendet.

SEPA:
901       IBAN fehlerhaft
902       Konto aufgel�st
903       Konto f�r LSV gesperrt
904       Zahlungsart f�r Konto unzul�ssig
905       Transaktionscode unzul�ssig/falsches Dateiformat
906       R�ckgabe mangels Deckung
907       Doppeleinreichung
908       Adresse ZahlEmpf�nger fehlt/unvollst�ndig
909       Kein g�ltiges Mandat
910       Mandatsinformation fehlerhaft/unvollst�ndig
911       Dateiformat ung�ltig
912       Widerspruch der Lastschrift durch den Zahlungspfli
913       Kontoinhaber verstorben
914       Sonstige Gr�nde (Text: ohne Angaben)
915       BIC passt nicht zum Konto
916       CutOff-Zeit �berschritten
917       Ablehnung auf Grund von aufsichtsrechtl. Vorschr.
918       Spezifische Dienstleistung der Bank des Zahlungspf
919       R�ckgabe aufgrund eines Recalls
928       Kennung des Zahlungseinreichers ist nicht korrekt
930       Zahler Ist Ein Verbraucher
931       Falsche Lastschriftart
950       Bank ist nicht SEPA-f�hig

"alt":
Z00       ohne Grund
Z20       Angaben nicht eindeutig
Z30       Keine Einzugserm�chtigung
Z40       R�ckruf
Z50       Widerspruch
Z60       R�ckgabe
Z70       Nichtvorlage GSE-Papier
Z80       Reserve
Z90       Reserve
ZB1       Z00+Z10+902+914 f�r ge�nderte Bankverbindung
ZB2       Z20-Z60+901+903-913+915-931 f�r ge�nderte Bankverb
ZER       Exkassor�ckl�ufer
ZSR       Scheckr�ckl�ufer

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKKO.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

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
'... gibt die  tats�chliche physische Zeit an, zu der der Beleg in der Quelldatenbank angelegt worden ist 

aus DFKKKO.CPUDT || DFKKKO.CPUTM

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.angelegt_von_A IS
'... gibt den Arbeitsanteil (bei BelegHerkunft = ''manuell'') resp. den technischen User (bei Batchl�ufen) an.

aus DFKKKO.ERNAM

Datenschutz $A1';

COMMENT ON COLUMN KT01_KT08_BBL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.SK_KT01_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT08_BBL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.FK_KT01_KT09_Bel_Inkasso IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.SK_KT01_KT09_Bel_Inkasso IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Inkasso_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.FK_KT12_Zahlungsstapel IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.SK_KT01_KT12_ZahungsBeleg IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT12_ZahlungsBeleg_BBL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.C_Umbuchung_Kurzkontierung IS
'Kurzkontierung f�r Umbuchungen
Wird von der (Guthaben)Kl�rung aus benutzt, um einen Betrag auf ein Hauptbuchkonto umzubuchen. Das Guthaben im FSCD ist anschl. nicht mehr vorhanden, da der Beleg aus der Kurzkontierung dieses Guthaben ausgleicht.

aus DFKKZP(T).KUKON 

kurz  				Text              				 		Sachkto BuKr

ADM 	Verg�tung Scheck-Schaden		201510 1000
BAHN Bahnkosten SB-Schaden       		784108 3000
BANK	Umbuchung f�r andere Fachbereiche (Bank) 781000 3000
BEIT		Umbuchung an Beitragseinzug	781051 3000
DVAG	Maklerverg�tung Schaden G  	784230 2000
DVAV	Maklerverg�tung Schaden V		784230 1000
FLUG	Flugkosten SB-Schaden  		        784113 1000
GMV	Umbuchung an OrgaMahn 		781408 2000
HYPO	Umbuchung an Hypotheken		782071 1000
KFZ  	Umbuchung an KFZ            			781390 1000
KKBU 	Krankenkassenbeitrag umbuchen (LL)    202871 3000
KRAN	Leistungsr�ckzahlung Kranken	782016 6000
KSCH 	Umbuchung an Schaden (Kfz)	781061 1000
RKOS 	Recherchekosten             				683000 6000
RKVJ 	Recherchekosten Vorjahr         	683001 6000
R�-G	 Umbuchung an R�ckversicherung G     784119 2000
R�-V 	Umbuchung an R�ckversicherung V   	  784119 1000
�WER 	�bertragungswert            				 438132 6000
VERR	Verrechnung mit anderen Fachbereichen   781001 3000

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.C_Zahlweg_Rueckzahlung IS
'... legt den Zahlweg fest, �ber den eine eventuelle R�ckzahlung erfolgt.

aus DFKKZP(T).REPYM 

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.C_aus_Klaerung IS
'Kennzeichen, ob der Beleg zur Zahlstapelposition (und damit dieser Link) im Rahmen einer Kl�rung erzeugt wurde.

ja, wenn DFKKZP.KLAEH gef�llt, d.h. Beleg-Teil des BK aus DFKKZP(T).KLAEB, (wenn Satz aus DFKKZPT stets = ja)
nein sonst

Datenschutz $-?
';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

aus DFKKKO.CPUDT||DFKKKO.CPUTM mit DFKKKO.OPBEL=DFKKZPT.KLAEB, wenn DFKKZPT.RUEZU Bestandteil von KT01_KT13_KK_Beleg_BL.FK_KT01_Beleg

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.FK_KT01_KT13_Zahlstap_Beleg IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Klaerungskonto_abweichend IS
'... gibt bei einer zu kl�renden Zahlung das Fibu-Konto an, auf das der Gesamtbetrag der Zahlung vor der Kl�rung gebucht wird, wenn es vom Kl�rungskonto zum FiBu-Beleg abweicht.

aus DFKKZPT.KLAEO
leer, wenn der Satz nicht aus DFKKZPT gef�llt wird

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Teilklaerungsposition_LFD IS
'... ist bei einer Teilkl�rung die Positionsnummer innerhalb der zugeh�rigen Zahlungsstapelposition.

aus DFKKZPT.TKPOS
leer, wenn der Satz nicht aus DFKKZPT gef�llt wird

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Verwendungsbeschreibung_AB IS
'... ist ein Text zur Akontobuchung, R�ckzahlung oder Umbuchung

aus  DFKKZP(T).TXTRZ

Datenschutz $AB';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.zugeordneter_Betrag IS
'.... gibt den Betrag an, der vom Zahlbetrag bereits bestehenden Forderungen zugeordnet ist. Meistens ist dies der gesamte Zahlbetrag, es kann sich aber auch um die gekl�rten Teilbetr�ge handeln.
Die W�hrung f�r den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HBS.C_Waehrung.

aus DFKKZP.BETRK oder DFKKZPT.BETRK

Bea: Dieser Betrag l��t sich aus den verlinkten Belegen (und ihren R�cknahmen) berechnen. Da diese Berechnung aber beliebig kompliziert werden kann, wird das Attribut hier redundant festgehalten.

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.FK_KT13_ZahlStapelPos IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.SK_KT01_KT13_Zahlstap_Beleg IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_Zahlstap_AusglBel_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.FK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.SK_KT02_KT04 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.FK_KT02_KT04 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Ueberwachungsmassnahme_bis IS
'... ist das Datum, an dem die �berwachungsma�nahme beendet wurde. Ist f�r laufende Ma�nahmen nicht gef�llt, wird bei Beendung in der ganzen Historie mit dem Enddatum �berschrieben.

aus nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die �berwachungsma�nahme gestartet wurde

Wegen Problemen der Realisierung als fachlich_gueltig_beginn wird dieses Attribut redundant der Tabelle hinzugef�gt.

aus FKKMAKO.MVVON

Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.SK_KT02_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT08_BBL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.SK_KT02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.FK_KT02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.C_Prozess_gesperrt IS
'Prozess, f�r den die Sperre gilt (K�nnte durch Link ersetzt werden (-> Gesch�ftsprozesse)), der also f�r dieses Gesch�ftsobjekt nicht durchgef�hrt wird. 

aus DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=06

1	Mahnen	-> �berwachungst�tigkeiten sind gesperrt 
2	Eingangszahlung	-> Eingangszahlungst�tigkeiten sind gesperrt 
3	Ausgangszahlung	-> Ausgangszahlungst�tigkeiten sind gesperrt 
4	Verzinsen -> Verzinsungst�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
5	Fakturieren -> Fakturierungst�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
7	Korrespondenzmahnen -> T�tigkeiten zu Korrespondenzma�nahmen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
9	Buchen/Ausgleichen -> Buchungungs- und Ausgleichst�tigkeiten sind gesperrt 
12	Fakturieren (FI-CA) -> Fakturierungst�tigkeiten (FI-CA) sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Auspr�gungen entsprechen den Werten, die an anderen Stellen f�r (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und  DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=06

Mahnsperrg�nde (1 Mahnen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angek�ndigt
J Zahlungsschwierigkeiten
L Abgegeben an GM/ext. Inkasso
M Stundung Leben
V Tarif FPT
Z Sonstige

Eingangszahlungssperrgr�nde (2 Eingangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgel�st
E	Gerichtliches Mahnverfahren (nur Exk)
F	Verm�genswirksame LV (nur Exkasso)
G	Verrechn. m. k�nftig. Forder. (nur Exk)
H	Abweichender Zahlungsempf�nger (nur Exk)
I	Zahlung angek�ndigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein g�lt. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassob�ro
M	Stundung Leben
N	R�ckl�ufer "Vorweggenommene Auszahlung"
P	ge�nderte Bankverbindung
Q	Exkassor�ckl�ufer Leben Leistung
V	FPT Zulage
Z	Sonstiges

Ausgangszahlungssperrgr�nde (3 Ausgangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgel�st
E	Gerichtliches Mahnverfahren (nur Exk)
F	Verm�genswirksame LV (nur Exkasso)
G	Verrechn. m. k�nftig. Forder. (nur Exk)
H	Abweichender Zahlungsempf�nger (nur Exk)
I	Zahlung angek�ndigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein g�lt. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassob�ro
M	Stundung Leben
N	R�ckl�ufer "Vorweggenommene Auszahlung"
P	ge�nderte Bankverbindung
Q	Exkassor�ckl�ufer Leben Leistung
V	FPT Zulage
Z	Sonstiges
 
Ausgleichssperre (9 Buchen / Ausgleichen):

A Vorgang in Bearbeit. 
B Beschwerde 
C Partner verstorben
E Ger.Mahnv.-nur masch
N Riester Betr.abwei.
O �berwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges

Datenschutz $B';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Sperre_Id_A IS
'in der Quelle existiert kein BK f�r die Sperren, daher wird hier zur eindeutigen Schl�sselung ein Diskriminator 
aus dem urspr�nglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Vertragskonto_A IS
'Vertragskontonummer wie im Business-Key

aus DFKKLOCKS(H).LOOBJ1

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.angelegt_am IS
'... gibt das Datum an, an dem der Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.ADATUM || DFKKLOCKS.AZEIT bzw. DFKKLOCKSH.ADATUM || DFKKLOCKSH.AZEIT
Bea: DFKKLOCKSH enth�lt nur die nicht mehr g�ltigen Zust�nde der Sperre

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.angelegt_von_A IS
'... gibt den Arbeitsanteil des Bearbeiters der Sperre an.

aus DFKKLOCKS(H).UNAME

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.ersterBeginn IS
'... gibt das fachliche G�ltigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des �ltesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine �nderung beendet worden ist

DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (f�r historische Zust�nde aus DFKKLOCKSH)
31.12.9999 23:59:59 (f�r aktuelle Zust�nde aus DFKKLOCKS)
Bea: DFKKLOCKS enth�lt nur die g�ltigen Zust�nde der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des �ndernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).TDATE

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).FDATE

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.FK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.SK_KT04_KT05 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.FK_KT04_KT05 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Ueberwachungsmassnahme_bis IS
'... ist das Datum, an dem die �berwachungsma�nahme beendet wurde. Ist f�r laufende Ma�nahmen nicht gef�llt, wird bei Beendung in der ganzen Historie mit dem Enddatum �berschrieben.
In der Quelle wird dieses Datum, wenn es gesetzt wird, ebenfalls in die historischen Zust�nde geschrieben. Daher ist eine �bernahme nur f�r beendete �berwachungsma�nahmen sinnvoll, erkennbar aus dem �berwachungsstatus MVSTA.

aus ''if substr( FKKMAKO.MVSTA, 1, 1) = ''9''
then nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)
sonst Highdate

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die �berwachungsma�nahme gestartet wurde

Wegen Problemen der Realisierung als fachlich_gueltig_beginn wird dieses Attribut redundant der Tabelle hinzugef�gt.

aus FKKMAKO.MVVON

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.FK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.SK_KT04_KT06 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus FKKMAZE.OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.BelegPositionNr IS
'... ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus FKKMAZE.OPUPK

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.BelegWiederholungsPosNr IS
'... ist die Wiederholungsposition im Beleg des Vertragskontokorrents aus dem Business-Key, Bestandteil des Business-Keys

aus FKKMAZE.OPUPW (konstant = 0)

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.C_Buchungskreis IS
'... dieses Attribut stellt die zugeh�rige selbstst�ndig bilanzierende Einheit dar. 

Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus FKKMAKO.STDBK

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.C_Waehrung IS
'... ist die W�hrung zu ''Ueberwachungsbetrag''

aus FKKMAZE.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.DatumUeberwachungslauf IS
'Datum des Ueberwachungslaufs (in FS-CD: Mahnlaufs), der innerhalb des betrachteten �berwachungsverfahrens die aktuelle Ma�nahme ausgel�st hat.

aus FKKMAZE.LAUFD

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.FK_KT04_KT06 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.KennungUeberwachungslauf IS
'Kennung des Ueberwachungslaufs (in FS-CD: Mahnlauf), der innerhalb des betrachteten �berwachungsverfahrens die aktuelle Ma�nahme ausgel�st hat.

aus FKKMAZE.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus FKKMAZE.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Pr�fziffer.

aus FKKMAZE.GPART

Datenschutz $A1';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TeilpositionNr IS
'... ist die laufende Nummer der Teilposition zur BelegPosition, Bestandteil des Business-Keys.

aus FKKMAZE.OPUPZ

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition �ber den Restbetrag. Daraus folgt meistens, dass eine Belegposition  h�chstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verh�lt sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten also mit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Ueberwachung_LFD IS
'... ist der laufende Z�hler f�r die �berwachungen an einem Vertragskonto f�r einen In-/Exkasso-Partner.

aus FKKMAKO.MVLNR

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Ueberwachungsbetrag IS
'... ist der �berwachte Betrag (z.B. gemahnter Betrag) in C_Waehrung.
Es ist der Betrag der �berwachten Belegposition zum �berwachungslauf.

Bea: In der Belegposition gibt es den Betrag auch in Hausw�hrung zum �berwachungsdruckdatum f�r das �berwachungslaufdatum.

aus FKKMAZE.MBETM

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene f�r diejenigen InkassoObjekte, die einem Kunden gegen�ber gemeinsam abgerechnet  und �berwacht werden sollen bzw. d�rfen.

aus FKKMAZE.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_BH.SK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ausstellungsdatum IS
'.. ist das fachliche Datum der Aufnahme der �berwachungsma�nahme

aus FKKMAKO.AUSDT

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Abgabe_Inkassobuero_B IS
'... gibt an, ob die �berwachte Forderung an ein Inkassob�ro abgegeben worden ist.

ja / nein

aus FKKMAKO.XCOLL

"X" bedeutet "ja"
leer bedeutet "nein"
Die Information ist zus�tzlich redundant in der Tabelle DFKKCOLL enthalten.

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Buchungskreis IS
'... dieses Attribut stellt die zugeh�rige selbstst�ndig bilanzierende Einheit dar. 

Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus FKKMAKO.STDBK

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwVerfahrenStatus_B IS
'... gibt den Status der �berwachungsma�nahme wieder, insbesondere Informationen �ber die Art der Beendung.

aus FKKMAKO.MVSTA

00	l�uft
01	wiederaufgesetzt nach Deaktivierung Ratenplan
02	wiederaufgesetzt nach Kontoumstellung Einzug und R�ckl.
03	wiederaufgesetzt nach R�ckl�ufer	
10	unterbrochen
20	leistungsfrei
30	Klage
90	beendet durch ZE
91	beendet durch Wechsel des Mahnverfahrens
92	beendet durch Sachbearbeiter
93	beendet durch Umstellung Zahlweg
94	beendet durch Aktivierung eines Ratenplanes
95	beendet durch Deaktivierung eines Ratenplanes
96	beendet durch Wiederaufsetzungsversuch
97	beendet durch Umstellung Mahnvariante
98	beendet durch Wechsel des Gesch�ftspartners
9A	beendet durch �nderung der Bankdaten
9B	beendet durch Postentransfer

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsstorno_B IS
'... gibt an, ob die �berwachungsma�nahme beendet (z.B. storniert) wurde.
In der Quelle wird dieses Kennzeichen, wenn es gesetzt wird, ebenfalls in die historischen Zust�nde geschrieben. Daher ist eine �bernahme nur f�r beendete �berwachungsma�nahmen sinnvoll, erkennbar aus dem �berwachungsstatus MVSTA.

ja/nein

aus ''if substr( FKKMAKO.XMSTV, 1, 1) = ''9''
then nvl( FKKMAKO.XMSTV + 23:59:59, Highdate)
sonst Highdate

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsstufe_B IS
'... ist die aktuell erreichte �berwachungsstufe innerhalb der �berwachungsma�nahme.

Bea: der Schl�ssel f�r die Mahnstufe besteht in FS-CD aus dem Schl�ssel des "Mahnverfahrens" im Sinne von FS-CD und einer laufenden Nummer innerhalb des "Mahnverfahrens".

aus FKKMAKO.MAHNV und FKKMAKO.MAHNS

MAHNV	MAHNS	Mahnstufe															MSTYP ( -> Mahnstufentyp)
1				1				Zahlungserinnerung Erstbeitrag							  1
1				2				R�cktritt																	11
1				3				Aufhebung Nichteinl�sung								Z4
2				1				Zahlungserinnerung Erstbeitrag					 	      1
2				2				R�cktritt				 													11
2				3				Aufhebung Nichteinl�sung								Z4
3				1				Kl�rung Nichtzahlung											Z5
3				2				Zahlungserinnerung Erstbeitrag	     					  1
3				3				R�cktritt																	11
3				4				Aufhebung Nichteinl�sung								Z4
4				1				Zahlungserinnerung												  1
4				2				Mahnung Folgebeitrag										  2
4				3				Aufhebung Nichtzahlung Folgebeitrag				Z4
5				1				Zahlungserinnerung									    		  1
5				2				Mahnung Folgebeitrag										  2
5				3				Spartenmeldung Nichtzahlung Folgebeitrag	Z4
6				1				Zahlungserinnerung											      1
6				2				Aufhebung Nichtzahlung Folgebeitrag				Z4
7				1				Zahlungserinnerung												  1
7				2				Kl�rung Nichtzahlung											Z5
8				1				Zahlungserinnerung											      1
8				2				Mahnung Folgebeitrag										  2
8				3				Aufhebung Nichtzahlung Folgebeitrag				Z4
9				1				Zahlungserinnerung Erstbeitrag							  1
9				2				R�cktritt																	11
9				3				Aufhebung Nichteinl�sung								Z4
10			1				Kl�rung Nichtzahlung											Z5
11			1				Zahlungserinnerung												  1
11			2				Mahnung Folgebeitrag										  2
11			3				Aufhebung Nichtzahlung Folgebeitrag				Z4
12			1				Mahnung Folgebeitrag										  2
12			2				Aufhebung Nichtzahlung Folgebeitrag				Z4
14			1				Kl�rung Nichtzahlung											Z5
15			1				Zahlungserinnerung												  1
15			2				Kl�rung Nichtzahlung											Z5
16			1				Zahlungserinnerung												  1
16			2				Mahnung Folgebeitrag										  2
16			3				Aufhebung Nichtzahlung Folgebeitrag				Z4
17			1				Kl�rung Nichtzahlung											Z5
18			1				Zahlungserinnerung												  1
18			2				Kl�rung Nichtzahlung											Z5
19			1				Zahlungserinnerung											      1
...

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwachungsstufenTyp_B IS
'... beschreibt den Typ der erreichten �berwachungsstufe (unabh�ngig vom Verfahren der �berwachung, d.i. "Mahnverfahren" im Sinne von FS-CD).

aus FKKMAKO.MSTYP

MSTYP	Mahnstufentyp
1				Zahlungserinnerung
2				Mahnung
10			Beendigung Ratenplan
11			R�cktritt
Z4			Aufhebung
Z5			Kl�rung
Z6			Zahlungserinnerung erloschener Vertrag
Z7			Vorgerichtliches Mahnschreiben
Z8			Pr�fung Freigabe an externes Inkasso
Z9			Erinnerungsschreiben Rechtsschutz

Datenschutz $B

';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsverfahren IS
'... bezeichnet das Verfahren, nach dem die �berwachungsma�nahme abgewickelt wird. Das Verfahren ist abh�ngig von der �berwachungsvariante des In-/Exkassoobjekts und von weiteren Sachverhalten z.B. ob es sich bei dem ausstehenden Betrag um einen Erst- oder Folgebeitrag handelt. Durch das Verfahren wird geregelt, welche Ueberwachungsstufen zu welchen Terminen gestartet werden.

Bea: in FS-CD bezeichnet "Mahnverfahren" sowohl das Verfahren, nach dem �berwachungsma�nahmen abgewickelt werden als auch die einzelne �berwachungsma�nahme z.B. im Bezug auf einen Vertrag. Der Begriff ist daher zu vermeiden.

aus FKKMAKO.MAHNV

MAHNV	Mahnverfahren
1				Erstbeitrag Standard
2				Erstbeitrag vwL Standard
3				Erstbeitrag Direktvers. Nicht-GroKu Standard
4				Folgebeitrag Standard
5				Krankheitskostenvoll Standard
6				Folgebeitrag Riester Standard
7				Folgebeitrag Direktvers. Nicht-GroKu Standard
8				Folgebeitrag vwL Standard und Direktvers. + Mahnung
9				Erstbeitrag schlechter Zahler
10			Sammelmahnverfahren Kl�rung Nichtzahlung Standard
11			Folgebeitrag mit verk�rzter Frist
12			Folgebeitrag schlechter Zahler
14			Sammelmahnverf. Kl�rung Nichtzahlung + 2 Wochen
15			Folgebeitrag Direktvers. Nicht-GroKu + 2 Wochen
...

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwachungsverfahrensTyp IS
'Typ des Verfahrens:

01 Erstpr�mien-�berwachungsverfahren
02 Folgepr�mien-�berwachungsverfahren
03 Ratenplan-�berwachungsverfahren
04 BGB-�berwachungsverfahren
05 Korrespondenz-�berwachungsverfahren

aus FKKMAKO.MVTYP

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Waehrung IS
'... ist die W�hrung zu ''Ueberwachungssaldo''

aus FKKMAKO.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.DatumUeberwachungslauf IS
'Datum des Ueberwachungslaufs (in FS-CD: Mahnlaufs), der innerhalb des betrachteten �berwachungsverfahrens die aktuelle Ma�nahme ausgel�st hat.

aus FKKMAKO.LAUFD

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Druckdatum IS
'... ist i.d.R. identisch mit dem Ausstellungsdatum, leer bei Simulation

aus FKKMAKO.MDRKD

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.FK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.InExkassoObjektNr_A IS
'... ist das InkassoObjekt, das einem Kunden gegen�ber abgerechnet  und �berwacht werden soll bzw. darf.
Entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr f�r Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Pr�fixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus FKKMAKO.VTREF

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.KennungUeberwachungslauf IS
'Kennung des Ueberwachungslaufs (in FS-CD: Mahnlauf), der innerhalb des betrachteten �berwachungsverfahrens die aktuelle Ma�nahme ausgel�st hat.

aus FKKMAKO.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus FKKMAKO.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Pr�fziffer.

aus FKKMAKO.GPART

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.UeberwBearbeitungsschritt IS
'... bezeichnet, der wievielte tats�chlich vorgenommene Bearbeitungsschritt der �berwachungsma�nahme aktuell bearbeitet wird.

aus FKKMAKO.BEARS

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachung_LFD IS
'... ist der laufende Z�hler f�r die �berwachungen im Rahmen des �berwachungsverfahrens f�r ein Vertragskonto f�r einen In-/Exkasso-Partner.
Es bescheibt auch, um die wievielte �berwachungsma�nahme im Rahmen des �berwachungsverfahrens es sich handelt.

aus FKKMAKO.MVLNR

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungsmassnahme_bis IS
'... ist das Datum, an dem die �berwachungsma�nahme beendet wurde.
In der Quelle wird dieses Datum, wenn es gesetzt wird, ebenfalls in die historischen Zust�nde geschrieben. Daher ist eine �bernahme nur f�r beendete �berwachungsma�nahmen sinnvoll, erkennbar aus dem �berwachungsstatus MVSTA.

aus ''if substr( FKKMAKO.MVSTA, 1, 1) = ''9''
then nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)
sonst Highdate

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die �berwachungsma�nahme gestartet wurde

aus FKKMAKO.MVVON

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungssaldo IS
'... ist der aktuelle Saldo der �berwachung in C_Waehrung (zumeist in Euro).

Bea: Das Attribut ist redundant zur Summe der �berwachungsbetr�ge der zugeh�rigen �berwachungProBelegposition''en (KT04_KT06_BL).

aus FKKMAKO.MSALM

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene f�r diejenigen InkassoObjekte, die einem Kunden gegen�ber gemeinsam abgerechnet  und �berwacht werden sollen bzw. d�rfen.

aus FKKMAKO.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.geaendert_am IS
'... gibt an, wann diese �berwachung zum letzten Mal ge�ndert worden ist

aus FKKMAKO.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.geaendert_von_A IS
'.... gibt an, von wem diese �berwachung zuletzt ge�ndert worden ist

aus FKKMAKO.AENAM

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.naechstUeberwLaufdatum IS
'... ist das fr�heste Ausf�hrungsdatum des n�chsten �berwachungslaufs

aus FKKMAKO.MNDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.FK_KT05_ER01_InExO_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.C_Prozess_gesperrt IS
'Prozess, f�r den die Sperre gilt (K�nnte durch Link ersetzt werden (-> Gesch�ftsprozesse)), der also f�r dieses Gesch�ftsobjekt nicht durchgef�hrt wird. 

aus DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=22

1	Mahnen	-> �berwachungst�tigkeiten sind gesperrt 
2	Eingangszahlung	-> Eingangszahlungst�tigkeiten sind gesperrt 
3	Ausgangszahlung	-> Ausgangszahlungst�tigkeiten sind gesperrt 
4	Verzinsen -> Verzinsungst�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
5	Fakturieren -> Fakturierungst�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
6	Scheduling -> Schedulung-T�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
7	Korrespondenzmahnen -> T�tigkeiten zu KOrrespondenzma�nahmen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
9	Buchen/Ausgleichen -> Buchungungs- und Ausgleichst�tigkeiten sind gesperrt 
11 Mahnen abh�ngiger Vertr�ge -> �berwachungst�tigkeiten zu abh�ngigen Vertr�gen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)

Datenschutz $-
';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Auspr�gungen entsprechen den Werten, die an anderen Stellen f�r (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und  DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=22

Mahnsperrg�nde (1 Mahnen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angek�ndigt
J Zahlungsschwierigkeiten
L Abgegeben an GM/ext. Inkasso
M Stundung Leben
V Tarif FPT
Z Sonstige

Eingangszahlungssperrgr�nde (2 Eingangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgel�st
E	Gerichtliches Mahnverfahren (nur Exk)
F	Verm�genswirksame LV (nur Exkasso)
G	Verrechn. m. k�nftig. Forder. (nur Exk)
H	Abweichender Zahlungsempf�nger (nur Exk)
I	Zahlung angek�ndigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein g�lt. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassob�ro
M	Stundung Leben
N	R�ckl�ufer "Vorweggenommene Auszahlung"
P	ge�nderte Bankverbindung
Q	Exkassor�ckl�ufer Leben Leistung
V	FPT Zulage
Z	Sonstiges

Ausgangszahlungssperrgr�nde (3 Ausgangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgel�st
E	Gerichtliches Mahnverfahren (nur Exk)
F	Verm�genswirksame LV (nur Exkasso)
G	Verrechn. m. k�nftig. Forder. (nur Exk)
H	Abweichender Zahlungsempf�nger (nur Exk)
I	Zahlung angek�ndigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein g�lt. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassob�ro
M	Stundung Leben
N	R�ckl�ufer "Vorweggenommene Auszahlung"
P	ge�nderte Bankverbindung
Q	Exkassor�ckl�ufer Leben Leistung
V	FPT Zulage
Z	Sonstiges
 
Ausgleichssperre (9 Buchen / Ausgleichen):

A Vorgang in Bearbeit. 
B Beschwerde 
C Partner verstorben
E Ger.Mahnv.-nur masch
N Riester Betr.abwei.
O �berwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges

Datenschutz $B';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr f�r Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Pr�fixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus DFKKLOCKS.LOOBJ1

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Sperre_Id_A IS
'in der Quelle existiert kein BK f�r die Sperren, daher wird hier zur eindeutigen Schl�sselung ein Diskriminator 
aus dem urspr�nglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.angelegt_am IS
'... gibt das Datum an, an dem der Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.ADATUM || DFKKLOCKS.AZEIT bzw. DFKKLOCKSH.ADATUM || DFKKLOCKSH.AZEIT
Bea: DFKKLOCKSH enth�lt nur die nicht mehr g�ltigen Zust�nde der Sperre

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.angelegt_von_A IS
'... gibt den Arbeitsanteil des Bearbeiters der Sperre an.

aus DFKKLOCKS.UNAME

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.ersterBeginn IS
'... gibt das fachliche G�ltigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des �ltesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine �nderung beendet worden ist

DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (f�r historische Zust�nde aus DFKKLOCKSH)
31.12.9999 23:59:59 (f�r aktuelle Zust�nde aus DFKKLOCKS)
Bea: DFKKLOCKS enth�lt nur die g�ltigen Zust�nde der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des �ndernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

DFKKLOCKS.TDATE

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).FDATE

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_InExkassoObjektArt IS
'... es werden drei Arten von In-/Exkassoobjekten unterschieden.
Dieses Attribut findet sich nicht(!) in der Quelle wieder. Inkassoobjekte mit dem Pr�fix ICL sind von der Art Schaden, Pr�fix LL sind LebenLeistung alle anderen sind Vertragsnummern, wobei der 3-stellige Suffix entf�llt.

Beitrag
Schaden
LebenLeistung

aus  DIMAPARPLAN.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_Periodizitaet_Sollstellung IS
'... repr�sentiert die Periodizit�t f�r Sollstellungen aus Zahlplanpositionen des Inkassoobjekts.

F�r das Beitragsinkasso von Vertr�gen ist dies bei Altvertr�gen (Altsparten) identisch mit der vertraglich vereinbarten Zahlweise des zu Grunde liegenden Vertrages. Wenn ein anforderndes System die f�lligkeitsbezogenen Forderungen jeweils separiert liefert (z.B. Lifefactory), dann hier stets "einmalig", somit nicht mehr identisch.
F�r Beitragserstattungen, Schaden und Leistung ist das Attribut stets "einmalig", daher eigentlich unerheblich.

aus DIMAPARPPLAN.PKEY

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_Wechseloption_ZW_InEx IS
'... gibt an, ob und wie die Zahlweise im In-/Exkasso wechseln darf.

Anhand von POKEY wird an der Oberfl�che gepr�ft, ob ein Wechsel der Zahlweise (PKEY) erlaubt ist. POKEY ist ein Pflichtfeld in FSCD.

00:	kein Wechsel erlaubt  (ist speziell f�r die f�lligkeitsbezogenen Lieferungen, die einmalig sind und nicht ge�ndert werden d�rfen (z.B. heute LF))
01:	freier Wechsel

Die Auspr�gungen werden auf ja/ nein harmonisiert (00 -> nein, 01 -> ja, leer -> NICHT_GEL)

aus DIMAPARPPLAN.POKEY

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des n�chste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT
 
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des n�chste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr f�r Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Pr�fixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus  DIMAPARPLAN.INSOBJECT

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DIMAPARPLAN.CLIENT 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Pr�fziffer.

aus  DIMAPARPLAN.PARTNER

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Zahlplan_gueltig_beginn IS
'... ist der Zeitpunkt, ab dem der Zahlplan g�ltig ist 

aus DIMAPARPPLAN.PP_FROM + PP_FROM_TIME

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_InExkassoObjektArt IS
'... es werden drei Arten von In-/Exkassoobjekten unterschieden.
Dieses Attribut findet sich nicht(!) in der Quelle wieder. Inkassoobjekte mit dem Pr�fix ICL sind von der Art Schaden, Pr�fix LL sind LebenLeistung alle anderen sind Vertragsnummern, wobei der 3-stellige Suffix entf�llt.

Beitrag
Schaden
LebenLeistung

aus DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_Status_Abgabe_Inkbuero_Btr_B IS
'... gibt Informationen �ber die Abgabe von Forderungen zu diesem Inkassoobjekt an ein Inkassob�ro (intern oder extern), falls KT05_InExkassoObjekt_InEx_nn_HBS.C_InExkassoObjektArt = Beitrag,
sonst Dummy.

aus DIMAIOBPAR.Z_STATUS_GM, falls Pr�fix von DIMAIOBPAR.INSOBJECT <> ''ICL'' und ...<> ''LL'', sonst Dummy

Werte von DIMAIOBPAR.Z_STATUS_GM:
		Kein Status GM
02	Niederschlagung
03	Abgabe an externes Inkasso
04	Abgabe zum GM
05	GM erfolglos abgeschlossen
06	GM erfolgreich abgeschlossen
07	Abgabe aus GM an Creditreform
08	Abgabe aus GM an DID treuh�nderisch
09	Abtretung aus GM an DID
99	GM abgeschlossen (aus Migration)

Bea: In der Quelle wird diese Information auf der Ebene InkassoObjekt nur f�r Beitragsinkasso gef�hrt (f�r Regressforderungen s. BelegPosition).

Bea: Dieses Attribut dient nur zur Dokumentation des Quell-Wertes und ist daher nicht harmonisiert. 

Datenschutz $B';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_Ueberwachungsvariante IS
'... gibt je In-/ExkassoObjekt die Variante f�r die �berwachung an.

aus DIMAIOBPAR.MVARI

z.B.
Versicherungsvertrag Standard
Versicherungsvertrag verl�ngert

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_VertragsfuehrendeStelle IS
'... ist die Stelle (RD), die den Vertrag verwaltet. 

aus DIMAIOBPAR.Z_VO_RD

Bea: Wird redundant als Link abgebildet (in 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des n�chste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT
 
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des n�chste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr f�r Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Pr�fixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus DIMAIOBPAR.INSOBJECT

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DIMAIOBPAR.CLIENT 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Pr�fziffer.

aus DIMAIOBPAR.PARTNER

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.SK_KT05_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_KT08_BBL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.FK_KT05_WE01_InExO_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.FK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.QF_INSOBJECT_quellintern IS
'enth�lt den Hashkey zum Inhalt des Feldes trim( substr( INSOBJECT, 1, 17)) aus dem Datensatz der Quelle, der zur Erstellung dieses Link-Satzes gef�hrt hat.
Wird als rein technisches Feld f�r Zwecke der Historisierung verwendet und ist kein Fremdschl�ssel im Sinne dieses Modells.
Der Link k�nnte ohne diese Information bei BZ-Wechsel nicht abgeschl�sselt werden.

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.SK_KT05_WE01_InExO_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExO_Vertrag_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

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

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegNr_A IS
'Belegnummer wie im Business-Key

aus ubstr( DFKKLOCKS(H).LOOBJ1, 1, 12)	 (Stellen f�r OPBEL)

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegPositionNr IS
'... ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus  substr( DFKKLOCKS(H).LOOBJ1, 16, 4)    (Stellen f�r OPUPK)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegTeilPosition_Lfd IS
'... ist die laufende Nummer der Teilposition pro Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus  substr( DFKKLOCKS.LOOBJ1, 20, 3)    (Stellen f�r OPUPZ)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.C_Prozess_gesperrt IS
'Prozess, f�r den die Sperre gilt (K�nnte durch Link ersetzt werden (-> Gesch�ftsprozesse)), der also f�r dieses Gesch�ftsobjekt nicht durchgef�hrt wird. 

aus DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=02

1 Mahnen -> �berwachungst�tigkeiten sind gesperrt 
4 Verzinsen -> Verzinsungst�tigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, nicht)
9 Buchen / Ausgleichen -> Buchungs- und Ausgleichst�tigkeiten sind gesperrt.
10 Zahlen -> Zahlungst�tigkeiten sind gesperrt.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Auspr�gungen entsprechen den Werten, die an anderen Stellen f�r (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und zus�tzlich aus  DFKKLOCKS(H).PROID, hier f�r DFKKLOCKS(H).LOTYP=02

Mahnsperrg�nde (1 Mahnen): 

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angek�ndigt
J Zahlungsschwierigkeiten
L Abgegeben an GM/ext. Inkasso
M Stundung Leben
V Tarif FPT
Z Sonstige
 
Buch- und Ausgleichssperre (9 Buchen / Ausgleichen):

A Vorgang in Bearbeit. 
B Beschwerde 
C Partner verstorben
E Ger.Mahnv.-nur masch
N Riester Betr.abwei.
O �berwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges
 
Zahlsperrgr�nde (10 Zahlen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D RL 901 IBAN fehlerhaft/902 Kto.aufgel�st
E Gerichtliches Mahnverfahren (nur Exk)
F Verm�genswirksame LV (nur Exkasso)
G Verrechn. m. k�nftig. Forder. (nur Exk)
H Abweichender Zahlungsempf�nger (nur Exk)
I Zahlung angek�ndigt (nur Inkasso)
J Zahlungsschwierigkeiten (nur Inkasso)
K RL 909 kein g�lt. Mand./912 Umstritt. M
L Abgegeben an GM / ext. Inkassob�ro
M Stundung Leben
N R�ckl�ufer "Vorweggenommene Auszahlung"
P ge�nderte Bankverbindung
Q Exkassor�ckl�ufer Leben Leistung
V FPT Zulage
Z Sonstiges

aus DFKKLOCKS.Grund,  DFKKLOCKS.Prozess

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Sperre_Id_A IS
'in der Quelle existiert kein BK f�r die Sperren, daher wird hier zur eindeutigen Schl�sselung ein Diskriminator 
aus dem urspr�nglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.angelegt_am IS
'... gibt das Datum an, an dem der Zustand der Sperre in FS-CD eingegeben worden ist

aus DFKKLOCKS(H).ADATUM || DFKKLOCKS(H).AZEIT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.angelegt_von_A IS
'... gibt den Arbeitsanteil des Bearbeiters der Sperre an.

aus DFKKLOCKS.UNAME

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.ersterBeginn IS
'... gibt das fachliche G�ltigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des �ltesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine �nderung beendet worden ist

aus DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (f�r historische Zust�nde aus DFKKLOCKSH) 
bzw. 31.12.9999 23:59:59 (f�r aktuelle Zust�nde aus DFKKLOCKS)
Bea: DFKKLOCKS enth�lt nur die g�ltigen Zust�nde der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des �ndernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).TDATE

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre g�ltig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).FDATE

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_bis IS
'... ergibt zusammen mit Abrechnungszeit_von den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist f�r Mahnungsfristen wichtig

aus DFKKOP.ABRZO

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_von IS
'... ergibt zusammen mit Abrechnungszeit_bis den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist f�r Mahnungsfristen wichtig

aus DFKKOP.ABRZU

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DFKKOP.OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.BelegPositionNr IS
'.. ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus DFKKOP.OPUPK

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.BelegWiederholungsPosNr IS
'.. ist die Wiederholungsposition im Beleg des Vertragskontokorrents aus dem Business-Key, Bestandteil des Business-Keys

aus DFKKOP.OPUPW (konstant = 0)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Betrag IS
'... ist der Betrag in der im Beleg angegebenen W�hrung

aus DFKKOP.BETRW

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_RD_vertragsfuehrend IS
'... repr�sentiert die RD, in der die Bearbeitung stattfindet. Diese Information ist redundant im Vertrag/Schaden enthalten

aus DFKKOP.GSBER

Datenschutz $-
';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_Status_Abgabe_Inkbuero_Sch_B IS
'... gibt Informationen �ber die Abgabe der Forderungen zu dieser Belegposition an ein Inkassob�ro (intern oder extern), 
falls KT06_Belegposition_KT01_InEx_nn_WBS->KT06_Belegposition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InExkassoObjektArt = Schaden,
sonst Dummy.

aus DFKKOP.Z_STATUS_GM_DOC, falls Pr�fix von DFKKOP.VTREF = ''ICL'', sonst Dummy

Werte von DFKKOP.Z_STATUS_GM_DOC:
		kein Status GM
20	Abgabe zum Schaden-GM
21	Schaden-GM erfolglos abgeschlossen
22	Schaden-GM erfolgreich abgeschlossen
23	Abgabe aus Schaden-GM an Creditreform
24	Abgabe aus Schaden-GM an Krauthoff
30	Abgabe an Inkassob�ro f�r Rechtsschutz
31	Abgabe an Regressb�ro f�r Rechtsschutz

In der Quelle wird diese Information auf der Ebene Belegposition nur f�r Schaden gef�hrt (f�r Beitragsforderungen siehe InExkassoObjekt).

Bea: Dieses Attribut dient nur zur Dokumentation des Quell-Wertes und ist daher nicht harmonisiert. 

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_Waehrung IS
'... ist die W�hrung zu ''Betrag''

aus DFKKOP.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_hat_Ausloeserbeleg IS
'... das Kennzeichen, ob die Belegposition einen Ausl�serbeleg hat.

aus DFKKOP.ASBLG

Werte: ja/nein
= ja, wenn ASBLG gef�llt
= nein, sonst

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_hat_Stellvertreterbeleg IS
'... das Kennzeichen, ob die Belegposition einen Stellvertreterbeleg hat.

aus DFKKOP.ABWBL

Werte: ja/nein
= ja, wenn ABWBL gef�llt
= nein, sonst

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)


Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Ausnahme: Eine Belegposition KT06, auf die ein Ausl�ser-Link verweist, wird durch die Beendigung der Ausgleichs-Links auf den eigenen Beleg fachlich beendet. Ein neuer Ausgleich-Link auf einen anderen Beleg wird dabei angelegt, jedoch zum Anlage-Datum sofort fachlich beendet.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKOP.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Nettofaelligkeit IS
'... ist f�r Forderungen und Verbindlichkeiten das Datum, ab dem Zahlungspflicht (f�r den Kunden oder die DEVK) besteht. F�r Belege aus LSV-L�ufen wird das Datum aus der DEVK-eigenen Tabelle entnommen, f�r Belege aus Exkasso-L�ufen berechnet sich das Datum anhand der Regeln aus dem Customizing (u.a. abh�ngig vom Zahlweg).

aus DFKKOP.FAEDN

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TeilpositionNr IS
'laufende Nummer der Teilposition zur BelegPosition, Bestandteil des Business-Keys.

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition �ber den Restbetrag. Daraus folgt meistens, dass eine Belegposition  h�chstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verh�lt sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten alsomit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

aus DFKKOP.OPUPZ

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.SK_KT06_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.SK_KT06_KT08 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Abgabedatum IS
'... ist das Maschinendatum der Abgabe

aus DFKKCOLL(H).AGDAT

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus DFKKCOLL(H).OPBEL

Datenschutz $A1';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.BetragInkasso IS
'... ist der offene Betrag der (Teil-) Position, also der abgegebene Betrag in C_Waehrung des zugeh�rigen Belegs.

aus DFKKCOLL(H).BETRW

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Abgabegrund_B IS
'... ist die Bezeichnung der Aktivit�t, aufgrund derer die Abgabe erfolgt ist, z.B. wenn die Abgabe automatisch aufgrund des hinterlegten �berwachungsverfahrens ausgel�st wird.

-- 01 Erfolgloses Mahnverfahren
02 Ausbuchung
-- 03 Massenlauf Ausbuchung
04 Mahnaktivit�t
-- 05 Massenlauf: Forderungen zur Abgabe an Inkassob�ro freigegeben
06 Forderungen zur Abgabe an Inkassob�ro freigegeben

--*) nicht im Profilierungsbestand beobachtet

aus DFKKCOLL(H).AGGRD

Datenschutz $B';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Abgabestatus IS
'... ist der Status der abgegebenen Forderung.

aus DFKKCOLL(H).AGSTA

01 Forderung zur Abgabe freigegeben
02 Forderung abgegeben
03 Forderung von Inkassob�ro bezahlt
04 Forderung von Inkassob�ro teilbezahlt
05 Abgabe der Forderung storniert
06 Abgabe der Forderung  erfolglos
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar
08 Forderung teilbezahlt und ein Teil nicht inkassierbar
09 Forderung zur�ckgerufen
10 Forderung direkt vom Kunden bezahlt
11 Forderung direkt vom Kunden teilbezahlt
12 Forderung ausgeglichen
13 Forderung teilausgeglichen
14 Forderung freigegeben und ein Teil nicht inkassierbar
15 Forderung abgegeben und ein Teil nicht inkassierbar
16 Forderung zur�ckgerufen und ein Teil nicht inkassierbar

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Waehrung IS
'... gibt die W�hrung f�r den Inkassobetrag an (EUR)

aus DFKKCOLL(H).WAERS

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.InkassoPosHistorieLfdNr IS
'... ist die laufende Nummer der Variante der Inkassoposition in der Historie. Wird von FS-CD als Schl�ssel verwendet.

aus DFKKCOLLH.LFDNR

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.InkassoPositionLfdNr IS
'... ist die laufende Nummer der Inkassoposition innerhalb eines Belegs.

aus DFKKCOLL(H).INKPS

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKCOLL(H).MANDT

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPosition_BH.SK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPosition_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPosition_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPosition_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPosition_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.SK_KT08_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.FK_KT08_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Abgabedatum IS
'... ist das Maschinendatum der Abgabe

aus DFKKCOLLH.AGDAT

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKCOLLH.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.POB_A IS
'Partner-Ordnungsbegriff des Zahlungspflichtigen, ohne Pr�fziffer.

aus DFKKOP.XBLNR 2. bis 9. Stelle (ohne f�hrende 0 und ohne PZ)

Datenschutz $A1';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene f�r diejenigen InkassoObjekte, die einem Kunden gegen�ber gemeinsam abgerechnet werden sollen bzw. d�rfen.

Vertragskonto aus dem Business-Key

aus DFKKOP.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.SK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Bankverrechnungskonto IS
'� ist das Verrechnungskonto f�r diesen Zahlstapel.

aus DFKKZK.BVRKO

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Belegdatum_vorgesehen IS
'... ist das f�r die Belege zu den Positionen dieses Zahlungsstapels vorgesehene Belegdatum.
Die tats�chlichen Eintr�ge im Attribut Belegdatum k�nnen davon abweichen, insbesondere wenn f�r die Zahlung eine Kl�rung (oder gar Teilkl�rung) erforderlich ist und sich die Verarbeitung dadurch verz�gert.

aus DFKKZK.BLDAT

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Buchungsdatum_vorgesehen IS
'... ist das f�r die Belege zu den Positionen dieses Zahlungsstapels vorgesehene Buchungsdatum.
Die tats�chlichen Eintr�ge im Attribut Buchungsdatum k�nnen davon abweichen, insbesondere wenn f�r die Zahlung eine Kl�rung (oder gar Teilkl�rung) erforderlich ist und sich die Verarbeitung dadurch verz�gert.

aus DFKKZK.BUDAT

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.C_Belegart IS
'... gibt an, welche Art von Belegen aus dem Zahlstapel erstellt werden.

aus DFKKZK.BLART

Werteliste:
00 Migration
01 Nacharbeit Migration
10 Forderung
11 Geb�hr
12 Zinsen
13 R�cknahme Niederschl
14 Buchung aus GM
15 Ratenplan
16 Buchung f Stundung
17 PC Miete
18 Ford. Vorwegabzug
19 ZfA Zulagenforderung
20 Eingangszahlung
21 Ausgangszahlung
22 R�ckl�ufer
23 Scheckeinl�sung
24 Bareinzahlung RD
25 Leistungseinbehalt K
26 Umwandlung Leben
27 Schaden Makler RD27
28 Ausgl. Vorwegabzug
29 ZfA Eingangszahlung
30 Stornierung
31 Scheckstorno Altsys.
32 Kl�rungsbuchung
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
99 B�ndelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.C_Waehrung IS
'... gibt die W�hrung an, die f�r die Betr�ge in allen Positionen dieses Zahlstapels gilt.

aus DFKKZK.WAERS

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.FK_KT12_Zahlungsstapel IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKZK.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Valutadatum IS
'Datum der Geldeing�nge zu diesem Zahlungsstapel beim Versicherungsunternehmen

aus DFKKZK.VALUT

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Zahlstapel_Id_A IS
'... ist die Bezeichnung des Zahlstapels.

aus DFKKZK.KEYZ1 

Datenschutz $A2';

COMMENT ON COLUMN KT12_Zahlungsstapel_BH.SK_KT12_Zahlungsstapel IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlungsstapel_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlungsstapel_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlungsstapel_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlungsstapel_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Auftraggeber_A IS
'... ist der Name der Person, der die Zahlung in Auftrag gegeben hat.

aus 	DFKKZP.KOINH

Datenschutz $A1?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.BIC_A IS
'... ist f�r die Bank, �ber die die Zahlung erfolgt ist der "Bank Indentifier Code" oder "SWIFT-Code" zur Identifikation von Gesch�ftsstellen im Zahlungsverkehr (gem�� Norm ISO 9362).

aus DFKKZP.SWIFT

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Bankkontonummer_A IS
'... ist die Kontonummer des Kreditinstituts �ber das die Zahlung erfolgt ist.

aus DFKKZP.BANKN

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Bankleitzahl_A IS
'... ist die Identifikation eines Kreditinstituts �ber das die Zahlung erfolgt ist, f�r deutsche Kreditinstitute ist dies die Bankleitzahl (=BLZ).

aus DFKKZP.BANKL

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Bank_Land IS
'... ist das Land des Sitzes der Bank, �ber die die �Zahlung erfolgt ist. Entspricht dem L�nderk�rzel im BIC und in der IBAN.

aus DFKKZP.BANKS

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Dauerauftrag IS
'... enth�lt, ob diese Zahlung im Rahmen eines Dauerauftrags geleistet worden ist.

aus DFKKZP.XDAUB 

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Umbuchung_Kurzkontierung IS
'Kurzkontierung f�r Umbuchungen
Wird von der (Guthaben)Kl�rung aus benutzt, um einen Betrag auf ein Hauptbuchkonto umzubuchen. Das Guthaben im FSCD ist anschl. nicht mehr vorhanden, da der Beleg aus der Kurzkontierung dieses Guthaben ausgleicht.

aus DFKKZP.KUKON 

kurz  				Text              				 		Sachkto BuKr

ADM 	Verg�tung Scheck-Schaden		201510 1000
BAHN Bahnkosten SB-Schaden       		784108 3000
BANK	Umbuchung f�r andere Fachbereiche (Bank) 781000 3000
BEIT		Umbuchung an Beitragseinzug	781051 3000
DVAG	Maklerverg�tung Schaden G  	784230 2000
DVAV	Maklerverg�tung Schaden V		784230 1000
FLUG	Flugkosten SB-Schaden  		        784113 1000
GMV	Umbuchung an OrgaMahn 		781408 2000
HYPO	Umbuchung an Hypotheken		782071 1000
KFZ  	Umbuchung an KFZ            			781390 1000
KKBU 	Krankenkassenbeitrag umbuchen (LL)    202871 3000
KRAN	Leistungsr�ckzahlung Kranken	782016 6000
KSCH 	Umbuchung an Schaden (Kfz)	781061 1000
RKOS 	Recherchekosten             				683000 6000
RKVJ 	Recherchekosten Vorjahr         	683001 6000
R�-G	 Umbuchung an R�ckversicherung G     784119 2000
R�-V 	Umbuchung an R�ckversicherung V   	  784119 1000
�WER 	�bertragungswert            				 438132 6000
VERR	Verrechnung mit anderen Fachbereichen   781001 3000

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Zahlweg_Rueckzahlung IS
'... legt den Zahlweg fest, �ber den eine eventuelle R�ckzahlung erfolgen soll.

aus DFKKZP.REPYM 

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.FK_KT13_ZahlstapelPos IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
s. "Gueltig_Ab"

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

s. "Gueltig_Bis" und ""vorzeitigBeenden"

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.IBAN_AB IS
'... ist die internationale Bankkontonummer (="International Bank Account Number") �ber die die Zahlung erfolgt ist. Die Notation wird durch die ISO-Norm ISO 13616-1:2007 Teil 1 beschrieben.

aus DFKKZP.IBAN

Datenschutz $A1B?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKZP.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Verwendungsbeschreibung_AB IS
'... ist ein Text zur Akontobuchung, R�ckzahlung oder Umbuchung

aus 	DFKKZP.TXTRZ

Datenschutz $AB';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Verwendungszweck_AB IS
'... dokumentiert den Verwendungszweck der Zahlung.

aus 	DFKKZP.TEXTVW

Datenschutz $A1B?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Zahlbetrag IS
'.... gibt den Betrag an, �ber den die Zahlung lautet. Es ist der gesamte eingezahlte Betrag, unabh�ngig von seiner Verwendung.
Die W�hrung f�r den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HS.C_Waehrung

aus DFKKZP.BETRZ

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.ZahlstapelPosNr IS
'.. ist die laufende Nummer der Position im Zahlstapel, Bestandteil des Business-Keys

aus DFKKZP.POSZA

Datenschutz $A2';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Zahlstapel_Id_A IS
'... ist die Bezeichnung des Zahlstapels.

aus DFKKZP.KEYZ1 

Datenschutz $A2';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.zugeordneter_Betrag IS
'.... gibt die Summe der Betr�ge an, die vom Zahlbetrag bereits bestehenden Forderungen zugeordnet sind. Meistens (z.B. bei LSV) ist dies der gesamte Zahlbetrag, es kann sich aber auch um die Summe gekl�rter Teilbetr�ge handeln.
Die W�hrung f�r den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HS.C_Waehrung.

aus DFKKZP.BETRK

Bea: Dieser Betrag l��t sich aus den verlinkten Belegen (und ihren R�cknahmen) berechnen. Da diese Berechnung aber beliebig kompliziert werden kann, wid das Attribut hier redundant festgehalten.

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.FK_KT12_Zahlungsstapel IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.SK_KT13_ZahlstapelPos IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.SK_PA01_PA02_KT01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.FK_PA01_PA02_KT01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.SK_PA01_PA02_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.FK_PA01_PA02_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.SK_PA01_PA02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.FK_PA01_PA02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE KT01_Beleg_InEx_02_HBS IS
'aus FS-CD / DFKKKO (eingeschr�nkt f�r LSV-Auswertungen)';

COMMENT ON TABLE KT01_KT08_BBL IS
'Zuordnung von Beleg zu Inkassoposition

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT01_BH

In der Quelle ist die Klammer �ber den "Inkassopositionen" die Belegnummer. 

Business-Key f�r FS-CD:
KT01:	Bildungsregel			''SHUKR''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

';

COMMENT ON TABLE KT01_KT09_Bel_Inkasso_BL IS
'Zuordnung von Beleg zu Inkassierungsmassnahme

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer �ber den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsma�nahme zugeordnet.
Zur Beachtung: Es kann zu einem Beleg (hintereinander) mehrere Inkassierungsma�nahmen geben: Nach R�cknahme kann mit einem neuen Abgabedatum eine neue Inkassierungsma�nahme gestartet werden. 

Business-Key f�r FS-CD:
KT01:	Bildungsregel			''SHUKR''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
KT09:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Vertragskonto			DFKKOP.VKONT
			Zahlungspflichtiger	DFKKOP.XBLNR
			Abgabedatum			DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Dieser Link ist dann und nur dann redundant zu KT09_BH->(*)KT08_KT09_BL->KT08_BW->KT06_KT08_BL->KT06_BW->KT01_BH, falls es zur Inkassierungsma�nahme mindestens eine g�ltige Inkassoposition gibt.

Bea: Selbst wenn alle Inkassopositionen zur Inkassoma�nahme zur�ckgenommen sind, bleibt dieser Link bestehen.';

COMMENT ON TABLE KT01_KT12_ZahlungsBeleg_BBL IS
'Zuordnung vom Zahlungsbeleg zu dem Zahlungsstapel, aus dem dieser Beleg entstanden ist.

Redundant zu KT01_Beleg_BH->KT01_KT13_Zahlstap_ausglBel_BL->KT13_ZahlstapelPos_KT12_BW->KT12_Zahlungsstapel_BH

Business-Key f�r FS-CD:
1. gef�llt aus DFKKZP (falls DFKKZP.KLAEH leer, d.h. nicht aus Kl�rung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.OPBEL

2. gef�llt aus DFKKZP (falls DFKKZP.KLAEB gef�llt, d.h. aus Totalkl�rung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.KLAEB

3. gef�llt aus DFKKZPT (falls RUEZU=leer, d.h. aus Teilkl�rung ohne R�cknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.KLAEB

4. gef�llt aus DFKKZPT (falls RUEZU gef�llt, d.h. aus R�cknahme einer Kl�rung, zur Abschl�sselung am Erfasssung_Gueltig_Ende = CPU-Datum aus DFKKKO der R�cknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.RUEZU



';

COMMENT ON TABLE KT01_KT13_ZahlStBl_InEx_01_LBS IS
'aus DFKKZP und DFKKZPT';

COMMENT ON TABLE KT01_KT13_Zahlstap_AusglBel_BL IS
'Zuordnung von Zahlungsstapelpositionen zum daraus hervorgegangenen Kontokorrent-Beleg

Business-Key f�r FS-CD:
1. gef�llt aus DFKKZP (falls DFKKZP.KLAEH leer, d.h. nicht aus Kl�rung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
			Stapelposition_LFD		DFKKZP.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.OPBEL

2. gef�llt aus DFKKZP (falls DFKKZP.KLAEB gef�llt, d.h. aus Totalkl�rung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
			Stapelposition_LFD		DFKKZP.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.KLAEB

3. gef�llt aus DFKKZPT (falls RUEZU=leer, d.h. aus Teilkl�rung ohne R�cknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
			Stapelposition_LFD		DFKKZPT.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.KLAEB

4. gef�llt aus DFKKZPT (falls RUEZU gef�llt, d.h. aus R�cknahme einer Kl�rung, zur Abschl�sselung am Erfasssung_Gueltig_Ende = CPU-Datum aus DFKKKO der R�cknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
			Stapelposition_LFD		DFKKZPT.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.RUEZU

';

COMMENT ON TABLE KT02_KT04_BL IS
'Beziehung zwischen Vertragskonto und �berwachungsmassnahme in Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf'' FK_KT02_Vertragskonto
(Dieser Link ist f�r FS-CD redundant, weil �ber BelegPosition, Vertragskonto abgebildet.)

Business Key f�r  FS-CD (nicht-K):

KT02: 	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			VertragskontoNr						FKKMAKO.VKONT
KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 f�hrenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR

Business Key f�r K-Inkasso:
KT02:	Bildungsregel					''KONTO''
			Mandant							konstant ''100''
			Vertragskontonummer	PA01_228.EM_ALT (Die Vertragskontonummer ist in Paris POB und PDB_INR eineindeutig zugeordnet .)
KT04:	Bildungsregel					''K''
			VNR										mu� aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
			Mahnverfahren_von			das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".';

COMMENT ON TABLE KT02_KT08_BBL IS
'Zuordnung von der Inkassoposition zum Vertragskonto

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT02_KT06_BL->KT02_BH

Business-Key f�r FS-CD:
KT02:	Bildungsregel					''KONTO''
			Mandant							DFKKCOLLH.MANDT
			Vertragskontonummer	DFKKOP.VKONT
KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

';

COMMENT ON TABLE KT02_KT09_BL IS
'Zuordnung von der Inkassierungsmassnahme zum Vertragskonto

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer �ber den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsma�nahme zugeordnet.

Business-Key f�r FS-CD:
KT02:	Bildungsregel					''KONTO''
			Mandant							DFKKCOLLH.MANDT
			Vertragskontonummer	DFKKOP.VKONT
KT09:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Vertragskonto			DFKKOP.VKONT
			Zahlungspflichtiger	DFKKOP.XBLNR
			Abgabedatum			DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Dieser Link ist dann und nur dann redundant zu KT09_BH->(*)KT08_KT09_BL->KT08_BW->KT06_KT08_BL->KT06_BW->KT02_KT06_BL->KT02_BH, falls es zur Inkassierungsma�nahme mindestens eine g�ltige Inkassoposition gibt.

Bea: Selbst wenn alle Inkassopositionen zur Inkassoma�nahme zur�ckgenommen sind, bleibt dieser Link bestehen.';

COMMENT ON TABLE KT02_VKSperre_InEx_01_HBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH f�r Typ = ''04'' (Vertragskonto; bei DEVK nicht gebr�uchlich) und ''06'' (partnerspezifische Kontodaten)';

COMMENT ON TABLE KT04_KT05_BL IS
'Beziehung zwischen In-/Exkassoobjekt und �berwachungsmassnahme in Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf'' FK_KT05_InExkassoObjekt 
(Dieser Link ist f�r FS-CD redundant, weil �ber BelegPosition, Beleg, Zahlplanposition, InkassoObjekt abgebildet.)

Business Key f�r  FS-CD (nicht-K):

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 f�hrenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR
KT05: 	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF
			POB												FKKMAKO.GPART

Business Key f�r K-Inkasso:
KT04:	Bildungsregel					''K''
			VNR										mu� aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
			Mahnverfahren_von			das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".
KT05:	Mandant							''100''
			VNR 									Versicherungsscheinnummer
   	        POB										Partnerordnungsbegriff
	
F�r K-Inkasso  mu� die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".';

COMMENT ON TABLE KT04_KT06_BL IS
'Beziehung zwischen BelegPosition und �berwachungsmassnahme im Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf BelegPosition'' FK_KT06_BelegPosition

Business Keys:
f�r FS-CD:

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 f�hrenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR
KT06:	Bildungsregel							''SHUKR''
			Mandant									FKKMAZE.MANDT
			BelegNr										FKKMAZE.OPBEL
			WiederholungsPosition_Lfd	FKKMAZE.OPUPW		(z.Zt. immer 0)
			BelegPosition_Lfd						FKKMAZE.OPUPK
			BelegTeilPosition_Lfd				FKKMAZE.OPUPZ

(MVLNR ist nicht in FKKMAZE enthalten, daher mu� zuerst der passende Eintrag in FKKMAKO ermittelt werden) 

f�r K-Inkasso:
	KT04:	Bildungsregel							''K''
				Versicherungsscheinnummer	KFZA_BEITRAG.VTR_VNR
				Mahnverfahren_von
	KT06:	Versicherungsscheinnummer	KFZA_BEITRAG.VTR_VNR
				Satzart											KFZA_BEITRAG.VTR_SA
				masch. Bearbeitungsdatum	KFZA_BEITRAG.VTR_MBD
				Nettof�lligkeitsdatum				KFZA_BEITRAG.VTR_FAELLIGDAT
				Deckungsart								KFZA_BEITRAG.T_DA

F�r K-Inkasso  mu� die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

KT06: ?';

COMMENT ON TABLE KT04_KT06_InEx_01_LBS IS
'aus FKKMAZE';

COMMENT ON TABLE KT04_Ueberwachung_BH IS
'... ist eine Massnahme zur Erh�hung der Chancen, dass der Saldo eines der In-/Exkassobjekts ausgeglichen wird. 
Bea: Die Massnahme besteht dabei oft aus mehreren �berwachungsstufen, die bei Fortbestehen des R�ckstands aufeinander folgen, z.B. Zahlungserinnerung, Mahnung, vorgerichtliches Mahnverfahren, ....

f�r nicht-K:
aus FKKMAKO

Der Business Key der �berwachungsma�nahme aus FS-CD setzt sich aus dem Vertragskonto, dem In-/Exkasso-Partner (=Gesch�ftspartner in FS-CD) und der laufenden Nummer der �berwachungsma�nahmen ("Mahnverfahren") f�r dieses Vertragskonto zusammen.

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 f�hrenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR

Bea: Durch Simulationsl�ufe erzeugte �berwachungen werden nicht ins DWH eingespielt (erkennbar an leerem Druckdatum)!

Der o.a. BK ist nicht ausreichend, um alle Eintr�ge aus der FKKMAKO zu schl�sseln. daher ist im (Multi Active) Satellit ein weiterer Schl�ssel notwendig. Dazu dient der Buchungskreis STDBK aus FKKMAKO. 

f�r K-Inkasso:
Die �berwachung ist dem Vertrag ohne Historie und ohne Unterscheidung einzelner Mahnverfahren zugeordnet. F�r Zwecke des DWH wird der Business-Key daher aus der Versicherungsscheinnummer und dem Beginndatum der �berwachung gebildet:
	Bildungsregel											''K''
	Versicherungsscheinnummer	VNR			mu� aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
	Mahnverfahren_von									das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

Die �berwachung endet, wenn der Kontostand (P6061) = 0,00 ist und C_AbschlussGerichtlMahn nicht "offen" ist (s. dort).
Bea: bei externem Mahnverfahren wird die Forderung im K-Inkasso ausgebucht, ohne dass die �berwachung als beendet zu betrachten w�re.


';

COMMENT ON TABLE KT04_Ueberwachung_InEx_01_HBM IS
'Die Informationen in dieser Entit�t beruhen auf der Tabelle FKKMAKO aus FS-CD.';

COMMENT ON TABLE KT05_ER01_InExOSch_InEx_01_LBS IS
'aus FKKMAKO, jeweil aus den Mahngeb�hr-Attributen';

COMMENT ON TABLE KT05_IEOSperre_InEx_01_HBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH f�r Typ = ''22'' (Partnerdaten zum Versicherungsobjekt)';

COMMENT ON TABLE KT05_InExkassoObj_InEx_02_HBS IS
'aus DIMAPARPLAN
';

COMMENT ON TABLE KT05_InExkassoObj_InEx_03_HBS IS
'aus DIMAIOBPAR 
';

COMMENT ON TABLE KT05_KT08_BBL IS
'Zuordnung von der Inkassoposition zum InExkassoObjekt

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT05_KT06_BL->KT05_BH

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer �ber den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsma�nahme zugeordnet.

Business-Key f�r FS-CD:
KT05:	Bildungsregel					''KONTO''
			Mandant							DFKKCOLLH.MANDT
			InExkassoObjektNr			DFKKOP.VTREF ohne dreistellige lfdNr  (f�r 1 bis n historische Zuordnungen zu "Versicherungskonten"), falls kein ICL, LL
															= Versicherungsscheinnummer incl. PZ und ZNR
					oder									Nummer einer Leistung mit Pr�fix ''ICL'' (f�r Sachsch�den)
					oder									Nummer einer Leistung mit Pr�fix ''LL'' (f�r Leben-Leistung).
			POB										DFKKOP.GPART			(ohne erste und letzte Stelle))
KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS';

COMMENT ON TABLE KT05_WE01_InExOVer_InEx_01_LBS IS
'aus FKKMAKO, jeweil aus den Mahngeb�hr-Attributen';

COMMENT ON TABLE KT05_WE01_InExO_Vertrag_BL IS
'Link zwischen InExkassoObjekt und Vertrag in Sinne von

FK_KT05_InExkassoObjekt ''repr�sentiert Vertrag'' FK_WE01_Vertrag

Business Key
f�r FS-CD (nur f�r INSOBJECT ohne Pr�fix ''IPC'' oder ''LL'' ):

KT05:	Bildungsregel								''KONTO''
			Mandant										DIMAIOBPAR.CLIENT
			InExkassoObjektNr						DIMAIOBPAR.INSOBJECT	ohne dreistellige lfdNr  (f�r 1 bis n historische Zuordnungen zu "Versicherungskonten")
																												 (Versicherungsscheinnummer inkl. PZ und ZNR) 
			POB													DIAIOBPAR.PARTNER
WE01:	Mandant										''100'' (Bildungsregel wird weggelassen, damit es mit WE_Willenserklaerung zusammenpasst)
			Versicherungsscheinnummer		DIMAIOBPAR.INSOBJECT 	InkassoObjektNr ohne dreistellige lfdNr  (f�r 1 bis n historische Zuordnungen zu "Versicherungskonten") 	, f�r Sach ohne ZNR

f�r K-Inkasso:
KT05:	Bildungsregel								''KONTO''
			Mandant										''100''
			VNR (Versicherungsscheinnummer)
			PNR
WE01:	Mandant										''100''
			VNR (Versicherungsscheinnummer)

(F�r K-Inkasso  mu� die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.)

f�r lifefactory:
KT05:	Mandant										konstant														(immer ''100'')
			Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)
			POB													~.PartnerID
																	BEA: Antr�ge ausfiltern!
WE01:	Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)


';

COMMENT ON TABLE KT06_BelegPosSperr_InEx_01_WBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH f�r LOTYP = ''02'' (Belegposition)

Bea: DFKKLOCKSH enth�lt nur die nicht mehr g�ltigen Zust�nde der Sperre';

COMMENT ON TABLE KT06_KT08_BL IS
'Beziehung zwischen Belegposition bzw. Teilposition und Inkassoposition.

Zu jeder Inkassierungsma�nahme gibt es 1..n Inkassopositionen. Eine Inkassoposition bezieht sich auf genau eine Belegposition bzw. Teilposition.

Business Keys:
KT06:		Bildungsregel							''SHUKR''
				Mandant									DFKKOP.MANDT
				BelegNr										DFKKOP.OPBEL
				WiederholungsPosition_Lfd	DFKKOP.OPUPW		(z.Zt. immer 0)
				BelegPosition_Lfd						DFKKOP.OPUPK
				BelegTeilPosition_Lfd				DFKKOP.OPUPZ

KT08:		Bildungsregel					''KONTO''
				Mandant							DFKKOP.MANDT
				Belegnummer					DFKKOP.OPBEL
				Inkassoposition_lfd			DFKKOP.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS';

COMMENT ON TABLE KT08_InkassoPosition_BH IS
'Zu jeder Inkassierungsmassnahme gibt es 0..n Inkassopositionen. Eine Inkassoposition bezieht sich auf genau eine Belegposition/ Teilposition.

Inkassopositionen werden erst durch die Abgabe an Inkasso gem. Abgabestatus (AGSTA) zu einer Inkassierungsma�nahme, d.h es gibt Inkassopositionen, die noch zu keiner Inkassierungsma�nahme geh�ren (AGSTA in (01, 14, NULL))

aus DFKKCOLLH
Business Keys aus FS-CD:

KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS

In FS-CD wird f�r jede offene Belegposition und bei Existenz von Teilpositionen f�r jede offene Teilposition eine separate "�bergabe an Inkasso" vorgesehen. Einer Belegposition bzw. Teilposition entspricht eine Inkassoposition, die mit einer laufenden Nummer innerhalb des Belegs versehen wird.
';

COMMENT ON TABLE KT08_KT09_BL IS
'Zu jeder Inkassoma�nahme gibt es 0..n Inkassopositionen. Eine Inkassoposition bezieht sich auf genau eine Belegposition/ Teilposition.
Eine Verbindung existiert nur f�r Inkassopositionen mit Abgabestatus AGSTA nicht in (''01'', ''14'', NULL). Bei Abgabestatus AGSTA in (''05'', ''06'', ''09'', ''16'') wird die Verbindung wegen R�cknahme der Inkassoposition beendet.

aus DFKKCOLL - Abgabe an Inkasso

Business Keys aus FS-CD:

KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS

KT09:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Vertragskonto			DFKKOP.VKONT
			Zahlungspflichtiger	DFKKOP.XBLNR
			Abgabedatum			DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

In FS-CD wird f�r jede offene Belegposition und bei Existenz von Teilpositionen f�r jede offene Teilposition eine separate "�bergabe an Inkasso" vorgesehen. Einer Belegposition bzw. Teilposition entspricht eine Inkassoposition, die mit einer laufenden Nummer innerhalb des Belegs versehen wird.
';

COMMENT ON TABLE KT09_Inkassierungsmassnahme_BH IS
'In der Quelle existiert der Begriff der "Inkassierungsma�nahme" nicht, die Klammer �ber den "Inkassopositionen" ist dort die Belegnummer.

Zu einer Inkassierungsma�nahme sollen nur solche Inkassopositionen geh�ren, die den Abgabestatus >= 02 und <> 14 (abgegeben an Inkasso) haben.

F�r Beitrag:
Fachlich ist die Inkassierungsma�nahme dadurch definiert, dass Inkassopositionen (siehe dort)
- demselben origin�r Zahlungspflichtigen
- demselben Vertragskonto und
- demselben Abgabedatum an Inkasso
zuzuordnen sind.
Diesem fachlichen Verst�ndnis folgend geht die Belegnummer nicht in den Business-Key ein.

F�r Schaden:
Die fachliche Betrachtung f�r Schaden st�tzt sich auf Belege.
Das Vertragskonto an der Belegposition ist ein Vertragskonto des VN mit Vertragskontotyp "C2".
Nach Abgabe ist das Inkassob�ro INKGP immer 0568217349 (Schaden-Orgamahn).

Die hier definierte "Inkassierungsma�nahme" f�hrt nur dann zu Konflikten mit der im Schaden vorhandenen Beleg-Sicht, wenn zwei Belege zu demselben Schaden-Vertragskonto und demselben Schuldner gleichzeitig an Inkasso �bergeben werden. Technisch ist das m�glich, wenn auch fachlich nicht sinnvoll. Dabei ist zu beachten, dass die �bergabe (anders als die Freigabe) einmal pro Woche automatisch zu demselben Zeitpunkt durchgef�hrt wird.

Business Key aus FS-CD:
KT09:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Vertragskonto			DFKKOP.VKONT
			Zahlungspflichtiger	DFKKOP.XBLNR
			Abgabedatum			DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS';

COMMENT ON TABLE KT12_Zahlstapel_InEx_01_HBS IS
'aus  FS-CD / DFKKZK';

COMMENT ON TABLE KT12_Zahlungsstapel_BH IS
'... ist ein Stapel von gleichartig zu verarbeitenden Zahlungen.

Business Key des Zahlungsstapels aus FS-CD:
KT12:	Bildungsregel	''KONTO''
			Mandant			DFKKZK.MANDT
			Stapelnummer	DFKKZK.KEYZ1
oder
			Bildungsregel	''KONTO''
			Mandant			DFKKZP.MANDT
			Stapelnummer	DFKKZP.KEYZ1

f�r K-Inkasso: nicht vorhanden';

COMMENT ON TABLE KT13_ZahlstapelPos_InEx_01_WBS IS
'aus  FS-CD / DFKKZP';

COMMENT ON TABLE KT13_ZahlstapelPos_KT12_BW IS
'... enth�lt die Positionen in einem Zahlstapel.

Business Key der Zahlungsstapelposition aus FS-CD

KT13:	Bildungsregel							''KONTO''
			Mandant									DFKKZP.MANDT
			Stapelnummer							DFKKZP.KEYZ1
			Stapelposition_LFD					DFKKZP.POSZA	

FK des Zahlstapels

KT12:	Bildungsregel							''KONTO''
			Mandant									DFKKZP.MANDT
			Stapelnummer							DFKKZP.KEYZ1	

f�r K-Inkasso: nicht vorhanden';

COMMENT ON TABLE PA01_PA02_KT01_BL IS
'Beziehungen von Personen zu Belegen, z.B.

''In-/Exkasso-Partner''

Business Keys:
PA01:	Mandant										DFKKKO.MANDT
			Partnerordnungsbegriff (POB)	DFKKKO.XBLNR			ohne f�hrende Nullen und ohne letzte Stelle (PZ), entspricht inhaltlich dem POB aus Paris

PA02:	Bildungsregel								''HARM''
			Partnerrolle									''HARM~'' ||  HARM( "origin�r Zahlungspflichtiger") 	Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert
																																									und im Zusammenhang mit harmonisierten Feldern i.d.R. zum Lookup verwendet wird

KT01:	Bildungsregel								''SHUKR''
			Mandant										DFKKKO.MANDT
			Belegnummer								DFKKKO.OPBEL';

COMMENT ON TABLE PA01_PA02_KT08_BL IS
'Zuordnung eines Partners zu einer Inkassierungsmassnahme: "Inkassob�ro", "origin�r Zahlungspflichtiger"

Business-Key
aus SAP FS-CD:
PA01_PA02_KT08:
			Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)	DFKKCOLLH.INKGP (f�r Inkassob�ro) / XBLNR (f�r origin�r Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Rolle												HARM( ''Inkassob�ro''/ "origin�r Zahlungspflichtiger")						 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Belegnummer								DFKKCOLLH.OPBEL
			Inkassoposition_lfd						DFKKCOLLH.INKPS

PA01:	Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)	DFKKCOLLH.INKGP (f�r Inkassob�ro) / XBLNR (f�r origin�r Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:  Rolle												HARM( ''Inkassob�ro''/ "origin�r Zahlungspflichtiger")		Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
KT08:	Bildungsregel								''KONTO''
			Mandant										DFKKCOLLH.MANDT
			Belegnummer								DFKKCOLLH.OPBEL
			Inkassoposition_lfd						DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Der/Die Partner in der Rolle "origin�r Zahlungspflichtiger" ist redundant zu KT08_BH->KT08_KT06_BL->KT06_BW->PA01_PA02_KT06_BL->PA01 in der Rolle "Schuldner". In der Rolle "Inkassob�ro" ist dieser Link origin�r.



';

COMMENT ON TABLE PA01_PA02_KT08_InEx_01_LBS IS
'DIMAIOBPAR';

COMMENT ON TABLE PA01_PA02_KT09_BL IS
'Zuordnung eines Partners zu einer Inkassierungsmassnahme: "Inkassob�ro", "origin�r Zahlungspflichtiger"

Business-Key
aus SAP FS-CD:
PA01_PA02_KT09:
			Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)   DFKKCOLLH.INKGP (f�r Inkassob�ro) / XBLNR (f�r origin�r Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Rolle												HARM( ''Inkassob�ro''/ "origin�r Zahlungspflichtiger")						 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Vertragskonto								DFKKOP.VKONT
			Zahlungspflichtiger						DFKKOP.XBLNR 															ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Abgabedatum								DFKKCOLLH.AGDAT

PA01:	Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)   DFKKCOLLH.INKGP (f�r Inkassob�ro) / XBLNR (f�r origin�r Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:  Rolle												''HARM~'' ||  HARM( ''Inkassob�ro''/ "origin�r Zahlungspflichtiger") 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
KT09:	Bildungsregel								''KONTO''
			Mandant										DFKKCOLLH.MANDT
			Vertragskonto								DFKKOP.VKONT
			Zahlungspflichtiger						DFKKOP.XBLNR 															ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Abgabedatum								DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Der/Die Partner in der Rolle "Inkassob�ro" bzw. "origin�r Zahlungspflichtiger" ist redundant zu KT09->(*)KT08_KT09_BL->KT08_BH->PA01_PA02_KT08_BL->PA01_BH in der gleichen Rolle. Wenn alle KT08_KT09_BL zu einem "Inkassob�ro" bzw. zu einem "origin�r Zahlungspflichtigen" abgeschl�sselt sind, ist dieser Link unn�tig. Bea: Selbst wenn alle Inkassopositionen zur Inkassoma�nahme zur�ckgenommen sind, bleibt dieser Link bestehen.


';

COMMENT ON TABLE PA01_PA02_KT09_InEx_01_LBS IS
'DIMAIOBPAR';

