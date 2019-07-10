--<ScriptOptions statementTerminator=";"/>
-- Version 17922

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

COMMENT ON COLUMN KT01_Beleg_InEx_02_HBS.angelegt_von_A IS
'... gibt den Arbeitsanteil (bei BelegHerkunft = ''manuell'') resp. den technischen User (bei Batchläufen) an.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.FK_KT01_KT09_Bel_Inkasso IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT09_Bel_Ink_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'Kurzkontierung für Umbuchungen
Wird von der (Guthaben)Klärung aus benutzt, um einen Betrag auf ein Hauptbuchkonto umzubuchen. Das Guthaben im FSCD ist anschl. nicht mehr vorhanden, da der Beleg aus der Kurzkontierung dieses Guthaben ausgleicht.

aus DFKKZP(T).KUKON 

kurz  				Text              				 		Sachkto BuKr

ADM 	Vergütung Scheck-Schaden		201510 1000
BAHN Bahnkosten SB-Schaden       		784108 3000
BANK	Umbuchung für andere Fachbereiche (Bank) 781000 3000
BEIT		Umbuchung an Beitragseinzug	781051 3000
DVAG	Maklervergütung Schaden G  	784230 2000
DVAV	Maklervergütung Schaden V		784230 1000
FLUG	Flugkosten SB-Schaden  		        784113 1000
GMV	Umbuchung an OrgaMahn 		781408 2000
HYPO	Umbuchung an Hypotheken		782071 1000
KFZ  	Umbuchung an KFZ            			781390 1000
KKBU 	Krankenkassenbeitrag umbuchen (LL)    202871 3000
KRAN	Leistungsrückzahlung Kranken	782016 6000
KSCH 	Umbuchung an Schaden (Kfz)	781061 1000
RKOS 	Recherchekosten             				683000 6000
RKVJ 	Recherchekosten Vorjahr         	683001 6000
RÜ-G	 Umbuchung an Rückversicherung G     784119 2000
RÜ-V 	Umbuchung an Rückversicherung V   	  784119 1000
ÜWER 	Übertragungswert            				 438132 6000
VERR	Verrechnung mit anderen Fachbereichen   781001 3000

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.C_Zahlweg_Rueckzahlung IS
'... legt den Zahlweg fest, über den eine eventuelle Rückzahlung erfolgt.

aus DFKKZP(T).REPYM 

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.C_aus_Klaerung IS
'Kennzeichen, ob der Beleg zur Zahlstapelposition (und damit dieser Link) im Rahmen einer Klärung erzeugt wurde.

ja, wenn DFKKZP.KLAEH gefüllt, d.h. Beleg-Teil des BK aus DFKKZP(T).KLAEB, (wenn Satz aus DFKKZPT stets = ja)
nein sonst

Datenschutz $-?
';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

aus DFKKKO.CPUDT||DFKKKO.CPUTM mit DFKKKO.OPBEL=DFKKZPT.KLAEB, wenn DFKKZPT.RUEZU Bestandteil von KT01_KT13_KK_Beleg_BL.FK_KT01_Beleg

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.FK_KT01_KT13_Zahlstap_Beleg IS
'
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Klaerungskonto_abweichend IS
'... gibt bei einer zu klärenden Zahlung das Fibu-Konto an, auf das der Gesamtbetrag der Zahlung vor der Klärung gebucht wird, wenn es vom Klärungskonto zum FiBu-Beleg abweicht.

aus DFKKZPT.KLAEO
leer, wenn der Satz nicht aus DFKKZPT gefüllt wird

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist bei einer Teilklärung die Positionsnummer innerhalb der zugehörigen Zahlungsstapelposition.

aus DFKKZPT.TKPOS
leer, wenn der Satz nicht aus DFKKZPT gefüllt wird

Datenschutz $-?';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.Verwendungsbeschreibung_AB IS
'... ist ein Text zur Akontobuchung, Rückzahlung oder Umbuchung

aus  DFKKZP(T).TXTRZ

Datenschutz $AB';

COMMENT ON COLUMN KT01_KT13_ZahlStBl_InEx_01_LBS.zugeordneter_Betrag IS
'.... gibt den Betrag an, der vom Zahlbetrag bereits bestehenden Forderungen zugeordnet ist. Meistens ist dies der gesamte Zahlbetrag, es kann sich aber auch um die geklärten Teilbeträge handeln.
Die Währung für den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HBS.C_Waehrung.

aus DFKKZP.BETRK oder DFKKZPT.BETRK

Bea: Dieser Betrag läßt sich aus den verlinkten Belegen (und ihren Rücknahmen) berechnen. Da diese Berechnung aber beliebig kompliziert werden kann, wird das Attribut hier redundant festgehalten.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.FK_KT02_KT04 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist das Datum, an dem die Überwachungsmaßnahme beendet wurde. Ist für laufende Maßnahmen nicht gefüllt, wird bei Beendung in der ganzen Historie mit dem Enddatum überschrieben.

aus nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)

Datenschutz $-';

COMMENT ON COLUMN KT02_KT04_InEx_01_LBS.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die Überwachungsmaßnahme gestartet wurde

Wegen Problemen der Realisierung als fachlich_gueltig_beginn wird dieses Attribut redundant der Tabelle hinzugefügt.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.FK_KT02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'Prozess, für den die Sperre gilt (Könnte durch Link ersetzt werden (-> Geschäftsprozesse)), der also für dieses Geschäftsobjekt nicht durchgeführt wird. 

aus DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=06

1	Mahnen	-> Überwachungstätigkeiten sind gesperrt 
2	Eingangszahlung	-> Eingangszahlungstätigkeiten sind gesperrt 
3	Ausgangszahlung	-> Ausgangszahlungstätigkeiten sind gesperrt 
4	Verzinsen -> Verzinsungstätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
5	Fakturieren -> Fakturierungstätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
7	Korrespondenzmahnen -> Tätigkeiten zu Korrespondenzmaßnahmen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
9	Buchen/Ausgleichen -> Buchungungs- und Ausgleichstätigkeiten sind gesperrt 
12	Fakturieren (FI-CA) -> Fakturierungstätigkeiten (FI-CA) sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Ausprägungen entsprechen den Werten, die an anderen Stellen für (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und  DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=06

Mahnsperrgünde (1 Mahnen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angekündigt
J Zahlungsschwierigkeiten
L Abgegeben an GM/ext. Inkasso
M Stundung Leben
V Tarif FPT
Z Sonstige

Eingangszahlungssperrgründe (2 Eingangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgelöst
E	Gerichtliches Mahnverfahren (nur Exk)
F	Vermögenswirksame LV (nur Exkasso)
G	Verrechn. m. künftig. Forder. (nur Exk)
H	Abweichender Zahlungsempfänger (nur Exk)
I	Zahlung angekündigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein gült. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassobüro
M	Stundung Leben
N	Rückläufer "Vorweggenommene Auszahlung"
P	geänderte Bankverbindung
Q	Exkassorückläufer Leben Leistung
V	FPT Zulage
Z	Sonstiges

Ausgangszahlungssperrgründe (3 Ausgangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgelöst
E	Gerichtliches Mahnverfahren (nur Exk)
F	Vermögenswirksame LV (nur Exkasso)
G	Verrechn. m. künftig. Forder. (nur Exk)
H	Abweichender Zahlungsempfänger (nur Exk)
I	Zahlung angekündigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein gült. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassobüro
M	Stundung Leben
N	Rückläufer "Vorweggenommene Auszahlung"
P	geänderte Bankverbindung
Q	Exkassorückläufer Leben Leistung
V	FPT Zulage
Z	Sonstiges
 
Ausgleichssperre (9 Buchen / Ausgleichen):

A Vorgang in Bearbeit. 
B Beschwerde 
C Partner verstorben
E Ger.Mahnv.-nur masch
N Riester Betr.abwei.
O Überwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges

Datenschutz $B';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.FK_KT02_Vertragskonto IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.Sperre_Id_A IS
'in der Quelle existiert kein BK für die Sperren, daher wird hier zur eindeutigen Schlüsselung ein Diskriminator 
aus dem ursprünglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
Bea: DFKKLOCKSH enthält nur die nicht mehr gültigen Zustände der Sperre

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.angelegt_von_A IS
'... gibt den Arbeitsanteil des Bearbeiters der Sperre an.

aus DFKKLOCKS(H).UNAME

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.ersterBeginn IS
'... gibt das fachliche Gültigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des ältesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine Änderung beendet worden ist

DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (für historische Zustände aus DFKKLOCKSH)
31.12.9999 23:59:59 (für aktuelle Zustände aus DFKKLOCKS)
Bea: DFKKLOCKS enthält nur die gültigen Zustände der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des ändernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).TDATE

Datenschutz $-';

COMMENT ON COLUMN KT02_VKSperre_InEx_01_HBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.FK_KT04_KT05 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist das Datum, an dem die Überwachungsmaßnahme beendet wurde. Ist für laufende Maßnahmen nicht gefüllt, wird bei Beendung in der ganzen Historie mit dem Enddatum überschrieben.
In der Quelle wird dieses Datum, wenn es gesetzt wird, ebenfalls in die historischen Zustände geschrieben. Daher ist eine Übernahme nur für beendete Überwachungsmaßnahmen sinnvoll, erkennbar aus dem Überwachungsstatus MVSTA.

aus ''if substr( FKKMAKO.MVSTA, 1, 1) = ''9''
then nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)
sonst Highdate

Datenschutz $-';

COMMENT ON COLUMN KT04_KT05_InEx_01_LBS.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die Überwachungsmaßnahme gestartet wurde

Wegen Problemen der Realisierung als fachlich_gueltig_beginn wird dieses Attribut redundant der Tabelle hinzugefügt.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... dieses Attribut stellt die zugehörige selbstständig bilanzierende Einheit dar. 

Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus FKKMAKO.STDBK

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.C_Waehrung IS
'... ist die Währung zu ''Ueberwachungsbetrag''

aus FKKMAZE.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.DatumUeberwachungslauf IS
'Datum des Ueberwachungslaufs (in FS-CD: Mahnlaufs), der innerhalb des betrachteten Überwachungsverfahrens die aktuelle Maßnahme ausgelöst hat.

aus FKKMAZE.LAUFD

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.FK_KT04_KT06 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.KennungUeberwachungslauf IS
'Kennung des Ueberwachungslaufs (in FS-CD: Mahnlauf), der innerhalb des betrachteten Überwachungsverfahrens die aktuelle Maßnahme ausgelöst hat.

aus FKKMAZE.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus FKKMAZE.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Prüfziffer.

aus FKKMAZE.GPART

Datenschutz $A1';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition über den Restbetrag. Daraus folgt meistens, dass eine Belegposition  höchstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verhält sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten also mit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Ueberwachung_LFD IS
'... ist der laufende Zähler für die Überwachungen an einem Vertragskonto für einen In-/Exkasso-Partner.

aus FKKMAKO.MVLNR

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Ueberwachungsbetrag IS
'... ist der überwachte Betrag (z.B. gemahnter Betrag) in C_Waehrung.
Es ist der Betrag der überwachten Belegposition zum Überwachungslauf.

Bea: In der Belegposition gibt es den Betrag auch in Hauswährung zum Überwachungsdruckdatum für das Überwachungslaufdatum.

aus FKKMAZE.MBETM

Datenschutz $-';

COMMENT ON COLUMN KT04_KT06_InEx_01_LBS.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet  und überwacht werden sollen bzw. dürfen.

aus FKKMAZE.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_BH.SK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'.. ist das fachliche Datum der Aufnahme der Überwachungsmaßnahme

aus FKKMAKO.AUSDT

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Abgabe_Inkassobuero_B IS
'... gibt an, ob die überwachte Forderung an ein Inkassobüro abgegeben worden ist.

ja / nein

aus FKKMAKO.XCOLL

"X" bedeutet "ja"
leer bedeutet "nein"
Die Information ist zusätzlich redundant in der Tabelle DFKKCOLL enthalten.

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Buchungskreis IS
'... dieses Attribut stellt die zugehörige selbstständig bilanzierende Einheit dar. 

Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus FKKMAKO.STDBK

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwVerfahrenStatus_B IS
'... gibt den Status der Überwachungsmaßnahme wieder, insbesondere Informationen über die Art der Beendung.

aus FKKMAKO.MVSTA

00	läuft
01	wiederaufgesetzt nach Deaktivierung Ratenplan
02	wiederaufgesetzt nach Kontoumstellung Einzug und Rückl.
03	wiederaufgesetzt nach Rückläufer	
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
98	beendet durch Wechsel des Geschäftspartners
9A	beendet durch Änderung der Bankdaten
9B	beendet durch Postentransfer

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsstorno_B IS
'... gibt an, ob die Überwachungsmaßnahme beendet (z.B. storniert) wurde.
In der Quelle wird dieses Kennzeichen, wenn es gesetzt wird, ebenfalls in die historischen Zustände geschrieben. Daher ist eine Übernahme nur für beendete Überwachungsmaßnahmen sinnvoll, erkennbar aus dem Überwachungsstatus MVSTA.

ja/nein

aus ''if substr( FKKMAKO.XMSTV, 1, 1) = ''9''
then nvl( FKKMAKO.XMSTV + 23:59:59, Highdate)
sonst Highdate

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsstufe_B IS
'... ist die aktuell erreichte Überwachungsstufe innerhalb der Überwachungsmaßnahme.

Bea: der Schlüssel für die Mahnstufe besteht in FS-CD aus dem Schlüssel des "Mahnverfahrens" im Sinne von FS-CD und einer laufenden Nummer innerhalb des "Mahnverfahrens".

aus FKKMAKO.MAHNV und FKKMAKO.MAHNS

MAHNV	MAHNS	Mahnstufe															MSTYP ( -> Mahnstufentyp)
1				1				Zahlungserinnerung Erstbeitrag							  1
1				2				Rücktritt																	11
1				3				Aufhebung Nichteinlösung								Z4
2				1				Zahlungserinnerung Erstbeitrag					 	      1
2				2				Rücktritt				 													11
2				3				Aufhebung Nichteinlösung								Z4
3				1				Klärung Nichtzahlung											Z5
3				2				Zahlungserinnerung Erstbeitrag	     					  1
3				3				Rücktritt																	11
3				4				Aufhebung Nichteinlösung								Z4
4				1				Zahlungserinnerung												  1
4				2				Mahnung Folgebeitrag										  2
4				3				Aufhebung Nichtzahlung Folgebeitrag				Z4
5				1				Zahlungserinnerung									    		  1
5				2				Mahnung Folgebeitrag										  2
5				3				Spartenmeldung Nichtzahlung Folgebeitrag	Z4
6				1				Zahlungserinnerung											      1
6				2				Aufhebung Nichtzahlung Folgebeitrag				Z4
7				1				Zahlungserinnerung												  1
7				2				Klärung Nichtzahlung											Z5
8				1				Zahlungserinnerung											      1
8				2				Mahnung Folgebeitrag										  2
8				3				Aufhebung Nichtzahlung Folgebeitrag				Z4
9				1				Zahlungserinnerung Erstbeitrag							  1
9				2				Rücktritt																	11
9				3				Aufhebung Nichteinlösung								Z4
10			1				Klärung Nichtzahlung											Z5
11			1				Zahlungserinnerung												  1
11			2				Mahnung Folgebeitrag										  2
11			3				Aufhebung Nichtzahlung Folgebeitrag				Z4
12			1				Mahnung Folgebeitrag										  2
12			2				Aufhebung Nichtzahlung Folgebeitrag				Z4
14			1				Klärung Nichtzahlung											Z5
15			1				Zahlungserinnerung												  1
15			2				Klärung Nichtzahlung											Z5
16			1				Zahlungserinnerung												  1
16			2				Mahnung Folgebeitrag										  2
16			3				Aufhebung Nichtzahlung Folgebeitrag				Z4
17			1				Klärung Nichtzahlung											Z5
18			1				Zahlungserinnerung												  1
18			2				Klärung Nichtzahlung											Z5
19			1				Zahlungserinnerung											      1
...

Datenschutz $B';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwachungsstufenTyp_B IS
'... beschreibt den Typ der erreichten Überwachungsstufe (unabhängig vom Verfahren der Überwachung, d.i. "Mahnverfahren" im Sinne von FS-CD).

aus FKKMAKO.MSTYP

MSTYP	Mahnstufentyp
1				Zahlungserinnerung
2				Mahnung
10			Beendigung Ratenplan
11			Rücktritt
Z4			Aufhebung
Z5			Klärung
Z6			Zahlungserinnerung erloschener Vertrag
Z7			Vorgerichtliches Mahnschreiben
Z8			Prüfung Freigabe an externes Inkasso
Z9			Erinnerungsschreiben Rechtsschutz

Datenschutz $B

';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Ueberwachungsverfahren IS
'... bezeichnet das Verfahren, nach dem die Überwachungsmaßnahme abgewickelt wird. Das Verfahren ist abhängig von der Überwachungsvariante des In-/Exkassoobjekts und von weiteren Sachverhalten z.B. ob es sich bei dem ausstehenden Betrag um einen Erst- oder Folgebeitrag handelt. Durch das Verfahren wird geregelt, welche Ueberwachungsstufen zu welchen Terminen gestartet werden.

Bea: in FS-CD bezeichnet "Mahnverfahren" sowohl das Verfahren, nach dem Überwachungsmaßnahmen abgewickelt werden als auch die einzelne Überwachungsmaßnahme z.B. im Bezug auf einen Vertrag. Der Begriff ist daher zu vermeiden.

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
10			Sammelmahnverfahren Klärung Nichtzahlung Standard
11			Folgebeitrag mit verkürzter Frist
12			Folgebeitrag schlechter Zahler
14			Sammelmahnverf. Klärung Nichtzahlung + 2 Wochen
15			Folgebeitrag Direktvers. Nicht-GroKu + 2 Wochen
...

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_UeberwachungsverfahrensTyp IS
'Typ des Verfahrens:

01 Erstprämien-Überwachungsverfahren
02 Folgeprämien-Überwachungsverfahren
03 Ratenplan-Überwachungsverfahren
04 BGB-Überwachungsverfahren
05 Korrespondenz-Überwachungsverfahren

aus FKKMAKO.MVTYP

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.C_Waehrung IS
'... ist die Währung zu ''Ueberwachungssaldo''

aus FKKMAKO.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.DatumUeberwachungslauf IS
'Datum des Ueberwachungslaufs (in FS-CD: Mahnlaufs), der innerhalb des betrachteten Überwachungsverfahrens die aktuelle Maßnahme ausgelöst hat.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.FK_KT04_Ueberwachung IS
'
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.InExkassoObjektNr_A IS
'... ist das InkassoObjekt, das einem Kunden gegenüber abgerechnet  und überwacht werden soll bzw. darf.
Entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr für Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Präfixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus FKKMAKO.VTREF

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.KennungUeberwachungslauf IS
'Kennung des Ueberwachungslaufs (in FS-CD: Mahnlauf), der innerhalb des betrachteten Überwachungsverfahrens die aktuelle Maßnahme ausgelöst hat.

aus FKKMAKO.LAUFI

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus FKKMAKO.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Prüfziffer.

aus FKKMAKO.GPART

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... bezeichnet, der wievielte tatsächlich vorgenommene Bearbeitungsschritt der Überwachungsmaßnahme aktuell bearbeitet wird.

aus FKKMAKO.BEARS

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachung_LFD IS
'... ist der laufende Zähler für die Überwachungen im Rahmen des Überwachungsverfahrens für ein Vertragskonto für einen In-/Exkasso-Partner.
Es bescheibt auch, um die wievielte Überwachungsmaßnahme im Rahmen des Überwachungsverfahrens es sich handelt.

aus FKKMAKO.MVLNR

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungsmassnahme_bis IS
'... ist das Datum, an dem die Überwachungsmaßnahme beendet wurde.
In der Quelle wird dieses Datum, wenn es gesetzt wird, ebenfalls in die historischen Zustände geschrieben. Daher ist eine Übernahme nur für beendete Überwachungsmaßnahmen sinnvoll, erkennbar aus dem Überwachungsstatus MVSTA.

aus ''if substr( FKKMAKO.MVSTA, 1, 1) = ''9''
then nvl( FKKMAKO.MVBIS + 23:59:59, Highdate)
sonst Highdate

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungsmassnahme_von IS
'... ist das Datum, an dem die Überwachungsmaßnahme gestartet wurde

aus FKKMAKO.MVVON

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Ueberwachungssaldo IS
'... ist der aktuelle Saldo der Überwachung in C_Waehrung (zumeist in Euro).

Bea: Das Attribut ist redundant zur Summe der Überwachungsbeträge der zugehörigen ÜberwachungProBelegposition''en (KT04_KT06_BL).

aus FKKMAKO.MSALM

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet  und überwacht werden sollen bzw. dürfen.

aus FKKMAKO.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.geaendert_am IS
'... gibt an, wann diese Überwachung zum letzten Mal geändert worden ist

aus FKKMAKO.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.geaendert_von_A IS
'.... gibt an, von wem diese Überwachung zuletzt geändert worden ist

aus FKKMAKO.AENAM

Datenschutz $A1';

COMMENT ON COLUMN KT04_Ueberwachung_InEx_01_HBM.naechstUeberwLaufdatum IS
'... ist das früheste Ausführungsdatum des nächsten Überwachungslaufs

aus FKKMAKO.MNDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.FK_KT05_ER01_InExO_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_ER01_InExOSch_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'Prozess, für den die Sperre gilt (Könnte durch Link ersetzt werden (-> Geschäftsprozesse)), der also für dieses Geschäftsobjekt nicht durchgeführt wird. 

aus DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=22

1	Mahnen	-> Überwachungstätigkeiten sind gesperrt 
2	Eingangszahlung	-> Eingangszahlungstätigkeiten sind gesperrt 
3	Ausgangszahlung	-> Ausgangszahlungstätigkeiten sind gesperrt 
4	Verzinsen -> Verzinsungstätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
5	Fakturieren -> Fakturierungstätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
6	Scheduling -> Schedulung-Tätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
7	Korrespondenzmahnen -> Tätigkeiten zu KOrrespondenzmaßnahmen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)
9	Buchen/Ausgleichen -> Buchungungs- und Ausgleichstätigkeiten sind gesperrt 
11 Mahnen abhängiger Verträge -> Überwachungstätigkeiten zu abhängigen Verträgen sind gesperrt (gibt es zur Zeit, 03.08.2017, in DEVK nicht)

Datenschutz $-
';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Ausprägungen entsprechen den Werten, die an anderen Stellen für (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und  DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=22

Mahnsperrgünde (1 Mahnen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angekündigt
J Zahlungsschwierigkeiten
L Abgegeben an GM/ext. Inkasso
M Stundung Leben
V Tarif FPT
Z Sonstige

Eingangszahlungssperrgründe (2 Eingangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgelöst
E	Gerichtliches Mahnverfahren (nur Exk)
F	Vermögenswirksame LV (nur Exkasso)
G	Verrechn. m. künftig. Forder. (nur Exk)
H	Abweichender Zahlungsempfänger (nur Exk)
I	Zahlung angekündigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein gült. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassobüro
M	Stundung Leben
N	Rückläufer "Vorweggenommene Auszahlung"
P	geänderte Bankverbindung
Q	Exkassorückläufer Leben Leistung
V	FPT Zulage
Z	Sonstiges

Ausgangszahlungssperrgründe (3 Ausgangszahlung):

A	Vorgang in Bearbeitung
B	Beschwerde
C	Partner verstorben
D	RL 901 IBAN fehlerhaft/902 Kto.aufgelöst
E	Gerichtliches Mahnverfahren (nur Exk)
F	Vermögenswirksame LV (nur Exkasso)
G	Verrechn. m. künftig. Forder. (nur Exk)
H	Abweichender Zahlungsempfänger (nur Exk)
I	Zahlung angekündigt (nur Inkasso)
J	Zahlungsschwierigkeiten (nur Inkasso)
K	RL 909 kein gült. Mand./912 Umstritt. M
L	Abgegeben an GM / ext. Inkassobüro
M	Stundung Leben
N	Rückläufer "Vorweggenommene Auszahlung"
P	geänderte Bankverbindung
Q	Exkassorückläufer Leben Leistung
V	FPT Zulage
Z	Sonstiges
 
Ausgleichssperre (9 Buchen / Ausgleichen):

A Vorgang in Bearbeit. 
B Beschwerde 
C Partner verstorben
E Ger.Mahnv.-nur masch
N Riester Betr.abwei.
O Überwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges

Datenschutz $B';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr für Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Präfixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus DFKKLOCKS.LOOBJ1

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.Sperre_Id_A IS
'in der Quelle existiert kein BK für die Sperren, daher wird hier zur eindeutigen Schlüsselung ein Diskriminator 
aus dem ursprünglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
Bea: DFKKLOCKSH enthält nur die nicht mehr gültigen Zustände der Sperre

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.angelegt_von_A IS
'... gibt den Arbeitsanteil des Bearbeiters der Sperre an.

aus DFKKLOCKS.UNAME

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.ersterBeginn IS
'... gibt das fachliche Gültigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des ältesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine Änderung beendet worden ist

DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (für historische Zustände aus DFKKLOCKSH)
31.12.9999 23:59:59 (für aktuelle Zustände aus DFKKLOCKS)
Bea: DFKKLOCKS enthält nur die gültigen Zustände der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des ändernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

DFKKLOCKS.TDATE

Datenschutz $-';

COMMENT ON COLUMN KT05_IEOSperre_InEx_01_HBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).FDATE

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_InExkassoObjektArt IS
'... es werden drei Arten von In-/Exkassoobjekten unterschieden.
Dieses Attribut findet sich nicht(!) in der Quelle wieder. Inkassoobjekte mit dem Präfix ICL sind von der Art Schaden, Präfix LL sind LebenLeistung alle anderen sind Vertragsnummern, wobei der 3-stellige Suffix entfällt.

Beitrag
Schaden
LebenLeistung

aus  DIMAPARPLAN.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_Periodizitaet_Sollstellung IS
'... repräsentiert die Periodizität für Sollstellungen aus Zahlplanpositionen des Inkassoobjekts.

Für das Beitragsinkasso von Verträgen ist dies bei Altverträgen (Altsparten) identisch mit der vertraglich vereinbarten Zahlweise des zu Grunde liegenden Vertrages. Wenn ein anforderndes System die fälligkeitsbezogenen Forderungen jeweils separiert liefert (z.B. Lifefactory), dann hier stets "einmalig", somit nicht mehr identisch.
Für Beitragserstattungen, Schaden und Leistung ist das Attribut stets "einmalig", daher eigentlich unerheblich.

aus DIMAPARPPLAN.PKEY

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.C_Wechseloption_ZW_InEx IS
'... gibt an, ob und wie die Zahlweise im In-/Exkasso wechseln darf.

Anhand von POKEY wird an der Oberfläche geprüft, ob ein Wechsel der Zahlweise (PKEY) erlaubt ist. POKEY ist ein Pflichtfeld in FSCD.

00:	kein Wechsel erlaubt  (ist speziell für die fälligkeitsbezogenen Lieferungen, die einmalig sind und nicht geändert werden dürfen (z.B. heute LF))
01:	freier Wechsel

Die Ausprägungen werden auf ja/ nein harmonisiert (00 -> nein, 01 -> ja, leer -> NICHT_GEL)

aus DIMAPARPPLAN.POKEY

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT
 
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr für Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Präfixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus  DIMAPARPLAN.INSOBJECT

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DIMAPARPLAN.CLIENT 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Prüfziffer.

aus  DIMAPARPLAN.PARTNER

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist der Zeitpunkt, ab dem der Zahlplan gültig ist 

aus DIMAPARPPLAN.PP_FROM + PP_FROM_TIME

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_InExkassoObjektArt IS
'... es werden drei Arten von In-/Exkassoobjekten unterschieden.
Dieses Attribut findet sich nicht(!) in der Quelle wieder. Inkassoobjekte mit dem Präfix ICL sind von der Art Schaden, Präfix LL sind LebenLeistung alle anderen sind Vertragsnummern, wobei der 3-stellige Suffix entfällt.

Beitrag
Schaden
LebenLeistung

aus DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_Status_Abgabe_Inkbuero_Btr_B IS
'... gibt Informationen über die Abgabe von Forderungen zu diesem Inkassoobjekt an ein Inkassobüro (intern oder extern), falls KT05_InExkassoObjekt_InEx_nn_HBS.C_InExkassoObjektArt = Beitrag,
sonst Dummy.

aus DIMAIOBPAR.Z_STATUS_GM, falls Präfix von DIMAIOBPAR.INSOBJECT <> ''ICL'' und ...<> ''LL'', sonst Dummy

Werte von DIMAIOBPAR.Z_STATUS_GM:
		Kein Status GM
02	Niederschlagung
03	Abgabe an externes Inkasso
04	Abgabe zum GM
05	GM erfolglos abgeschlossen
06	GM erfolgreich abgeschlossen
07	Abgabe aus GM an Creditreform
08	Abgabe aus GM an DID treuhänderisch
09	Abtretung aus GM an DID
99	GM abgeschlossen (aus Migration)

Bea: In der Quelle wird diese Information auf der Ebene InkassoObjekt nur für Beitragsinkasso geführt (für Regressforderungen s. BelegPosition).

Bea: Dieses Attribut dient nur zur Dokumentation des Quell-Wertes und ist daher nicht harmonisiert. 

Datenschutz $B';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.C_Ueberwachungsvariante IS
'... gibt je In-/ExkassoObjekt die Variante für die Überwachung an.

aus DIMAIOBPAR.MVARI

z.B.
Versicherungsvertrag Standard
Versicherungsvertrag verlängert

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.FK_KT05_InExkassoObjekt IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

aus DIMAIOBJ.ERDAT, wenn DIMAIOBJ.AEDAT=leer, sonst DIMAIOBJ.AEDAT
 
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

aus DIMAIOBJ.AEDAT des nächste Satzes

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.InExkassoObjektNr_A IS
'entspricht dem Bezeichner des "Versicherungsobjekts" aus FS-CD, ohne lfdNr für Versicherungskontozuordnung bei Beitrags-VOs.
Auf Wunsch von Herrn Beblik wurden die Präfixe "ICL" und "LL" ebenfalls entfernt, so dass InExkassoObjektNr_A entweder der Versicherungsscheinnummer inkl. PZ und ZNR oder der Schadennummer entspricht.

aus DIMAIOBPAR.INSOBJECT

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DIMAIOBPAR.CLIENT 

Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, ohne Prüfziffer.

aus DIMAIOBPAR.PARTNER

Datenschutz $A1';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_InExkassoObj_InEx_03_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.FK_KT05_WE01_InExO_Vertrag IS
'
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT05_WE01_InExOVer_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'enthält den Hashkey zum Inhalt des Feldes trim( substr( INSOBJECT, 1, 17)) aus dem Datensatz der Quelle, der zur Erstellung dieses Link-Satzes geführt hat.
Wird als rein technisches Feld für Zwecke der Historisierung verwendet und ist kein Fremdschlüssel im Sinne dieses Modells.
Der Link könnte ohne diese Information bei BZ-Wechsel nicht abgeschlüsselt werden.

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

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegNr_A IS
'Belegnummer wie im Business-Key

aus ubstr( DFKKLOCKS(H).LOOBJ1, 1, 12)	 (Stellen für OPBEL)

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegPositionNr IS
'... ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus  substr( DFKKLOCKS(H).LOOBJ1, 16, 4)    (Stellen für OPUPK)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.BelegTeilPosition_Lfd IS
'... ist die laufende Nummer der Teilposition pro Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus  substr( DFKKLOCKS.LOOBJ1, 20, 3)    (Stellen für OPUPZ)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.C_Prozess_gesperrt IS
'Prozess, für den die Sperre gilt (Könnte durch Link ersetzt werden (-> Geschäftsprozesse)), der also für dieses Geschäftsobjekt nicht durchgeführt wird. 

aus DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=02

1 Mahnen -> Überwachungstätigkeiten sind gesperrt 
4 Verzinsen -> Verzinsungstätigkeiten sind gesperrt (gibt es zur Zeit, 03.08.2017, nicht)
9 Buchen / Ausgleichen -> Buchungs- und Ausgleichstätigkeiten sind gesperrt.
10 Zahlen -> Zahlungstätigkeiten sind gesperrt.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.C_Sperrgrund_B IS
'... gibt den Grund der Sperre an. Die Ausprägungen entsprechen den Werten, die an anderen Stellen für (prozess-spezifische) Sperren vorgesehen sind. Daher ist der jeweilige Wert nur zusammen mit dem Inhalt von "Prozess" eindeutig zu interpretieren.

aus DFKKLOCKS(H).LOCKR und zusätzlich aus  DFKKLOCKS(H).PROID, hier für DFKKLOCKS(H).LOTYP=02

Mahnsperrgünde (1 Mahnen): 

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D Akonto-Guthaben vorhanden
I Zahlung angekündigt
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
O Überwachungsstatus
P RL-Vorweg.Auszahlung
S Neue Suffixnummer
V Tarif FPT
Z Sonstiges
 
Zahlsperrgründe (10 Zahlen):

A Vorgang in Bearbeitung
B Beschwerde
C Partner verstorben
D RL 901 IBAN fehlerhaft/902 Kto.aufgelöst
E Gerichtliches Mahnverfahren (nur Exk)
F Vermögenswirksame LV (nur Exkasso)
G Verrechn. m. künftig. Forder. (nur Exk)
H Abweichender Zahlungsempfänger (nur Exk)
I Zahlung angekündigt (nur Inkasso)
J Zahlungsschwierigkeiten (nur Inkasso)
K RL 909 kein gült. Mand./912 Umstritt. M
L Abgegeben an GM / ext. Inkassobüro
M Stundung Leben
N Rückläufer "Vorweggenommene Auszahlung"
P geänderte Bankverbindung
Q Exkassorückläufer Leben Leistung
V FPT Zulage
Z Sonstiges

aus DFKKLOCKS.Grund,  DFKKLOCKS.Prozess

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKLOCKS(H).CLIENT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.Sperre_Id_A IS
'in der Quelle existiert kein BK für die Sperren, daher wird hier zur eindeutigen Schlüsselung ein Diskriminator 
aus dem ursprünglichen, also ersten Zustand der Sperre erzeugt:

DFKKLOCKS.PROID || ''~''|| 
DFKKLOCKS.LOCKR || ''~''||
DFKKLOCKS.UNAME || ''~''||
DFKKLOCKS.ADATUM || ''~''||
DFKKLOCKS.AZEIT

(aus DFKKLOCKSH analog)

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... gibt das fachliche Gültigkeits-Beginndatum an, das mit dem ersten Zustand der Sperre in FS-CD eingegeben worden ist

DFKKLOCKS.FDATE bzw. DFKKLOCKSH.FDATE des ältesten Zustands der Sperre.
Bea: Unterbrechungen in der Historie bedeuten den Beginn einer neuen Sperre.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.geaendert_am IS
'... gibt das Datum  an, an dem der Zustand der Sperre in FS-CD durch eine Änderung beendet worden ist

aus DFKKLOCKSH.LDATUM || DFKKLOCKSH.LZEIT (für historische Zustände aus DFKKLOCKSH) 
bzw. 31.12.9999 23:59:59 (für aktuelle Zustände aus DFKKLOCKS)
Bea: DFKKLOCKS enthält nur die gültigen Zustände der Sperre, daher ist das Enddatum nur in der Historientabelle DFKKLOCKSH enthalten. 

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.geaendert_von_A IS
'... gibt den Arbeitsanteil des ändernden Bearbeiters der Sperre an.

aus DFKKLOCKS(H).LUNAME

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.gueltig_bis IS
'... gibt das Datum an, bis zu dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).TDATE

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosSperr_InEx_01_WBM.gueltig_von IS
'... gibt das Datum an, ab dem die Sperre gültig sein soll (bezogen auf das fachliche Datum eines Prozesses, z.B. Valutadatum).

aus DFKKLOCKS(H).FDATE

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_bis IS
'... ergibt zusammen mit Abrechnungszeit_von den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig

aus DFKKOP.ABRZO

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_von IS
'... ergibt zusammen mit Abrechnungszeit_bis den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig

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
'... ist der Betrag in der im Beleg angegebenen Währung

aus DFKKOP.BETRW

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_RD_vertragsfuehrend IS
'... repräsentiert die RD, in der die Bearbeitung stattfindet. Diese Information ist redundant im Vertrag/Schaden enthalten

aus DFKKOP.GSBER

Datenschutz $-
';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_Status_Abgabe_Inkbuero_Sch_B IS
'... gibt Informationen über die Abgabe der Forderungen zu dieser Belegposition an ein Inkassobüro (intern oder extern), 
falls KT06_Belegposition_KT01_InEx_nn_WBS->KT06_Belegposition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InExkassoObjektArt = Schaden,
sonst Dummy.

aus DFKKOP.Z_STATUS_GM_DOC, falls Präfix von DFKKOP.VTREF = ''ICL'', sonst Dummy

Werte von DFKKOP.Z_STATUS_GM_DOC:
		kein Status GM
20	Abgabe zum Schaden-GM
21	Schaden-GM erfolglos abgeschlossen
22	Schaden-GM erfolgreich abgeschlossen
23	Abgabe aus Schaden-GM an Creditreform
24	Abgabe aus Schaden-GM an Krauthoff
30	Abgabe an Inkassobüro für Rechtsschutz
31	Abgabe an Regressbüro für Rechtsschutz

In der Quelle wird diese Information auf der Ebene Belegposition nur für Schaden geführt (für Beitragsforderungen siehe InExkassoObjekt).

Bea: Dieses Attribut dient nur zur Dokumentation des Quell-Wertes und ist daher nicht harmonisiert. 

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_Waehrung IS
'... ist die Währung zu ''Betrag''

aus DFKKOP.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_hat_Ausloeserbeleg IS
'... das Kennzeichen, ob die Belegposition einen Auslöserbeleg hat.

aus DFKKOP.ASBLG

Werte: ja/nein
= ja, wenn ASBLG gefüllt
= nein, sonst

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.C_hat_Stellvertreterbeleg IS
'... das Kennzeichen, ob die Belegposition einen Stellvertreterbeleg hat.

aus DFKKOP.ABWBL

Werte: ja/nein
= ja, wenn ABWBL gefüllt
= nein, sonst

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)


Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Ausnahme: Eine Belegposition KT06, auf die ein Auslöser-Link verweist, wird durch die Beendigung der Ausgleichs-Links auf den eigenen Beleg fachlich beendet. Ein neuer Ausgleich-Link auf einen anderen Beleg wird dabei angelegt, jedoch zum Anlage-Datum sofort fachlich beendet.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKOP.MANDT (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.Nettofaelligkeit IS
'... ist für Forderungen und Verbindlichkeiten das Datum, ab dem Zahlungspflicht (für den Kunden oder die DEVK) besteht. Für Belege aus LSV-Läufen wird das Datum aus der DEVK-eigenen Tabelle entnommen, für Belege aus Exkasso-Läufen berechnet sich das Datum anhand der Regeln aus dem Customizing (u.a. abhängig vom Zahlweg).

aus DFKKOP.FAEDN

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_03_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition über den Restbetrag. Daraus folgt meistens, dass eine Belegposition  höchstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition (bzw. eine Teilposition mit Teilpositionsnummer=0)), die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verhält sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten alsomit 0 besetzt werden,  falls sie nicht mit "0" geliefert werden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.SK_KT06_KT08 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_KT08_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist der offene Betrag der (Teil-) Position, also der abgegebene Betrag in C_Waehrung des zugehörigen Belegs.

aus DFKKCOLL(H).BETRW

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Abgabegrund_B IS
'... ist die Bezeichnung der Aktivität, aufgrund derer die Abgabe erfolgt ist, z.B. wenn die Abgabe automatisch aufgrund des hinterlegten Überwachungsverfahrens ausgelöst wird.

-- 01 Erfolgloses Mahnverfahren
02 Ausbuchung
-- 03 Massenlauf Ausbuchung
04 Mahnaktivität
-- 05 Massenlauf: Forderungen zur Abgabe an Inkassobüro freigegeben
06 Forderungen zur Abgabe an Inkassobüro freigegeben

--*) nicht im Profilierungsbestand beobachtet

aus DFKKCOLL(H).AGGRD

Datenschutz $B';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Abgabestatus IS
'... ist der Status der abgegebenen Forderung.

aus DFKKCOLL(H).AGSTA

01 Forderung zur Abgabe freigegeben
02 Forderung abgegeben
03 Forderung von Inkassobüro bezahlt
04 Forderung von Inkassobüro teilbezahlt
05 Abgabe der Forderung storniert
06 Abgabe der Forderung  erfolglos
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar
08 Forderung teilbezahlt und ein Teil nicht inkassierbar
09 Forderung zurückgerufen
10 Forderung direkt vom Kunden bezahlt
11 Forderung direkt vom Kunden teilbezahlt
12 Forderung ausgeglichen
13 Forderung teilausgeglichen
14 Forderung freigegeben und ein Teil nicht inkassierbar
15 Forderung abgegeben und ein Teil nicht inkassierbar
16 Forderung zurückgerufen und ein Teil nicht inkassierbar

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.C_Waehrung IS
'... gibt die Währung für den Inkassobetrag an (EUR)

aus DFKKCOLL(H).WAERS

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.FK_KT08_InkassoPosition IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.InkassoPosHistorieLfdNr IS
'... ist die laufende Nummer der Variante der Inkassoposition in der Historie. Wird von FS-CD als Schlüssel verwendet.

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
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT08_InkassoPos_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.FK_KT08_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT08_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.FK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKCOLLH.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.POB_A IS
'Partner-Ordnungsbegriff des Zahlungspflichtigen, ohne Prüfziffer.

aus DFKKOP.XBLNR 2. bis 9. Stelle (ohne führende 0 und ohne PZ)

Datenschutz $A1';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierung_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet werden sollen bzw. dürfen.

Vertragskonto aus dem Business-Key

aus DFKKOP.VKONT

Datenschutz $A1';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.SK_KT09_Inkassierungsmassnahme IS
'
Datenschutz $-';

COMMENT ON COLUMN KT09_Inkassierungsmassnahme_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'… ist das Verrechnungskonto für diesen Zahlstapel.

aus DFKKZK.BVRKO

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Belegdatum_vorgesehen IS
'... ist das für die Belege zu den Positionen dieses Zahlungsstapels vorgesehene Belegdatum.
Die tatsächlichen Einträge im Attribut Belegdatum können davon abweichen, insbesondere wenn für die Zahlung eine Klärung (oder gar Teilklärung) erforderlich ist und sich die Verarbeitung dadurch verzögert.

aus DFKKZK.BLDAT

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Buchungsdatum_vorgesehen IS
'... ist das für die Belege zu den Positionen dieses Zahlungsstapels vorgesehene Buchungsdatum.
Die tatsächlichen Einträge im Attribut Buchungsdatum können davon abweichen, insbesondere wenn für die Zahlung eine Klärung (oder gar Teilklärung) erforderlich ist und sich die Verarbeitung dadurch verzögert.

aus DFKKZK.BUDAT

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.C_Belegart IS
'... gibt an, welche Art von Belegen aus dem Zahlstapel erstellt werden.

aus DFKKZK.BLART

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

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.C_Waehrung IS
'... gibt die Währung an, die für die Beträge in allen Positionen dieses Zahlstapels gilt.

aus DFKKZK.WAERS

Datenschutz $-?';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.FK_KT12_Zahlungsstapel IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKZK.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT12_Zahlstapel_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'Datum der Geldeingänge zu diesem Zahlungsstapel beim Versicherungsunternehmen

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist für die Bank, über die die Zahlung erfolgt ist der "Bank Indentifier Code" oder "SWIFT-Code" zur Identifikation von Geschäftsstellen im Zahlungsverkehr (gemäß Norm ISO 9362).

aus DFKKZP.SWIFT

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Bankkontonummer_A IS
'... ist die Kontonummer des Kreditinstituts über das die Zahlung erfolgt ist.

aus DFKKZP.BANKN

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Bankleitzahl_A IS
'... ist die Identifikation eines Kreditinstituts über das die Zahlung erfolgt ist, für deutsche Kreditinstitute ist dies die Bankleitzahl (=BLZ).

aus DFKKZP.BANKL

Datenschutz $A2?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Bank_Land IS
'... ist das Land des Sitzes der Bank, über die die ´Zahlung erfolgt ist. Entspricht dem Länderkürzel im BIC und in der IBAN.

aus DFKKZP.BANKS

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Dauerauftrag IS
'... enthält, ob diese Zahlung im Rahmen eines Dauerauftrags geleistet worden ist.

aus DFKKZP.XDAUB 

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Umbuchung_Kurzkontierung IS
'Kurzkontierung für Umbuchungen
Wird von der (Guthaben)Klärung aus benutzt, um einen Betrag auf ein Hauptbuchkonto umzubuchen. Das Guthaben im FSCD ist anschl. nicht mehr vorhanden, da der Beleg aus der Kurzkontierung dieses Guthaben ausgleicht.

aus DFKKZP.KUKON 

kurz  				Text              				 		Sachkto BuKr

ADM 	Vergütung Scheck-Schaden		201510 1000
BAHN Bahnkosten SB-Schaden       		784108 3000
BANK	Umbuchung für andere Fachbereiche (Bank) 781000 3000
BEIT		Umbuchung an Beitragseinzug	781051 3000
DVAG	Maklervergütung Schaden G  	784230 2000
DVAV	Maklervergütung Schaden V		784230 1000
FLUG	Flugkosten SB-Schaden  		        784113 1000
GMV	Umbuchung an OrgaMahn 		781408 2000
HYPO	Umbuchung an Hypotheken		782071 1000
KFZ  	Umbuchung an KFZ            			781390 1000
KKBU 	Krankenkassenbeitrag umbuchen (LL)    202871 3000
KRAN	Leistungsrückzahlung Kranken	782016 6000
KSCH 	Umbuchung an Schaden (Kfz)	781061 1000
RKOS 	Recherchekosten             				683000 6000
RKVJ 	Recherchekosten Vorjahr         	683001 6000
RÜ-G	 Umbuchung an Rückversicherung G     784119 2000
RÜ-V 	Umbuchung an Rückversicherung V   	  784119 1000
ÜWER 	Übertragungswert            				 438132 6000
VERR	Verrechnung mit anderen Fachbereichen   781001 3000

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.C_Zahlweg_Rueckzahlung IS
'... legt den Zahlweg fest, über den eine eventuelle Rückzahlung erfolgen soll.

aus DFKKZP.REPYM 

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.FK_KT13_ZahlstapelPos IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
s. "Gueltig_Ab"

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

s. "Gueltig_Bis" und ""vorzeitigBeenden"

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.IBAN_AB IS
'... ist die internationale Bankkontonummer (="International Bank Account Number") über die die Zahlung erfolgt ist. Die Notation wird durch die ISO-Norm ISO 13616-1:2007 Teil 1 beschrieben.

aus DFKKZP.IBAN

Datenschutz $A1B?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus DFKKZP.MANDT

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... ist ein Text zur Akontobuchung, Rückzahlung oder Umbuchung

aus 	DFKKZP.TXTRZ

Datenschutz $AB';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Verwendungszweck_AB IS
'... dokumentiert den Verwendungszweck der Zahlung.

aus 	DFKKZP.TEXTVW

Datenschutz $A1B?';

COMMENT ON COLUMN KT13_ZahlstapelPos_InEx_01_WBS.Zahlbetrag IS
'.... gibt den Betrag an, über den die Zahlung lautet. Es ist der gesamte eingezahlte Betrag, unabhängig von seiner Verwendung.
Die Währung für den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HS.C_Waehrung

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
'.... gibt die Summe der Beträge an, die vom Zahlbetrag bereits bestehenden Forderungen zugeordnet sind. Meistens (z.B. bei LSV) ist dies der gesamte Zahlbetrag, es kann sich aber auch um die Summe geklärter Teilbeträge handeln.
Die Währung für den Betrag steht in  in KT12_Zahlstapel_InEx_nn_HS.C_Waehrung.

aus DFKKZP.BETRK

Bea: Dieser Betrag läßt sich aus den verlinkten Belegen (und ihren Rücknahmen) berechnen. Da diese Berechnung aber beliebig kompliziert werden kann, wid das Attribut hier redundant festgehalten.

Datenschutz $-?';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.FK_KT12_Zahlungsstapel IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.SK_KT13_ZahlstapelPos IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT13_ZahlstapelPos_KT12_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.FK_PA01_PA02_KT01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT01_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.FK_PA01_PA02_KT08 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT08_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.FK_PA01_PA02_KT09 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_KT09_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

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
'aus FS-CD / DFKKKO (eingeschränkt für LSV-Auswertungen)';

COMMENT ON TABLE KT01_KT08_BBL IS
'Zuordnung von Beleg zu Inkassoposition

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT01_BH

In der Quelle ist die Klammer über den "Inkassopositionen" die Belegnummer. 

Business-Key für FS-CD:
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

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer über den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsmaßnahme zugeordnet.
Zur Beachtung: Es kann zu einem Beleg (hintereinander) mehrere Inkassierungsmaßnahmen geben: Nach Rücknahme kann mit einem neuen Abgabedatum eine neue Inkassierungsmaßnahme gestartet werden. 

Business-Key für FS-CD:
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

Bea: Dieser Link ist dann und nur dann redundant zu KT09_BH->(*)KT08_KT09_BL->KT08_BW->KT06_KT08_BL->KT06_BW->KT01_BH, falls es zur Inkassierungsmaßnahme mindestens eine gültige Inkassoposition gibt.

Bea: Selbst wenn alle Inkassopositionen zur Inkassomaßnahme zurückgenommen sind, bleibt dieser Link bestehen.';

COMMENT ON TABLE KT01_KT12_ZahlungsBeleg_BBL IS
'Zuordnung vom Zahlungsbeleg zu dem Zahlungsstapel, aus dem dieser Beleg entstanden ist.

Redundant zu KT01_Beleg_BH->KT01_KT13_Zahlstap_ausglBel_BL->KT13_ZahlstapelPos_KT12_BW->KT12_Zahlungsstapel_BH

Business-Key für FS-CD:
1. gefüllt aus DFKKZP (falls DFKKZP.KLAEH leer, d.h. nicht aus Klärung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.OPBEL

2. gefüllt aus DFKKZP (falls DFKKZP.KLAEB gefüllt, d.h. aus Totalklärung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.KLAEB

3. gefüllt aus DFKKZPT (falls RUEZU=leer, d.h. aus Teilklärung ohne Rücknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.KLAEB

4. gefüllt aus DFKKZPT (falls RUEZU gefüllt, d.h. aus Rücknahme einer Klärung, zur Abschlüsselung am Erfasssung_Gueltig_Ende = CPU-Datum aus DFKKKO der Rücknahme):
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

Business-Key für FS-CD:
1. gefüllt aus DFKKZP (falls DFKKZP.KLAEH leer, d.h. nicht aus Klärung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
			Stapelposition_LFD		DFKKZP.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.OPBEL

2. gefüllt aus DFKKZP (falls DFKKZP.KLAEB gefüllt, d.h. aus Totalklärung):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZP.MANDT
			Stapelnummer				DFKKZP.KEYZ1
			Stapelposition_LFD		DFKKZP.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZP.MANDT
			Belegnummer				DFKKZP.KLAEB

3. gefüllt aus DFKKZPT (falls RUEZU=leer, d.h. aus Teilklärung ohne Rücknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
			Stapelposition_LFD		DFKKZPT.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.KLAEB

4. gefüllt aus DFKKZPT (falls RUEZU gefüllt, d.h. aus Rücknahme einer Klärung, zur Abschlüsselung am Erfasssung_Gueltig_Ende = CPU-Datum aus DFKKKO der Rücknahme):
KT13:	Bildungsregel				''KONTO''
			Mandant						DFKKZPT.MANDT
			Stapelnummer				DFKKZPT.KEYZ1
			Stapelposition_LFD		DFKKZPT.POSZA
KT01:	Bildungsregel				''SHUKR''
			Mandant						DFKKZPT.MANDT
			Belegnummer				DFKKZPT.RUEZU

';

COMMENT ON TABLE KT02_KT04_BL IS
'Beziehung zwischen Vertragskonto und Überwachungsmassnahme in Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf'' FK_KT02_Vertragskonto
(Dieser Link ist für FS-CD redundant, weil über BelegPosition, Vertragskonto abgebildet.)

Business Key für  FS-CD (nicht-K):

KT02: 	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			VertragskontoNr						FKKMAKO.VKONT
KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 führenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR

Business Key für K-Inkasso:
KT02:	Bildungsregel					''KONTO''
			Mandant							konstant ''100''
			Vertragskontonummer	PA01_228.EM_ALT (Die Vertragskontonummer ist in Paris POB und PDB_INR eineindeutig zugeordnet .)
KT04:	Bildungsregel					''K''
			VNR										muß aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
			Mahnverfahren_von			das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".';

COMMENT ON TABLE KT02_KT08_BBL IS
'Zuordnung von der Inkassoposition zum Vertragskonto

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT02_KT06_BL->KT02_BH

Business-Key für FS-CD:
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

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer über den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsmaßnahme zugeordnet.

Business-Key für FS-CD:
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

Bea: Dieser Link ist dann und nur dann redundant zu KT09_BH->(*)KT08_KT09_BL->KT08_BW->KT06_KT08_BL->KT06_BW->KT02_KT06_BL->KT02_BH, falls es zur Inkassierungsmaßnahme mindestens eine gültige Inkassoposition gibt.

Bea: Selbst wenn alle Inkassopositionen zur Inkassomaßnahme zurückgenommen sind, bleibt dieser Link bestehen.';

COMMENT ON TABLE KT02_VKSperre_InEx_01_HBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH für Typ = ''04'' (Vertragskonto; bei DEVK nicht gebräuchlich) und ''06'' (partnerspezifische Kontodaten)';

COMMENT ON TABLE KT04_KT05_BL IS
'Beziehung zwischen In-/Exkassoobjekt und Überwachungsmassnahme in Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf'' FK_KT05_InExkassoObjekt 
(Dieser Link ist für FS-CD redundant, weil über BelegPosition, Beleg, Zahlplanposition, InkassoObjekt abgebildet.)

Business Key für  FS-CD (nicht-K):

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 führenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR
KT05: 	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF
			POB												FKKMAKO.GPART

Business Key für K-Inkasso:
KT04:	Bildungsregel					''K''
			VNR										muß aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
			Mahnverfahren_von			das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".
KT05:	Mandant							''100''
			VNR 									Versicherungsscheinnummer
   	        POB										Partnerordnungsbegriff
	
Für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".';

COMMENT ON TABLE KT04_KT06_BL IS
'Beziehung zwischen BelegPosition und Überwachungsmassnahme im Sinne von

FK_KT04_Ueberwachung ''bezieht sich auf BelegPosition'' FK_KT06_BelegPosition

Business Keys:
für FS-CD:

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 führenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR
KT06:	Bildungsregel							''SHUKR''
			Mandant									FKKMAZE.MANDT
			BelegNr										FKKMAZE.OPBEL
			WiederholungsPosition_Lfd	FKKMAZE.OPUPW		(z.Zt. immer 0)
			BelegPosition_Lfd						FKKMAZE.OPUPK
			BelegTeilPosition_Lfd				FKKMAZE.OPUPZ

(MVLNR ist nicht in FKKMAZE enthalten, daher muß zuerst der passende Eintrag in FKKMAKO ermittelt werden) 

für K-Inkasso:
	KT04:	Bildungsregel							''K''
				Versicherungsscheinnummer	KFZA_BEITRAG.VTR_VNR
				Mahnverfahren_von
	KT06:	Versicherungsscheinnummer	KFZA_BEITRAG.VTR_VNR
				Satzart											KFZA_BEITRAG.VTR_SA
				masch. Bearbeitungsdatum	KFZA_BEITRAG.VTR_MBD
				Nettofälligkeitsdatum				KFZA_BEITRAG.VTR_FAELLIGDAT
				Deckungsart								KFZA_BEITRAG.T_DA

Für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
Das "Mahnverfahren_von" ist das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

KT06: ?';

COMMENT ON TABLE KT04_KT06_InEx_01_LBS IS
'aus FKKMAZE';

COMMENT ON TABLE KT04_Ueberwachung_BH IS
'... ist eine Massnahme zur Erhöhung der Chancen, dass der Saldo eines der In-/Exkassobjekts ausgeglichen wird. 
Bea: Die Massnahme besteht dabei oft aus mehreren Überwachungsstufen, die bei Fortbestehen des Rückstands aufeinander folgen, z.B. Zahlungserinnerung, Mahnung, vorgerichtliches Mahnverfahren, ....

für nicht-K:
aus FKKMAKO

Der Business Key der Überwachungsmaßnahme aus FS-CD setzt sich aus dem Vertragskonto, dem In-/Exkasso-Partner (=Geschäftspartner in FS-CD) und der laufenden Nummer der Überwachungsmaßnahmen ("Mahnverfahren") für dieses Vertragskonto zusammen.

KT04:	Bildungsregel							''KONTO''
			Mandant									FKKMAKO.MANDT
			InExkassoObjektNr					FKKMAKO.VTREF							1. bis 17. Stelle, ohne Blanks (entspr. VNR mit 6 führenden ''0'' und PZ und ZNR ohne Suffix oder ''ICL'' || SNR oder ''LL'' || VNR mit PZ und ZNR)
			POB												FKKMAKO.GPART		2.-9. Stelle
			Vertragskontonummer			FKKMAKO.VKONT
			UeberwachungLFD					FKKMAKO.MVLNR

Bea: Durch Simulationsläufe erzeugte Überwachungen werden nicht ins DWH eingespielt (erkennbar an leerem Druckdatum)!

Der o.a. BK ist nicht ausreichend, um alle Einträge aus der FKKMAKO zu schlüsseln. daher ist im (Multi Active) Satellit ein weiterer Schlüssel notwendig. Dazu dient der Buchungskreis STDBK aus FKKMAKO. 

für K-Inkasso:
Die Überwachung ist dem Vertrag ohne Historie und ohne Unterscheidung einzelner Mahnverfahren zugeordnet. Für Zwecke des DWH wird der Business-Key daher aus der Versicherungsscheinnummer und dem Beginndatum der Überwachung gebildet:
	Bildungsregel											''K''
	Versicherungsscheinnummer	VNR			muß aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
	Mahnverfahren_von									das Konten-Bewegungs-Datum bei Auftreten der ersten Konten-Bewegungs-Art mit erstem Zeichen "M".

Die Überwachung endet, wenn der Kontostand (P6061) = 0,00 ist und C_AbschlussGerichtlMahn nicht "offen" ist (s. dort).
Bea: bei externem Mahnverfahren wird die Forderung im K-Inkasso ausgebucht, ohne dass die Überwachung als beendet zu betrachten wäre.


';

COMMENT ON TABLE KT04_Ueberwachung_InEx_01_HBM IS
'Die Informationen in dieser Entität beruhen auf der Tabelle FKKMAKO aus FS-CD.';

COMMENT ON TABLE KT05_ER01_InExOSch_InEx_01_LBS IS
'aus FKKMAKO, jeweil aus den Mahngebühr-Attributen';

COMMENT ON TABLE KT05_IEOSperre_InEx_01_HBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH für Typ = ''22'' (Partnerdaten zum Versicherungsobjekt)';

COMMENT ON TABLE KT05_InExkassoObj_InEx_02_HBS IS
'aus DIMAPARPLAN
';

COMMENT ON TABLE KT05_InExkassoObj_InEx_03_HBS IS
'aus DIMAIOBPAR 
';

COMMENT ON TABLE KT05_KT08_BBL IS
'Zuordnung von der Inkassoposition zum InExkassoObjekt

Redundant zu KT08_BH->KT06_KT08_BL->KT06_BW->KT05_KT06_BL->KT05_BH

In der Quelle existiert der Begriff der "Inkassierungsmassnahme" nicht, die Klammer über den "Inkassopositionen" ist die Belegnummer. Diese Belegnummer wird hier der Inkassierungsmaßnahme zugeordnet.

Business-Key für FS-CD:
KT05:	Bildungsregel					''KONTO''
			Mandant							DFKKCOLLH.MANDT
			InExkassoObjektNr			DFKKOP.VTREF ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten"), falls kein ICL, LL
															= Versicherungsscheinnummer incl. PZ und ZNR
					oder									Nummer einer Leistung mit Präfix ''ICL'' (für Sachschäden)
					oder									Nummer einer Leistung mit Präfix ''LL'' (für Leben-Leistung).
			POB										DFKKOP.GPART			(ohne erste und letzte Stelle))
KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS';

COMMENT ON TABLE KT05_WE01_InExOVer_InEx_01_LBS IS
'aus FKKMAKO, jeweil aus den Mahngebühr-Attributen';

COMMENT ON TABLE KT05_WE01_InExO_Vertrag_BL IS
'Link zwischen InExkassoObjekt und Vertrag in Sinne von

FK_KT05_InExkassoObjekt ''repräsentiert Vertrag'' FK_WE01_Vertrag

Business Key
für FS-CD (nur für INSOBJECT ohne Präfix ''IPC'' oder ''LL'' ):

KT05:	Bildungsregel								''KONTO''
			Mandant										DIMAIOBPAR.CLIENT
			InExkassoObjektNr						DIMAIOBPAR.INSOBJECT	ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten")
																												 (Versicherungsscheinnummer inkl. PZ und ZNR) 
			POB													DIAIOBPAR.PARTNER
WE01:	Mandant										''100'' (Bildungsregel wird weggelassen, damit es mit WE_Willenserklaerung zusammenpasst)
			Versicherungsscheinnummer		DIMAIOBPAR.INSOBJECT 	InkassoObjektNr ohne dreistellige lfdNr  (für 1 bis n historische Zuordnungen zu "Versicherungskonten") 	, für Sach ohne ZNR

für K-Inkasso:
KT05:	Bildungsregel								''KONTO''
			Mandant										''100''
			VNR (Versicherungsscheinnummer)
			PNR
WE01:	Mandant										''100''
			VNR (Versicherungsscheinnummer)

(Für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.)

für lifefactory:
KT05:	Mandant										konstant														(immer ''100'')
			Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)
			POB													~.PartnerID
																	BEA: Anträge ausfiltern!
WE01:	Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	(besteht aus VNR, PZ, ZNR, 11-stellig)


';

COMMENT ON TABLE KT06_BelegPosSperr_InEx_01_WBM IS
'aus FS-CD / DFKKLOCKS bzw. DFKKLOCKSH für LOTYP = ''02'' (Belegposition)

Bea: DFKKLOCKSH enthält nur die nicht mehr gültigen Zustände der Sperre';

COMMENT ON TABLE KT06_KT08_BL IS
'Beziehung zwischen Belegposition bzw. Teilposition und Inkassoposition.

Zu jeder Inkassierungsmaßnahme gibt es 1..n Inkassopositionen. Eine Inkassoposition bezieht sich auf genau eine Belegposition bzw. Teilposition.

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

Inkassopositionen werden erst durch die Abgabe an Inkasso gem. Abgabestatus (AGSTA) zu einer Inkassierungsmaßnahme, d.h es gibt Inkassopositionen, die noch zu keiner Inkassierungsmaßnahme gehören (AGSTA in (01, 14, NULL))

aus DFKKCOLLH
Business Keys aus FS-CD:

KT08:	Bildungsregel			''KONTO''
			Mandant					DFKKCOLLH.MANDT
			Belegnummer			DFKKCOLLH.OPBEL
			Inkassoposition_lfd	DFKKCOLLH.INKPS

In FS-CD wird für jede offene Belegposition und bei Existenz von Teilpositionen für jede offene Teilposition eine separate "Übergabe an Inkasso" vorgesehen. Einer Belegposition bzw. Teilposition entspricht eine Inkassoposition, die mit einer laufenden Nummer innerhalb des Belegs versehen wird.
';

COMMENT ON TABLE KT08_KT09_BL IS
'Zu jeder Inkassomaßnahme gibt es 0..n Inkassopositionen. Eine Inkassoposition bezieht sich auf genau eine Belegposition/ Teilposition.
Eine Verbindung existiert nur für Inkassopositionen mit Abgabestatus AGSTA nicht in (''01'', ''14'', NULL). Bei Abgabestatus AGSTA in (''05'', ''06'', ''09'', ''16'') wird die Verbindung wegen Rücknahme der Inkassoposition beendet.

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

In FS-CD wird für jede offene Belegposition und bei Existenz von Teilpositionen für jede offene Teilposition eine separate "Übergabe an Inkasso" vorgesehen. Einer Belegposition bzw. Teilposition entspricht eine Inkassoposition, die mit einer laufenden Nummer innerhalb des Belegs versehen wird.
';

COMMENT ON TABLE KT09_Inkassierungsmassnahme_BH IS
'In der Quelle existiert der Begriff der "Inkassierungsmaßnahme" nicht, die Klammer über den "Inkassopositionen" ist dort die Belegnummer.

Zu einer Inkassierungsmaßnahme sollen nur solche Inkassopositionen gehören, die den Abgabestatus >= 02 und <> 14 (abgegeben an Inkasso) haben.

Für Beitrag:
Fachlich ist die Inkassierungsmaßnahme dadurch definiert, dass Inkassopositionen (siehe dort)
- demselben originär Zahlungspflichtigen
- demselben Vertragskonto und
- demselben Abgabedatum an Inkasso
zuzuordnen sind.
Diesem fachlichen Verständnis folgend geht die Belegnummer nicht in den Business-Key ein.

Für Schaden:
Die fachliche Betrachtung für Schaden stützt sich auf Belege.
Das Vertragskonto an der Belegposition ist ein Vertragskonto des VN mit Vertragskontotyp "C2".
Nach Abgabe ist das Inkassobüro INKGP immer 0568217349 (Schaden-Orgamahn).

Die hier definierte "Inkassierungsmaßnahme" führt nur dann zu Konflikten mit der im Schaden vorhandenen Beleg-Sicht, wenn zwei Belege zu demselben Schaden-Vertragskonto und demselben Schuldner gleichzeitig an Inkasso übergeben werden. Technisch ist das möglich, wenn auch fachlich nicht sinnvoll. Dabei ist zu beachten, dass die Übergabe (anders als die Freigabe) einmal pro Woche automatisch zu demselben Zeitpunkt durchgeführt wird.

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

für K-Inkasso: nicht vorhanden';

COMMENT ON TABLE KT13_ZahlstapelPos_InEx_01_WBS IS
'aus  FS-CD / DFKKZP';

COMMENT ON TABLE KT13_ZahlstapelPos_KT12_BW IS
'... enthält die Positionen in einem Zahlstapel.

Business Key der Zahlungsstapelposition aus FS-CD

KT13:	Bildungsregel							''KONTO''
			Mandant									DFKKZP.MANDT
			Stapelnummer							DFKKZP.KEYZ1
			Stapelposition_LFD					DFKKZP.POSZA	

FK des Zahlstapels

KT12:	Bildungsregel							''KONTO''
			Mandant									DFKKZP.MANDT
			Stapelnummer							DFKKZP.KEYZ1	

für K-Inkasso: nicht vorhanden';

COMMENT ON TABLE PA01_PA02_KT01_BL IS
'Beziehungen von Personen zu Belegen, z.B.

''In-/Exkasso-Partner''

Business Keys:
PA01:	Mandant										DFKKKO.MANDT
			Partnerordnungsbegriff (POB)	DFKKKO.XBLNR			ohne führende Nullen und ohne letzte Stelle (PZ), entspricht inhaltlich dem POB aus Paris

PA02:	Bildungsregel								''HARM''
			Partnerrolle									''HARM~'' ||  HARM( "originär Zahlungspflichtiger") 	Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert
																																									und im Zusammenhang mit harmonisierten Feldern i.d.R. zum Lookup verwendet wird

KT01:	Bildungsregel								''SHUKR''
			Mandant										DFKKKO.MANDT
			Belegnummer								DFKKKO.OPBEL';

COMMENT ON TABLE PA01_PA02_KT08_BL IS
'Zuordnung eines Partners zu einer Inkassierungsmassnahme: "Inkassobüro", "originär Zahlungspflichtiger"

Business-Key
aus SAP FS-CD:
PA01_PA02_KT08:
			Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)	DFKKCOLLH.INKGP (für Inkassobüro) / XBLNR (für originär Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Rolle												HARM( ''Inkassobüro''/ "originär Zahlungspflichtiger")						 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Belegnummer								DFKKCOLLH.OPBEL
			Inkassoposition_lfd						DFKKCOLLH.INKPS

PA01:	Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)	DFKKCOLLH.INKGP (für Inkassobüro) / XBLNR (für originär Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:  Rolle												HARM( ''Inkassobüro''/ "originär Zahlungspflichtiger")		Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
KT08:	Bildungsregel								''KONTO''
			Mandant										DFKKCOLLH.MANDT
			Belegnummer								DFKKCOLLH.OPBEL
			Inkassoposition_lfd						DFKKCOLLH.INKPS
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Der/Die Partner in der Rolle "originär Zahlungspflichtiger" ist redundant zu KT08_BH->KT08_KT06_BL->KT06_BW->PA01_PA02_KT06_BL->PA01 in der Rolle "Schuldner". In der Rolle "Inkassobüro" ist dieser Link originär.



';

COMMENT ON TABLE PA01_PA02_KT08_InEx_01_LBS IS
'DIMAIOBPAR';

COMMENT ON TABLE PA01_PA02_KT09_BL IS
'Zuordnung eines Partners zu einer Inkassierungsmassnahme: "Inkassobüro", "originär Zahlungspflichtiger"

Business-Key
aus SAP FS-CD:
PA01_PA02_KT09:
			Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)   DFKKCOLLH.INKGP (für Inkassobüro) / XBLNR (für originär Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Rolle												HARM( ''Inkassobüro''/ "originär Zahlungspflichtiger")						 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Vertragskonto								DFKKOP.VKONT
			Zahlungspflichtiger						DFKKOP.XBLNR 															ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Abgabedatum								DFKKCOLLH.AGDAT

PA01:	Mandant										DFKKCOLLH.MANDT
			Partnerordnungsbegriff (POB)   DFKKCOLLH.INKGP (für Inkassobüro) / XBLNR (für originär Zahlungspflichtiger)		ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:  Rolle												''HARM~'' ||  HARM( ''Inkassobüro''/ "originär Zahlungspflichtiger") 							Surrogat-Key zur Rolle, das ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
KT09:	Bildungsregel								''KONTO''
			Mandant										DFKKCOLLH.MANDT
			Vertragskonto								DFKKOP.VKONT
			Zahlungspflichtiger						DFKKOP.XBLNR 															ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Abgabedatum								DFKKCOLLH.AGDAT
where	DFKKCOLLH.OPBEL = DFKKOP.OPBEL
and		DFKKCOLLH.INKPS	= DFKKOP.INKPS

Bea: Der/Die Partner in der Rolle "Inkassobüro" bzw. "originär Zahlungspflichtiger" ist redundant zu KT09->(*)KT08_KT09_BL->KT08_BH->PA01_PA02_KT08_BL->PA01_BH in der gleichen Rolle. Wenn alle KT08_KT09_BL zu einem "Inkassobüro" bzw. zu einem "originär Zahlungspflichtigen" abgeschlüsselt sind, ist dieser Link unnötig. Bea: Selbst wenn alle Inkassopositionen zur Inkassomaßnahme zurückgenommen sind, bleibt dieser Link bestehen.


';

COMMENT ON TABLE PA01_PA02_KT09_InEx_01_LBS IS
'DIMAIOBPAR';

