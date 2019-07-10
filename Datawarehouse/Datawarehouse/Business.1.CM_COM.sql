--<ScriptOptions statementTerminator=";"/>
-- Version 9488

COMMENT ON COLUMN ER01_ER02_ER03_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.SK_ER01_ER02_ER03 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.FK_ER01_ER02_ER03 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_ER02_ER03_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung IS
'Beschreibung der Beschädigung

5665	Kfz - DB		Kfz - Dach / Boden
5666	Kfz - FB		Kfz - Frontbereich
5667	Kfz - FBL		Kfz - Frontbereich Links
5668	Kfz - FBR		Kfz - Frontbereich rechts
5669	Kfz - HB		Kfz - Heckbereich
5670	Kfz - HBL	Kfz - Heckbereich links
5671	Kfz - HBR	Kfz - Heckbereich rechts
5672	Kfz - LSM	Kfz - Links Seite Mitte
5673	Kfz - RSM	Kfz - Rechte Seite Mitte
5674	Kfz - RU		Kfz - Rundum

aus ICLITEMDD.SUBOBJECT where ICLITEMDD.SUBOBJCAT = "DD"

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.FK_ER01_OB01_beschObjekt IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Beschreibung_Beschaed_B IS
'Beschreibung der Beschädigung (Freitext 60 Zeichen)

aus ICLDAMOBJ.DAMDESCRIP

Datenschutz $B';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaed_Indikatoren_vorh IS
'Beschädigungsindikatoren vorhanden

ja/ nein

aus ICLDAMOBJ.XDAMAGEDESC

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad IS
'Beschädigungsgrad

aus ICLDAMOBJ.SEVERITY

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp IS
'Beschädigungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Vermögensschäden
GE		Beschädigter Gegenstand
PE		Gegenstand
RE		Gebäude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

aus ICLDAMOBJ.DAMAGECAT

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedtyp_Daten_vorh IS
'Beschädigungstyp-spezifische Daten vorhanden

ja/ nein

aus ICLDAMOBJ.XSPECIFIC

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Haftpflicht_Kennz IS
'Haftpflicht?

ja/ nein

aus ICLDAMOBJ.XLIAB

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.C_Waehrung IS
'Währung der voraussichtlichen Schadenhöhe

aus ICLDAMOBJ.ECCURR

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.FK_ER01_OB01_beschObjekt IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.Vorauss_Schadenhoehe IS
'Voraussichtliche Schadenhöhe

aus ICLDAMOBJ.EC

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ICLDAMOBJ.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.angelegt_von_A IS
'... user, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ICLDAMOBJ.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLDAMOBJ.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER01_OB01_bescObj_SHUKR_01_LBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLDAMOBJ.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.FK_ER01_Schaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.SK_ER01_PA02_VNRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_PA02_VNRolle_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Anfragedatum IS
'Anfragedatum

aus ZCM_DB_ESKALAT.ANFRAGE_DATUM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Ausfuehrungsdatum IS
'Ausführungsdatum

aus ZCM_DB_ESKALAT.AUSF_DATUM

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe IS
'Schritt im Eskalationsprozess

aus ZCM_DB_ESKALAT.STUFE

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.C_Hellschaltung IS
'Hellschaltung

Ja / Nein

aus ZCM_DB_ESKALAT.HELL

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.FK_ER01_Schaden IS
'Eindeutiger Surrogate-Key welcher durch das ETL-Tool erstellt wird

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER01_Schaden_Eskalat_R_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Anzahl_Familienangehoerige IS
'Anzahl der Familienangehoerigen (des VN/ der versicherten Person?) unter den verunglückten Personen

aus ICLSUBCL.ZZINSASSEN

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Anzahl_Insassen IS
'Anzahl der Insassen in einem verunglückten Fahrzeug

aus ICLSUBCL.ZZINSASSEN

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein

aus ICLCLAIM.XFRAUD

wg. Nicht-Änderbarkeit in der Historie: Datenschutz $C';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja /Nein

ICLSUBCL.STREJECT

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Bearbeitungsstatus IS
'... gibt Auskunft über den Status der Bearbeitung des Teilschadens

Ausprägungen sind zu klären, evtl. wie bei Schaden???

aus ICLSUBCL.STATUS

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Besonderheiten IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ICLSUBCL.ZZCLAIM_SPECS

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ICLSUBCL.XCOVCONFIRMED

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Fahrgast_OePNV IS
'Kennzeichnet, ob Anspruchsteller Fahrgast ÖPNV ist. (????)

Ja / Nein

aus ICLSUBCL.ZZOPNV

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Fehlanlage IS
'Fehlanlage

Ja / nein

ICLSUBCL.ZZCREA_BYMISTAKE

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Komplexitaet IS
'... gibt die Komplexität des Teilschadens an.

Gültige Werte sind (??):
Großschaden
Sofortschaden
Standardschaden
Zahlschaden

aus ICLSUBCL.COMPLEX

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Mehrleistung IS
'Mehrleistung ab 90%

Ja / Nein

aus ICLSUBCL.ZZMEHRLEISTUNG

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Mitarbeiter IS
'Kennzeichnet, ob Anspruchsteller DEVK/DB Mitarbeiter ist.

Ja / Nein

aus ICLSUBCL.ZZMITARBEITER

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential IS
'Regresspotenzial eines Teilfalles (Regressprüfstatus)

ja /Nein ? original char(1)

ICLSUBCL.SUBRO_POTENTIAL

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_SchadenOhneForderung IS
'Schaden ohne Forderung

aus ICLSUBCL,STNOCLAIM

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Sondervereinb_Mehrl IS
'Sondervereinbarung Mehrleistung

Ja / Nein

aus ICLSUBCL.ZZSONDERMEHRLEISTUNG

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Steuerung IS
'... gibt an, welche Art der Schadensteuerung stattgefunden hat.

Fraglich ist, wie die Inhalte auf Fall- und Teilfallebene korrespondieren??

aus ICLSUBCL.ZZCLAIM_MGT

Datenschutz $-
';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_TeilfallUngueltig IS
'Teilfall ist ungültig

Ja / Nein

ICLSUBCL.STINVALID

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.C_Teilschadenart IS
'... wird aus Quelle übernommen.

Es ist zu klären, ob neben der Information "Teilungsabkommen" weitere Infos notwendig sind (Dummyschaden, Teilkasko, ....) z.T. inhaltlich gleiche/ähnliche Werte wie Deckungsart. 

Verwendet z.B. bei KFZ Vollkasko-Teilschaden, der sich auf den Teilkasko-Anteil im Vollkasko bezieht

aus ICLSUBCL.SUBCLTYPE

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.FK_ER02_Teilschaden IS
'
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Haftungsquote IS
'.. ist nur in KH und Allg. H relevant und bezeichnet den Anteil der Haftung der DEVK gegenüber Dritten (Anspruchssteller).

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Beginn_B IS
'Geltendmachung Invalidität

aus ICLSUBCL.ZZINVALID_DATE	(DATE)

Datenschutz $B';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidität

aus ICLSUBCL.ZZINVALIDITY	(NUMBER(16 , 2))

Datenschutz $B';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLSUBCL.CLIENT

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Schadennummer_A IS
'Schadennummer

aus ICLSUBCL.CLAIM ("Fallnummer" lt. CM)

Datenschutz $A1';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLSUBCL.SUBCLAIM ("Teilfallnummer" lt. CM)

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.Ueberstimmungsgrund IS
'Uberstimmungsgrund - laut SAP hinterliegt keine Werteliste.

aus ICLSUBCL.OVERRULEREASON

(original char(3))

Datenschutz $-
';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ICLSUBCL.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.angelegt_von_A IS
'... user, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ICLSUBCL.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLSUBCL.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER02_Teilschaden_SHUKR_02_WBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLSUBCL.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Anwaltsbudget IS
'... ist der Betrag für das Anwaltsbudget des Verfahrens in C_Waehrung.

in Schaden: NotNull 

aus ICLLITHEADER.COUNSELBUDGET

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Aufnahmedatum IS
'... ist das Datum der Verfahrensaufnahme.

in Schaden vorhanden: NotNull  

aus ICLLITHEADER.STARTDATE

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart IS
'... ist die Art, in der das Verfahren erledigt wurde.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

in Schaden für erledigte Verfahren: NotNull

aus ICLLITHEADER.SETTLEMENT

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf IS
'... ist der Zeitpunkt im Verfahren relativ zum Verfahrensablauf, an dem das Verfahren erledigt wurde.

Schaden Werte::
Klage abgewiesen
vor der Verhandlung
während der Verhandlung

in Schaden: Nullable

aus ICLLITHEADER.SETTLED

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung IS
'... ist die Einschätzung der Haftung der DEVK.

Schaden Werte::
Eindeutig
Keine
Strittig

in Schaden: Nullable

aus ICLLITHEADER.LIABILITY

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart IS
'... ist die Art de Verfahrens.

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

aus ICLLITHEADER.LITTYPE

Datenschutz $-
';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B IS
'... ist der Gegenstand, um den es im Verfahren geht.

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entschädigungshöhe
0005		Schmerzensgeldhöhe
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist überschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gründe (z.B.Anf.wg.Argl.)

aus ICLLITHEADER.LITISSUE

wegen bestimmter Ausprägungen : Datenschutz $B';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus IS
'... gibt den Status des Verfahrens an.

Schaden Werte:
offen
geschlossen
wiedereröffnet
storniert

in Schaden vorhanden: NotNull

aus
ICLLITHEADER.CANCELLED
ICLLITHEADER.FINISHED
ICLLITHEADER.REOPENED


Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.C_Waehrung IS
'... ist die Währung, für die Beträge (z.B. Anwaltsbudget, Streitwert, Urteilsbetrag) des Verfahrens.

in Schaden: NotNull

aus ICLLITHEADER.CURRENCY

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Erledigungsdatum IS
'... ist das Datum, an dem das Verfahren erledigt ist.

in Schaden für erledigte Verfahren: NotNull

aus ICLLITHEADER.ENDDATE

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLLITHEADER.CLIENT

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Offenlegungsdatum IS
'... ist das Datum der Offenlegung des Sachverhalts.

in Schaden: Nullable  

aus ICLLITHEADER.DISCLOSUREDATE

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Rechtskraftdatum IS
'... ist das Datum der Rechtskraft des Urteils bzw. des Vergleichs.
Das ist das Ende einer Frist, um z.B. Widerspruch einzulegen bzw. in Revision zu gehen. Ist das Rechtskraftdatum erreicht, kann keine Revision mehr eingelegt werden.

in Schaden vorhanden: Nullable

aus 28	ICLLITHEADER.ZZLIT_DATE_LEGAL

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Schadennummer_A IS
'...ist die Schadennummer

aus ICLLITHEADER.CLAIM

Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_geschaetzt IS
'... ist der Betrag des geschätzten Streitwerts des Verfahrens in C_Waehrung.

in Schaden: NotNull

aus ICLLITHEADER.ESTIMAMOUNT

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_tatsaechlich IS
'... ist der Betrag des tatsächlichen Streitwerts des Verfahrens in C_Waehrung.

in Schaden: NotNull

aus ICLLITHEADER.LITAMOUNT

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Urteilsbetrag IS
'... ist der Betrag de Urteils (bzw. des Vergleichs) bei einem erledigten Verfahren.

in Schaden vorhanden: NotNull

aus ICLLITHEADER.ZZLIT_LEG_AMOUNT

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrens_GUID_A IS
'...ist die GUID des Verfahrens

aus ICLLITHEADER.LITHGUID

Datenschutz $A1';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbemerkung_B IS
'... ist eine Bemerkung zum Verfahren.

in Schaden: Nullable

aus ICLLITHEADER.ZZCOMMENT

wegen Freitext: Datenschutz $B';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbeschreibung_B IS
'... ist eine Freitext-Beschreibung des Verfahrens.

in Schaden vorhanden: Nullable

aus ICLLITHEADER.DESCR
	
Datenschutz $B';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensnummer IS
'... ist die identifizierende Nummer des Gerichtsverfahrens.

in Schaden vorhanden: NotNull

aus ICLLITHEADER.LITH_NAME (Eindeutiger technischer Name des Verfahrens)

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.Verjaehrungsfrist_Ende IS
'... ist das Datum, an dem die Verjährung eintritt.

in Schaden vorhanden: Nullable

aus ICLLITHEADER.SOLPERIODDATE

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLLITHEADER.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLLITHEADER.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER03_LE03_BL.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.FK_LE03_Regress IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.SK_ER03_LE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.FK_ER03_LE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER03_LE03_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Aktenzeichen_A IS
'... ist das bei Gericht geführte Aktenzeichen der Instanz des Gerichtsverfahrens.

in Schaden vorhanden: Nullable

aus ICLLITITEM.CASENUMBER

Datenschutz $A1';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch IS
'... ist der die Instanz durch Berufung, Revision oder. Beschwerde auslösende Prozessbeteiligte.

Schaden Werte::
DEVK
Prozessgegner

in Schaden vorhanden: Nullable

in Schaden: "Ber./Rev. durch"

aus ICLLITITEM.APPEAL

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit IS
'... ist der betroffene Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

in Schaden vorhanden: Nullable

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

aus ICLLITITEM.JURISDICTION

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsstand_Region IS
'... ist die Region des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
Antwerpen
Buenos Aires
Schleswig-Holstein
...

in Schaden vorhanden: Nullable

aus ICLLITITEM.REGION

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtstand_Land IS
'... ist das Land des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
AD	Andorra
AF	Afghanistan
AL	Albanien
AM	Armenien
AT	Östereich
AU	Australien
DE	Deutschland
...

in Schaden vorhanden: NotNull

aus ICLLITITEM.COUNTRY

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Instanzergebnis IS
'... ist das Ergebnis der Instanz.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
< 50% gewonnen
>= 50% gewonnen
50:50
außergerichtlich verglichen (< 50%)
außergerichtlich verglichen (>= 50%)
gerichlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klagerücknahme

in Schaden vorhanden: NotNull

aus ICLLITITEM.ZZLIT_RESULT

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus IS
'... gibt den Status der Instanz des Gerichtsverfahrens an.

Schaden Werte:
offen
akzeptiert
abgelehnt
storniert

in Schaden vorhanden: NotNull

aus
ICLLITITEM.CANCELLED
ICLLITITEM.ACCEPTED
ICLLITITEM.REJECTED

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz IS
'... ist die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

in Schaden vorhanden: NotNull

aus ICLLITITEM.COURTLEVEL

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Eingangsdatum_Gericht IS
'... ist das Datum des Eingangs des Verfahrens zu dieser Instanz bei Gericht.

in Schaden vorhanden: Nullable

aus ICLLITITEM.DATESUITFILED

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Erwiderungsfrist_Ende IS
'... ist das Datum,bis zu dem eine Erwiderung bei Gericht eingegangen sein muss, um wirksam zu sein.

in Schaden vorhanden: Nullable

aus ICLLITITEM.ANSWERDUEDATE

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.FK_ER04_Gerichtsinstanz IS
'
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Gerichtsstand_Gemeinde IS
'... ist die Gemeinde des Gerichtsstands der Instanz des Gerichtsverfahrens.

in Schaden vorhanden: Nullable

aus ICLLITITEM.MUNICIPALITY

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Instanz_GUID_A IS
'...ist die GUID der Verfahrensinstanz

aus ICLLITITEM.LITITEMGUID

Datenschutz $A1';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Instanzbeginndatum IS
'... ist das Datum des Beginns der Instanz.

in Schaden vorhanden: Nullable

aus ICLLITITEM.ZZLIT_BEGIN

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Instanzendedatum IS
'... ist das Datum des Endes der Instanz.

in Schaden vorhanden: NotNull

aus ICLLITITEM.ZZLIT_END

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Instanznummer_lfd IS
'... ist die identifizierende Nummer der Instanz des Gerichtsverfahrens.

Schaden: Diese Nummer gilt relativ zum referenzierten Gerichtsverfahren. 
in Schaden vorhanden: NotNull

aus ICLLITITEM.LITITEM_NUM (Instanznummer, relativ zum Gerichtsverfahren)

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Schadennummer_A IS
'...ist die Schadennummer

aus ICLLITITEM.CLAIM

Datenschutz $A1';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Verfahrensnummer IS
'... ist die identifizierende Nummer des Gerichtsverfahrens.

in Schaden vorhanden: NotNull

aus ICLLITHEADER.LITH_NAME (Eindeutiger technischer Name des Verfahrens) where ICLLITHEADER.LITHGUID = ICLLITITEM.LITHGUID

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Verhandlungsdatum IS
'...das Datum der Verhandlung.

in Schaden vorhanden: Nullable
Wie das Attribut genutzt wird ist unklar, ibs. hinsichtlich zukünftiger Termine oder der vollständigen Erfassung aller Termine in der Zeitreihe.
Zunächst wird die Befüllung des Weak Links "ER05_GerVerhandlung_ER04_BW" zurückgestellt und deshalb (vorläufig) dieses Attribut der Gerichts-Instanz zugeordnet.

aus ICLLITITEM.TRIALDATE

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.Zustellungsdatum IS
'... ist der Tag, an dem der Adressat vom Zugang des zugestellten Schriftstücks (insbes. der Klage) persönlich Kenntnis erlangt und es empfangsbereit entgegennimmt. 

in Schaden vorhanden: Nullable

aus ICLLITITEM.SERVICEDATE

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.externe_Referenz_A IS
'... ist eine Referenz auf externe Unterlagen. ???

in Schaden vorhanden: Nullable

aus ICLLITITEM.EXTREF

Datenschutz $A1';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLLITITEM.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLLITITEM.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN ER04_GerInstanz_SHUKR_01_WBS.rechtl_Vertretung IS
'... ist die Bezeichnung der rechtlichen Vertretung der DEVK vor Gericht.

in Schaden nicht vorhanden: Nullable

nicht gefüllt, Ausprägungen unklar

aus ICLLITITEM.DEFENSETYPE

Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.FK_ER03_Gerichtsverfahren IS
'
Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.SK_ER04_Gerichtsinstanz IS
'
Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN ER04_Gerichtsinstanz_ER03_BW.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.FK_LE01_KT01_Beleg_BL IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_KT01_Beleg_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.FK_LE01_LE03 IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_LE03_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.C_Pruefung_Zuf_vorgesehen IS
'Zahlung ist  per Zufallsgenerator für eine Prüfung vorgesehen

ja/ nein

aus ICLACTIVITY.ACTIVITY =  ''PAPAL4''

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLACTIVITY.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Schadennummer_A IS
'Schadennummer

aus ICLACTIVITY.CLAIM ("Fallnummer" lt. CM)

Datenschutz $A1';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLACTIVITY.SUBCLAIM ("Teilfallnummer" lt. CM)

Datenschutz $-';

COMMENT ON COLUMN LE01_ZahlungZuf_SHUKR_01_HBS.Zahlungsnummer IS
'laufende Nummer der Zahlung innerhalb des Teilschadens.

aus substr( ICLACTIVITY.SUBOBJECT, 4, 5)

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Abgabedatum IS
'Abgabedatum der Forderung (an externes Inkasso o.ä.)

aus ICLPAY.ZZABGABE_DATUM

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Aktenzeichen_ext_A IS
'Aktenzeichen des externen Inkasso oder Regress-Büros

aus ICLPAY.ZZAKTENZEICHEN

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Belegdatum IS
'... Belegdatum der Zahlung

aus ICLPAY.DOCDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Betrag IS
'... ist der Gesamtbetrag der Zahlung -- Summe der Teilzahlungen?

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.BetragInEuro IS
'... ist der Gesamtbetrag der Zahlung in Euro -- Summe der Teilzahlungen in Euro?

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Buchungsdatum IS
'... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird.

aus ICLPAY.POSTDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Abgabestatus IS
'Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassobüro)
3	Sonstige (Inkassobüro)
4	M+R (Regressbüro)
5	Sonstige (Regressbüro)

aus ICLPAY.ZZABGABE_STATUS

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen IS
'Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

aus ICLPAY.ZZA_D_ZAHLPFLICHT

Datenschutz $-?';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_BruttoNetto IS
'Steuertyp des Betrages

brutto / netto

Verhältnis zu den entsprechenden Kennzeichen der Zahlung_Detail ist zu klären.

aus ICLPAY.GROSS_NET_PAYMENT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Migriert IS
'Zahlung zu migriertem Schaden

Ja / Nein

aus ICLPAY.MIGRATION

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_SatzartDerZahlung IS
'... gibt an, ob es sich um eine Zahlung oder Rückzahlung handelt

0	Auszahlung
1	Rückzahlung
2	Anforderung aus Regress
3	Auszahlung aus Provenue
4	Verrechnung Selbstbehalt
5	Anforderung aus Provenue
6	Abschlagszahlung
7	Statistische Buchung für Provenue
8	Def. wiederk. Zahlung
9	Wiederkehrende Zahlung

aus ICLPAY.PAYCAT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_ScheckOffen IS
'Kennzeichen, ob der Scheck noch offen ist. Redundant zu In-/Exkasso.

ja / nein

aus ICLPAY.ZZCHECK_OPEN

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Vollmachtsstufe IS
'Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A/B/C

aus ICLPAY.ZZMANDATE_LEVEL

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Waehrung IS
'... ist die Währung für den entsprechenden (Zahlungs-)Betrag

aus ICLPAY.CURR

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_ZahlungStatus IS
'... gibt den Lebenszyklus der Zahlung an, interner Zahlungsstatus:

0	Neu
1	Angelegt
2	Freigegeben
3	Freizugeben
4	Abgelehnt
5	Gebucht
6	Zu buchen
7	Storniert
8	Angefordert
9	Erhalten
A	Gelöscht
B	Zu stornieren
C	Teilweise erhalten
D	Selbstbehalt verrechnet
E	Abzulehnen
F	Zu Löschen
G	Geparkt
H	Zu Parken
I	Geparkt (Posteingang)
J	Dublette
M	Verschoben
P	Neu (Umbuchung)
Q	Umzubuchen
R	Umgebucht
S	Auszugleichen
T	Ausgeglichen
U	Zu Stoppen
V	Gestoppt

aus ICLPAY.STATUS

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Zahlungsart IS
'Zahlungsart:

A	Duplikate
0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFallübergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	Rückzahlung
9	Storno

aus ICLPAY.PAYTYPE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_Zahlweg IS
'... gibt an wie gezahlt wird.

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

aus ICLPAY.METHOD

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.C_durchgefuehrt IS
'Zahlung wurde bereits durchgefuehrt

ja/ nein

aus ICLPAY.XALREADYPAID

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.EingegangenerBetrag IS
'... ist bei Forderungen der bereits eingezahlte Betrag der Gesamtforderung

aus ICLPAY. AMTDONE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.EingegangenerBetragInEuro IS
'... gibt den in Euro umgerechneten Betrag an.

aus ICLPAY.AMTDONE_LOCAL_CCY

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.FK_LE01_Zahlung IS
'
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLPAY.CLIENT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf1_A IS
'...ist für aus SDS migrierte Schäden das erste Freitextfeld mit Informationen zum Zahlungsempfänger

aus IICLPAY.ZZEMP1
original: char( 33)

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf2_A IS
'...ist für aus SDS migrierte Schäden das zweite Freitextfeld mit Informationen zum Zahlungsempfänger

aus IICLPAY.ZZEMP2
original: char( 33)

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Nettofaelligkeit IS
'... Nettofaelligkeit der Zahlung

aus ICLPAY.DUEDATE

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Schadennummer_A IS
'Schadennummer

aus ICLPAY.CLAIM ("Fallnummer" lt. CM)

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Scheckaussteller_ProvKonto_A IS
'Provisionskonto-Nummer des Scheckausstellers fuer manuelle Scheckzahlungen
In der Quelle 8stellig, Freitext

aus ICLPAY.ZZCOMMISS_NUM

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Schecknummer_A IS
'Schecknummer fuer manuelle Scheckzahlungen

aus ICLPAY.CHECKNUMBER

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ICLPAY.SUBCLAIM ("Teilfallnummer" lt. CM)

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.UrsprGeforderterBetrag IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung.

aus ICLPAY. AMTNEG

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.UrsprGeforderterBetragInEuro IS
'... ist der ursprünglich verhandelte Betrag im Zuge einer Forderung, umgerechnet in Euro.

aus ICLPAY. AMTNEG

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Zahlungsnotiz_AB IS
'...ist der "Verwendungszweck", der auf dem Kontoauszug des Kunden erscheint. Enthält evtl. identifizierende und sonstige sensible Inhalte (Freitext).

aus ICLPAY.NOTE

Datenschutz $A1B';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.Zahlungsnummer IS
'laufende Nummer der Zahlung innerhalb des Teilschadens.

aus ICLPAY.PAYMENT

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.angelegt_am IS
'... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde

aus ICLPAY.CREATETIME

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.angelegt_von_A IS
'... user, der  die Zahlung angelegt hat

aus ICLPAY.CREATEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLPAY.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat

aus ICLPAY.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.geprueft_von_A IS
'... ist der User, der die Prüfung durchgeführt hat

aus ICLPAY.APPROVEDBY

Datenschutz $A1';

COMMENT ON COLUMN LE01_Zahlung_SHUKR_02_HBS.uebergeben_am IS
'...  ist der Zeitpunkt der Übergabe an Inkasso-/Exkassosystem

aus ICLPAY.TRANSFERTIME

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.C_Kategorie IS
'Kategorie des versicherten Objekts

AU		Fahrzeug
BI			Verletzte Person
EQ		Equipment
FL		Vermögensschäden
GE		Gegenstand
IG			Vers. Personengruppe
IN		Versicherte Person
IP			Geistiges Eigentum
PE		Hausrat & Equipment
PP		Hausrat
RE		Gebäude
SI			Grundstück
WA		Wasserfahrzeug

aus ICLDAMOBJ.PROPCAT

Datenschutz $-? Liste';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.C_ObjektArt IS
'Art des beschädigten oder versicherten Objektes

aus ICLDAMOBJ.IOBTYPE

Datenschutz $-? Liste';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.FK_OB01_Objekt IS
'
Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)

Datenschutz $-
 ';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeitg des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus ICLDAMOBJ.CLIENT

hier redundant gemerkt als Bestandteil des Business-Keys.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Objekt_lfd IS
'... ist eine laufende Nummer zur eindeutigen Identifizierung von Objekten innerhalb eines Schadens.

aus
ICLDAMOBJ.DAMAGEDOBJ
ICLDAMOBJ.INSUREDOBJ

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.Schadennummer_A IS
'
aus CM:
ICLDAMOBJ.CLAIM (Schadennummer)

hier redundant gemerkt als Bestandteil des Business-Keys.

Datenschutz $A1';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLDAMOBJ.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN OB01_Objekt_Sch_01_HBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLDAMOBJ.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.C_Verletzung_B IS
'Beschreibung der Verletzung

5675	P - KB			Person - Knochenbrüche
5676	P - KV			Person - Kopfverletzungen
5677	P - PW		Person - Platzwunden
5678	P - PZ			Person - Prellungen / Zerrungen
5679	P - SO			Person - Sonstige Verletzungen
5680	P - SW			Person - Schnittwunden
5681	P - HWS		Person - HWS

aus ICLITEMDD.SUBOBJECT where ICLITEMDD.SUBOBJCAT = "DD"

Datenschutz $B';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.FK_PA01_PA02_ER01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_01_LBM.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Alter_Person IS
'Personenalter

aus ICLITEMBI.AGE

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Arbeitgeber IS
'Arbeitgeber

aus ICLITEMBI.ZZEMPLOYER

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Beruf IS
'Beruf

aus ICLITEMBI.ZZPROFESSION

Datenschutz $-
';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Beschreibung_Verletzung_B IS
'Beschreibung der Verletzung

aus ICLITEMBI.ZZINDESC

Datenschutz $B';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.C_Todesfall IS
'Kennzeichen: Todesfall?

Ja / Nein

aus ICLITEMBI.XFATALITY

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.C_Verletzungen_B IS
'Kennzeichen: Bestehende Verletzungen?

Ja / Nein

aus ICLITEMBI.XINJURIES

Datenschutz $B';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.C_selbstaendig IS
'selbständig

Ja / Nein

aus ICLITEMBI.ZZSELF_EMPLOYED

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.FK_PA01_PA02_ER01 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidität

aus ICLITEMBI.PERCENT_IMPAIR	(NUMBER(16 , 2))

Datenschutz $B
';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Sterbedatum IS
'Sterbedatum

aus ICLITEMBI.ZZDATEOFDEATH

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.Taetigkeit_akt IS
'Aktuelle Tätigkeit

aus ICLITEMBI.ZZACTUAL_EMPL

Datenschutz $-
';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.geaendert_am IS
'...  ist der Zeitpunkt der letzten Änderung

aus ICLITEMBI.CHANGETIME

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER01_SHUKR_02_LBS.geaendert_von_A IS
'... ist der User, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ICLITEMBI.CHANGEDBY

Datenschutz $A1';

COMMENT ON COLUMN PA01_PA02_ER04_BL.FK_ER04_Gerichtsinstanz IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.FK_PA01_Partner IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.FK_PA02_PartnerRolle IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.SK_PA01_PA02_ER04 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_BL.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.Erfassung_Gueltig_Beginn IS
'... Zeitpunkt der Einstellung des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.Erfassung_Gueltig_Ende IS
'... Zeitpunkt der Einstellung des nächsten zugehörigen Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.FK_PA01_PA02_ER04 IS
'
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.Fachlich_Gueltig_Beginn IS
'... Beginn der Gültigkeit des Datensatzes im Quellsystem (evtl. aus Änderungsdatum ermittelbar)
 
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.Fachlich_Gueltig_Ende IS
'... Ende der Gültigkeit des Datensatzes im Quellsystem

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.TA_Ersatzdatum IS
'... identifiziert eindeutig, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate
Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.TA_Lade_ID  IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN PA01_PA02_ER04_SHUKR_01_LBS.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE ER01_ER02_ER03_BL IS
'Zuordnung eines Gerichtsverfahrens zu einem Schaden und optional (evtl. mittels Dummy) zu einem Teilschaden.
Fachlich ist damit ein Gerichtsverfahrens ENTWEDER einem Schaden ODER einem Teilschaden zugeordnet. 
Zuordnung: Schaden, wenn kein Teilschaden oder ein Dummy-Teilschaden zugeordnet ist; Teilschaden sonst.

Bei Zuordnung zu einem Teilschaden wird der zugehörige Schaden auch verbunden, d.h. dass sowohl der Fremdschlüssel FK_ER01_Schaden als auch der Fremdschlüssel FK_ER02_Teilschaden gefüllt wird.

Nur für eigene Prozesse, für Kunden-Prozesse als Schadenfälle der Rechtsschutzversicherung s. ER01_ER03_Kundenprozess_BL.

für Sach und Rechtsschutz::
Ein Gerichtsverfahren wird im Quellsystem stets zu einem Schaden festgehalten und es wird ebenfalls stets eine Beziehung zu einem Teilschaden hergestellt. Es ist stets an der Verfahrensart ablesbar, ob es sich um ein Gerichtsverfahren zu einem Schaden oder zu einem Teilschaden handelt ud die andere Beziehung in der Quelle irrelevant ist. Wenn es z.B. bei einem Schaden zur Sparte "Kraftfahrt Haftpflicht" um ein Gerichtsverfahren der Verfahrensart "Deckungsprozess" oder "SFR-Prozess" geht, ist die Beziehung zum Teilschaden zwar im Quelllsystem vorhanden, sie ist aber irrelevant, da es sich nicht um ein Verfahren zu einem Teilschaden handelt.

BK für Sach und Rechtsschutz:

ER01:	Bildungsregel					''SHUKR''
			Mandant							ICLLITHEADER.CLIENT			Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer				ICLLITHEADER.CLAIM			Nummer des Schaden- / Leistungsfalls
ER02:	Bildungsregel					''SHUKR''
			Mandant							ICLLITHEADER.CLIENT			Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
			Schadennummer				ICLLITHEADER.CLAIM			Nummer des Schaden- / Leistungsfalls
			Teilschaden_lfd					ICLSUBCL.SUBCLAIM			laufende Nummer des Teilschadens relativ zum Schaden, falls ermittelbar, sonst ''-1''
ER03:	Bildungsregel					''SHUKR''
			Mandant							ICLLITHEADER.CLIENT			Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer				ICLLITHEADER.CLAIM			Nummer des Schaden- / Leistungsfalls
			GUID des Verfahrens			ICLLITHEADER.LITHGUID
ER01_ER02_ER03_BL:
			Bildungsregel					''SHUKR''
			Mandant							ICLLITHEADER.CLIENT			Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer				ICLLITHEADER.CLAIM			Nummer des Schaden- / Leistungsfalls
			Teilschaden_lfd					ICLSUBCL.SUBCLAIM			laufende Nummer des Teilschadens relativ zum Schaden, falls ermittelbar, sonst ''-1''
			GUID des Verfahrens			ICLLITHEADER.LITHGUID';

COMMENT ON TABLE ER01_OB01_bescObj_SHUKR_01_LBM IS
'Multi-Active Satellite';

COMMENT ON TABLE ER01_PA02_VNRolle_BL IS
'Beziehung zwischen Schaden und Rolle im Sinne von

FK_PA02_PartnerRolle ''ist Rolle des VN in Bezug auf das Fahrzeug bzw. den Unfall zu Schaden'' FK_ER01_Schaden
z.B.
Berechtigter Fahrer
Halter
Fahrer und Halter
Halter und mutmaßlicher Fahrer
Zeuge

BK für Schäden aus CM und Rollen:
ICLCLAIM.CLIENT															(Mandant, immer ''100'')
ICLCLAIM.CLAIM															(Schadennummer)
''HARM~'' ||  HARM( ICLCLAIM.ZZROLE_MAND)		(Surrogat-Key zur Rolle)

Dabei ist die Schadennummer die Nummer des Schaden- / Leistungsfalls.
Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt.
Surrogat-Key ist der numerische Wert, der von der Harmonisierung zur Rolle geliefert und im Zusammenhang mit harmonisierten Feldern i.d.R. zum Lookup verwendet wird

';

COMMENT ON TABLE ER01_Schaden_Eskalat_R_01_HBS IS
'Bei RS werden nach gewissen Fristen automatische Eskalationssschritte eingeleitet (Nachfragen / Anschreiben der Anwälte), die in der letzten Stufe zu einer Hellschaltung und Schließung des Schadenfalls führen. 

Business Key:
ZCM_DB_ESKALAT.CLIENT
ZCM_DB_ESKALAT.CLAIM
ZCM_DB_ESKALAT.STUFE';

COMMENT ON TABLE ER03_GerVerf_eig_SHUKR_01_HBS IS
'enthält Informationen über selbst geführte Gerichtsverfahren, d.h. mit DEVK als Kläger oder Beklagtem.';

COMMENT ON TABLE ER03_LE03_BL IS
'Zuordnung eines Regress zu einem Gerichtsverfahren.

Business Keys:
ER03:	Bildungsregel								''SHUKR''
			Mandant										ICLSUBROG.CLIENT		Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer							ICLSUBROG.CLAIM		 Nummer des Schaden- / Leistungsfalls
			GUID des Verfahrens						ICLSUBROG.LITHGUID
LE03:	Bildungsregel								''SHUKR''
			Mandant										ICLSUBROG.CLIENT
			Schadennummer							ICLSUBROG.CLAIM
			GUID  des Regress							ICLSUBROG.SUBROG_GUID
ER03_LE03_BL:
			Bildungsregel								''SHUKR''
			Mandant										ICLSUBROG.CLIENT
			Schadennummer							ICLSUBROG.CLAIM
			GUID  des Regress							ICLSUBROG.SUBROG_GUID
			GUID des Verfahrens						ICLSUBROG.LITHGUID
';

COMMENT ON TABLE ER04_Gerichtsinstanz_ER03_BW IS
'... ist die Instanz für ein Gerichtsverfahren.

BK aus ESA bei eigenen Prozessen:
	Bildungsregel								''SHUKR''
	Mandant										ICLLITITEM.CLIENT		Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
	Schadennummer							ICLLITITEM.CLAIM		 Nummer des Schaden- / Leistungsfalls
	GUID der Verfahrensinstanz			ICLLITITEM.LITITEMGUID



';

COMMENT ON TABLE PA01_PA02_ER01_SHUKR_01_LBM IS
'Multi-Active Satellite';

COMMENT ON TABLE PA01_PA02_ER04_BL IS
'Partner_Rolle_Gerichtsinstanz

bildet die Gerichtsverfahren-Instanzen-Rollen ab, z.B.
Kläger
Beklagter
Rechtsanwalt
Richter
Beisitzer
Gerichtsverfahrensbeteiligter

Business Keys:
PA01:	Mandant										ICLPARTOCC.CLIENT
			Partnerordnungsbegriff (POB)	ICLPARTOCC.BPARTNER			ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
PA02:	Bildungsregel								''HARM''
			Partnerrolle									HARM( ICLPARTOCC.ROLE)		Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
ER04:	Bildungsregel								''SHUKR''
			Mandant										ICLLITITEM.CLIENT						Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt
			Schadennummer							ICLLITITEM.CLAIM						Nummer des Schaden- / Leistungsfalls
			GUID der Verfahrensinstanz			ICLLITITEM.LITITEMGUID
															bei	ICLPARTOCC.SUBOBJECT = ICLLITITEM.SUBOBJECT und ICLPARTOCC.SUBOBJCAT = ''LI''
PA01_PA02_ER04_BL:
			Mandant										ICLPARTOCC.CLIENT
			Partnerordnungsbegriff (POB)	ICLPARTOCC.BPARTNER			ohne 1. und letzte Stelle, entspricht inhaltlich dem POB aus Paris
			Partnerrolle									HARM( ICLPARTOCC.ROLE)		Surrogat-Key, also der numerische Wert, der von der Harmonisierung zur Rolle geliefert wird
			Schadennummer							ICLLITITEM.CLAIM						Nummer des Schaden- / Leistungsfalls
			GUID der Verfahrensinstanz			ICLLITITEM.LITITEMGUID
															bei	ICLPARTOCC.SUBOBJECT = ICLLITITEM.SUBOBJECT und ICLPARTOCC.SUBOBJCAT = ''LI''';

