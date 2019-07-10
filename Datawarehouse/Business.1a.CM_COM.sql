--<ScriptOptions statementTerminator=";"/>
-- Version 8362

CREATE TABLE ER01_ER03_Kundenprozess_BL (
		SK_ER01_ER03_Kundenprozess VARCHAR2(64 CHAR) NOT NULL,
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER01_Schaden_SHUKR_02_HBS (
		FK_ER01_Schaden VARCHAR2(64 CHAR) NOT NULL,
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
		Schadennummer_A VARCHAR2(64 CHAR),
		Meldedatum DATE,
		C_Meldeweg NUMBER(28 , 0),
		C_Ereignisart NUMBER(28 , 0),
		C_Schadenursache NUMBER(28 , 0),
		C_Sparte NUMBER(28 , 0),
		Eintrittsdatum DATE,
		C_Bearbeitungsstatus NUMBER(28 , 0),
		Bearbeitungsstatusdatum DATE,
		C_Komplexitaet NUMBER(28 , 0),
		Deckungsquote NUMBER(16 , 8),
		C_SchadenOhneForderung NUMBER(28 , 0),
		AnzahlToteVerletzte NUMBER(10 , 0),
		C_Bearbeitungsstelle NUMBER(28 , 0),
		Bearbeitungsstelledatum DATE,
		C_sensiblerSchaden NUMBER(28 , 0),
		C_VIP_Schaden_C NUMBER(28 , 0),
		Loeschdatum DATE,
		C_Wagnis NUMBER(28 , 0),
		angelegt_am DATE,
		angelegt_von_A VARCHAR2(64 CHAR),
		geaendert_am DATE,
		geaendert_von_A VARCHAR2(64 CHAR),
		SchadenSB_A VARCHAR2(64 CHAR),
		C_Steuerung NUMBER(28 , 0),
		Wiedervorlagedatum DATE,
		GesSchaden_geaendert_am DATE,
		GesSchaden_geaendert_von_A VARCHAR2(64 CHAR),
		C_Schadenfallart_B NUMBER(28 , 0),
		C_EintrittsdatumZeitzone NUMBER(28 , 0),
		C_SchuldigkeitSichtVU NUMBER(28 , 0),
		C_SchuldigkeitSichtVN NUMBER(28 , 0),
		C_Ersatzpflicht NUMBER(28 , 0),
		AbgabedatumInkasso DATE,
		C_Fehlanlage NUMBER(28 , 0),
		C_SFR_Belastung NUMBER(28 , 0),
		C_KeineBelastung NUMBER(28 , 0),
		C_Bewertung_VTP NUMBER(28 , 0),
		C_Auslandsschadenschutz NUMBER(28 , 0),
		C_GeschlossenMitEntsch NUMBER(28 , 0),
		C_GeschlossenOhneEntsch NUMBER(28 , 0),
		C_VersicherungsschutzVersagt NUMBER(28 , 0),
		C_Versicherungsart NUMBER(28 , 0),
		C_KeineStufung NUMBER(28 , 0),
		C_Migriert NUMBER(28 , 0),
		C_Auffaelligkeit NUMBER(28 , 0),
		C_AktiveMeldung NUMBER(28 , 0),
		JahresbeitragKunde NUMBER(16 , 2),
		C_VertragsfuehrendeStelle NUMBER(28 , 0),
		C_Besonderheiten NUMBER(28 , 0),
		C_Verletzung_B NUMBER(28 , 0),
		C_Koerperteil_B NUMBER(28 , 0),
		C_Rueckversicherung NUMBER(28 , 0),
		C_Freizeit_Unfallschutz NUMBER(28 , 0),
		C_VTP_Info NUMBER(28 , 0),
		arbeitslos_VNSicht_ab DATE,
		Kundennr_Arbeitslosenvers_A VARCHAR2(64 CHAR),
		VNR_Arbeitslosenvers_A VARCHAR2(64 CHAR),
		arbeitslos_ab DATE,
		Arbeitslosengeld_ab DATE,
		Karenzzeit_bis DATE,
		Amtliches_Kennzeichen_A VARCHAR2(64 CHAR),
		HoeheGeldbusse_B VARCHAR2(64 CHAR),
		C_Halter NUMBER(28 , 0),
		C_Unfallart NUMBER(28 , 0),
		C_Fachgebiet_B NUMBER(28 , 0),
		Progression NUMBER(16 , 2),
		Tagegeld_Beginn NUMBER(10 , 0),
		LetzterPosteingang DATE,
		C_Geltungsbereich NUMBER(28 , 0),
		C_Schliessart NUMBER(28 , 0),
		CoC_Loeschdatum_vorgesehen DATE,
		CoC_Sperrdatum_vorgesehen DATE,
		C_CoC_zur_Loeschung_vorgesehen NUMBER(28 , 0),
		C_CoC_zur_Sperrung_vorgesehen NUMBER(28 , 0),
		CoC_VerlaengerungsGrund VARCHAR2(180 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_GerVerf_Schaden_R_01_HBS (
		FK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
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
		Schadennummer_A VARCHAR2(64 CHAR),
		AZ_VN_Rechtsanwalt_A VARCHAR2(500 CHAR),
		C_RS_Prozessausgang NUMBER(28 , 0),
		C_RS_Prozessausgang_Art NUMBER(28 , 0),
		AZ_Gericht_A VARCHAR2(500 CHAR),
		C_Waehrung_aussergeri NUMBER(28 , 0),
		Streitwert_aussergeri NUMBER(16 , 2),
		C_Waehrung_Instanz1 NUMBER(28 , 0),
		Streitwert_Instanz1 NUMBER(16 , 2),
		C_Waehrung_Instanz2 NUMBER(28 , 0),
		Streitwert_Instanz2 NUMBER(16 , 2),
		C_Waehrung_Instanz3 NUMBER(28 , 0),
		Streitwert_Instanz3 NUMBER(16 , 2),
		C_Ordnungswidrigkeit_Kennz NUMBER(28 , 0),
		C_Sozialrechtsschutz_Kennz NUMBER(28 , 0),
		C_Strafverfahren_Kennz NUMBER(28 , 0)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE ER03_Gerichtsverfahren_BH (
		SK_ER03_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_GELOESCHT CHAR(1),
		TA_SPERRE CHAR(1)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE INDEX ER01_ER03_Kundenpr_FK_ER01_IDX
	ON ER01_ER03_Kundenprozess_BL
	(FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER03_Kundenpr_FK_ER03_IDX
	ON ER01_ER03_Kundenprozess_BL
	(FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_ER03_Kundenpr_Ladat_IDX
	ON ER01_ER03_Kundenprozess_BL
	(TA_Ladedatum		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER01_SHUKR_02_HBS_Hist_IDX
	ON ER01_Schaden_SHUKR_02_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER01_Schaden		ASC)
	PCTFREE 0
	LOGGING;

CREATE INDEX ER03_GerVerf_Sch_R_01_HBS_Hi
	ON ER03_GerVerf_Schaden_R_01_HBS
	(TA_Ersatzdatum		ASC,
	  TA_Ladedatum		ASC,
	  Erfassung_Gueltig_Ende		ASC,
	  Erfassung_Gueltig_Beginn		ASC,
	  Fachlich_Gueltig_Ende		ASC,
	  Fachlich_Gueltig_Beginn		ASC,
	  FK_ER03_Gerichtsverfahren		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenprozess_BL_PK PRIMARY KEY
	(SK_ER01_ER03_Kundenprozess);

ALTER TABLE ER01_Schaden_SHUKR_02_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_02_HBS_PK PRIMARY KEY
	(FK_ER01_Schaden,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_GerVerf_Schaden_R_01_HBS ADD CONSTRAINT ER03_GerVerf_Sch_R_01_HBS_PK PRIMARY KEY
	(FK_ER03_Gerichtsverfahren,
	 TA_Ladedatum,
	 Erfassung_Gueltig_Beginn,
	 Fachlich_Gueltig_Beginn);

ALTER TABLE ER03_Gerichtsverfahren_BH ADD CONSTRAINT ER03_Gerichtsverfahren_BH_PK PRIMARY KEY
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenpr_BL_ER01_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER01_ER03_Kundenprozess_BL ADD CONSTRAINT ER01_ER03_Kundenpr_BL_ER03_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

ALTER TABLE ER01_Schaden_SHUKR_02_HBS ADD CONSTRAINT ER01_Schaden_SHUKR_02_HBS_FK FOREIGN KEY
	(FK_ER01_Schaden)
	REFERENCES ER01_Schaden_BH
	(SK_ER01_Schaden);

ALTER TABLE ER03_GerVerf_Schaden_R_01_HBS ADD CONSTRAINT ER03_GerVerf_Sch_R_01_HBS_FK FOREIGN KEY
	(FK_ER03_Gerichtsverfahren)
	REFERENCES ER03_Gerichtsverfahren_BH
	(SK_ER03_Gerichtsverfahren);

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.SK_ER01_ER03_Kundenprozess IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER03_Kundenprozess_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.AbgabedatumInkasso IS
'Abgabedatum an Inkassobüro

aus ICLCLAIM.ZZCOL_SMT_DT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Amtliches_Kennzeichen_A IS
'... ist das amtliche Kennzeichen des Fahrzeugs.

aus ICLCLAIM.ZZKENNZEICHEN

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ICLCLAIM.ZZATV

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Arbeitslosengeld_ab IS
'Arbeitslosengeld bewilligt ab

aus ICLCLAIM.ZZALG_VON

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Bearbeitungsstatusdatum IS
'... ist das Datum an dem der Bearbeitungsstatus eingetreten ist.

Für den Status geschlossen ist das das Schadenschlussmeldedatum.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Bearbeitungsstelledatum IS
'... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde.

ICLCLAIM.ZZZBS_CHG_DATE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_AktiveMeldung IS
'Aktive Meldung an Uniwagnis

Ja / Nein

aus ICLCLAIM.ZZUNIW_ACT_MSG

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Auffaelligkeit IS
'Auffälligkeiten

Ja / Nein

aus ICLCLAIM.ZZUNIW_SUSPICION

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als hätte sich der Schaden in Deutschland ereignet.

Ja / nein

aus ICLCLAIM.ZZAUSLANDFALL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Bearbeitungsstatus IS
'... gibt Auskunft über den Status der Bearbeitung

0		Offen
1		Wiedereröffnet
2		Geschlossen
3		Ereignis ohne Forderung

Bisher nicht verwendet:

4		Geschlossen bis auf …
5		Ungültig: nicht bearbeitet
6		Abgelehnt
7		Storniert
8		Genehmigt
9		Beauftragt
10	Freigegeben
11	Begründet
12	Protokolliert
13	Ungültig
14	Keine Differenzen
15	Ausgewählt
16	Bearbeitet
17	Abgeschlossen
18	Umgebucht
19	zu genehmigen
20	<DEFAULT>
21	Zahlung auszuführen
22	Zahlung ausgeführt
23	Rückläufer
24	Scheck auszustellen
25	Scheck ausgestellt
26	Scheck einzulösen
27	Scheck eingelöst
28	Scheck gesperrt
29	Scheck ungültig
30	Beleg ausgeglichen
31	Akzeptiert
32	extRP - in Schwebe
33	extRP - in Bearbeitung
40	Gefordert
41	Ausgeglichen
90	Beauftragt mit Eingang
91	Referenziert (Nachfolger)

aus ICLCLAIM.STATUS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Bearbeitungsstelle IS
'... ist die RD oder Zentrale, in der der Schaden bearbeitet wird. Entspricht NICHT automatisch der vertragsführenden Stelle.

aus ICLCLAIM.ZZZBS_NEW

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ICLCLAIM.ZZCLAIM_SPECS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Bewertung_VTP IS
'Bewertung VtP-Regulierung

Kein Versicherungsschutz/ keine Ersatzpflicht
Neuwert statt Zeitwert
Regulierung über dem Limit
Mehrwertsteuer nicht abgezogen
Selbstbehalt nicht berücksichtigt
Steuerungstarif nicht beachtet
Fehler bei Marderbissschäden
Pauschale Regulierung
Sonstiges
Regulierung zu hoch
Schadenhergang nicht plausibel
Keine Vollmacht für Sparte


aus ICLCLAIM.ZZVTP_SELT_EVAL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Loeschung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gelöscht werden wird.

ja/ nein

aus ICLCLAIM.ZZ_DSK_LOESCH_KZ

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Sperrung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gesperrt werden wird.

ja/ nein

aus ICLCLAIM.ZZ_DSK_LOESCH_KZ

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_EintrittsdatumZeitzone IS
'Zeitzone des Eintrittsdatums

aus ICLCLAIM.LTIMEZONE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Ereignisart IS
'.. spezifiziert die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

aus ICL.CLAIM.LOSSTYPE

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datentyp: varchar2(10)

in Rechtsschutz sehr ähnlich der "Leistungsart":

01-KFZ-Straftat
02-KFZ-Schdenersatz-RS
03-KFZ-Vertrags-RS
04-KFZ-Vers-Vertrags-RS
05-KFZ-Steuer-RS
16-KFZ-Verwaltungs-RS
18-KFZ-Straf-RS
19-KFZ-OWI-RS
51-Allg Straf-RS
52-Schadenersatz-RS
53-Arbeits-RS
54-Sozialgerichts-RS
55-Beratungs-RS
56-Allg Vertrags-RS
58-Vers Vertrag-RS
59-Allg Steuer-RS
60-Führerschein-RS
66-Allg Verwaltungs-RS
67-Diszipl Standes-RS
68-Allg Straf-RS
69-Allg OWI-RS
71-Opfer-RS
98-St -RS für Grund Miete
99-RS für Grund Miete

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ICLCLAIM.COVERED

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

aus ICLCLAIM.ZZFACHGEBIET

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Fehlanlage IS
'Fehlanlage

Ja / nein

aus ICLCLAIM.ZZCREA_BYMISTAKE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Freizeit_Unfallschutz IS
'Anwendung erw. Freizeitunfallschutz

J	Ja
N	Nein
O	Offen

aus ICLCLAIM.ZZFREIZEIT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich IS
'Geltungsbereich

DE	DE
EU	EU
WE	Weltweit

aus ICLCLAIM.ZZGELTUNGSBEREICH

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_GeschlossenMitEntsch IS
'Merker, ob Schließen mit Entschädigung

Ja/Nein

aus ICLCLAIM.ZZCLOSE_WI_COMP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_GeschlossenOhneEntsch IS
'Merker, ob Schließen ohne Entschädigung

Ja/Nein

aus ICLCLAIM.ZZCLOSE_WO_COMP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Halter IS
'Ist der VN gleichzeitig der Halter? (Redundant wegen ER01_PA02_VNRolle_BL)

Ja/Nein

aus ICLCLAIM.ZZHALTER

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_KeineBelastung IS
'Keine Belastung trotz Entschädigungszahlungen (Teilungsabkommen)

Ja / Nein

aus ICLCLAIM.ZZCOMPEN_NOPEN

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

Ja / Nein

aus ICLCLAIM.ZZ_BUSINESS_TRIP

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B IS
'Körperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Zähne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbelsäule ohne Querschnittslähmung
21	Wirbelsäule mit Querschnittslähmung
22	Brustkorb/Bauch
23	Becken
24	Unterleib
25	mehrere Teile des Rumpfes

30	eine Niere
31	beide Nieren
32	Milz
33	Nieren und Milz
34	Leber
35	mehrere der vorstehenden Organe
36	sonstige innere Organe

40	ein Daumen
41	ein Zeigefinger
42	ein anderer Finger
43	mehrere Finger
44	eine Hand
45	ein Arm unterhalb des Ellenbogengelenks
46	ein Arm bis oberhalb des Ellenbogengelenks
47	ein Arm im Schultergelenk
48	beide Hände/beide Arme
50	eine Großzehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fuß mit Fußgelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis über die Mitte des Oberschenkels
58	beide Füße/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedmaßen
61	Gliedmaßen und Kopf/Hals
62	Gliedmaßen und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere Körperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,tödl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes Körperteil noch nicht bekannt

aus ICLCLAIM.ZZKOERPERTEIL

Datenschutz $B';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Komplexitaet IS
'... gibt die Komplexität des Schadens an.

Gültige Werte sind:
Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ICLCLAIM.COMPLEX

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Meldeweg IS
'.. über welchen Kanal hat die Schadenmeldung die DEVK erreicht.

z.B. telefonisch
aus ICLCLAIM.ZZCOM_CHANNEL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Migriert IS
'migrierter Schaden

Ja / Nein

aus ICLCLAIM.ZZMIGRATED_CASE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ICLCLAIM.ZZRUECKVERS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_SFR_Belastung IS
'SFR-Belastung

Ja / nein

aus ICLCLAIM.ZZCHK_CHARGE_CL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_SchadenOhneForderung IS
'Schaden ohne Forderung

Berücksichtigt alle Teilschäden oder nur den "Fallkopf"??

aus ICLCLAIM,STNOCLAIM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Schadenfallart_B IS
'Interne "Fallart"

aus ICLCLAIM.CLAIMTYPE

1DKF		Hilfsmittel (PKV)
1H00		DE: Privathaft. Person
1H01		DE: Privathaft. SachVermMiet
1K01		DE: KH (Personen, Sach, Verm.)
1K02		DE: KH (Sach, Verm÷gen)
1K03		DE: Vollkasko
1K04		DE: Teilkasko Brand/Explosion
1K05		DE: Teilkasko Entwendung
1K06		DE: Teilkasko Glasbruch
1K07		DE: Teilkasko Elementarschaden
1K08		DE:Teilkasko Tier-/Wildschaden
1K09		DE: Teilkasko Marderbiss
1K10		DE: Teilkasko Kurzschluss
1K11		DE: Teilkasko Sonst TK-Tatbes.
1L00		DE: Hausrat Brand, Blitz
1L01		DE: Hausrat Sturm,Hagel
1L02		DE: Hausrat Leitungswasser
1L03		DE: Hausrat Einbruch,Diebstahl
1L04		DE: Hausrat Glasbruch
1L05		DE: Hausrat Fahrraddiebstahl
20AQ		Unfallfragebogen
20KO		Kieferorthop?die
20PH		Pharma II
20TR		Arzt-/Zahnbehandlung
20ZE		Zahnersatz
21KO		Kieferorthop?die
2610		Sammelregress (Dummy-Fall)
2AP			GKV: Allgemeiner Prozess
2FK			Fahrkosten
2HM		GKV: Heilmittel
2KST		Krankenhaus station?r ab 2000
2RST		Rehabilitation station?r
2SA0		PKV Kompakt Tarif
2ZL			Zahnersatz
3KHT		Krankenhaustagegeld
3KTG		Krankentagegeld
4000		Privathaftpflicht
4010		Privathaftpflicht SVM
4200		Hausrat Brand, Blitz
4201		Hausrat Einbruch / Diebstahl
4202		Hausrat Leitungswasser
4203		Hausrat Sturm / Hagel
4204		Hausrat
5ACC		Unfall
HABB		Hausrat VHB2000/ Brand, Blitz
HAED		Hausrat VHB2000/ ED
HALW		Hausrat VHB2000/ LW, Rohrbruch
HAP		GKV: Allgemeiner Prozess
HAPF		Gesetzliche Pflegeversicherung
HART		Hausrat VHB2000
HASH		Hausrat VHB2000/ Sturm, Hagel
HFK			Fahrkostenantrag
HIKV		GKV: Hilfsmittel
HIMI		GKV: Hilfmittel
HIPV		PV: Hilfsmittel
HKP			GKV: H?usliche Krankenpflege
HKST		Krankenhaus station?r ab 2000
HM			GKV: Heilmittel
HPKV		Private Krankenversicherung
HT			HO Theft
HZL			Zahnersatz
KDDS		Kraft Diebstahl des Kfz
KDDT		Kraft Teilentwendung aus Kfz
KDZ			Kraft Unfall
MCOM	Accident: Comprehensive
MTFA		Fire and Theft
MTPA		Accident: Third Party only
PAPA		Auto: Collision
PAPG		Auto: Glass Breakage
PAPT		Auto: Fire and Theft
TDF1		Test DummyFall
TDF2		DummyFall
ZH			Allgemeine Haftpflicht
ZKH			Kraftfahrt Haftpflicht
ZKK			Kraftfahrt Vollkasko
ZKT			Kraftfahrt Teilkasko
ZKV			Kraftfahrt Schutzbrief
ZSAS		Sach Sonstige
ZSG			Sach Geb?ude
ZSH			Sach Hausrat

Datenschutz $B
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Schadenursache IS
'... ist die Ursache des Schadens

aus ICLCLAIM.LOSSCAUSE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Schliessart IS
'Entspricht der alten KAS (aus SDS).
Z.Zt. nur für RS gefüllt.

91	Schließung nach Zusage ohne Entschädigung
92	Schließung nach Zusage und Entschädigungszahlungen
93	Schließung nach Ablehnung, RS-LA nicht versichert
94	Schließung und Regressforderung
95	Schließung nach Ablehnung, Risiko nicht versicherbar
96	Schließung nach #EVG/GDL#-Kulanz
97	Schließung nach Ablehnung # Vorsatzdelikt
98	Schließung nach Abl. # Mangelnde Erfolgsaussichten/Mutwil
99	Schließung nach Abl. # Schadeneintritt vorvertraglich/innerh

aus ICLCLAIM.ZZSCHLIESSART

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_SchuldigkeitSichtVN IS
'Schuldigkeit aus Sicht des VN

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus 

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_SchuldigkeitSichtVU IS
'Schuldigkeit des VN aus Sicht des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungeklärt
nicht relevant

aus ICLCLAIM.VIEWFAULT

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Sparte IS
'... ist die Sparte [hier spezielle Art von Schaden, Sparten zu betrachten einschließlich "Hausakten"]

aus ICLCLAIM.ZZDIVISION

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Steuerung IS
'... gibt an, welche Art der Schadensteuerung stattgefunden hat.

Fraglich ist, wie die Inhalte auf Fall- und Teilfallebene korrespondieren??

aus ICLCLAIM.ZZCLAIM_MGT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Unfallart IS
'Rückversicherung

1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

aus ICLCLAIM.ZZCATTYPE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_VIP_Schaden_C IS
'ein Schaden wird zum "VIP-Schaden", wenn mindestens eine am Schaden beteiligte Person das Kennzeichen VIP hat ( =geschützte Daten); so sind z.B. die Daten der DEVK-Mitarbeiter geschützt (besonders interessant für Zeugenschutz).

ja/ nein

aus ICLCLAIM.AUTHCLM

wegen Zeugenschutz: Datenschutz $C';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_VTP_Info IS
'VTP-Info Unfallregulierung

Ja/Nein

aus ICLCLAIM.ZZVTP_INFO

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und Bänderriß, Zerrung, Verrenkung, Zerreißung
03	Verstauchung,Quetschung,Erschütterung,Schürf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedmaßen / Sinnesorganen
07	Teil-/Verlust v. Gliedmaßen/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-erschütterung)
13	Infektionen (auch Wundinfektionen) außer Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

aus ICLCLAIM.ZZVERLETZUNG

Datenschutz $B';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Versicherungsart IS
'Versicherungsart

aus ICLCLAIM.ZZ_VSARL_VX

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_VersicherungsschutzVersagt IS
'Merker, ob Versicherungsschutz versagt

Ja / Nein

aus ICLCLAIM.ZZVSS_VERSAGT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_VertragsfuehrendeStelle IS
'... ist die Stelle (RD), die den Vertrag verwaltet. Entspricht der RD aus der Schadennummer.
Klären: evtl. als Schadenrolle abbilden??

aus ICLCLAIM.ZZRD

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_Wagnis IS
'... gibt Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags an, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

Gültige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

aus ICLCLAIM.ZZ_BETR_WGA

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.C_sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ICLCLAIM.XSENSITIVE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.CoC_Loeschdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gelöscht werden kann.

aus ICLCLAIM.ZZ_AUFBEW_DAT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.CoC_Sperrdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gesperrt werden kann.

aus ICLCLAIM.ZZ_SPERR_DAT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.CoC_VerlaengerungsGrund IS
'... ist ein Text, der im Zusammenhang mit der Verlängerung der CoC-Löschfrist erstellt wird.

aus ICLCLAIM.ZZ_AUFBEW_VERLAENG

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegenüber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ICLCLAIM.ZZCOVERAGE_QUOTE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Eintrittsdatum IS
'... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit).

Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt.

Die Uhrzeit "00:00:00" wird als ''Uhrzeit nicht vorhanden'' interpretiert.

Falldatum in FS-CM, ICLCLAIM.DATELOSS + ICLCLAIM.TIMELOSS

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.GesSchaden_geaendert_am IS
'Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ICLCLAIM.ACHANGETIME

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.GesSchaden_geaendert_von_A IS
'Änderer der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ICLCLAIM.ACHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.HoeheGeldbusse_B IS
'...ist die Höhe der Geldbuße

aus ICLCLAIM.ZZHOEHE_GELDBUSSE	NUMBER(16 , 2)

Datenschutz $B';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu sämtlichen Verträgen

aus ICLCLAIM.ZZCUST_PREMIUM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Karenzzeit_bis IS
'Arbeitslosenversicherung: Karenzzeit bis

aus ICLCLAIM.ZZAL_KARENZ

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Kundennr_Arbeitslosenvers_A IS
'... ist die Kundennummer der Arbeitslosenversicherung

aus ICLCLAIM.ZZAL_KDNR

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.LetzterPosteingang IS
'Datum des letzten Posteingangs

aus ICLCLAIM.ZZLAST_DOK_INPUT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Loeschdatum IS
'... ist das Liquidationsdatum der Schadenakte.

aus ICLCLAIM.ZZLDA

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLCLAIM.CLIENT

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Meldedatum IS
'... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde (unabhängig ob vom VN oder Geschädigten, .....).

aus ICLCLAIM.LOSSREPCOMPA

Datenschutz $-
';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Progression IS
'Progression in Prozent

0
225
300
350
500

aus ICLCLAIM.ZZPROGRESSION

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.SchadenSB_A IS
'... ist der Sachbearbeiter, der für den Schaden zuständig ist

aus ICLCLAIM.OWNER

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Schadennummer_A IS
'
aus CM:
ICLCLAIM.CLAIM (Schadennummer)

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Tagegeld_Beginn IS
'Tagegeld Leistungsbeginn nach wieviel Tagen

aus ICLCLAIM.ZZTG_BEGINN

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.VNR_Arbeitslosenvers_A IS
'... ist die Versicherungsnummer der Arbeitslosenversicherung

aus ICLCLAIM.ZZAL_VNR

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.Wiedervorlagedatum IS
'Datum der Wiedervorlage

aus ICLCLAIM.ARCHIVE_FLUD

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ICLCLAIM.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.angelegt_von_A IS
'... user, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ICLCLAIM.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.arbeitslos_VNSicht_ab IS
'Arbeitslos aus VN-Sicht seit

aus ICLCLAIM.ZZAL_VN

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.arbeitslos_ab IS
'Arbeitslos gemeldet zum

aus ICLCLAIM.ZZAL_GEMELDET

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLCLAIM.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_SHUKR_02_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLCLAIM.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.AZ_Gericht_A IS
'... ist das Aktenzeichen des Gerichts

aus ICLCLAIM.ZZAZ_GERICHT
	
Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.AZ_VN_Rechtsanwalt_A IS
'... ist das Aktenzeichen des Rechtsanwalts des VN

aus ICLCLAIM.ZZAZ_VN_RA
	
Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Ordnungswidrigkeit_Kennz IS
'Ordnungswidrigkeitsverfahren 

Ja / Nein

aus ICLCLAIM.ZZOWIVERF

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ICLCLAIM.ZZPROZESSAUSGANG

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ICLCLAIM.ZZSCHADENAUSGANG

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Sozialrechtsschutz_Kennz IS
'Sozialrechtsschutz 

Ja / Nein

aus ICLCLAIM.ZZSOZIALRECHTSS

Datenschutz $-? Bedeutung klären';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Strafverfahren_Kennz IS
'Strafverfahren 

Ja / Nein

aus ICLCLAIM.ZZSTRAFVERF

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz1 IS
'... ist die Währung für den Streitwert 1. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ_CURR1

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz2 IS
'... ist die Währung für den Streitwert 2. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ_CURR2

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz3 IS
'... ist die Währung für den Streitwert 3. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ_CURR3

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_aussergeri IS
'... ist die Währung für den Streitwert aussergerichtlich (nur RS)

aus ICLCLAIM.ZZAUSSER_GERICHTL

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLLITHEADER.CLIENT	(eigene Gerichtsverfahren)
aus ICLCLAIM.CLIENT			(Kunden-Prozesse als Schadenfälle der RS)

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Schadennummer_A IS
'...ist die Schadennummer

aus ICLCLAIM.CLAIM	(Kunden-Prozesse als Schadenfälle der RS)

Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz1 IS
'Streitwert 1. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ1

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz2 IS
'Streitwert 2. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ2

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz3 IS
'Streitwert 3. Instanz (nur RS)

aus ICLCLAIM.ZZINSTANZ3

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.Streitwert_aussergeri IS
'Streitwert aussergerichtlich (nur RS)

aus ICLCLAIM.ZZAUSSER_GERICHTL

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_Schaden_R_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_Gerichtsverfahren_BH.SK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_Gerichtsverfahren_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_Gerichtsverfahren_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER03_Gerichtsverfahren_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_Gerichtsverfahren_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE ER01_ER03_Kundenprozess_BL IS
'Zuordnung eines Gerichtsverfahrens zu einem Schaden, nur für Kunden-Prozesse als Schadenfälle der Rechtsschutzversicherung.
Für eigene Prozesse s. ER01_ER02_ER03_BL.

BK:
ICLLITHEADER.CLIENT (Mandant)
ICLLITHEADER.CLAIM (Schadennummer)

ICLLITHEADER.CLIENT (Mandant)
ICLLITHEADER.CLAIM (Schadennummer)

Dabei ist "Mandant" und "Schadennummer" in beiden Fällen identisch.';

COMMENT ON TABLE ER03_GerVerf_Schaden_R_01_HBS IS
'enthält Informationen über Kundenprozesse als Schadenfälle der Rechtsschutzversicherung';

COMMENT ON TABLE ER03_Gerichtsverfahren_BH IS
'... ist die gerichtliche Überprüfung eines Sachverhalts auf seine Rechtsfolgen.

BK aus ESA bei eigenen Prozessen:

ICLLITHEADER.CLIENT (Mandant)
ICLLITHEADER.CLAIM (Schadennummer)
ICLLITHEADER.LITHGUID (Universal Unique Identifier des Verfahrens)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.

BK aus ESA bei Kunden-Prozessen als Schadenfälle der Rechtsschutzversicherung:

ICLCLAIM.CLIENT (Mandant)
ICLCLAIM.CLAIM (Schadennummer)';

