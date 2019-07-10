--<ScriptOptions statementTerminator=";"/>
-- Version 20869

CREATE TABLE F_FoVePos_Prognose (
		SK_FoVePos_Prog VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_FoVePos VARCHAR2(64 CHAR) NOT NULL,
		SK_Prognose_Lauf VARCHAR2(64 CHAR) NOT NULL,
		ID_Prognose_Laufdatum NUMBER(28 , 0) NOT NULL,
		ID_Ausnahmegrund NUMBER(28 , 0) NOT NULL,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeitdatum NUMBER(28 , 0) NOT NULL,
		Anzahl_FoVe_Positionen NUMBER(10 , 0) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '05.11.2018','DD.MM.YYYY') NOT NULL,
		Deploymentdatum DATE DEFAULT sysdate NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE F_FoVePos_Prognose ADD CONSTRAINT F_FoVePo_inP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_FoVePos_Prog);

COMMENT ON COLUMN F_FoVePos_Prognose.Anzahl_FoVe_Positionen IS
'.. ist die Anzahl der Belegpositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.BetragInEuro IS
'aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_Belegposition_KT01_BW->
KT06_BelegPosition_InEx_..._WBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.ID_Ausnahmegrund IS
'aus KT06_BePoLaufProg_InEx_..._WBM.C_Postenkennzeichen_B

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.ID_HauptTeilvorgang IS
'aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_Belegposition_KT01_BW->
KT06_BelegPosition_InEx_..._WBS.C_Teilvorgang.

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_Prognose.ID_InEx_Produktgruppe IS
'aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_Belegposition_KT01_BW->
KT06_BelegPosition_InEx_..._WBS.C_InEx_Produktgruppe, 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.ID_Nettofaelligkeitdatum IS
'aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_Belegposition_KT01_BW->
KT06_Belegposition_InEx_..._WBS.Nettofaelligkeit, 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.ID_Prognose_Laufdatum IS
'aus KT06_BePoLaufProg_InEx_..._WBM.DatumZahllauf

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.SK_FoVePos IS
'aus KT06_BePoLaufProg_InEx_..._WBM.FK_KT06_BelegPosition

Datenschutz $-

';

COMMENT ON COLUMN F_FoVePos_Prognose.SK_FoVePos_Prog IS
'aus KT06_BePoLaufProg_InEx_..._WBM.FK_KT06_BelegPosition
und aus KT06_BePoLaufProg_InEx_..._WBM.DatumZahllauf 
und aus  KT06_BePoLaufProg_InEx_..._WBM.KennungZahllauf

Datenschutz $-

';

COMMENT ON COLUMN F_FoVePos_Prognose.SK_Forderung_Verbindlichkeit IS
'aus KT06_BePoLaufProg_InEx_..._WBM.Mandant
und KT06_BePoLaufProg_InEx_..._WBM.BelegNr_A

oder aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_Belegposition_KT01_BW.FK_KT01_Beleg

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_Prognose.SK_InExkassoObjekt IS
'aus KT06_BePoLaufProg_InEx_..._WBM->
KT06_BelegPosition_KT01_BW->
KT05_KT06_BL.FK_KT05_InExkassoobjekt, 

falls vorhanden, sonst :=leer

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.SK_Prognose_Lauf IS
'aus KT06_BePoLaufProg_InEx_..._WBM.DatumZahllauf 
und aus  KT06_BePoLaufProg_InEx_..._WBM.KennungZahllauf

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.

hier aus KT06_BePoLaufProg_InEx_01_WBM.DatumZahllauf
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

hier: KT06_BePoLaufProg_InEx_01_WBM.DatumZahllauf+1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_Prognose.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN Releasestand.Deploymentdatum IS
'Datum des Deployments, Defaultwert ist sysdate.';

COMMENT ON COLUMN Releasestand.Modelldatum IS
'Datum der Erstellung der DDL zum Releasestand aus dem Datenmodell.
Das entsprechende Datum wird hier als Defaultwert in der DDL hinterlegt (durch create table bzw. alter table)
';

COMMENT ON COLUMN Releasestand.Releasebezeichnung IS
'Bezeichnung des Release';

COMMENT ON TABLE F_FoVePos_Prognose IS
'aus KT06_BePoLaufProg_InEx_01_WBM











';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einführung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgeführt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

