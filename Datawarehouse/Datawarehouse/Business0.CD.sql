--<ScriptOptions statementTerminator=";"/>
-- Version 7430

CREATE TABLE KT01_Beleg_BH (
		SK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_Beleg_InEx_01_HBS (
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		BelegNr_A VARCHAR2(64 CHAR),
		Abstimmschluessel VARCHAR2(64 CHAR),
		C_Belegart NUMBER(28 , 0),
		C_BelegHerkunft NUMBER(28 , 0),
		C_Waehrung NUMBER(28 , 0),
		Belegdatum DATE,
		Buchungsdatum DATE,
		C_BuchungsGrund_B NUMBER(28 , 0),
		C_RuecklaeuferGrund NUMBER(28 , 0),
		C_UebernahmeBelegArt NUMBER(28 , 0),
		Zahlstapel_Id VARCHAR2(64 CHAR),
		C_Selektionstyp1 NUMBER(28 , 0),
		C_Selektionstyp2 NUMBER(28 , 0),
		C_Selektionstyp3 NUMBER(28 , 0),
		C_Umbuchung_Kurzkontierung NUMBER(28 , 0),
		C_Dauerauftrag NUMBER(28 , 0),
		angelegt_von_A VARCHAR2(64 CHAR),
		angelegt_am DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT06_Ausgl_InEx_01_LBS (
		FK_KT01_KT06_Ausgleich VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT01_KT06_Ausgleich_BL (
		SK_KT01_KT06_Ausgleich VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_BelegPosition_InEx_01_WBS (
		FK_KT06_BelegPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		TA_Lade_ID  NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1),
		Erfassung_Gueltig_Beginn DATE NOT NULL,
		Erfassung_Gueltig_Ende DATE NOT NULL,
		Fachlich_Gueltig_Beginn DATE NOT NULL,
		Fachlich_Gueltig_Ende DATE NOT NULL,
		BelegPositionNr VARCHAR2(8 CHAR),
		TeilpositionNr VARCHAR2(8 CHAR),
		C_Buchungskreis NUMBER(28 , 0),
		C_Geschaeftsbereich NUMBER(28 , 0),
		C_Ausgleichsstatus NUMBER(28 , 0),
		C_Belegtyp NUMBER(28 , 0),
		Sammelrechnungskonto VARCHAR2(24 CHAR),
		C_Hauptvorgang NUMBER(28 , 0),
		C_Teilvorgang NUMBER(28 , 0),
		Sachkonto VARCHAR2(24 CHAR),
		C_Steuerkennzeichen NUMBER(28 , 0),
		C_Steuerzusatzkennz NUMBER(28 , 0),
		C_Statistikschluessel NUMBER(28 , 0),
		Nettofaelligkeit DATE,
		Stundungsdatum DATE,
		BetragInEuro NUMBER(16 , 2),
		SteuerInEuro NUMBER(16 , 2),
		Betrag NUMBER(16 , 2),
		C_Waehrung NUMBER(28 , 0),
		C_Zahlweg NUMBER(28 , 0),
		C_zahlenderBuchungskreis NUMBER(28 , 0),
		Ausgleichsdatum DATE,
		C_Ausgleichsgrund NUMBER(28 , 0),
		C_Ausgleichswaehrung NUMBER(28 , 0),
		Ausgleichsbetrag NUMBER(16 , 2),
		Ausgleichsvalutadatum DATE,
		Ausgleichsbuchungsdatum DATE,
		C_zurueckgenommen NUMBER(28 , 0),
		Abrechnungszeit_von DATE,
		Abrechnungszeit_bis DATE,
		C_Versicherungsart NUMBER(28 , 0),
		FachbereichsindividuellesKZ VARCHAR2(24 CHAR),
		AnfallSteuerjahr DATE,
		C_VerteilungsKZ NUMBER(28 , 0),
		C_ZWFKZ NUMBER(28 , 0),
		C_Ausgleichsruecknahme NUMBER(28 , 0),
		C_AusloesenderStatSchluessel NUMBER(28 , 0),
		C_Produktgruppe NUMBER(28 , 0),
		Zusatzreferenz_A VARCHAR2(64 CHAR),
		C_Zahlungssperrgrund_B NUMBER(28 , 0),
		C_Mahnsperrgrund NUMBER(28 , 0),
		C_ArtGerichtlicheMahn_B NUMBER(28 , 0),
		C_AbschlussGerichtlMahn_B NUMBER(28 , 0),
		GUID_AB VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE KT06_BelegPosition_KT01_BW (
		SK_KT06_BelegPosition_KT01 VARCHAR2(64 CHAR) NOT NULL,
		FK_KT01_Beleg VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE INDEX KT01_Beleg_InEx_01_HBS_Hist_I
	ON KT01_Beleg_InEx_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT06_Ausgl_BL_FK_KT01_I
	ON KT01_KT06_Ausgleich_BL
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT06_Ausgl_BL_FK_KT06_I
	ON KT01_KT06_Ausgleich_BL
	(FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT06_Ausgl_BL_Ladat_IDX
	ON KT01_KT06_Ausgleich_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT01_KT06_Ausgl_InEx_01_Hist_I
	ON KT01_KT06_Ausgl_InEx_01_LBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT01_KT06_Ausgleich		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelPos_InEx_01_WBS_Hist_I
	ON KT06_BelegPosition_InEx_01_WBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_KT06_BelegPosition		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelegPosition_KT01_BW_IDX
	ON KT06_BelegPosition_KT01_BW
	(FK_KT01_Beleg		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX KT06_BelegPosition_Ladat_IDX
	ON KT06_BelegPosition_KT01_BW
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX KT01_Beleg_InEx_01_HBS_FK_IDX
	ON KT01_Beleg_InEx_01_HBS
	(FK_KT01_Beleg		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX KT01_KT06_Ausgl_InEx_01_FK_IDX
	ON KT01_KT06_Ausgl_InEx_01_LBS
	(FK_KT01_KT06_Ausgleich		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX KT06_BelPos_InEx_01_WBS_FK_IDX
	ON KT06_BelegPosition_InEx_01_WBS
	(FK_KT06_BelegPosition		ASC,
	  TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE KT01_Beleg_BH ADD CONSTRAINT KT01_Beleg_BH_PK PRIMARY KEY
	(SK_KT01_Beleg);

ALTER TABLE KT01_Beleg_InEx_01_HBS ADD CONSTRAINT KT01_Beleg_InEx_01_HBS_PK PRIMARY KEY
	(FK_KT01_Beleg,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT06_Ausgl_InEx_01_LBS ADD CONSTRAINT KT01_KT06_Ausgl_InEx_01_LBS_PK PRIMARY KEY
	(FK_KT01_KT06_Ausgleich,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT01_KT06_Ausgleich_BL ADD CONSTRAINT KT01_KT06_Ausgl_BL_PK PRIMARY KEY
	(SK_KT01_KT06_Ausgleich);

ALTER TABLE KT06_BelegPosition_InEx_01_WBS ADD CONSTRAINT KT06_BelegPos_InEx_01_WBS_PK PRIMARY KEY
	(FK_KT06_BelegPosition,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE KT06_BelegPosition_KT01_BW ADD CONSTRAINT KT06_BelegPosition_KT01_BW_PK PRIMARY KEY
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT01_Beleg_InEx_01_HBS ADD CONSTRAINT KT01_Beleg_InEx_01_HBS_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT01_KT06_Ausgl_InEx_01_LBS ADD CONSTRAINT KT01_KT06_Ausgl_InEx_01_LBS_FK FOREIGN KEY
	(FK_KT01_KT06_Ausgleich)
	REFERENCES KT01_KT06_Ausgleich_BL
	(SK_KT01_KT06_Ausgleich)
	ON DELETE CASCADE;

ALTER TABLE KT01_KT06_Ausgleich_BL ADD CONSTRAINT KT01_KT06_Ausgl_BL_BelegPos_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01)
	ON DELETE CASCADE;

ALTER TABLE KT01_KT06_Ausgleich_BL ADD CONSTRAINT KT01_KT06_Ausgl_BL_Beleg_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg);

ALTER TABLE KT06_BelegPosition_InEx_01_WBS ADD CONSTRAINT KT06_BelegPos_InEx_01_WBS_FK FOREIGN KEY
	(FK_KT06_BelegPosition)
	REFERENCES KT06_BelegPosition_KT01_BW
	(SK_KT06_BelegPosition_KT01);

ALTER TABLE KT06_BelegPosition_KT01_BW ADD CONSTRAINT KT06_BelegPosition_KT01_BW_FK FOREIGN KEY
	(FK_KT01_Beleg)
	REFERENCES KT01_Beleg_BH
	(SK_KT01_Beleg)
	ON DELETE CASCADE;

COMMENT ON COLUMN KT01_Beleg_BH.SK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Abstimmschluessel IS
'... verbindet eine Menge von Belegen z.B. zu Abstimmzwecken. Er wird bei Erstellung des Belegs zugeordnet und bleibt für den Beleg unverändert.

Abstimmschlüssel werden für Batchläufe anhand des Tagesdatums und Zuordnung zu einem Geschäftspartner erzeugt. Die Belege, die z.B. während eines Sollstellungs-Batchlaufes in demselben Intervall von Geschäftspartnern erstellt worden sind (ca. 250 Intervalle von Geschäftspartnern) erhalten denselben Abstimmschlüssel. D.h. der Abstimmschlüssel identifiziert den Batchlauf der Erstellung und das Geschäftspartner-Intervall zum Beleg.

Auch für manuelle Buchungen werden Abstimmschlüssel anhand des Tagesdatums erzeugt.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.BelegNr_A IS
'Belegnummer aus dem Business-Key

Datenschutz $A1';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Belegdatum IS
'... ist das Datum, an dem ein Beleg (insbesondere ein Zahlungseingang) im Unternehmen eingeht bzw. die DEVK von einer Zahlung erstmalig Kenntnis erhält. Kann abweichend vom Valutadatum und vom Erfassungsdatum (Angelegt_am) sein.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Buchungsdatum IS
'... ist das echte Fälligkeitsdatum, welches von der Nettofälligkeit bspw. dann abweicht, wenn die Fälligkeit auf einen Feiertag fällt (01.01.), wird für den Abgleich mit dem Hauptbuch verwendet.

aus DFKKOP.BUDAT

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_BelegHerkunft IS
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

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Belegart IS
'... gibt an, um welche Art von Belegen es sich handelt. Liste ist zwischen Nebenbuch und Hauptbuch verschieden.

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

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_BuchungsGrund_B IS
'... gibt z.B bei Ausbuchungen den Grund an.

BuchungsGrund bei Ausbuchungen:

A1	Kleindifferenzen - Ausbuchen von Beträgen < 1 EUR
A2	Migration
AM	Ausbuchung (ohne Betragsgrenzen)
LL	Ausbuchung Kleindifferenzen Leben Leistung < 10 EUR
N1	Niederschlagung GMV
NM	Niederschlagung (ohne Betragsgrenzen)
S1	Statistische Buchung ausbuchen
SM	Statistische Buchung ausbuchen
V1	Vereinnahmung - 0,01 - 4,99 EUR
VS	Vereinnahmung (mit Steuer)
ZW	Zulage verweigert
ÜZ	Vereinnahmung (aus Zahlungseingang)

Datenschutz $B';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Dauerauftrag IS
'... enthält, ob diese Zahlung im Rahmen eines Dauerauftrags geleistet worden ist.

ja/ nein

aus DFKKZP.Dauerauftrag

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_RuecklaeuferGrund IS
'... gibt den Grund an, warum es zu einem Rückläufer kam.

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

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Selektionstyp1 IS
'... ist das Ergebnis 1.Priorität der syntaktischen Prüfung des Verwendungszwecks durch "Autobank", falls der Beleg über einen Zahlstapel eingespielt wurde.

1	Beleg
2	Schecknummer
A	Geschäftspartner
B	Vertragskonto (VK)
C	Vertragskonto alt (BKN)
D	Vertrag mit Suffix (VO)
E	Vertrag o. Suffix (gültige VO)
F	Vertrag o. Suffix (alle VO)
I	Inkassobüro
S	Schadennummer

aus DFKKZP.Typ1

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Selektionstyp2 IS
'... ist das Ergebnis 2.Priorität der syntaktischen Prüfung des Verwendungszwecks durch "Autobank", falls der Beleg über einen Zahlstapel eingespielt wurde.

1	Beleg
2	Schecknummer
A	Geschäftspartner
B	Vertragskonto (VK)
C	Vertragskonto alt (BKN)
D	Vertrag mit Suffix (VO)
E	Vertrag o. Suffix (gültige VO)
F	Vertrag o. Suffix (alle VO)
I	Inkassobüro
S	Schadennummer

aus DFKKZP.Typ2

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Selektionstyp3 IS
'... ist das Ergebnis 3.Priorität der syntaktischen Prüfung des Verwendungszwecks durch "Autobank".

1	Beleg
2	Schecknummer
A	Geschäftspartner
B	Vertragskonto (VK)
C	Vertragskonto alt (BKN)
D	Vertrag mit Suffix (VO)
E	Vertrag o. Suffix (gültige VO)
F	Vertrag o. Suffix (alle VO)
I	Inkassobüro
S	Schadennummer

aus DFKKZP.Typ3

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_UebernahmeBelegArt IS
'.... gibt in bestimmten Fällen das Vorsystem an, das den Beleg ausgelöst hat. Diese Information dient bei Übernahme ins Hauptbuch dem Abgleich von gebuchten Summen. Als Default wird "UI" gesetzt. Zur Zeit werden nur Belege aus Life Factory mit "LF" gekennzeichnet, dadurch können Buchungen aus Leben-alt ("UI") von Buchungen aus Life Factory ("LF") unterschieden werden.

Geplant ist, mittelfristig die Buchungen aus ESA mit "CM" zu qualifizieren. Weitere Ausprägungen sind nicht geplant, weil die verschiedenen Sparten anhand anderer Kennzeichen auch im Hauptbuch unterscheidbar sind.

Ausprägungen:.
UI     Für die Übernahme ins Hauptbuch
LF    Life Factory
CM  geplant

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Umbuchung_Kurzkontierung IS
'Kurzkontierung für Umbuchungen
Wird von der (Guthaben)Klärung aus benutzt, um einen Betrag auf ein Hauptbuchkonto umzubuchen. Das Guthaben im FSCD ist anschl. nicht mehr vorhanden, da der Beleg aus der Kurzkontierung dieses Guthaben ausgleicht.

kurz		Text																			Sachkto	BuKr

ADM	Vergütung Scheck-Schaden								201510	1000
BAHN	Bahnkosten SB-Schaden										784108	3000
BANK	Umbuchung für andere Fachbereiche (Bank)	781000	3000
BEIT		Umbuchung an Beitragseinzug							781051	3000
DVAG	Maklervergütung Schaden G								784230	2000
DVAV	Maklervergütung Schaden V								784230	1000
FLUG	Flugkosten SB-Schaden										784113	1000
GMV	Umbuchung an OrgaMahn									781408	2000
HYPO	Umbuchung an Hypotheken								782071	1000
KFZ		Umbuchung an KFZ												781390	1000
KKBU	Krankenkassenbeitrag umbuchen (LL)				202871	3000
KRAN	Leistungsrückzahlung Kranken							782016	6000
KSCH	Umbuchung an Schaden (Kfz)							781061	1000
RKOS	Recherchekosten													683000	6000
RKVJ	Recherchekosten Vorjahr										683001	6000
RÜ-G	Umbuchung an Rückversicherung G					784119	2000
RÜ-V	Umbuchung an Rückversicherung V					784119	1000
ÜWER	Übertragungswert													438132	6000
VERR	Verrechnung mit anderen Fachbereichen			781001	3000

aus DFKKZP.Umbuchung (Zahlstapel-Position, evtl. auch am Beleg??)

Datenschutz $-
';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.C_Waehrung IS
'... gibt die Währung an, die für die Beträge in allen Belegpositionen gilt, für die nicht eine explizite Währung angegeben ist.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.Zahlstapel_Id IS
'... ist die Bezeichnung des Zahlstapels, falls der Beleg über einen Zahlstapel eingespielt wurde.

aus DFKKZP.KEYZ1

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.angelegt_am IS
'... gibt die  tatsächliche physische Zeit an, zu der der Beleg in der Quelldatenbank angelegt worden ist 

Datenschutz $-';

COMMENT ON COLUMN KT01_Beleg_InEx_01_HBS.angelegt_von_A IS
'... gibt den Arbeitsanteil (bei BelegHerkunft = ''manuell'') resp. den technischen User (bei Batchläufen) an.

Datenschutz $A1';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.FK_KT01_KT06_Ausgleich IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgl_InEx_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.SK_KT01_KT06_Ausgleich IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT01_KT06_Ausgleich_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Abrechnungszeit_bis IS
'... ergibt zusammen mit Abrechnungszeit_von den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig

aus DFKKOP.ABRZO

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Abrechnungszeit_von IS
'... ergibt zusammen mit Abrechnungszeit_bis den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig

aus DFKKOP.ABRZU

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.AnfallSteuerjahr IS
'... ist das Jahr für das entsprechende Steuern abzuführen sind. Wird aus der Tabelle Versicherungszusatzkontierung übernommen.

aus TKKV_VZK_DATA.ZZCDANFJA mit Schlüssel aus DFKKOP.KONTL (ohne führendes "+-!")

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Ausgleichsbetrag IS
'... gibt an wie hoch der Ausgleichsbetrag ist. Es kann auch nur teilweise ausgeglichen werden.

aus DFKKOP.AUGBT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Ausgleichsbuchungsdatum IS
'... gibt das Buchungsdatum des Ausgleichsbelegs an

aus DFKKOP.AUGBD

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Ausgleichsdatum IS
'... gibt das Maschinendatum an, an dem ein Forderungsbeleg ausgeglichen wurde

aus DFKKOP.AUGDT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Ausgleichsvalutadatum IS
'... gibt das Wertstellungsdatum des Ausgleichs bei der Bank an.

Aus dem Vorsystem oder der Guthabenbearbeitung wird für Exkasso dieses Datum per Customizing-Vorgabe mit Nettofälligkeit + 1 Tag gesetzt. Bei LSV wird das Nettofälligkeitsdatum übernommen.

aus DFKKOP.AUGVD

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.BelegPositionNr IS
'.. ist die laufende Nummer der Position pro Beleg aus dem Business-Key, Bestandteil des Business-Keys

aus DFKKOP.OPUPK

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Betrag IS
'... ist der Betrag in der im Beleg angegebenen Währung

aus DFKKOP.BETRW

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.BetragInEuro IS
'... ist der Betrag in der Hauswährung Euro.

aus DFKKOP.BETRH

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_AbschlussGerichtlMahn_B IS
'gibt Informationen über Abschluß

offen / erfolgreich/ erfolglos

aus DFKKOP.Z_STATUS_GM_DOC

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_ArtGerichtlicheMahn_B IS
'gibt Informationen über interne / externe Verfolgung der Forderung

intern/ extern 

aus DFKKOP.Z_STATUS_GM_DOC

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Ausgleichsgrund IS
'... gibt den Grund an, warum ein Ausgleich hergestellt wurde.

s. Liste Ausgleichsgründe.xls

01	Eingangszahlung
02	Ausgangszahlung
03	Posten transgerieren
04	Ausbuchung
05	Storno
06	Rücknahme statistischer Posten
07	Erstellung der Endabrechnung
08	Kontenpflege
09	Wiederholungsplan gestoppt
10	Rückläufer
11	Rücknahme Ausgleich
12	Erstellung der Sollstellung
13	Ausgleich Zahlung auf Allgemeine Anordnung
14	Massenausbuchung
15	Maschinelles Ausgleichen
16	manuelles Deaktivieren Abschlagsposition
17	Verrechnung Anzahlung mit SD Faktura
18	Maklermeldung
19	Rücknahme Jahresvorausleistung
20	Migration Sollstellung
21	Forderungsübernahme (Debitoren-/Vertragswechsel)
22	Abschlagsplan: Deaktivierung durch Portionswechsel
23	Zahlungsschema: AnzAnfo deakt. In Fakturierung
24	Abschlagsplan: Deaktivierung durch Euroumstellung
25	Gutschriftsverrechnung
26	Zahlung durch externe Zahlstelle gemeldet
27	Zahlungsverteilung
28	Verrechnung vorläufiger Prämienanforderung FS-CD
30	Quellensteuerabzug zum Rechnungszeitpunkt
31	Eingangszahlung mit Kreditinstrument / Wechsel
32	Ausgangszahlung mit Kreditinstrument / Wechsel
33	Umbuchen auf anderen Buchungskreis
34	Guthabenklärung
35	Umbuchung für Ausgangszahlung
41	Rückbuchung Akontozahlung auf das Klärungskonto
45	Ausgleich nach Storno mit erzeugten Gegenbuchungen
70	Ausgleich einer Eingangskorrespondenzanforderung
71	Storno einer Eingangskorrespondenzanforderung
85	Umbuchung auf Hauptbuch

aus DFKKOP.AUGRD

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Ausgleichsruecknahme IS
'... gibt an, ob eine Rücknahme des Ausgleichs stattgefunden hat.

ja/nein

aus DFKKOP.XRAGL

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Ausgleichsstatus IS
'... sagt aus, dass die entsprechende Belegposition ausgeglichen ist.

gültige Werte:

NULL   nicht ausgeglichen
9           ausgeglichen

aus DFKKOP.AUGST

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Ausgleichswaehrung IS
'... gibt an in welcher Währung der Ausgleich stattgefunden hat

aus DFKKOP.AUGWA

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_AusloesenderStatSchluessel IS
'... ist der Statistikschlüssel des auslösenden Belegs (redundant)

aus DFKKOP.ASTKZ

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Belegtyp IS
'... Typ des Belegs

z.B.
Ratenplan, Sammelrechnung, Zahlungsversprechen, Ausgleichsbeleg

aus DFKKOP.ABWTP

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Buchungskreis IS
'... dieses Attribut ist redundant zu dem Risikoträger des Vertrags. Darstellung in SAP als 4stellige Nummer, z.B. 3000=Leben Verein

http://intranet.hv.devk.de/media/fachliches/bereiche/havarechnungswesen/fi/sap_kp/Buchungskreis.pdf

aus DFKKOP.BUKRS

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Geschaeftsbereich IS
'... repräsentiert die RD, in der die Bearbeitung stattfindet. Diese Information ist redundant im Vertrag/Schaden enthalten

aus DFKKOP.GSBER

Datenschutz $-
';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Hauptvorgang IS
'z. B. Forderung, Schadenzahlung
4-stelliges Kürzel
s. auch ''Teilvorgang''

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

aus DFKKOP.HVORG

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Mahnsperrgrund IS
'... gibt an, ob zu der Belegposition eine Mahnsperre existiert und falls ja aus welchem Grund. Wenn eine  Mahnsperre vorliegt. wird die Belegposition nicht überwacht.
Mahnsperren werden z.B. gesetzt, wenn Kundennachfragen in Klärung sind. Beispiel: Kunde behauptet, gekündigt zu haben, bekommt aber eine Rechnung.

aus DFKKOP.MANSP

A  Vorgang in Bearbeitung
B  Beschwerde
C  Partner verstorben
D  Akonto-Guthaben vorhanden
I  Zahlung angekündigt
J  Zahlungsschwierigkeiten
L  Abgegeben an GM/ext. Inkasso
M  Stundung Leben
V  Tarif FPT (""geförderte Pflegeversicherung"" (Pflege-Bahr))
Z  Sonstige

Datenschutz $B, aber zunächst leer';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Produktgruppe IS
'... bildet Gruppen von Produkten aus Überwachungssicht ab.

aus DFKKOP.PRGRP

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Statistikschluessel IS
'... sagt aus, dass ein Beleg nicht hauptbuchrelevant ist

Dies ist z.B. bei Ratenplanbelegen so.

aus DFKKOP.STAKZ

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Steuerkennzeichen IS
'.. ist ein Kennzeichen für die Steuer, die mit dieser Belegposition verbunden ist.

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

aus DFKKOP.MWSKZ

s. Steuerkennzeichen.xls

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Steuerzusatzkennz IS
'.. ist ein Kennzeichen für eine Steuer (???)

aus DFKKOP.MWSZKZ

s.  Steuerkennzeichen.xls (nur ein Teil der Ausprägungen wird verwendet)(?)

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Teilvorgang IS
'4-stelliges Kürzel
nur im Zusammenhang mit ''Hauptvorgang'' eindeutig interpretierbar.

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

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Versicherungsart IS
'... gibt die Art der Versicherung an. Wird aus der Tabelle Versicherungszusatzkontierung übernommen.

aus TKKV_VZK_DATA.ZZCDVSART mit Schlüssel aus DFKKOP.KONTL (ohne führendes "+-!")

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_VerteilungsKZ IS
'... gibt an, wie entsprechende Kosten zu verteilen sind. Wird aus der Tabelle Versicherungszusatzkontierung übernommen.

Es werden zwei Verteilungen unterschieden:

VGK - Verteilung
keine Verteilung

aus TKKV_VZK_DATA.ZZCDVERKZ mit Schlüssel aus DFKKOP.KONTL (ohne führendes "+-!")

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Waehrung IS
'... ist die Währung zu ''Betrag''

aus DFKKOP.WAERS

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_ZWFKZ IS
'... bildet ab, wenn eine Sollstellung zweifelhaft gestellt wurde, d.h. wenn mit einem Ausgleich nicht mehr mit hoher Wahrscheinlichkeit gerechnet wird. Das ist regelmäßig dann der Fall, wenn das Fälligkeitsdatum über sechs Monate her ist oder ein gerichtliches Mahnverfahren eingeleitet ist.

000		Posten ist nicht zweifelhaftgestellt/ einzelwertberichtigt
901		Posten ist zweifelhaftgestellt/ einzelwertberichtigt
902		Zweifelhaftstellung/ Einzelwertberichtigung zurückgenommen
903		Posten ist zweifelhaftgestellt/ einzelwertberichtigt in mindestens einem Bewertungsbereich
904		Zweifelhaftstellung/ Einzelwertberichtigung in mindestens einem Bewertungsbereich zurückgenommen

aus DFKKOP bzw. DFKKZW

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Zahlungssperrgrund_B IS
'... gibt den Grund an, warum für diesen Beleg eine Zahlungssperre besteht. Sobald ein Grund gesetzt ist, besteht auch die Zahlungssperre.

A		Vorgang in Bearbeitung
B		Beschwerde
C		Partner verstorben
D		Rückläufer-Grund 10 und 20
E		Gerichtliches Mahnverfahren (nur Exkasso)
F		Vermögenswirksame LV (nur Exkasso)
G		Verrechnung mit künftiger Foderung (nur Exkasso)
H		Abwelchender Zahlungsempfänger (nur Exkasso)
I		Zahlung angekündigt (nur Inkasso)
J		Zahlungsschwierigkeiten (nur Inkasso)
K		Rückläufer-Grund 30 bis 60 (nur Inkasso)
L		Abgegeben an GM/ ext. Inkassobüro
M		Stundung Leben
N		Rückläufer "Vorweggenommene Auszahlung"
P		geänderte Bankverbindung
Q		Exkassorückläufer Leben Leistung
V		FPT Zulage
Z		Sonstiges

aus DFKKOP.SPZAH

Datenschutz $B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_Zahlweg IS
'... gibt u.a. an, auf welchem Zahlweg  gezahlt wird. Wird vom operativen System vorgegeben.

Insbesondere ist in FS-CD zu jedem Zahlweg eine bestimmte DEVK-Bankverbindung hinterlegt.

0	LSV (Einzug nur am 01.d.M.)
1	LSV (Einzug nur am 15.d.M.)
5	LSV (Einzug am 01. und am 15.)
6	SCHADEN LSV
A	Überweisung
C	Auslandsüberweisung
E	Scheck
F	Überweisung SEPA-Raum
H	SEPA-Auszahl Embargo Schaden
I	LebenLeist Überweisung Inland
J	LebenLeist SEPA-Überweisung
K	LebenLeist Überweisung Ausland
L	SCHADEN SCH. 2000 NICHT NUTZEN
M	Auszahlung an Embargo Schaden
P	SCHADEN SEPA-Überweisung
Q	SCHADEN Umbuchung
R	SCHADEN Verbindlichk. Hausakte
S	SCHADEN Barauszahlung
T	SCHADEN Verrechnung sst. B
U	SCHADEN Verrechnung Beitrag
V	SCHADEN Scheck
W	SCHADEN Ausl.überw. - Sp. Empf
X	SCHADEN Ausl.überw. - Sp. Auft
Y	SCHADEN Ausl.überw. - Sp. get.
Z	SCHADEN Überweisung

aus DFKKOP.PYMET

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_zahlenderBuchungskreis IS
'... bezeichnet das Konzernunternehmen, das den Zahlungsverkehr per Dienstleistung für die anderen abwickelt. Das ist für Beitragsinkasso der DEVK Lebensversicherungsverein a.G. und für Schaden die DEVK Allgemeine Versicherungs-AG

aus DFKKOP.PYBUK

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.C_zurueckgenommen IS
'"X" identifiziert Abschreibungen von statistischen Forderungen (? s. Remigrationsregel Leistungssegement und Zahlung)

aus DFKKOP.AUGOB 

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.FK_KT06_BelegPosition IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.FachbereichsindividuellesKZ IS
'... ist eine intern vom liefernden Fachbereich für eigene Auswertungszwecke vergebene Kennzeichnung. Wird aus der Tabelle Versicherungszusatzkontierung übernommen.
Der Inhalt bezieht sich auf den Tarif und evtl. weitere Eigenschaften eines zugeordneten Vertrags.

aus TKKV_VZK_DATA.ZZCDFBIKZ mit Schlüssel aus DFKKOP.KONTL (ohne führendes "+-!")

Wegen der Redundanz zu den Vertragsinformationen kann dieses Attribut entfallen, obwohl es aktuell (vor EInführung des DWH) für Auswertungen aus SAP eine gewisse Bedeutung hat.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.GUID_AB IS
'... ist der ''Global Unique Identifier'' für den für diese Lastschrift verwendeten historischen Zustand des SEPA-Mandats. Mit dieser Id kann aus den entsprechenden Tabellen in FS-CD (SEPA_MANDATE und SEPA_MANDATE_USE) auf Informationen zum Mandat (z.B. Bankverbindung, aktueller Zustand oder historischer Zustand) und zu seiner Verwendung (letzte Nutzung) zugegriffen werden.

Aus DPAYH.GUID

Evtl. in Link umsetzen.

Datenschutz $A1B';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Nettofaelligkeit IS
'... ist für Forderungen und Verbindlichkeiten das Datum, ab dem Zahlungspflicht (für den Kunden oder die DEVK) besteht. Für Belege aus LSV-Läufen wird das Datum aus der DEVK-eigenen Tabelle entnommen, für Belege aus Exkasso-Läufen berechnet sich das Datum anhand der Regeln aus dem Customizing (u.a. abhängig vom Zahlweg).

aus DFKKOP.FAEDN

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Sachkonto IS
'... ist das Hauptbuchkonto.

aus DFKKOP.HKONT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Sammelrechnungskonto IS
'... ist das Vertragskonto, auf dem das Inkasso-Objekt eines Drittbeteiligten (Schadengutachter) geführt wird.

aus DFKKOP.ABWKT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.SteuerInEuro IS
'Steueranteil an BetragHW in Hauswährung Euro.

aus DFKKOP.SCTAX

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Stundungsdatum IS
'... ist das Datum, bis zu dem i.S. einer Fristverlängerung ein Zahlungsaufschub gewährt wird

aus DFKKOP.STUDT

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.TeilpositionNr IS
'laufende Nummer der Teilposition zur BelegPosition, Bestandteil des Business-Keys.

Wenn eine Belegposition nur teilweise ausgeglichen wird, entsteht eine neue offene Teilposition über den Restbetrag. Daraus folgr, dass eine Belegposition immer höchstens eine offene Teilposition hat, die anderen sind ausgeglichen. In FS-CD haben Belegpositionen anfangs KEINE Teilposition, die Teilposition 1 entsteht erst bei entsprechender Teilzahlung.

Hypothese: "KEINE" Teilposition verhält sich so wie eine Teilposition mit der laufenden Nummee 0. Dadurch vereinfacht sich das Handling auf DWH-Seite. "Leere" Teilpositionsnummern sollten also mit 0 besetzt werden.

aus DFKKOP.OPUPZ

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_InEx_01_WBS.Zusatzreferenz_A IS
'... dokumentiert eine Umbuchung auf ein Verrechnungskonto (s. InkassoObjekt).

Noch nicht realisiert. Könnte als Link abgebildet werden.

aus DFKKOP.VTRE2

Datenschutz $A1';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.FK_KT01_Beleg IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.SK_KT06_BelegPosition_KT01 IS
'eindeutiger Surrogate-Key

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN KT06_BelegPosition_KT01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE KT01_Beleg_BH IS
'für FS_CD:
... entspricht dem Begriff des "Belegs" aus FS-CD

Bea: Durch Simulationsläufe in FS-CD erzeugte Belege werden nicht ins DWH eingespielt!

Business Key des Belegs aus FS-CD:
DFKKOP.CLIENT (Mandant)
DFKKOP.OPBEL (Belegnummer)

FS-CD / gesperrte Objekte:
CLIENT (Mandant)
Sperrobjekt aus DFKKLOCKS für Typ = ''01'' (Beleg)

Business Key des Belegs aus CM:
ICLPAY.CLIENT (Mandant)
ICLPAY.DOCUMENTREF (Belegnummer)

Die Belegnummer aus CM ist identisch mit der Belegnummer aus FS-CD


für K-Inkasso:
... entspricht dem Begriff der "Kontenbewegung" aus K-Inkasso für Konten-Bewegungsarten mit erstem Zeichen "D", "I", "S"
BK für K-Inkasso:
VNR (Versicherungsscheinnummer)
Konten-Bewegungs-Datum (P4104)
lfd_Nummer


Für K-Inkasso  muß die VNR aus der K-internen "Kundenstamm-Nummer" (P1027) und der "lfdNr. zur Kdstnr" (P1028) abgeleitet werden.
Das Konten-Bewegungs-Datum liegt innerhalb von GJ und zwei VJ (danach Auslagerung der Quelle)
lfd_Nummer muß in der Schnittstelle gebildet werden, dient zur Unterscheidung bei mehr als einer Kontenbewegung an demselben Tag. Das funktioniert nur, wenn die Reihenfolge eindeutig ist.';

COMMENT ON TABLE KT01_KT06_Ausgleich_BL IS
'Link zwischen Beleg und Beleg-Position/ Teilposition im Sinne von

Beleg FK_KT01_Beleg ''ist Ausgleichsbeleg zu'' Belegposition/ Teilposition FK_KT06_BelegPosition

Business-Key für FS-CD:

DFKKOP.CLIENT (Mandant)
DFKKOP.AUGBL (Belegnummer Ausgleichsbeleg)

DFKKOP.CLIENT (Mandant)
DFKKOP.OPBEL (Belegnummer Originalbeleg)
DFKKOP.OPUPK (Belegposition Originalbeleg)
optional: DFKKOP.OPUPZ (Teilposition Originalbeleg)

Bea:
eine Beleg-Position/ Teilposition hat 0 oder 1 Ausgleichsbeleg (bei Teilausgleich entsteht eine neue offene Teilposition)
ein Ausgleichsbeleg kann mehrere Beleg-Positionen/ Teilpositionen ausgleichen
ein Ausgleichsbeleg kann ein rudimentärer "Verheiratungs-"Beleg sein

Ein Ausgleichsbeleg gleicht einen offenen Beleg (Belegposition) durch Eingang voll oder teilweise aus. Es gibt zwei mögliche Szenarien von Ausgleichsreferenzen:

-) Ausgleich über einen "dritten" Beleg, d.h. es gibt den Forderungsbeleg, den Eingangsbeleg und den Beleg, der die beiden anderen zusammenbringt. Diese Form des Ausgleichs findet bei "zeitversetztem"/"manuellem" Ausgleich statt. Bei dieser Art wird insbesondere festgehalten, wer den Ausgleich hergestellt hat.

-) direkter Ausgleich, d.h. es wird eine direkte Referenz zwischen Forderungsbeleg ( Sollstellung) und Eingangsbeleg hergestellt. Diese Art findet sich bei LSV wieder.';

COMMENT ON TABLE KT06_BelegPosition_KT01_BW IS
'... gibt die ggf. zu einem Beleg gehörenden Teilbeträge an. Für FS-CD aus "Belegpositionen", für K-Inkasso aus der gegenüber den "Kontenbewegungen" feineren Darstellung im Monatsendbestand.

Für FS-CD:
Die Verwendung der Begriffe Position und Teilposition bedarf einer Erläuterung.

Eine weitere Position tritt dann auf (LifeFactory) wenn eine Forderung mehrere Bestandteile hat, die zum selben Zeitpunkt fällig sind. (z.B. Lebensversicherung Hauptversicherung und BUZ)
Teilposition gibt den zeitlichen Verlauf einer offenen Posten Bezahlung an: 

Bspl.

Zeitpunkt t0:
4711    1      leer       100,-     leer     (zum Beleg 4711 gibt es einen Teilbetrag (BelegPosition = 1) über 100,- Euro, der nicht ausgeglichen ist

Zeitpunkt t1, nach Zahlung von 90,- Euro:
4711    1     leer          90,-        9            (zur BelegPosition 4711/ 1 ist der Ursprungsbetrag von 100,- Euro durch 90 überschrieben worden und es wird gekennzeichnet (Ausgleichsstatus = 9), dass dieser Betrag ausgeglichen ist)
4711    1       1            10,-      leer          (zur BelegPosition 4711/ 1 wird eine Teilposition (= 1) neu angelegt, die den noch nicht ausgeglichenen Anteil ausdrückt.

Zeitpunkt t2, nach Zahlung von weiteren 5,- Euro:

4711   1     leer         90,-         9
4711   1       1             5,-         9
4711   1       2             5,-       leer

Streng genommen bildet KT06_BelegPosition_BH nicht die Beleg-Positionen, sondern die Teilpositionen ab, wobei man die ursprüngliche Beleg-Positiona uch als Teilposition betrachten kann. I.d.R. soll es pro Beleg-Position nur eine offene Teilposition geben, es kann jedoch durch rückwirkende Änderungen (Stornierung von Ausgleichsbelegen) zu mehreren offenen 
Teilpositionen kommen.

Bea: Durch Simulationsläufe erzeugte Belegpositionen werden nicht ins DWH eingespielt!


Business Key der Beleg-Position aus FS-CD
DFKKOP.CLIENT (Mandant)
DFKKOP.OPBEL (BelegNr)
DFKKOP.OPUPK (BelegPosition_Lfd)

Business Key der Beleg-Teil-Position aus FS-CD:
DFKKOP.CLIENT (Mandant)
DFKKOP.OPBEL (BelegNr)
DFKKOP.OPUPK (BelegPosition_Lfd)
DFKKOP.OPUPZ (BelegTeilPosition_Lfd)

FS-CD / gesperrte Objekte:
DFKKOP.CLIENT (Mandant)
DFKKLOCKS.Sperrobjekt für Typ = ''02'' (Belegposition) Bea: Darstellung prüfen und Format anpassen!


für K-Inkasso:

zu den Kontenbewegungen, die sich auf Buchungen beziehen, existiert im "Monatsendbestand" auf der Tabelle KFZA_BEITRAG eine Aufteilung des Betrags auf die einzelnen Risiken und eine separate Darstellung der Versicherungssteuer. Problematisch scheint die unterschiedliche Schlüsselung beider Bestände zu sein, durch die eine eindeutige Zuordnung möglicherweise nicht möglich ist: Zu derselben VNR können an einem Tag mehrere Kontenbewegungen stattfinden, die nicht erkennbar, z.B. durch eine laufende Nummer, unterschieden werden. Der Monatsendbestand  kennt die "Satzart" anstelle der Kontenbewegungsart als Schlüssel.

BK für K-Inkasso:
KFZA_BEITRAG.VTR_VNR (Versicherungsscheinnummer)
KFZA_BEITRAG.VTR_SA (Satzart)
KFZA_BEITRAG.VTR_MBD (masch. Bearbeitungsdatum)
KFZA_BEITRAG.VTR_FAELLIGDAT (Nettofälligkeitsdatum)
KFZA_BEITRAG.T_DA (Deckungsart)';

