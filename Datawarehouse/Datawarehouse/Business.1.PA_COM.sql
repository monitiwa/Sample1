--<ScriptOptions statementTerminator=";"/>
-- Version 11863

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.FK_GE02_Kommunikationsangabe IS
'... ist die DEVK-Weit eindeutige Nummer der Kommunikationsangabe, zu f�llen mit

- f�r Tele-Adressen aus Paris mit den 14 Stellen 01PNRANR (01 f�r PARIS)

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.FK_GE05_Anschrift IS
'
Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.SK_GE02_GE05_Komman_Anschrift IS
'
Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Komman_Anschrift_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.FK_GE02_GE05_Komman_Anschrift IS
'
Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_GE05_Par_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Adressermittlungsergebnis IS
'... ist das Ergebnis der Adressermittlung, i.d.R. EMA-Abfrage

aus PA01_230.SL_ERG_ADRSUCHE

s. Adressermittlungsergebnis_SL

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Adressermittlungsstand IS
'... ist der Stand des Adressermittlungsverfahrens.

aus PA01_230.SL_STD_GV

s. Adressermittlungsstand_SL

0 Keine Ermittlung eingeleitet / nicht mehr notwendig 
1 unbekannt verzogen / Keine Ermittlung eingeleitet unbekannt verzogen; keine Partner-Adress-Ermittlung eingeleitet
2 unbekannt verzogen / Ermittlung eingeleitet unbekannt verzogen; Partner-Adress-Ermittlung eingeleitet
3 unbekannt verzogen / Ermittlung erfolglos unbekannt verzogen; Partner-Adress-Ermittlung erfolglos

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Adresstyp IS
'Typ der Adresse als

- Zustelladresse
- Gro�kundenadresse (nur Name, PLZ und Ort)
- Postfachadresse (nur  Name, PLZ und Postfach)
- Auslandsadresse (4 Zeilen formatiert)

aus PA01_230.ADRESS_SUB


Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Kommunikationstyp IS
'... beschreibt den Typ der Kommunikationsangabe als Adresse eines Partners, z.B. Adresse, Handy, Festnetz, Email u.s.w

(Die Detail-Attribute zu Zustelladressen werden �ber den Link GE02_GE05_Komman_Anschrift_BL zugeordnet)

aus PA01_230: "Adresse"
aus PA01_232: "Telefon" oder "Fax", je nach PA01_232.ART_TK_GERAET
aus PA01_233: "Email" oder "Web-Adresse", je nach PA01_233.ART_ONL_ADR

Datenschutz $-
';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Laenderkennzeichen IS
'... ist das Kennzeichen des Landes in der die Adresse angesiedelt ist.

aus PA01_230.LKZ
evtl. aus PA01_232.TEL_NR_LAND ableitbar

L�nderkennzeichen zu L�ndern:
AFG		Afghanistan
ET		�gypten
AL		Albanien
GBA		Alderney
DZ		Algerien
AND	Andorra
ANG	Angola
RA		Argentinien
AZ		Aserbaidschan
ETH		�thiopien
AUS		Australien

BS		Bahama Inseln
BRN		Bahrain
BD		Bangladesch
BDS		Barbados
BY		Belarus (Wei�ru�land)
B			Belgien
BH		Belice
RPB		Benin
BUR		Birma
BOL		Bolivien
BIH		Bosnien Herzegowina
RB		Botsuana
BR		Brasilien
BRU		Brunei
BG		Bulgarien
BF		Burkina Faso
BU		Burundi
 
RCH	Chile
RC		China (Taiwan)
CR		Costa Rica

DK		D�nemark
D			Deutschland
DOM	Dominikanische Republik

EC		Ecuador
ES		El Salvador
CI			Elfenbeink�ste
ER		Eritrea
EST		Estland

FR		Faeroer-Inseln                
FJI		Fidschi Inseln
FIN		Finnland
F			Frankreich
 
WAG	Gambia
GE		Georgien
GH		Ghana
GBZ		Gibraltar
WG		Grenada
GR		Griechenland
GB		Gro�britanien
GCA	Guatemala                     
GBG		Guernsey
GUY		Guyana

RH		Haiti
HN		Honduras
HK		Hongkong

ind		Indien
RI			Indonesien
GBM	Insel Man
IRQ		Irak
IR			Iran
IRL		Irland
IS			Island
IL			Israel
I			Italien

JA		Jamaica
J			Japan
ADN	Jemen D. V.
GBJ		Jersey
JOR		Jordanien
YU		Jugoslawien (Serbien/Montenegr
 
K			Kambodscha
RFC		Kamerun
CDN	Kanada
KZ		Kasachstan                   
Q			Katar
EAK		Kenia
KS		Kirgistan
CO		Kolumbien
RCB		Kongo
KSA		K�nigreich Saudi Arabien
ROK		Korea (S�d)
HR		Kroatien
C			Kuba
KWT	Kuweit

LAO		Laos
LS		Lesotho
LV		Lettland
RL		Libanon
LB		Liberia
LAR		Libyen
FL		Liechtenstein
LT		Litauen
L			Luxemburg

RM		Madagaskar
RMM	Maili
MAL	Malaysia
M			Malta
MA		Marokko
RIM		Mauritanien
MS		Mauritius
MK		Mazedonien (ehm. jug. Rep.)
MEX	Mexico
MD		Moldau
MC		Monaco
MOC	Mosambik

NAM	Namibia
NZ		Neuseeland
NIC		Nicaragua
NA		Niederl. Antillen
NL		Niederlande
RN		Niger
WAN	Nigeria
N			Norwegen

HV		Obervolta
OM		Oman
A			�sterreich

PK		Pakistan
PA		Panama
PY		Paraguay
PE		Peru
RP		Philippinen
PL		Polen
P			Portugal
 
RWA	Ruanda
RO		Rum�nien
RUS		Russ. F�d.

Z			Sambia
WS		Samoa
RSM	San Marino
S			Schweden
CH		Schweiz
SN		Senegal
SY		Seychellen
WAL	Sierra Leone
SGP		Singapur
SK		Slowakische Republik
SLO		Slowenien
SP		Somalia
SU		Sowjetunion
E			Spanien
CL		Sri Lanka
ZA		S�dafrika
EAS		Sudan
SNE		Surinam
SD		Swasiland
SYR		Syrien

TJ			Tadschikistan
EAT		Tansania
THA	Thailand
TG		Togo
TT		Trinidad u. Tobago
CZ		Tschechische Republik
TN		Tunesien
TR		T�rkei
TM		Turkmenistan

EAU		Uganda
UA		Ukraine
H			Ungarn
ROU	Uruguay
UZ		Usbekistan

SCV		Vatikan
YV		Venezuela
USA		Vereinigte Staaten
UAE		Vereinigte Arabische Emirate
VN		Vietnam

WD		Windward-Insel Dominica
WL		Windward-Insel Saint Lucia
WV		Windward- Insel Saint Vincent
Y			Yemen

ZRE		Zaire
RCA		Zentralafrika Kaiserb.
ZW		Zimbabwe
CY		Zypern

ZZZ		L�nder ohne LKZ

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_Nutzungsart IS
'.. ist die Nutzungsart der Wohnung bzw. des Telefons oder Mail-Accounts.

aus PA01_230.SL_PD_NUTZUNG
aus PA01_232.SL_PD_NUTZUNG
aus PA01_233.SL_PD_NUTZUNG

Nutzungsart_SL:
1	P		privat
2	D		dienstlich
3	PD	privat-dienstlich
4	Leereintrag

bea.: es existieren weitere Auspr�gungen des Schl�ssels, die in diesem Attribut nicht auftreten sollten.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.C_UnipostKennzeichen IS
'... enth�lt den Zustand der Adresse bzgl. der Unipost-Pr�fung.

aus PA01_230.SL_UNIPOST

UNIPOST_SL:
0	nicht gepr�ft									nicht gepr�ft
1	Unipost-Bestand							Adresse im Unipost-Bestand enthalten ( postalisch gepr�ft und g�ltig )
2	nicht maschinell korrigierbar		nicht maschinell korrigierbar

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.E_Mail_Adresse_A IS
'... ist eine Adressangabe f�r einen E-Mail-Account, z.B.  Vorname@Name.de

PA01_233.NAME_BENUTZER || ''@'' || PA01_233.BZ_SERVER

Datenschutz $A1';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.FK_GE02_Kommunikationsangabe IS
'

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Faxnummer_A IS
'... ist eine eindeutige Identifikation eines Fax-Anschlusses.

Datenschutz $A1';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.GDV_DienstleisterOrdnungsbegr IS
'... ist die vom GDV verwendete Kennung f�r VU und IT-Dienstleister (?)

aus PA01_233.NR_DIENSTL_PART

s. GDV Satzart 4001:
"F�r VU : 
	VU-Nummer 5 Stellen 
	Gesch�ftstellennummer 3 Stellen 
	Rest (VU-intern verwendbar) 18 Stellen 
F�r (IT-)Dienstleister: 
	(IT-)Dienstleisterpartnernummer 26 Stellen"

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.GDV_Dienstleisternummer_A IS
'.. ist die durch den GDV vergebene Nummer eines Dienstleistungspartners

aus PA01_233.NR_DIENSTLEISTER


s. GDV Satzart 4001:
"Der Schl�ssel des (IT-)Dienstleisters (gem. Anlage 112). (  http://www.gdv-online.de/snetz/release2003/anl112.htm )
F�r VU: DL 0098 = GDV"

siehe GDV-Anlage 112, Auszug:

0001 Claims 									 nicht mehr g�ltig 
0002 Dekra - DSN  
0003 Audatex - AIDA  
0004 DAT  
0005 GDV-Dienstleistungs KG (Notruf d. Autovers.)  
0006 carexpert  
0007 T�V Schaden- und Wertgutachten GmbH   
...
0011 carglas  
...
0016 Sixt Autovermietung  
...
0019 Zentralruf der Autoversicherer  
...
0098 GDV (Dienstleister f�r Versicherungsunternehmen)  
0099 Sonstige  
00A0 Generali Schadenmanagement GmbH (intern)  
00A1 Debeka - intern -  
00A2 Gothaer (intern)  
00A3 Janitos-Versicherung (intern)  
00A4 Car Service Portal GmbH   
00A5 MBS Maier Bereitstellungs-Service f�r Trocknungsger�te GmbH  
00A6 WOM WreckOnlineMarket AG  
00A7 SanExperts GmbH  
00A8 Actineo GmbH   
00A9 ICAM System (zus�tzlich)  
00AA Pfeifer GmbH Die Sanierungs-Experten  
00AB DMS-Deutschland GmbH  
00C0 Tesch Inkasso 								nur Forderungsmanagement 
00C1 Debitor-Inkasso GmbH 				nur Forderungsmanagement 
00C2 Sirius Inkasso GmbH 					nur Forderungsmanagement 
00C3 Tesch Service GmbH					nur Forderungsmanagement 
00F0 BaFin nur VAM 
00Z0 VGH (intern) 

Datenschutz $A1';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.KommId_lfd IS
'... ist die laufende Nummer der Kommunikationsangabe aus Paris zum Partner

aus PA01_230.LFD_ADR
aus PA01_232.LFD_ADR
aus PA01_233.LFD_ADR

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_230.POB
aus PA01_232.POB
aus PA01_233.POB

Datenschutz $A1';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Postfach_A IS
'... ist die Bezeichnung des Postfachs bei Postfachadressen

aus PA01_230.NR_POSTFACH


Datenschutz $A2';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Postleitzahl_A IS
'... ist die Postleitzahl als Teil der postalischen Postfach-Anschrift oder die Gro�kunden-Postleitzahl bei Post-Gro�kunden.

aus  PA01_230.PLZ

Datenschutz $A2';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Telefonnummer_A IS
'... ist eine eindeutige Identifikation eines Telefon-Anschlusses.

In PARIS separat als L�ndervorwahl, Vorwahl, Teilnehmernummer und Durchwahl:
PA01_232.TEL_NR_LAND || PA01_232.TEL_NR_NETZ || PA01_232.TEL_NR_TEILN || PA01_232.TEL_NR_DURCHW

Datenschutz $A1';

COMMENT ON COLUMN GE02_KommAng_Par_01_HBS.Web_Adresse_A IS
'... ist eine Adressangabe f�r eine Seite im Internet, z.B.  www.Vorname.Name.de

Datenschutz $A1';

COMMENT ON COLUMN GE02_Kommunikationsangabe_BH.SK_GE02_Kommunikationsangabe IS
'... ist die DEVK-Weit eindeutige Nummer der Kommunikationsangabe, zu f�llen mit

- f�r Tele-Adressen aus Paris mit den 14 Stellen 01PNRANR (01 f�r PARIS)

Datenschutz $-';

COMMENT ON COLUMN GE02_Kommunikationsangabe_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_Kommunikationsangabe_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE02_Kommunikationsangabe_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE02_Kommunikationsangabe_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_BH.SK_GE05_Anschrift IS
'
Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Adresszusatz_A IS
'... ist eine unstrukturierte Erg�nzung zur Adresse.
Beispiele:
-  Etage/Stock/OG/UG/Garten/Vorder-/Hinterhaus/..
-  Angaben bzgl. Ortsteile, Wohnungs-, Zimmer-,Appartement- und sonstige Nummern
-  Hinweise auf (vor�bergehende) Mitbewohner(innen): "c/o", "z.Hd.", "bei",...

aus PA01_230.ZUSATZ_ADRESSE
in der Quelle 30 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.AnschriftenNr IS
'... ist die laufende Nummer der Anschrift zu einem Partner (aus PARIS).

aus PA01_230.LFD_ADR

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Auslandsadresse_A IS
'...enth�lt eine Auslandsadreese als 4 formatierte Zeilen (� 35 Zeichen).

aus PARIS PA01_230.ADRESSABSCHN1 bis ADRESSABSCHN4
in der Quelle insgesamt 140 Stellen

Datenschutz $A1';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.C_Adressermittlungsergebnis IS
'... ist das Ergebnis der Adressermittlung, i.d.R. EMA-Abfrage

aus PA01_230.SL_ERG_ADRSUCHE

s. Adressermittlungsergebnis_SL

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.C_Adressermittlungsstand IS
'... ist der Stand des Adressermittlungsverfahrens.

aus PA01_230.SL_STD_GV

s. Adressermittlungsstand_SL

0 Keine Ermittlung eingeleitet / nicht mehr notwendig 
1 unbekannt verzogen / Keine Ermittlung eingeleitet unbekannt verzogen; keine Partner-Adress-Ermittlung eingeleitet
2 unbekannt verzogen / Ermittlung eingeleitet unbekannt verzogen; Partner-Adress-Ermittlung eingeleitet
3 unbekannt verzogen / Ermittlung erfolglos unbekannt verzogen; Partner-Adress-Ermittlung erfolglos

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.C_Laenderkennzeichen IS
'... ist das Kennzeichen des Landes in der die Adresse angesiedelt ist.

aus PA01_230.LKZ

L�nderkennzeichen zu L�ndern:
AFG		Afghanistan
ET		�gypten
AL		Albanien
GBA		Alderney
DZ		Algerien
AND	Andorra
ANG	Angola
RA		Argentinien
AZ		Aserbaidschan
ETH		�thiopien
AUS		Australien

BS		Bahama Inseln
BRN		Bahrain
BD		Bangladesch
BDS		Barbados
BY		Belarus (Wei�ru�land)
B			Belgien
BH		Belice
RPB		Benin
BUR		Birma
BOL		Bolivien
BIH		Bosnien Herzegowina
RB		Botsuana
BR		Brasilien
BRU		Brunei
BG		Bulgarien
BF		Burkina Faso
BU		Burundi
 
RCH	Chile
RC		China (Taiwan)
CR		Costa Rica

DK		D�nemark
D			Deutschland
DOM	Dominikanische Republik

EC		Ecuador
ES		El Salvador
CI			Elfenbeink�ste
ER		Eritrea
EST		Estland

FR		Faeroer-Inseln                
FJI		Fidschi Inseln
FIN		Finnland
F			Frankreich
 
WAG	Gambia
GE		Georgien
GH		Ghana
GBZ		Gibraltar
WG		Grenada
GR		Griechenland
GB		Gro�britanien
GCA	Guatemala                     
GBG		Guernsey
GUY		Guyana

RH		Haiti
HN		Honduras
HK		Hongkong

ind		Indien
RI			Indonesien
GBM	Insel Man
IRQ		Irak
IR			Iran
IRL		Irland
IS			Island
IL			Israel
I			Italien

JA		Jamaica
J			Japan
ADN	Jemen D. V.
GBJ		Jersey
JOR		Jordanien
YU		Jugoslawien (Serbien/Montenegr
 
K			Kambodscha
RFC		Kamerun
CDN	Kanada
KZ		Kasachstan                   
Q			Katar
EAK		Kenia
KS		Kirgistan
CO		Kolumbien
RCB		Kongo
KSA		K�nigreich Saudi Arabien
ROK		Korea (S�d)
HR		Kroatien
C			Kuba
KWT	Kuweit

LAO		Laos
LS		Lesotho
LV		Lettland
RL		Libanon
LB		Liberia
LAR		Libyen
FL		Liechtenstein
LT		Litauen
L			Luxemburg

RM		Madagaskar
RMM	Maili
MAL	Malaysia
M			Malta
MA		Marokko
RIM		Mauritanien
MS		Mauritius
MK		Mazedonien (ehm. jug. Rep.)
MEX	Mexico
MD		Moldau
MC		Monaco
MOC	Mosambik

NAM	Namibia
NZ		Neuseeland
NIC		Nicaragua
NA		Niederl. Antillen
NL		Niederlande
RN		Niger
WAN	Nigeria
N			Norwegen

HV		Obervolta
OM		Oman
A			�sterreich

PK		Pakistan
PA		Panama
PY		Paraguay
PE		Peru
RP		Philippinen
PL		Polen
P			Portugal
 
RWA	Ruanda
RO		Rum�nien
RUS		Russ. F�d.

Z			Sambia
WS		Samoa
RSM	San Marino
S			Schweden
CH		Schweiz
SN		Senegal
SY		Seychellen
WAL	Sierra Leone
SGP		Singapur
SK		Slowakische Republik
SLO		Slowenien
SP		Somalia
SU		Sowjetunion
E			Spanien
CL		Sri Lanka
ZA		S�dafrika
EAS		Sudan
SNE		Surinam
SD		Swasiland
SYR		Syrien

TJ			Tadschikistan
EAT		Tansania
THA	Thailand
TG		Togo
TT		Trinidad u. Tobago
CZ		Tschechische Republik
TN		Tunesien
TR		T�rkei
TM		Turkmenistan

EAU		Uganda
UA		Ukraine
H			Ungarn
ROU	Uruguay
UZ		Usbekistan

SCV		Vatikan
YV		Venezuela
USA		Vereinigte Staaten
UAE		Vereinigte Arabische Emirate
VN		Vietnam

WD		Windward-Insel Dominica
WL		Windward-Insel Saint Lucia
WV		Windward- Insel Saint Vincent
Y			Yemen

ZRE		Zaire
RCA		Zentralafrika Kaiserb.
ZW		Zimbabwe
CY		Zypern

ZZZ		L�nder ohne LKZ

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.C_UnipostKennzeichen IS
'... enth�lt den Zustand der Adresse bzgl. der Unipost-Pr�fung.

aus PA01_230.SL_UNIPOST

UNIPOST_SL:

0	nicht gepr�ft									nicht gepr�ft
1	Unipost-Bestand							Adresse im Unipost-Bestand enthalten ( postalisch gepr�ft und g�ltig )
2	nicht maschinell korrigierbar		nicht maschinell korrigierbar

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.FK_GE05_Anschrift IS
'
Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.GDV_DienstleisterOrdnungsbegr IS
'... ist die vom GDV verwendete Kennung f�r VU und IT-Dienstleister (?)

PA01_233.NR_DIENSTL_PART 
in der Quelle 26 Stellen

s. GDV Satzart 4001:
"F�r VU : 
	VU-Nummer 5 Stellen 
	Gesch�ftstellennummer 3 Stellen 
	Rest (VU-intern verwendbar) 18 Stellen 
F�r (IT-)Dienstleister: 
	(IT-)Dienstleisterpartnernummer 26 Stellen"

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Hausnummer_A IS
'... ist die Hausnummer als Teil der postalischen Anschrift.

aus PA01_230.HAUSNR
in der Quelle 9 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Ortsname_A IS
'... ist der Ortsname als Teil der postalischen Anschrift.

aus  PA01_230.ORT
in der Quelle 24 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Ortsteil_A IS
'... ist der Ortsteilname als Teil der postalischen Anschrift.

azus PA01_230.ORTSTEIL
in der Quelle 30 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_230.POB

Datenschutz $A1';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Postleitzahl_A IS
'... ist die Postleitzahl als Teil der postalischen Anschrift.

aus  PA01_230.PLZ
in der Quelle 6 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.Strassenname_A IS
'... ist der Stra�enname als Teil der postalischen Anschrift.

aus PA01_230.STRASSE
in der Quelle 23 Stellen

Datenschutz $A2';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN GE05_Anschrift_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.FK_GE02_Kommunikationsangabe IS
'... ist die DEVK-Weit eindeutige Nummer der Kommunikationsangabe, zu f�llen mit

- f�r Tele-Adressen aus Paris mit den 14 Stellen 01PNRANR (01 f�r PARIS)

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.SK_PA01_GE02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.FK_GE02_PA01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)

Datenschutz $-
 ';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_GE02_Par_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.FK_PA01_Partner_P IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.SK_PA01_PA01_PA02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.FK_PA01_PA01_PA02 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA01_PA02_Par_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.FK_PA05_Bankverbindung IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.SK_PA01_PA02_PA05 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.FK_PA01_PA02_PA05 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_PA05_Par_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.FK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.SK_PA01_PA02_WE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.FK_PA01_PA02_WE01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_WE01_Par_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erb_kz IS
'1: Erbengemeinschaft, aber Erben unbekannt
2: Erbengemeinschaft, Erben bekannt

aus PA01_208.ERB_KZ

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_ABCV_Beschein_liegt_vor IS
'f�r denErblasser.
Agrarier
Beamter
C
Vereinsmitglied
liegt nicht vor

Bildet die Eingabe "A/B/C/V-Besch. liegt vor" und "A/B/C/V -Besch. anfordern" ab

20      A/B/C/V-Besch liegt vor = "N" und 
          A/B/C/V -Besch anfordern = "N"
80      A/B/C/V-Besch liegt vor und VN im
          Ruhestand

(unvollst�ndig)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_ACV_Mitglied IS
'Der Erblasser war ACV-Mitglied?

ja/nein

ja, falls this -> H_Partner -> L_Partner_Partner_Rolle -> S_Partner_Partner_Rolle.Rollenname=Mitglied where this -> H_Partner -> POB_y.L_Partner_Partner_Rolle ->POB_x.H_Partner.Kurzname=ACV and x<>y

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Akademiker IS
'.. enth�lt den akademischen Grad des Erblassers.

aus PA01_202.SL_AKADEMIKER

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Anrede IS
'Anrede des Erblassers.

... ausgeschrieben
Herr
Frau
...

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Familienstand IS
'Familienstand des Erblassers.

aus PA01_202.FAMILIENSTAND

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Fuehrerscheinklasse IS
'F�hrerscheinklasse des Erblassers.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Geschlecht IS
'Geschlecht des Erblassers.

aus PA01_202.GESCHLECHT

m�nnlich
weiblich
laut PARIS zus�tzlich:
unbekannt
m�nnlich nach Geschlechtsumwandlung
weiblich nach Geschlechtsumwandlung

Falls letztere beiden �berhaupt in PARIS existieren sollten, werden sie wegen Datenschutz in "m�nnlich" bzw. "weiblich" transformiert.

ZUR BEACHTUNG: Ohne die o.a. Transformation ist dieses Attribut nur in anonymisierten Best�nden zul�ssig( Datenschutz C) !!

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Nationalitaet IS
'Dieses Attribut bezeichnet die Staatsangeh�rigkeit des Erblassers, nicht ethnische Besonderheiten oder Minderheiten.

aus PA01_202.NATIONALITAET

00 - Deutschland
10 - keine Nationalit�t angegeben (ab 01.07.04)
50 - Albanien
51 - Bulgarien
52 - Bosnien-Herzegowina (A)
53 - Belarus (Wei�ru�land)
54 - Schweiz
55 - Estland
56 - Finnland
57 - Liechtenstein
58 - Kroatien (A)
59 - Island
60 - Litauen
61 - Lettland
62 - Monaco
63 - Norwegen
64 - Rum�nien
65 - Russische F�deration
66 - Schweden
67 - Slowenien (A)
68 - Ukraine
71 - Belgien
72 - D�nemark
73 - Frankreich
74 - Grossbritannien
75 - Irland
76 - Italien (A)
77 - Luxemburg
78 - Niederlande
81 - Polen
82 - ehm. Tschecheslowakei (nicht mehr g�ltig)
83 - Ungarn
84 - Tschechien
85 - sonstige Osteurop�er
86 - Slowakei
88 - Marokko
89 - Tunesien

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Partnertyp IS
'... ist die Spezialisierung des Partners, hier des Erblassers.

aus PA01_202.PARTNER_SUB (immer "2")

nur bei Bef�llung aus nat. Person zu setzen.

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Ruhestand IS
'Der Erblasser war im Ruhestand?

ja /nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_Titel IS
'Adelstitel des Erblassers.

aus PA01_202.TITEL_ADEL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_selbsstaendig_KZ IS
'Der Erblasser war selbstst�ndig?

ja / nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erbl_verstorben IS
'Ist der Erblasser verstorben? Zur Feststellung von inkonsistenten EIngaben in PARIS.

ja / nein

aus PA01_202.KZ_VERSTORBEN

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Erstkontakt IS
'...dokumentiert, wie der Erstkontakt zustande kam. Siehe PARIS-Schl�sseltabelle Erstkontakt_SL:

aus PA01_202.ERSTKONTAKT_SL
aus PA01_204.ERSTKONTAKT_SL

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Au�end.
angest. Au�end.
hauptberufl. Au�end.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Gro�kundenbetreuung RD 27
allgemeines Maklergesch�ft

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_GeschaeftsbezFirma IS
'1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

s. GBS_1Stelle_SL
Firma
1.Stelle = 0 Sonstige und ohne Bereich
1.Stelle = 1 Deutsche Bahn AG
1.Stelle = 2 DB AG-Nebenbetriebe,
                    -soziale Einrichtungen und
                    -Tochterunternehmen
1.Stelle = 3 sonstige �ffentliche Linienverkehrsunternehmen
1.Stelle = 4 Bundesverkehrsministerium und nachgeordnete Beh�rden
1.Stelle = 5 Deutsche Bundespost
1.Stelle = 6 Sonstiger �ffentlicher Dienst
1.Stelle = 7 Industrie, Baugewerbe, Bergbau
1.Stelle = 8 Handwerk, Landwirschaft            
1.Stelle = 9 Dienstleistung, Handel 

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_GeschaeftsbezFirmaTarif IS
'wie GeschaeftsbezFirma, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 1. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_1Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_GeschaeftsbezTaetigkeit IS
'2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

T�tigkeit
2.Stelle = 0 ohne T�tigkeit
2.Stelle = 1 Beamter
2.Stelle = 2 Angestellter
2.Stelle = 3 Arbeiter
2.Stelle = 4 Selbstst�ndige, Freiberufler, Unternehmer,Gesch�ftsf�hrer
2.Stelle = 5 Firmen und juristische Personen
2.Stelle = 6 Verb�nde, Vereine
2.Stelle = 7 nicht mehr t�tig (Versorgungsempf�nger)
2.Stelle = 8 Hausfrauen
2.Stelle = 9 Person in Ausbildung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif IS
'wie GeschaeftsbezTaetigkeit, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 2. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_2Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Gueterstand IS
'G�terstand der Partnergemeinschaft

aus PA01_204.SL Gueterstand:

01 kein G�terstand 
02 G�tergemeinschaft
03 G�tertrennung
04 Zugewinngemeinschaft
05 unbekannt

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Makler IS
'Partner ist Makler

ja / nein

aus PA01_208.MAKLER

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Partnergemeinschaftsart IS
'Art der Partnergemeinschaft

konstant immer "00"

PartnerGemArt_SL:

08	Ehe-/Lebensp.										Ehe-/Lebenspartnerschaft
09	ehe�hnliche Gem.									ehe�hnliche Gemeinschaft (Lebensgemeinschaft)
04	Haushalt													Haushalt
00	Erbenge.													Erbengemeinschaft
07	Eigent�merge.										Eigent�mergemeinschaft
01	Versichertenge.										Versichertengemeinschaft
03	Soziet�t, 	GbR											Soziet�t, GbR (wie Kanzleien, Steuerberatergesellschaften, Wirtschaftspr�fer) 
02	B�ro/Praxisge., GbR								B�ro/Praxisgemeinschaft, GbR
10	Gemeinschaftspraxis, GbR					Gemeinschaftspraxis, GbR
99	Partnergemeinschaftsart unbekannt	Partnergemeinschaftsart unbekannt

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Partnertyp IS
'... ist die Spezialisierung des Partners, also 

aus PA01_202.PARTNER_SUB (immer "2")
aus PA01_204.PARTNER_SUB (immer "4")

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Personenzustand_Ident IS
's. Datenkat. 120-Personenzustand Stelle 2

- 0 - - 	nicht definiert		
- 5 - -	Verstorben		
- 7 - -	Identifikation nachgewiesen

aus PA01_208.ZUSTG2

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Personenzustand_neg_B IS
'aus PA01_208.ZUSTG4

s. Datenkat. 120-Personenzustand Stelle 4

- - - 0 	nicht definiert	
- - - 1	unerw�nschte Person (nat�rliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Personenzustand_pos_B IS
'aus PA01_208.ZUSTG3

s. Datenkat. 120-Personenzustand Stelle 3

- - 0 - 	nicht definiert	
- - 1 -	erw�nschte Person (nat�rliche / juristische) - ohne Grund	
- - 2 - 	einflu�reiche Person (nat�rliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Gro�kunde	
- - 5 - 	Identifikation pr�fen	


Ibs. wegen Auspr�gung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_SchutzKennzeichen_B IS
'... identifiziert besonders gesch�tzte Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

Zur Zeit existieren nur zwei Auspr�gungen entsprechend "ja / nein". Im Rahmen laufender Projekte wird das Schutzbed�rfnis detaillierter beschrieben werden. Die dann existierenden Auspr�gungen werden beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur f�r bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschr�nkten Nutzerkreisen zu Kenntnis gebracht werden d�rfen.

geplante Auspr�gungen s. Partnerschutz_SL:

0 ungesch�tzt
1 gesch�tzt
2 einfacher Schutz
3 erweiterter Schutz
4 besonderer Schutz

2-4 werden noch nicht verwendet (04/2013)

aus PA01_207, Schl�sseltabelle Schutz_SL

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Telefonwerbung IS
'Einverst�ndnis zur oder Ablehnung der telefonischen Werbung

aus PA01_224.TEL_WERBUNG_SL

0 unbekannt
1 Uneingeschr�nkte Telefonwerbung; Einverst�ndniserkl�rung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverst�ndniserkl�rung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdr�cklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_Werbeunterdrueckung IS
'...dokumentiert Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

aus PA01_202.KZ_WERBE_STOP
aus PA01_204.KZ_WERBE_STOP

Werbung erw�nscht
keinerlei Werbung erw�nscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gew�nscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.C_vereinbDatenschutz IS
'vereinbarte Datenschutzerkl�rung, s. PARIS-Schl�sseltabelle Datensch_SL

aus PA01_202.SL_VEREINB_DSCH
aus PA01_204.SL_VEREINB_DSCH 

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.ErbL_Sozialversicherungsnr_AB IS
'...ist die externe Nummer der Bundes- bzw. Landesversicherungsanstalt f�r Angestellte; fr�her: Rentenversicherungsnummer

aus PA01_202.NR_SOZIAL_VERS

Datenschutz $A1B';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Beruf IS
'Beruf des Erblassers. Abbildung als Aufz�hlungstyp in paris gescheitert, daher Freitext

aus PA01_208.BERUF           

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Geburtsdatum_A IS
'Geburtsdatum des Erblassers.

s. auch ''Erbl_Geburtsjahr'' wg. Datenschutz.

aus PA01_202.DAT_GEBURT

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Geburtsjahr IS
'... ist das Jahr aus dem Geburtsdatum bzw. der 1.1. des Geburtsjahres des Erblassers. Dieses Datum steht f�r Auswertungen zur Verf�gung, deren Zweck keinen Personenbezug zul�sst.

aus PA01_202.DAT_GEBURT

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Geburtsort IS
'Geburtsort des Erblassers.

aus PA01_202.GEB_ORT

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Gewerbe IS
'... ist eine wirtschaftliche T�tigkeit des Erblassers, die auf eigene Rechnung, eigene Verantwortung und auf Dauer mit der Absicht zur Gewinnerzielung betrieben wird.

Klartext

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Namenszusatz_A IS
'sen., jun., leer (des Erblassers).

aus PA01_202.ZUSATZ_NAME

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Sterbedatum IS
'Sterbedatum des  Erblassers.

aus aus PA01_202.DAT_STERBE

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erbl_Vorname_A IS
'... ist der Vorname des Erblassers.

aus PA01_202.VORNAME

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Name_A IS
'... ist der Nachname  des Erblassers bzw. die Bezeichnung der Erbengemeinschaft.

aus PA01_202.NAME_NP
aus PA01_204.NAME_PARTNERGEM

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_202.POB bzw. aus PA01_204.POB

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGemErb_Par_01_HBS.Vermittlerkontonummer_A IS
'Vermittler-Kto-Nr. des Vermittlers, der zu dieser Person als letzter Abschlu�-Provision erhielt.

aus PA01_208.VERMIT

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Erstkontakt IS
'...dokumentiert, wie der Erstkontakt zustande kam. Siehe PARIS-Schl�sseltabelle Erstkontakt_SL:

aus PA01_204.ERSTKONTAKT_SL

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Au�end.
angest. Au�end.
hauptberufl. Au�end.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Gro�kundenbetreuung RD 27
allgemeines Maklergesch�ft

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_GeschaeftsbezFirma IS
'1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

s. GBS_1Stelle_SL
Firma
1.Stelle = 0 Sonstige und ohne Bereich
1.Stelle = 1 Deutsche Bahn AG
1.Stelle = 2 DB AG-Nebenbetriebe,
                    -soziale Einrichtungen und
                    -Tochterunternehmen
1.Stelle = 3 sonstige �ffentliche Linienverkehrsunternehmen
1.Stelle = 4 Bundesverkehrsministerium und nachgeordnete Beh�rden
1.Stelle = 5 Deutsche Bundespost
1.Stelle = 6 Sonstiger �ffentlicher Dienst
1.Stelle = 7 Industrie, Baugewerbe, Bergbau
1.Stelle = 8 Handwerk, Landwirschaft            
1.Stelle = 9 Dienstleistung, Handel 

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_GeschaeftsbezFirmaTarif IS
'wie GeschaeftsbezFirma, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 1. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_1Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_GeschaeftsbezTaetigkeit IS
'2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

T�tigkeit
2.Stelle = 0 ohne T�tigkeit
2.Stelle = 1 Beamter
2.Stelle = 2 Angestellter
2.Stelle = 3 Arbeiter
2.Stelle = 4 Selbstst�ndige, Freiberufler, Unternehmer,Gesch�ftsf�hrer
2.Stelle = 5 Firmen und juristische Personen
2.Stelle = 6 Verb�nde, Vereine
2.Stelle = 7 nicht mehr t�tig (Versorgungsempf�nger)
2.Stelle = 8 Hausfrauen
2.Stelle = 9 Person in Ausbildung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif IS
'wie GeschaeftsbezTaetigkeit, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 2. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_2Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Gueterstand IS
'G�terstand der Partnergemeinschaft

aus PA01_204.SL Gueterstand:

01 kein G�terstand 
02 G�tergemeinschaft
03 G�tertrennung
04 Zugewinngemeinschaft
05 unbekannt

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Makler IS
'Partner ist Makler

ja / nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Partnergemeinschaftsart IS
'Art der Partnergemeinschaft

aus PA01_204.SL_PARTNERGEM

PartnerGemArt_SL:

08	Ehe-/Lebensp.										Ehe-/Lebenspartnerschaft
09	ehe�hnliche Gem.									ehe�hnliche Gemeinschaft (Lebensgemeinschaft)
04	Haushalt													Haushalt
00	Erbenge.													Erbengemeinschaft
07	Eigent�merge.										Eigent�mergemeinschaft
01	Versichertenge.										Versichertengemeinschaft
03	Soziet�t, 	GbR											Soziet�t, GbR (wie Kanzleien, Steuerberatergesellschaften, Wirtschaftspr�fer) 
02	B�ro/Praxisge., GbR								B�ro/Praxisgemeinschaft, GbR
10	Gemeinschaftspraxis, GbR					Gemeinschaftspraxis, GbR
99	Partnergemeinschaftsart unbekannt	Partnergemeinschaftsart unbekannt

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Partnertyp IS
'... ist die Spezialisierung des Partners, also 

aus PA01_204.PARTNER_SUB (immer "4")

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Personenzustand_neg_B IS
'aus PA01_208.ZUSTG4

s. Datenkat. 120-Personenzustand Stelle 4

- - - 0 	nicht definiert	
- - - 1	unerw�nschte Person (nat�rliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Personenzustand_pos_B IS
'aus PA01_208.ZUSTG3

s. Datenkat. 120-Personenzustand Stelle 3

- - 0 - 	nicht definiert	
- - 1 -	erw�nschte Person (nat�rliche / juristische) - ohne Grund	
- - 2 - 	einflu�reiche Person (nat�rliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Gro�kunde	
- - 5 - 	Identifikation pr�fen	


Ibs. wegen Auspr�gung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Telefonwerbung IS
'Einverst�ndnis zur oder Ablehnung der telefonischen Werbung

aus PA01_224.TEL_WERBUNG_SL

0 unbekannt
1 Uneingeschr�nkte Telefonwerbung; Einverst�ndniserkl�rung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverst�ndniserkl�rung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdr�cklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_Werbeunterdrueckung IS
'...dokumentiert Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

aus PA01_204.KZ_WERBE_STOP

Werbung erw�nscht
keinerlei Werbung erw�nscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gew�nscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.C_vereinbDatenschutz IS
'vereinbarte Datenschutzerkl�rung, s. PARIS-Schl�sseltabelle Datensch_SL

aus PA01_204.SL_VEREINB_DSCH 

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Name_A IS
'... ist f�r nat�rliche Personen der Nachname (=Name_NP in PARIS) und f�r juristische Personen der Name (=Name_Inst in PARIS, =Zuname1+Zuname2 in KFZ)

aus PA01_204.NAME_PARTNERGEM

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_204.POB

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerGem_Par_01_HBS.Vermittlerkontonummer_A IS
'Vermittler-Kto-Nr. des Vermittlers, der zu dieser Person als letzter Abschlu�-Provision erhielt.

aus PA01_208.VERMIT

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Abrechnungsstelle IS
'Im Rahmen des Pensionsfonds wird dieses Feld zur sauberen Zuordnung von Firmenabh�ngigkeiten ben�tigt. Der Inhalt ist abh�ngig von der Konzern-Nr.

aus PA01_205.ABRECHNUNGSSTEL	(5-stellig numerisch)

Datenschutz $-			';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.BIC_A IS
'... ist der "Bank Indentifier Code" oder "SWIFT-Code" zur Identifikation von Gesch�ftsstellen im Zahlungsverkehr (gem�� Norm ISO 9362), falls der Partner ein Kreditinstitut ist.

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Bankleitzahl_A IS
'... ist die Identifikation deutscher Kreditinstitute (=BLZ), falls der Partner ein Kreditinstitut ist.

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_DEVK_Unternehmen IS
'juristische Person ist DEVK-Unternehmen

ja/ nein

aus PA01_205.KZ_DEVK_UNTERN  

Datenschutz $-
';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Gerichtsart IS
'Gerichtsart bei Gerichten

aus PA01_205.ART_GERICHT

s. Gerichtsart_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_GeschaeftsbezFirma IS
'1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

s. GBS_1Stelle_SL
Firma
1.Stelle = 0 Sonstige und ohne Bereich
1.Stelle = 1 Deutsche Bahn AG
1.Stelle = 2 DB AG-Nebenbetriebe,
                    -soziale Einrichtungen und
                    -Tochterunternehmen
1.Stelle = 3 sonstige �ffentliche Linienverkehrsunternehmen
1.Stelle = 4 Bundesverkehrsministerium und nachgeordnete Beh�rden
1.Stelle = 5 Deutsche Bundespost
1.Stelle = 6 Sonstiger �ffentlicher Dienst
1.Stelle = 7 Industrie, Baugewerbe, Bergbau
1.Stelle = 8 Handwerk, Landwirschaft            
1.Stelle = 9 Dienstleistung, Handel 

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_GeschaeftsbezFirmaTarif IS
'wie GeschaeftsbezFirma, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 1. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_1Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_GeschaeftsbezTaetigkeit IS
'2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

T�tigkeit
2.Stelle = 0 ohne T�tigkeit
2.Stelle = 1 Beamter
2.Stelle = 2 Angestellter
2.Stelle = 3 Arbeiter
2.Stelle = 4 Selbstst�ndige, Freiberufler, Unternehmer,Gesch�ftsf�hrer
2.Stelle = 5 Firmen und juristische Personen
2.Stelle = 6 Verb�nde, Vereine
2.Stelle = 7 nicht mehr t�tig (Versorgungsempf�nger)
2.Stelle = 8 Hausfrauen
2.Stelle = 9 Person in Ausbildung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif IS
'wie GeschaeftsbezTaetigkeit, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 2. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

s. GBS_2Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Konzernnummer IS
'... legt im Rahmen des Pensionsfonds fest ob, es sich um eine Firma der DB, Sparda, DEVK+DB-Umfeld oder Allgemeiner Markt handelt.

aus PA01_205.NR_KONZERN

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Makler IS
'Partner ist Makler

ja / nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Partnertyp IS
'... ist die Spezialisierung des Partners, also 

aus PA01_205.PARTNER_SUB (immer "5")

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Personenzustand_neg_B IS
'aus PA01_208.ZUSTG4

s. Datenkat. 120-Personenzustand Stelle 4

- - - 0 	nicht definiert	
- - - 1	unerw�nschte Person (nat�rliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Personenzustand_pos_B IS
'aus PA01_208.ZUSTG3

s. Datenkat. 120-Personenzustand Stelle 3

- - 0 - 	nicht definiert	
- - 1 -	erw�nschte Person (nat�rliche / juristische) - ohne Grund	
- - 2 - 	einflu�reiche Person (nat�rliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Gro�kunde	
- - 5 - 	Identifikation pr�fen	


Ibs. wegen Auspr�gung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Rechtsform IS
'Rechtsform f�r juristische Personen
AG, GmbH, GbR, ...

aus PA01_205.RECHTSFORM

siehe Rechtsform_SL (Paris)

Datenschutz $-
';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Teilungsabkommen IS
'Unternehmen hat den Teilungsabkommen zugestimmt

ja / nein

aus PA01_205.KZ_TEILUNGSABK

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Unternehmenskennzeichen IS
'ist das Unternehmenkennzeichen, falls die juristische Person ein DEVK-Unternehmen ist.

Dieses Attribut ist nicht urs�chlich aus PARIS (dort nur in der Bestandbeziehung in der Rolle VN), wird daher aus der Harmonisierung gef�llt.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_Werbeunterdrueckung IS
'...dokumentiert Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

aus PA01_205.KZ_WERBE_STOP

Werbung erw�nscht
keinerlei Werbung erw�nscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gew�nscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.C_vereinbDatenschutz IS
'vereinbarte Datenschutzerkl�rung, s. PARIS-Schl�sseltabelle Datensch_SL

aus PA01_205.SL_VEREINB_DSCH 

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Name_A IS
'... ist f�r juristische Personen der Name (=Name_Inst in PARIS)

aus PA01_205.NAME_INST     

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_205.POB

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Sozialversicherungstraeger_Nr IS
'nur f�r Sozialversicherungstr�ger

aus PA01_205.NR_SOZ_VERS_TR

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Vermittlerkontonummer_A IS
'Vermittler-Kto-Nr. des Vermittlers, der zu dieser Person als letzter Abschlu�-Provision erhielt.

aus PA01_208.VERMIT

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerJur_Par_01_HBS.Versicherungsunternehmen_Nr IS
'nur f�r Partner, die Versicherungen sind

aus PA01_205.NR_VU

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Beruf IS
'Abbildung als Aufz�hlungstyp in paris gescheitert, daher Freitext

aus PA01_208.BERUF           

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_ABCV_Bescheinigung_liegt_vor IS
'
Agrarier
Beamter
C
Vereinsmitglied
liegt nicht vor

Bildet die Eingabe "A/B/C/V-Besch. liegt vor" und "A/B/C/V -Besch. anfordern" ab

20      A/B/C/V-Besch liegt vor = "N" und 
          A/B/C/V -Besch anfordern = "N"
80      A/B/C/V-Besch liegt vor und VN im
          Ruhestand

(unvollst�ndig)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_ACV_Mitglied IS
'ja/nein

ja, falls this -> H_Partner -> L_Partner_Partner_Rolle -> S_Partner_Partner_Rolle.Rollenname=Mitglied where this -> H_Partner -> POB_y.L_Partner_Partner_Rolle ->POB_x.H_Partner.Kurzname=ACV and x<>y

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Akademiker IS
'.. enth�lt den akademischen Grad

aus PA01_202.SL_AKADEMIKER

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Anrede IS
'... ausgeschrieben
Herr
Frau
...

aus PA01_202.ZUSATZ_ANREDE

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Erb_kz IS
'0: ERB_KZ wurde irrt�mlich gesetzt, zur�ckgenommen.

aus PA01_208.ERB_KZ

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Erstkontakt IS
'...dokumentiert, wie der Erstkontakt zustande kam. Siehe PARIS-Schl�sseltabelle Erstkontakt_SL:

aus PA01_202.ERSTKONTAKT_SL

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Au�end.
angest. Au�end.
hauptberufl. Au�end.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Gro�kundenbetreuung RD 27
allgemeines Maklergesch�ft

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Familienstand IS
'
aus PA01_202.FAMILIENSTAND

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Fuehrerscheinklasse IS
'

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_GeschaeftsbezTaetigkeit IS
'2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

aus PA01_208.GBS

T�tigkeit
2.Stelle = 0 ohne T�tigkeit
2.Stelle = 1 Beamter
2.Stelle = 2 Angestellter
2.Stelle = 3 Arbeiter
2.Stelle = 4 Selbstst�ndige, Freiberufler, Unternehmer,Gesch�ftsf�hrer
2.Stelle = 5 Firmen und juristische Personen
2.Stelle = 6 Verb�nde, Vereine
2.Stelle = 7 nicht mehr t�tig (Versorgungsempf�nger)
2.Stelle = 8 Hausfrauen
2.Stelle = 9 Person in Ausbildung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_GeschaeftsbezTaetigkeitTarif IS
'wie GeschaeftsbezTaetigkeit, aber f�r Zwecke der Tarifierung angepasst (Rabatt)
 2. Stelle des "Tarifierungs-Gesch�ftsbeziehungsschl�ssel" oder "TGBS" aus PA01_208

aus PA01_208.TGBS

s. GBS_2Stelle_SL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Geschlecht IS
'
aus PA01_202.GESCHLECHT

m�nnlich
weiblich
laut PARIS zus�tzlich:
unbekannt
m�nnlich nach Geschlechtsumwandlung
weiblich nach Geschlechtsumwandlung

Falls letztere beiden �berhaupt in PARIS existieren sollten, werden sie wegen Datenschutz in "m�nnlich" bzw. "weiblich" transformiert.

ZUR BEACHTUNG: Ohne die o.a. Transformation ist dieses Attribut nur in anonymisierten Best�nden zul�ssig( Datenschutz C) !!

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Makler IS
'Partner ist Makler

ja / nein

aus PA01_208.MAKLER

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Nationalitaet IS
'... ausgeschrieben
Dieses Attribut bezeichnet die Staatsangeh�rigkeit, nicht ethnische Besonderheiten oder Minderheiten.

aus PA01_202.NATIONALITAET

00 - Deutschland
10 - keine Nationalit�t angegeben (ab 01.07.04)
50 - Albanien
51 - Bulgarien
52 - Bosnien-Herzegowina (A)
53 - Belarus (Wei�ru�land)
54 - Schweiz
55 - Estland
56 - Finnland
57 - Liechtenstein
58 - Kroatien (A)
59 - Island
60 - Litauen
61 - Lettland
62 - Monaco
63 - Norwegen
64 - Rum�nien
65 - Russische F�deration
66 - Schweden
67 - Slowenien (A)
68 - Ukraine
71 - Belgien
72 - D�nemark
73 - Frankreich
74 - Grossbritannien
75 - Irland
76 - Italien (A)
77 - Luxemburg
78 - Niederlande
81 - Polen
82 - ehm. Tschecheslowakei (nicht mehr g�ltig)
83 - Ungarn
84 - Tschechien
85 - sonstige Osteurop�er
86 - Slowakei
88 - Marokko
89 - Tunesien

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Partnertyp IS
'... ist die Spezialisierung des Partners, also 

aus PA01_202.PARTNER_SUB (immer "2")

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Personenzustand_Ident IS
's. Datenkat. 120-Personenzustand Stelle 2

- 0 - - 	nicht definiert		
- 5 - -	Verstorben		
- 7 - -	Identifikation nachgewiesen

aus PA01_208.ZUSTG2

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Personenzustand_neg_B IS
'aus PA01_208.ZUSTG4

s. Datenkat. 120-Personenzustand Stelle 4

- - - 0 	nicht definiert	
- - - 1	unerw�nschte Person (nat�rliche / juristische) 	
- - - 2	unbequemer Kunde	

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Personenzustand_pos_B IS
'aus PA01_208.ZUSTG3

s. Datenkat. 120-Personenzustand Stelle 3

- - 0 - 	nicht definiert	
- - 1 -	erw�nschte Person (nat�rliche / juristische) - ohne Grund	
- - 2 - 	einflu�reiche Person (nat�rliche / juristische) 	
- - 3 - 	hoher Kundenwert	
- - 4 - 	Gro�kunde	
- - 5 - 	Identifikation pr�fen	


Ibs. wegen Auspr�gung "2" bedenklich. "4" z.B. unbedenklich. 
Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Ruhestand IS
'ja
nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_SchutzKennzeichen_B IS
'... identifiziert besonders gesch�tzte Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

Zur Zeit existieren nur zwei Auspr�gungen entsprechend "ja / nein". Im Rahmen laufender Projekte wird das Schutzbed�rfnis detaillierter beschrieben werden. Die dann existierenden Auspr�gungen werden beschreiben, welche Informationen und Sachverhalte nicht ins DWH geliefert werden bzw. nur f�r bestimmte Zwecke durch Auswertungen ausgewiesen werden oder nur  eingeschr�nkten Nutzerkreisen zu Kenntnis gebracht werden d�rfen.

geplante Auspr�gungen s. Partnerschutz_SL:

0 ungesch�tzt
1 gesch�tzt
2 einfacher Schutz
3 erweiterter Schutz
4 besonderer Schutz

2-4 werden noch nicht verwendet (04/2013)

aus PA01_207, Schl�sseltabelle Schutz_SL

Datenschutz $B';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Telefonwerbung IS
'Einverst�ndnis zur oder Ablehnung der telefonischen Werbung

aus PA01_224.TEL_WERBUNG_SL

0 unbekannt
1 Uneingeschr�nkte Telefonwerbung; Einverst�ndniserkl�rung liegt vor
2 Nur VTP darf den Kunden anrufen; Einverst�ndniserkl�rung liegt vor
3 Widerspruch; der Kunde hat der Telefonwerbung ausdr�cklich widersprochen

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Titel IS
'Adelstitel

aus PA01_202.TITEL_ADEL

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_Werbeunterdrueckung IS
'...dokumentiert Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

aus PA01_202.KZ_WERBE_STOP

Werbung erw�nscht
keinerlei Werbung erw�nscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gew�nscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_selbsstaendig_KZ IS
'ja / nein

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_vereinbDatenschutz IS
'vereinbarte Datenschutzerkl�rung, s. PARIS-Schl�sseltabelle Datensch_SL

aus PA01_202.SL_VEREINB_DSCH 

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.C_verstorben IS
'
ja / nein

aus PA01_202.KZ_VERSTORBEN

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Geburtsdatum_A IS
's. auch ''Geburtsjahr'' wg. Datenschutz.

aus PA01_202.DAT_GEBURT

date
Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Geburtsjahr IS
'... ist das Jahr aus dem Geburtsdatum bzw. der 1.1. des Geburtsjahres. Dieses Datum steht f�r Auswertungen zur Verf�gung, deren Zweck keinen Personenbezug zul�sst.

aus PA01_202.DAT_GEBURT

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Geburtsort IS
'
aus PA01_202.GEB_ORT

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Gewerbe IS
'... ist eine wirtschaftliche T�tigkeit, die auf eigene Rechnung, eigene Verantwortung und auf Dauer mit der Absicht zur Gewinnerzielung betrieben wird.

Klartext

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Name_A IS
'... ist f�r nat�rliche Personen der Nachname (=Name_NP in PARIS)

aus PA01_202.NAME_NP

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Namenszusatz_A IS
'sen., jun., leer

aus PA01_202.ZUSATZ_NAME

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_202.POB

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Sozialversicherungsnummer_AB IS
'...ist die externe Nummer der Bundes- bzw. Landesversicherungsanstalt f�r Angestellte; fr�her: Rentenversicherungsnummer

aus PA01_202.NR_SOZIAL_VERS

Datenschutz $A1B';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Sterbedatum IS
'

aus PA01_202.DAT_STERBE

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Vermittlerkontonummer_A IS
'Vermittler-Kto-Nr. des Vermittlers, der zu dieser Person als letzter Abschlu�-Provision erhielt.

aus PA01_208.VERMIT

Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerNat_Par_01_HBS.Vorname_A IS
'... ist f�r nat�rliche Personen der Vorname.

aus PA01_202.VORNAME

Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_Erstkontakt IS
'...dokumentiert, wie der Erstkontakt zustande kam. Siehe PARIS-Schl�sseltabelle Erstkontakt_SL:

aus PA01_203.ERSTKONTAKT_SL

unbekannt
Adressen - Kauf
HV - Mitarbeiter
hauptberufl. selbst. Au�end.
angest. Au�end.
hauptberufl. Au�end.
RD - Mitarbeiter
aus sonst. DEVK-Bezieh.
Makler
durch Vertrag, Schadenfall, ....
BHW 
Online - Antrag DEVK
Online - Antrag ZSC
Online - Antrag Kooperation
Werbung TV/Radio
Empfehlung
EUROCARD-Vers.
ADAC 
AWD 
DVA
Santander Consumer Bank
eInsurance
DAVG 
SEB
ACV
Pensionsfonds
Ghirardini
Gro�kundenbetreuung RD 27
allgemeines Maklergesch�ft

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_Organisationseinheitart IS
'... ist die Bezeichnung Art der Organisationseinheit, z.B. Regionaldirektion, Zentrale, Abteilung, Gruppe, .... f�r OEen innerhalb der DEVK

aus PA01_203.SL_ART_ORGEIN

Aus OrgEinheit_SL:
07	Abt					Abteilung
04	GL					Gesch�ftsleitung
08	Gruppe			Gruppe
05	HA					Hauptabteilung
03	RD					Regionaldirektion
06	Stabsbereich	Stabsbereich
02	Vorstand			Vorstand
01	Zentrale			Zentrale
09	keine Organisationseinheit	
10	KKC					Kunden-Kompetenz-Center

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_Partnertyp IS
'... ist die Spezialisierung des Partners, also 

aus PA01_203.PARTNER_SUB (immer "3")

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_RD IS
'... ist die harmonisierte RD-Nummer f�r Organisationseinheit = RD, sonst leer.

aus PA01_203.DEVK_Kuerzel_num

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_Werbeunterdrueckung IS
'...dokumentiert Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

aus PA01_203.KZ_WERBE_STOP

Werbung erw�nscht
keinerlei Werbung erw�nscht 
keine Briefwerbung
keine telefonische Werbung
keine elektronische Werbung (Internet)
Kunde bevorzugt Briefwerbung
Kunde bevorzugt telefonische Werbung 
Kunde bevorzugt elektronische Medien 
keine Zeitschrift "Akzente" gew�nscht
keine Rechtsschutzwerbung

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.C_vereinbDatenschutz IS
'vereinbarte Datenschutzerkl�rung, s. PARIS-Schl�sseltabelle Datensch_SL

aus PA01_203.SL_VEREINB_DSCH 

aktuelle Datenschutzklausel wurde anerkannt
keine Fassung wurde anerkannt
Datenschutzklausel von 1995 wurde nicht anerkannt
Keine Information zur Akzeptanz der Datenschutzklausel vorhanden

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Kurzname_alfa IS
'... ist eine bekannte alfanumerische Abk�rzung, z.B. "KL" f�r "RD K�ln"

aus PA01_203.DEVK_KUERZEL_ALP

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Kurzname_num IS
'... ist eine bekannte numerische Abk�rzung, z.B. "05" f�r "RD K�ln"

aus PA01_203.DEVK_KUERZEL_NUM

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.Name_A IS
'... ist die Bezeichnung der Organisationseinheit

Beispiele:

Regionaldirektion Berlin
Zentrale
Regionaldirektion Essen KKC SHUK
Hauptabteilung VIII

aus PA01_203.ORGEINBEZ

wegen Analogie zu anderen Partnern:
Datenschutz $A2';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_203.POB

wegen Analogie zu anderen Partnern:
Datenschutz $A1';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PartnerOrga_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.AusstellungsDatum IS
'aus PA01_209.AUS_DAT

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.AusstellungsOrt IS
'aus PA01_209.AUS_ORT

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.C_Dokumentenart_B IS
'... ist die Art des amtlichen Dokuments

aus PA01_209.ART_DOKUMENT
s. Dokumentart_SL

BEA: besondere gesetzliche Grundlagen f�r bestimmte Dokumente, z.B. Steuer-Id!

001	Abstammungsurkunde
002	Abtretungsurkunde
003	Arbeitserlaubnis
004	Aufenthaltserlaubnis
005	Bahncard
006	Behindertenausweis
007	Berufsnachweis
008	Betreuerausweis
009	Erbschein
010	Familienbuch
011	Firmenstammrolle
012	F�hrerschein international
013	F�hrerschein national
014	Geburtsurkunde
015	Grundbuchblatt
016	Gr�ndungsurkunde
017	Heiratsurkunde
018	Kinderausweis
019	Kirchliche Trauurkunde
020	Meldebescheinigung
021	Nichtveranlagungsbescheinigung
022	Personalausweis
023	Pf�ndungsurkunde
024	Reisepass
025	Schwerbeschaedigtenausweis
026	Sozialversicherungsausweis
027	Stammbuch
028	Sterbeurkunde
029	Haltungserlaubnis
030	Sachkundenachweis
031	EU-F�hrerschein
032	Steuer-IdNr.-Mitteilung

Z.B. wegen "Behindertenausweis", "Steuer-IdNr": Datenschutz $B
';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.DokumentGueltigAb IS
'.. ist das vom Aussteller vergebene Beginndatum der G�ltigkeit des Dokuments

aus PA01_209.DAT_DOK_GUELT_VON

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.DokumentGueltigBis IS
'... ist das vom Aussteller vergebene Enddatum der G�ltigkeit des Dokuments

aus PA01_209.DAT_DOK_GUELT_BIS

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.Dokument_lfd IS
'... bezeichnet die laufende Nummer dasDokuments innerhalb eines POB

aus PA01_209.DOKUMENT_LFD

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.DokumentenNummer_AC IS
'... ist die vom Aussteller vergebene Nummer des Dokuments, z.B. Personalausweisnummer

Bemerkung s. "Dokumentenart".

aus PA01_209.DOK_ID

nur mit DWH-unbekannter Verschl�sselung zul�ssig; A1 und C macht sonst keinen Sinn ("identifizierend" und "nur in anonymisiertem Bestand zul�ssig")

Datenschutz $A1C';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.FK_PA03_AmtlichesDokument IS
'
Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_202.POB
aus PA01_203.POB
aus PA01_204.POB
aus PA01_205.POB

Datenschutz $A1';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlDokument_Par_01_WBS.ausstellendeBehoerde IS
'
aus PA01_209.AUS_BEH


Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.SK_PA03_AmtlichesDokument IS
'
Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA03_AmtlichesDokument_PA01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.SK_PA04_Kundenmerkmal IS
'
Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_PA01_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.C_Geschaeftsbereich IS
'... bezeichnet den Gesch�ftsbereich, der das Kundenmerkmal eingestellt hat

aus PA01_206.SL_BEREICH_GESC

s. Gesch�ftsbereich_SL

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.C_Kodierung_B IS
'... dreistellige Nummer

aus PA01_206.MERKMAL_KUNDE   

s. Kundenmerkmal_SL

000 = Aus Umstellung aus ehemals HUK-Verband
001 = Nichteinl�sung Erstpr�mie (� 38)      
002 = Nichteinl�sung Folgebeitrag (�39)     
003 = Mahnung                               
004 = gerichtliches Mahnverfahren           
005 = schlechter Zahler                     
006 = schlechter Zahler aus Auskunftdatei 
007 = Abgabe an Inkasso-Dienst                 
101 = Kdg. zum Perioden Ende                    
102 = Kdg. zum Ablauf durch VR                  
103 = Kdg. im Schaden-/Leistungsfall            
104 = Kdg. im Schaden-/Leistungsfall durch VR   
105 = Vertragsaufh. in gegeseitigem Einvernehmen
106 = Kdg. wegen Beitragserh�hung               
107 = Vertragsaufh. wegen Risikofortfall        
108 = Vertagsaufh. wegen Doppelversicherung     
109 = R�cktritt �20 VVG                         
151 = Widerspruch �5 VVG                  
152 = Widerspruch �5a Abs. 1 VVG          
153 = Antragswiderspruch bzw. -R�cktritt  
161 = Schadenh�ufigkeit
162 = im Schadenfall Kdg.-Ma�nahmen pr�fen
163 = Bei n�chster Gelegenheit kdg: Neuer Schaden - zum Ablauf
164 = maschinell (f�r k�nftige Hintergrundverarbeitung)
165 = Vorlage Sachbearbeiter
166 = Sanierungsfall (KFZ)
167 = Stornogefahr (KFZ)
168 = Stornogefahr bei Vertragsablaub (KFZ)
169 = Stornogefahr bei Fahrzeugwechsel (KFZ)
221 = Nachgewiesener Betrug
222 = Selbstverst�mmelung
223 = Suizidgef�hrdet
224 = falsche Angaben bei Antragsstellung
225 = VN in Neg.-Kartei HUK-Verband f�r K-allgemein
226 = VN in Neg.-Kartei HUK-Verband f�r Unfall-allgemein
227 = unbequemer Kunde
228 = Insolvenzverfahren
229 = in Schuldnerberatung
290 = Beobachtung Terrorismusfinanzierung
291 = Terrorismusfinanzierung
292 = Geldw�scherisiko
293 = Korruptionsrisiko
300 = UNIWAGNIS unbeteiligt
301 = UNIWAGNIS auff�llig
302 = UNIWAGNIS unauff�llig
401 = Antragsablehnung wg. Gesundheitsrisiko
402 = Antragsablehnung wg. Sondergefahren
403 = Antragsablehnung wg. JUNIOR PLUS
499 = Antragsablehnung wg. sonstiger Grund
901 = Einflu�reiche Stellung des VN 
902 = VN ist rundum DEVK versichert

222 = Selbstverst�mmelung, 223 = Suizidgef�hrdet, 225 = VN in Neg.-Kartei HUK-Verband f�r K-allgemein, 226 = VN in Neg.-Kartei HUK-Verband f�r Unfall-allgemein
sollen ausgefiltert werden. 
(ohne Filterung C)
Datenschutz $B';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.FK_PA04_Kundenmerkmal IS
'
Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.Kundenmerkmal_lfd IS
'... bezeichnet die laufende Nummer das Kundenmerkmals innerhalb eines POB

aus PA01_206.MERKMAL_LFD

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA04_Kundenmerkmal_Par_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_BH.SK_PA05_Bankverbindung IS
'
Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.BIC_A IS
'... ist der "Bank Indentifier Code" oder "SWIFT-Code" zur Identifikation von Gesch�ftsstellen im Zahlungsverkehr (gem�� Norm ISO 9362).
Sie eine Eigenschaft des zugeh�rigen Kreditinstituts und ableitbar �ber 
this -> PA05_Bankverbindung_BH -> PA01_PA02_PA05_BL mit der Rolle "Kontof�hrer" --> PA01_Partner_BH --> PA01_Partner_Par_01_HBD.BIC

aus PA01_228.BIC

Datenschutz $A2';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Bankleitzahl_A IS
'... ist die Identifikation deutscher Kreditinstitute (=BLZ).
Sie ist f�r deutsche Bankverbindungen in der IBAN (Stelle 5-12) enthalten. 
Sie ist eine Eigenschaft des zugeh�rigen Kreditinstituts und ableitbar �ber 
this -> PA05_Bankverbindung_BH -> PA01_PA02_PA05_BL mit der Rolle "Kontof�hrer" --> PA01_Partner_BH --> PA01_Partner_Par_01_HBS.Bankleitzahl

aus PA01_228.BLZ

Datenschutz $A2';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Bankname_A IS
'... ist der Name dess zugeh�rigen Kreditinstituts und ableitbar �ber 
this -> PA05_Bankverbindung_BH -> PA01_PA02_PA05_BL mit der Rolle "Kontof�hrer" --> PA01_Partner_BH --> PA01_Partner_Par_01_HBD.Name

Datenschutz $A2';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.C_Bank_Klassifizierung IS
'... ist eine von HA IV vorzugebende Klassifizierung von Banken und Sparkassen

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.C_Land IS
'.. ist das Land des Sitzes der Bank, entspricht dem L�nderk�rzel im BIC und in der IBAN.

gem.  ISO-3166-1

aus substr( PA01_228.IBAN, 1, 2)

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des n�chsten zugeh�rigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.FK_PA05_Bankverbindung IS
'
Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der G�ltigkeit des Datensatzes im Quellsystem (evtl. aus �nderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der G�ltigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.IBAN_AB IS
'... ist die internationale Bankkontonummer (="International Bank Account Number"). Die Notation wird durch die ISO-Norm ISO 13616-1:2007 Teil 1 beschrieben.

aus PA01_228.IBAN

Datenschutz $A1B';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Inkassonummer IS
'... ist die laufende Nummer der Bankverbindung zum Kunden laut PARIS.

aus PA01_228.PDB_INR

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.Kontonummer_AB IS
'... ist die Identifizierung der Bankverbindung bei einem deutschen Kreditinstitut. 
Sie ist f�r deutsche Bankverbindungen in der IBAN (Stelle 13-22) enthalten.

aus PA01_228.KTO

Datenschutz $A2B';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

PA01_228.POB

Datenschutz $A1';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA05_Bankverbindung_Par_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE GE02_GE05_Komman_Anschrift_BL IS
'Beziehung von Kommunikationsangabe zu Anschrift, falls es sich bei der Kommunikationsangabe um eine Zustelladresse oder eine Telefonverbindung handelt

BK f�r "Kommunikationsangabe ist Zustelladresse" aus Paris:
GE02:	Bildungsregel:						''PARTNER''
			Partnerordnungsbegriff		PA01_230.POB
			Kommunikationstyp			HARM("Adresse") = 11560			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
			Adressnummer_lfd				PA01_230.LFD_ADR
GE05:	Bildungsregel:						''PARTNER''
			Partnerordnungsbegriff		PA01_230.POB
			Adressnummer_lfd				PA01_230.LFD_ADR
GE02_GE05_Komman_Anschrift_BL:
			Bildungsregel:						''PARTNER''
			Partnerordnungsbegriff		PA01_230.POB
			Kommunikationstyp			HARM("Adresse") = 11560			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
			Adressnummer_lfd				PA01_230.LFD_ADR
oder
BK f�r "Telefon ist Zustelladresse zugeordnet" aus Paris:
GE02:	Bildungsregel:						''PARTNER''
			Partnerordnungsbegriff		PA01_232.POB
			Kommunikationstyp			HARM("Telefon") = 11561			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
			Adressnummer_lfd				PA01_232.LFD_ADR 
GE05:	Bildungsregel:						''PARTNER''
			Partnerordnungsbegriff		PA01_232.POB
			Adressnummer_lfd				PA01_232.LFD_ADR_POST

- f�r CM / aus ICLITEMEQ (besch�digte Objekte):
GE02:	Bildungsregel							''SHUKR''
			Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
			Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden
GE05:	Bildungsregel							''SHUKR''
			Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
			Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden';

COMMENT ON TABLE GE02_Kommunikationsangabe_BH IS
'Eine Kommunikationsangabe ist eine Zielangabe zum Zweck der Kommunikation, z.B. Zustelladresse f�r Post, Telefonnummer, e-mail-Adresse.

Die Attribute zur Zustelladresse befinden sich im Satelliten zur Anschrift, deren Hub mit dem Hub "Kommunikationsangabe" vebunden ist.

BK f�r Kommunikationsangaben aus Paris:
	Bildungsregel:						''PARTNER''
	Partnerordnungsbegriff		~.POB													eindeutige Nummer des Partners in PARIS
	Kommunikationstyp			HARM( [aus PA01_230: "Adresse" | aus PA01_232: "Telefon" | aus PA01_233: "Email"])		Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
	Adressnummer_lfd				~.LFD_ADR											laufende Nummer der (Post-) Adressen, die in PARIS dem Partner zugeordnet sind

	f�r die Tabellen ~: PA01_230, PA01_232, PA01_233

- f�r CM / aus ICLITEMEQ (besch�digte Objekte):
	Bildungsregel							''SHUKR''
	Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
	Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
	Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden

-lifefactory (entspricht dem BK aus Paris!):
	Bildungsregel:						''PARTNER''
	Partnerordnungsbegriff		partnerLV.partnerID							eindeutige Nummer des Partners in PARIS, entspricht dem POB
	Kommunikationstyp			HARM(  "Adresse") = 11560			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
	Adressnummer_lfd				partnerLV.anschriftID 						laufende Nummer der (Post-) Adressen, die in PARIS dem Partner zugeordnet sind

BK f�r Kommunikationsangaben aus Business Partner, Kfz oder anderen Systemen: zu kl�ren. F�r Vertragssysteme i.d.R.:

	VNR (Versicherungsscheinnummer)
	Rolle-kurz (Rollenk�rzel f�r manuell erstellte Rolle des Partners zur Kommunikationsangabe)
';

COMMENT ON TABLE GE05_Anschrift_BH IS
'enth�lt die Zustelladresse sowohl als Kommunikationsangabe als auch als Ortsbestimmung, z.B. f�r versicherte Objekte oder Schadenorte.

BK f�r Anschriften:
- f�r Adressen aus PARIS (nur Adress_Subtyp "Zustelladresse") :

	Bildungsregel							''PARTNER''
	Partnerordnungsbegriff			PA01_230.POB				eindeutige Nummer des Partners in PARIS
	Adressnummer_lfd					PA01_230.LFD_ADR		laufende Nummer der (Post-) Adressen, die in PARIS dem Partner zugeordnet sind

- f�r CM / aus ICLITEMEQ (besch�digte Objekte):
	Bildungsregel							''SHUKR''
	Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
	Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
	Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden

- f�r CM / aus ICLITEMRE (besch�digte Objekte):
	Bildungsregel							''SHUKR''
	Mandant									ICLITEMRE.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
	Schadennummer						ICLITEMRE.CLAIM					Nummer des Schaden- / Leistungsfalls
	Adress-Nr.									ICLITEMRE.ADDRESS				Adress-Nr. aus CM

- f�r Objekte aus Rechtsschutz
	Versicherungsscheinnummer		CRS01101.VNR
	laufende Objektnummer				CRS01401. LFDOBJ	laufende Nummer des Objekts innerhalb des Versicherungsscheins

- f�r Objekte aus SHUKR:
	Versicherungsscheinnummer		VNR								mit Pr�fziffer
	Vertragselement_lfd

- f�r Anschriften aus SHUKR:
	Versicherungsscheinnummer		VNR
	Rolle-kurz																			Rollenk�rzel f�r manuell erstellte Rolle des Partners zur Kommunikationsangabe
	...';

COMMENT ON TABLE PA01_GE02_BL IS
'Beziehung eines Partners zu einer Kommunikationsangabe, z.B. zu einer Zustelladresse. Bildet alle Kommunikationsangaben aus dem Partner-System unabh�ngig von ihrer Verwendung ab.

Bea: Adresse zu Vertrags- oder Schadenrollen wird auch dort zugeordnet.

Business-Keys:
PA01:	Hundert											100
			Partnerordnungsbegriff (POB)	~.POB
GE02:	Bildungsregel:								''PARTNER''
			Partnerordnungsbegriff				~.POB
			Kommunikationstyp					HARM( [aus PA01_230: "Adresse" | aus PA01_232: "Telefon" | aus PA01_233: "Email"])		Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
			Adressnummer_lfd						~.LFD_ADR
PA01_GE02_BL:
			Bildungsregel:								''PARTNER''
			Partnerordnungsbegriff				~.POB
			Kommunikationstyp					HARM( [aus PA01_230: "Adresse" | aus PA01_232: "Telefon" | aus PA01_233: "Email"])		Surrogat-Key, also der numerische Wert, der von der Harmonisierung zum Kommunikationstyp geliefert wird
			Adressnummer_lfd						~.LFD_ADR

f�r die Tabellen PA01_230, PA01_232, PA01_233

- f�r CM / aus ICLITEMEQ (besch�digte Objekte):
PA01:	Bildungsregel							''SHUKR''
			Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
			Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden
GE02:	Bildungsregel							''SHUKR''
			Mandant									ICLITEMEQ.CLIENT					wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer						ICLITEMEQ.CLAIM					Nummer des Schaden- / Leistungsfalls
			Objekt_lfd									ICLITEMEQ.DAMAGEDOBJ		lfd. Objekt-Nr. pro Schaden

	';

COMMENT ON TABLE PA01_PA01_PA02_BL IS
'Partner_Rolle_Partner im Sinne von

''Partner'' FK_PA01_Partner_P ''steht in Beziehung'' FK_PA02_PartnerRolle ''zu Partner'' FK_PA01_Partner

umfasst die Partner-Partner-Beziehungen aus PARIS und die Abbildung von Doubletten, die bei der Aufl�sung von Raw-Business-Keys ermittelt werden, z.B. Zuordnung von Versicherungsnehmern aus CM zu PARIS-Partnern.

Business Keys:

PA01_P:	Hundert											100
				Partnerordnungsbegriff (von)		PA01_240.POB_VON
PA01:		Hundert											100
				Partnerordnungsbegriff (nach)	PA01_240.POB_NACH
PA02:		Bildungsregel								''HARM''
				Partnerrolle									HARM( PA01_240.BEZ_ID)	Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird, f�r Rollen aus Paris, ohne f�hrende Nullen
	oder	Bildungsregel								''HARM''
				Partnerrolle									HARM( RollenID)					Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird, f�r manuell vergebene RollenID, ohne f�hrende Nullen
PA01_PA01_PA02_BL:
				Bildungsregel								''PARTNER''
				Partnerordnungsbegriff (von)		PA01_240.POB_VON
				Partnerordnungsbegriff (nach)	PA01_240.POB_NACH
				Partnerrolle									HARM( RollenID)					Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird, ohne f�hrende Nullen';

COMMENT ON TABLE PA01_PA02_PA05_BL IS
'Beziehung von Partner zu Bankverbindung

Business Keys:
aus Paris:
PA01:	Hundert											100
	 		Partnerordnungsbegriff				PA01_228.POB
PA02:	Bildungsregel								''HARM''
			Partnerrolle									HARM( RollenID)			Surrogat-Key, der von der Harmonisierung zur Rolle "Kontoinhaber" oder "Kontof�hrer" geliefert wird
PA05:	Bildungsregel								''KONTO''
			Partnerordnungsbegriff (POB)	PA01_228.POB
			Inkassonummer							PA01_228.PDB_INR		ohne f�hrende Nullen
PA01_PA02_PA05_BL:
			Bildungsregel								''PARTNER''
	 		Partnerordnungsbegriff				PA01_228.POB
			Partnerrolle "Kontoinhaber"		''11555''
			Inkassonummer							PA01_228.PDB_INR		ohne f�hrende Nullen

aus FS-CD:
PA01:	Mandant											BUT0BK.CLIENT
			Business Partner-Nummer=POB	BUT0BK.PARTNER		1. bis 9. Stelle, ohne f�hrende NullenPOB (Business Partner-Nummer = Partnerordnungsbegriff)
PA02:	Bildungsregel									''HARM''
			Partnerrolle										HARM( RollenID)			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle "Kontoinhaber" oder "Kontof�hrer" geliefert wird
PA05:	Bildungsregel									''KONTO''
			Business Partner-Nummer=POB	BUT0BK.PARTNER		1. bis 9. Stelle, ohne f�hrende Nullen
			Inkassonummer								BUT0BK.BKVID				Externe ID der Bankverbindung, ohne f�hrende Nullen

aus lifefactory:
PA01:	Hundert												100
	 		Partnerordnungsbegriff (POB)		partnerLV.partnerIDext
PA02:	Bildungsregel									''HARM''
			Partnerrolle										HARM( RollenID)			 Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle  "Kontoinhaber" geliefert wird
PA05:	Bildungsregel									''KONTO''
			Partnerordnungsbegriff (POB)	partnerLV.partnerIDext
			Inkassonummer							partnerLV.kontoID			ohne f�hrende Nullen';

COMMENT ON TABLE PA01_PA02_WE01_BL IS
'... ist die Beziehung zwischen einer Willenserkl�rung und einem Partner in irgendeiner Rolle.

Rollen (beispielhaft):
Beitragszahler
Versicherungsnehmer
Risikotr�ger
Vermittler

KEINE Bezugsberechtigten

Business Keys aus Paris (Vertragsrollen):
PA01:	Hundert											''100''
			Partnerordnungsbegriff (POB)	PA01_247.POB
PA02:	Bildungsregel								''HARM''
			Partnerrolle									HARM( PA01_247.TYP)				Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
WE01:	Hundert											''100''
			Versicherungsscheinnummer		PA01_247.REFONR						ohne Leerzeichen
PA01_PA02_WE01_BL:
			Bildungsregel								''PARTNER''
			Partnerordnungsbegriff (POB)	PA01_247.POB
			Partnerrolle									HARM( PA01_247.TYP)				Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Versicherungsscheinnummer		PA01_247.REFONR						ohne Leerzeichen

Business Keys aus Paris (vertragsf�hrende RD):
PA01:	Hundert											''100''
			Partnerordnungsbegriff (POB)	PA01_203.POB		
PA02:	Bildungsregel								''HARM''
			Partnerrolle									11720												Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle "vertragsf�hrende RD" geliefert wird
WE01:	Hundert											''100''
			Versicherungsscheinnummer		PA01_247.REFONR						ohne Leerzeichen
PA01_PA02_WE01_BL:
			Bildungsregel								''PARTNER''
			Partnerordnungsbegriff (POB)	PA01_247.POB
			Partnerrolle									HARM( PA01_247.TYP)				Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Versicherungsscheinnummer		PA01_247.REFONR						ohne Leerzeichen
Join �ber PA01_203.DEVK_KUERZEL_NUM = PA01_247.PDB_BL

lifefactory, aus partnerLV:
PA01: 	Hundert											''100''
			Partnerordnungsbegriff (POB)	partnerLV.partnerIDext
PA02:	Bildungsregel								''HARM''
			Partnerrolle									HARM( partnerLV.rollenID)			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
WE01: Hundert											''100''
			Versicherungsscheinnummer		jurLV.lvIDext where jurLV.lvID = partnerLV.lvID and lv.lvstatus not in (2, 5, 6)		f�r Vertr�ge
oder	Bildungsregel								''ANTRAG''
			Antragsnummer							jurLV.lvIDext where jurLV.lvID = partnerLV.lvID and lv.lvstatus in (2, 5, 6)			f�r Antr�ge

lifefactory, aus prv (Provisionsverteilung):
PA01: Hundert											''100''
			Partnerordnungsbegriff (POB)	prv.agenturID
PA02:	Bildungsregel								''HARM''
			Partnerrolle									HARM( partnerLV.rollenID)			Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
WE01: Hundert											''100''
			Versicherungsscheinnummer		jurLV.lvIDext where jurLV.lvID = prv.lvID and lv.lvstatus not in (2, 5, 6)				f�r Vertr�ge
oder	Bildungsregel								''ANTRAG''
			Antragsnummer							jurLV.lvIDext where jurLV.lvID = partnerLV.lvID and lv.lvstatus in (2, 5, 6)			f�r Antr�ge

Risikotr�ger aus Lifefactory unklar (evtl. �ber Buchstabenvergleich in tfID(=Tarifname)) oder pdID (Produktname)

in VUX:
Versicherungsnehmer aus kan.PNR_VN';

COMMENT ON TABLE PA01_PartnerGemErb_Par_01_HBS IS
'Partnerinformationen f�r Erbengemeinschaften aus PARIS

f�r C_Partnertyp = 2 (Nat�rliche Personen) mit PA01_208.ERB_KZ in (1,2)

oder C_Partnertyp = 4 (Partnergemeinschaft) mit Gemeinschaftsart "00	" (Erbengemeinschaft)

';

COMMENT ON TABLE PA01_PartnerGem_Par_01_HBS IS
'Partnerinformationen aus PARIS
f�r C_Partnertyp = 4 (Partnergemeinschaft) ohne Gemeinschaftsart "00" (Erbengemeinschaft)';

COMMENT ON TABLE PA01_PartnerJur_Par_01_HBS IS
'Partnerinformationen aus PARIS f�r C_Partnertyp = 5 (Juristische Personen =''Institution'' in PARIS)';

COMMENT ON TABLE PA01_PartnerNat_Par_01_HBS IS
'Partnerinformationen aus PARIS f�r C_Partnertyp = 2 (Nat�rliche Personen)
';

COMMENT ON TABLE PA01_PartnerOrga_Par_01_HBS IS
'Partnerinformationen aus PARIS f�r C_Partnertyp = 3 (Organisationseinheiten, nur DEVK)';

COMMENT ON TABLE PA03_AmtlichesDokument_PA01_BW IS
'BEA: besondere gesetzliche Grundlagen f�r bestimmte Dokumente, z.B. Steuer-Id!

Die verschiedenen amtlichen Dokumente sind mit dem DSB zu pr�fen und ggf. nicht in das DWH zu �bernehmen.

Business Key:

aus Paris:
	Bildungsregel								''PARTNER''
	Partnerordnungsbegriff				PA01_209.POB
	lfd Nr. des Dokuments					PA01_209.DOKUMENT_LFD';

COMMENT ON TABLE PA04_Kundenmerkmal_PA01_BW IS
'
Business-Key:
Bildungsregel							''PARTNER''
Partnerordnungsbegriff			PA01_206.POB
Kundenmerkmal-Lfd				PA01_206.MERKMAL_LFD';

COMMENT ON TABLE PA05_Bankverbindung_BH IS
'BK

aus PARIS:
	Bildungsregel								''KONTO''
	Partnerordnungsbegriff (POB)	PA01_228.POB
	Inkassonummer							PA01_228.PDB_INR			ohne f�hrende Nullen

aus FS-CD:
	Bankverbindung / externe ID in Business Partner:
	Bildungsregel								''KONTO''
	Partnerordnungsbegriff (POB)	BUT0BK.PARTNER			2. bis 9. Stelle, ohne f�hrende Null, ohne Pr�fziffer
	Inkassonummer							BUT0BK.BKVID					ohne f�hrende Nullen

oder bei unbekannten Zahlungspartnern aus FS-CD:

	IBAN

aus lifefactory:
	Bildungsregel								''KONTO''
	Partnerordnungsbegriff (POB)	partnerLV.partnerIDext
	Inkassonummer							partnerLV.kontoID			ohne f�hrende Nullen';

