--<ScriptOptions statementTerminator=";"/>
-- Version 22337

CREATE TABLE AGG_SCHADEN_1 (
		SK_AGG_SCHADEN_1 VARCHAR2(64) NOT NULL,
		TA_LADEDATUM DATE NOT NULL,
		TA_LADE_ID NUMBER(28 , 0) NOT NULL,
		TA_AENDERUNGSDATUM DATE NOT NULL,
		TA_AENDERUNGS_ID NUMBER(28 , 0),
		TA_ERSATZDATUM DATE NOT NULL,
		TA_ERSATZ_ID NUMBER(28 , 0),
		GUELTIG_BEGINN DATE NOT NULL,
		GUELTIG_ENDE DATE,
		ID_SCHADENMERKMALE NUMBER(28 , 0) NOT NULL,
		ID_SCHADURSACHEGEF NUMBER(28 , 0) NOT NULL,
		ID_SCHADENSTATUS_DETAIL NUMBER(28 , 0) NOT NULL,
		GJ_SCHADEN CHAR(1) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_REGION_BEARBEITUNGSSTELLE NUMBER(28 , 0) NOT NULL,
		ID_REGION_VERTRAGSFUEHSTELLE NUMBER(28 , 0) NOT NULL,
		ID_GROSSKUNDE NUMBER(28 , 0) NOT NULL,
		ID_REGION_ANLEGENDE_STELLE NUMBER(28 , 0) NOT NULL,
		OHNEENTSCHAEDIGUNG CHAR(1) NOT NULL,
		AUFWANDSNEUTRAL_OHNE_SRK CHAR(1),
		FEHLANLAGE CHAR(1) NOT NULL,
		ID_MELDEJAHR NUMBER(28 , 0) NOT NULL,
		ID_EINTRITTSJAHR NUMBER(28 , 0) NOT NULL,
		GJ_WIEDEREROEFFNET CHAR(1) NOT NULL,
		ID_ANLAGEJAHR NUMBER(28 , 0) NOT NULL,
		ID_SCHADENSCHLUSSJAHR NUMBER(28 , 0) NOT NULL,
		ID_JAHR_1_WIEDEREROEFFNUNG NUMBER(28 , 0) NOT NULL,
		ID_SPARTENKENNZIFFER NUMBER(28 , 0) NOT NULL,
		REGRESS_GESI_INITIAL_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_INITIAL_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_INITIAL_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_OFFEN NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_SRK NUMBER(16 , 2) NOT NULL,
		ZAHLUNGEN_SALDIERT NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNGEN_SALDIERT NUMBER(16 , 2) NOT NULL,
		SCHADENAUFWAND_OHNE_IK NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_ENTSCH NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_RENTE NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_SRK NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_ENTSCH NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_RENTE NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_SRK NUMBER(16 , 2) NOT NULL,
		ANZAHL NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		SCHADENAUFWAND_OHNE_IK_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ANZAHL_BEARB_YTD NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE AGG_SCHADEN_2 (
		SK_AGG_SCHADEN_2 VARCHAR2(64) NOT NULL,
		TA_LADEDATUM DATE NOT NULL,
		TA_LADE_ID NUMBER(28 , 0) NOT NULL,
		TA_AENDERUNGSDATUM DATE NOT NULL,
		TA_AENDERUNGS_ID NUMBER(28 , 0),
		TA_ERSATZDATUM DATE NOT NULL,
		TA_ERSATZ_ID NUMBER(28 , 0),
		GUELTIG_BEGINN DATE NOT NULL,
		GUELTIG_ENDE DATE,
		ID_SCHADENMERKMALE NUMBER(28 , 0) NOT NULL,
		ID_SCHADURSACHEGEF NUMBER(28 , 0) NOT NULL,
		ID_SCHADENSTATUS_DETAIL NUMBER(28 , 0) NOT NULL,
		GJ_SCHADEN CHAR(1) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_REGION_BEARBEITUNGSSTELLE NUMBER(28 , 0) NOT NULL,
		ID_REGION_VERTRAGSFUEHSTELLE NUMBER(28 , 0) NOT NULL,
		ID_GROSSKUNDE NUMBER(28 , 0) NOT NULL,
		ID_REGION_ANLEGENDE_STELLE NUMBER(28 , 0) NOT NULL,
		OHNEENTSCHAEDIGUNG CHAR(1) NOT NULL,
		AUFWANDSNEUTRAL_OHNE_SRK CHAR(1),
		FEHLANLAGE CHAR(1) NOT NULL,
		ID_MELDEMONAT NUMBER(28 , 0) NOT NULL,
		ID_EINTRITTSJAHR NUMBER(28 , 0) NOT NULL,
		GJ_WIEDEREROEFFNET CHAR(1) NOT NULL,
		GJ_WIEDEREROEFFNET_MONETAER CHAR(1) NOT NULL,
		ID_ANLAGEJAHR NUMBER(28 , 0) NOT NULL,
		ID_SCHADENSCHLUSSJAHR NUMBER(28 , 0) NOT NULL,
		ID_JAHR_1_WIEDEREROEFFNUNG NUMBER(28 , 0) NOT NULL,
		ID_SPARTENKENNZIFFER NUMBER(28 , 0) NOT NULL,
		REGRESS_GESI_INITIAL_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_INITIAL_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_INITIAL_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_INITIAL_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_EINGANG_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_EINGANG_SRK NUMBER(16 , 2) NOT NULL,
		REGRESS_GESI_OFFEN NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_ENTSCH NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_RENTE NUMBER(16 , 2) NOT NULL,
		REGRESS_UNGESI_OFFEN_SRK NUMBER(16 , 2) NOT NULL,
		ZAHLUNGEN_SALDIERT NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNGEN_SALDIERT NUMBER(16 , 2) NOT NULL,
		SCHADENAUFWAND_OHNE_IK NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_ENTSCH NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_RENTE NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_SRK NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_ENTSCH NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_RENTE NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_SRK NUMBER(16 , 2) NOT NULL,
		ANZAHL NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		SCHADENAUFWAND_OHNE_IK_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ANZAHL_BEARB_YTD NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Besch_Objekt (
		SK_Besch_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		Beschreibung_Beschaed_B VARCHAR2(64 CHAR) NOT NULL,
		Objekt_lfd VARCHAR2(8 CHAR) NOT NULL,
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_GerichtsInstanz (
		SK_GerichtsInstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensnummer VARCHAR2(24 CHAR) NOT NULL,
		Instanznummer_lfd VARCHAR2(8 CHAR) NOT NULL,
		Instanz_GUID_A VARCHAR2(180 CHAR) NOT NULL,
		Aktenzeichen_A VARCHAR2(180 CHAR) NOT NULL,
		externe_Referenz_A VARCHAR2(180 CHAR) NOT NULL,
		Gerichtsstand_Gemeinde VARCHAR2(64 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Gerichtsverf (
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Verfahrens_GUID_A VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensnummer VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensbeschreibung_B VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensbemerkung_B VARCHAR2(500 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Ges_Schaden_Aend (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_AendDat_zuletzt_im_Quartal NUMBER(28 , 0) NOT NULL,
		QuellObjekt_zuletzt_im_Quartal VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Ladelauf (
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		Stichtag DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Last_Load (
		WFL VARCHAR2(64 CHAR) NOT NULL,
		Max_TA_Ladedatum DATE,
		Min_Stichtag DATE,
		Max_Stichtag DATE
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_NatKatEreignis (
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		NatKat_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		NatKat_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		NatKat_Eintrittsdatum_Beginn DATE NOT NULL,
		NatKat_Eintrittsdatum_Ende DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Partner (
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Partnermerkmal NUMBER(28 , 0) NOT NULL,
		POB_A VARCHAR2(64 CHAR) NOT NULL,
		POB_PZ_A VARCHAR2(64 CHAR) NOT NULL,
		Name_A VARCHAR2(500 CHAR) NOT NULL,
		Namenszusatz_A VARCHAR2(64 CHAR) NOT NULL,
		Vorname_A VARCHAR2(180 CHAR) NOT NULL,
		Kurzname VARCHAR2(64 CHAR) NOT NULL,
		ID_Sterbedatum NUMBER(28 , 0) NOT NULL,
		ID_Anschrift_Land NUMBER(28 , 0) NOT NULL,
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		Ortsname_A VARCHAR2(64 CHAR),
		Strassenname_A VARCHAR2(64 CHAR),
		Hausnummer_A VARCHAR2(24 CHAR),
		Telefonnummer_A VARCHAR2(64 CHAR),
		E_Mail_Adresse_A VARCHAR2(180 CHAR),
		Faxnummer_A VARCHAR2(64 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_RV_NatKatEreign (
		SK_RV_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		NatKat_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		NatKat_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		NatKat_Eintrittsdatum_Beginn DATE NOT NULL,
		NatKat_Eintrittsdatum_Ende DATE NOT NULL,
		RV_Ereignis_ID VARCHAR2(8 CHAR) NOT NULL,
		RV_Ereignis_Name VARCHAR2(180 CHAR) NOT NULL,
		RV_Eintrittsdatum_Beginn DATE NOT NULL,
		RV_Eintrittsdatum_Ende DATE NOT NULL,
		Bearbeitungsstand VARCHAR2(180 CHAR) NOT NULL,
		Bemerkung VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Regress (
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		Regress_Lfd VARCHAR2(8 CHAR) NOT NULL,
		Schuldquote NUMBER(16 , 8) NOT NULL,
		Regresswahrscheinlichkeit NUMBER(16 , 8) NOT NULL,
		Schliessungsgrund VARCHAR2(180 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_RegressPosition (
		SK_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regress_Lfd VARCHAR2(8 CHAR) NOT NULL,
		Regressposition_lfd VARCHAR2(8 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(64 CHAR) NOT NULL,
		Deckungsquote NUMBER(16 , 8) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		SchadenSB_Grp VARCHAR2(24 CHAR) NOT NULL,
		GesSchaden_geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		AZ_VN_Rechtsanwalt_A VARCHAR2(500 CHAR) NOT NULL,
		AZ_Gericht_A VARCHAR2(500 CHAR) NOT NULL,
		Kundennr_Arbeitslosenvers_A VARCHAR2(64 CHAR) NOT NULL,
		VNR_Arbeitslosenvers_A VARCHAR2(64 CHAR) NOT NULL,
		Amtliches_Kennzeichen_A VARCHAR2(64 CHAR) NOT NULL,
		HoeheGeldbusse_B NUMBER(16 , 2) NOT NULL,
		Progression NUMBER(16 , 2) NOT NULL,
		Tagegeld_Beginn NUMBER(10 , 0) NOT NULL,
		CoC_VerlaengerungsGrund VARCHAR2(180 CHAR) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		angelegt_am DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schadenort (
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		Adress_Id_A VARCHAR2(24 CHAR) NOT NULL,
		Bezirk VARCHAR2(64 CHAR) NOT NULL,
		Ortsteil_A VARCHAR2(64 CHAR) NOT NULL,
		Strassenname_A VARCHAR2(64 CHAR) NOT NULL,
		Hausnummer_A VARCHAR2(24 CHAR) NOT NULL,
		Adresszusatz_A VARCHAR2(180 CHAR) NOT NULL,
		Gebaeude_A VARCHAR2(24 CHAR) NOT NULL,
		Etage_A VARCHAR2(24 CHAR) NOT NULL,
		WohnungNr_A VARCHAR2(24 CHAR) NOT NULL,
		Ortsname_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Schadenrueckst (
		SK_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Teilschaden (
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Haftungsquote NUMBER(16 , 8) NOT NULL,
		Ueberstimmungsgrund VARCHAR2(24 CHAR) NOT NULL,
		angelegt_am DATE NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Invaliditaet_Proz_B NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Verl_Person (
		SK_Verl_Person VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Alter_Person NUMBER(10 , 0) NOT NULL,
		Invaliditaet_Proz_B NUMBER(16 , 2) NOT NULL,
		Beruf VARCHAR2(64 CHAR) NOT NULL,
		Taetigkeit_akt VARCHAR2(64 CHAR) NOT NULL,
		Arbeitgeber VARCHAR2(180 CHAR) NOT NULL,
		Beschreibung_Verletzung_B VARCHAR2(180 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertrag (
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Zusatznummer VARCHAR2(8 CHAR) NOT NULL,
		Zusatznummer_Deckung VARCHAR2(8 CHAR) NOT NULL,
		Zusatznummer_InExkasso VARCHAR2(8 CHAR) NOT NULL,
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		ACV_Mitglied_A VARCHAR2(64 CHAR) NOT NULL,
		ACV_Eintrittsdatum DATE NOT NULL,
		ACV_Mitgliedsnummer_A VARCHAR2(64 CHAR) NOT NULL,
		Materieller_Beginn DATE NOT NULL,
		Enddatum DATE NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertragsdeckung (
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		VertragsversionsNr VARCHAR2(8 CHAR) NOT NULL,
		Deckung VARCHAR2(24 CHAR) NOT NULL,
		Materieller_Beginn DATE NOT NULL,
		Enddatum DATE NOT NULL,
		DeckungsartName VARCHAR2(180 CHAR) NOT NULL,
		DeckungName VARCHAR2(180 CHAR) NOT NULL,
		Vertragsteilnummer_A VARCHAR2(24 CHAR) NOT NULL,
		geaendert_am DATE NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Branchenname VARCHAR2(64 CHAR) NOT NULL,
		Schadenfreiheitsklasse VARCHAR2(64 CHAR) NOT NULL,
		Schadenfreiheitsrabatt NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_ZahlungForderung (
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		Schadennummer_A VARCHAR2(24 CHAR) NOT NULL,
		Teilschaden_LFD VARCHAR2(8 CHAR) NOT NULL,
		Zahlungsnummer VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsnotiz_AB VARCHAR2(180 CHAR) NOT NULL,
		Schecknummer_A VARCHAR2(24 CHAR) NOT NULL,
		Scheckaussteller_ProvKonto_A VARCHAR2(24 CHAR) NOT NULL,
		geprueft_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		angelegt_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		geaendert_von_Grp VARCHAR2(24 CHAR) NOT NULL,
		Migr_Zahlungsempf1_A VARCHAR2(64 CHAR) NOT NULL,
		Migr_Zahlungsempf2_A VARCHAR2(64 CHAR) NOT NULL,
		Aktenzeichen_ext_A VARCHAR2(64 CHAR) NOT NULL,
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_ZhlgFordDetail (
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL,
		Zahlung_Detail_LFD VARCHAR2(8 CHAR) NOT NULL,
		geaendert_von_Grp  VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Abgabestatus (
		ID_Abgabestatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Abgabestatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Abgabestatus VARCHAR2(64 CHAR) NOT NULL,
		Abgabestatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AbschlussVerf (
		ID_AbschlussVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_Art_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang_Art VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_Art_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Akademiker (
		ID_Akademiker NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Akademiker_kurz VARCHAR2(24 CHAR) NOT NULL,
		Akademiker VARCHAR2(64 CHAR) NOT NULL,
		Akademiker_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ArtGerichtlicheMahn (
		ID_ArtGerichtlicheMahn NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ArtGerichtlicheMahn_kurz VARCHAR2(24 CHAR) NOT NULL,
		ArtGerichtlicheMahn VARCHAR2(64 CHAR) NOT NULL,
		ArtGerichtlicheMahn_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Art_Schadenst (
		ID_Art_Schadensteuerung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Art_Schadensteuerung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Art_Schadensteuerung VARCHAR2(64 CHAR) NOT NULL,
		Art_Schadensteuerung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AusgangVerfahren (
		ID_AusgangVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Auswertung_indiv (
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		Auswertung_individuell_kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertung_individuell VARCHAR2(64 CHAR) NOT NULL,
		Auswertung_individuell_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Auswertungsber (
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Auswertungsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Auswertungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Auswertungsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bedingungsschl (
		ID_Bedingungsschluessel NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bedingungsschluessel_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bedingungsschluessel VARCHAR2(64 CHAR) NOT NULL,
		Bedingungsschluessel_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BerufungRevdurch (
		ID_Berufung_Rev_durch NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Berufung_Rev_durch_kurz VARCHAR2(24 CHAR) NOT NULL,
		Berufung_Rev_durch VARCHAR2(64 CHAR) NOT NULL,
		Berufung_Rev_durch_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BeschaedigGrad (
		ID_Beschaedigungsgrad NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Beschaedigungsgrad_kurz VARCHAR2(24 CHAR) NOT NULL,
		Beschaedigungsgrad VARCHAR2(64 CHAR) NOT NULL,
		Beschaedigungsgrad_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BeschaedigTyp (
		ID_Beschaedigungstyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Beschaedigungstyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Beschaedigungstyp VARCHAR2(64 CHAR) NOT NULL,
		Beschaedigungstyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BestandsbezArt (
		ID_Bestandsbeziehungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BZA_kurz VARCHAR2(24 CHAR) NOT NULL,
		BZA VARCHAR2(64 CHAR) NOT NULL,
		BZA_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Betragstyp (
		ID_Betragstyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragstyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragstyp VARCHAR2(64 CHAR) NOT NULL,
		Betragstyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bewertung_VTP (
		ID_Bewertung_VTP NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bewertung_VTP_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bewertung_VTP VARCHAR2(64 CHAR) NOT NULL,
		Bewertung_VTP_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Bilanz_Meldeper (
		ID_Bilanz_Meldeperiode NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Bilanz_Meldeperiode_kurz VARCHAR2(24 CHAR) NOT NULL,
		Bilanz_Meldeperiode VARCHAR2(64 CHAR) NOT NULL,
		Bilanz_Meldeperiode_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BruttoNetto (
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		BruttoNetto_kurz VARCHAR2(24 CHAR) NOT NULL,
		BruttoNetto VARCHAR2(64 CHAR) NOT NULL,
		BruttoNetto_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrt (
		ID_CodeOrt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrt_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrt_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrt_lang_A VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_CodeOrtsteil (
		ID_CodeOrtsteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		CodeOrtsteil_kurz_A VARCHAR2(24 CHAR) NOT NULL,
		CodeOrtsteil_A VARCHAR2(64 CHAR) NOT NULL,
		CodeOrtsteil_lang_A VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Datum (
		ID_Datum NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Datum DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		ID_Monat NUMBER(28 , 0) NOT NULL,
		ID_Woche NUMBER(28 , 0) NOT NULL,
		Tag_kurz VARCHAR2(64 CHAR) NOT NULL,
		Tag NUMBER(10 , 0) NOT NULL,
		Tag_lang VARCHAR2(64 CHAR) NOT NULL,
		Feiertag CHAR(1 CHAR) NOT NULL,
		Werktag CHAR(1 CHAR) NOT NULL,
		Arbeitstag_Nr NUMBER(10 , 0) NOT NULL,
		Monatsultimo CHAR(1 CHAR) NOT NULL,
		Quartalsultimo CHAR(1 CHAR) NOT NULL,
		ID_Datum_Jahresletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Halbjahresletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Quartalsletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Monatsletzter NUMBER(28 , 0) NOT NULL,
		ID_Datum_Wochenletzter NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Deckungsart (
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsart VARCHAR2(64 CHAR) NOT NULL,
		Deckungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Deckungssumme_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungssumme VARCHAR2(64 CHAR) NOT NULL,
		Deckungssumme_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Decksumme_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschlK (
		ID_DeckungsschluesselK NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselK_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselK VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselK_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_DeckungsschlKH (
		ID_DeckungsschluesselKH NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		DeckungsschluesselKH_kurz VARCHAR2(24 CHAR) NOT NULL,
		DeckungsschluesselKH VARCHAR2(64 CHAR) NOT NULL,
		DeckungsschluesselKH_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Deckungsstatus (
		ID_Deckungsstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Deckungsstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Deckungsstatus VARCHAR2(64 CHAR) NOT NULL,
		Deckungsstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Dunkelverarbeitg (
		ID_Dunkelverarbeitung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Dunkelverarbeitung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Dunkelverarbeitung VARCHAR2(64 CHAR) NOT NULL,
		Dunkelverarbeitung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ereignisart (
		ID_Ereignisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Ereignisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisart VARCHAR2(64 CHAR) NOT NULL,
		Ereignisart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ereignisklasse (
		ID_Ereignisklasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Ereignisklasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ereignisklasse VARCHAR2(64 CHAR) NOT NULL,
		Ereignisklasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erledig_im_Verf (
		ID_Erledigungszeitpkt_im_Verf NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erledigungszeitpkt_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erledigungszeitpkt VARCHAR2(64 CHAR) NOT NULL,
		Erledigungszeitpkt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Erledigungsart (
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Erledigungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Erledigungsart VARCHAR2(64 CHAR) NOT NULL,
		Erledigungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Eskalationsstufe (
		ID_Eskalationsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Eskalationsstufe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Eskalationsstufe VARCHAR2(64 CHAR) NOT NULL,
		Eskalationsstufe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Fachgebiet (
		ID_Fachgebiet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fachgebiet_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Fachgebiet_B VARCHAR2(64 CHAR) NOT NULL,
		Fachgebiet_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_FallzahlPostTyp (
		ID_Fallzahlungspostentyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fallzahlungspostentyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Fallzahlungspostentyp VARCHAR2(64 CHAR) NOT NULL,
		Fallzahlungspostentyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Familienstand (
		ID_Familienstand NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Familienstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Familienstand VARCHAR2(64 CHAR) NOT NULL,
		Familienstand_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Gefahr (
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Partner_Objekttyp NUMBER(28 , 0) NOT NULL,
		ID_Ereignisklasse NUMBER(28 , 0) NOT NULL,
		Gefahr_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gefahr VARCHAR2(64 CHAR) NOT NULL,
		Gefahr_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geltungsbereich (
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geltungsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geltungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Geltungsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Gerichtsbarkeit (
		ID_Gerichtsbarkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Gerichtsbarkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		Gerichtsbarkeit VARCHAR2(64 CHAR) NOT NULL,
		Gerichtsbarkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschBezFirma (
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezFirma_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezFirma VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezFirma_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_GeschBezTaetigk (
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		GeschaeftsbezTaetigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit VARCHAR2(64 CHAR) NOT NULL,
		GeschaeftsbezTaetigkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geschlecht (
		ID_Geschlecht NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geschlecht_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geschlecht VARCHAR2(64 CHAR) NOT NULL,
		Geschlecht_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Grosskunde (
		ID_Grosskunde NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Grosskunde_kurz VARCHAR2(24 CHAR) NOT NULL,
		Grosskunde VARCHAR2(64 CHAR) NOT NULL,
		Grosskunde_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Haftung (
		ID_Haftung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Haftung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Haftung VARCHAR2(64 CHAR) NOT NULL,
		Haftung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Halbjahr (
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Jahr NUMBER(28 , 0) NOT NULL,
		Halbjahr_kurz VARCHAR2(64 CHAR) NOT NULL,
		Halbjahr NUMBER(10 , 0) NOT NULL,
		Halbjahr_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Instanzstatus (
		ID_Instanzstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Instanzstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Instanzstatus VARCHAR2(64 CHAR) NOT NULL,
		Instanzstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_JNKENNZ (
		KENNZ CHAR(1) NOT NULL,
		KENNZ_BEZ VARCHAR2(20 CHAR) NOT NULL,
		KENNZ_SORT NUMBER(1 , 0) NOT NULL,
		KENNZ_LANG VARCHAR2(500 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Jahr (
		ID_Jahr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizRueckst (
		ID_KlassifizierungRueckst NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungRueckst_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungRueckst VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungRueckst_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_KlassifizSchluss (
		ID_KlassifizierungSchluss NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		KlassifizierungSchluss_kurz VARCHAR2(24 CHAR) NOT NULL,
		KlassifizierungSchluss VARCHAR2(64 CHAR) NOT NULL,
		KlassifizierungSchluss_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Land_Nation (
		ID_Laenderkennzeichen NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Laenderkennzeichen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Laenderkennzeichen VARCHAR2(64 CHAR) NOT NULL,
		Laenderkennzeichen_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Leistungsart (
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Leistungsart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_B VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Leistungsart_Typ_kurz VARCHAR2(24 CHAR) NOT NULL,
		Leistungsart_Typ VARCHAR2(64 CHAR) NOT NULL,
		Leistungsart_Typ_lang VARCHAR2(500 CHAR) NOT NULL,
		belastend_kurz VARCHAR2(24 CHAR) NOT NULL,
		belastend VARCHAR2(64 CHAR) NOT NULL,
		belastend_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Typ_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_belastend_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Meldeweg (
		ID_Meldeweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Meldeweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Meldeweg VARCHAR2(64 CHAR) NOT NULL,
		Meldeweg_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Monat (
		ID_Monat NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		Monat_kurz VARCHAR2(64 CHAR) NOT NULL,
		Monat NUMBER(10 , 0) NOT NULL,
		Monat_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ObjektArt (
		ID_ObjektArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ObjektArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		ObjektArt VARCHAR2(64 CHAR) NOT NULL,
		ObjektArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_PartnerObjekttyp (
		ID_Partner_Objekttyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Teilsparte NUMBER(28 , 0) NOT NULL,
		Partner_Objekttyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partner_Objekttyp VARCHAR2(64 CHAR) NOT NULL,
		Partner_Objekttyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_PartnergemArt (
		ID_Partnergemeinschaftsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnergemeinschaftsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnergemeinschaftsart VARCHAR2(64 CHAR) NOT NULL,
		Partnergemeinschaftsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Partnertyp (
		ID_Partnertyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Partnertyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Partnertyp VARCHAR2(64 CHAR) NOT NULL,
		Partnertyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Postleitzahl (
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Postleitzahl_A VARCHAR2(24 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Produkt (
		ID_Produkt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Produktname_kurz VARCHAR2(24 CHAR) NOT NULL,
		Produktname VARCHAR2(64 CHAR) NOT NULL,
		Produktname_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Quartal (
		ID_Quartal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Halbjahr NUMBER(28 , 0) NOT NULL,
		Quartal_kurz VARCHAR2(64 CHAR) NOT NULL,
		Quartal NUMBER(10 , 0) NOT NULL,
		Quartal_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene1 (
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RD_Ebene2 NUMBER(28 , 0) NOT NULL,
		RD_Ebene1_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene1_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene2 (
		ID_RD_Ebene2 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RD_Ebene3 NUMBER(28 , 0) NOT NULL,
		RD_Ebene2_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene2_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RD_Ebene3 (
		ID_RD_Ebene3 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RD_Ebene3_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rechtsform (
		ID_Rechtsform NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rechtsform_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rechtsform VARCHAR2(64 CHAR) NOT NULL,
		Rechtsform_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RechtswegEbene (
		ID_RechtswegEbene NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RechtswegEbene_kurz VARCHAR2(24 CHAR) NOT NULL,
		RechtswegEbene VARCHAR2(64 CHAR) NOT NULL,
		RechtswegEbene_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Region (
		ID_Region NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Region_kurz VARCHAR2(24 CHAR) NOT NULL,
		Region VARCHAR2(24 CHAR) NOT NULL,
		Region_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regionaldir (
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressart (
		ID_Regressart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressart VARCHAR2(64 CHAR) NOT NULL,
		Regressart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressgrund (
		ID_Regressgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressgrund VARCHAR2(64 CHAR) NOT NULL,
		Regressgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regresspotential (
		ID_Regresspotential NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regresspotential_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regresspotential VARCHAR2(64 CHAR) NOT NULL,
		Regresspotential_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regressstatus (
		ID_Regressstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Regressstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regressstatus VARCHAR2(64 CHAR) NOT NULL,
		Regressstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstAendGrund (
		ID_RueckstAenderungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Aenderungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Aenderungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Aenderungsgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstBetrArt (
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Betragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragsart VARCHAR2(64 CHAR) NOT NULL,
		Betragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckstSetzMeth (
		ID_RueckstSetzungsmethode NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Setzungsmethode_kurz VARCHAR2(24 CHAR) NOT NULL,
		Setzungsmethode VARCHAR2(64 CHAR) NOT NULL,
		Setzungsmethode_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_RueckversichArt (
		ID_Rueckversicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rueckversicherg (
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherung VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SBGruppe (
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SBGrp_kurz VARCHAR2(24 CHAR) NOT NULL,
		SBGrp VARCHAR2(64 CHAR) NOT NULL,
		SBGrp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SammelereignisKl (
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SammelereignisKlasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		SammelereignisKlasse VARCHAR2(64 CHAR) NOT NULL,
		SammelereignisKlasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Satzart_Zahlung (
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SatzartDerZahlung_kurz VARCHAR2(24 CHAR) NOT NULL,
		SatzartDerZahlung VARCHAR2(64 CHAR) NOT NULL,
		SatzartDerZahlung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadenKomplexit (
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Komplexitaet_kurz VARCHAR2(24 CHAR) NOT NULL,
		Komplexitaet VARCHAR2(64 CHAR) NOT NULL,
		Komplexitaet_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadenSteuerung (
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Steuerung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Steuerung VARCHAR2(64 CHAR) NOT NULL,
		Steuerung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schaden_Besonder (
		ID_Schaden_Besonderheit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Besonderheiten_kurz VARCHAR2(24 CHAR) NOT NULL,
		Besonderheiten VARCHAR2(64 CHAR) NOT NULL,
		Besonderheiten_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenfallart (
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenfallart_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Schadenfallart_B VARCHAR2(64 CHAR) NOT NULL,
		Schadenfallart_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenstatus (
		ID_Schadenstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus VARCHAR2(64 CHAR) NOT NULL,
		Schadenstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Schadenstatus_Ebene1 VARCHAR2(24 CHAR) NOT NULL,
		Schadenstatus_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenurs_SAP (
		ID_Schadenurs_SAP NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenurs_SAP_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenurs_SAP VARCHAR2(64 CHAR) NOT NULL,
		Schadenurs_SAP_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schadenursache (
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schadenursache_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schadenursache VARCHAR2(64 CHAR) NOT NULL,
		Schadenursache_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_SchadrueckstArt (
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckstellungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckstellungsart VARCHAR2(64 CHAR) NOT NULL,
		Rueckstellungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schuldigkeit (
		ID_Schuldigkeit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schuldigkeit_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schuldigkeit VARCHAR2(64 CHAR) NOT NULL,
		Schuldigkeit_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schutzkennz (
		ID_Schutzkennzeichen NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Schutzkennzeichen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Schutzkennzeichen VARCHAR2(64 CHAR) NOT NULL,
		Schutzkennzeichen_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Sparte (
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene1 NUMBER(28 , 0) NOT NULL,
		Sparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Sparte VARCHAR2(64 CHAR) NOT NULL,
		Sparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_1 (
		ID_Spartenbuendel_Ebene1 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene2 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene1_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene1 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene1_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_2 (
		ID_Spartenbuendel_Ebene2 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene3 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene2_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene2 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene2_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_3 (
		ID_Spartenbuendel_Ebene3 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene4 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene3_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene3_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_4 (
		ID_Spartenbuendel_Ebene4 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene5 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene4_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene4 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene4_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_5 (
		ID_Spartenbuendel_Ebene5 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene6 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene5_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene5 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene5_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_6 (
		ID_Spartenbuendel_Ebene6 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Spartenbuendel_Ebene7 NUMBER(28 , 0) NOT NULL,
		Spartenbuendel_Ebene6_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene6 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene6_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenbuendel_7 (
		ID_Spartenbuendel_Ebene7 NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Spartenbuendel_Ebene7_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenbuendel_Ebene7 VARCHAR2(64 CHAR) NOT NULL,
		Spartenbuendel_Ebene7_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Spartenkennziff (
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Spartenkennziffer_kurz VARCHAR2(24 CHAR) NOT NULL,
		Spartenkennziffer VARCHAR2(64 CHAR) NOT NULL,
		Spartenkennziffer_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_TV_Projekt (
		ID_TV_Projekt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		TV_Projektnummer VARCHAR2(24 CHAR) NOT NULL,
		RV_Gesellschaft VARCHAR2(24 CHAR) NOT NULL,
		ID_Zeichnungsjahr NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Teilschadenart (
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Teilschadenart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilschadenart VARCHAR2(64 CHAR) NOT NULL,
		Teilschadenart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Teilsparte (
		ID_Teilsparte NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		Teilsparte_kurz VARCHAR2(24 CHAR) NOT NULL,
		Teilsparte VARCHAR2(64 CHAR) NOT NULL,
		Teilsparte_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Titel (
		ID_Titel NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Titel_kurz VARCHAR2(24 CHAR) NOT NULL,
		Titel VARCHAR2(64 CHAR) NOT NULL,
		Titel_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UKZ (
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Unternehmen_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_lang VARCHAR2(500 CHAR) NOT NULL,
		Unternehmen_Gruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen_Gruppe VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_Gruppe_lang VARCHAR2(500 CHAR) NOT NULL,
		Unternehmen_Rechtsform_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unternehmen_Rechtsform VARCHAR2(64 CHAR) NOT NULL,
		Unternehmen_Rechtsform_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Gruppe_lfd NUMBER(10 , 0) NOT NULL,
		Sortierung_Rechtsform_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Unfallart (
		ID_Unfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Unfallart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unfallart VARCHAR2(64 CHAR) NOT NULL,
		Unfallart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensart (
		ID_Verfahrensart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensart VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensggst (
		ID_Verfahrensgegenstand NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensgegenstand_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensgegenstand VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensgegenstand_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verfahrensstatus (
		ID_Verfahrensstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verfahrensstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Verfahrensstatus VARCHAR2(64 CHAR) NOT NULL,
		Verfahrensstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_VerletzgKoerpert (
		ID_Verletzung_Koerperteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Koerperteil_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Koerperteil_B VARCHAR2(64 CHAR) NOT NULL,
		Koerperteil_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verletzung (
		ID_Verletzung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verletzung_Kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Verletzung_B VARCHAR2(64 CHAR) NOT NULL,
		Verletzung_lang_B VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Versicherungsart (
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Versicherungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Versicherungsart VARCHAR2(64 CHAR) NOT NULL,
		Versicherungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vertragsart (
		ID_Vertragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vertragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vertragsart VARCHAR2(64 CHAR) NOT NULL,
		Vertragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vollmachtsstufe (
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Vollmachtsstufe_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vollmachtsstufe VARCHAR2(64 CHAR) NOT NULL,
		Vollmachtsstufe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Waehrung (
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Waehrung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Waehrung VARCHAR2(64 CHAR) NOT NULL,
		Waehrung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Wagnisart (
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Wagnisart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Wagnisart VARCHAR2(64 CHAR) NOT NULL,
		Wagnisart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Werbeunterdrueck (
		ID_Werbeunterdrueckung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Werbeunterdrueckung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Werbeunterdrueckung VARCHAR2(64 CHAR) NOT NULL,
		Werbeunterdrueckung_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Woche (
		ID_Woche NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Woche_kurz VARCHAR2(64 CHAR) NOT NULL,
		Woche NUMBER(10 , 0) NOT NULL,
		Woche_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlgspflichtArt (
		ID_ZahlungspflichtigerArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungspflichtigerArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungspflichtigerArt VARCHAR2(64 CHAR) NOT NULL,
		ZahlungspflichtigerArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungStatus (
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungStatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungStatus VARCHAR2(64 CHAR) NOT NULL,
		ZahlungStatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlungsart (
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsart VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlungsgrund (
		ID_Zahlungsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlungsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlungsgrund VARCHAR2(64 CHAR) NOT NULL,
		Zahlungsgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZahlungsgrundGrp (
		ID_ZahlungsgrundGruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZahlungsgrundGruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		ZahlungsgrundGruppe VARCHAR2(64 CHAR) NOT NULL,
		ZahlungsgrundGruppe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlweg (
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zahlweg_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlweg VARCHAR2(64 CHAR) NOT NULL,
		Zahlweg_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zeitzone (
		ID_Zeitzone NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Zeitzone_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zeitzone VARCHAR2(64 CHAR) NOT NULL,
		Zeitzone_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BeschObjektFlags (
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Beschaed_Indikatoren_vorh CHAR(1) NOT NULL,
		Beschaedtyp_Daten_vorh CHAR(1) NOT NULL,
		Haftpflicht_Kennz CHAR(1) NOT NULL,
		Beschaed_Kfz_Dach_Boden CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Frontbereich_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Heckbereich_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Seite_Mitte_L CHAR(1) NOT NULL,
		Beschaed_Kfz_Seite_Mitte_R CHAR(1) NOT NULL,
		Beschaed_Kfz_Rundum CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BeschObjektMerkm (
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Beschaedigungstyp NUMBER(28 , 0) NOT NULL,
		ID_Beschaedigungsgrad NUMBER(28 , 0) NOT NULL,
		ID_ObjektArt NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_BilRueckstMerkm (
		ID_BilRueckstMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_KlassifizierungRueckst NUMBER(28 , 0) NOT NULL,
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		ID_Bilanz_Meldeperiode NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_GeriInstMerkmale (
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Instanzstatus NUMBER(28 , 0) NOT NULL,
		ID_Berufung_Rev_durch NUMBER(28 , 0) NOT NULL,
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		ID_Gerichtstand_Land NUMBER(28 , 0) NOT NULL,
		ID_RechtswegEbene NUMBER(28 , 0) NOT NULL,
		ID_Gerichtsbarkeit NUMBER(28 , 0) NOT NULL,
		ID_Region NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_GeriVerfMerkmale (
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensstatus NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensart NUMBER(28 , 0) NOT NULL,
		ID_Verfahrensgegenstand NUMBER(28 , 0) NOT NULL,
		ID_Haftung NUMBER(28 , 0) NOT NULL,
		ID_Erledigungsart NUMBER(28 , 0) NOT NULL,
		ID_Erledigungszeitpkt_im_Verf NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Partnermerkmale (
		ID_Partnermerkmal NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Nationalitaet NUMBER(28 , 0) NOT NULL,
		ID_Familienstand NUMBER(28 , 0) NOT NULL,
		ID_Geschlecht NUMBER(28 , 0) NOT NULL,
		ID_Geburtsjahr NUMBER(28 , 0) NOT NULL,
		ID_Werbeunterdrueckung NUMBER(28 , 0) NOT NULL,
		ID_Partnertyp NUMBER(28 , 0) NOT NULL,
		ID_Partnergemeinschaftsart NUMBER(28 , 0) NOT NULL,
		SchutzKennzeichen_B CHAR(1) NOT NULL,
		ID_Titel NUMBER(28 , 0) NOT NULL,
		ID_Akademiker NUMBER(28 , 0) NOT NULL,
		ID_Rechtsform NUMBER(28 , 0) NOT NULL,
		ID_Schutzkennzeichen NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_RegressMerkmale (
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Regressart NUMBER(28 , 0) NOT NULL,
		ID_Regressgrund NUMBER(28 , 0) NOT NULL,
		ID_Regressstatus NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SSP_RVPMerkmale (
		ID_SSP_RVPMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadRueckstMerk (
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_RueckstAenderungsgrund NUMBER(28 , 0) NOT NULL,
		ID_RueckstSetzungsmethode NUMBER(28 , 0) NOT NULL,
		ID_Schadenrueckstellungsart NUMBER(28 , 0) NOT NULL,
		ID_RueckstellungsBetragsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadUrsacheGef (
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		ID_Gefahr NUMBER(28 , 0) NOT NULL,
		Spartenliste_ID NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadenFlags (
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		sensiblerSchaden CHAR(1) NOT NULL,
		Ersatzpflicht CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		SFR_Belastung CHAR(1) NOT NULL,
		KeineBelastung CHAR(1) NOT NULL,
		Auslandsschadenschutz CHAR(1) NOT NULL,
		GeschlossenMitEntsch CHAR(1) NOT NULL,
		GeschlossenOhneEntsch CHAR(1) NOT NULL,
		VersicherungsschVersagt CHAR(1) NOT NULL,
		KeineStufung CHAR(1) NOT NULL,
		Migriert CHAR(1) NOT NULL,
		Auffaelligkeit CHAR(1) NOT NULL,
		AktiveMeldung CHAR(1) NOT NULL,
		GJ_Schaden CHAR(1) NOT NULL,
		Spaet_Schaden CHAR(1) NOT NULL,
		Schaden_rueckgekauft CHAR(1) NOT NULL,
		ProzessKennzeichen CHAR(1) NOT NULL,
		Hausakte CHAR(1) NOT NULL,
		aufwandsneutral CHAR(1) NOT NULL,
		ohneEntschaedigung CHAR(1) NOT NULL,
		Abgabe_RD CHAR(1) NOT NULL,
		aufwandsneutral_ohne_SRK CHAR(1) NOT NULL,
		GJ_wiedereroeffnet CHAR(1) NOT NULL,
		GJ_wiedereroeffnet_monetaer CHAR(1) NOT NULL,
		Quartal_Spaet_Schaden CHAR(1) NOT NULL,
		Halbj_Spaet_Schaden CHAR(1) NOT NULL,
		Dreiv_Spaet_Schaden CHAR(1) NOT NULL,
		Abgabe_Z CHAR(1) NOT NULL,
		Klasse_Sturm_Hagel CHAR(1) NOT NULL,
		Klasse_Flut_Ueberschw_Rueckst CHAR(1) NOT NULL,
		Klasse_Erdb_Erdru_Lawine_Sonst CHAR(1) NOT NULL,
		Klasse_NatKat_fuer_Austauschqu CHAR(1) NOT NULL,
		Ordnungswidrigkeit_Kennz CHAR(1) NOT NULL,
		Sozialrechtsschutz_Kennz CHAR(1) NOT NULL,
		Strafverfahren_Kennz CHAR(1) NOT NULL,
		Freizeit_Unfallschutz CHAR(1) NOT NULL,
		VTP_Info CHAR(1) NOT NULL,
		Halter CHAR(1) NOT NULL,
		CoC_zur_Loeschung_vorgesehen CHAR(1) NOT NULL,
		CoC_zur_Sperrung_vorgesehen CHAR(1) NOT NULL,
		Hellschaltung CHAR(1) NOT NULL,
		AD_Regulierung CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_SchadenOrtMerkm (
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Laenderkennzeichen NUMBER(28 , 0) NOT NULL,
		ID_CodeOrt NUMBER(28 , 0) NOT NULL,
		ID_CodeOrtsteil NUMBER(28 , 0) NOT NULL,
		ID_Postleitzahl NUMBER(28 , 0) NOT NULL,
		ID_Region NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Schadenmerkm (
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Meldeweg NUMBER(28 , 0) NOT NULL,
		ID_Ereignisart NUMBER(28 , 0) NOT NULL,
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		ID_SchuldigkeitSichtVU NUMBER(28 , 0) NOT NULL,
		ID_SchuldigkeitSichtVN NUMBER(28 , 0) NOT NULL,
		ID_Bewertung_VTP NUMBER(28 , 0) NOT NULL,
		ID_KlassifizierungSchluss NUMBER(28 , 0) NOT NULL,
		ID_Dunkelverarbeitung NUMBER(28 , 0) NOT NULL,
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		ID_Zeitzone NUMBER(28 , 0) NOT NULL,
		ID_AusgangVerfahren NUMBER(28 , 0) NOT NULL,
		ID_AbschlussVerfahren NUMBER(28 , 0) NOT NULL,
		ID_Schaden_Besonderheit NUMBER(28 , 0) NOT NULL,
		ID_Verletzung NUMBER(28 , 0) NOT NULL,
		ID_Verletzung_Koerperteil NUMBER(28 , 0) NOT NULL,
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		ID_Unfallart NUMBER(28 , 0) NOT NULL,
		ID_Fachgebiet NUMBER(28 , 0) NOT NULL,
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL,
		ID_Eskalationsstufe NUMBER(28 , 0) NOT NULL,
		ID_Schadenurs_SAP NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_TeilschadenFlags (
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		Abgelehnt CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		Betrugsverdacht_C CHAR(1) NOT NULL,
		Ersatzpflicht CHAR(1) NOT NULL,
		Mitarbeiter CHAR(1) NOT NULL,
		Fahrgast_OePNV CHAR(1) NOT NULL,
		Mehrleistung CHAR(1) NOT NULL,
		Sondervereinb_Mehrl CHAR(1) NOT NULL,
		TeilfallUngueltig CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_TeilschadenMerkm (
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_SchadenKomplexitaet NUMBER(28 , 0) NOT NULL,
		ID_SchadenSteuerung NUMBER(28 , 0) NOT NULL,
		ID_Teilschadenart NUMBER(28 , 0) NOT NULL,
		ID_Regresspotential NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_VertragDeckMerkm (
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Deckungsart NUMBER(28 , 0) NOT NULL,
		ID_Deckungsstatus NUMBER(28 , 0) NOT NULL,
		ID_Rueckversicherungsart NUMBER(28 , 0) NOT NULL,
		KaskoMobil CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Vertragsmerkmale (
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezFirma NUMBER(28 , 0) NOT NULL,
		ID_GeschaeftsbezTaetigkeit NUMBER(28 , 0) NOT NULL,
		ID_Produkt NUMBER(28 , 0) NOT NULL,
		Versicherungszweig VARCHAR2(8 CHAR) NOT NULL,
		Autoplus CHAR(1) NOT NULL,
		ID_Bestandsbeziehungsart NUMBER(28 , 0) NOT NULL,
		ID_Vertragsart NUMBER(28 , 0) NOT NULL,
		Rabattschutz CHAR(1) NOT NULL,
		Beitragsrueckstand CHAR(1) NOT NULL,
		ID_Bedingungsschluessel NUMBER(28 , 0) NOT NULL,
		ID_Wagnisart NUMBER(28 , 0) NOT NULL,
		SchadenfreiheitsklasseKH VARCHAR2(64 CHAR) NOT NULL,
		SchadenfreiheitsrabattKH NUMBER(16 , 2) NOT NULL,
		ID_DeckungsschluesselKH NUMBER(28 , 0) NOT NULL,
		SchadenfreiheitsklasseVK VARCHAR2(64 CHAR) NOT NULL,
		SchadenfreiheitsrabattVK NUMBER(16 , 2) NOT NULL,
		ID_DeckungsschluesselK NUMBER(28 , 0) NOT NULL,
		KaskoMobil CHAR(1) NOT NULL,
		ID_Grosskunde NUMBER(28 , 0) NOT NULL,
		ID_TV_Projekt NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordDetMerkm (
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_Fallzahlungspostentyp NUMBER(28 , 0) NOT NULL,
		ID_Betragstyp NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsgrund NUMBER(28 , 0) NOT NULL,
		ID_ZahlungsgrundGruppe NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordFlags (
		ID_ZhlgFordFlags NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ScheckOffen CHAR(1) NOT NULL,
		Migriert CHAR(1) NOT NULL,
		durchgefuehrt CHAR(1) NOT NULL,
		Pruefung_Zuf CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_ZhlgFordMerkmale (
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		ID_SatzartDerZahlung NUMBER(28 , 0) NOT NULL,
		ID_Zahlungsart NUMBER(28 , 0) NOT NULL,
		ID_BruttoNetto NUMBER(28 , 0) NOT NULL,
		ID_Zahlweg NUMBER(28 , 0) NOT NULL,
		ID_ZahlungStatus NUMBER(28 , 0) NOT NULL,
		ID_Vollmachtsstufe NUMBER(28 , 0) NOT NULL,
		ID_Abgabestatus NUMBER(28 , 0) NOT NULL,
		ID_ZahlungspflichtigerArt NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Besch_Objekt (
		SK_Besch_Objekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Waehrung_Schadenhoehe NUMBER(28 , 0) NOT NULL,
		Vorauss_Schadenhoehe NUMBER(16 , 2) NOT NULL,
		ID_BeschObjektMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_BeschObjektFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Bilanzrueckstellgn (
		SK_Bilanzrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_BilRueckstMerkmale NUMBER(28 , 0) NOT NULL,
		ID_RueckstDatum NUMBER(28 , 0) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Forderung (
		SK_Forderung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_ForderungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ForderungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_ForderungBelegdatum NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeit NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		GeforderterBetrag NUMBER(16 , 2) NOT NULL,
		GeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		EingegangenerBetrag NUMBER(16 , 2) NOT NULL,
		EingegangenerBetragInEuro NUMBER(16 , 2) NOT NULL,
		ID_Abgabedatum NUMBER(28 , 0) NOT NULL,
		ID_ForderungFlags NUMBER(28 , 0) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Region_Ford_Anl_Stelle NUMBER(28 , 0) NOT NULL,
		ID_ArtGerichtlicheMahn NUMBER(28 , 0) NOT NULL,
		OffenerForderungsbetrag NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Forderung_Detail (
		SK_Forderung_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Forderung VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_FordDetMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ForderungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		GeforderterBetrag NUMBER(16 , 2) NOT NULL,
		GeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		EingegangenerBetrag NUMBER(16 , 2) NOT NULL,
		EingegangenerBetragInEuro NUMBER(16 , 2) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_ForderungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ForderungFlags NUMBER(28 , 0) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Region_Ford_Anl_Stelle NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_GerichtsInstanz (
		SK_GerichtsInstanz VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		Laufzeit NUMBER(16 , 8) NOT NULL,
		ID_Eingangsdatum_Gericht NUMBER(28 , 0) NOT NULL,
		ID_Erwiderungsfrist_Ende NUMBER(28 , 0) NOT NULL,
		ID_Zustellungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Instanz_Beginndatum NUMBER(28 , 0) NOT NULL,
		ID_Instanz_Endedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Verhandlungsdatum NUMBER(28 , 0) NOT NULL,
		ID_GerichtsInstMerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Gerichtsverfahren (
		SK_Gerichtsverfahren VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_GerichtsverfMerkmal NUMBER(28 , 0) NOT NULL,
		ID_Verjaehrungsfrist_Ende NUMBER(28 , 0) NOT NULL,
		ID_Aufnahmedatum NUMBER(28 , 0) NOT NULL,
		ID_Offenlegungsdatum NUMBER(28 , 0) NOT NULL,
		Streitwert_geschaetzt NUMBER(16 , 2) NOT NULL,
		Streitwert_tatsaechlich NUMBER(16 , 2) NOT NULL,
		Anwaltsbudget NUMBER(16 , 2) NOT NULL,
		ID_Erledigungsdatum NUMBER(28 , 0) NOT NULL,
		Urteilsbetrag NUMBER(16 , 2) NOT NULL,
		ID_Rechtskraftdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_RV_LAYER (
		SK_RV_Layer VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Platzierter_Anteil_RV_Layer NUMBER(16 , 2) NOT NULL,
		Layer VARCHAR2(24 CHAR) NOT NULL,
		Haftstrecke NUMBER(16 , 2) NOT NULL,
		Prioritaet NUMBER(16 , 2) NOT NULL,
		Unfall_Rente CHAR(1) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL,
		ID_Auswertung_individuell NUMERIC(28 , 0) NOT NULL,
		RV_Vertragsbez VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Regionaldirektion (
		SK_Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		Anz_VTP_Vollmacht_gesamt NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_Org_DEVK NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_Org_Sparda NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VtpTyp_VTM NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VtpTyp_MBER NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VtpTyp_BB NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VtpTyp_VL_Sparda NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VtpTyp_uebrige NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VoStufe_Einstieg NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VoStufe_Regel NUMBER(10 , 0) NOT NULL,
		Anz_VTP_Vollm_VoStufe_Spezial NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Regress (
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Sendedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		BetragGeschaetzt NUMBER(16 , 2) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_RegressPosition (
		SK_RegressPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2) NOT NULL,
		Regressbetrag NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SAP_Kontrollreport (
		SK_SAP_Kontrollreport VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Schadenfallart NUMBER(28 , 0) NOT NULL,
		Anzahl_Schaeden NUMBER(28 , 0) NOT NULL,
		Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen NUMBER(16 , 2) NOT NULL,
		Regress_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_Eingang_Rente NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SCHADEN_YTD (
		SK_SCHADEN VARCHAR2(64) NOT NULL,
		TA_LADEDATUM DATE NOT NULL,
		TA_LADE_ID NUMBER(28 , 0) NOT NULL,
		TA_AENDERUNGSDATUM DATE NOT NULL,
		TA_AENDERUNGS_ID NUMBER(28 , 0),
		TA_ERSATZDATUM DATE NOT NULL,
		TA_ERSATZ_ID NUMBER(28 , 0),
		GUELTIG_BEGINN DATE NOT NULL,
		GUELTIG_ENDE DATE NOT NULL,
		REGR_GESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_GESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		REGR_UNGESI_EINGANG_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNGEN_SALDIERT_YTD NUMBER(16 , 2) NOT NULL,
		SCHADENAUFWAND_OHNE_IK_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		RUECKSTELLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_ENTSCH_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_RENTE_YTD NUMBER(16 , 2) NOT NULL,
		ZAHLUNG_REIN_SRK_YTD NUMBER(16 , 2) NOT NULL,
		ANZAHL_BEARB_YTD NUMBER(16 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SDS_Bilanzwerte (
		SK_SDS_Bilanzwerte VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Geschaeftsjahr_laufend NUMBER(28 , 0) NOT NULL,
		ID_Geschaeftsmonat_laufend NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		Art_des_Schadens VARCHAR2(8 CHAR) NOT NULL,
		Forderungsbetrag_GJ NUMBER(16 , 2) NOT NULL,
		Forderungsbetrag_VJ NUMBER(16 , 2) NOT NULL,
		Rentenzahlungen_GJ NUMBER(16 , 2) NOT NULL,
		Rentenzahlungen_VJ NUMBER(16 , 2) NOT NULL,
		Entschaedigungen_GJ NUMBER(16 , 2) NOT NULL,
		Entschaedigungen_VJ NUMBER(16 , 2) NOT NULL,
		Kosten_GJ NUMBER(16 , 2) NOT NULL,
		Kosten_VJ NUMBER(16 , 2) NOT NULL,
		Rueckstellung_Kapital_GJ NUMBER(16 , 2) NOT NULL,
		Rueckstellung_Kapital_VJ NUMBER(16 , 2) NOT NULL,
		Rueckstellung_Rente_GJ NUMBER(16 , 2) NOT NULL,
		Rueckstellung_Rente_VJ NUMBER(16 , 2) NOT NULL,
		Schadennummer_A VARCHAR2(64 CHAR) NOT NULL,
		zust_Bearb_Stelle VARCHAR2(8 CHAR),
		Versicherungsscheinnummer_A VARCHAR2(64 CHAR),
		Zusatznummer VARCHAR2(8 CHAR),
		Risikonummer VARCHAR2(8 CHAR),
		KFZ_beteiligt_alt_neu VARCHAR2(8 CHAR),
		Abweichung_Vertragsstand VARCHAR2(8 CHAR),
		Anzahl_Tote_Verletzte VARCHAR2(8 CHAR),
		Eintrittsland VARCHAR2(8 CHAR),
		KAS VARCHAR2(8 CHAR),
		KAF_GJ VARCHAR2(8 CHAR),
		Forderungsdatum VARCHAR2(24 CHAR),
		Postleitzahl_Schadenort VARCHAR2(24 CHAR),
		Zustandsaenderungsdatum VARCHAR2(24 CHAR),
		KAR_GJ VARCHAR2(8 CHAR),
		Veraenderungsdatum VARCHAR2(24 CHAR),
		KAR_VJ VARCHAR2(8 CHAR),
		Rueckstellung_Kapital_MJ NUMBER(16 , 2),
		KAR_MJ VARCHAR2(8 CHAR),
		KAD_GJ VARCHAR2(8 CHAR),
		KAD_VJ VARCHAR2(8 CHAR),
		Rueckstellung_Rente_MJ NUMBER(16 , 2),
		KAD_MJ VARCHAR2(8 CHAR),
		KAF_VJ VARCHAR2(8 CHAR),
		Forderungsbetrag_EJ NUMBER(16 , 2),
		KAF_EJ VARCHAR2(8 CHAR),
		Art_des_Unfalls VARCHAR2(8 CHAR),
		Koerperteil_betroffen_A VARCHAR2(64 CHAR),
		erweit_Freizeit_Unfallschutz VARCHAR2(8 CHAR),
		Invaliditaetsprozentsatz NUMBER(16 , 2)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SSP_RVP (
		SK_SSP_RVP VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Statjahr NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Statmonat NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_SSP_RVPMerkmale NUMBER(28 , 0) NOT NULL,
		Abwicklungsperiode NUMBER(28 , 0) NOT NULL,
		Rueckstellungswert NUMBER(16 , 2) NOT NULL,
		Sparte_Bez VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_SchadRueckstellgn (
		SK_Schadenrueckstellungen VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenrueckstmerkmale NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		Rueckstellungsbetrag NUMBER(16 , 2) NOT NULL,
		RueckstellungsbetragInEuro NUMBER(16 , 2) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkm_VN NUMBER(28 , 0) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		SK_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Bearbeitungsstelledatum NUMBER(28 , 0) NOT NULL,
		ID_Bearbeitungsstatusdatum NUMBER(28 , 0) NOT NULL,
		ID_Loeschdatum NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_GesSchaden_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_AbgabedatumInkasso NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Wiedervorlage NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL,
		BelastendeZahlungen NUMBER(19 , 5) NOT NULL,
		AnzahlToteVerletzte NUMBER(10 , 0) NOT NULL,
		JahresbeitragKunde NUMBER(19 , 5) NOT NULL,
		Rueckkaufbetrag NUMBER(19 , 5) NOT NULL,
		Regress_gesi_initial_Entsch NUMBER(19 , 5) NOT NULL,
		Regress_gesi_initial_Rente NUMBER(19 , 5) NOT NULL,
		Regress_gesi_initial_SRK NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_initial_Entsch NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_initial_Rente NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_initial_SRK NUMBER(19 , 5) NOT NULL,
		Regress_gesi_Eingang_Entsch NUMBER(19 , 5) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(19 , 5) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(19 , 5) NOT NULL,
		Regress_gesi_offen NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_offen_Entsch NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_offen_Rente NUMBER(19 , 5) NOT NULL,
		Regress_ungesi_offen_SRK NUMBER(19 , 5) NOT NULL,
		Zahlungen_saldiert NUMBER(19 , 5) NOT NULL,
		Rueckstellungen_saldiert NUMBER(19 , 5) NOT NULL,
		Schadenaufwand_ohne_IK NUMBER(19 , 5) NOT NULL,
		Rueckstellung_rein_Entsch NUMBER(19 , 5) NOT NULL,
		Rueckstellung_rein_Rente NUMBER(19 , 5) NOT NULL,
		Rueckstellung_rein_SRK NUMBER(19 , 5) NOT NULL,
		Zahlung_rein_Entsch NUMBER(19 , 5) NOT NULL,
		Zahlung_rein_Rente NUMBER(19 , 5) NOT NULL,
		Zahlung_rein_SRK NUMBER(19 , 5) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(19 , 5) NOT NULL,
		Erstrueckstellung_Rente NUMBER(19 , 5) NOT NULL,
		Erstrueckstellung_SRK NUMBER(19 , 5) NOT NULL,
		AnzahlTote NUMBER(10 , 0) NOT NULL,
		AnzahlVerletzte NUMBER(10 , 0) NOT NULL,
		ID_Waehrung_aussergeri NUMBER(28 , 0) NOT NULL,
		Streitwert_aussergeri NUMBER(19 , 5) NOT NULL,
		ID_Waehrung_Instanz1 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz1 NUMBER(19 , 5) NOT NULL,
		ID_Waehrung_Instanz2 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz2 NUMBER(19 , 5) NOT NULL,
		ID_Waehrung_Instanz3 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz3 NUMBER(19 , 5) NOT NULL,
		ID_arbeitslos_VNSicht_seit NUMBER(28 , 0) NOT NULL,
		ID_arbeitslos_seit NUMBER(28 , 0) NOT NULL,
		ID_Arbeitslosengeld_seit NUMBER(28 , 0) NOT NULL,
		ID_Karenzzeit_bis NUMBER(28 , 0) NOT NULL,
		ID_LetzterPosteingang NUMBER(28 , 0) NOT NULL,
		ID_CoC_Loeschdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		ID_CoC_Sperrdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		ID_Ausfuehrungsdatum  NUMBER(28 , 0) NOT NULL,
		ID_Anfragedatum NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schadensteuerung (
		SK_Schadensteuerung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Steuerungsdatum  NUMBER(28 , 0) NOT NULL,
		ID_Ereignisart NUMBER(28 , 0),
		ID_Art_Schadensteuerung NUMBER(28 , 0) NOT NULL,
		ID_zust_SBGruppe NUMBER(28 , 0) NOT NULL,
		Anzahl_gesteuerte_Schaeden NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Teilschaden (
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_AuslBuero VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerm_AuslBuero NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnermerkm_VN NUMBER(28 , 0) NOT NULL,
		ID_Erfassungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_GesSchaden_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Invaliditaet_Beginn_B NUMBER(28 , 0) NOT NULL,
		Teilsch_Regr_gesi_Eing_Entsch NUMBER(19 , 5) NOT NULL,
		Teilsch_Regr_gesi_Eing_Rente NUMBER(19 , 5) NOT NULL,
		Teilsch_Regr_gesi_Eing_SRK NUMBER(19 , 5) NOT NULL,
		Teilsch_Regr_unges_Eing_Entsch NUMBER(19 , 5) NOT NULL,
		Teilsch_Regr_unges_Eing_Rente NUMBER(19 , 5) NOT NULL,
		Teilsch_Regr_unges_Eing_SRK NUMBER(19 , 5) NOT NULL,
		Teilsch_Zahlungen_saldiert NUMBER(19 , 5) NOT NULL,
		Teilsch_Rueckst_rein_Entsch NUMBER(19 , 5) NOT NULL,
		Teilsch_Rueckst_rein_Rente NUMBER(19 , 5) NOT NULL,
		Teilsch_Rueckst_rein_SRK NUMBER(19 , 5) NOT NULL,
		Teilsch_Zahlung_rein_Entsch NUMBER(19 , 5) NOT NULL,
		Teilsch_Zahlung_rein_Rente NUMBER(19 , 5) NOT NULL,
		Teilsch_Zahlung_rein_SRK NUMBER(19 , 5) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(19 , 5) NOT NULL,
		Erstrueckstellung_Rente NUMBER(19 , 5) NOT NULL,
		Erstrueckstellung_SRK NUMBER(19 , 5) NOT NULL,
		AnzahlGerichtsverfahren NUMBER(10 , 0) NOT NULL,
		Anzahl_Insassen NUMBER(10 , 0) NOT NULL,
		Anzahl_Familienangehoerige NUMBER(10 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Telegutachten (
		SK_Telegutachten VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_Regionaldirektion NUMBER(28 , 0) NOT NULL,
		ID_Sparte NUMBER(28 , 0) NOT NULL,
		ID_Datum_Gueltig_Beginn NUMBER(28 , 0) NOT NULL,
		ID_Datum_Gueltig_Ende NUMBER(28 , 0) NOT NULL,
		Anzahl_Telegutachten NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Verl_Person (
		SK_Verl_Person VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerlPers VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerm_VerlPers NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		Todesfall CHAR(1) NOT NULL,
		Verletzungen_B CHAR(1) NOT NULL,
		selbstaendig CHAR(1) NOT NULL,
		ID_Sterbedatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zahlung (
		SK_Zahlung_Hist VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_ZahlungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Region_zahlungsausloesend NUMBER(28 , 0) NOT NULL,
		ID_ZahlungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_ZahlungBelegdatum NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeit NUMBER(28 , 0) NOT NULL,
		ID_Anlagedatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		SK_Partner_ZahlEmp VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerm_ZahlEmp NUMBER(28 , 0) NOT NULL,
		Betrag NUMBER(19 , 5) NOT NULL,
		BetragInEuro NUMBER(19 , 5) NOT NULL,
		ID_Abgabedatum NUMBER(28 , 0) NOT NULL,
		ID_ZahlungFlags NUMBER(28 , 0) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		ID_ForderungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		SK_Forderung VARCHAR2(64 CHAR) NOT NULL,
		ID_ForderungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ForderungFlags NUMBER(28 , 0) NOT NULL,
		Anzahl_Zahlungen NUMBER(10 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zahlung_Detail (
		SK_Zahlung_Detail_Hist VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Zahlung_Detail VARCHAR2(64 CHAR) NOT NULL,
		SK_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_ZahlungDetMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ZahlungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		Teilbetrag NUMBER(22 , 8) NOT NULL,
		TeilbetragInEuro NUMBER(22 , 8) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_ZahlungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ZahlungFlags NUMBER(28 , 0) NOT NULL,
		SK_Regress VARCHAR2(64 CHAR) NOT NULL,
		ID_RegressMerkmale NUMBER(28 , 0) NOT NULL,
		ID_SchadenFlags NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenFlags NUMBER(28 , 0) NOT NULL,
		SK_Partner_ZahlEmp VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerm_ZahlEmp NUMBER(28 , 0) NOT NULL,
		ID_Region_anlegende_Stelle NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussmeldedatum NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		ID_Spartenkennziffer NUMBER(28 , 0) NOT NULL,
		ID_Versicherungsart NUMBER(28 , 0) NOT NULL,
		SK_Forderung VARCHAR2(64 CHAR) NOT NULL,
		ID_ForderungMerkmale NUMBER(28 , 0) NOT NULL,
		ID_ForderungBuchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_ForderungFlags NUMBER(28 , 0) NOT NULL,
		Anzahl_Zahlungen_Detail NUMBER(10 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Region_zahlungsausloesend NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_SSP_RVP_Ausw_indiv (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		FK_SSP_RVP VARCHAR2(64 CHAR) NOT NULL,
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Apraxa_RA (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Apraxa_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Apraxa_RA NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Eigener_RA (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Eigener_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Eigener_RA NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_KLUGO_RA (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_KLUGO_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_KLUGO_RA NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_RVEreign (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_RV_NatKatEreignis VARCHAR2(64 CHAR) NOT NULL,
		ID_SammelereignisKlasse NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Regbeauftr (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_SonstPartn (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_SonstPartn VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_SonstPartn NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_VerlPerson (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerletztePerson VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_VerletztePerson NUMBER(28 , 0) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Spartenl_AuswIndiv (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ID_SchadUrsacheGef NUMBER(28 , 0) NOT NULL,
		ID_Auswertung_individuell NUMBER(28 , 0) NOT NULL,
		ID_Auswertungsbereich NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_Handwerker (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Handwerker VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Handwerker NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_Regbeauftr (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Regbeauftragter VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Regbeauftragter NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_RepBetrieb (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Reparaturbetrieb VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Reparaturbetrieb NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_Sachverst (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Sachverstaendiger VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Sachverstaendiger NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_ServPartn (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_ServPartn VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_ServPartn NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Teilsch_VerlPerson (
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_VerletztePerson VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_VerletztePerson NUMBER(28 , 0) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '21.02.2019','DD.MM.YYYY') NOT NULL,
		Deploymentdatum DATE DEFAULT sysdate NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_Besch_Objekt ADD CONSTRAINT DET_Besch_Objekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Besch_Objekt);

ALTER TABLE DET_GerichtsInstanz ADD CONSTRAINT DET_GerichtsInstanz_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_GerichtsInstanz);

ALTER TABLE DET_Gerichtsverf ADD CONSTRAINT DET_Gerichtsverfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Gerichtsverfahren);

ALTER TABLE DET_Ges_Schaden_Aend ADD CONSTRAINT DET_Ges_Schaden_Aend_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden);

ALTER TABLE DET_Ladelauf ADD CONSTRAINT DET_Ladelauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag);

ALTER TABLE DET_Last_Load ADD CONSTRAINT DET_Last_Load_PK PRIMARY KEY
	(WFL);

ALTER TABLE DET_NatKatEreignis ADD CONSTRAINT DET_NatKatEreignis_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_NatKatEreignis);

ALTER TABLE DET_Partner ADD CONSTRAINT DET_Partner_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Partner);

ALTER TABLE DET_RV_NatKatEreign ADD CONSTRAINT DET_RV_NatKat_Ereignis_PK  PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RV_NatKatEreignis);

ALTER TABLE DET_Regress ADD CONSTRAINT DET_Regress_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Regress);

ALTER TABLE DET_RegressPosition ADD CONSTRAINT DET_RegressPosition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RegressPosition);

ALTER TABLE DET_Schaden ADD CONSTRAINT DET_Schaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden);

ALTER TABLE DET_Schadenort ADD CONSTRAINT DET_Schadenort_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenort);

ALTER TABLE DET_Schadenrueckst ADD CONSTRAINT DET_Schadenrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenrueckstellungen);

ALTER TABLE DET_Teilschaden ADD CONSTRAINT DET_Teilschaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden);

ALTER TABLE DET_Verl_Person ADD CONSTRAINT DET_Verl_Person_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Verl_Person);

ALTER TABLE DET_Vertrag ADD CONSTRAINT DET_Vertrag_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Vertrag);

ALTER TABLE DET_Vertragsdeckung ADD CONSTRAINT DET_Vertragsdeckung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Vertragsdeckung);

ALTER TABLE DET_ZahlungForderung ADD CONSTRAINT DET_ZahlungForderung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_ZahlungForderung);

ALTER TABLE DET_ZhlgFordDetail ADD CONSTRAINT DET_ZhlgFordDetail_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_ZhlgFordDetail);

ALTER TABLE DIM_Abgabestatus ADD CONSTRAINT DIM_Abgabestatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Abgabestatus);

ALTER TABLE DIM_AbschlussVerf ADD CONSTRAINT DET_AbschlussVerfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_AbschlussVerfahren);

ALTER TABLE DIM_Akademiker ADD CONSTRAINT DIM_Akademiker_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Akademiker);

ALTER TABLE DIM_ArtGerichtlicheMahn ADD CONSTRAINT DIM_ArtGerichtlicheMahn_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ArtGerichtlicheMahn);

ALTER TABLE DIM_Art_Schadenst ADD CONSTRAINT DIM_Art_Schadenst_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Art_Schadensteuerung);

ALTER TABLE DIM_AusgangVerfahren ADD CONSTRAINT DET_AusgangVerfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_AusgangVerfahren);

ALTER TABLE DIM_Auswertung_indiv ADD CONSTRAINT DIM_Auswertung_individuell_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Auswertung_individuell);

ALTER TABLE DIM_Auswertungsber ADD CONSTRAINT DET_Auswertungsbereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Auswertungsbereich);

ALTER TABLE DIM_Bedingungsschl ADD CONSTRAINT DIM_Bedingungsschluessel_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bedingungsschluessel);

ALTER TABLE DIM_BerufungRevdurch ADD CONSTRAINT DIM_Berufung_Rev_durch_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Berufung_Rev_durch);

ALTER TABLE DIM_BeschaedigGrad ADD CONSTRAINT DIM_Beschaedigungsgrad_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Beschaedigungsgrad);

ALTER TABLE DIM_BeschaedigTyp ADD CONSTRAINT DIM_Beschaedigungstyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Beschaedigungstyp);

ALTER TABLE DIM_BestandsbezArt ADD CONSTRAINT DIM_Bestandsbeziehungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bestandsbeziehungsart);

ALTER TABLE DIM_Betragstyp ADD CONSTRAINT DIM_Betragstyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Betragstyp);

ALTER TABLE DIM_Bewertung_VTP ADD CONSTRAINT DIM_Bewertung_VTP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bewertung_VTP);

ALTER TABLE DIM_Bilanz_Meldeper ADD CONSTRAINT DIM_Bilanz_Meldeperiode_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Bilanz_Meldeperiode);

ALTER TABLE DIM_BruttoNetto ADD CONSTRAINT DIM_BruttoNetto_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_BruttoNetto);

ALTER TABLE DIM_CodeOrt ADD CONSTRAINT DIM_CodeOrt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_CodeOrt);

ALTER TABLE DIM_CodeOrtsteil ADD CONSTRAINT DIM_CodeOrtsteil_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_CodeOrtsteil);

ALTER TABLE DIM_Datum ADD CONSTRAINT DIM_Datum_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Datum);

ALTER TABLE DIM_Deckungsart ADD CONSTRAINT DIM_Deckungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Deckungsart);

ALTER TABLE DIM_DeckungsschlK ADD CONSTRAINT DIM_DeckungsschluesselK_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_DeckungsschluesselK);

ALTER TABLE DIM_DeckungsschlKH ADD CONSTRAINT DIM_DeckungsschluesselKH_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_DeckungsschluesselKH);

ALTER TABLE DIM_Deckungsstatus ADD CONSTRAINT DIM_Deckungsstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Deckungsstatus);

ALTER TABLE DIM_Dunkelverarbeitg ADD CONSTRAINT DIM_Dunkelverarbeitung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Dunkelverarbeitung);

ALTER TABLE DIM_Ereignisart ADD CONSTRAINT DIM_Ereignisart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Ereignisart);

ALTER TABLE DIM_Ereignisklasse ADD CONSTRAINT DIM_Ereignisklasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Ereignisklasse);

ALTER TABLE DIM_Erledig_im_Verf ADD CONSTRAINT DIM_Erledigungszeitpkt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Erledigungszeitpkt_im_Verf);

ALTER TABLE DIM_Erledigungsart ADD CONSTRAINT DIM_Erledigungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Erledigungsart);

ALTER TABLE DIM_Eskalationsstufe ADD CONSTRAINT DIM_Eskalationsstufe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Eskalationsstufe);

ALTER TABLE DIM_Fachgebiet ADD CONSTRAINT DIM_Fachgebiet_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Fachgebiet);

ALTER TABLE DIM_FallzahlPostTyp ADD CONSTRAINT DIM_Fallzahlungspostentyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Fallzahlungspostentyp);

ALTER TABLE DIM_Familienstand ADD CONSTRAINT DIM_Familienstand_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Familienstand);

ALTER TABLE DIM_Gefahr ADD CONSTRAINT DIM_Gefahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Gefahr);

ALTER TABLE DIM_Geltungsbereich ADD CONSTRAINT DET_Geltungsbereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Geltungsbereich);

ALTER TABLE DIM_Gerichtsbarkeit ADD CONSTRAINT DIM_Gerichtsbarkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Gerichtsbarkeit);

ALTER TABLE DIM_GeschBezFirma ADD CONSTRAINT DIM_GeschaeftsbezFirma_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezFirma);

ALTER TABLE DIM_GeschBezTaetigk ADD CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_GeschaeftsbezTaetigkeit);

ALTER TABLE DIM_Geschlecht ADD CONSTRAINT DIM_Geschlecht_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Geschlecht);

ALTER TABLE DIM_Grosskunde ADD CONSTRAINT DIM_Grosskunde_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Grosskunde);

ALTER TABLE DIM_Haftung ADD CONSTRAINT DIM_Haftung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Haftung);

ALTER TABLE DIM_Halbjahr ADD CONSTRAINT DIM_Halbjahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Halbjahr);

ALTER TABLE DIM_Instanzstatus ADD CONSTRAINT DIM_Instanzstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Instanzstatus);

ALTER TABLE DIM_JNKENNZ ADD CONSTRAINT LKP_KENNZ_PK PRIMARY KEY
	(KENNZ);

ALTER TABLE DIM_Jahr ADD CONSTRAINT DIM_Jahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Jahr);

ALTER TABLE DIM_KlassifizRueckst ADD CONSTRAINT DIM_Klassifizierungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_KlassifizierungRueckst);

ALTER TABLE DIM_KlassifizSchluss ADD CONSTRAINT DIM_KlassifizierungSchluss_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_KlassifizierungSchluss);

ALTER TABLE DIM_Land_Nation ADD CONSTRAINT DIM_Laenderkennzeichen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Laenderkennzeichen);

ALTER TABLE DIM_Leistungsart ADD CONSTRAINT DIM_Leistungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Leistungsart);

ALTER TABLE DIM_Meldeweg ADD CONSTRAINT DIM_Meldeweg_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Meldeweg);

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Monat);

ALTER TABLE DIM_ObjektArt ADD CONSTRAINT DIM_ObjektArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ObjektArt);

ALTER TABLE DIM_PartnerObjekttyp ADD CONSTRAINT DIM_Partner_Objekttyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partner_Objekttyp);

ALTER TABLE DIM_PartnergemArt ADD CONSTRAINT DIM_Partnergemeinschaftsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partnergemeinschaftsart);

ALTER TABLE DIM_Partnertyp ADD CONSTRAINT DIM_Partnertyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Partnertyp);

ALTER TABLE DIM_Postleitzahl ADD CONSTRAINT DIM_Postleitzahl_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Postleitzahl);

ALTER TABLE DIM_Produkt ADD CONSTRAINT DIM_Produkt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Produkt);

ALTER TABLE DIM_Quartal ADD CONSTRAINT DIM_Quartal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Quartal);

ALTER TABLE DIM_RD_Ebene1 ADD CONSTRAINT DIM_RD_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene1);

ALTER TABLE DIM_RD_Ebene2 ADD CONSTRAINT DIM_RD_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene2);

ALTER TABLE DIM_RD_Ebene3 ADD CONSTRAINT DIM_RD_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RD_Ebene3);

ALTER TABLE DIM_Rechtsform ADD CONSTRAINT DIM_Rechtsform_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Rechtsform);

ALTER TABLE DIM_RechtswegEbene ADD CONSTRAINT DIM_RechtswegEbene_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RechtswegEbene);

ALTER TABLE DIM_Region ADD CONSTRAINT DIM_Region_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Region);

ALTER TABLE DIM_Regionaldir ADD CONSTRAINT DIM_Regionaldirektion_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regionaldirektion);

ALTER TABLE DIM_Regressart ADD CONSTRAINT DIM_Regressart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressart);

ALTER TABLE DIM_Regressgrund ADD CONSTRAINT DIM_Regressgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressgrund);

ALTER TABLE DIM_Regresspotential ADD CONSTRAINT DIM_Regresspotential_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regresspotential);

ALTER TABLE DIM_Regressstatus ADD CONSTRAINT DIM_Regressstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Regressstatus);

ALTER TABLE DIM_RueckstAendGrund ADD CONSTRAINT DIM_RueckstAenderungsgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstAenderungsgrund);

ALTER TABLE DIM_RueckstBetrArt ADD CONSTRAINT DIM_RueckstBetragsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstellungsBetragsart);

ALTER TABLE DIM_RueckstSetzMeth ADD CONSTRAINT DIM_RueckstSetzungsmethode_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_RueckstSetzungsmethode);

ALTER TABLE DIM_RueckversichArt ADD CONSTRAINT DIM_Rueckversicherungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Rueckversicherungsart);

ALTER TABLE DIM_Rueckversicherg ADD CONSTRAINT DIM_Rueckversicherung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Rueckversicherung);

ALTER TABLE DIM_SBGruppe ADD CONSTRAINT DIM_zust_SBGruppe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_zust_SBGruppe);

ALTER TABLE DIM_SammelereignisKl ADD CONSTRAINT DIM_SammelereignisKlasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SammelereignisKlasse);

ALTER TABLE DIM_Satzart_Zahlung ADD CONSTRAINT DIM_SatzartDerZahlung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SatzartDerZahlung);

ALTER TABLE DIM_SchadenKomplexit ADD CONSTRAINT DIM_SchadenKomplexitaet_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SchadenKomplexitaet);

ALTER TABLE DIM_SchadenSteuerung ADD CONSTRAINT DIM_SchadenSteuerung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SchadenSteuerung);

ALTER TABLE DIM_Schaden_Besonder ADD CONSTRAINT DIM_Schaden_Besonderheit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schaden_Besonderheit);

ALTER TABLE DIM_Schadenfallart ADD CONSTRAINT DIM_Schadenfallart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenfallart);

ALTER TABLE DIM_Schadenstatus ADD CONSTRAINT DIM_Schadenstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenstatus);

ALTER TABLE DIM_Schadenurs_SAP ADD CONSTRAINT DIM_Schadenurs_SAP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenurs_SAP);

ALTER TABLE DIM_Schadenursache ADD CONSTRAINT DIM_Schadenursache_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenursache);

ALTER TABLE DIM_SchadrueckstArt ADD CONSTRAINT DIM_Schadenrueckstellart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schadenrueckstellungsart);

ALTER TABLE DIM_Schuldigkeit ADD CONSTRAINT DIM_Schuldigkeit_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schuldigkeit);

ALTER TABLE DIM_Schutzkennz ADD CONSTRAINT DIM_Schutzkennzeichen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Schutzkennzeichen);

ALTER TABLE DIM_Sparte ADD CONSTRAINT DIM_Sparte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Sparte);

ALTER TABLE DIM_Spartenbuendel_1 ADD CONSTRAINT DIM_Spartenbuendel_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene1);

ALTER TABLE DIM_Spartenbuendel_2 ADD CONSTRAINT DIM_Spartenbuendel_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene2);

ALTER TABLE DIM_Spartenbuendel_3 ADD CONSTRAINT DIM_Spartenbuendel_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene3);

ALTER TABLE DIM_Spartenbuendel_4 ADD CONSTRAINT DIM_Spartenbuendel_Ebene4_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene4);

ALTER TABLE DIM_Spartenbuendel_5 ADD CONSTRAINT DIM_Spartenbuendel_Ebene5_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene5);

ALTER TABLE DIM_Spartenbuendel_6 ADD CONSTRAINT DIM_Spartenbuendel_Ebene6_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene6);

ALTER TABLE DIM_Spartenbuendel_7 ADD CONSTRAINT DIM_Spartenbuendel_Ebene7_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenbuendel_Ebene7);

ALTER TABLE DIM_Spartenkennziff ADD CONSTRAINT DIM_Spartenkennziffer_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Spartenkennziffer);

ALTER TABLE DIM_TV_Projekt ADD CONSTRAINT DIM_TVProjekte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_TV_Projekt);

ALTER TABLE DIM_Teilschadenart ADD CONSTRAINT DIM_Teilschadenart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Teilschadenart);

ALTER TABLE DIM_Teilsparte ADD CONSTRAINT DIM_Teilsparte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Teilsparte);

ALTER TABLE DIM_Titel ADD CONSTRAINT DIM_Titel_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Titel);

ALTER TABLE DIM_UKZ ADD CONSTRAINT DIM_UKZ_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_UKZ);

ALTER TABLE DIM_Unfallart ADD CONSTRAINT DET_Unfallart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Unfallart);

ALTER TABLE DIM_Verfahrensart ADD CONSTRAINT DIM_Verfahrensart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensart);

ALTER TABLE DIM_Verfahrensggst ADD CONSTRAINT DIM_Verfahrensgegenstand_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensgegenstand);

ALTER TABLE DIM_Verfahrensstatus ADD CONSTRAINT DIM_Verfahrensstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verfahrensstatus);

ALTER TABLE DIM_VerletzgKoerpert ADD CONSTRAINT DET_Verletzung_Koerperteil_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verletzung_Koerperteil);

ALTER TABLE DIM_Verletzung ADD CONSTRAINT DET_Verletzung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Verletzung);

ALTER TABLE DIM_Versicherungsart ADD CONSTRAINT DIM_Versicherungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Versicherungsart);

ALTER TABLE DIM_Vertragsart ADD CONSTRAINT DIM_Vertragsmerkmale_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Vertragsart);

ALTER TABLE DIM_Vollmachtsstufe ADD CONSTRAINT DIM_Vollmachtsstufe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Vollmachtsstufe);

ALTER TABLE DIM_Waehrung ADD CONSTRAINT DIM_Waehrung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Waehrung);

ALTER TABLE DIM_Wagnisart ADD CONSTRAINT DIM_Wagnisart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Wagnisart);

ALTER TABLE DIM_Werbeunterdrueck ADD CONSTRAINT DIM_Werbeunterdrueckung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Werbeunterdrueckung);

ALTER TABLE DIM_Woche ADD CONSTRAINT D_Woche_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Woche);

ALTER TABLE DIM_ZahlgspflichtArt ADD CONSTRAINT DIM_ZahlungspflichtigerArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungspflichtigerArt);

ALTER TABLE DIM_ZahlungStatus ADD CONSTRAINT DIM_ZahlungStatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungStatus);

ALTER TABLE DIM_Zahlungsart ADD CONSTRAINT DIM_Zahlungsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlungsart);

ALTER TABLE DIM_Zahlungsgrund ADD CONSTRAINT DIM_Zahlungsgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlungsgrund);

ALTER TABLE DIM_ZahlungsgrundGrp ADD CONSTRAINT DIM_ZahlungsgrundGruppe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_ZahlungsgrundGruppe);

ALTER TABLE DIM_Zahlweg ADD CONSTRAINT DIM_Zahlweg_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zahlweg);

ALTER TABLE DIM_Zeitzone ADD CONSTRAINT DIM_Zeitzone_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_Zeitzone);

ALTER TABLE DMK_BeschObjektFlags ADD CONSTRAINT DMK_BeschObjektFlags_PK PRIMARY KEY
	(ID_BeschObjektFlags);

ALTER TABLE DMK_BeschObjektMerkm ADD CONSTRAINT DMK_BeschObjektMerkmale_PK PRIMARY KEY
	(ID_BeschObjektMerkmale);

ALTER TABLE DMK_BilRueckstMerkm ADD CONSTRAINT DMK_BilRueckstMerkmale_PK PRIMARY KEY
	(ID_BilRueckstMerkmale);

ALTER TABLE DMK_GeriInstMerkmale ADD CONSTRAINT DMK_GerichtsInstMerkmale_PK PRIMARY KEY
	(ID_GerichtsInstMerkmale);

ALTER TABLE DMK_GeriVerfMerkmale ADD CONSTRAINT DMK_GerichtsverfahrenMerkm_PK PRIMARY KEY
	(ID_GerichtsverfMerkmal);

ALTER TABLE DMK_Partnermerkmale ADD CONSTRAINT DMK_Partnermerkmale_PK PRIMARY KEY
	(ID_Partnermerkmal);

ALTER TABLE DMK_RegressMerkmale ADD CONSTRAINT DMK_RegressMerkmale_PK PRIMARY KEY
	(ID_RegressMerkmale);

ALTER TABLE DMK_SSP_RVPMerkmale ADD CONSTRAINT DMK_SSP_RVPMerkmale_PK PRIMARY KEY
	(ID_SSP_RVPMerkmale);

ALTER TABLE DMK_SchadRueckstMerk ADD CONSTRAINT DMK_SchadenrueckstMerkmale_PK PRIMARY KEY
	(ID_Schadenrueckstmerkmale);

ALTER TABLE DMK_SchadUrsacheGef ADD CONSTRAINT DMK_SchadUrsacheGef_PK PRIMARY KEY
	(ID_SchadUrsacheGef);

ALTER TABLE DMK_SchadenFlags ADD CONSTRAINT DMK_Schadenflags_PK PRIMARY KEY
	(ID_SchadenFlags);

ALTER TABLE DMK_SchadenOrtMerkm ADD CONSTRAINT DMK_Schadenortmerkmale_PK PRIMARY KEY
	(ID_Schadenortmerkmale);

ALTER TABLE DMK_Schadenmerkm ADD CONSTRAINT DMK_Schadenmerkmale_PK PRIMARY KEY
	(ID_Schadenmerkmale);

ALTER TABLE DMK_TeilschadenFlags ADD CONSTRAINT DMK_TeilschadenFlags_PK PRIMARY KEY
	(ID_TeilschadenFlags);

ALTER TABLE DMK_TeilschadenMerkm ADD CONSTRAINT DMK_TeilschadenMerkmale_PK PRIMARY KEY
	(ID_TeilschadenMerkmale);

ALTER TABLE DMK_VertragDeckMerkm ADD CONSTRAINT DMK_VertragsdeckMerkmale_PK PRIMARY KEY
	(ID_VertragsdeckMerkmale);

ALTER TABLE DMK_Vertragsmerkmale ADD CONSTRAINT DMK_Vertragsmerkmale_PK PRIMARY KEY
	(ID_Vertragsmerkmale);

ALTER TABLE DMK_ZhlgFordDetMerkm ADD CONSTRAINT DMK_ZhlgFordDetMerkmale_PK PRIMARY KEY
	(ID_ZhlgFordDetMerkmale);

ALTER TABLE DMK_ZhlgFordFlags ADD CONSTRAINT DMK_ZhlgFordFlags_PK PRIMARY KEY
	(ID_ZhlgFordFlags);

ALTER TABLE DMK_ZhlgFordMerkmale ADD CONSTRAINT DMK_ZhlgFordMerkmale_PK PRIMARY KEY
	(ID_ZahlgFordMerkmale);

ALTER TABLE F_Besch_Objekt ADD CONSTRAINT F_Besch_Objekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Besch_Objekt);

ALTER TABLE F_Bilanzrueckstellgn ADD CONSTRAINT F_Bilanzrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Bilanzrueckstellungen);

ALTER TABLE F_Forderung ADD CONSTRAINT F_Forderung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Forderung);

ALTER TABLE F_Forderung_Detail ADD CONSTRAINT F_Forderung_Detail_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Forderung_Detail);

ALTER TABLE F_GerichtsInstanz ADD CONSTRAINT F_GerichtsInstanz_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_GerichtsInstanz);

ALTER TABLE F_Gerichtsverfahren ADD CONSTRAINT F_Gerichtsverfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Gerichtsverfahren);

ALTER TABLE F_RV_LAYER ADD CONSTRAINT F_RV_Layer_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RV_Layer);

ALTER TABLE F_Regionaldirektion ADD CONSTRAINT F_Regionaldirektion_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Regionaldirektion);

ALTER TABLE F_Regress ADD CONSTRAINT F_Regress_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Regress);

ALTER TABLE F_RegressPosition ADD CONSTRAINT F_RegressPos_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_RegressPosition);

ALTER TABLE F_SAP_Kontrollreport ADD CONSTRAINT F_SAP_Kontrollrep_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_SAP_Kontrollreport);

ALTER TABLE F_SCHADEN_YTD ADD CONSTRAINT F_SCHADEN_YTD_PK PRIMARY KEY
	(TA_LADEDATUM,
	 GUELTIG_BEGINN,
	 SK_SCHADEN);

ALTER TABLE F_SDS_Bilanzwerte ADD CONSTRAINT F_SDS_Bilanzwerte_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_SDS_Bilanzwerte);

ALTER TABLE F_SSP_RVP ADD CONSTRAINT F_SSP_RVP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_SSP_RVP);

ALTER TABLE F_SchadRueckstellgn ADD CONSTRAINT F_Schadenrueckstellungen_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadenrueckstellungen);

ALTER TABLE F_Schaden ADD CONSTRAINT F_Schaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden);

ALTER TABLE F_Schadensteuerung ADD CONSTRAINT F_Schadensteuerung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schadensteuerung);

ALTER TABLE F_Teilschaden ADD CONSTRAINT F_Teilschaden_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden);

ALTER TABLE F_Telegutachten ADD CONSTRAINT F_Telegutachten_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Telegutachten);

ALTER TABLE F_Verl_Person ADD CONSTRAINT F_Verl_Pers_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Verl_Person);

ALTER TABLE F_Zahlung ADD CONSTRAINT F_Zahlung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Zahlung_Hist);

ALTER TABLE F_Zahlung_Detail ADD CONSTRAINT F_Zahlung_Detail_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Zahlung_Detail_Hist);

ALTER TABLE R_SSP_RVP_Ausw_indiv ADD CONSTRAINT R_SSP_RVP_Ausw_indiv_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 FK_SSP_RVP,
	 ID_Auswertung_individuell);

ALTER TABLE R_Schaden_Apraxa_RA ADD CONSTRAINT R_Schaden_Apraxa_RA_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Apraxa_RA);

ALTER TABLE R_Schaden_Eigener_RA ADD CONSTRAINT R_Schaden_Eigener_RA PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Eigener_RA);

ALTER TABLE R_Schaden_KLUGO_RA ADD CONSTRAINT R_Schaden_KL_RA PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_KLUGO_RA);

ALTER TABLE R_Schaden_RVEreign ADD CONSTRAINT R_Schaden_RVEreign_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_RV_NatKatEreignis,
	 ID_SammelereignisKlasse);

ALTER TABLE R_Schaden_Regbeauftr ADD CONSTRAINT R_Schaden_Regbeauftragter_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_Regbeauftragter);

ALTER TABLE R_Schaden_SonstPartn ADD CONSTRAINT R_Schaden_SonstPartn PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_SonstPartn);

ALTER TABLE R_Schaden_VerlPerson ADD CONSTRAINT R_Schaden_VerletztePerson_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Schaden,
	 SK_Partner_VerletztePerson);

ALTER TABLE R_Spartenl_AuswIndiv ADD CONSTRAINT R_Spartenliste_Ausw_indiv_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 ID_SchadUrsacheGef,
	 ID_Auswertung_individuell);

ALTER TABLE R_Teilsch_Handwerker ADD CONSTRAINT R_Teilschaden_Handwerker_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Handwerker);

ALTER TABLE R_Teilsch_Regbeauftr ADD CONSTRAINT R_Teilschaden_Regbeauftr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Regbeauftragter);

ALTER TABLE R_Teilsch_RepBetrieb ADD CONSTRAINT R_Teilschaden_Reparaturbetr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Reparaturbetrieb);

ALTER TABLE R_Teilsch_Sachverst ADD CONSTRAINT R_Teilschaden_Sachverst_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_Sachverstaendiger);

ALTER TABLE R_Teilsch_ServPartn ADD CONSTRAINT R_Teilsch_ServP_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_ServPartn);

ALTER TABLE R_Teilsch_VerlPerson ADD CONSTRAINT R_Teilschaden_VerlPerson_PK PRIMARY KEY
	(TA_Ladedatum,
	 Gueltig_Beginn,
	 SK_Teilschaden,
	 SK_Partner_VerletztePerson);

COMMENT ON COLUMN AGG_SCHADEN_1.ANZAHL IS
'SUM(ANZAHL)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ANZAHL_BEARB_YTD IS
'SUM(ANZAHL_BEARB_YTD)';

COMMENT ON COLUMN AGG_SCHADEN_1.GUELTIG_BEGINN IS
'Historisierungskriterium
';

COMMENT ON COLUMN AGG_SCHADEN_1.GUELTIG_ENDE IS
'Historisierungskriterium

';

COMMENT ON COLUMN AGG_SCHADEN_1.ID_MELDEJAHR IS
'TRUNC(ID_MELDEMONAT / 100)';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_EINGANG_ENTSCH IS
'SUM(REGRESS_GESI_EINGANG_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_EINGANG_RENTE IS
'SUM(REGRESS_GESI_EINGANG_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_EINGANG_SRK IS
'SUM(REGRESS_GESI_EINGANG_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_INITIAL_ENTSCH IS
'SUM(REGRESS_GESI_INITIAL_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_INITIAL_RENTE IS
'SUM(REGRESS_GESI_INITIAL_RENTE)

';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_INITIAL_SRK IS
'SUM(REGRESS_GESI_INITIAL_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_GESI_OFFEN IS
'SUM(REGRESS_GESI_OFFEN)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_EINGANG_ENTSCH IS
'SUM(REGRESS_UNGESI_EINGANG_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_EINGANG_RENTE IS
'SUM(REGRESS_UNGESI_EINGANG_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_EINGANG_SRK IS
'SUM(REGRESS_UNGESI_EINGANG_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_INITIAL_ENTSCH IS
'SUM(REGRESS_UNGESI_INITIAL_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_INITIAL_RENTE IS
'SUM(REGRESS_UNGESI_INITIAL_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_INITIAL_SRK IS
'SUM(REGRESS_UNGESI_INITIAL_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_OFFEN_ENTSCH IS
'SUM(REGRESS_UNGESI_OFFEN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_OFFEN_RENTE IS
'SUM(REGRESS_UNGESI_OFFEN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGRESS_UNGESI_OFFEN_SRK IS
'SUM(REGRESS_UNGESI_OFFEN_SRK)

';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_GESI_EINGANG_ENTSCH_YTD IS
'SUM(REGR_GESI_EINGANG_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_GESI_EINGANG_RENTE_YTD IS
'SUM(REGR_GESI_EINGANG_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_GESI_EINGANG_SRK_YTD IS
'SUM(REGR_GESI_EINGANG_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_UNGESI_EINGANG_ENTSCH_YTD IS
'SUM(REGR_UNGESI_EINGANG_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_UNGESI_EINGANG_RENTE_YTD IS
'SUM(REGR_UNGESI_EINGANG_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.REGR_UNGESI_EINGANG_SRK_YTD IS
'SUM(REGR_UNGESI_EINGANG_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNGEN_SALDIERT IS
'SUM(RUECKSTELLUNGEN_SALDIERT)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNGEN_SALDIERT_YTD IS
'SUM(RUECKSTELLUNGEN_SALDIERT_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_ENTSCH IS
'SUM(RUECKSTELLUNG_REIN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_ENTSCH_YTD IS
'SUM(RUECKSTELLUNG_REIN_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_RENTE IS
'SUM(RUECKSTELLUNG_REIN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_RENTE_YTD IS
'SUM(RUECKSTELLUNG_REIN_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_SRK IS
'SUM(RUECKSTELLUNG_REIN_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.RUECKSTELLUNG_REIN_SRK_YTD IS
'SUM(RUECKSTELLUNG_REIN_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.SCHADENAUFWAND_OHNE_IK IS
'SUM(SCHADENAUFWAND_OHNE_IK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.SCHADENAUFWAND_OHNE_IK_YTD IS
'SUM(SCHADENAUFWAND_OHNE_IK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.SK_AGG_SCHADEN_1 IS
'Representation der Gruppierungskriterien
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNGEN_SALDIERT IS
'SUM(ZAHLUNGEN_SALDIERT)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNGEN_SALDIERT_YTD IS
'SUM(ZAHLUNGEN_SALDIERT_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_ENTSCH IS
'SUM(ZAHLUNG_REIN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_ENTSCH_YTD IS
'SUM(ZAHLUNG_REIN_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_RENTE IS
'SUM(ZAHLUNG_REIN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_RENTE_YTD IS
'SUM(ZAHLUNG_REIN_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_SRK IS
'SUM(ZAHLUNG_REIN_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_1.ZAHLUNG_REIN_SRK_YTD IS
'SUM(ZAHLUNG_REIN_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ANZAHL IS
'SUM(1)';

COMMENT ON COLUMN AGG_SCHADEN_2.ANZAHL_BEARB_YTD IS
'SUM(ANZAHL_BEARB_YTD)';

COMMENT ON COLUMN AGG_SCHADEN_2.AUFWANDSNEUTRAL_OHNE_SRK IS
'when 
	D_SCHADENSTATUS_DETAIL = ''Geschlossen'' (=2329) oder ,Ereignis ohne Forderung'' (=2340) 
and 
	(ZAHLUNG_REIN_ENTSCH + ZAHLUNG_REIN_RENTE - REGRESS_GESI_EINGANG_ENTSCH - REGRESS_UNGESI_EINGANG_ENTSCH - REGRESS_GESI_EINGANG_RENTE - REGRESS_UNGESI_EINGANG_RENTE - REGRESS_GESI_OFFEN) < 0.01 
then 
	''J'' 
else 
	''N'' ';

COMMENT ON COLUMN AGG_SCHADEN_2.FEHLANLAGE IS
'Lookup �ber ID_SCHADENFLAGS => FEHLANLAGE';

COMMENT ON COLUMN AGG_SCHADEN_2.GJ_SCHADEN IS
'Lookup �ber ID_SCHADENFLAGS => GJ_SCHADEN';

COMMENT ON COLUMN AGG_SCHADEN_2.GJ_WIEDEREROEFFNET IS
'Lookup �ber ID_SCHADENFLAGS => GJ_WIEDEREROEFFNET ';

COMMENT ON COLUMN AGG_SCHADEN_2.GJ_WIEDEREROEFFNET_MONETAER IS
'Lookup �ber ID_SCHADENFLAGS => GJ_WIEDEREROEFFNET_MONETAER';

COMMENT ON COLUMN AGG_SCHADEN_2.GUELTIG_BEGINN IS
'Historisierungskriterium';

COMMENT ON COLUMN AGG_SCHADEN_2.GUELTIG_ENDE IS
'Historisierungskriterium';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_ANLAGEJAHR IS
'TRUNC(ID_ANLAGEDATUM / 10000)';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_EINTRITTSJAHR IS
'TRUNC(ID_EINTRITTSDATUM / 10000)';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_GROSSKUNDE IS
'Lookup �ber ID_VERTRAGSMERKMALE => ID_GROSSKUNDE';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_JAHR_1_WIEDEREROEFFNUNG IS
'TRUNC(ID_DATUM_1_WIEDEREROEFFNUNG / 10000)';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_MELDEMONAT IS
'TRUNC(ID_MELDEDATUM / 100)';

COMMENT ON COLUMN AGG_SCHADEN_2.ID_SCHADENSCHLUSSJAHR IS
'TRUNC(ID_SCHADENSCHLUSSMELDEDATUM / 10000)';

COMMENT ON COLUMN AGG_SCHADEN_2.OHNEENTSCHAEDIGUNG IS
'Lookup �ber ID_SCHADENFLAGS => OHNEENTSCHAEDIGUNG';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_EINGANG_ENTSCH IS
'SUM(REGRESS_GESI_EINGANG_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_EINGANG_RENTE IS
'SUM(REGRESS_GESI_EINGANG_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_EINGANG_SRK IS
'SUM(REGRESS_GESI_EINGANG_SRK)
SUM(REGRESS_UNGESI_EINGANG_ENTSCH)
SUM(REGRESS_UNGESI_EINGANG_RENTE)
SUM(REGRESS_UNGESI_EINGANG_SRK)
SUM(REGRESS_GESI_OFFEN)
SUM(REGRESS_UNGESI_OFFEN_ENTSCH)
SUM(REGRESS_UNGESI_OFFEN_RENTE)
SUM(REGRESS_UNGESI_OFFEN_SRK)
SUM(ZAHLUNGEN_SALDIERT)
SUM(RUECKSTELLUNGEN_SALDIERT)
SUM(SCHADENAUFWAND_OHNE_IK)
SUM(RUECKSTELLUNG_REIN_ENTSCH)
SUM(RUECKSTELLUNG_REIN_RENTE)
SUM(RUECKSTELLUNG_REIN_SRK)
SUM(ZAHLUNG_REIN_ENTSCH)
SUM(ZAHLUNG_REIN_RENTE)
SUM(ZAHLUNG_REIN_SRK)
SUM(1)';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_INITIAL_ENTSCH IS
'SUM(REGRESS_GESI_INITIAL_ENTSCH)';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_INITIAL_RENTE IS
'SUM(REGRESS_GESI_INITIAL_RENTE)';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_INITIAL_SRK IS
'SUM(REGRESS_GESI_INITIAL_SRK)';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_GESI_OFFEN IS
'SUM(REGRESS_GESI_OFFEN)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_EINGANG_ENTSCH IS
'SUM(REGRESS_UNGESI_EINGANG_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_EINGANG_RENTE IS
'SUM(REGRESS_UNGESI_EINGANG_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_EINGANG_SRK IS
'SUM(REGRESS_UNGESI_EINGANG_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_INITIAL_ENTSCH IS
'SUM(REGRESS_UNGESI_INITIAL_ENTSCH)
SUM(REGRESS_UNGESI_INITIAL_RENTE)
SUM(REGRESS_UNGESI_INITIAL_SRK)
SUM(REGRESS_GESI_EINGANG_ENTSCH)
SUM(REGRESS_GESI_EINGANG_RENTE)
SUM(REGRESS_GESI_EINGANG_SRK)
SUM(REGRESS_UNGESI_EINGANG_ENTSCH)
SUM(REGRESS_UNGESI_EINGANG_RENTE)
SUM(REGRESS_UNGESI_EINGANG_SRK)
SUM(REGRESS_GESI_OFFEN)
SUM(REGRESS_UNGESI_OFFEN_ENTSCH)
SUM(REGRESS_UNGESI_OFFEN_RENTE)
SUM(REGRESS_UNGESI_OFFEN_SRK)
SUM(ZAHLUNGEN_SALDIERT)
SUM(RUECKSTELLUNGEN_SALDIERT)
SUM(SCHADENAUFWAND_OHNE_IK)
SUM(RUECKSTELLUNG_REIN_ENTSCH)
SUM(RUECKSTELLUNG_REIN_RENTE)
SUM(RUECKSTELLUNG_REIN_SRK)
SUM(ZAHLUNG_REIN_ENTSCH)
SUM(ZAHLUNG_REIN_RENTE)
SUM(ZAHLUNG_REIN_SRK)
SUM(1)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_INITIAL_RENTE IS
'SUM(REGRESS_UNGESI_INITIAL_RENTE)
SUM(REGRESS_UNGESI_INITIAL_SRK)
SUM(REGRESS_GESI_EINGANG_ENTSCH)
SUM(REGRESS_GESI_EINGANG_RENTE)
SUM(REGRESS_GESI_EINGANG_SRK)
SUM(REGRESS_UNGESI_EINGANG_ENTSCH)
SUM(REGRESS_UNGESI_EINGANG_RENTE)
SUM(REGRESS_UNGESI_EINGANG_SRK)
SUM(REGRESS_GESI_OFFEN)
SUM(REGRESS_UNGESI_OFFEN_ENTSCH)
SUM(REGRESS_UNGESI_OFFEN_RENTE)
SUM(REGRESS_UNGESI_OFFEN_SRK)
SUM(ZAHLUNGEN_SALDIERT)
SUM(RUECKSTELLUNGEN_SALDIERT)
SUM(SCHADENAUFWAND_OHNE_IK)
SUM(RUECKSTELLUNG_REIN_ENTSCH)
SUM(RUECKSTELLUNG_REIN_RENTE)
SUM(RUECKSTELLUNG_REIN_SRK)
SUM(ZAHLUNG_REIN_ENTSCH)
SUM(ZAHLUNG_REIN_RENTE)
SUM(ZAHLUNG_REIN_SRK)
SUM(1)';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_INITIAL_SRK IS
'SUM(REGRESS_UNGESI_INITIAL_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_OFFEN_ENTSCH IS
'SUM(REGRESS_UNGESI_OFFEN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_OFFEN_RENTE IS
'SUM(REGRESS_UNGESI_OFFEN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGRESS_UNGESI_OFFEN_SRK IS
'SUM(REGRESS_UNGESI_OFFEN_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_GESI_EINGANG_ENTSCH_YTD IS
'SUM(REGR_GESI_EINGANG_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_GESI_EINGANG_RENTE_YTD IS
'SUM(REGR_GESI_EINGANG_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_GESI_EINGANG_SRK_YTD IS
'SUM(REGR_GESI_EINGANG_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_UNGESI_EINGANG_ENTSCH_YTD IS
'SUM(REGR_UNGESI_EINGANG_ENTSCH_YTD)

';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_UNGESI_EINGANG_RENTE_YTD IS
'SUM(REGR_UNGESI_EINGANG_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.REGR_UNGESI_EINGANG_SRK_YTD IS
'SUM(REGR_UNGESI_EINGANG_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNGEN_SALDIERT IS
'SUM(RUECKSTELLUNGEN_SALDIERT)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNGEN_SALDIERT_YTD IS
'SUM(RUECKSTELLUNGEN_SALDIERT_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_ENTSCH IS
'SUM(RUECKSTELLUNG_REIN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_ENTSCH_YTD IS
'SUM(RUECKSTELLUNG_REIN_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_RENTE IS
'SUM(RUECKSTELLUNG_REIN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_RENTE_YTD IS
'SUM(RUECKSTELLUNG_REIN_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_SRK IS
'SUM(RUECKSTELLUNG_REIN_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.RUECKSTELLUNG_REIN_SRK_YTD IS
'SUM(RUECKSTELLUNG_REIN_SRK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.SCHADENAUFWAND_OHNE_IK IS
'SUM(SCHADENAUFWAND_OHNE_IK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.SCHADENAUFWAND_OHNE_IK_YTD IS
'SUM(SCHADENAUFWAND_OHNE_IK_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.SK_AGG_SCHADEN_2 IS
'Representation der Gruppierungskriterien';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNGEN_SALDIERT IS
'SUM(ZAHLUNGEN_SALDIERT)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNGEN_SALDIERT_YTD IS
'SUM(ZAHLUNGEN_SALDIERT_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_ENTSCH IS
'SUM(ZAHLUNG_REIN_ENTSCH)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_ENTSCH_YTD IS
'SUM(ZAHLUNG_REIN_ENTSCH_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_RENTE IS
'SUM(ZAHLUNG_REIN_RENTE)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_RENTE_YTD IS
'SUM(ZAHLUNG_REIN_RENTE_YTD)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_SRK IS
'SUM(ZAHLUNG_REIN_SRK)
';

COMMENT ON COLUMN AGG_SCHADEN_2.ZAHLUNG_REIN_SRK_YTD IS
'SUM(ZAHLUNG_REIN_SRK_YTD)
';

COMMENT ON COLUMN DET_Besch_Objekt.Beschreibung_Beschaed_B IS
'Beschreibung der Besch�digung

aus ER01_OB01_bescObj_SHUKR_01_LBS.Beschreibung_Beschaed_B

Datenschutz $B';

COMMENT ON COLUMN DET_Besch_Objekt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.ID_BeschObjektFlags IS
'Lookup auf DMK_BeschObjektFlags
';

COMMENT ON COLUMN DET_Besch_Objekt.ID_BeschObjektMerkmale IS
'Lookup auf DMK_BeschObjektMerkm mit 
C_Beschaedigungstyp,
C_Beschaedigungsgrad,
C_Objektart';

COMMENT ON COLUMN DET_Besch_Objekt.Objekt_lfd IS
'... ist eine laufende Nummer zur eindeutigen Identifizierung von Objekten innerhalb eines Schadens.

aus OB01_Objekt_Sch_01_HBS.Objekt_lfd

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.SK_Besch_Objekt IS
'aus ER01_OB01_bescObj_SHUKR_01_LBS.FK_ER01_OB01_beschObjekt

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ersatzdatum IS
'... identifiziert bei r�ckwirkend korrigierten S�tzen, wann der Datensatz durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Besch_Objekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz erstmals ins Data Mart geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Aktenzeichen_A IS
'... ist das bei Gericht gef�hrte Aktenzeichen der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Aktenzeichen_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.Gerichtsstand_Gemeinde IS
'... ist die Gemeinde des Gerichtsstands der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Gerichtsstand_Gemeinde

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.ID_GerichtsInstMerkmale IS
'LOOKUP auf DMK_GeriInstMerkmale mit 

ER04_GerInstanz_SHUKR_01_WBS. C_Instanzstatus
ER04_GerInstanz_SHUKR_01_WBS. C_Berufung_Rev_durch
ER04_GerInstanz_SHUKR_01_WBS. C_Instanzergebnis
ER04_GerInstanz_SHUKR_01_WBS. C_Gerichtstand_Land
ER04_GerInstanz_SHUKR_01_WBS. C_Verfahrensinstanz
ER04_GerInstanz_SHUKR_01_WBS. C_Gerichtsbarkeit
ER04_GerInstanz_SHUKR_01_WBS. C_Gerichtsstand_Region
';

COMMENT ON COLUMN DET_GerichtsInstanz.Instanz_GUID_A IS
'...ist die GUID der Verfahrensinstanz

aus ER04_GerInstanz_SHUKR_01_WBS.Instanz_GUID_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.Instanznummer_lfd IS
'... ist die identifizierende Nummer der Instanz des Gerichtsverfahrens.

aus ER04_GerInstanz_SHUKR_01_WBS.Instanznummer_lfd 
(Instanznummer, relativ zum Gerichtsverfahren)

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.SK_GerichtsInstanz IS
'aus ER04_GerInstanz_SHUKR_01_WBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN DET_GerichtsInstanz.Schadennummer_A IS
'
aus ER04_GerInstanz_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.Verfahrensnummer IS
'
aus ER04_GerInstanz_SHUKR_01_WBS.Verfahrensnummer

Datenschutz $-';

COMMENT ON COLUMN DET_GerichtsInstanz.externe_Referenz_A IS
'... ist eine Referenz auf externe Unterlagen. ???

aus ER04_GerInstanz_SHUKR_01_WBS.externe_Referenz_A

Datenschutz $A1';

COMMENT ON COLUMN DET_GerichtsInstanz.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat, kann auch ein technischer User sein

aus ER04_GerInstanz_SHUKR_01_WBS.geaendert_von_A

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.ID_GerichtsverfMerkmal IS
'LOOKUP auf DMK_GeriVerfMerkmale mit 

ER03_GerVerf_eig_SHUKR_01_HBS C_Waehrung
ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus
ER03_GerVerf_eig_SHUKR_01_HBS. C_Verfahrensart
ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B 
ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung
ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart
ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf
';

COMMENT ON COLUMN DET_Gerichtsverf.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN DET_Gerichtsverf.Schadennummer_A IS
'
aus ER03_GerVerf_eig_SHUKR_01_HBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.Verfahrens_GUID_A IS
'...ist die GUID des Verfahrens

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrens_GUID_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Gerichtsverf.Verfahrensbemerkung_B IS
'... ist eine Bemerkung zum Verfahren.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbemerkung_B

wegen Freitext: Datenschutz $B';

COMMENT ON COLUMN DET_Gerichtsverf.Verfahrensbeschreibung_B IS
'... ist eine Freitext-Beschreibung des Verfahrens.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensbeschreibung_B
	
Datenschutz $B';

COMMENT ON COLUMN DET_Gerichtsverf.Verfahrensnummer IS
'... ist die identifizierende Nummer des Gerichtsverfahrens.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verfahrensnummer
("Eindeutiger technischer Name des Verfahrens")

Datenschutz $-';

COMMENT ON COLUMN DET_Gerichtsverf.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat, kann auch ein technischer User sein

aus ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_von_A

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.ID_AendDat_zuletzt_im_Quartal IS
'...... ist das Datum, an dem der Schaden im Quartal zuletzt ge�ndert wurde.
Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.QuellObjekt_zuletzt_im_Quartal IS
'... ist der Name der zuletzt im Quartal ge�nderten Quelltabelle';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ges_Schaden_Aend.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.Stichtag IS
'Stichtag, der im Ladejob verarbeitet wurde.
Wenn derselbe Stichtag in mehereren Ladejobs verarbeitet wurde (z.B. Korrekturen), k�nnen mehrere S�tze zu demselben Stichtag in dieser Tabelle auftreten.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, zu dem dieser Tabellen-Eintrag geh�rt.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, k�nnen mehrere S�tze zu derselben Lade_ID dieser Tabelle auftreten.
Es k�nnen mehrere S�tze zu einem Ladejob in dieser Tabelle stehen.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, zu dem dieser Satz geschrieben wurde.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, k�nnen mehrere S�tze zu demselben Ladedatum in dieser Tabelle auftreten.

Datenschutz $-';

COMMENT ON COLUMN DET_Last_Load.Max_Stichtag IS
'Maximaler Stichtag, der in den Ladejobs verarbeitet wurde.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Last_Load.Max_TA_Ladedatum IS
'... ist der maximale Beginn (bis Minute) der jeweiligen Gesamt-Lade-Jobs, zu dem dieser Satz geschrieben wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Last_Load.Min_Stichtag IS
'Minimaler Stichtag, der in den Ladejobs verarbeitet wurde.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Last_Load.WFL IS
'... ist die Identifizierung des entsprechenden Workflows.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Beginn IS
'... ist der fr�heste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgel�st wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Eintrittsdatum_Ende IS
'... ist der sp�teste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgel�st wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-
';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.SK_NatKatEreignis IS
'aus ER00_Sammelergnis_man_01_HBS. FK_ER00_Sammelereignis';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_NatKatEreignis.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.E_Mail_Adresse_A IS
'... ist eine Adressangabe f�r einen E-Mail-Account, z.B.  Vorname@Name.de

aus	GE02_KommAng_Par_01_HBS.E_Mail_Adresse_A
mit	GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.Faxnummer_A IS
'... ist eine eindeutige Identifikation eines Fax-Anschlusses.

aus	GE02_KommAng_Par_01_HBS.Faxnummer_A
mit	GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Hausnummer_A IS
'... ist die Hausnummer als Teil der postalischen Anschrift.

aus GE05_Anschrift_Par_01_HBS.Hausnummer_A
mit	GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea: in der Quelle 9 Stellen
Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.ID_Anschrift_Land IS
'aus GE05_Anschrift_Par_01_HBS.C_Laenderkennzeichen

aus GE05_Anschrift_Par_01_HBS.C_Laenderkennzeichen
mit GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Adresse''

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.ID_Partnermerkmal IS
'Lookup auf DMK_Partnermerkmale.ID_Partnermerkmal mit den zum Stichtag g�ltigen Auspr�gungen

';

COMMENT ON COLUMN DET_Partner.ID_Postleitzahl IS
'aus GE05_Anschrift_Par_01_HBS.Postleitzahl_A
mit GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''
�ber DIM_Postleitzahl.ID_Postleitzahl 

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2

';

COMMENT ON COLUMN DET_Partner.ID_Sterbedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus PA01_PartnerNat_Par_01_HBS.Sterbedatum

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Kurzname IS
'... ist eine bekannte Abk�rzung, z.B. "05" f�r "RD K�ln" oder das Unternehmenskennzeichen  (G, N, A, L) f�r Unternehmen des DEVK-Konzerns

aus PA01_PartnerOrga_Par_01_HBS.Kurzname

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Name_A IS
'... ist f�r nat�rliche Personen der Nachname (=Name_NP in PARIS) und f�r juristische Personen der Name (=Name_Inst in PARIS, =Zuname1+Zuname2 in KFZ)

aus PA01_Partner..._Par_01_HBS.Name_A
und PA01_Partner_Sch_01_HBS.Name_A

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Namenszusatz_A IS
'sen., jun., leer

aus PA01_PartnerNat_Par_01_HBS.Namenszusatz_A

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.Ortsname_A IS
'... ist der Ortsname als Teil der postalischen Anschrift.

aus GE05_Anschrift_Par_01_HBS. Ortsname_A 
mit	GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea: in der Quelle 24 Stellen
Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_Partner..._Par_01_HBS.POB_A
und PA01_Partner_Sch_01_HBS.POB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.POB_PZ_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Pr�fziffer.

aus PA01_Partner..._Par_01_HBS.POB_A || PA01_Partner_Par_01_HBS.Pruefziffer

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.SK_Partner IS
'aus PA01_Partner..._Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner

Bea: Derzeit (2018) nur aus PA01_Partner_Sch_01_HBS';

COMMENT ON COLUMN DET_Partner.Strassenname_A IS
'... ist der Stra�enname als Teil der postalischen Anschrift.

aus GE05_Anschrift_Par_01_HBS.Strassenname_A
mit GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea: in der Quelle 23 Stellen
Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_Partner.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Telefonnummer_A IS
'... ist eine eindeutige Identifikation eines Telefon-Anschlusses.

aus	GE02_KommAng_Par_01_HBS.Telefonnummer_A
mit	GE02_KommAng_Par_01_HBS. C_Kommunikationstyp = ''Anschrift''

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.Vorname_A IS
'... ist f�r nat�rliche Personen der Vorname.

aus PA01_PartnerNat_Par_01_HBS.Vorname_A

Bea:	Wird nur im Klartext gef�llt, wenn Schutzkennzeichen = ''kein Zugriffsschutz'' oder wennn es kein Schutzkennzeichen gibt, 
		sonst: ''XXXX''

Datenschutz $A2';

COMMENT ON COLUMN DET_RV_NatKatEreign.Bearbeitungsstand IS
'... ist eine Notiz zum Bearbeitungsstand des RV-Ereignisses

aus aus ER06_SammelergTeil_man_01_WBS.Bearbeitungsstand

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.Bemerkung IS
'... ist eine Bemerkung zum RV-Ereignis

aus aus ER06_SammelergTeil_man_01_WBS.Bemerkung

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.NatKat_Eintrittsdatum_Beginn IS
'... ist der fr�heste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgel�st wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.NatKat_Eintrittsdatum_Ende IS
'... ist der sp�teste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das Ereignis ausgel�st wurde.

aus ER00_Sammelereignis_man_01_HBS.Eintrittsdatum_Ende

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.NatKat_Ereignis_ID IS
'... ist die eindeutige Nummer eines NatKat-Ereignisses, i.d.R. einer Naturkatastrophe

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_ID

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.NatKat_Ereignis_Name IS
'... ist die Bezeichnung des NatKat_Ereignisses

aus ER00_Sammelereignis_man_01_HBS.Sammelereignis_Name

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.RV_Eintrittsdatum_Beginn IS
'... ist der fr�heste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgel�st wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.RV_Eintrittsdatum_Ende IS
'... ist der sp�teste Zeitpunkt, zu dem ein Schaden eingetreten sein kann, der durch das RV-Ereignis ausgel�st wurde.

aus ER06_SammelergTeil_man_01_WBS.Eintrittsdatum_Ende

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.RV_Ereignis_ID IS
'... ist die eindeutige Nummer des RV-Ereignisses.

aus ER06_SammelergTeil_man_01_WBS.Sammelereignisteil_ID

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.RV_Ereignis_Name IS
'... ist die Bezeichnung des RV-Ereignisses

aus ER06_SammelergTeil_man_01_WBS.SammelereignisteilName

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.SK_RV_NatKatEreignis IS
'aus ER06_SammelergTeil_man_01_WBS. FK_ER06_SammelereignTeil
';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RV_NatKatEreign.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.ID_RegressMerkmale IS
'Lookup auf DMK_Regressmerkmale.ID_Regressmerkmale mit den zum Stichtag g�ltigen Auspr�gungen

�ber  LE03_Regress_SHUKR_01_HBS
C_Regressart
C_Regressgrund
C_Regressstatus';

COMMENT ON COLUMN DET_Regress.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

aus LE03_Regress_SHUKR_01_HBS.Regress_Lfd

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Regresswahrscheinlichkeit IS
'Sch�tzung f�r die Wahrscheinlichkeit eines erfolgreichen Regresses

Bea: Datenqualit�t ist schlecht

aus LE03_Regress_SHUKR_01_HBS.Regresswahrscheinlichkeit

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN DET_Regress.Schliessungsgrund IS
'Schlie�ungsgrund f�r Regress - Freitextfeld

aus LE03_Regress_SHUKR_01_HBS.Schliessungsgrund

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.Schuldquote IS
'Schuldquote f�r den Regress bei prozentualer Verteilung der Verantwortung f�r den Schaden

aus LE03_Regress_SHUKR_01_HBS.Schuldquote

Bea: Datenqualit�t ist schlecht und Verwendung in der Quelle ist unklar

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Regress.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus LE03_Regress_SHUKR_01_HBS.geaendert_von_A (mit ''X'' f�r die letzte Stelle) 

Datenschutz $A1';

COMMENT ON COLUMN DET_RegressPosition.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Regress_Lfd IS
'... ist die laufende Nummer des Regresses.

aus	LE04_Regresspos_SHUKR_01_WBS
  ->	LE04_Regressposition_LE03_BW
  ->	LE03_Regress_BH
  ->	LE03_Regress_SHUKR_01_HBS.Regress_Lfd

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.Regressposition_lfd IS
'... ist die Nummer der Regressposition innerhalb eines Regresses.

aus	LE04_Regresspos_SHUKR_01_WBS.Regressposition_lfd

bei laufender Nummer innerhalb des Regress: Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.SK_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition';

COMMENT ON COLUMN DET_RegressPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_RegressPosition.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus LE04_Regresspos_SHUKR_01_WBS.geaendert_von_A (mit ''X'' f�r die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.AZ_Gericht_A IS
'... ist das Aktenzeichen des Gerichts (nur f�r RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_Gericht_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.AZ_VN_Rechtsanwalt_A IS
'... ist das Aktenzeichen des Rechtsanwalts des VN (nur f�r RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_VN_Rechtsanwalt_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Amtliches_Kennzeichen_A IS
'... ist das amtliche Kennzeichen des Fahrzeugs.

aus ER01_Schaden_SHUKR_02_HBS.Amtliches_Kennzeichen_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.CoC_VerlaengerungsGrund IS
'... ist ein Text, der im Zusammenhang mit der Verl�ngerung der CoC-L�schfrist erstellt wird.

aus ER01_Schaden_SHUKR_02_HBS.CoC_VerlaengerungsGrund

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegen�ber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ER01_Schaden_SHUKR_01_HBS.Deckungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.GesSchaden_geaendert_von_Grp IS
'... ist die Gruppe des Users der letzten �nderung im gesamten Schaden incl. Teilsch�den

aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.HoeheGeldbusse_B IS
'...ist die H�he der Geldbu�e

vermutlich eher Filter als Kennzahl?

aus ER01_Schaden_SHUKR_02_HBS.HoeheGeldbusse_B

Datenschutz $B';

COMMENT ON COLUMN DET_Schaden.ID_SchadenFlags IS
'Lookup auf DMK_Schadenflags.ID_Schadenflags

Bea: DMK_Schadenflags.ID_Schadenflags wird bei der Beladung von DET_Schaden erzeugt und verkn�pft DET_Schaden und DMK_Schadenflags.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.ID_Schadenmerkmale IS
'Lookup auf DMK_Schadenmerkm.ID_Schadenmerkmale 

Bea: DMK_Schadenmerkm.ID_Schadenmerkmale wird bei der Beladung von DET_Schaden erzeugt und verkn�pft DET_Schaden und DMK_Schadenmerkm.

Datenschutz: $-';

COMMENT ON COLUMN DET_Schaden.Kundennr_Arbeitslosenvers_A IS
'... ist die Kundennummer der Arbeitslosenversicherung

aus ER01_Schaden_SHUKR_02_HBS.Kundennr_Arbeitslosenvers_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Progression IS
'Progression in Prozent - Vertrags- bzw. Produkteigenschaft

0
225
300
350
500

aus ER01_Schaden_SHUKR_02_HBS.Progression

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DET_Schaden.SchadenSB_Grp IS
'... ist die Gruppe des Sachbearbeiter, der f�r den Schaden zust�ndig ist

aus ER01_Schaden_SHUKR_01_HBS.SchadenSB_A  (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Schadennummer_A IS
'... ist die identifizierende Nummer des Schadens.

aus ER01_Schaden_SHUKR_01_HBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Tagegeld_Beginn IS
'Tagegeld Leistungsbeginn

aus ER01_Schaden_SHUKR_02_HBS.Tagegeld_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.VNR_Arbeitslosenvers_A IS
'... ist die Versicherungsnummer der Arbeitslosenversicherung

aus ER01_Schaden_SHUKR_02_HBS.VNR_Arbeitslosenvers_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.angelegt_am IS
'Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus  ICLCLAIM.CREATETIME -> ER01_Schaden_SHUKR_01_HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.angelegt_von_Grp IS
'... ist die Gruppe des Users, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.angelegt_von_A (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.geaendert_von_A  (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Schadenort.Adress_Id_A IS
'Bezeichnet in CM eine Adressinformation, die einem SAP-Business Partner zugeordnet ist.

aus aus GE01_Gebiet_Sch_01_HBS.Adress_Id_A

Datenschutz $A1
';

COMMENT ON COLUMN DET_Schadenort.Adresszusatz_A IS
'... ist eine unstrukturierte Erg�nzung zur Adresse.
Beispiele:
-  Etage/Stock/OG/UG/Garten/Vorder-/Hinterhaus/..
-  Angaben bzgl. Ortsteile, Wohnungs-, Zimmer-,Appartement- und sonstige Nummern
-  Hinweise auf (vor�bergehende) Mitbewohner(innen): "c/o", "z.Hd.", "bei",...

aus GE01_Gebiet_Sch_01_HBS.Adresszusatz_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Bezirk IS
'Bezirk (US: County)

aus GE01_Gebiet_Sch_01_HBS.Bezirk

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Etage_A IS
'... definiert das Geschoss, z.B. zur n�heren Beschreibung eines Schadenortes

Werte: UG, EG, 01 (1_), 02 (2_), .... , 99 

aus GE01_Gebiet_Sch_01_HBS.Etage_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Gebaeude_A IS
'Geb�ude (Nummer oder K�rzel)

aus GE01_Gebiet_Sch_01_HBS.Gebaeude_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Hausnummer_A IS
'aus GE01_Gebiet_Sch_01_HBS.Hausnummer_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DET_Schadenort.Ortsname_A IS
'
aus GE01_Gebiet_Sch_01_HBS.Ortsname_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.Ortsteil_A IS
'aus GE01_Gebiet_Sch_01_HBS.Ortsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.Strassenname_A IS
'aus GE01_Gebiet_Sch_01_HBS.Strassenname_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenort.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenort.WohnungNr_A IS
'Nummer einer Wohnung, eines Appartements oder eines Raumes

aus GE01_Gebiet_Sch_01_HBS.WohnungNr_A

Datenschutz $A2';

COMMENT ON COLUMN DET_Schadenrueckst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.ID_Schadenrueckstmerkmale IS
'Lookup auf DMK_SchadRueckstMerk.ID_Schadenrueckstmerkmale

Bea: DMK_SchadRueckstMerk.ID_Schadenrueckstmerkmale wird bei der Beladung von DET_Schadenrueckst erzeugt und verkn�pft DET_Schadenrueckst und DMK_SchadRueckstMerk.

Datenschutz: $-';

COMMENT ON COLUMN DET_Schadenrueckst.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Schadenrueckst.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus LE09_Rueckst_SHUKR_01_HBS.geaendert_von_A (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Haftungsquote IS
'.. ist nur in KH und Allg. H relevant und bezeichnet den Anteil der Haftung der DEVK gegen�ber Dritten (Anspruchssteller).

aus ER02_Teilschaden_SHUKR_01_WBS.Haftungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.ID_TeilschadenFlags IS
'Lookup auf DMK_Teilschadenflags.ID_Teilschadenflags

Bea: DMK_Teilschadenflags.ID_Teilschadenflags wird bei der Beladung von DET_Teilchaden erzeugt und verkn�pft DET_Teilschaden und DMK_Teilschadenflags.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.ID_TeilschadenMerkmale IS
'LOOKUP auf DMK_TeilschadenMerkm mit 

ER02_Teilschaden_SHUKR_02_WBS.C_Steuerung				-->		DMK_TeilschadenMerkm.ID_SchadenSteuerung

ER02_Teilschaden_SHUKR_02_WBS.C_Teilschadenart 	-->		DMK_TeilschadenMerkm.ID_Teilschadenart

ER02_Teilschaden_SHUKR_02_WBS.C_Komplexitaet		-->		DMK_TeilschadenMerkm.ID_SchadenKomplexitaet
';

COMMENT ON COLUMN DET_Teilschaden.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidit�t

aus ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Proz_B

Datenschutz $B';

COMMENT ON COLUMN DET_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN DET_Teilschaden.Schadennummer_A IS
'Schadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Teilschaden_LFD IS
'laufende Teilschadennummer

aus ER02_Teilschaden_SHUKR_01_WBS.Teilschaden_LFD

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.Ueberstimmungsgrund IS
'Uberstimmungsgrund - laut SAP hinterliegt keine Werteliste.

aus ER02_Teilschaden_SHUKR_01_WBS.Ueberstimmungsgrund
z.Zt. leer

Datenschutz $-
';

COMMENT ON COLUMN DET_Teilschaden.angelegt_am IS
'... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde

aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_am 

Datenschutz $-';

COMMENT ON COLUMN DET_Teilschaden.angelegt_von_Grp IS
'... ist die Gruppe des Users, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_von_A (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Teilschaden.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat, kann auch ein technischer User sein

aus ER02_Teilschaden_SHUKR_01_WBS.geaendert_von_A (ohne die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_Verl_Person.Alter_Person IS
'Personenalter

aus PA01_PA02_ER01_SHUKR_02_LBS.Alter_Person

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Arbeitgeber IS
'Arbeitgeber

aus PA01_PA02_ER01_SHUKR_02_LBS.Arbeitgeber

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Beruf IS
'Beruf

aus PA01_PA02_ER01_SHUKR_02_LBS.Beruf

Datenschutz $-
';

COMMENT ON COLUMN DET_Verl_Person.Beschreibung_Verletzung_B IS
'Beschreibung der Verletzung

aus PA01_PA02_ER01_SHUKR_02_LBS.Beschreibung_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DET_Verl_Person.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Invaliditaet_Proz_B IS
'Prozentsatz der Invalidit�t

aus PA01_PA02_ER01_SHUKR_02_LBS.Invaliditaet_Proz_B

Datenschutz $B
';

COMMENT ON COLUMN DET_Verl_Person.SK_Verl_Person IS
'aus PA01_PA02_ER01_SHUKR_02_LBS.FK_PA01_PA02_ER01

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Verl_Person.Taetigkeit_akt IS
'Aktuelle T�tigkeit

aus PA01_PA02_ER01_SHUKR_02_LBS.Taetigkeit_akt

Datenschutz $-
';

COMMENT ON COLUMN DET_Verl_Person.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat, kann auch ein technischer User sein

aus PA01_PA02_ER01_SHUKR_02_LBS.geaendert_von_A (mit * f�r die letzte Stelle des Arbeitsanteils)

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.ACV_Eintrittsdatum IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Eintrittsdatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.ACV_Mitglied_A IS
'Nummer aus der BUT000 (Gesch�ftspartnertabelle)

aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitglied_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.ACV_Mitgliedsnummer_A IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.ACV_Mitgliedsnummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.Enddatum IS
'... der Zeitpunkt, an dem der Versicherungsschutz endet. ???

aus ER01_WE01_VertrSpie_Sch_01_LBM.Enddatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz beginnt.

aus ER01_WE01_VertrSpie_Sch_01_LBM.Materieller_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN DET_Vertrag.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Versicherungsscheinnummer_A IS
'... ist die Versicherungsscheinnummer mit Pr�fziffer

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertrag.VertragsversionsNr IS
'... ist der Z�hler der Vertragsversion in CM

aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_InExkasso

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer
Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer_Deckung IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_Deckung

Datenschutz $-';

COMMENT ON COLUMN DET_Vertrag.Zusatznummer_InExkasso IS
'
aus ER01_WE01_VertrSpie_Sch_01_LBM.Zusatznummer_InExkasso

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Branchenname IS
'Name der Branche 

Aus ER01_WE03_DeckSpie_Sch_01_LBS.Branchenname

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Deckung IS
'... ist der Z�hler f�r die Deckungen des Vertrags aus CM

aus ER01_WE03_DeckSpie_Sch_01_LBS.Deckung

original char(4)

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.DeckungName IS
'Bezeichnung der Deckung

aus ER01_WE03_DeckSpie_Sch_01_LBS.DeckungName

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.DeckungsartName IS
'Bezeichnung der Deckungsart

aus ER01_WE03_DeckSpie_Sch_01_LBS.DeckungsartName

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Enddatum IS
'... der Zeitpunkt, an dem der Versicherungsschutz zur Deckung endet.

aus ER01_WE03_DeckSpie_Sch_01_LBS.Enddatum

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.ID_VertragsdeckMerkmale IS
'Lookup auf DMK_VertragDeckMerkm.ID_VertragsdeckMerkmale 

Bea: DMK_VertragDeckMerkm.ID_VertragsdeckMerkmale  wird bei der Beladung von DET_Vertagsdeckung erzeugt und verkn�pft DET_Vertagsdeckung und DMK_VertragDeckMerkm.

Datenschutz: $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Materieller_Beginn IS
'... das Datum, an dem der Versicherungsschutz zur Deckung beginnt.

aus ER01_WE03_DeckSpie_Sch_01_LBS.Materieller_Beginn

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.SK_Vertragsdeckung IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.FK_ER01_WE03_Deckungsspiegel';

COMMENT ON COLUMN DET_Vertragsdeckung.Schadenfreiheitsklasse IS
'Schadensfreiheitklasse f�r die jeweilige Deckung - Freitext

aus ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsklasse

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Schadenfreiheitsrabatt IS
'Schadenfreiheitsrabatt f�r di jeweilige Deckung

aus ER01_WE03_DeckSpie_Sch_01_LBS.Schadenfreiheitsrabatt

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.Vertragsteilnummer_A IS
'eindeutige Vertragsteilnummer

aus ER01_WE03_DeckSpie_Sch_01_LBS.Vertragsteilnummer_A

Datenschutz $A1
';

COMMENT ON COLUMN DET_Vertragsdeckung.VertragsversionsNr IS
'... ist der Z�hler der Vertragsversion aus CM

aus ER01_WE03_DeckSpie_Sch_01_LBS.VertragsversionsNr

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.geaendert_am IS
'.. ist das Datum und die Uhrzeit der Aktualisierung des Vertragsspiegels

aus ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragsdeckung.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus ER01_WE03_DeckSpie_Sch_01_LBS.geaendert_von_A  (ohne letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Aktenzeichen_ext_A IS
'Aktenzeichen des externen Inkasso oder Regress-B�ros

aus LE01_Zahlung_SHUKR_02_HBS.Aktenzeichen_ext_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.ID_ZahlgFordMerkmale IS
'Lookup auf DMK_ZhlgFordMerkmale. ID_ZahlgFordMerkmale mit 

�ber LE01_Zahlung_SHUKR_02_HBS
C_SatzartDerZahlung
C_Zahlungsart
C_BruttoNetto
C_ZahlungStatus
C_Vollmachtsstufe
';

COMMENT ON COLUMN DET_ZahlungForderung.ID_ZhlgFordFlags IS
'Lookup auf DMK_ZhlgFordFlags';

COMMENT ON COLUMN DET_ZahlungForderung.Migr_Zahlungsempf1_A IS
'...ist f�r aus SDS migrierte Sch�den das erste Freitextfeld mit Informationen zum Zahlungsempf�nger

aus LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf1_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Migr_Zahlungsempf2_A IS
'...ist f�r aus SDS migrierte Sch�den das zweite Freitextfeld mit Informationen zum Zahlungsempf�nger

aus LE01_Zahlung_SHUKR_02_HBS.Migr_Zahlungsempf2_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN DET_ZahlungForderung.Schadennummer_A IS
'Schadennummer

aus LE01_Zahlung_SHUKR_02_HBS.Schadennummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Scheckaussteller_ProvKonto_A IS
'Provisionskonto-Nummer des Scheckausstellers fuer manuelle Scheckzahlungen
In der Quelle 8stellig, Freitext

aus LE01_Zahlung_SHUKR_01_HBS.Scheckaussteller_ProvKonto_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.Schecknummer_A IS
'Schecknummer fuer manuelle Scheckzahlungen

aus LE01_Zahlung_SHUKR_01_HBS.Schecknummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Teilschaden_LFD IS
'laufende Teilschadennummer

aus  LE01_Zahlung_SHUKR_02_HBS.Teilschaden_LFD

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.Zahlungsnotiz_AB IS
'...ist der "Verwendungszweck", der auf dem Kontoauszug des Kunden erscheint. Enth�lt evtl. identifizierende und sonstige sensible Inhalte (Freitext).

aus LE01_Zahlung_SHUKR_01_HBS.Zahlungsnotiz_AB

Datenschutz $A1B';

COMMENT ON COLUMN DET_ZahlungForderung.Zahlungsnummer IS
'laufende Nummer der Zahlung am Teilschaden.

aus LE01_Zahlung_SHUKR_01_HBS.Zahlungsnummer

Datenschutz $-';

COMMENT ON COLUMN DET_ZahlungForderung.angelegt_von_Grp IS
'... ist die Gruppe des Users, der die Zahlung angelegt hat

aus LE01_Zahlung_SHUKR_01_HBS.angelegt_von_A (mit ''X'' f�r die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus LE01_Zahlung_SHUKR_01_HBS.geaendert_von_A (mit ''X'' f�r die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_ZahlungForderung.geprueft_von_Grp IS
'... ist die Gruppe des Users, der die Pr�fung durchgef�hrt hat

aus LE01_Zahlung_SHUKR_01_HBS.geprueft_von_A (mit ''X'' f�r die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.BelegNr_A IS
'Belegnummer gem. FS-CD

aus KT01_Beleg_InEx_01_HBS.BelegNr_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.ID_ZhlgFordDetMerkmale IS
'Lookup auf DMK_ZhlgFordDetMerkm.ID_ZhlgFordDetMerkmale mit

�ber LE02_Zahlung_Det_SHUKR_01_WBS
C_Betragstyp
C_Zahlungsart 
C_BruttoNetto 
C_Zahlungsgrund 
C_Zahlungsgrundgruppe 

oder f�r Zahlungseing�nge aus CD �ber
C_Betragstyp = "nicht geliefert" (-1)
C_Zahlungsart = "R�ckzahlung" (99)
C_BruttoNetto = "netto" (29) 
C_Zahlungsgrund = "nicht geliefert" (2284)
C_Zahlungsgrundgruppe = "nicht geliefert" (2290)

';

COMMENT ON COLUMN DET_ZhlgFordDetail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail

oder aus FSCD aus  KT01_Beleg_InEx_01_HBS.FK_KT01_Beleg';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.Zahlung_Detail_LFD IS
'laufende Nummer der Zahlung_Detail

aus LE02_Zahlung_Det_SHUKR_01_WBS.Zahlung_Detail_LFD f�r Zahlungen / Forderungen aus CM
"000" f�r Zahlungseing�nge aus CD

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.geaendert_von_Grp  IS
'... ist die Gruppe des Users, der die letzte �nderung durchgef�hrt hat

aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_von_A (mit ''X'' f�r die letzte Stelle)

oder f�r Zahlungseing�nge aus CD 
aus KT01_Beleg_InEx_01_HBS.geaendert_von_A (mit ''X'' f�r die letzte Stelle)

Datenschutz $A1';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus IS
'Kurztext f�r den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassob�ro)
3	Sonstige (Inkassob�ro)
4	M+R (Regressb�ro)
5	Sonstige (Regressb�ro)

zu LE01_Zahlung_SHUKR_02_HBS.C_Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus_kurz IS
'Kurzbezeichnung f�r den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassob�ro)
3	Sonstige (Inkassob�ro)
4	M+R (Regressb�ro)
5	Sonstige (Regressb�ro)

zu LE01_Zahlung_SHUKR_02_HBS.C_Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Abgabestatus_lang IS
'Langtext f�r den Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassob�ro)
3	Sonstige (Inkassob�ro)
4	M+R (Regressb�ro)
5	Sonstige (Regressb�ro)

zu LE01_Zahlung_SHUKR_02_HBS.C_Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.ID_Abgabestatus IS
'zu LE01_Zahlung_SHUKR_02_HBS.C_Abgabestatus';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Abgabestatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.ID_AbschlussVerfahren IS
'zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DIM_AbschlussVerf.RS_Prozessausgang_Art IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	au�ergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.RS_Prozessausgang_Art_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	au�ergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.RS_Prozessausgang_Art_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	au�ergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.Akademiker IS
'Kurztext des akademischen Grades

0		n/a						kein akademischer Grad vorhanden
2		Dipl.					Diplom
3		Dipl. Ing.				Diplom Ingenieur/in
4		Dr.						Doktor
5		Dr. med.				Doktor der Medizin
6		Dr. jur.					Doktor der Rechte
7		Dr. med. dent.	Doktor der Zahnheilkunde
8		Dr. Dr.					Doktor Doktor
9		Dr. h.c.				Ehrendoktor
10	Prof.					Professor
11	Prof. Dr.				Professor Doktor
12	Prof. Dr. Dr.		Professor Doktor Doktor
13	Bachelor				Bachelor
...

zu PA01_PartnerNat_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.Akademiker_kurz IS
'Kurzbezeichnung des akademischen Grades

0		n/a						kein akademischer Grad vorhanden
2		Dipl.					Diplom
3		Dipl. Ing.				Diplom Ingenieur/in
4		Dr.						Doktor
5		Dr. med.				Doktor der Medizin
6		Dr. jur.					Doktor der Rechte
7		Dr. med. dent.	Doktor der Zahnheilkunde
8		Dr. Dr.					Doktor Doktor
9		Dr. h.c.				Ehrendoktor
10	Prof.					Professor
11	Prof. Dr.				Professor Doktor
12	Prof. Dr. Dr.		Professor Doktor Doktor
13	Bachelor				Bachelor
...

zu PA01_PartnerNat_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.Akademiker_lang IS
'Langtext des akademischen Grades

0		n/a						kein akademischer Grad vorhanden
2		Dipl.					Diplom
3		Dipl. Ing.				Diplom Ingenieur/in
4		Dr.						Doktor
5		Dr. med.				Doktor der Medizin
6		Dr. jur.					Doktor der Rechte
7		Dr. med. dent.	Doktor der Zahnheilkunde
8		Dr. Dr.					Doktor Doktor
9		Dr. h.c.				Ehrendoktor
10	Prof.					Professor
11	Prof. Dr.				Professor Doktor
12	Prof. Dr. Dr.		Professor Doktor Doktor
13	Bachelor				Bachelor
...

zu PA01_PartnerNat_Par_01_HBS.C_Akademiker

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.ID_Akademiker IS
'zu PA01_PartnerNat_Par_01_HBS.C_Akademiker';

COMMENT ON COLUMN DIM_Akademiker.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Akademiker.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.ArtGerichtlicheMahn IS
'gibt Informationen �ber die Art des Mahnverfahrens zu einer Forderung

20	Abgabe zum GM
21	GM erfolglos abgeschlossen
22	GM erfolgreich abgeschlossen
24	Abgabe aus GM an Krauthoff
23	Abgabe aus GM an Creditreform
30	Abgabe an Inkassobuero Rechtsschutz
31	Abgabe an Regressbuero Rechtsschutz


zu KT06_BELEGPOSITION_INEX_01_WBS.C_ArtGerichtlicheMahn_B

Datenschutz $B';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.ArtGerichtlicheMahn_kurz IS
'gibt Informationen �ber die Art des Mahnverfahrens zu einer Forderung

20	Abgabe zum GM
21	GM erfolglos abgeschlossen
22	GM erfolgreich abgeschlossen
24	Abgabe aus GM an Krauthoff
23	Abgabe aus GM an Creditreform
30	Abgabe an Inkassobuero Rechtsschutz
31	Abgabe an Regressbuero Rechtsschutz


zu KT06_BELEGPOSITION_INEX_01_WBS.C_ArtGerichtlicheMahn_B

Datenschutz $B';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.ArtGerichtlicheMahn_lang IS
'Langtext �ber die Art des Mahnverfahrens zu einer Forderung

20	Abgabe zum GM
21	GM erfolglos abgeschlossen
22	GM erfolgreich abgeschlossen
24	Abgabe aus GM an Krauthoff
23	Abgabe aus GM an Creditreform
30	Abgabe an Inkassobuero Rechtsschutz
31	Abgabe an Regressbuero Rechtsschutz


zu KT06_BELEGPOSITION_INEX_01_WBS.C_ArtGerichtlicheMahn_B

Datenschutz $B';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.ID_ArtGerichtlicheMahn IS
'zu KT06_BELEGPOSITION_INEX_01_WBS.C_ArtGerichtlicheMahn_B';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ArtGerichtlicheMahn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.Art_Schadensteuerung IS
'Kurztext f�r die Art der Schadensteuerung

z.B.
ZRS.001		ZRS Apraxa                                                      											Apraxa                                                      
ZRS.002		ZRS Direktmandat                                               										Direktmandat                                                
ZSCK.002	ZSCK Brillenkonzept                                              									Brillenkonzept                                              
ZSCK.003	ZSCK Handwerker / Partner                                        							Handwerker / Partner                                        
ZSCK.004	ZSCK Handwerker / Partner sowie Reparatur in Eigenleistung       	Handwerker / Partner sowie Reparatur in Eigenleistung       
ZSCK.005	ZSCK Reparatur in Eigenleistung                                  							Reparatur in Eigenleistung                                  
ZU.001		ZU Angebote                                                    											Angebote                                                    
ZU.002		ZU Gek�rzte Abrechnungen                                       								Gek�rzte Abrechnungen                                       
ZU.003		ZU Gutachtenkritik/eigene                                      								Gutachtenkritik/eigene                                      
ZU.004		ZU Gutachtenkritik/IIIA                                        									Gutachtenkritik/IIIA                                        
ZU.005		ZU Gutachtenkritik/Gutachteninstitut                           						Gutachtenkritik/Gutachteninstitut                           
ZH.006		ZH telefonisch verglichen																		telefonisch verglichen
...

aus MD34_Schadensteuerung.Art_Schadensteuerung_kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.Art_Schadensteuerung_kurz IS
'Kurzbezeichnung f�r die Art der Schadensteuerung

z.B.
ZRS.001		ZRS Apraxa                                                      											Apraxa                                                      
ZRS.002		ZRS Direktmandat                                               										Direktmandat                                                
ZSCK.002	ZSCK Brillenkonzept                                              									Brillenkonzept                                              
ZSCK.003	ZSCK Handwerker / Partner                                        							Handwerker / Partner                                        
ZSCK.004	ZSCK Handwerker / Partner sowie Reparatur in Eigenleistung       	Handwerker / Partner sowie Reparatur in Eigenleistung       
ZSCK.005	ZSCK Reparatur in Eigenleistung                                  							Reparatur in Eigenleistung                                  
ZU.001		ZU Angebote                                                    											Angebote                                                    
ZU.002		ZU Gek�rzte Abrechnungen                                       								Gek�rzte Abrechnungen                                       
ZU.003		ZU Gutachtenkritik/eigene                                      								Gutachtenkritik/eigene                                      
ZU.004		ZU Gutachtenkritik/IIIA                                        									Gutachtenkritik/IIIA                                        
ZU.005		ZU Gutachtenkritik/Gutachteninstitut                           						Gutachtenkritik/Gutachteninstitut                           
ZH.006		ZH telefonisch verglichen																		telefonisch verglichen
...

aus MD34_Schadensteuerung.Art_Schadensteuerung_kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.Art_Schadensteuerung_lang IS
'Langtext f�r die Art der Schadensteuerung

z.B.
ZRS.001		ZRS Apraxa                                                      											Apraxa                                                      
ZRS.002		ZRS Direktmandat                                               										Direktmandat                                                
ZSCK.002	ZSCK Brillenkonzept                                              									Brillenkonzept                                              
ZSCK.003	ZSCK Handwerker / Partner                                        							Handwerker / Partner                                        
ZSCK.004	ZSCK Handwerker / Partner sowie Reparatur in Eigenleistung       	Handwerker / Partner sowie Reparatur in Eigenleistung       
ZSCK.005	ZSCK Reparatur in Eigenleistung                                  							Reparatur in Eigenleistung                                  
ZU.001		ZU Angebote                                                    											Angebote                                                    
ZU.002		ZU Gek�rzte Abrechnungen                                       								Gek�rzte Abrechnungen                                       
ZU.003		ZU Gutachtenkritik/eigene                                      								Gutachtenkritik/eigene                                      
ZU.004		ZU Gutachtenkritik/IIIA                                        									Gutachtenkritik/IIIA                                        
ZU.005		ZU Gutachtenkritik/Gutachteninstitut                           						Gutachtenkritik/Gutachteninstitut                           
ZH.006		ZH telefonisch verglichen																		telefonisch verglichen
...

aus MD34_Schadensteuerung.Art_Schadensteuerung_kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.ID_Art_Schadensteuerung IS
'aus MD34_Schadensteuerung.ID_Art_Schadensteuerung';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Art_Schadenst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.ID_AusgangVerfahren IS
'zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schlie�ung

zu ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.Auswertung_individuell IS
'aus MD26_Auswertung_individuell.Auswertung_ind';

COMMENT ON COLUMN DIM_Auswertung_indiv.Auswertung_individuell_kurz IS
'aus MD26_Auswertung_individuell.Auswertung_ind_Kurz';

COMMENT ON COLUMN DIM_Auswertung_indiv.Auswertung_individuell_lang IS
'aus MD26_Auswertung_individuell.Auswertung_ind_Lang';

COMMENT ON COLUMN DIM_Auswertung_indiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.ID_Auswertung_individuell IS
'aus MD26_Auswertung_individuell.ID_Auswertung_ind';

COMMENT ON COLUMN DIM_Auswertung_indiv.ID_Auswertungsbereich IS
'aus MD26_Auswertung_individuell.ID_Auswertungsbereich';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertung_indiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.Auswertungsbereich IS
'aus MD26_Auswertung_individuell.Auswertungsbereich';

COMMENT ON COLUMN DIM_Auswertungsber.Auswertungsbereich_kurz IS
'aus MD26_Auswertung_individuell.Auswertungberich_Kurz';

COMMENT ON COLUMN DIM_Auswertungsber.Auswertungsbereich_lang IS
'aus MD26_Auswertung_individuell.Auswertungsbereich_Lang';

COMMENT ON COLUMN DIM_Auswertungsber.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.ID_Auswertungsbereich IS
'aus MD26_Auswertung_individuell.Auswertungsbereich';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Auswertungsber.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.Bedingungsschluessel IS
'Kurztext f�r den AVB-Schl�ssel

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.Bedingungsschluessel_kurz IS
'Kurzbezeichnung f�r den AVB-Schl�ssel

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.Bedingungsschluessel_lang IS
'Langtext f�r den AVB-Schl�ssel

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.ID_Bedingungsschluessel IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Bedingungsschluessel';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bedingungsschl.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.Berufung_Rev_durch IS
'Kurztext f�r den die Instanz durch Berufung, Revision oder Beschwerde ausl�senden Prozessbeteiligten:

DEVK
Prozessgegner

zu ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.Berufung_Rev_durch_kurz IS
'Kurzbezeichnung f�r den die Instanz durch Berufung, Revision oder Beschwerde ausl�senden Prozessbeteiligten:

DEVK
Prozessgegner

zu ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.Berufung_Rev_durch_lang IS
'Langtext f�r den die Instanz durch Berufung, Revision oder Beschwerde ausl�senden Prozessbeteiligten:

DEVK
Prozessgegner

zu ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.ID_Berufung_Rev_durch IS
'zu ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BerufungRevdurch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.Beschaedigungsgrad IS
'Kurztext f�r Besch�digungsgrad

AU.000	Standardschaden
AU.001	Bagatellschaden
AU.002	Geringe Besch�digung
AU.003	Mittlere Besch�digung
AU.004	Starke Besch�digung
AU.005	Totalschaden
AU.006	Vermutlich Totalschaden
GE.001		Bagatellschaden
GE.002		Geringe Besch�digung
GE.003		Mittlere Besch�digung
GE.004		Starke Besch�digung
GE.005		Totalschaden
GE.006		Teilverlust
GE.007		Totalverlust
PE.001		Teilschaden
PE.002		Totalschaden
PE.003		Verlust
RE.001		Teilschaden
RE.002		Totalschaden

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigGrad.Beschaedigungsgrad_kurz IS
'Kurzbezeichnung f�r Besch�digungsgrad

AU.000	Standardschaden
AU.001	Bagatellschaden
AU.002	Geringe Besch�digung
AU.003	Mittlere Besch�digung
AU.004	Starke Besch�digung
AU.005	Totalschaden
AU.006	Vermutlich Totalschaden
GE.001		Bagatellschaden
GE.002		Geringe Besch�digung
GE.003		Mittlere Besch�digung
GE.004		Starke Besch�digung
GE.005		Totalschaden
GE.006		Teilverlust
GE.007		Totalverlust
PE.001		Teilschaden
PE.002		Totalschaden
PE.003		Verlust
RE.001		Teilschaden
RE.002		Totalschaden

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigGrad.Beschaedigungsgrad_lang IS
'Langtext f�r Besch�digungsgrad

AU.000	Standardschaden
AU.001	Bagatellschaden
AU.002	Geringe Besch�digung
AU.003	Mittlere Besch�digung
AU.004	Starke Besch�digung
AU.005	Totalschaden
AU.006	Vermutlich Totalschaden
GE.001		Bagatellschaden
GE.002		Geringe Besch�digung
GE.003		Mittlere Besch�digung
GE.004		Starke Besch�digung
GE.005		Totalschaden
GE.006		Teilverlust
GE.007		Totalverlust
PE.001		Teilschaden
PE.002		Totalschaden
PE.003		Verlust
RE.001		Teilschaden
RE.002		Totalschaden

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigGrad.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.ID_Beschaedigungsgrad IS
'zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigGrad.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.Beschaedigungstyp IS
'Kurztext f�r Besch�digungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Verm�genssch�den
GE		Besch�digter Gegenstand
PE		Gegenstand
RE		Geb�ude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigTyp.Beschaedigungstyp_kurz IS
'Kurzbezeichnung f�r Besch�digungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Verm�genssch�den
GE		Besch�digter Gegenstand
PE		Gegenstand
RE		Geb�ude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigTyp.Beschaedigungstyp_lang IS
'Langtext f�r Besch�digungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Verm�genssch�den
GE		Besch�digter Gegenstand
PE		Gegenstand
RE		Geb�ude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp

Datenschutz $-
';

COMMENT ON COLUMN DIM_BeschaedigTyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.ID_Beschaedigungstyp IS
'zu ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BeschaedigTyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.BZA IS
'Kurztext f�r de die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.BZA_kurz IS
'Kurzbezeichnung f�r die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.BZA_lang IS
'Langtext f�r de die alte ''Bestandsbeziehungsart'' aus Paris, entspricht der Sparte.

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.ID_Bestandsbeziehungsart IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_BZA';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BestandsbezArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp IS
'Kurztext f�r die Art eines Betrags (z.B. R�ckstellungsbetrag, Zahlbetrag, ...)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Werteliste:
IBNR					IBNR / SSP
RV_PAUSCH		RV-Pauschale
RUECKST			Einzelschaden-Rueckst
Anzahl				Anzahl
WEP					WEP
EINM_BTR			Einmalbeitrag
FOLGE_BTR		Folgebeitrag
ERST_BTR			Erstbeitrag
KEIN_BTR			Kein Beitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp_kurz IS
'Kurzbezeichnung f�r die Art eines Betrags (z.B. R�ckstellungsbetrag, Zahlbetrag, ...)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Werteliste:
IBNR					IBNR / SSP
RV_PAUSCH		RV-Pauschale
RUECKST			Einzelschaden-Rueckst
Anzahl				Anzahl
WEP					WEP
EINM_BTR			Einmalbeitrag
FOLGE_BTR		Folgebeitrag
ERST_BTR			Erstbeitrag
KEIN_BTR			Kein Beitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Betragstyp_lang IS
'Langtext f�r die Art eines Betrags (z.B. R�ckstellungsbetrag, Zahlbetrag, ...)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Werteliste:
IBNR					IBNR / SSP
RV_PAUSCH		RV-Pauschale
RUECKST			Einzelschaden-Rueckst
Anzahl				Anzahl
WEP					WEP
EINM_BTR			Einmalbeitrag
FOLGE_BTR		Folgebeitrag
ERST_BTR			Erstbeitrag
KEIN_BTR			Kein Beitrag

Datenschutz $--';

COMMENT ON COLUMN DIM_Betragstyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.ID_Betragstyp IS
'zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DIM_Betragstyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragstyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP IS
'Kurztext f�r  die Bewertung VtP-Regulierung

Kein Versicherungsschutz/ keine Ersatzpflicht
Neuwert statt Zeitwert
Regulierung �ber dem Limit
Mehrwertsteuer nicht abgezogen
Selbstbehalt nicht ber�cksichtigt
Steuerungstarif nicht beachtet
Fehler bei Marderbisssch�den
Pauschale Regulierung
Sonstiges
Regulierung zu hoch
Schadenhergang nicht plausibel
Keine Vollmacht f�r Sparte

zu ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP_kurz IS
'Kurzbezeichnung f�r  die Bewertung VtP-Regulierung

Kein Versicherungsschutz/ keine Ersatzpflicht
Neuwert statt Zeitwert
Regulierung �ber dem Limit
Mehrwertsteuer nicht abgezogen
Selbstbehalt nicht ber�cksichtigt
Steuerungstarif nicht beachtet
Fehler bei Marderbisssch�den
Pauschale Regulierung
Sonstiges
Regulierung zu hoch
Schadenhergang nicht plausibel
Keine Vollmacht f�r Sparte

zu ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Bewertung_VTP_lang IS
'Langtext f�r  die Bewertung VtP-Regulierung

Kein Versicherungsschutz/ keine Ersatzpflicht
Neuwert statt Zeitwert
Regulierung �ber dem Limit
Mehrwertsteuer nicht abgezogen
Selbstbehalt nicht ber�cksichtigt
Steuerungstarif nicht beachtet
Fehler bei Marderbisssch�den
Pauschale Regulierung
Sonstiges
Regulierung zu hoch
Schadenhergang nicht plausibel
Keine Vollmacht f�r Sparte

zu ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.ID_Bewertung_VTP IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bewertung_VTP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.Bilanz_Meldeperiode IS
'Kurztext f�r die Meldeperiode

Meldejahr
Vorjahr

zu LE09_Rueckst_Bilanz_01_HBM.C_Bilanz_Meldeperiode

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.Bilanz_Meldeperiode_kurz IS
'Kurzbezeichnung f�r die Meldeperiode

Meldejahr
Vorjahr

zu LE09_Rueckst_Bilanz_01_HBM.C_Bilanz_Meldeperiode

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.Bilanz_Meldeperiode_lang IS
'Langtext f�r die Meldeperiode

Meldejahr
Vorjahr

zu LE09_Rueckst_Bilanz_01_HBM.C_Bilanz_Meldeperiode

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.ID_Bilanz_Meldeperiode IS
'zu LE09_Rueckst_Bilanz_01_HBM.C_Bilanz_Meldeperiode';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Bilanz_Meldeper.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto IS
'Kurztext f�r den Steuertyp des Betrages

brutto / netto

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto_kurz IS
'Kurzbezeichnung f�r den Steuertyp des Betrages

brutto / netto

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.BruttoNetto_lang IS
'Langtext f�r den Steuertyp des Betrages

brutto / netto

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.ID_BruttoNetto IS
'zu LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BruttoNetto.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_A IS
'Kurztext des Orts f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_kurz_A IS
'Kurzbezeichnung des Orts f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.CodeOrt_lang_A IS
'Langtext des Orts f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.ID_CodeOrt IS
'zu GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A';

COMMENT ON COLUMN DIM_CodeOrt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_A IS
'Kurztext des Ortsteils f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_kurz_A IS
'Kurzbezeichnung des Ortsteils f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.CodeOrtsteil_lang_A IS
'Langtext des Ortsteils f�r Orts- und Stra�endatei

zu GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_CodeOrtsteil.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.ID_CodeOrtsteil IS
'zu GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_CodeOrtsteil.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Arbeitstag_Nr IS
'... ist die laufende Nummer des Arbeitstages, beginnend mit dem 01.01.1.1900j als Nr. "1" (falls es ein Arbeitstag ist) oder Nr. "0" (falls es kein Arbeitstag ist) (der 1.1 ist Feiertag)

Falls der Tag ein Arbeitstag ist, berechnet sich der Inhalt dieses Feldes als "Arbeitstag_Nr vom Vortag +1".
Falls der Tag kein Arbeitstag ist ist der Inhalt = "Arbeitstag_Nr vom Vortag".

Als Arbeitstage gelten alle Tage au�er Samstage, Sonntage, bundeseinheitliche Feiertage, Heilig Abend und Silvester.

Dieses Feld erlaubt es, die L�nge von Zeitspannen kalenderjahres�bergreifend in Arbeitstagen auszurechnen. Wenn durch eine �nderung im Kalender Feiertage wegfallen oder hinzukommen, mu� dieser Wert f�r die Zeit nach der �nderung neu berechnet werden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Datum IS
'Datum im Datumsformat, z.B. 13.12.2013';

COMMENT ON COLUMN DIM_Datum.Feiertag IS
'Kennzeichnung ob es sich um einen bundeseinheitlichen Feiertag (inkl. Heilig Abend und Silvester) handelt.
ja / nein

aus MD31_Feiertagskalender.ID_Datum';

COMMENT ON COLUMN DIM_Datum.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.ID_Datum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Halbjahresletzter IS
'... ist das Datum des letzten Tages des Halbjahres, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Jahresletzter IS
'... ist das Datum des letzten Tages des Jahres, in dem das Datum liegt: JAHR *10000 + 1231';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Monatsletzter IS
'... ist das Datum des letzten Tages des Monats, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Quartalsletzter IS
'... ist das Datum des letzten Tages des Quartals, in dem das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Datum_Wochenletzter IS
'... ist das Datum des letzten Tages der Woche, in der das Datum liegt. Aufbau JJJJMMTT';

COMMENT ON COLUMN DIM_Datum.ID_Halbjahr IS
'Die ID_Halbjahr wird mit JJJJH besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Monat IS
'Die ID_Monat wird mit JJJJMM besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Quartal IS
'Die ID_Quartal wird mit JJJJQ besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

COMMENT ON COLUMN DIM_Datum.Jahr IS
'Jahr des Datums als vierstellige Zahl';

COMMENT ON COLUMN DIM_Datum.Monatsultimo IS
'...kennzeichnet den letzten Arbeitstag des Monats mit ''ja''

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Quartalsultimo IS
'...kennzeichnet den letzten Arbeitstag des Quartals mit ''ja''

ja/ nein

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Tag IS
'Tag des Datums';

COMMENT ON COLUMN DIM_Datum.Tag_kurz IS
'Kurztext des Tages, z.B. Mi, Do, Fr etc.';

COMMENT ON COLUMN DIM_Datum.Tag_lang IS
'Langtext des Tages, z.B. Dienstag, Mittwoch etc.';

COMMENT ON COLUMN DIM_Datum.Werktag IS
'Kennzeichnung ob es sich um einen Werktag handelt (Montag bis Freitag)
ja / nein';

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart IS
'Kurztext f�r die Art der Deckung (Komfort, Aktiv .....) 

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart_kurz IS
'Kurzbezeichnung f�r die Art der Deckung (Komfort, Aktiv .....) 

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungsart_lang IS
'Langtext f�r die Art der Deckung (Komfort, Aktiv .....) 

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungssumme IS
'Kurztext f�r die Deckungssumme

Summe in Euro
''unbegrenzt''
''nicht relevant''

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungssumme_kurz IS
'Kurzbezeichnung f�r die Deckungssumme

Summe in Euro
''unbegrenzt''
''nicht relevant''

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Deckungssumme_lang IS
'Langtext f�r die Deckungssumme

Summe in Euro
''unbegrenzt''
''nicht relevant''

zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.ID_Deckungsart IS
'zu ER02_Teilschaden_SHUKR_01_WBS.C_Deckungsart';

COMMENT ON COLUMN DIM_Deckungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.DeckungsschluesselK IS
'Kurztext f�r den Deckungsschl�ssel Kasko

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.DeckungsschluesselK_kurz IS
'Kurzbezeichnung f�r den Deckungsschl�ssel Kasko

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.DeckungsschluesselK_lang IS
'Langtext f�r den Deckungsschl�ssel Kasko

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.ID_DeckungsschluesselK IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselK';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlK.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.DeckungsschluesselKH IS
'Kurztext f�r den Deckungsschl�ssel Haftpflicht

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.DeckungsschluesselKH_kurz IS
'Kurzbezeichnung f�r den Deckungsschl�ssel Haftpflicht

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.DeckungsschluesselKH_lang IS
'Langtext f�r den Deckungsschl�ssel Haftpflicht

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.ID_DeckungsschluesselKH IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_DeckungsschluesselKH';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_DeckungsschlKH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus IS
'Kurztext f�r den Deckungsstatus

Laufend
Wartezeit
Schwebend

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus_kurz IS
'Kurzbezeichnung f�r den Deckungsstatus

Laufend
Wartezeit
Schwebend

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Deckungsstatus_lang IS
'Langtext f�r den Deckungsstatus

Laufend
Wartezeit
Schwebend

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.ID_Deckungsstatus IS
'zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Deckungsstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.Dunkelverarbeitung IS
'Kurztext f�r das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollst�ndig automatisiert (�dunkel�) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollst�ndig", "teilweise", "nein"

zu ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.Dunkelverarbeitung_kurz IS
'Kurzbezeichnung f�r das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollst�ndig automatisiert (�dunkel�) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollst�ndig", "teilweise", "nein"

zu ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.Dunkelverarbeitung_lang IS
'Langtext f�r das Kennzeichen, ob ein Schaden bis zum Stichtag teilweise oder vollst�ndig automatisiert (�dunkel�) verarbeitet wurde, also in wesentlichen Teilen ohne Eingriff eines Sachbearbeiters. 

"vollst�ndig", "teilweise", "nein"

zu ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.ID_Dunkelverarbeitung IS
'zu ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Dunkelverarbeitg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart IS
'Kurztext f�r die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

zu ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datentyp: varchar2(10)

in Rechtsschutz sehr �hnlich der "Leistungsart":

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
60-F�hrerschein-RS
66-Allg Verwaltungs-RS
67-Diszipl Standes-RS
68-Allg Straf-RS
69-Allg OWI-RS
71-Opfer-RS
98-St -RS f�r Grund Miete
99-RS f�r Grund Miete

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart_kurz IS
'Kurzbezeichnung f�r die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

zu ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datentyp: varchar2(10)

in Rechtsschutz sehr �hnlich der "Leistungsart":

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
60-F�hrerschein-RS
66-Allg Verwaltungs-RS
67-Diszipl Standes-RS
68-Allg Straf-RS
69-Allg OWI-RS
71-Opfer-RS
98-St -RS f�r Grund Miete
99-RS f�r Grund Miete

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Ereignisart_lang IS
'Langtext f�r die Art des Schadens.

(ist in Kasko gleich der Schadenursache)

zu ER01_Schaden_SHUKR_01_HBS.C_Ereignisart

z.B. 
ZACV = ACV Schutzbrief
ZKGS = TK Glasbruch
ZKWI = TK Wildschaden
ZVSV = DEVK Schutzbrief
...

Datentyp: varchar2(10)

in Rechtsschutz sehr �hnlich der "Leistungsart":

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
60-F�hrerschein-RS
66-Allg Verwaltungs-RS
67-Diszipl Standes-RS
68-Allg Straf-RS
69-Allg OWI-RS
71-Opfer-RS
98-St -RS f�r Grund Miete
99-RS f�r Grund Miete

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Ereignisart';

COMMENT ON COLUMN DIM_Ereignisart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse IS
'Kurztext f�r die Ereignisklasse

aus MD15_Schadenursache.Ereignisklasse';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse_kurz IS
'Kurzbezeichnung f�r die Ereignisklasse

aus MD15_Schadenursache.Ereignisklasse_kurz';

COMMENT ON COLUMN DIM_Ereignisklasse.Ereignisklasse_lang IS
'Langtext f�r die Ereignisklasse

aus MD15_Schadenursache.Ereignisklasse_lang';

COMMENT ON COLUMN DIM_Ereignisklasse.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.ID_Ereignisklasse IS
'aus MD15_Schadenursache.ID_Ereignisklasse';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ereignisklasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.Erledigungszeitpkt IS
'Kurztext f�r den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
w�hrend der Verhandlung

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.Erledigungszeitpkt_kurz IS
'Kurzbezeichnung f�r den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
w�hrend der Verhandlung

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.Erledigungszeitpkt_lang IS
'Langtext f�r den Erledigungszeitpunkt im Verfahren:

Klage abgewiesen
vor der Verhandlung
w�hrend der Verhandlung

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.ID_Erledigungszeitpkt_im_Verf IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledig_im_Verf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart IS
'Kurztext f�r die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
- 50:50
- au�ergerichtlich verglichen (< 50%)
- au�ergerichtlich verglichen (>= 50%)
- gerichtlich verglichen (<50%)
- gerichtlich verglichen (>= 50%)
- in vollem Umfang gewonnen
- im vollen Umfang verloren
- Klager�cknahme

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart

Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart_kurz IS
'Kurzbezeichnung f�r die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
- 50:50
- au�ergerichtlich verglichen (< 50%)
- au�ergerichtlich verglichen (>= 50%)
- gerichtlich verglichen (<50%)
- gerichtlich verglichen (>= 50%)
- in vollem Umfang gewonnen
- im vollen Umfang verloren
- Klager�cknahme

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart

Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Erledigungsart_lang IS
'Langtext f�r die Erledigungsart

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
- 50:50
- au�ergerichtlich verglichen (< 50%)
- au�ergerichtlich verglichen (>= 50%)
- gerichtlich verglichen (<50%)
- gerichtlich verglichen (>= 50%)
- in vollem Umfang gewonnen
- im vollen Umfang verloren
- Klager�cknahme

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart

Datenschutz $-
';

COMMENT ON COLUMN DIM_Erledigungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.ID_Erledigungsart IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Erledigungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe IS
'Kurztext f�r den Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schlie�en

zu ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe_kurz IS
'Kurzbezeichnung f�r den Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schlie�en

zu ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.Eskalationsstufe_lang IS
'Langtext f�r den Schritt im Eskalationsprozess

1	Sachstand anfragen
2	Sachstand anmahnen
3	Abgabe an Regress
4	Schaden schlie�en

zu ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.ID_Eskalationsstufe IS
'zu ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eskalationsstufe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

zu ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_kurz_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

zu ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Fachgebiet_lang_B IS
'Fachgebiet, dient der Zuordnung des (RS-)Schadens zu bearbeitenden Gruppen

00	Verkehr
01	Nicht-Verkehr
02	Gewerkschaften
03	Ausland
04	Sondergruppe
07	DEVK-Verkehr
08	DEVK-Nicht-Verkehr

zu ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.ID_Fachgebiet IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.Fallzahlungspostentyp IS
'Kurztext f�r den Fallzahlungspostentyp

Werte:
leer	normale Fallzahlungsposition
1		Selbstbehalt auf Anspruch (vor Limit)
2		Selbstbehalt auf Entsch�digung (nach Limit)
3		Anforderung des Selbstbehalt
4		R�ckzahlung des Selbstbehaltes
C		Mehrfachversicherung
D		Abschlagszahlung
E		Mehrfachversicherung (manuell ge�ndert)
H		Manueller Selbstbehalt
L		Abzug durch Limit
M		Manuelle Zahlung
S		Skontonachlass
T		Vorsteuer
V		Bezahlt �ber Limit
W		Erlassener Selbstbehalt

zu  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.Fallzahlungspostentyp_kurz IS
'Kurzbezeichnung f�r den Fallzahlungspostentyp

Werte:
leer	normale Fallzahlungsposition
1		Selbstbehalt auf Anspruch (vor Limit)
2		Selbstbehalt auf Entsch�digung (nach Limit)
3		Anforderung des Selbstbehalt
4		R�ckzahlung des Selbstbehaltes
C		Mehrfachversicherung
D		Abschlagszahlung
E		Mehrfachversicherung (manuell ge�ndert)
H		Manueller Selbstbehalt
L		Abzug durch Limit
M		Manuelle Zahlung
S		Skontonachlass
T		Vorsteuer
V		Bezahlt �ber Limit
W		Erlassener Selbstbehalt

zu  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.Fallzahlungspostentyp_lang IS
'Langtext f�r den Fallzahlungspostentyp

Werte:
leer	normale Fallzahlungsposition
1		Selbstbehalt auf Anspruch (vor Limit)
2		Selbstbehalt auf Entsch�digung (nach Limit)
3		Anforderung des Selbstbehalt
4		R�ckzahlung des Selbstbehaltes
C		Mehrfachversicherung
D		Abschlagszahlung
E		Mehrfachversicherung (manuell ge�ndert)
H		Manueller Selbstbehalt
L		Abzug durch Limit
M		Manuelle Zahlung
S		Skontonachlass
T		Vorsteuer
V		Bezahlt �ber Limit
W		Erlassener Selbstbehalt

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.ID_Fallzahlungspostentyp IS
'zu  LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FallzahlPostTyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand IS
'Kurztext des Familienstandes

zu PA01_PartnerNat_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand_kurz IS
'Kurzbezeichnung des Familienstandes

zu PA01_PartnerNat_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Familienstand_lang IS
'Langtext des Familienstandes

zu PA01_PartnerNat_Par_01_HBS.C_Familienstand

unbekannt
ledig
verheiratet / verpartnert
verwitwet / partnerhinterblieben
geschieden / entpartnert
getrennt lebend

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.ID_Familienstand IS
'zu PA01_PartnerNat_Par_01_HBS.C_Familienstand
';

COMMENT ON COLUMN DIM_Familienstand.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Familienstand.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.Gefahr IS
'Kurztext f�r die Gefahr

aus MD15_Schadenursache.Gefahr';

COMMENT ON COLUMN DIM_Gefahr.Gefahr_kurz IS
'Kurzbezeichnung f�r die Gefahr

aus MD15_Schadenursache.Gefahr_kurz';

COMMENT ON COLUMN DIM_Gefahr.Gefahr_lang IS
'Langtext f�r die Gefahr

aus MD15_Schadenursache.Gefahr_lang';

COMMENT ON COLUMN DIM_Gefahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.ID_Ereignisklasse IS
'aus MD15_Schadenursache.ID_Ereignisklasse';

COMMENT ON COLUMN DIM_Gefahr.ID_Gefahr IS
'aus MD15_Schadenursache.ID_Gefahr';

COMMENT ON COLUMN DIM_Gefahr.ID_Partner_Objekttyp IS
'aus MD15_Schadenursache.ID_Partner_Objekttyp';

COMMENT ON COLUMN DIM_Gefahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gefahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

zu ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_kurz IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

zu ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_lang IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

zu ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.ID_Geltungsbereich IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit IS
'Kurztext f�r den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Werte aus Partner:
Bundesarbeitsgericht
Bundesfinanzhof
Bundesgerichtshof
Bundespatentgericht
Bundessozialgericht
Bundesverfassungsgericht
Bundesverwaltungsgericht
...

zu ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit
und zu PA01_PartnerJur_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit_kurz IS
'Kurzbezeichnung f�r den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Werte aus Partner:
Bundesarbeitsgericht
Bundesfinanzhof
Bundesgerichtshof
Bundespatentgericht
Bundessozialgericht
Bundesverfassungsgericht
Bundesverwaltungsgericht
...

zu ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit
und zu PA01_PartnerJur_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gerichtsbarkeit_lang IS
'Langtext f�r den betroffenen Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

Werte aus Partner:
Bundesarbeitsgericht
Bundesfinanzhof
Bundesgerichtshof
Bundespatentgericht
Bundessozialgericht
Bundesverfassungsgericht
Bundesverwaltungsgericht
...

zu ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit
und zu PA01_PartnerJur_Par_01_HBS.C_Gerichtsart

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.ID_Gerichtsbarkeit IS
'zu ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Gerichtsbarkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.GeschaeftsbezFirma IS
'Kurztext der 1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschBezFirma.GeschaeftsbezFirma_kurz IS
'Kurzbezeichnung der 1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschBezFirma.GeschaeftsbezFirma_lang IS
'Langtext der 1. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezFirma

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

COMMENT ON COLUMN DIM_GeschBezFirma.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.ID_GeschaeftsbezFirma IS
'zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezFirma.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.GeschaeftsbezTaetigkeit IS
'Kurztext der 2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschBezTaetigk.GeschaeftsbezTaetigkeit_kurz IS
'Kurzbezeichnung der 2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschBezTaetigk.GeschaeftsbezTaetigkeit_lang IS
'Langtext der 2. Stelle des "Gesch�ftsbeziehungsschl�ssel" oder "GBS"

zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezTaetigkeit

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

COMMENT ON COLUMN DIM_GeschBezTaetigk.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.ID_GeschaeftsbezTaetigkeit IS
'zu PA01_Partner..._Par_01_HBS.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_GeschBezTaetigk.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht IS
'Kurztext des Geschlechts

zu PA01_PartnerNat_Par_01_HBS.C_Geschlecht

m�nnlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht_kurz IS
'Kurzbezeichnung des Geschlechts

zu PA01_PartnerNat_Par_01_HBS.C_Geschlecht

m�nnlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Geschlecht_lang IS
'Langtext des Geschlechts

zu PA01_PartnerNat_Par_01_HBS.C_Geschlecht

m�nnlich
weiblich
unbekannt

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.ID_Geschlecht IS
'zu PA01_PartnerNat_Par_01_HBS.C_Geschlecht';

COMMENT ON COLUMN DIM_Geschlecht.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geschlecht.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde IS
'Kurztext des Grosskunden

zu MD27_Grosskundenvertraege.VN_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_kurz IS
'Kurzbezeichnung des Grosskunden

zu MD27_Grosskundenvertraege.VN_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_lang IS
'Langtext des Grosskunden

zu MD27_Grosskundenvertraege.VN_Lang

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.ID_Grosskunde IS
'aus MD27_Grosskundenvertraege.C_Grosskunde';

COMMENT ON COLUMN DIM_Grosskunde.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung IS
'Kurztext f�r Haftung

Eindeutig
Keine
Strittig

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung_kurz IS
'Kurzbezeichnung f�r Haftung 

Eindeutig
Keine
Strittig

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.Haftung_lang IS
'Langtext f�r Haftung

Eindeutig
Keine
Strittig

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.ID_Haftung IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung';

COMMENT ON COLUMN DIM_Haftung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Haftung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr IS
'Halbjahr im Format JJJJH, z.B. 20132';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_kurz IS
'Halbjahr als Kurztext, z.B. ''H2 2013''';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_lang IS
'Langtext des Halbjahres, z.B. ''2. Halbjahr 2013''';

COMMENT ON COLUMN DIM_Halbjahr.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJHH,  z.B. 201302';

COMMENT ON COLUMN DIM_Halbjahr.ID_Jahr IS
'Die ID_Jahr wird so gesetzt, dass sie identisch zum Jahr zum Datum ist. Aufbau JJJJ';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.ID_Instanzstatus IS
'zu ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus IS
'Kurztext f�r den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

zu ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus_kurz IS
'Kurzbezeichnung f�r den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

zu ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.Instanzstatus_lang IS
'Langtext f�r den Status der Instanz des Gerichtsverfahrens:

offen
akzeptiert
abgelehnt
storniert

zu ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Instanzstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ IS
'Kennzeichen J/N/-';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_BEZ IS
'Bezeichnung';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_LANG IS
'Langbezeichnung';

COMMENT ON COLUMN DIM_JNKENNZ.KENNZ_SORT IS
'Sortierreihenfolge';

COMMENT ON COLUMN DIM_Jahr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.ID_Jahr IS
'Die Jahr_ID ist identisch zum Jahr im Format YYYY, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Jahr IS
'Jahr des Datums als vierstellige Zahl YYYY (=ID_Jahr)';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.ID_KlassifizierungRueckst IS
'Klassifizierungsart f�r einen Betrag

- Rente
- Entsch�digung
- Kosten

zu LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.KlassifizierungRueckst IS
'Kurztext der Klassifizierungsart f�r einen Rueckstellungsbetrag (oder einen Regressbetrag)

zu LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart
und zu  LE03_Regress_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.KlassifizierungRueckst_kurz IS
'Kurzbezeichnung der Klassifizierungsart f�r einen Rueckstellungsbetrag (oder einen Regressbetrag)

zu LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart
und zu  LE03_Regress_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.KlassifizierungRueckst_lang IS
'Langtext der Klassifizierungsart f�r einen Rueckstellungsbetrag (oder einen Regressbetrag)

zu LE09_Rueckst_Bilanz_01_HBM.C_Klassifizierungsart
und zu  LE03_Regress_Bilanz_01_HBM.C_Klassifizierungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizRueckst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.ID_KlassifizierungSchluss IS
'zu ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss';

COMMENT ON COLUMN DIM_KlassifizSchluss.KlassifizierungSchluss IS
'Kurztext f�r die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden �belastende� (Handwerker, Reparatur) oder nur �unbelastende� (Gutachter etc.) Zahlungen enth�lt. Bei den unbelastenden Sch�den werden zus�tzlich zwei Sonderf�lle separiert: Sch�den, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Sch�den, die durch einen Schadenr�ckkauf des Kunden keine belastende Wirkung haben (TB 16). F�r Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).
Werte: "Fehlanlage",  "unbelastend", "belastend", "unbelastend (TA)", "unbelastend (TB16)" 
sowie z.B.
91	Schlie�ung nach Zusage ohne Entsch�digung
92	Schlie�ung nach Zusage und Entsch�digungszahlungen
93	Schlie�ung nach Ablehnung, RS-LA nicht versichert
94	Schlie�ung und Regressforderung
...

zu ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss
und zu ER01_Schaden_SHUKR_02_HBS.C_Schliessart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.KlassifizierungSchluss_kurz IS
'Kurzbezeichnung f�r die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden �belastende� (Handwerker, Reparatur) oder nur �unbelastende� (Gutachter etc.) Zahlungen enth�lt. Bei den unbelastenden Sch�den werden zus�tzlich zwei Sonderf�lle separiert: Sch�den, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Sch�den, die durch einen Schadenr�ckkauf des Kunden keine belastende Wirkung haben (TB 16). F�r Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).
Werte: "Fehlanlage",  "unbelastend", "belastend", "unbelastend (TA)", "unbelastend (TB16)" 
sowie z.B.
91	Schlie�ung nach Zusage ohne Entsch�digung
92	Schlie�ung nach Zusage und Entsch�digungszahlungen
93	Schlie�ung nach Ablehnung, RS-LA nicht versichert
94	Schlie�ung und Regressforderung
...

zu ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss
und zu ER01_Schaden_SHUKR_02_HBS.C_Schliessart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.KlassifizierungSchluss_lang IS
'Langtext f�r die Klassifizierung des Schadens bei Schadenschluss. Es wird unterteilt, ob ein Schaden �belastende� (Handwerker, Reparatur) oder nur �unbelastende� (Gutachter etc.) Zahlungen enth�lt. Bei den unbelastenden Sch�den werden zus�tzlich zwei Sonderf�lle separiert: Sch�den, bei denen gem. Teilungsabkommen (TA) Zahlungen geleistet wurden bzw. Sch�den, die durch einen Schadenr�ckkauf des Kunden keine belastende Wirkung haben (TB 16). F�r Rechtsschutz ist insbesondere unterscheidbar, ob Kulanz vorliegt.

Entspricht der alten KAS (aus SDS).
Werte: "Fehlanlage",  "unbelastend", "belastend", "unbelastend (TA)", "unbelastend (TB16)" 
sowie z.B.
91	Schlie�ung nach Zusage ohne Entsch�digung
92	Schlie�ung nach Zusage und Entsch�digungszahlungen
93	Schlie�ung nach Ablehnung, RS-LA nicht versichert
94	Schlie�ung und Regressforderung
...

zu ER01_Schaden_DWH_01_HBS.C_KlassifizierungSchluss
und zu ER01_Schaden_SHUKR_02_HBS.C_Schliessart

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_KlassifizSchluss.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.ID_Laenderkennzeichen IS
'zu GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen';

COMMENT ON COLUMN DIM_Land_Nation.Laenderkennzeichen IS
'Kurztext f�r das Land, in dem sich das Gebiet befindet.

zu GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.Laenderkennzeichen_kurz IS
'Kurzbezeichnung f�r das Land, in dem sich das Gebiet befindet.

zu GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.Laenderkennzeichen_lang IS
'Langtext f�r das Land, in dem sich das Gebiet befindet.

zu GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Land_Nation.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B 

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_B IS
'Kurztext der Leistungsart

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ IS
'Kurztext f�r die Klassifizierung der Leistungsart nach

Entsch�digung
Rente
Kosten (Schadenregulierungskosten)

zu LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ_kurz IS
'Kurzbezeichnung f�r die Klassifizierung der Leistungsart nach

Entsch�digung
Rente
Kosten (Schadenregulierungskosten)

zu LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_Typ_lang IS
'Langtext f�r die Klassifizierung der Leistungsart nach

Entsch�digung
Rente
Kosten (Schadenregulierungskosten)

zu LE02_Zahlung_Det_DWH_01_WBS.C_Leistungsart_Typ, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_kurz_B IS
'Kurzbezeichnung der Leistungsart

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.Leistungsart_lang_B IS
'Langtext der Leistungsart

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Leistungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.belastend IS
'Kurztext f�r die Klassifizierung der Leistungsart nach

belastend
Kosten
unbelastend
nicht relevant

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.belastend_kurz IS
'Kurzbezeichnung f�r die Klassifizierung der Leistungsart nach

belastend
Kosten
unbelastend
nicht relevant

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Leistungsart.belastend_lang IS
'Langtext f�r die Klassifizierung der Leistungsart nach

belastend
Kosten
unbelastend
nicht relevant

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B, harmonisiert

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.ID_Meldeweg IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg IS
'Kurztext f�r den Kanal, �ber welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

zu ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg_kurz IS
'Kurzbezeichnung f�r den Kanal, �ber welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

zu ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.Meldeweg_lang IS
'Langtext f�r den Kanal, �ber welchen die Schadenmeldung die DEVK erreicht hat.

z.B. telefonisch

zu ER01_Schaden_SHUKR_01_HBS.C_Meldeweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Meldeweg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.ID_Monat IS
'Jahr/Monat im Format JJJJMM';

COMMENT ON COLUMN DIM_Monat.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Monat.Monat IS
'Monat ohne Jahr im numerischen Format MM, z.B. "12"';

COMMENT ON COLUMN DIM_Monat.Monat_kurz IS
'Kurzname des Monats und Jahr, z.B. "Dez 2014"';

COMMENT ON COLUMN DIM_Monat.Monat_lang IS
'Name des Monats und Jahr, z.B. "Dezember 2014"';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ID_ObjektArt IS
'zu OB01_Objekt_Sch_01_HBS.C_ObjektArt';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt IS
'Kurztext f�r die ObjektArt

AU.Z01	PKW
AU.Z02	Kraftrad
AU.Z03	Leichtkraftrad/Moped
AU.Z04	LKW
AU.Z05	Lieferwagen ohne Vermietung
AU.Z06	Campingfahrzeug
AU.Z07	Wohnwagen
AU.Z08	Bus
AU.Z09	Anh�nger
...

zu OB01_Objekt_Sch_01_HBS.C_ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt_kurz IS
'Kurzbezeichnung f�r die ObjektArt

Beispiele:
AU.Z01	PKW
AU.Z02	Kraftrad
AU.Z03	Leichtkraftrad/Moped
AU.Z04	LKW
AU.Z05	Lieferwagen ohne Vermietung
AU.Z06	Campingfahrzeug
AU.Z07	Wohnwagen
AU.Z08	Bus
AU.Z09	Anh�nger
...

zu OB01_Objekt_Sch_01_HBS.C_ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.ObjektArt_lang IS
'Langtext f�r die ObjektArt

AU.Z01	PKW
AU.Z02	Kraftrad
AU.Z03	Leichtkraftrad/Moped
AU.Z04	LKW
AU.Z05	Lieferwagen ohne Vermietung
AU.Z06	Campingfahrzeug
AU.Z07	Wohnwagen
AU.Z08	Bus
AU.Z09	Anh�nger
...

zu OB01_Objekt_Sch_01_HBS.C_ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ObjektArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.ID_Partner_Objekttyp IS
'aus MD15_Schadenursache.ID_Partner_Objekttyp';

COMMENT ON COLUMN DIM_PartnerObjekttyp.ID_Teilsparte IS
'aus MD15_Schadenursache.ID_Teilsparte';

COMMENT ON COLUMN DIM_PartnerObjekttyp.Partner_Objekttyp IS
'Kurztext f�r den Partner-Objekttyp

aus MD15_Schadenursache.Partner_Objekttyp';

COMMENT ON COLUMN DIM_PartnerObjekttyp.Partner_Objekttyp_kurz IS
'Kurzbezeichnung f�r den Partner-Objekttyp

aus MD15_Schadenursache.Partner_Objekttyp_kurz';

COMMENT ON COLUMN DIM_PartnerObjekttyp.Partner_Objekttyp_lang IS
'Langtext f�r den Partner-Objekttyp

aus MD15_Schadenursache.Partner_Objekttyp_lang';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnerObjekttyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.ID_Partnergemeinschaftsart IS
'zu PA01_Partner..._Par_01_HBS.C_Partnergemeinschaftsart';

COMMENT ON COLUMN DIM_PartnergemArt.Partnergemeinschaftsart IS
'Kurztext der Art der Partnergemeinschaft

zu PA01_Partner..._Par_01_HBS.C_Partnergemeinschaftsart

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

COMMENT ON COLUMN DIM_PartnergemArt.Partnergemeinschaftsart_kurz IS
'Kurzbezeichnung der Art der Partnergemeinschaft

zu PA01_Partner..._Par_01_HBS.C_Partnergemeinschaftsart

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

COMMENT ON COLUMN DIM_PartnergemArt.Partnergemeinschaftsart_lang IS
'Langtext der Art der Partnergemeinschaft

zu PA01_Partner..._Par_01_HBS.C_Partnergemeinschaftsart

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

COMMENT ON COLUMN DIM_PartnergemArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_PartnergemArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.ID_Partnertyp IS
'zu PA01_Partner..._Par_01_HBS.C_Partnertyp';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp IS
'Kurztext der Spezialisierung des Partners, also 

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

zu PA01_Partner..._Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp_kurz IS
'Kurzbezeichnung der Spezialisierung des Partners, also 

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

zu PA01_Partner..._Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.Partnertyp_lang IS
'Langtext der Spezialisierung des Partners, also 

2	Nat�rliche Person
5	Juristische Person (=Institution in PARIS)
4	Partnergemeinschaft
3	Organisationseinheit (nur DEVK)

zu PA01_Partner..._Par_01_HBS.C_Partnertyp

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Partnertyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.ID_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DIM_Postleitzahl.Postleitzahl_A IS
'... ist die Postleitzahl zur Beschreibung eines Ortes, also keine Gro�kunden- oder Postfach-PLZ

aus GE01_Gebiet_Sch_01_HBS.Postleitzahl_A
sowie 
aus GE05_Anschrift_Par_01_HBS. Postleitzahl_A

Datenschutz $A2';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Postleitzahl.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.ID_Produkt IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname';

COMMENT ON COLUMN DIM_Produkt.Produktname IS
'Kurztext f�r den Namen des Produkts

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Produktname_kurz IS
'Kurzbezeichnung f�r den Namen des Produkts

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.Produktname_lang IS
'Langtext f�r den Namen des Produkts

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Produktname

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Produkt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJH,  z.B. 20132';

COMMENT ON COLUMN DIM_Quartal.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Quartal.Quartal IS
'Quartal im Format JJJJQ';

COMMENT ON COLUMN DIM_Quartal.Quartal_kurz IS
'Quartal als Kurztext, z.B. ''Q4 2013''';

COMMENT ON COLUMN DIM_Quartal.Quartal_lang IS
'Quartal als Langtext, z.B. ''4. Quartal 2013''';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene1 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit identischer
MD16_Regionaldirektion.RD_Ebene1 ';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene2 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit zugeh�riger
MD16_Regionaldirektion.RD_Ebene2';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1 IS
'Kurztext f�r die RD mit Pr�fix ''RD '' oder Zentrale, beides unter Einbeziehung von (z.B. ehemaligen) dazugeh�rigen RD-Bezeichnungen.

Beispiele: 
KL	RD K�ln 			f�r K�ln
SR	RD Schwerin	f�r Schwerin, Greifswalde, Restock, Cottbus, Frankfurt/Oder
BE	RD Berlin		f�r Berlin, Berlin/Ost
...

aus MD16_Reginaldirektion.Ebene1

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_kurz IS
'Kurzbezeichnung f�r die RD mit Pr�fix ''RD '' oder Zentrale, beides unter Einbeziehung von (z.B. ehemaligen) dazugeh�rigen RD-Bezeichnungen.

Beispiele: 
KL	RD K�ln 			f�r K�ln
SR	RD Schwerin	f�r Schwerin, Greifswalde, Restock, Cottbus, Frankfurt/Oder
BE	RD Berlin		f�r Berlin, Berlin/Ost
...

aus MD16_Reginaldirektion.Ebene1_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_lang IS
'Langtext f�r die RD mit Pr�fix ''RD '' oder Zentrale, beides unter Einbeziehung von (z.B. ehemaligen) dazugeh�rigen RD-Bezeichnungen.

Beispiele: 
KL	RD K�ln 			f�r K�ln
SR	RD Schwerin	f�r Schwerin, Greifswalde, Restock, Cottbus, Frankfurt/Oder
BE	RD Berlin		f�r Berlin, Berlin/Ost
...

aus MD16_Reginaldirektion.Ebene1

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene2 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit identischer
MD16_Regionaldirektion.RD_Ebene2';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene3 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit zugeh�riger
MD16_Regionaldirektion.RD_Ebene3';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2 IS
'Kurztext f�r die Region einer RD oder Zentrale

Kurz-	Langtext
N			Nord  			bestehend gem�� Ebene1 aus: 	Hannover, Hamburg, M�nster
O			Ost  			bestehend gem�� Ebene1 aus:	Berlin, Schwerin, Erfurt, Dresdenr 
W			West  			bestehend gem�� Ebene1 aus: 	K�ln, Essen, Wuppertal
SW		S�dwest		bestehend gem�� Ebene1 aus:	Mainz, Frankfurt, Kassel, Saarbr�cken 
S			S�d  			bestehend gem�� Ebene1 aus:	N�rnberg, Karlsruhe, Stuttgart, M�nchen, Regensburg 
Z			Zentrale		bestehend gem�� Ebene1 aus:	Zentrale

aus MD16_Reginaldirektion.Ebene2

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_kurz IS
'Kurzbezeichnung f�r die Region einer RD oder Zentrale

Kurz-	Langtext
N			Nord  			bestehend gem�� Ebene1 aus: 	Hannover, Hamburg, M�nster
O			Ost  			bestehend gem�� Ebene1 aus:	Berlin, Schwerin, Erfurt, Dresdenr 
W			West  			bestehend gem�� Ebene1 aus: 	K�ln, Essen, Wuppertal
SW		S�dwest		bestehend gem�� Ebene1 aus:	Mainz, Frankfurt, Kassel, Saarbr�cken 
S			S�d  			bestehend gem�� Ebene1 aus:	N�rnberg, Karlsruhe, Stuttgart, M�nchen, Regensburg 
Z			Zentrale		bestehend gem�� Ebene1 aus:	Zentrale

aus MD16_Reginaldirektion.Ebene2

Bea: mit Langtext gef�llt

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_lang IS
'Langtext f�r die Region einer RD oder Zentrale

Kurz-	Langtext
N			Nord  			bestehend gem�� Ebene1 aus: 	Hannover, Hamburg, M�nster
O			Ost  			bestehend gem�� Ebene1 aus:	Berlin, Schwerin, Erfurt, Dresdenr 
W			West  			bestehend gem�� Ebene1 aus: 	K�ln, Essen, Wuppertal
SW		S�dwest		bestehend gem�� Ebene1 aus:	Mainz, Frankfurt, Kassel, Saarbr�cken 
S			S�d  			bestehend gem�� Ebene1 aus:	N�rnberg, Karlsruhe, Stuttgart, M�nchen, Regensburg 
Z			Zentrale		bestehend gem�� Ebene1 aus:	Zentrale

aus MD16_Reginaldirektion.Ebene2

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.ID_RD_Ebene3 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit identischer
MD16_Regionaldirektion.RD_Ebene3';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3 IS
'Kurztext f�r das Land einer RD oder Zentrale

BRD

aus MD16_Reginaldirektion.Ebene3

Bea: mit Kurztext gef�llt

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_kurz IS
'Kurzbezeichnung f�r das Land einer RD oder Zentrale

BRD

aus MD16_Reginaldirektion.Ebene3

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_lang IS
'Langtext f�r das Land einer RD oder Zentrale

BRD

aus MD16_Reginaldirektion.Ebene3

Bea: mit Kurztext gef�llt

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.ID_Rechtsform IS
'zu PA01_PartnerJur_Par_01_HBS.C_Rechtsform';

COMMENT ON COLUMN DIM_Rechtsform.Rechtsform IS
'Kurztext der Rechtsform f�r juristische Personen

AG, GmbH, GbR, ...

zu PA01_PartnerJur_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DIM_Rechtsform.Rechtsform_kurz IS
'Kurzbezeichnung der Rechtsform f�r juristische Personen

AG, GmbH, GbR, ...

zu PA01_PartnerJur_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DIM_Rechtsform.Rechtsform_lang IS
'Langtext der Rechtsform f�r juristische Personen

AG, GmbH, GbR, ...

zu PA01_PartnerJur_Par_01_HBS.C_Rechtsform

Datenschutz $-
';

COMMENT ON COLUMN DIM_Rechtsform.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rechtsform.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.ID_RechtswegEbene IS
'zu ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene IS
'Kurztext f�r die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

zu ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene_kurz IS
'Kurzbezeichnung f�r die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

zu ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.RechtswegEbene_lang IS
'Langtext f�r die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

zu ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RechtswegEbene.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.ID_Region IS
'zu GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region IS
'Kurztext f�r Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

zu GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region_kurz IS
'Kurzbezeichnung f�r Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

zu GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.Region_lang IS
'Langtext f�r Region (Bundesstaat, Bundesland, Provinz, Grafschaft)

zu GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Region.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.ID_RD_Ebene1 IS
'aus der minimalen 
MD16_Regionaldirektion.ID_Regionaldirektion
aus allen Eintr�gen in MD16_Regionaldirektion
mit zugeh�riger
MD16_Regionaldirektion.RD_Ebene1 ';

COMMENT ON COLUMN DIM_Regionaldir.ID_Regionaldirektion IS
'aus MD16_Regionaldirektion.ID_Regionaldirektion';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion IS
'Kurztext f�r die RD oder Zentrale

aus MD16_Regionaldirektion.Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_kurz IS
'Kurzbezeichnung f�r die RD oder Zentrale

aus MD16_Regionaldirektion.Name_Kurz

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_lang IS
'Langtext f�r die RD oder Zentrale

aus MD16_Regionaldirektion.Name_Lang

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.ID_Regressart IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressart';

COMMENT ON COLUMN DIM_Regressart.Regressart IS
'Kurztext der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
�berzahlung zur�ckgefordert
Verkauf Schadengut
SFR-R�ckkaufsangebot

zu LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Regressart_kurz IS
'Kurzbezeichnung der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
�berzahlung zur�ckgefordert
Verkauf Schadengut
SFR-R�ckkaufsangebot

zu LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.Regressart_lang IS
'Langtext der Art des Regresses

Bspl.:

gesicherter Regress
ungesicherter Regress
�berzahlung zur�ckgefordert
Verkauf Schadengut
SFR-R�ckkaufsangebot

zu LE03_Regress_SHUKR_01_HBS.C_Regressart

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.ID_Regressgrund IS
'zu LE03_Regress_SHUKR_01_HBS.C_Regressgrund';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund IS
'Kurztext f�r den Grund des Regresses

zu LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund_kurz IS
'Kurzbezeichnung f�r den Grund des Regresses

zu LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.Regressgrund_lang IS
'Langtext f�r den Grund des Regresses

zu LE03_Regress_SHUKR_01_HBS.C_Regressgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.ID_Regresspotential IS
'zu ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential IS
'Kurztext f�r Regresspotential

NICHT_GEPR		Nicht gepr�ft
					1		Vorhanden
					2		Nicht vorhanden
					3		Regress nicht erlaubt

zu ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential_kurz IS
'Kurzbezeichnung f�r Regresspotential

NICHT_GEPR		Nicht gepr�ft
					1		Vorhanden
					2		Nicht vorhanden
					3		Regress nicht erlaubt

zu ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.Regresspotential_lang IS
'Langtext f�r Regresspotential

NICHT_GEPR		Nicht gepr�ft
					1		Vorhanden
					2		Nicht vorhanden
					3		Regress nicht erlaubt

zu ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regresspotential.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.ID_Regressstatus IS
'zu LE03_Regress_SHUKR_01_HBS.C_Regressstatus';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus IS
'Kurztext f�r den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

zu LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus_kurz IS
'Kurzbezeichnung f�r den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

zu LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.Regressstatus_lang IS
'Langtext f�r den Bearbeitungszustand des Regresses

leer	Regress angelegt
1		Regress eingeleitet
2		Regress eingefordert
3		Regress teileingezahlt
4		Regress volleingezahlt
5		Regress geschlossen

zu LE03_Regress_SHUKR_01_HBS.C_Regressstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regressstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.Aenderungsgrund IS
'Kurztext f�r den Grund der R�ckstellungs�nderung

z.B.: Wiederer�ffnung Teilfall, Schlie�ung Teilfall, Erstreserve

zu LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.Aenderungsgrund_kurz IS
'Kurzbezeichnung f�r den Grund der R�ckstellungs�nderung

z.B.: Wiederer�ffnung Teilfall, Schlie�ung Teilfall, Erstreserve

zu LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.Aenderungsgrund_lang IS
'Langtext f�r den Grund der R�ckstellungs�nderung

z.B.: Wiederer�ffnung Teilfall, Schlie�ung Teilfall, Erstreserve

zu LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.ID_RueckstAenderungsgrund IS
'zu LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstAendGrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.Betragsart IS
'Kurztext f�r Klassifizierung f�r R�ckstellungen:

- individuelle Schadenr�ckstellung
- pauschale R�ckstellung f�r Sp�tsch�den
- R�ckversicherungspauschale (nur bis 2013)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.Betragsart_kurz IS
'Kurzbezeichnung Kurztext f�r Klassifizierung f�r R�ckstellungen:

- individuelle Schadenr�ckstellung
- pauschale R�ckstellung f�r Sp�tsch�den
- R�ckversicherungspauschale (nur bis 2013)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.Betragsart_lang IS
'Langtext f�r Klassifizierung f�r R�ckstellungen:

- individuelle Schadenr�ckstellung
- pauschale R�ckstellung f�r Sp�tsch�den
- R�ckversicherungspauschale (nur bis 2013)

zu LE09_Rueckst_Man_01_HBS.C_Betragsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.ID_RueckstellungsBetragsart IS
'zu LE09_Rueckst_Man_01_HBS.C_Betragsart';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstBetrArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.ID_RueckstSetzungsmethode IS
'zu LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode';

COMMENT ON COLUMN DIM_RueckstSetzMeth.Setzungsmethode IS
'Kurztext daf�r, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

zu LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.Setzungsmethode_kurz IS
'Kurzbezeichnung daf�r, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

zu LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.Setzungsmethode_lang IS
'Langtext daf�r, ob die Reserve manuell oder i.S. einer statistischen Berechnung entstanden ist.

Werte:
manuell
statistisch

zu LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckstSetzMeth.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.ID_Rueckversicherungsart IS
'zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart';

COMMENT ON COLUMN DIM_RueckversichArt.Rueckversicherungsart IS
'Kurztext f�r die Rueckversicherungsart

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.Rueckversicherungsart_kurz IS
'Kurzbezeichnung f�r die Rueckversicherungsart

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.Rueckversicherungsart_lang IS
'Langtext f�r die Rueckversicherungsart

zu ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RueckversichArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.ID_Rueckversicherung IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN DIM_Rueckversicherg.Rueckversicherung IS
'R�ckversicherung

01	kein R�ckversicherungsfall
02	fakultative R�ckversicherung
03	Summenexcedent
04	fakultative R�ckversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

zu ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.Rueckversicherung_kurz IS
'R�ckversicherung

01	kein R�ckversicherungsfall
02	fakultative R�ckversicherung
03	Summenexcedent
04	fakultative R�ckversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

zu ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.Rueckversicherung_lang IS
'R�ckversicherung

01	kein R�ckversicherungsfall
02	fakultative R�ckversicherung
03	Summenexcedent
04	fakultative R�ckversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

zu ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.ID_zust_SBGruppe IS
'zu ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp IS
'Kurztext f�r die zust�ndige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

zu ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_kurz IS
'Kurzbezeichnung f�r die zust�ndige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

zu ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.SBGrp_lang IS
'Langtext f�r die zust�ndige Bearbeitungsgruppe

... gibt an, durch welche Sachbearbeiter-Gruppe innerhalb der Regionaldirektion der Schadenfall zum Stichtag bearbeitet wird.

zu ER01_Schaden_DWH_01_HBS.C_zust_SBGrp

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SBGruppe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.ID_SammelereignisKlasse IS
'zu ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse';

COMMENT ON COLUMN DIM_SammelereignisKl.SammelereignisKlasse IS
'Kurztext der Klassifizierung von Sammelereignissen / Naturkatastrophen

zu ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/�berschwemmung/R�ckstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat f�r Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.SammelereignisKlasse_kurz IS
'Kurzbezeichnung der Klassifizierung von Sammelereignissen / Naturkatastrophen

zu ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/�berschwemmung/R�ckstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat f�r Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.SammelereignisKlasse_lang IS
'Langtext der Klassifizierung von Sammelereignissen / Naturkatastrophen

zu ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

1	Sturm/Hagel
2	Flut/�berschwemmung/R�ckstau
3	Erdbeben/Erdrutsch/Lawinen/Sonstige
4	Nat-Kat f�r Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SammelereignisKl.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.ID_SatzartDerZahlung IS
'zu LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung';

COMMENT ON COLUMN DIM_Satzart_Zahlung.SatzartDerZahlung IS
'Kurztext der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder R�ckzahlung handelt

0	Auszahlung
1	R�ckzahlung
2	Anforderung aus Regress
3	Auszahlung aus Provenue
4	Verrechnung Selbstbehalt
5	Anforderung aus Provenue
6	Abschlagszahlung
7	Statistische Buchung f�r Provenue
8	Def. wiederk. Zahlung
9	Wiederkehrende Zahlung

zu LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.SatzartDerZahlung_kurz IS
'Kurzbezeichnung der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder R�ckzahlung handelt

0	Auszahlung
1	R�ckzahlung
2	Anforderung aus Regress
3	Auszahlung aus Provenue
4	Verrechnung Selbstbehalt
5	Anforderung aus Provenue
6	Abschlagszahlung
7	Statistische Buchung f�r Provenue
8	Def. wiederk. Zahlung
9	Wiederkehrende Zahlung

zu LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.SatzartDerZahlung_lang IS
'Langtext der Satzart der Zahlung; gibt an, ob es sich um eine Zahlung oder R�ckzahlung handelt

0	Auszahlung
1	R�ckzahlung
2	Anforderung aus Regress
3	Auszahlung aus Provenue
4	Verrechnung Selbstbehalt
5	Anforderung aus Provenue
6	Abschlagszahlung
7	Statistische Buchung f�r Provenue
8	Def. wiederk. Zahlung
9	Wiederkehrende Zahlung

zu LE01_Zahlung_SHUKR_01_HBS.C_SatzartDerZahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Satzart_Zahlung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.ID_SchadenKomplexitaet IS
'zu ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
und
zu ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet';

COMMENT ON COLUMN DIM_SchadenKomplexit.Komplexitaet IS
'Kurztext f�r die Komplexit�t des Schadens

Gro�schaden
Sofortschaden
Standardschaden
Zahlschaden
...

zu ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
zu ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.Komplexitaet_kurz IS
'Kurzbezeichnung f�r die Komplexit�t des Schadens

Gro�schaden
Sofortschaden
Standardschaden
Zahlschaden
...

zu ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
zu ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.Komplexitaet_lang IS
'Langtext f�r die Komplexit�t des Schadens

Gro�schaden
Sofortschaden
Standardschaden
Zahlschaden
...

zu ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet
zu ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenKomplexit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.ID_SchadenSteuerung IS
'zu ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung IS
'Kurztext f�r die Art der Schadensteuerung

zu ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung_kurz IS
'Kurzbezeichnung f�r die Art der Schadensteuerung

zu ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.Steuerung_lang IS
'Langtext f�r die Art der Schadensteuerung

zu ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadenSteuerung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.Besonderheiten IS
'Besonderheiten

01	Falschberatung durch Au�endienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	M�glicherweise auff�lliger RA

zu ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.Besonderheiten_kurz IS
'Besonderheiten

01	Falschberatung durch Au�endienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	M�glicherweise auff�lliger RA

zu ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.Besonderheiten_lang IS
'Besonderheiten

01	Falschberatung durch Au�endienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	M�glicherweise auff�lliger RA

zu ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.ID_Schaden_Besonderheit IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonder.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.ID_Schadenfallart IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_B IS
'Kurztext f�r die Interne "Fallart"

zu ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

1DKF		Hilfsmittel (PKV)
1H00		DE: Privathaft. Person
1H01		DE: Privathaft. SachVermMiet
1K01		DE: KH (Personen, Sach, Verm.)
1K02		DE: KH (Sach, Verm�gen)
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

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_kurz_B IS
'Kurzbezeichnung f�r die Interne "Fallart"

zu ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

1DKF		Hilfsmittel (PKV)
1H00		DE: Privathaft. Person
1H01		DE: Privathaft. SachVermMiet
1K01		DE: KH (Personen, Sach, Verm.)
1K02		DE: KH (Sach, Verm�gen)
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

COMMENT ON COLUMN DIM_Schadenfallart.Schadenfallart_lang_B IS
'Langtext f�r die Interne "Fallart"

zu ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B

1DKF		Hilfsmittel (PKV)
1H00		DE: Privathaft. Person
1H01		DE: Privathaft. SachVermMiet
1K01		DE: KH (Personen, Sach, Verm.)
1K02		DE: KH (Sach, Verm�gen)
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

COMMENT ON COLUMN DIM_Schadenfallart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenfallart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.ID_Schadenstatus IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus MD15_Schadenstatus.ID_schadenstatus';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus IS
'Kurztext f�r den Status der Bearbeitung des Schadens

0		Offen
1		Wiederer�ffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus MD17_Schadenstatus.Schadenstatus_Name
aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_Ebene1 IS
'Kurzbezeichnung f�r die Zusammenfassungen von Schadenstatus_Detail

Auspr�gungen

Ge�ffnet:			"Offen" oder "Wiederer�ffnet"
Abgeschlossen:	"Geschlossen" oder "Ereignis ohne Forderung"
Fehler:					"unbekannt"

aus MD17_Schadenstatus.Schadenstatus_Ebene1

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_Ebene2 IS
'Kurztext f�r die Zusammenfassungen von Schadenstatus_Detail

Auspr�gungen

Ge�ffnet:			"Offen" oder "Wiederer�ffnet"
Abgeschlossen:	"Geschlossen" oder "Ereignis ohne Forderung"
Fehler:					"unbekannt"

aus MD17_Schadenstatus.Schadenstatus_Ebene2

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_kurz IS
'Kurzbezeichnung f�r den Status der Bearbeitung des Schadens

0		Offen
1		Wiederer�ffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus MD17_Schadenstatus.Schadenstatus_Name_Kurz
zu ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.Schadenstatus_lang IS
'Langtext f�r den Status der Bearbeitung des Schadens

0		Offen
1		Wiederer�ffnet
2		Geschlossen
3		Ereignis ohne Forderung
		unbekannt

aus MD17_Schadenstatus.Schadenstatus_Name_Lang
aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.ID_Schadenurs_SAP IS
'zu ER01_Schaden_SHUKR_nn_HBS.C_Schadenursache';

COMMENT ON COLUMN DIM_Schadenurs_SAP.Schadenurs_SAP IS
'Kurztext f�r die Ursache des Schadens gem. LOSSCAUSE aus ESA

z.B.
001	Kunde f�hrt auf
002	Jmd. f�hrt Kunde auf
003	Zusammensto� allgemein
004	Zusammensto� auf enger Stra�e
005	Jmd. st��t aus untergeordneter Stra�e auf VN
006	VN st��t aus untergeordneter Stra�e auf jmd.
007	Unfall Einzelfahrzeug - keine Schuld, da z.B. geparkt
008	Unfall Einzelfahrzeug - Schuld, z.B. VN f�hrt gegen Baum
009	Mehrfachunfall
...

zu ER01_Schaden_SHUKR_nn_HBS.C_Schadenursache

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.Schadenurs_SAP_kurz IS
'Kurzbezeichnung f�r die Ursache des Schadens gem. LOSSCAUSE aus ESA

z.B.
001	Kunde f�hrt auf
002	Jmd. f�hrt Kunde auf
003	Zusammensto� allgemein
004	Zusammensto� auf enger Stra�e
005	Jmd. st��t aus untergeordneter Stra�e auf VN
006	VN st��t aus untergeordneter Stra�e auf jmd.
007	Unfall Einzelfahrzeug - keine Schuld, da z.B. geparkt
008	Unfall Einzelfahrzeug - Schuld, z.B. VN f�hrt gegen Baum
009	Mehrfachunfall
...

zu ER01_Schaden_SHUKR_nn_HBS.C_Schadenursache

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.Schadenurs_SAP_lang IS
'Langtext f�r die Ursache des Schadens gem. LOSSCAUSE aus ESA

z.B.
001	Kunde f�hrt auf
002	Jmd. f�hrt Kunde auf
003	Zusammensto� allgemein
004	Zusammensto� auf enger Stra�e
005	Jmd. st��t aus untergeordneter Stra�e auf VN
006	VN st��t aus untergeordneter Stra�e auf jmd.
007	Unfall Einzelfahrzeug - keine Schuld, da z.B. geparkt
008	Unfall Einzelfahrzeug - Schuld, z.B. VN f�hrt gegen Baum
009	Mehrfachunfall
...

zu ER01_Schaden_SHUKR_nn_HBS.C_Schadenursache

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenurs_SAP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.ID_Schadenursache IS
'aus MD15_Schadenursache.ID_Schadenursache';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache IS
'Kurztext f�r die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus MD15_Schadenursache.Schadenursache
zu ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache_kurz IS
'Kurzbezeichnung f�r die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus MD15_Schadenursache.Schadenursache_kurz
zu ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.Schadenursache_lang IS
'Langtext f�r die Ursache des Schadens (als unterstes Element der Schadenursachen-Dimension)

aus MD15_Schadenursache.Schadenursache_lang
zu ER01_Schaden_DWH_01_HBS.C_Dim_Schadengrund

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schadenursache.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.ID_Schadenrueckstellungsart IS
'zu LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart';

COMMENT ON COLUMN DIM_SchadrueckstArt.Rueckstellungsart IS
'Kurztext f�r die Art der R�ckstellung:

- Rente
- Entsch�digung
- Kosten (durch DEVK beauftragte Sachverst�ndige)

(BEA: f�r migrierte Altsch�den: alle R�ckstellungen beim ersten Teilfall, keine R�ckstellungen f�r Kosten (in Entsch�digungen enthalten)

zu LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.Rueckstellungsart_kurz IS
'Kurzbezeichnung f�r die Art der R�ckstellung:

- Rente
- Entsch�digung
- Kosten (durch DEVK beauftragte Sachverst�ndige)

(BEA: f�r migrierte Altsch�den: alle R�ckstellungen beim ersten Teilfall, keine R�ckstellungen f�r Kosten (in Entsch�digungen enthalten)

zu LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.Rueckstellungsart_lang IS
'Langtext f�r die Art der R�ckstellung:

- Rente
- Entsch�digung
- Kosten (durch DEVK beauftragte Sachverst�ndige)

(BEA: f�r migrierte Altsch�den: alle R�ckstellungen beim ersten Teilfall, keine R�ckstellungen f�r Kosten (in Entsch�digungen enthalten)

zu LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_SchadrueckstArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.ID_Schuldigkeit IS
'zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

(Dom�ne: SCHULDEINSCHAETZUNGEN)';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit IS
'Kurztext f�r die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungekl�rt
nicht relevant

zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit_kurz IS
'Kurzbezeichnung f�r die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungekl�rt
nicht relevant

zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.Schuldigkeit_lang IS
'Langtext f�r die Schuldigkeit aus Sicht des VN / des VU

Offen
VN ist schuld
VN ist nicht schuld
Geteilte Schuld
Schuldfrage ungekl�rt
nicht relevant

zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
zu ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schuldigkeit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.Schutzkennzeichen IS
'Kurztext f�r das Schutzkennzeichen zum Partner

0		00 - kein Zugriffsschutz
1		01 - �echte� VIP�s
2		02 - einfacher Schutz
3		03 - erweiterter Schutz
4		04 - amtliche Auskunftssperre
5		05 - Zeugenschutz
6		06 - Mitarbeiter
7		07 - VTM/VTP
8		08 - Datenschutz-Sperrkennzeichen

zu PA01_PartnerNat_Par_01_HBS.C_Schutzkennzeichen_B

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.Schutzkennzeichen_kurz IS
'Kurzbezeichnung f�r das Schutzkennzeichen zum Partner

0		00 - kein Zugriffsschutz
1		01 - �echte� VIP�s
2		02 - einfacher Schutz
3		03 - erweiterter Schutz
4		04 - amtliche Auskunftssperre
5		05 - Zeugenschutz
6		06 - Mitarbeiter
7		07 - VTM/VTP
8		08 - Datenschutz-Sperrkennzeichen

zu PA01_PartnerNat_Par_01_HBS.C_Schutzkennzeichen_B

Datenschutz $-
';

COMMENT ON COLUMN DIM_Schutzkennz.Schutzkennzeichen_lang IS
'Langtextf�r das Schutzkennzeichen zum Partner

0		00 - kein Zugriffsschutz
1		01 - �echte� VIP�s
2		02 - einfacher Schutz
3		03 - erweiterter Schutz
4		04 - amtliche Auskunftssperre
5		05 - Zeugenschutz
6		06 - Mitarbeiter
7		07 - VTM/VTP
8		08 - Datenschutz-Sperrkennzeichen

zu PA01_PartnerNat_Par_01_HBS.C_Schutzkennzeichen_B

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schutzkennz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.ID_Sparte IS
'aus MD15_Schadenursache.ID_Sparte';

COMMENT ON COLUMN DIM_Sparte.ID_Spartenbuendel_Ebene1 IS
'aus MD15_Schadenursache.ID_Spartebuendel_Ebene1';

COMMENT ON COLUMN DIM_Sparte.Sparte IS
'Kurztext der Sparte

aus MD15_Schadenursache.Sparte
zu ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Sparte_kurz IS
'Kurzbezeichnung der Sparte

aus MD15_Schadenursache.Sparte_kurz
zu ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.Sparte_lang IS
'Langtext der Sparte

aus MD15_Schadenursache.Sparte_lang
zu ER01_Schaden_SHUKR_01_HBS.C_Sparte / PR06_Sparte_SHUKR_01_HBS.Sparte_Name

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Sparte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.ID_Spartenbuendel_Ebene1 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene1';

COMMENT ON COLUMN DIM_Spartenbuendel_1.ID_Spartenbuendel_Ebene2 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene2';

COMMENT ON COLUMN DIM_Spartenbuendel_1.Spartenbuendel_Ebene1 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene1

';

COMMENT ON COLUMN DIM_Spartenbuendel_1.Spartenbuendel_Ebene1_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene1_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_1.Spartenbuendel_Ebene1_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene1_lang

';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_1.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.ID_Spartenbuendel_Ebene2 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene2';

COMMENT ON COLUMN DIM_Spartenbuendel_2.ID_Spartenbuendel_Ebene3 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene3';

COMMENT ON COLUMN DIM_Spartenbuendel_2.Spartenbuendel_Ebene2 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene2

';

COMMENT ON COLUMN DIM_Spartenbuendel_2.Spartenbuendel_Ebene2_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene2_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_2.Spartenbuendel_Ebene2_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene2_lang
';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_2.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.ID_Spartenbuendel_Ebene3 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene3';

COMMENT ON COLUMN DIM_Spartenbuendel_3.ID_Spartenbuendel_Ebene4 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene4';

COMMENT ON COLUMN DIM_Spartenbuendel_3.Spartenbuendel_Ebene3 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene3

';

COMMENT ON COLUMN DIM_Spartenbuendel_3.Spartenbuendel_Ebene3_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene3_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_3.Spartenbuendel_Ebene3_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene3_lang';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_3.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.ID_Spartenbuendel_Ebene4 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene4';

COMMENT ON COLUMN DIM_Spartenbuendel_4.ID_Spartenbuendel_Ebene5 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene5';

COMMENT ON COLUMN DIM_Spartenbuendel_4.Spartenbuendel_Ebene4 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene4

';

COMMENT ON COLUMN DIM_Spartenbuendel_4.Spartenbuendel_Ebene4_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene4_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_4.Spartenbuendel_Ebene4_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene4_lang';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_4.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.ID_Spartenbuendel_Ebene5 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene5';

COMMENT ON COLUMN DIM_Spartenbuendel_5.ID_Spartenbuendel_Ebene6 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene6';

COMMENT ON COLUMN DIM_Spartenbuendel_5.Spartenbuendel_Ebene5 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene5';

COMMENT ON COLUMN DIM_Spartenbuendel_5.Spartenbuendel_Ebene5_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene5_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_5.Spartenbuendel_Ebene5_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene5_lang';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_5.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.ID_Spartenbuendel_Ebene6 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene6';

COMMENT ON COLUMN DIM_Spartenbuendel_6.ID_Spartenbuendel_Ebene7 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene7';

COMMENT ON COLUMN DIM_Spartenbuendel_6.Spartenbuendel_Ebene6 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene6';

COMMENT ON COLUMN DIM_Spartenbuendel_6.Spartenbuendel_Ebene6_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene6_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_6.Spartenbuendel_Ebene6_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene6_lang';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_6.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.ID_Spartenbuendel_Ebene7 IS
'aus MD15_Schadenursache.ID_Spartenbuendel_Ebene7';

COMMENT ON COLUMN DIM_Spartenbuendel_7.Spartenbuendel_Ebene7 IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene7';

COMMENT ON COLUMN DIM_Spartenbuendel_7.Spartenbuendel_Ebene7_kurz IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene7_kurz';

COMMENT ON COLUMN DIM_Spartenbuendel_7.Spartenbuendel_Ebene7_lang IS
'aus MD15_Schadenursache.Spartenbuendel_Ebene7_lang';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenbuendel_7.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.ID_Spartenkennziffer IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Sparte ';

COMMENT ON COLUMN DIM_Spartenkennziff.Spartenkennziffer IS
'Kurztext der nicht harmonisierten Spartenkennziffer aus dem Quellsystem.

zu ER01_Schaden_SHUKR_02_HBS.C_Sparte ';

COMMENT ON COLUMN DIM_Spartenkennziff.Spartenkennziffer_kurz IS
'Kurzbezeichnung der nicht harmonisierten Spartenkennziffer aus dem Quellsystem.

zu ER01_Schaden_SHUKR_02_HBS.C_Sparte ';

COMMENT ON COLUMN DIM_Spartenkennziff.Spartenkennziffer_lang IS
'Langtext der nicht harmonisierten Spartenkennziffer aus dem Quellsystem.

zu ER01_Schaden_SHUKR_02_HBS.C_Sparte ';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Spartenkennziff.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.ID_TV_Projekt IS
'Je Kombination aus 
(MD37_TV_Projekt.Projektnummer / MD37_TV_Projekt.RV_Gesellschaft / MD37_TV_Projekt.Zeichnungsjahr)
wird eine ID erzeugt. 

Hinweis: In der Beladung der MD37 ist sichergestellt, dass mindestens eines der drei Attribute gef�llt ist. 
';

COMMENT ON COLUMN DIM_TV_Projekt.ID_Zeichnungsjahr IS
'ID des Zeichnungsjahres

aus MD37_TV_Projekte.Zeichnungsjahr

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.RV_Gesellschaft IS
'Kurzname des R�ckversicherers, bei dem die technische Versicherung r�ckversichert wurde

aus MD37_TV_Projekte.RV_Gesellschaft

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_TV_Projekt.TV_Projektnummer IS
'RV-interne Nummer des TV-Projektes

aus MD37_TV_Projekte.Projektnummer

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.ID_Teilschadenart IS
'zu ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart IS
'Kurztext f�r die Teilschadenart

zu ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart_kurz IS
'Kurzbezeichnung f�r die Teilschadenart

zu ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilschadenart.Teilschadenart_lang IS
'Langtext f�r die Teilschadenart

zu ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.ID_Sparte IS
'aus MD15_Schadenursache.ID_Sparte';

COMMENT ON COLUMN DIM_Teilsparte.ID_Teilsparte IS
'aus MD15_Schadenursache.ID_Teilsparte';

COMMENT ON COLUMN DIM_Teilsparte.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Teilsparte.Teilsparte IS
'Kurztext f�r die Teilsparte

aus MD15_Schadenursache.Teilsparte';

COMMENT ON COLUMN DIM_Teilsparte.Teilsparte_kurz IS
'Kurzbezeichnung f�r die Teilsparte

aus MD15_Schadenursache.Teilsparte_kurz';

COMMENT ON COLUMN DIM_Teilsparte.Teilsparte_lang IS
'Langtext f�r die Teilsparte

aus MD15_Schadenursache.Teilsparte_lang';

COMMENT ON COLUMN DIM_Titel.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.ID_Titel IS
'zu PA01_PartnerNat_Par_01_HBS.C_Titel';

COMMENT ON COLUMN DIM_Titel.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.Titel IS
'Kurztext des Adelstitels

1		kein Adelstitel 		kein Adelstitel 
11	m_Baron					Baron
12	w_Baronin				Baronin
21	m_Edler					Edler
22	w_Edle					Edle
31	m_Freiherr				Freiherr
32	w_Freifrau				Freifrau
41	m_F�rst					F�rst
42	w_F�rstin				F�rstin
51	m_Graf					Graf
52	w_Gr�fin					Gr�fin
61	m_Gro�herzog		Gro�herzog
62	w_Gro�herzogin	Gro�herzogin
71	m_Herzog				Herzog
72	w_Herzogin			Herzogin
81	m_Kaiser					Kaiser
82	w_Kaiserin				Kaiserin
91	m_K�nig					K�nig
92	w_K�nigin				K�nigin
101	m_Prinz					Prinz
102	w_Prinzessin			Prinzessin
111	m_Ritter					Ritter
112	w_Dame					Dame

zu PA01_PartnerNat_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.Titel_kurz IS
'Kurzbezeichnung des Adelstitels

1		kein Adelstitel 		kein Adelstitel 
11	m_Baron					Baron
12	w_Baronin				Baronin
21	m_Edler					Edler
22	w_Edle					Edle
31	m_Freiherr				Freiherr
32	w_Freifrau				Freifrau
41	m_F�rst					F�rst
42	w_F�rstin				F�rstin
51	m_Graf					Graf
52	w_Gr�fin					Gr�fin
61	m_Gro�herzog		Gro�herzog
62	w_Gro�herzogin	Gro�herzogin
71	m_Herzog				Herzog
72	w_Herzogin			Herzogin
81	m_Kaiser					Kaiser
82	w_Kaiserin				Kaiserin
91	m_K�nig					K�nig
92	w_K�nigin				K�nigin
101	m_Prinz					Prinz
102	w_Prinzessin			Prinzessin
111	m_Ritter					Ritter
112	w_Dame					Dame

zu PA01_PartnerNat_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DIM_Titel.Titel_lang IS
'Langtext des Adelstitels

1		kein Adelstitel 		kein Adelstitel 
11	m_Baron					Baron
12	w_Baronin				Baronin
21	m_Edler					Edler
22	w_Edle					Edle
31	m_Freiherr				Freiherr
32	w_Freifrau				Freifrau
41	m_F�rst					F�rst
42	w_F�rstin				F�rstin
51	m_Graf					Graf
52	w_Gr�fin					Gr�fin
61	m_Gro�herzog		Gro�herzog
62	w_Gro�herzogin	Gro�herzogin
71	m_Herzog				Herzog
72	w_Herzogin			Herzogin
81	m_Kaiser					Kaiser
82	w_Kaiserin				Kaiserin
91	m_K�nig					K�nig
92	w_K�nigin				K�nigin
101	m_Prinz					Prinz
102	w_Prinzessin			Prinzessin
111	m_Ritter					Ritter
112	w_Dame					Dame

zu PA01_PartnerNat_Par_01_HBS.C_Titel

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.ID_UKZ IS
'aus MD_18_UKZ.ID_UKZ
zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN DIM_UKZ.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen IS
'Kurztext des Unternehmens, z.B. ''DEVK-L"

aus MD_18_UKZ.UKZ_Name
zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

Datebschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe IS
'Kurztext f�r eine Gruppe von Konzern-Unternehmen - sofern es keine �bergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"

aus MD_18_UKZ.UKZ_Gruppe';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe_kurz IS
'Kurzbezeichnung f�r eine Gruppe von Konzern-Unternehmen - sofern es keine �bergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"

aus MD_18_UKZ.UKZ_Gruppe

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Gruppe_lang IS
'Langtext f�r eine Gruppe von Konzern-Unternehmen - sofern es keine �bergeordnete Gruppe gibt, identisch mit "Unternehmen"
z.B. "Sach+Rechtsschutz"

aus MD_18_UKZ.UKZ_Gruppe';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform IS
'Kurztext f�r die Rechtsform von Konzernunternehmen
z.B. "Verein"

aus MD_18_UKZ.Rechtsform

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform_kurz IS
'Kurzbezeichnung f�r die Rechtsform von Konzernunternehmen
z.B. "Verein"

aus MD_18_UKZ.Rechtsform

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_Rechtsform_lang IS
'Langtext f�r die Rechtsform von Konzernunternehmen
z.B. "Verein"

aus MD_18_UKZ.Rechtsform

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_kurz IS
'Kurzbezeichnung des Unternehmens, z.B. ''E'', ''V'' (UKZ)

aus MD_18_UKZ.UKZ_Name_Kurz
zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

Datenschutz $-';

COMMENT ON COLUMN DIM_UKZ.Unternehmen_lang IS
'Langtext des Unternehmens, z.B. "DEVK Sach- und HUK-Versicherungsverein a.G."

aus MD_18_UKZ.UKZ_Name_Lang
zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.ID_Unfallart IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN DIM_Unfallart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart_kurz IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.Unfallart_lang IS
'
1	Wegeunfall
2	Berufsunfall (im privaten Bereich)
3	Berufsunfall (nicht im priv. Bereich)
4	Haushalt (im privaten Bereich)
5	Haushalt (nicht im privaten Bereich)
6	sonstiges (im privaten Bereich)
7	sonstiges (nicht im privaten Bereich)
9	nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.ID_Verfahrensart IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart IS
'Kurztext f�r die Verfahrensart

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart_kurz IS
'Kurzbezeichnung f�r die Verfahrensart

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensart.Verfahrensart_lang IS
'Langtext f�r die Verfahrensart

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.ID_Verfahrensgegenstand IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.Verfahrensgegenstand IS
'Kurztext f�r den Verfahrensgegenstand

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entsch�digungsh�he
0005		Schmerzensgeldh�he
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist �berschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gr�nde (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.Verfahrensgegenstand_kurz IS
'Kurzbezeichnung f�r den Verfahrensgegenstand

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entsch�digungsh�he
0005		Schmerzensgeldh�he
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist �berschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gr�nde (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensggst.Verfahrensgegenstand_lang IS
'Langtext f�r den Verfahrensgegenstand

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entsch�digungsh�he
0005		Schmerzensgeldh�he
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist �berschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gr�nde (z.B.Anf.wg.Argl.)

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.ID_Verfahrensstatus IS
'zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus IS
'Kurztext f�r den Verfahrensstatus

offen
geschlossen
wiederer�ffnet
storniert

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus_kurz IS
'Kurzbezeichnung f�r den Verfahrensstatus

offen
geschlossen
wiederer�ffnet
storniert

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Verfahrensstatus.Verfahrensstatus_lang IS
'Langtext f�r den Verfahrensstatus

offen
geschlossen
wiederer�ffnet
storniert

zu ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.ID_Verletzung_Koerperteil IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B';

COMMENT ON COLUMN DIM_VerletzgKoerpert.Koerperteil_B IS
'K�rperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Z�hne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbels�ule ohne Querschnittsl�hmung
21	Wirbels�ule mit Querschnittsl�hmung
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
48	beide H�nde/beide Arme
50	eine Gro�zehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fu� mit Fu�gelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis �ber die Mitte des Oberschenkels
58	beide F��e/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedma�en
61	Gliedma�en und Kopf/Hals
62	Gliedma�en und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere K�rperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,t�dl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes K�rperteil noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_VerletzgKoerpert.Koerperteil_kurz_B IS
'K�rperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Z�hne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbels�ule ohne Querschnittsl�hmung
21	Wirbels�ule mit Querschnittsl�hmung
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
48	beide H�nde/beide Arme
50	eine Gro�zehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fu� mit Fu�gelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis �ber die Mitte des Oberschenkels
58	beide F��e/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedma�en
61	Gliedma�en und Kopf/Hals
62	Gliedma�en und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere K�rperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,t�dl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes K�rperteil noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_VerletzgKoerpert.Koerperteil_lang_B IS
'K�rperteil

01	Kopf ohne Sinnesorgane
02	Kopf mit Sinnesorganen
03	ein Auge
04	beide Augen
05	ein Ohr
06	beide Ohren
07	Geruch
08	Geschmack
09	mehrere Sinnesorgane
10	Z�hne/Kiefer (nur wenn keine anderen Verletzungen bestehen)
11	Kopf und Hals

20	Wirbels�ule ohne Querschnittsl�hmung
21	Wirbels�ule mit Querschnittsl�hmung
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
48	beide H�nde/beide Arme
50	eine Gro�zehe
51	eine andere Zehe
52	mehrere Zehen
53	ein Fu� mit Fu�gelenk
54	ein Bein bis zur Mitte des Unterschenkels
55	ein Bein bis unterhalb des Knies
56	ein Bein bis zur Mitte des Oberschenkels
57	ein Bein bis �ber die Mitte des Oberschenkels
58	beide F��e/beide Beine
59	Oberschenkelhals
60	untere und obere Gliedma�en
61	Gliedma�en und Kopf/Hals
62	Gliedma�en und Rumpf
63	Kopf/Hals und Rumpf
64	innere Organe und andere K�rperteile
65	Mensch als Ganzes (z.B.Ertrinken,Ersticken,t�dl.Verbrennung)
66	Sonstige ggf. auch mit obigen

99	Betroffenes K�rperteil noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_VerletzgKoerpert.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.ID_Verletzung IS
'zu ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

COMMENT ON COLUMN DIM_Verletzung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und B�nderri�, Zerrung, Verrenkung, Zerrei�ung
03	Verstauchung,Quetschung,Ersch�tterung,Sch�rf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedma�en / Sinnesorganen
07	Teil-/Verlust v. Gliedma�en/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-ersch�tterung)
13	Infektionen (auch Wundinfektionen) au�er Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_Kurz_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und B�nderri�, Zerrung, Verrenkung, Zerrei�ung
03	Verstauchung,Quetschung,Ersch�tterung,Sch�rf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedma�en / Sinnesorganen
07	Teil-/Verlust v. Gliedma�en/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-ersch�tterung)
13	Infektionen (auch Wundinfektionen) au�er Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_lang_B IS
'Verletzung

01	Knochenbruch
02	Muskel- und B�nderri�, Zerrung, Verrenkung, Zerrei�ung
03	Verstauchung,Quetschung,Ersch�tterung,Sch�rf-/Platzwunden
04	Stich- und Schnittverletzung
05	mehrere Verletzungen der Arten 1 - 3
06	Teil-/Verlust v. Gliedma�en / Sinnesorganen
07	Teil-/Verlust v. Gliedma�en/Sinnesorg. u. Verl. d. Arten 1-3
08	Unterleibsbruch
09	Verbrennungen
10	Ersticken
11	Ertrinken
12	Erkr. Nervensystem (nicht Gehirnquetschung/-ersch�tterung)
13	Infektionen (auch Wundinfektionen) au�er Aids
14	Vergiftungen
15	Aids
16	Zeckenstich (z. B. Borreliose, FSME)
90	sonstige
99	Art der Verletzung noch nicht bekannt

zu ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Versicherungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.ID_Versicherungsart IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart IS
'Kurztext f�r die Versicherungsart

zu ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Kraftfahrtversicherung                            
Kraftfahrzeug-Haftpflichtversicherung allgemein   
Kraftfahrzeug-Haftpflichtversicherung Moped       
Fahrzeugvollversicherung                          
Fahrzeugteilversicherung Allgemein                
Fahrzeugteilversicherung Moped                    
Rechtschutzversicherung nach ARB                  
Feuerversicherung                                 
...    

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart_kurz IS
'Kurzbezeichnung f�r die Versicherungsart

zu ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Kraftfahrtversicherung                            
Kraftfahrzeug-Haftpflichtversicherung allgemein   
Kraftfahrzeug-Haftpflichtversicherung Moped       
Fahrzeugvollversicherung                          
Fahrzeugteilversicherung Allgemein                
Fahrzeugteilversicherung Moped                    
Rechtschutzversicherung nach ARB                  
Feuerversicherung                                 
...                   

Datenschutz $-';

COMMENT ON COLUMN DIM_Versicherungsart.Versicherungsart_lang IS
'Langtext f�r die Versicherungsart

zu ER01_Schaden_SHUKR_01_HBS.C_Versicherungsart

Kraftfahrtversicherung                            
Kraftfahrzeug-Haftpflichtversicherung allgemein   
Kraftfahrzeug-Haftpflichtversicherung Moped       
Fahrzeugvollversicherung                          
Fahrzeugteilversicherung Allgemein                
Fahrzeugteilversicherung Moped                    
Rechtschutzversicherung nach ARB                  
Feuerversicherung                                 
...    

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.ID_Vertragsart IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart';

COMMENT ON COLUMN DIM_Vertragsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart IS
'Kurztext f�r die Vertragsart

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

001	Pkw
002	Moped
003	Dummyvertrag (vorl�ufig)
004	Hausakte
005	Gro�vertrag Kraft
006	ACV
007	Dummyvertrag (endg�ltig)
008	Pkw (Historienstand gel�scht)
009	Moped (Historienstand gel�scht)
010	Hausrat
011	verbundene Geb�ude
012	geb�ndelte Geb�ude
013	Glas (vorl�ufig)
014	Glas privat
015	Glas gewerblich (TK Glas)
016	CUV
017	Haft
018	Reise
019	EC
020	TK (Inhalt gewerblich, nicht f�r Glas)
021	All Risk / Transnet / Vielschutz
022	TV (Technische Versicherung)
023	Dummy Sparte (Geb�ude und Hausrat)
024	Historienstand gel�scht
025	Vertragsakte
026	�berlauf
027	Gro�vertrag (Sach und Haft)
028	Geb�ude alt
029	TK Reise
030	Bauleistung Haft
130	Pkw (in Host-Struktur CSL50002 )
131	Moped (in Host-Struktur CSL50002 )

Datenschutz $-
';

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart_kurz IS
'Kurzbezeichnung f�r die Vertragsart

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

001	Pkw
002	Moped
003	Dummyvertrag (vorl�ufig)
004	Hausakte
005	Gro�vertrag Kraft
006	ACV
007	Dummyvertrag (endg�ltig)
008	Pkw (Historienstand gel�scht)
009	Moped (Historienstand gel�scht)
010	Hausrat
011	verbundene Geb�ude
012	geb�ndelte Geb�ude
013	Glas (vorl�ufig)
014	Glas privat
015	Glas gewerblich (TK Glas)
016	CUV
017	Haft
018	Reise
019	EC
020	TK (Inhalt gewerblich, nicht f�r Glas)
021	All Risk / Transnet / Vielschutz
022	TV (Technische Versicherung)
023	Dummy Sparte (Geb�ude und Hausrat)
024	Historienstand gel�scht
025	Vertragsakte
026	�berlauf
027	Gro�vertrag (Sach und Haft)
028	Geb�ude alt
029	TK Reise
030	Bauleistung Haft
130	Pkw (in Host-Struktur CSL50002 )
131	Moped (in Host-Struktur CSL50002 )

Datenschutz $-
';

COMMENT ON COLUMN DIM_Vertragsart.Vertragsart_lang IS
'Langtext f�r die Vertragsart

zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart

001	Pkw
002	Moped
003	Dummyvertrag (vorl�ufig)
004	Hausakte
005	Gro�vertrag Kraft
006	ACV
007	Dummyvertrag (endg�ltig)
008	Pkw (Historienstand gel�scht)
009	Moped (Historienstand gel�scht)
010	Hausrat
011	verbundene Geb�ude
012	geb�ndelte Geb�ude
013	Glas (vorl�ufig)
014	Glas privat
015	Glas gewerblich (TK Glas)
016	CUV
017	Haft
018	Reise
019	EC
020	TK (Inhalt gewerblich, nicht f�r Glas)
021	All Risk / Transnet / Vielschutz
022	TV (Technische Versicherung)
023	Dummy Sparte (Geb�ude und Hausrat)
024	Historienstand gel�scht
025	Vertragsakte
026	�berlauf
027	Gro�vertrag (Sach und Haft)
028	Geb�ude alt
029	TK Reise
030	Bauleistung Haft
130	Pkw (in Host-Struktur CSL50002 )
131	Moped (in Host-Struktur CSL50002 )

Datenschutz $-
';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.ID_Vollmachtsstufe IS
'zu LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe IS
'Kurztext f�r die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A - Einstiegsvollmacht
B - Regelvollmacht
C - Spezialvollmacht
...

zu LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe_kurz IS
'Kurzbezeichnung f�r die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A - Einstiegsvollmacht
B - Regelvollmacht
C - Spezialvollmacht
...

zu LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Vollmachtsstufe.Vollmachtsstufe_lang IS
'Langtext f�r die Vollmachtsstufe des Sachbearbeiters, der die Zahlung angelegt hat, zum Zeitpunkt der Anlage.

A - Einstiegsvollmacht
B - Regelvollmacht
C - Spezialvollmacht
...

zu LE01_Zahlung_SHUKR_01_HBS.C_Vollmachtsstufe

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.ID_Waehrung IS
'zu ...C_Waehrung';

COMMENT ON COLUMN DIM_Waehrung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung IS
'Kurztext f�r die W�hrung

zu ...C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung_kurz IS
'Kurzbezeichnung f�r die W�hrung

zu ...C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN DIM_Waehrung.Waehrung_lang IS
'Langtext f�r die W�hrung

zu ...C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.ID_Wagnisart IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart
zu ER01_Schaden_SHUKR_01_HBS.C_Wagnis
';

COMMENT ON COLUMN DIM_Wagnisart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart IS
'Kurztext
- f�r die Wagnisart aus dem Vertragsspiegel von CM
zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- f�r die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

G�ltige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

zu ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart_kurz IS
'Kurzbezeichnung
- f�r die Wagnisart aus dem Vertragsspiegel von CM
zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- f�r die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

G�ltige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

zu ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Wagnisart.Wagnisart_lang IS
'Langtext
- f�r die Wagnisart aus dem Vertragsspiegel von CM
zu ER01_WE01_VertrSpie_Sch_01_LBM.C_Wagnisart

oder

- f�r die Wagnisart (bzw. die Wagnisnummer bei Haftpflicht und Rechtsschutz) des Vertrags, die in diesem Schaden betroffen ist. Damit wird indirekt eine Beziehung zu einem Risiko (oder Vertragselement) des Vertrags hergestellt.

G�ltige Werte sind z.B:
0000
0200
9998
s. WAGNISNUMMER.xls

zu ER01_Schaden_SHUKR_01_HBS.C_Wagnis

Datenschutz $-
';

COMMENT ON COLUMN DIM_Werbeunterdrueck.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.ID_Werbeunterdrueckung IS
'zu PA01_Partner..._Par_01_HBS.C_Werbeunterdrueckung';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Werbeunterdrueck.Werbeunterdrueckung IS
'Kurztext der Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

zu PA01_Partner..._Par_01_HBS.C_Werbeunterdrueckung

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

COMMENT ON COLUMN DIM_Werbeunterdrueck.Werbeunterdrueckung_kurz IS
'Kurzbezeichnung der Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

zu PA01_Partner..._Par_01_HBS.C_Werbeunterdrueckung

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

COMMENT ON COLUMN DIM_Werbeunterdrueck.Werbeunterdrueckung_lang IS
'Langtext der Kan�le, �ber die der Kunde nicht zu Marketingzwecken angesprochen werden m�chte. Siehe PARIS-Schl�sseltabelle Werbeunterdrueckung_SL:

zu PA01_Partner..._Par_01_HBS.C_Werbeunterdrueckung

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

COMMENT ON COLUMN DIM_Woche.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Woche IS
'Wochennummer ohne Jahreszahl, z.B. 50';

COMMENT ON COLUMN DIM_Woche.Woche_kurz IS
'Kurztext der Woche mit Jahreszahl, z.b. KW 50 2018
';

COMMENT ON COLUMN DIM_Woche.Woche_lang IS
'Langtext der Woche mit Jahreszahl, z. B. Kalenderwoche 50 2018';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.ID_ZahlungspflichtigerArt IS
'zu LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.ZahlungspflichtigerArt IS
'Kurztext f�r die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

zu LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.ZahlungspflichtigerArt_kurz IS
'Kurzbezeichnung f�r die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

zu LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlgspflichtArt.ZahlungspflichtigerArt_lang IS
'Langtext f�r die Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

zu LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ID_ZahlungStatus IS
'zu LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus IS
'Kurztext f�r den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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
A	Gel�scht
B	Zu stornieren
C	Teilweise erhalten
D	Selbstbehalt verrechnet
E	Abzulehnen
F	Zu L�schen
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

zu LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus_kurz IS
'Kurzbezeichnung f�r den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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
A	Gel�scht
B	Zu stornieren
C	Teilweise erhalten
D	Selbstbehalt verrechnet
E	Abzulehnen
F	Zu L�schen
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

zu LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungStatus.ZahlungStatus_lang IS
'Langtext f�r den Lebenszyklus der Zahlung, interner Zahlungsstatus:

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
A	Gel�scht
B	Zu stornieren
C	Teilweise erhalten
D	Selbstbehalt verrechnet
E	Abzulehnen
F	Zu L�schen
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

zu LE01_Zahlung_SHUKR_01_HBS.C_ZahlungStatus

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.ID_Zahlungsart IS
'zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart IS
'Kurztext f�r die Art der Zahlung

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFall�bergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	R�ckzahlung
9	Storno

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart_kurz IS
'Kurzbezeichnung f�r die Art der Zahlung

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFall�bergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	R�ckzahlung
9	Storno

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsart.Zahlungsart_lang IS
'Langtext f�r die Art der Zahlung

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart

0	Teilzahlung
1	Schlusszahlung
2	Nachzahlung
3	TFall�bergreifend
4	Umbuchung
5	Schlusszahl. Provenue
6	Fallkopfzahlung
7	Abschlagszahlung
8	R�ckzahlung
9	Storno

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.ID_Zahlungsgrund IS
'zu  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund IS
'Kurztext f�r den Zahlungsgrund

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

Gruppe Grund	Text

D0			0005
D0			01		Waived deductible
D0			02		Balance after deductible
D0			03		Regular collision
D0			13		Hit and Run
K1			01		Besch�digung Karosserie
K1			02		Besch�digung Motorblock
K1			03		Besch�digung Glas
ZK			VS		Vorschuss

falls Liste abschlie�end: Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund_kurz IS
'Kurzbezeichnung f�r den Zahlungsgrund

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

Gruppe Grund	Text

D0			0005
D0			01		Waived deductible
D0			02		Balance after deductible
D0			03		Regular collision
D0			13		Hit and Run
K1			01		Besch�digung Karosserie
K1			02		Besch�digung Motorblock
K1			03		Besch�digung Glas
ZK			VS		Vorschuss

falls Liste abschlie�end: Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlungsgrund.Zahlungsgrund_lang IS
'Langtext f�r den Zahlungsgrund

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund

Gruppe Grund	Text

D0			0005
D0			01		Waived deductible
D0			02		Balance after deductible
D0			03		Regular collision
D0			13		Hit and Run
K1			01		Besch�digung Karosserie
K1			02		Besch�digung Motorblock
K1			03		Besch�digung Glas
ZK			VS		Vorschuss

falls Liste abschlie�end: Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.ID_ZahlungsgrundGruppe IS
'zu LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.ZahlungsgrundGruppe IS
'Kurztext f�r die Zahlungsgrund-Gruppe

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.ZahlungsgrundGruppe_kurz IS
'Kurzbezeichnung f�r die Zahlungsgrund-Gruppe

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_ZahlungsgrundGrp.ZahlungsgrundGruppe_lang IS
'Langtext f�r die Zahlungsgrund-Gruppe

zu LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe

D0		DD Collision
K1		Kraftfahrt Kasko
ZK		DEVK Schaden   

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.ID_Zahlweg IS
'zu LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg';

COMMENT ON COLUMN DIM_Zahlweg.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg IS
'Kurztext f�r den Zahlweg

M	Auszahlung an Embargo Schaden
P	SCHADEN SEPA-�berweisung
Q	SCHADEN Umbuchung
R	SCHADEN Verbindlichk. Hausakte
S	SCHADEN Barauszahlung
T	SCHADEN Verrechnung sst. B
U	SCHADEN Verrechnung Beitrag
V	SCHADEN Scheck
W	SCHADEN Ausl.�berw. - Sp. Empf
X	SCHADEN Ausl.�berw. - Sp. Auft
Y	SCHADEN Ausl.�berw. - Sp. get.
Z	SCHADEN �berweisung

zu LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg_kurz IS
'Kurzbezeichnung f�r den Zahlweg

M	Auszahlung an Embargo Schaden
P	SCHADEN SEPA-�berweisung
Q	SCHADEN Umbuchung
R	SCHADEN Verbindlichk. Hausakte
S	SCHADEN Barauszahlung
T	SCHADEN Verrechnung sst. B
U	SCHADEN Verrechnung Beitrag
V	SCHADEN Scheck
W	SCHADEN Ausl.�berw. - Sp. Empf
X	SCHADEN Ausl.�berw. - Sp. Auft
Y	SCHADEN Ausl.�berw. - Sp. get.
Z	SCHADEN �berweisung

zu LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlweg.Zahlweg_lang IS
'Langtext f�r den Zahlweg

M	Auszahlung an Embargo Schaden
P	SCHADEN SEPA-�berweisung
Q	SCHADEN Umbuchung
R	SCHADEN Verbindlichk. Hausakte
S	SCHADEN Barauszahlung
T	SCHADEN Verrechnung sst. B
U	SCHADEN Verrechnung Beitrag
V	SCHADEN Scheck
W	SCHADEN Ausl.�berw. - Sp. Empf
X	SCHADEN Ausl.�berw. - Sp. Auft
Y	SCHADEN Ausl.�berw. - Sp. get.
Z	SCHADEN �berweisung

zu LE01_Zahlung_SHUKR_01_HBS.C_Zahlweg

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.ID_Zeitzone IS
'zu ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone';

COMMENT ON COLUMN DIM_Zeitzone.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone IS
'Kurztext f�r die Zeitzone eines Datums

zu ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone_kurz IS
'Kurzbezeichnung f�r die Zeitzone eines Datums

zu ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DIM_Zeitzone.Zeitzone_lang IS
'Langtext f�r die Zeitzone eines Datums

zu ER01_Schaden_SHUKR_01_HBS.C_EintrittsdatumZeitzone

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Indikatoren_vorh IS
'Besch�digungsindikatoren vorhanden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaed_Indikatoren_vorh

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Dach_Boden IS
'Beschreibung der Besch�digung Kfz - Dach / Boden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - DB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich IS
'Beschreibung der Besch�digung Kfz - Frontbereich

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich_L IS
'Beschreibung der Besch�digung Kfz - Frontbereich Links

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FBL

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Frontbereich_R IS
'Beschreibung der Besch�digung Kfz - Frontbereich rechts

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - FBR

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich IS
'Beschreibung der Besch�digung Kfz - Heckbereich

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HB

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich_L IS
'Beschreibung der Besch�digung Kfz - Heckbereich links

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HBL

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Heckbereich_R IS
'Beschreibung der Besch�digung Kfz - Heckbereich rechts

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - HBR

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Rundum IS
'Beschreibung der Besch�digung Kfz - Rundum

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung =	Kfz - RU

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Seite_Mitte_L IS
'Beschreibung der Besch�digung Kfz - Links Seite Mitte

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - LSM

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaed_Kfz_Seite_Mitte_R IS
'Beschreibung der Besch�digung Kfz - Rechte Seite Mitte

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBM.C_Beschaedigung = Kfz - RSM

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Beschaedtyp_Daten_vorh IS
'Besch�digungstyp-spezifische Daten vorhanden

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedtyp_Daten_vorh

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.Haftpflicht_Kennz IS
'Haftpflicht?

ja / nein/ unzutreffend

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Haftpflicht_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.ID_BeschObjektFlags IS
'wird bei der Bef�llung erzeugt ';

COMMENT ON COLUMN DMK_BeschObjektFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkm.ID_BeschObjektMerkmale IS
'wird bei der Bef�llung erzeugt';

COMMENT ON COLUMN DMK_BeschObjektMerkm.ID_Beschaedigungsgrad IS
'Besch�digungsgrad

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungsgrad

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkm.ID_Beschaedigungstyp IS
'Besch�digungstyp

AU		Fahrzeug
BI			Verletzte Person (tritt in dieser Tabelle nicht auf)
FL		Verm�genssch�den
GE		Besch�digter Gegenstand
PE		Gegenstand
RE		Geb�ude
WA		Wasserfahrzeug
Z2		Gegenstand Sach

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Beschaedigungstyp

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkm.ID_ObjektArt IS
'Art des besch�digten oder versicherten Objektes

aus OB01_Objekt_Sch_01_HBS.C_ObjektArt

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BeschObjektMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkm.ID_BilRueckstMerkmale IS
'wird bei der Bef�llung erzeugt';

COMMENT ON COLUMN DMK_BilRueckstMerkm.ID_Bilanz_Meldeperiode IS
' aus C_Bilanz_Meldeperiode

in 	LE09_Rueckst_Bilanz_01_HBM  
und LE03_REGRESS_BILANZ_01_HBM 

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkm.ID_KlassifizierungRueckst IS
'Klassifizierungsart f�r einen Betrag

aus C_Klassifizierungsart

in 	LE09_Rueckst_Bilanz_01_HBM  
und LE03_REGRESS_BILANZ_01_HBM 

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkm.ID_Schadenrueckstellungsart IS
'aus LE09_Rueckst_Bilanz_01_HBM.C_Rueckstellungsart

und := ''Regress'' (2265) f�r S�tze aus LE03_REGRESS_BILANZ_01_HBM 

Datenschutz $-
';

COMMENT ON COLUMN DMK_BilRueckstMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_BilRueckstMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Berufung_Rev_durch IS
'... ist der die Instanz durch Berufung, Revision oder Beschwerde ausl�sende Prozessbeteiligte.

DEVK
Prozessgegner

aus ER04_GerInstanz_SHUKR_01_WBS.C_Berufung_Rev_durch

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Erledigungsart IS
'... ist das Ergebnis der Instanz.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
< 50% gewonnen
>= 50% gewonnen
50:50
au�ergerichtlich verglichen (< 50%)
au�ergerichtlich verglichen (>= 50%)
gerichlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klager�cknahme

aus ER04_GerInstanz_SHUKR_01_WBS.C_Instanzergebnis

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_GerichtsInstMerkmale IS
'wird bei der Bef�llung erzeugt';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Gerichtsbarkeit IS
'... ist der betroffene Zweig in der Gerichtsorganisation..

Schaden Werte::
Zivilgerichtsbarkeit

weitere Gereichtsbbarkeiten in Deutschland (von Schaden nicht verwendet):
Strafgerichtsbarkeit
Verwaltungsgerichtsbarkeit
Sozialgerichtsbarkeit
Finanzgerichtsbarkeit
Arbeitsgerichtsbarkeit

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsbarkeit

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Gerichtstand_Land IS
'... ist das Land des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
AD	Andorra
AF	Afghanistan
AL	Albanien
AM	Armenien
AT	�stereich
AU	Australien
DE	Deutschland
...

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtstand_Land

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Instanzstatus IS
'... gibt den Status der Instanz des Gerichtsverfahrens an.

offen
akzeptiert
abgelehnt
storniert

aus ER04_GerInstanz_SHUKR_01_WBS.C_Instanzstatus

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_RechtswegEbene IS
'... ist die Ebene des Rechtswegs.

Schaden Werte::
Amtsgericht
Landgericht
Oberlandesgericht
Bundesgericht

aus ER04_GerInstanz_SHUKR_01_WBS.C_Verfahrensinstanz

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.ID_Region IS
'... ist die Region des Gerichtsstands der Instanz des Gerichtsverfahrens.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
Antwerpen
Buenos Aires
Schleswig-Holstein
...

aus ER04_GerInstanz_SHUKR_01_WBS.C_Gerichtsstand_Region

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriInstMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Erledigungsart IS
'... ist die Art, in der das Verfahren erledigt wurde.

Schaden Beispiele (aus Kraftfahrt Haftpflicht):
50:50
au�ergerichtlich verglichen (< 50%)
au�ergerichtlich verglichen (>= 50%)
gerichtlich verglichen (<50%)
gerichtlich verglichen (>= 50%)
in vollem Umfang gewonnen
im vollen Umfang verloren
Klager�cknahme

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungsart

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Erledigungszeitpkt_im_Verf IS
'... ist der Zeitpunkt im Verfahren relativ zum Verfahrensablauf, an dem das Verfahren erledigt wurde.

Klage abgewiesen
vor der Verhandlung
w�hrend der Verhandlung

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Erledigungszeitpunkt_im_Verf

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_GerichtsverfMerkmal IS
'wird bei der Bef�llung erzeugt';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Haftung IS
'... ist die Einsch�tzung der Haftung der DEVK.

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Haftung

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Verfahrensart IS
'... ist die Art de Verfahrens.

002		Schadenersatzprozess - passiv
003		Regressprozess - passiv
004		Regressprozess - aktiv
005		Deckungsprozess - passiv
006		SFR-Prozess - passiv
007		Kasko
008		Deckungsklage

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensart

Datenschutz $-
';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Verfahrensgegenstand IS
'... ist der Gegenstand, um den es im Verfahren geht.

0002		Haftungsquote / Haftungsnorm
0003		Haftungsablehnung
0004		Materielle Entsch�digungsh�he
0005		Schmerzensgeldh�he
0006		Bagatellverletzung
0007		Versicherungsschutzversagung
0008		Regresssache
0009		Betrugssache
0010		Sonstiges
0011		Erfolgsaussichten
0012		Datierung d. Vers.falls
0013		2-/3-Jahresfrist �berschritten
0014		Obliegenheitsverletzung
0015		Nicht versichertes Risiko
0016		Risikoausschluss
0017		Obsiegen / Unterliegen
0018		And. Gr�nde (z.B.Anf.wg.Argl.)

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensgegenstand_B

wegen bestimmter Auspr�gungen : Datenschutz $B';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Verfahrensstatus IS
'... gibt den Status des Verfahrens an.

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Verfahrensstatus

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.ID_Waehrung IS
'... ist die W�hrung f�r den Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_eig_SHUKR_01_HBS.C_Waehrung_aussergeri

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_GeriVerfMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Akademiker IS
'aus PA01_PartnerNat_Par_01_HBS.C_Akademiker';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Familienstand IS
'aus PA01_PartnerNat_Par_01_HBS.C_Familienstand';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Geburtsjahr IS
'... ist das Jahr aus dem Geburtsdatum bzw. der 1.1. des Geburtsjahres. Dieses Datum steht f�r Auswertungen zur Verf�gung, deren Zweck keinen Personenbezug zul�sst.

aus PA01_PartnerNat_Par_01_HBS.Geburtsjahr

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Geschlecht IS
'aus PA01_PartnerNat_Par_01_HBS.C_Geschlecht';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Nationalitaet IS
'aus PA01_PartnerNat_Par_01_HBS.C_Nationalitaet';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Partnergemeinschaftsart IS
'aus PA01_PartnerGem_Par_01_HBS.C_Partnergemeinschaftsart';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Partnermerkmal IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Partnertyp IS
'aus PA01_Partner..._Par_01_HBS.C_Partnertyp';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Rechtsform IS
'aus PA01_PartnerJur_Par_01_HBS.C_Rechtsform';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Schutzkennzeichen IS
'aus PA01_Partner..._Par_01_HBS.C_SchutzKennzeichen_B';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Titel IS
'aus PA01_PartnerNat_Par_01_HBS.C_Titel';

COMMENT ON COLUMN DMK_Partnermerkmale.ID_Werbeunterdrueckung IS
'aus PA01_Partner..._Par_01_HBS.C_Werbeunterdrueckung';

COMMENT ON COLUMN DMK_Partnermerkmale.SchutzKennzeichen_B IS
'Kennzeichen f�r die Identifizierung besonders gesch�tzter Partner (Mitarbeiter, VIPs, Zeugenschutz,...)

ja (entspricht: 1 gesch�tzt, 2 einfacher Schutz, 3 erweiterter Schutz, 4 besonderer Schutz, ...)
nein (entspricht  0 ungesch�tzt)

aus PA01_Partner..._Par_01_HBS.C_SchutzKennzeichen_B

Datenschutz $B';

COMMENT ON COLUMN DMK_Partnermerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Partnermerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressart IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressart';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressgrund IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressgrund';

COMMENT ON COLUMN DMK_RegressMerkmale.ID_Regressstatus IS
'aus LE03_Regress_SHUKR_01_HBS.C_Regressstatus';

COMMENT ON COLUMN DMK_RegressMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_RegressMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.ID_RueckstellungsBetragsart IS
'aus LE09_Rueckst_Man_01_HBS.C_Betragsart
';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.ID_SSP_RVPMerkmale IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.ID_Schadenrueckstellungsart IS
'aus LE09_Rueckst_Man_01_HBS.C_Rueckstellungsart';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SSP_RVPMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadRueckstMerk.ID_RueckstAenderungsgrund IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Aenderungsgrund';

COMMENT ON COLUMN DMK_SchadRueckstMerk.ID_RueckstSetzungsmethode IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Setzungsmethode';

COMMENT ON COLUMN DMK_SchadRueckstMerk.ID_RueckstellungsBetragsart IS
'konstant = ''Einzelschaden R�ckstellung''';

COMMENT ON COLUMN DMK_SchadRueckstMerk.ID_Schadenrueckstellungsart IS
'aus LE09_Rueckst_SHUKR_01_HBS.C_Rueckstellungsart
';

COMMENT ON COLUMN DMK_SchadRueckstMerk.ID_Schadenrueckstmerkmale IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_SchadRueckstMerk.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadRueckstMerk.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadUrsacheGef.ID_Gefahr IS
'aus MD15_Schadenursache.ID_Gefahr';

COMMENT ON COLUMN DMK_SchadUrsacheGef.ID_Schadenursache IS
'aus MD15_Schadenursache.ID_Schadenursache';

COMMENT ON COLUMN DMK_SchadUrsacheGef.Spartenliste_ID IS
'aus MD15_Schadenursache.ID_Spartenliste

Bea: Index aus den Masterdaten, entspricht der Zeile in der "Spartenliste" (Excel)';

COMMENT ON COLUMN DMK_SchadUrsacheGef.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadUrsacheGef.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.AD_Regulierung IS
'... gibt an, ob der Schaden seitens des Au�endienstes reguliert wurde,

ja/nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_AD_Regulierung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Abgabe_RD IS
'Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber f�r die folgende Bearbeitung an eine andere RD (Regionaldirektion) weitergeleitet. Sch�den k�nnen an die RD zur�ckgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_RD

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Abgabe_Z IS
'Kennzeichen Abgabe an Z

Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber f�r die folgende Bearbeitung an die Z (Zentrale) weitergeleitet. Sch�den k�nnen an die RD zur�ckgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag

ja/ nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_Z

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.AktiveMeldung IS
'Aktive Meldung an Uniwagnis

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_AktiveMeldung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Auffaelligkeit IS
'Auff�lligkeiten

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Auffaelligkeit

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als h�tte sich der Schaden in Deutschland ereignet.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_Auslandsschadenschutz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.CoC_zur_Loeschung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den n�chsten CoC-Lauf im operativen System gel�scht werden wird.

ja/ neinja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Loeschung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.CoC_zur_Sperrung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den n�chsten CoC-Lauf im operativen System gesperrt werden wird.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Sperrung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Dreiv_Spaet_Schaden IS
'...gibt an, ob ein Schaden in den ersten drei Quartalen eingetreten ist und erst zu einem sp�teren Zeitpunkt beim Versicherungsunternehmen gemeldet wurde (ohne besondere Ber�cksichtigung des Kalenderjahreswechsels).

ja/ nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Dreiv_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Ersatzpflicht

Datenschutz $-
';

COMMENT ON COLUMN DMK_SchadenFlags.Fehlanlage IS
'Fehlanlage

Ja / nein

aus ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Freizeit_Unfallschutz IS
'Anwendung erw. Freizeitunfallschutz

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Freizeit_Unfallschutz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Gesch�ftsjahres) ereignet hat und gemeldet wurde.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_GJ_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_wiedereroeffnet IS
'Kennzeichen Schaden im GJ wiederer�ffnet

Kennzeichen, ob ein Schaden am Ende des vorherigen Gesch�ftsjahres (VJ) den Status �abgeschlossen� hatte und irgendwann im GJ bis zum Betrachtungszeitpunkt den Status �ge�ffnet� hatte bzw. aktuell hat oder im GJ eine Zahlung erfolgt ist.
Jede �ffnung eines Schadens wird hierbei betrachtet, unabh�ngig davon, ob sie monet�re Auswirkungen hatte bzw. haben k�nnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GJ_wiedereroeffnet_monetaer IS
'Kennzeichen Schaden im GJ wiederer�ffnet monet�r

Kennzeichen, ob ein Schaden am Ende des vorherigen Gesch�ftsjahres (VJ) den Status �abgeschlossen� hatte und im GJ des Betrachtungszeitpunktes entweder zum Stichtag den Status �ge�ffnet� hat und eine R�ckstellung gesetzt wurde oder aber im Laufe des GJ eine Zahlung erfolgt ist.
Der Fokus hier liegt darin, ob eine Wiederer�ffnung des Schadens monet�re Auswirkungen hatte bzw. haben k�nnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet_monetaer

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GeschlossenMitEntsch IS
'Merker, ob Schlie�en mit Entsch�digung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.GeschlossenOhneEntsch IS
'Merker, ob Schlie�en ohne Entsch�digung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Halbj_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Halbjahr eingetreten ist und erst in einem sp�teren Halbjahr beim Versicherungsunternehmen gemeldet wurde (ohne besondere Ber�cksichtigung des Kalenderjahreswwechsels).

ja/ nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Halbj_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Halter IS
'Ist der VN gleichzeitig der Halter?

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Halter

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Hausakte IS
'... ist das Kennzeichen, ob es sich um einen "Hausakte"-Schaden handelt oder nicht.

ja/nein

aus ER01_Schaden_DWH_01_HBS.POLPROD.C_Hausakte

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Hellschaltung IS
'Ist der Schaden aufgrund der Eskalationsstufe hellgeschaltet worden (nur Rechtsschutz)?

ja / nein/ unzutreffend

aus ER01_Schaden_Eskalat_R_01_HBS.C_Hellschaltung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.ID_SchadenFlags IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_SchadenFlags.KeineBelastung IS
'Keine Belastung trotz Entsch�digungszahlungen (Teilungsabkommen)

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineStufung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Erdb_Erdru_Lawine_Sonst IS
'Ist dem Schaden die SammelereignisKlasse  3	(Erdbeben/Erdrutsch/Lawinen/Sonstige) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 3	Erdbeben/Erdrutsch/Lawinen/Sonstige

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Flut_Ueberschw_Rueckst IS
'Ist dem Schaden die SammelereignisKlasse  2	(Flut/�berschwemmung/R�ckstau) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 2	Flut/�berschwemmung/R�ckstau

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_NatKat_fuer_Austauschqu IS
'Ist dem Schaden die SammelereignisKlasse  4	(Nat-Kat f�r Austauschquoten) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 4	Nat-Kat f�r Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Klasse_Sturm_Hagel IS
'Ist dem Schaden die SammelereignisKlasse  1	(Sturm/Hagel) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 1	Sturm/Hagel

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Migriert IS
'migrierter Schaden

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Ordnungswidrigkeit_Kennz IS
'Ordnungswidrigkeitsverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Ordnungswidrigkeit_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.ProzessKennzeichen IS
'... gibt an, ob es im Zuge der Schadenregulierung eine gerichtliche Auseinandersetzung gegeben hat / gibt.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_ProzessKennzeichen

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Quartal_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Quartal eingetreten ist und erst in einem Folgequartal beim Versicherungsunternehmen gemeldet wurde (ohne besondere Ber�cksichtigung des Kalenderjahreswwechsels).

ja/ nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Quartal_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.SFR_Belastung IS
'SFR-Belastung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SFR_Belastung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Schaden_rueckgekauft IS
'Kennzeichen im Kfz-Bereich, dass der Versicherungsnehmer die Zahlungen f�r den Schaden selbst getragen oder zur�ckgezahlt hat, um eine R�ckstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Schaden_rueckgekauft

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Sozialrechtsschutz_Kennz IS
'Sozialrechtsschutz (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Sozialrechtsschutz_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Kalenderjahr eingetreten ist, das vor dem Kalenderjahr der Meldung beim Versicherungsunternehmen liegt.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.Strafverfahren_Kennz IS
'Strafverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Strafverfahren_Kennz

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.VTP_Info IS
'VTP-Info Unfallregulierung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_VTP_Info

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.VersicherungsschVersagt IS
'Merker, ob Versicherungsschutz versagt

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.aufwandsneutral IS
'... gibt an, ob der Schaden den Schadenstatus �Abgeschlossen'' hat und der Schadenaufwand ohne innere Kosten <=0 ist. 
Ge�ffnete Sch�den erhalten die Auspr�gung NULL, da das Kennzeichen bei ge�ffneten Sch�den nicht abgeleitet werden kann.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.aufwandsneutral_ohne_SRK IS
'Kennzeichen aufwandsneutral ohne �u�ere Schadenregulierung

Bei einem Schaden wird dieses Kennzeichen gesetzt, wenn er den Schadenstatus �Abgeschlossen'' hat und die saldierten Schadenzahlungen f�r Entsch�digungen und Renten <=0 sind. Aufwendungen f�r �u�ere Schadenregulierung k�nnen dagegen aufgetreten sein, der Schaden muss also nicht insgesamt aufwandsneutral sein.  Ge�ffnete Sch�den erhalten die Auspr�gung NULL, da das Kennzeichen bei ge�ffneten Sch�den nicht abgeleitet werden kann.
Hinweis: Dies entspricht inhaltlich der bisherigen o.E.-Logik in der SDS-Statistik

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral_ohne_SRK

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.ohneEntschaedigung IS
'... gibt an, ob der Schaden den Schadenstatus �Abgeschlossen'' hat und  keinerlei reine Entsch�digungs- oder reine Rentenzahlungen geflossen sind.
Ge�ffnete Sch�den erhalten die Auspr�gung NULL, da das Kennzeichen bei ge�ffneten Sch�den nicht abgeleitet werden kann.
Das Kennzeichen �o.E.� wurde fr�her auch als �o.Z.� bezeichnet (ohne Zahlung). 

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_OE

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenFlags.sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ER01_Schaden_SHUKR_01_HBS.C_sensiblerSchaden

Datenschutz  $-';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_CodeOrt IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrt_A';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_CodeOrtsteil IS
'aus GE01_Gebiet_Sch_01_HBS.C_CodeOrtsteil_A';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_Laenderkennzeichen IS
'aus GE01_Gebiet_Sch_01_HBS.C_Laenderkennzeichen';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_Region IS
'aus GE01_Gebiet_Sch_01_HBS.C_Region

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_SchadenOrtMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_AbschlussVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_AusgangVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_DWH_01_HBS.C_Dunkelverarbeitung';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Ereignisart';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Eskalationsstufe IS
'aus ER01_Schaden_Eskalat_R_01_HBS.C_Eskalationsstufe
';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Fachgebiet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B
';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Geltungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_DWH_01_HBS.Klassifizierung_Schluss';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Meldeweg IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_SchadenKomplexitaet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_SchadenSteuerung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Steuerung';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Schaden_Besonderheit IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Schadenmerkmale IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Schadenurs_SAP IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Schadenursache

';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_SchuldigkeitSichtVN IS
'aus ER01_Schaden_SHUKR_02_HBS.C_SchuldigkeitSichtVN
';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_SchuldigkeitSichtVU IS
'aus ER01_Schaden_SHUKR_02_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Unfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Verletzung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Verletzung_Koerperteil IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Wagnisart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Wagnis';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_Zeitzone IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_EintrittsdatumZeitzone
';

COMMENT ON COLUMN DMK_Schadenmerkm.ID_zust_SBGruppe IS
'aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DMK_Schadenmerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Abgelehnt

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_Betrugsverdacht_C

wg. Nicht-�nderbarkeit in der Historie: Datenschutz $C';

COMMENT ON COLUMN DMK_TeilschadenFlags.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Ersatzpflicht

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Fahrgast_OePNV IS
'Kennzeichnet, ob Anspruchsteller Fahrgast �PNV ist. (????)

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Fahrgast_OePNV

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Fehlanlage IS
'Fehlanlage

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.ID_TeilschadenFlags IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_TeilschadenFlags.Mehrleistung IS
'Mehrleistung ab 90%

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Mehrleistung

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Mitarbeiter IS
'Kennzeichnet, ob Anspruchsteller DEVK/DB Mitarbeiter ist.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Mitarbeiter

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS,C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.Sondervereinb_Mehrl IS
'Sondervereinbarung Mehrleistung

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_02_WBS.C_Sondervereinb_Mehrl

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenFlags.TeilfallUngueltig IS
'Teilfall ist ung�ltig

Ja / Nein

aus ER02_Teilschaden_SHUKR_01_WBS.C_TeilfallUngueltig

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkm.ID_Regresspotential IS
'Regresspotenzial eines Teilfalles (Regresspr�fstatus)

leer	Nicht gepr�ft
1		Vorhanden
2		Nicht vorhanden
3		Regress nicht erlaubt

aus ER02_Teilschaden_SHUKR_02_WBS.C_Regresspotential

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkm.ID_SchadenKomplexitaet IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_TeilschadenMerkm.ID_SchadenSteuerung IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Steuerung';

COMMENT ON COLUMN DMK_TeilschadenMerkm.ID_TeilschadenMerkmale IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_TeilschadenMerkm.ID_Teilschadenart IS
'aus ER02_Teilschaden_SHUKR_01_WBS.C_Teilschadenart';

COMMENT ON COLUMN DMK_TeilschadenMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_TeilschadenMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragDeckMerkm.ID_Deckungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsart';

COMMENT ON COLUMN DMK_VertragDeckMerkm.ID_Deckungsstatus IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Deckungsstatus';

COMMENT ON COLUMN DMK_VertragDeckMerkm.ID_Rueckversicherungsart IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS.C_Rueckversicherungsart';

COMMENT ON COLUMN DMK_VertragDeckMerkm.ID_VertragsdeckMerkmale IS
'... ist eine identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN DMK_VertragDeckMerkm.KaskoMobil IS
'ja / nein/ unzutreffend

aus  ER01_WE03_DeckSpie_Sch_01_LBS.C_KaskoMobil

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragDeckMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_VertragDeckMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Autoplus IS
'ja/nein

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Autoplus

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Beitragsrueckstand IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Beitragsrueckstand

ja / nein

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Bedingungsschluessel IS
'konstant -1';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezFirma IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezTaetigkeit IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Grosskunde IS
'aus MD27_Grosskundenvertraege.C_Grosskunde 
mit
ER01_WE01_VertrSpie_Sch_01_LBM. Versicherungsscheinnummer_A 
= MD27_Grosskundenvertraege.Vertragsnummer
';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_TV_Projekt IS
'Wird je Projektnummer aus MD37_TV_Projekte.Projektnummer erzeugt

aus MD37_TV_Projekte.Projektnummer
mit 
ER01_WE01_VertrSpie_Sch_01_LBM. Versicherungsscheinnummer_A
= MD37_TV_Projekte.Vertragsnummer oder ...Vertragsnummer_alt
';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Vertragsart IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Vertragsart';

COMMENT ON COLUMN DMK_Vertragsmerkmale.KaskoMobil IS
'ja / nein/ unzutreffend

aus  ER01_WE01_VertrSpie_Sch_01_LBM.C_KaskoMobil

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Rabattschutz IS
'Rabattschutz

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Rabattschutz

ja / nein/ unzutreffend

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsklasseKH IS
'Schadensfreiheitklasse Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseKH

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsklasseVK IS
'Schadensfreiheitklasse Vollkasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsklasseVK

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsrabattKH IS
'Schadenfreiheitsrabatt Haftpflicht

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattKH

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.SchadenfreiheitsrabattVK IS
'Schadenfreiheitsrabatt Vollkasko

aus ER01_WE01_VertrSpie_Sch_01_LBM.SchadenfreiheitsrabattVK

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Vertragsmerkmale.Versicherungszweig IS
'Der Versicherungszweig wird auch als Branchenschl�sselzahl (BSZ) gem. GDV bezeichnet

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungszweig

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_Betragstyp IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_BruttoNetto IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_BruttoNetto';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_Fallzahlungspostentyp IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Fallzahlungspostentyp';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_Zahlungsart IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsart';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_Zahlungsgrund IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_Zahlungsgrund';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_ZahlungsgrundGruppe IS
'aus  LE02_Zahlung_Det_SHUKR_01_WBS.C_ZahlungsgrundGruppe';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.ID_ZhlgFordDetMerkmale IS
'wird bei der Bef�llung erzeugt ';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordDetMerkm.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.ID_ZhlgFordFlags IS
'wird bei der Bef�llung erzeugt ';

COMMENT ON COLUMN DMK_ZhlgFordFlags.Migriert IS
'Zahlung zu migriertem Schaden

Ja / Nein

aus LE01_Zahlung_SHUKR_02_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.Pruefung_Zuf IS
'... gibt an, ob die Zahlung per Zufallsgenerator f�r eine manuelle Pr�fung ausgew�hlt wurde.

ja / nein/ unzutreffend

aus LE01_Zahlung_DWH_01_HBS.C_Pruefung_Zuf

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.ScheckOffen IS
'Kennzeichen, ob der Scheck noch offen ist.

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_02_HBS.C_ScheckOffen

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordFlags.durchgefuehrt IS
'Zahlung wurde bereits durchgefuehrt

ja / nein/ unzutreffend

aus LE01_Zahlung_SHUKR_02_HBS.C_durchgefuehrt

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Abgabestatus IS
'Abgabestatus

1	Nicht Abgegeben
2	F+M (Inkassob�ro)
3	Sonstige (Inkassob�ro)
4	M+R (Regressb�ro)
5	Sonstige (Regressb�ro)

aus LE01_Zahlung_SHUKR_02_HBS.Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_BruttoNetto IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_BruttoNetto';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_SatzartDerZahlung IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_SatzartDerZahlung';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Vollmachtsstufe IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_Vollmachtsstufe';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlgFordMerkmale IS
'wird bei der Bef�llung erzeugt ';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlungStatus IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_ZahlungStatus';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Zahlungsart IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_Zahlungsart';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_ZahlungspflichtigerArt IS
'Art des Zahlungspflichtigen

1	VN
2	Gegner
3	Eigener Anwalt
4	Sonstiger

aus LE01_Zahlung_SHUKR_02_HBS.C_Art_des_Zahlungspflichtigen

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.ID_Zahlweg IS
'aus LE01_Zahlung_SHUKR_02_HBS.C_Zahlweg';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_ZhlgFordMerkmale.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Besch_Objekt.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Besch_Objekt.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Besch_Objekt.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Besch_Objekt.ID_Waehrung_Schadenhoehe IS
'W�hrung der voraussichtlichen Schadenh�he

aus ER01_OB01_bescObj_SHUKR_01_LBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten �nderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus OB01_Objekt_Sch_01_HBS.geaendert_am


Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.SK_Besch_Objekt IS
'aus ER01_OB01_bescObj_SHUKR_01_LBS.FK_ER01_OB01_beschObjekt';

COMMENT ON COLUMN F_Besch_Objekt.SK_Schaden IS
'aus PA01_PA02_ER01_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Besch_Objekt.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Besch_Objekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Besch_Objekt.Vorauss_Schadenhoehe IS
'Voraussichtliche Schadenh�he

aus ER01_OB01_bescObj_SHUKR_01_LBS.Vorauss_Schadenhoehe

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.

hier 
aus 		Bilanz_Meldedatum
in			LE09_Rueckst_Bilanz_01_HBM 
oder 	LE03_Regress_Bilanz_01_HBM
 
Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_BilRueckstMerkmale IS
'Lookup auf DMK_BilRueckstMerkm mit 

ID_Klassifizierungsart				=		C_Klassifizierungsart			(aus LE09_Rueckst_Bilanz_01_HBM oder aus LE03_Regress_Bilanz_01_HBM)		

ID_Schadenrueckstellungsart	=		C_Rueckstellungsart (falls aus LE09_Rueckst_Bilanz_01_HBM) oder  ''Regress'' (2265) (falls aus E03_Regress_Bilanz_01_HBM) 

ID_Bilanz_Meldeperioden		=		C_Bilanz_Meldeperiode 	(aus LE09_Rueckst_Bilanz_01_HBM oder aus LE03_Regress_Bilanz_01_HBM)		


Bea: Falls Eintrag fehlt, muss er in DMK_BilRueckstMerkm erzeugt werden.
';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Datum_1_Wiedereroeffnung

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Datum_1_Wiedereroeffnung
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Eintrittsdatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Eintrittsdatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Meldedatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Meldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Bearbeitungsstelle 

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Region_Bearbeitungsstelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Region_VertragsfuehStelle IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden) 
aus F_Schaden.ID_Region_VertragsfuehStelle
zum zugeh�rigen Schaden

';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Region_anlegende_Stelle IS
'zu ER01_Schaden_DWH_01_HBS.C_anl_Stelle

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Region_anlegenede_Stelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_RueckstDatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus 		Bilanz_Meldedatum
in			LE09_Rueckst_Bilanz_01_HBM 
oder 	LE03_Regress_Bilanz_01_HBM 
';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_SchadUrsacheGef IS
'Lookup auf DMK_SchadUrsacheGef.ID_SchadUrsacheGef

�ber
DMK_SchadUrsacheGef.Spartenliste_ID = ER01_Schaden_DWH_01_HBS. C_Dim_Schadengrund

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadUrsacheGef
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_SchadenFlags IS
'Lookup auf DMK_SchadenFlags.ID_SchadenFlags 

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_01_HBS

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadenFlags
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Schadenmerkmale IS
'Lookup auf DMK_SchadenMerkmale.ID_SchadenMerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_01_HBS

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadenMerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Schadenschlussmeldedatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Schadenschlussmeldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus ER01_SCHADEN_SHUKR_02_HBS.C_Bearbeitungsstatus

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH

oder (falls vorhanden)
aus F_Schaden.ID_Schadenstatus_Detail
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Spartenkennziffer IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Sparte

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Spartenkennziffer
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_UKZ IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Risikotraeger

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden) 
aus F_Schaden.ID_UKZ
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Versicherungsart IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Versicherungsart

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	
oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Versicherungsart
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.ID_Vertragsmerkmale IS
'Lookup auf DMK_Vertragsmerkmale.ID_Vertragsmerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_WE01_VertrSpie_Sch_01_LBM

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden) 
aus F_Schaden.ID_Vertragsmerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.RueckstellungsbetragInEuro IS
'... ist der gemeldete Betrag.

aus 		Bilanz_Meldebetrag
in			LE09_Rueckst_Bilanz_01_HBM 
oder 	LE03_Regress_Bilanz_01_HBM

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.SK_Bilanzrueckstellungen IS
'aus 		LE09_Rueckst_Bilanz_01_HBM.FK_LE09_Rueckstellung
oder	LE03_Regress_Bilanz_01_HBM.FK_LE03_Regress';

COMMENT ON COLUMN F_Bilanzrueckstellgn.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH';

COMMENT ON COLUMN F_Bilanzrueckstellgn.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder	LE03_Regress_BH 
	->	ER01_LE03_BL 
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden)
aus F_Schaden.SK_Vertrag
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Bilanzrueckstellgn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.EingegangenerBetrag IS
'... ist bei Forderungen der bereits eingezahlte Betrag der Gesamtforderung

aus LE01_Zahlung_SHUKR_01_HBS. EingegangenerBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.EingegangenerBetragInEuro IS
'... gibt den in Euro umgerechneten Betrag an.

aus LE01_Zahlung_SHUKR_01_HBS.EingegangenerBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.GeforderterBetrag IS
'... ist der Gesamtbetrag der Zahlung -- Summe der Teilzahlungen?

aus LE01_Zahlung_SHUKR_01_HBS.Betrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.GeforderterBetragInEuro IS
'... ist der Gesamtbetrag der Zahlung in Euro -- Summe der Teilzahlungen in Euro?

aus LE01_Zahlung_SHUKR_01_HBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Forderung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.ID_Abgabedatum IS
'Abgabedatum der Forderung (an externes Inkasso o.�.)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE01_Zahlung_SHUKR_02_HBS.Abgabedatum

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_ArtGerichtlicheMahn IS
'Aus KT06_BELEGPOSITION_INEX_01_WBS.C_ArtGerichtlicheMahn_B';

COMMENT ON COLUMN F_Forderung.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_ForderungBelegdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_ForderungBuchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_ForderungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung.ID_ForderungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_Nettofaelligkeit IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Forderung.ID_Region_Ford_Anl_Stelle IS
'aus LE01_Zahlung_DWH_01_HBS. C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Forderung.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Forderung.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Forderung.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Forderung.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Forderung.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Forderung.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Forderung.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung.OffenerForderungsbetrag IS
'... ist der aktuell noch offene Forderungsbetrag

= Summe(KT06_BELEGPOSITION_INEX_01_WBS.BetragInEuro) f�r alle Belegpositionen zur Forderung, die zum Stichtag kein Ausgleichsbuchungsdatum aufweisen)

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.SK_Forderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Forderung.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Forderung.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Forderung.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Forderung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.UrsprGeforderterBetrag IS
'... ist der urspr�nglich verhandelte Betrag im Zuge einer Forderung.

aus LE01_Zahlung_SHUKR_01_HBS. UrsprGeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung.UrsprGeforderterBetragInEuro IS
'... ist der urspr�nglich verhandelte Betrag im Zuge einer Forderung, umgerechnet in Euro.

aus LE01_Zahlung_SHUKR_01_HBS. UrsprGeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.EingegangenerBetrag IS
'... ist bei Forderungen der bereits eingezahlte Betrag der Forderungsposition

aus LE01_Zahlung_SHUKR_01_HBS. Teilbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.EingegangenerBetragInEuro IS
'... gibt den in Euro umgerechneten Betrag an.

aus LE01_Zahlung_SHUKR_01_HBS.TeilbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.GeforderterBetrag IS
'... enth�lt  f�r Regress-Zahlungen den Gesamtbetrag der Regressforderung, w�hrend ''Teilbetrag'' nur den Betrag aus der aktuellen Zahlung wiedergibt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.GeforderterBetragInEuro IS
'... gibt den in Euro umgerechneten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.ID_FordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Forderung_Detail.ID_ForderungBuchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.ID_ForderungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung_Detail.ID_ForderungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung_Detail.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Forderung_Detail.ID_Region_Ford_Anl_Stelle IS
'aus LE01_Zahlung_DWH_01_HBS. C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Forderung_Detail.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Forderung_Detail.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Forderung_Detail.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Forderung_Detail.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Forderung_Detail.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Forderung_Detail.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Forderung_Detail.SK_Forderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Forderung_Detail.SK_Forderung_Detail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Forderung_Detail.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Forderung_Detail.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Forderung_Detail.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Forderung_Detail.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Forderung_Detail.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.UrsprGeforderterBetrag IS
'... enth�lt  f�r Regress-Zahlungen den urspr�nglich vor Verhandlungen geforderten Gesamtbetrag der Regressforderung.

aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Forderung_Detail.UrsprGeforderterBetragInEuro IS
'... gibt den in Euro umgerechneten vor Verhandlungen geforderten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Eingangsdatum_Gericht IS
'... ist das Datum des Eingangs des Verfahrens zu dieser Instanz bei Gericht.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Eingangsdatum_Gericht

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Erwiderungsfrist_Ende IS
'... ist das Datum,bis zu dem eine Erwiderung bei Gericht eingegangen sein muss, um wirksam zu sein.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Erwiderungsfrist_Ende

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Instanz_Beginndatum IS
'... ist das Datum des Beginns der Instanz.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Instanzbeginndatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Instanz_Endedatum IS
'... ist das Datum des Endes der Instanz.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Instanzendedatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_GerichtsInstanz.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Verhandlungsdatum IS
'...das Datum der Verhandlung.

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

in Schaden vorhanden: Nullable
Wie das Attribut genutzt wird ist unklar, ibs. hinsichtlich zuk�nftiger Termine oder der vollst�ndigen Erfassung aller Termine in der Zeitreihe.
Zun�chst wird die Bef�llung des Weak Links "ER05_GerVerhandlung_ER04_BW" zur�ckgestellt und deshalb (vorl�ufig) dieses Attribut der Gerichts-Instanz zugeordnet.

aus ER04_GerInstanz_SHUKR_01_WBS.Verhandlungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_Zustellungsdatum IS
'... ist der Tag, an dem der Adressat vom Zugang des zugestellten Schriftst�cks (insbes. der Klage) pers�nlich Kenntnis erlangt und es empfangsbereit entgegennimmt. 

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.Zustellungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten �nderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER04_GerInstanz_SHUKR_01_WBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.Laufzeit IS
'Laufzeit der Instanz gemessen in Arbeitstagen f�r abgeschlossene Prozesse.

aus ER04_GerInstanz_DWH_01_WBS.Laufzeit

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Schaden IS
'aus ER01_ER02_ER03_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Teilschaden IS
'aus ER01_ER02_ER03_BL.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_GerichtsInstanz.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_GerichtsInstanz.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Anwaltsbudget IS
'... ist der Betrag f�r das Anwaltsbudget des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Anwaltsbudget

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Aufnahmedatum IS
'... ist das Datum der Verfahrensaufnahme.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Aufnahmedatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Erledigungsdatum IS
'... ist das Datum, an dem das Verfahren erledigt ist.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Erledigungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_GerichtsverfMerkmal IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS..FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Offenlegungsdatum IS
'... ist das Datum der Offenlegung des Sachverhalts.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Offenlegungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Rechtskraftdatum IS
'... ist das Datum der Rechtskraft des Urteils bzw. des Vergleichs.
Das ist das Ende einer Frist, um z.B. Widerspruch einzulegen bzw. in Revision zu gehen. Ist das Rechtskraftdatum erreicht, kann keine Revision mehr eingelegt werden.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Rechtskraftdatum

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_TeilschadenFlags IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_Verjaehrungsfrist_Ende IS
'... ist das Datum, an dem die Verj�hrung eintritt.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Verjaehrungsfrist_Ende

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten �nderung

aus ER03_GerVerf_eig_SHUKR_01_HBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Gerichtsverfahren IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS.FK_ER03_Gerichtsverfahren';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Schaden IS
'aus ER01_ER02_ER03_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Teilschaden IS
'aus ER01_ER02_ER03_BL.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Gerichtsverfahren.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Gerichtsverfahren.Streitwert_geschaetzt IS
'... ist der Betrag des gesch�tzten Streitwerts des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_geschaetzt

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Streitwert_tatsaechlich IS
'... ist der Betrag des tats�chlichen Streitwerts des Verfahrens in C_Waehrung.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Streitwert_tatsaechlich

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Gerichtsverfahren.Urteilsbetrag IS
'... ist der Betrag de Urteils (bzw. des Vergleichs) bei einem erledigten Verfahren.

aus ER03_GerVerf_eig_SHUKR_01_HBS.Urteilsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.

aus MD14_RV_Struktur_S.TA_Ladedatum
 
Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

aus MD14_RV_Struktur_S.TA_Ersatzdatum

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Haftstrecke IS
'Haftungsstrecke, bis zu der der RV-Layer wirkt, d.h. die maximale Haftungsstrecke des XL-Layers.

aus MD14_RV_STRUKTUR_S.Haftstrecke_XL

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.ID_Auswertung_individuell IS
'ID des Auswertungsknotens

aus MD14_RV_Struktur_S.ID_Auswertung_ind und MD14_RV_Struktur_S.ID_Auswertungsbereich:

ID_Auswertungsbereich_ID*1000+ID_Auswertung_ind (vgl. Trafo MD26)

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.ID_Auswertungsbereich IS
'ID des Auswertungsbereichs

aus MD14_RV_Struktur_S.ID_Auswertungsbereich

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN F_RV_LAYER.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_RV_LAYER.Layer IS
'Bezeichner des XL-Layers: ''SUB'' / ''XL1'' / ''XL2'' / ''XL3''

aus MD14_RV_Struktur_S.Layer

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Platzierter_Anteil_RV_Layer IS
'Platzierter RV-Anteil des XL-Layers in Prozent.

aus MD14_RV_STRUKTUR_S.PlatzierterAnteil_XL

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Prioritaet IS
'Prioritaet, ab dem der XL greift, d.h. der quotierte Schadenaufwand muss �ber der Prioritaet liegen, damit der Schaden in den XL-Layer f�llt.

aus MD14_RV_STRUKTUR_S.Prioritaet_XL

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.RV_Vertragsbez IS
'Bezeichner des RV-Vertrages

aus MD14_RV_Struktur_S.Vertragsbezeichnung

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.SK_RV_Layer IS
'aus MD14_RV_STRUKTUR_S.ID_RV_Layer

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

aus MD14_RV_Struktur_S.TA_Lade_ID

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

aus MD14_RV_Struktur_S.TA_Ladedatum

Datenschutz $-';

COMMENT ON COLUMN F_RV_LAYER.Unfall_Rente IS
'Kennzeichnet, ob sich der XL-Layer auf Unfall-rente - F�lle bezieht

J: Unfall-rente muss ber�cksichtigt werden --> ID_Rueckversicherung=10119
N: Unfall-rente Sch�den sind nicht eingeschlossen --> ID_Rueckversicherung <>10119
-: Alle Sch�den sind eingeschlossen

aus MD14_RV_Struktur_S.Knz_Unfall_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_Org_DEVK IS
'Anzahl der der Vollmachten f�r Vertriebspartner DEVK

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_DEVK

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_Org_Sparda IS
'Anzahl der der Vollmachten f�r Vertriebspartner Sparda

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_Sparda

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VoStufe_Einstieg IS
'Anzahl der Vollmachten f�r Vertriebspartner mit Vollmachtsstufe ''Einstieg''

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_Einstieg

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VoStufe_Regel IS
'Anzahl der Vollmachten f�r Vertriebspartner mit Vollmachtsstufe ''Regel''

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_Regel

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VoStufe_Spezial IS
'Anzahl der Vollmachten f�r Vertriebspartner mit Vollmachtsstufe ''Spezial''

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_Spezial

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VtpTyp_BB IS
'Anzahl der Vollmachten f�r Bankbetreuer innerhalb der Vertriebspartner

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_BB

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VtpTyp_MBER IS
'Anzahl der Vollmachten f�r Mitarbeiterberatungsstellen innerhalb der Vertriebspartner

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_MBER

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VtpTyp_VL_Sparda IS
'Anzahl der Vollmachten f�r Vertriebsleiter Sparda innerhalb der Vertriebspartner

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_VL_Sparda

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VtpTyp_VTM IS
'Anzahl der Vollmachten f�r Vertrauensm�nner innerhalb der Vertriebspartner

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_VTM

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollm_VtpTyp_uebrige IS
'Anzahl der Vollmachten f�r die �brigen Vertriebspartner 

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_uebrige

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Anz_VTP_Vollmacht_gesamt IS
'Anzahl der Vollmachten f�r Vertriebspartner insgesamt

aus MD29_VTP_Mitarbeiter.Anzahl_VTP_insgesamt

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.

aus MD29_VTP_Mitarbeiter.gueltig_beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

aus MD29_VTP_Mitarbeiter.gueltig_ende

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.ID_Regionaldirektion IS
'aus MD29_VTP_Mitarbeiter.ID_Regionaldirektion

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.SK_Regionaldirektion IS
'aus MD29_VTP_Mitarbeiter.ID_Regionaldirektion

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

aus MD29_VTP_Mitarbeiter.TA_Lade_ID

Datenschutz $-';

COMMENT ON COLUMN F_Regionaldirektion.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

aus MD29_VTP_Mitarbeiter.TA_Ladedatum

Datenschutz $-';

COMMENT ON COLUMN F_Regress.BetragGeschaetzt IS
'Gesch�tzter Betrag des Regresses in Regressw�hrung

aus LE03_Regress_SHUKR_01_HBS.BetragGeschaetzt

Datenschutz $-';

COMMENT ON COLUMN F_Regress.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Regress.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Datum_1_Wiedereroeffnung
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Eintrittsdatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Meldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Region_Bearbeitungsstelle IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle

';

COMMENT ON COLUMN F_Regress.ID_Region_VertragsfuehStelle IS
'zu ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle
bzw. zu ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

aus F_Schaden.ID_Region_VertragsfuehStelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Region_anlegende_Stelle IS
'zu ER01_Schaden_DWH_01_HBS.C_anl_Stelle

aus F_Schaden.ID_Region_anlegenede_Stelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_RegressMerkmale IS
'Lookup auf DMK_Regressmerkmale mit:

LE03_Regress_SHUKR_01_HBS .C_Regressart
LE03_Regress_SHUKR_01_HBS .C_Regressgrund
LE03_Regress_SHUKR_01_HBS .C_Regressstatus

Bea:  Falls Eintrag fehlt, muss er in DMK_Regressmerkmale erzeugt werden.
';

COMMENT ON COLUMN F_Regress.ID_SchadUrsacheGef IS
'aus F_Schaden.ID_SchadUrsacheGef
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_SchadenFlags IS
'aus F_Schaden.ID_SchadenFlags
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Schadenmerkmale IS
'aus F_Schaden.ID_SchadenMerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Schadenschlussmeldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus F_Schaden.ID_Schadenstatus_Detail
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Sendedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE03_Regress_SHUKR_01_HBS.Sendedatum';

COMMENT ON COLUMN F_Regress.ID_Spartenkennziffer IS
'aus F_Schaden.ID_Spartenkennziffer
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_UKZ IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

aus F_Schaden.ID_UKZ
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Versicherungsart IS
'aus F_Schaden.ID_Versicherungsart
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Vertragsmerkmale IS
'aus F_Schaden.IDVertragsmerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.ID_Waehrung IS
'Kurztext der Regressw�hrung 

aus LE03_Regress_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Regress.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE03_Regress_SHUKR_01_HBS. geaendert_am';

COMMENT ON COLUMN F_Regress.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Regress.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden

�ber 	LE03_Regress_BH
	->	ER01_LE03_BL
	->	ER01_Schaden_BH';

COMMENT ON COLUMN F_Regress.SK_Vertrag IS
'aus F_Schaden.SK_Vertrag
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Regress.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Regress.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Datum_1_Wiedereroeffnung
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Eintrittsdatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Meldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle

aus F_Schaden.ID_Region_Bearbeitungsstelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Region_VertragsfuehStelle IS
'zu ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle
bzw. zu ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

aus F_Schaden.ID_Region_VertragsfuehStelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Region_anlegende_Stelle IS
'zu ER01_Schaden_DWH_01_HBS.C_anl_Stelle

aus F_Schaden.ID_Region_anlegenede_Stelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_RegressMerkmale IS
'aus F_Regress.ID_Regressmerkmale
zum zugeh�rigen Regress';

COMMENT ON COLUMN F_RegressPosition.ID_SchadUrsacheGef IS
'aus F_Schaden.ID_SchadUrsacheGef
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_SchadenFlags IS
'aus F_Schaden.ID_SchadenFlags
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Schadenmerkmale IS
'aus F_Schaden.ID_SchadenMerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus F_Schaden.ID_Schadeschlussmeldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus F_Schaden.ID_Schadenstatus_Detail
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Spartenkennziffer IS
'aus F_Schaden.ID_Spartenkennziffer
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_TeilschadenFlags IS
'aus F_Teilschaden.ID_TeilschadenFlags
zum zugeh�rigen Teilschaden';

COMMENT ON COLUMN F_RegressPosition.ID_TeilschadenMerkmale IS
'aus F_Teilschaden.ID_Teilschadenmerkmale
zum zugeh�rigen Teilschaden';

COMMENT ON COLUMN F_RegressPosition.ID_UKZ IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

aus F_Schaden.ID_UKZ
zum zugeh�rigen Schaden

';

COMMENT ON COLUMN F_RegressPosition.ID_Versicherungsart IS
'aus F_Schaden.ID_Versicherungsart
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Vertragsmerkmale IS
'aus F_Schaden.ID_Vertragsmerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.ID_Waehrung IS
'Kurztext der Regressw�hrung 

aus LE04_Regresspos_SHUKR_01_WBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.ID_geaendert_am IS
'aus LE04_Regresspos_SHUKR_01_WB.geaendert_am';

COMMENT ON COLUMN F_RegressPosition.Regressbetrag IS
'... ist der Betrag des Regresses ???.

aus  LE04_Regresspos_SHUKR_01_WBS.Regressbetrag

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.Rueckstellungsbetrag IS
'... ist der Betrag in Euro, um den sich die R�ckstellung ver�ndert.

Dieses Feld wird nur f�r gesicherte Regresse verwendet.

aus LE04_Regresspos_SHUKR_01_WBS.Rueckstellungsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.SK_Regress IS
'aus LE04_Regressposition_LE03_BW.FK_LE03_Regress';

COMMENT ON COLUMN F_RegressPosition.SK_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS.FK_LE04_Regressposition';

COMMENT ON COLUMN F_RegressPosition.SK_Schaden IS
'zu ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden

aus F_Teilschaden.SK_Schaden
zum zugeh�rigen Teilschaden





';

COMMENT ON COLUMN F_RegressPosition.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden

�ber 	LE04_Regressposition_BH
	->	ER02_LE04_BL
	->	ER02_Teilschaden_BH';

COMMENT ON COLUMN F_RegressPosition.SK_Vertrag IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel

aus F_Schaden.SK_Vertrag
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_RegressPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_RegressPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Anzahl_Schaeden IS
'Aus ZCM_DB_DWH_KONTR.ANZAHL';

COMMENT ON COLUMN F_SAP_Kontrollreport.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

aus LE09_Rueckst_Man_01_HBM.Eintrittsdatum_von, wenn jahr(Eintrittsdatum_von) = jahr(Eintrittsdatum_bis)

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN F_SAP_Kontrollreport.ID_UKZ IS
'
aus LE09_Rueckst_Man_01_HBM.C_Risikotraeger';

COMMENT ON COLUMN F_SAP_Kontrollreport.Regress_Eingang_Entsch IS
'Aus ZCM_DB_DWH_KONTR.ZE_E

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Regress_Eingang_Rente IS
'Aus ZCM_DB_DWH_KONTR.ZE_R

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Regress_Eingang_SRK IS
'Aus ZCM_DB_DWH_KONTR.ZE_K

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Regress_gesi_offen IS
'Aus ZCM_DB_DWH_KONTR.RES_REGR

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Rueckstellung_rein_Entsch IS
'Aus ZCM_DB_DWH_KONTR.RES_E

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Rueckstellung_rein_Rente IS
'Aus ZCM_DB_DWH_KONTR.RES_R

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Rueckstellung_rein_SRK IS
'Aus ZCM_DB_DWH_KONTR.RES_K

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Zahlung_rein_Entsch IS
'Aus ZCM_DB_DWH_KONTR.AUSZ_E

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Zahlung_rein_Rente IS
'Aus ZCM_DB_DWH_KONTR.AUSZ_R

Datenschutz $-';

COMMENT ON COLUMN F_SAP_Kontrollreport.Zahlung_rein_SRK IS
'Aus ZCM_DB_DWH_KONTR.AUSZ_K

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.ANZAHL_BEARB_YTD IS
'Wenn this.SCHADENAUFWAND_OHNE_IK_YTD = 0, dann 0, sonst 1';

COMMENT ON COLUMN F_SCHADEN_YTD.GUELTIG_BEGINN IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.GUELTIG_ENDE IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_GESI_EINGANG_ENTSCH_YTD IS
'Summe gesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_GESI_EINGANG_ENTSCH 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_GESI_EINGANG_RENTE_YTD IS
'Summe gesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_GESI_EINGANG_RENTE 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_GESI_EINGANG_SRK_YTD IS
'Summe gesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen.
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf �u�eren Schadenregulierungsaufwendungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_GESI_EINGANG_SRK 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_UNGESI_EINGANG_ENTSCH_YTD IS
'Summe ungesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_UNGESI_EINGANG_ENTSCH 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_UNGESI_EINGANG_RENTE_YTD IS
'Summe ungesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_UNGESI_EINGANG_RENTE 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.REGR_UNGESI_EINGANG_SRK_YTD IS
'Summe ungesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens vom Jahresbeginn bis zum Betrachtungszeitpunkt auf �u�eren Schadenregulierungsaufwendungen.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.REGRESS_UNGESI_EINGANG_SRK 

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.RUECKSTELLUNGEN_SALDIERT_YTD IS
'Saldierte Schadenr�ckstellungen
Summe aller von Jahresbeginn bis zum Betrachtungszeitpunkt noch vorhandenen R�ckstellungen f�r Entsch�digungen, �u�ere Schadenregulierung und Renten eines Schadens. Offene Anteile gesicherter Regresse werden dabei ber�cksichtigt.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.RUECKSTELLUNGEN_SALDIERT

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.RUECKSTELLUNG_REIN_ENTSCH_YTD IS
'Reine R�ckstellung f�r Entsch�digungszahlungen.
R�ckstellung, die von Jahresbeginn bis zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der Entsch�digungszahlungen noch existiert, also nicht durch Aufwendungen f�r die Entsch�digungszahlungen aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.RUECKSTELLUNG_REIN_ENTSCH

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.RUECKSTELLUNG_REIN_RENTE_YTD IS
'Reine Rentenr�ckstellung
R�ckstellung, die von Jahresbeginn bis zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.RUECKSTELLUNG_REIN_RENTE

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.RUECKSTELLUNG_REIN_SRK_YTD IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die von Jahresbeginn bis zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.RUECKSTELLUNG_REIN_SRK

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.SCHADENAUFWAND_OHNE_IK_YTD IS
'Schadenaufwand ohne innere Kosten

Gesamter diesj�hriger Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseing�nge, R�ckstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht ber�cksichtigt, ebenso innere Kosten.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.SCHADENAUFWAND_OHNE_IK

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.SK_SCHADEN IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_AENDERUNGSDATUM IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aneu berechnet wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_AENDERUNGS_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_ERSATZDATUM IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_ERSATZ_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz ersetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_LADEDATUM IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem adiese Aggregation ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten berechnet wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.TA_LADE_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.ZAHLUNGEN_SALDIERT_YTD IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Schadensvon Jahresbeginn bis zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden alle Ausgangszahlungen und Regresseing�nge (gesichert und ungesichert).

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.ZAHLUNGEN_SALDIERT

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.ZAHLUNG_REIN_ENTSCH_YTD IS
'Summe reine Entsch�digungszahlungen

Die Summe der reinen Entsch�digungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung von Jahresbeginn bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers f�r Entsch�digungsleistungen. Nicht eingerechnet werden dabei Zahlungen f�r die Schadenregulierung und auch keine Zahlungseing�nge. Umbuchungen werden hingegen betrachtet.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.ZAHLUNG_REIN_ENTSCH

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.ZAHLUNG_REIN_RENTE_YTD IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_SCHADEN_YTD.ZAHLUNG_REIN_SRK_YTD IS
'Summe reine Aufwendungen f�r �uere Schadenregulierung

Die Summe der reinen Aufwendungen f�r �u�ere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung von Jahresbeginn bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers f�r die �u�ere Schadenregulierung des (Teil-)Schadens. Zahlungseing�nge werden dabei nicht ber�cksichtigt, Umbuchungen dagegen schon.

Aktueller Wert abz�glich Vorjahresendwert (31.12.VJ 23:59:59) von F_SCHADEN.ZAHLUNG_REIN_SRK

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Abweichung_Vertragsstand IS
'ABWEICHUNG VOM VERTRAGSSTAND

aus MD36_SDS_Bilanz_Summensatz.ABW

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Anzahl_Tote_Verletzte IS
'ANZAHL DER TOTEN/VERLETZTEN

aus MD36_SDS_Bilanz_Summensatz.ATV

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Art_des_Schadens IS
' ART (URSACHE) DES SCHADENS (abgek�rzt ADS)

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Art_des_Unfalls IS
'ART DES UNFALLS

aus MD36_SDS_Bilanz_Summensatz.ADU

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Eintrittsland IS
'EINTRITTSLAND

aus MD36_SDS_Bilanz_Summensatz.ELA

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Entschaedigungen_GJ IS
'... ist die Summe der ENTSCHAEDIGUNGEN (GJ)

aus MD36_SDS_Bilanz_Summensatz.ENT1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Entschaedigungen_VJ IS
'... ist die Summe der ENTSCHAEDIGUNGEN (VJ)

aus MD36_SDS_Bilanz_Summensatz.ENT2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Forderungsbetrag_EJ IS
'FORDERUNGS-BETRAG (EJ)

aus MD36_SDS_Bilanz_Summensatz.KAS

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Forderungsbetrag_GJ IS
'... ist der FORDERUNGS-BETRAG (GJ)

aus MD36_SDS_Bilanz_Summensatz.FGJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Forderungsbetrag_VJ IS
'... ist der FORDERUNGS-BETRAG (VJ)

aus MD36_SDS_Bilanz_Summensatz.FVJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Forderungsdatum IS
'FORDERUNGS-DATUM (JJJJMMTT)

aus MD36_SDS_Bilanz_Summensatz.FDA

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Eintrittsdatum IS
'aus MD36_SDS_Bilanz_Summensatz.EDA (EINTRITTS-DATUM (JJJJMMTT))

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT
';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Geschaeftsjahr_laufend IS
'... ist das laufende GESCHAEFTSJAHR 

aus MD36_SDS_Bilanz_Summensatz.LGJ 

Format: JJJJ';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Geschaeftsmonat_laufend IS
'... ist das laufende GESCHAEFTSJAHR und der laufende GESCHAEFTSMONAT

aus MD36_SDS_Bilanz_Summensatz.LGJ 
und MD36_SDS_Bilanz_Summensatz.LGM

Format: JJJJMM';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Meldedatum  IS
'aus MD36_SDS_Bilanz_Summensatz.MDA (MELDE-DATUM (MMTT)???)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

Bea: wenn das Meldedatum desc Schadens tats�chlich ohne Jahr ist, dann �ber Lookup �ber F_Schaden zur this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_SammelereignisKlasse IS
'... ist die Sammelereignisklasse zum Sammelereignis gem. ID_Sammelereignis

aus F_Schaden.ID_SammelereignisKlasse
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_SchadUrsacheGef IS
'aus F_Schaden.ID_SchadUrsacheGef 
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_SchadenFlags IS
'aus F_Schaden.ID_SchadenFlags
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Schadenmerkmale IS
'aus F_Schaden.ID_Schadenmerkmale 
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Schadenortmerkmale IS
'aus F_Schaden.ID_Schadenortmerkmale 
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Schadenschlussmeldedatum IS
'aus MD36_SDS_Bilanz_Summensatz.SDA (SCHLUSSMELDEDATUM (JJJJMMTT))

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus ER01_SCHADEN_SHUKR_02_HBS.C_Bearbeitungsstatus
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Spartenkennziffer IS
'aus F_Schaden.ID_Spartenkennziffer
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_UKZ IS
'aus MD36_SDS_Bilanz_Summensatz.UKZ';

COMMENT ON COLUMN F_SDS_Bilanzwerte.ID_Vertragsmerkmale IS
'aus F_Schaden.ID_Vertragsmerkmale 
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Invaliditaetsprozentsatz IS
'INVALIDITAETS-PROZENTSATZ 

aus MD36_SDS_Bilanz_Summensatz.INV

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAD_GJ IS
'KLASSIF.-ART  (GJ)

aus MD36_SDS_Bilanz_Summensatz.KAD1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAD_MJ IS
'KLASSIF.-ART  (MJ)

aus MD36_SDS_Bilanz_Summensatz.KAD3

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAD_VJ IS
'KLASSIF.-ART  (VJ)

aus MD36_SDS_Bilanz_Summensatz.KAD2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAF_EJ IS
'KA DER FORDERUNG (EJ)

aus MD36_SDS_Bilanz_Summensatz.KAF3

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAF_GJ IS
'KA DER FORDERUNG (GJ)

aus MD36_SDS_Bilanz_Summensatz.KAF1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAF_VJ IS
'KA DER FORDERUNG (VJ)

aus MD36_SDS_Bilanz_Summensatz.KAF2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAR_GJ IS
'KLASSIF.-ART  (GJ)

aus MD36_SDS_Bilanz_Summensatz.KAR1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAR_MJ IS
'KLASSIF.-ART  (MJ)

aus MD36_SDS_Bilanz_Summensatz.KAR3

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAR_VJ IS
'KLASSIF.-ART  (VJ)

aus MD36_SDS_Bilanz_Summensatz.KAR2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KAS IS
'KLASSIFIZIERUNGS-ART ZU ADS

aus MD36_SDS_Bilanz_Summensatz.KAS

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.KFZ_beteiligt_alt_neu IS
'ALTES/NEUES KFZ BETEILIGT

aus MD36_SDS_Bilanz_Summensatz.ANK

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Koerperteil_betroffen_A IS
'BETROFFENER KOERPERTEIL  

aus MD36_SDS_Bilanz_Summensatz.BKT_A

Datenschutz $A2';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Kosten_GJ IS
'... ist die Summe der KOSTEN (GJ)

aus MD36_SDS_Bilanz_Summensatz.KOS1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Kosten_VJ IS
'... ist die Summe der KOSTEN (VJ)

aus MD36_SDS_Bilanz_Summensatz.KOS2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Postleitzahl_Schadenort IS
'POSTLEITZAHL DES SCHADENORTS

aus MD36_SDS_Bilanz_Summensatz.PLZ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rentenzahlungen_GJ IS
'... ist die Summe der RENTEN-ZAHLUNGEN (GJ)

aus MD36_SDS_Bilanz_Summensatz.REN1

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rentenzahlungen_VJ IS
'... ist die Summe der RENTEN-ZAHLUNGEN (VJ)

aus MD36_SDS_Bilanz_Summensatz.REN2

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Risikonummer IS
'RISIKO-NR.

aus MD36_SDS_Bilanz_Summensatz.RNR

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Kapital_GJ IS
'... ist die KAPITAL-RESERVE  (GJ)

aus MD36_SDS_Bilanz_Summensatz.RGJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Kapital_MJ IS
'KAPITAL-RESERVE  (MJ)

aus MD36_SDS_Bilanz_Summensatz.RMJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Kapital_VJ IS
'... ist die KAPITAL-RESERVE  (VJ)

aus MD36_SDS_Bilanz_Summensatz.RVJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Rente_GJ IS
'... ist die RENTENLEISTUNG-RESERVE  (GJ)

aus MD36_SDS_Bilanz_Summensatz.DGJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Rente_MJ IS
'RENTEN-RESERVE (MJ)

aus MD36_SDS_Bilanz_Summensatz.DMJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Rueckstellung_Rente_VJ IS
'... ist die RENTENLEISTUNG-RESERVE  (VJ)

aus MD36_SDS_Bilanz_Summensatz.DVJ

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_NatKatEreignis IS
'aus F_Schaden.SK_NatKatEreignis
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_Partner_VN IS
'aus F_Schaden.SK_Partner_VN
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_SDS_Bilanzwerte IS
'aus MD36_SDS_Bilanz_Summensatz
SNR2
LGJ
LGM

';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_Schaden IS
'aus MD36_SDS_Bilanz_Summensatz.SNR2 (Schadennummer mit Pr�fziffer)';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_Schadenort IS
'aus F_Schaden.SK_Schadenort
zu F_Schaden.SK_Schaden = this.SK_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.SK_Vertrag IS
'aus MD36_SDS_Bilanz_Summensatz.VNR (Pr�fziffer???)

oder aus F_Schaden.SK_Vertrag
zu F_Schaden.SK_Schaden = this.SK_Schaden';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Schadennummer_A IS
'SCHADEN-NR. MIT PRUEFZIFFER

besteht aus
MJJ			CHAR  (4),     MELDE-JAHR
SPA 		CHAR  (2),     SPARTE
MBL		CHAR  (2),     MELDENDE BL
LFD			CHAR  (5),     LAUFENDE NR.
SPZ			CHAR  (1),     PRUEFZIFFER ZUR SNR

aus MD36_SDS_Bilanz_Summensatz.SNR2_A 

Datenschutz $A1';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Veraenderungsdatum IS
'VERAENDERUNGS-DATUM (GJ)

aus MD36_SDS_Bilanz_Summensatz.VDA

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Versicherungsscheinnummer_A IS
'VERSICHERUNGSSCHEIN-NR.

aus MD36_SDS_Bilanz_Summensatz.VNR_A

Datenschutz $A1';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Zusatznummer IS
'ZUSATZ-NR.(GNR,LNR,POS)

aus MD36_SDS_Bilanz_Summensatz.ZNR

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.Zustandsaenderungsdatum IS
'ZUSTAEND.-AENDER.-DATUM JMT

aus MD36_SDS_Bilanz_Summensatz.ZDA

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.erweit_Freizeit_Unfallschutz IS
'ERWEIT. FREIZEITUNFALLSCHUTZ

aus MD36_SDS_Bilanz_Summensatz.EFU

Datenschutz $-';

COMMENT ON COLUMN F_SDS_Bilanzwerte.zust_Bearb_Stelle IS
'ZUSTAENDIGE BEARBEIT.-STELLE

aus MD36_SDS_Bilanz_Summensatz.ZBS

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.Abwicklungsperiode IS
':= Statjahr � Eintrittsjahr - 1
';

COMMENT ON COLUMN F_SSP_RVP.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

aus LE09_Rueckst_Man_01_HBM.Eintrittsdatum_von (nur das Jahr)
und
aus MD07_Spaet_Rueckvers_Pausch.Eintrittsjahr 

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_SSP_RVPMerkmale IS
'Lookup auf DMK_SSP_RVPMerkmale 

mittels
LE09_Rueckst_Man_01_HBS C_Rueckstellungsart
LE09_Rueckst_Man_01_HBS .C_Betragsart	

und f�r Eintr�ge aus MD07_Spaet_Rueckvers_Pausch 
mittels
C_Rueckstellungsart = Anzahl Sp�tsch�den (13425)
C_Betragsart = Anzahl Sch�den (13424)






';

COMMENT ON COLUMN F_SSP_RVP.ID_Spartenkennziffer IS
'aus LE09_Rueckst_Man_01_HBS. C_Sparte
und
aus MD07_Spaet_Rueckvers_Pausch.C_Sparte ';

COMMENT ON COLUMN F_SSP_RVP.ID_Statjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

aus LE09_Rueckst_Man_01_HBS.Buchungsdatum (nur das Jahr)
und
aus MD07_Spaet_Rueckvers_Pausch.Statistikjahr 

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.ID_Statmonat IS
'Jahr/Monat im Format JJJJMM

aus LE09_Rueckst_Man_01_HBS.Buchungsdatum (nur Jahr und Monat)
und
aus MD07_Spaet_Rueckvers_Pausch.Statistikjahr||MD07_Spaet_Rueckvers_Pausch.Statistikmonat';

COMMENT ON COLUMN F_SSP_RVP.ID_UKZ IS
'
aus LE09_Rueckst_Man_01_HBM.C_Risikotraeger
und
aus MD07_Spaet_Rueckvers_Pausch.C_Risikotraeger ';

COMMENT ON COLUMN F_SSP_RVP.Rueckstellungswert IS
'... ist abh�ngig von Betragsart und Rueckstellungsart entweder
- ein Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt
oder
- eine gesch�tzte Anzahl von (f�r die Zukunft erwarteten) Sp�tsch�den.

aus LE09_Rueckst_Man_01_HBM.RueckstellungsbetragInEuro
und 
aus MD07_Spaet_Rueckvers_Pausch.Anzahl_Spaetsch_geschaetzt 

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.SK_SSP_RVP IS
'aus LE09_Rueckst_Man_01_HBS. FK_LE09_Rueckstellung
und 
aus MD07_Spaet_Rueckvers_Pausch.ID_Spaet_Rueckvers_Pausch';

COMMENT ON COLUMN F_SSP_RVP.Sparte_Bez IS
'Bezeichner der Sparte aus Sicht des Fachbereichs Schaden. Wird ben�tigt, um innerhalb bestimmter Spartenkennziffern eine weitere Unterteilung herbeizuf�hren, z.B. in 60 (Elementar) Unterteilung in Hausrat und Wohngeb�ude.

aus LE09_Rueckst_Man_01_HBS.Sparte_Bez
und
aus MD07_Spaet_Rueckvers_Pausch.Sparte_Bez 

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SSP_RVP.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Datum_1_Wiedereroeffnung

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Eintrittsdatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Meldedatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Region_VertragsfuehStelle IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden
	->	ER01_WE01_Vertragsspiegel_BL	


oder aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden
	';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_SchadUrsacheGef IS
'Lookup auf DMK_SchadUrsacheGef.ID_SchadUrsacheGef

�ber
DMK_SchadUrsacheGef.Spartenliste_ID = ER01_Schaden_DWH_01_HBS. C_Dim_Schadengrund

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden

oder (falls vorhanden) 
aus F_Schaden.ID_SchadUrsacheGef
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_SchadenFlags IS
'Lookup auf DMK_SchadenFlags.ID_SchadenFlags

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_02_HBS

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER01_Schaden_BH';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Schadenmerkmale IS
'Lookup auf DMK_SchadenMerkmale.ID_SchadenMerkmale

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_02_HBS

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER01_Schaden_BH';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Schadenrueckstmerkmale IS
'... ist die identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Schadenschlussmeldedatum

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus ER01_SCHADEN_SHUKR_02_HBS.C_Bearbeitungsstatus

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden

oder (falls vorhanden)
aus F_Schaden.ID_Schadenstatus_Detail
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Spartenkennziffer IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Sparte

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_TeilschadenFlags IS
'Lookup auf DMK_TeilschadenFlags.ID_TeilschadenFlags

�ber alle zugeh�rigen Attributwerte in 
ER02_Teilschaden_SHUKR_02_WBS

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER02_Teilschaden_ER01_BW';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_TeilschadenMerkmale IS
'Lookup auf DMK_TeilschadenMerkmale.ID_TeilschadenMerkmale

�ber alle zugeh�rigen Attributwerte in 
ER02_Teilschaden_SHUKR_02_WBS

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER02_Teilschaden_ER01_BW';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Versicherungsart IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Versicherungsart

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Vertragsmerkmale IS
'Lookup auf DMK_Vertragsmerkmale.ID_Vertragsmerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_WE01_VertrSpie_Sch_01_LBM

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden
	->	ER01_WE01_Vertragsspiegel_BL	

oder (falls vorhanden) 
aus F_Schaden.ID_Vertragsmerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_Waehrung IS
'Kurztext f�r die R�ckstellungsw�hrung

aus LE09_Rueckst_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.Rueckstellungsbetrag IS
'... ist der Betrag der R�ckstellung

(BEA: f�r migrierte Altsch�den: alle R�ckstellungen beim ersten Teilfall, keine R�ckstellungen f�r Kosten (in Entsch�digungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS.Rueckstellungsbetrag

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.RueckstellungsbetragInEuro IS
'... ist der Betrag, der reserviert werden soll. Die Angabe erfolgt in Euro, auch wenn sp�ter eine Zahlung in einer Fremdw�hrung erfolgt.

(BEA: f�r migrierte Altsch�den: alle R�ckstellungen beim ersten Teilfall, keine R�ckstellungen f�r Kosten (in Entsch�digungen enthalten)

aus LE09_Rueckst_SHUKR_01_HBS.RueckstellungsbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.SK_Schaden IS
'aus ER01_Schaden_SHUKR_02_HBS.FK_ER01_Schaden

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER01_Schaden_BH';

COMMENT ON COLUMN F_SchadRueckstellgn.SK_Schadenrueckstellungen IS
'aus LE09_Rueckst_SHUKR_01_HBS.FK_LE09_Rueckstellung';

COMMENT ON COLUMN F_SchadRueckstellgn.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_02_WBS.FK_ER02_Teilschaden

�ber	LE09_Rueckstellung_BH
	->	ER01_ER02_LE09_BL
	->	ER02_Teilschaden_ER01_BW';

COMMENT ON COLUMN F_SchadRueckstellgn.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel

�ber	LE09_Rueckstellung_BH 
	->	ER01_ER02_LE09_BL 
	-> 	ER01_Schaden
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden)
aus F_Schaden.SK_Vertrag
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_SchadRueckstellgn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlTote IS
'.. ist die Anzahl der Toten

aus ER01_Schaden_DWH_01_HBS.AnzahlTote

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ER01_Schaden_SHUKR_02_HBS.AnzahlToteVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlVerletzte IS
'.. ist die Anzahl der Verletzten

aus ER01_Schaden_DWH_01_HBS.AnzahlVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.BelastendeZahlungen IS
'
aus ER01_Schaden_DWH_nn_HBS.BelastendeZahlungen (zuk�nftig)

derzeit= 0 (Dummy-Wert)

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Schadenbearbeitung in Arbeitstagen bis zur ersten Entsch�digungs- oder Rentenzahlung.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $B';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Entsch IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r reine Entsch�digungsleistungen (keine Schadenregulierung) gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Rente IS
'Erste R�ckstellung, die zu einem Teilschaden f�r Rentenzahlungen angesetzt wurde. Da die Rentenr�ckstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des R�ckstellung f�r Entsch�digungsleistungen, ist im Gegensatz zur Erstr�ckstellung f�r Entsch�digungsleistungen / �u�ere SR nicht das Einrichtungsdatum ausschlaggebend.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_SRK IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r Aufwendungen f�r �u�ere Schadenregulierung gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_AbgabedatumInkasso IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.AbgabedatumInkasso';

COMMENT ON COLUMN F_Schaden.ID_Anfragedatum IS
'Anfragedatum zur Eskalation (nur Rechtsschutz)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_Schaden_Eskalat_R_01_HBS.Anfragedatum';

COMMENT ON COLUMN F_Schaden.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBSAnlagedatum';

COMMENT ON COLUMN F_Schaden.ID_Arbeitslosengeld_seit IS
'Arbeitslosengeld bewilligt ab

aus ER01_Schaden_SHUKR_02_HBS.Arbeitslosengeld_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Ausfuehrungsdatum  IS
'Ausf�hrungsdatum zur Eskalation (nur Rechtsschutz)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_Schaden_Eskalat_R_01_HBS.Ausfuehrungsdatum
';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstatusdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Bearbeitungsstatusdatum';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstelledatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Bearbeitungsstelledatum';

COMMENT ON COLUMN F_Schaden.ID_CoC_Loeschdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gel�scht werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Loeschdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_CoC_Sperrdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gesperrt werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Sperrdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Datum_1_Wiedereroeffnung';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Eintrittsdatum';

COMMENT ON COLUMN F_Schaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.GesSchaden_geaendert_am';

COMMENT ON COLUMN F_Schaden.ID_Karenzzeit_bis IS
'Arbeitslosenversicherung: Karenzzeit bis

aus ER01_Schaden_SHUKR_02_HBS.Karenzzeit_bis

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_LetzterPosteingang IS
'Datum des letzten Posteingangs

aus ER01_Schaden_SHUKR_02_HBS.LetzterPosteingang

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Loeschdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Loeschdatum';

COMMENT ON COLUMN F_Schaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Meldedatum';

COMMENT ON COLUMN F_Schaden.ID_Partnermerkm_VN IS
'Lookup auf DMK_Partnermerkmale.ID_Partnermerkmal

�ber alle zugeh�rigen Attributwerte in 
PA01_Partner..._..._01_HBS

�ber 	ER01_Schaden_BH
	->	PA01_PA02_ER01_BL	, mit Partnerrolle = VN
	->	PA01_Partner_BH

oder (falls vorhanden) Lookup auf 
DET_Partner.ID_Partnermerkmal mit 
DET_Partner.SK_Partner = this.SK_Partner_VN';

COMMENT ON COLUMN F_Schaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Schaden.ID_Region_VertragsfuehStelle IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

�ber 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	';

COMMENT ON COLUMN F_Schaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle';

COMMENT ON COLUMN F_Schaden.ID_SammelereignisKlasse IS
'... ist die Sammelereignisklasse zum Sammelereignis gem. ID_Sammelereignis

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse 

�ber	ER01_Schaden_BH
	->	ER00_ER01_SammelergSchaden_BL
	->	ER00_Sammelereignis_BH
mit MAX(ER00_Sammelereignis_man_01_HBS. FK_ER00_Sammelereignis) 

oder �ber
ER00_Sammelereignis_man_01_HBS. FK_ER00_Sammelereignis
= this.ID_NatKatEreignis';

COMMENT ON COLUMN F_Schaden.ID_SchadUrsacheGef IS
'Lookup auf DMK_SchadUrsacheGef.ID_SchadUrsacheGef

�ber
DMK_SchadUrsacheGef.Spartenliste_ID = ER01_Schaden_DWH_01_HBS. C_Dim_Schadengrund
';

COMMENT ON COLUMN F_Schaden.ID_SchadenFlags IS
'... ist die identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN F_Schaden.ID_Schadenmerkmale IS
'... ist die identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN F_Schaden.ID_Schadenortmerkmale IS
'Lookup auf DMK_SchadenOrtMerkm.ID_Schadenortmerkmale

�ber alle zugeh�rigen Attributwerte in 
GE01_Gebiet_Sch_01_HBS

�ber	ER01_Schaden_BH
	->	GE01_ER01_Schadenort_BL
	->	GE01_Gebiet_BH';

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Schadenschlussmeldedatum';

COMMENT ON COLUMN F_Schaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus ER01_SCHADEN_SHUKR_02_HBS.C_Bearbeitungsstatus';

COMMENT ON COLUMN F_Schaden.ID_Spartenkennziffer IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Sparte';

COMMENT ON COLUMN F_Schaden.ID_UKZ IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Risikotraeger

�ber  	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	
';

COMMENT ON COLUMN F_Schaden.ID_Versicherungsart IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Versicherungsart';

COMMENT ON COLUMN F_Schaden.ID_Vertragsmerkmale IS
'Lookup auf DMK_Vertragsmerkmale.ID_Vertragsmerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_WE01_VERTRSPIE_SCH_01_LBM
�ber  	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	';

COMMENT ON COLUMN F_Schaden.ID_Waehrung IS
'Limit- und Selbstbehaltw�hrung aus dem Vertrag zum Schaden

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Waehrung

�ber	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz1 IS
'... ist die W�hrung f�r den Streitwert 1. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz1

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz2 IS
'... ist die W�hrung f�r den Streitwert 2. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz2

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz3 IS
'... ist die W�hrung f�r den Streitwert 3. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz3

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_aussergeri IS
'... ist die W�hrung f�r den Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_aussergeri

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Wiedervorlage IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Wiedervorlagedatum';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_VNSicht_seit IS
'Arbeitslos aus VN-Sicht seit

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_VNSicht_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_seit IS
'Arbeitslos gemeldet zum

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.geaendert_am';

COMMENT ON COLUMN F_Schaden.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu s�mtlichen Vertr�gen

aus ER01_Schaden_SHUKR_02_HBS.JahresbeitragKunde

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Entsch IS
'Initial-Summe gesicherte Regresse auf Entsch�digungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Entsch�digungsleistungen, die als realisierbare Forderungen angesehen werden (�gesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Rente IS
'Initial-Summe gesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (�gesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_SRK IS
'Initial-Summe gesicherte Regresse auf �u�ere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen bzgl  �u�ere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (�gesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen IS
'Offene gesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (�gesichert�) abzgl. der Zahlungseing�nge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Entsch IS
'Initial-Summe ungesicherte Regresse auf Entsch�digungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Entsch�digungsleistungen, die als unsicher angesehen werden (�ungesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Rente IS
'Initial-Summe ungesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (�ungesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_SRK IS
'Initial-Summe ungesicherte Regresse auf �u�ere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen bzgl  �u�ere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (�ungesichert�). Nicht betrachtet werden Regresseing�nge, also tats�chliche Zahlungseing�nge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Entsch IS
'Offene ungesicherte Regresse Entsch�digungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Entsch�digungsleistungen, die als unsicher angesehen werden (�ungesichert�) abzgl. der Zahlungseing�nge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Rente IS
'Offene ungesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (�ungesichert�) abzgl. der Zahlungseing�nge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_SRK IS
'Offene ungesicherte Regresse �u�ere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt urspr�nglich eingestellten Regressforderungen bzgl  �u�ere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (�ungesichert�) abzgl. der Zahlungseing�nge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckkaufbetrag IS
'Betrag im Kfz-Bereich, den der Versicherungsnehmer f�r den Schaden selbst getragen oder zur�ckgezahlt hat, um eine R�ckstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

aus ER01_Schaden_DWH_01_HBS.Rueckkaufbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Entsch IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Rente IS
'Reine Rentenr�ckstellung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens f�r Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_SRK IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellungen_saldiert IS
'Saldierte Schadenr�ckstellungen
Summe aller zum Betrachtungszeitpunkt noch vorhandenen R�ckstellungen f�r Entsch�digungen, �u�ere Schadenregulierung und Renten eines Schadens. Offene Anteile gesicherter Regresse werden dabei ber�cksichtigt.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SK_NatKatEreignis IS
'aus MAX(ER00_Sammelereignis_man_01_HBS. FK_ER00_Sammelereignis) 

�ber	ER01_Schaden_BH
	->	ER00_ER01_SammelergSchaden_BL
	->	ER00_Sammelereignis_BH

Bea: Es kann mehrere Sammelereignisse zu Schaden geben, daher MAX

';

COMMENT ON COLUMN F_Schaden.SK_Partner_VN IS
'aus PA01_PA02_ER01_BL.FK_PA01_Partner

�ber 	ER01_Schaden_BH
	->	PA01_PA02_ER01_BL	
mit Partnerrolle = VN

Bea: Wird mehr als ein g�ltiger Versicherungsnehmer gefunden, so, wird der mit dem gr��ten fachlichen Beginn verwendet.


';

COMMENT ON COLUMN F_Schaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_02_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.SK_Schadenort IS
'Business Key des Eintrags in die Dimension.
Zusammensetzung:
Adress_Id_A

aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

�ber	ER01_Schaden_BH
	->	GE01_ER01_Schadenort_BL
	->	GE01_Gebiet_BH

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel

�ber  ER01_Schaden_BH
	->ER01_WE01_Vertragsspiegel_BL	

Wird mehr als ein g�ltiger Vertrag  gefunden, so wird der oberste Vertrag gem. folgender Sortierung genommen: 
1.)	Sortierung nach Gueltig_beginn absteigend (neuester oben)
2.)	Sortierung nach C_Risikotraeger (kleinster Wert oben)
3.)	Sortierung nach Versicherungsscheinnummer_A (Sortierung egal)
';

COMMENT ON COLUMN F_Schaden.Schadenaufwand_ohne_IK IS
'Schadenaufwand ohne innere Kosten

Gesamter Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseing�nge, R�ckstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht ber�cksichtigt, ebenso innere Kosten.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz1 IS
'Streitwert 1. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz1

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz2 IS
'Streitwert 2. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz2

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_Instanz3 IS
'Streitwert 3. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_Instanz3

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Streitwert_aussergeri IS
'Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.Streitwert_aussergeri

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Entsch IS
'Summe reine Entsch�digungszahlungen

Die Summe der reinen Entsch�digungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers f�r Entsch�digungsleistungen. Nicht eingerechnet werden dabei Zahlungen f�r die Schadenregulierung und auch keine Zahlungseing�nge. Umbuchungen werden hingegen betrachtet.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers f�r Renten. Explizit nicht eingerechnet werden dabei Zahlungseing�nge. Umbuchungen m�ssen dagegen ber�cksichtigt werden.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_SRK IS
'Summe reine Aufwendungen �u�ere Schadenregulierung

Die Summe der reinen Aufwendungen f�r �u�ere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers f�r die �u�ere Schadenregulierung des (Teil-)Schadens. Zahlungseing�nge werden dabei nicht ber�cksichtigt, Umbuchungen dagegen schon.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Schadens zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden alle Ausgangszahlungen und Regresseing�nge (gesichert und ungesichert).

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.Anzahl_gesteuerte_Schaeden IS
'Anzahl der gesteuerten Sch�den

aus MD34_Schadensteuerung.Anzahl_Schaeden

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.ID_Art_Schadensteuerung IS
'aus MD34_Schadensteuerung.Art_Schadensteuerung_kurz';

COMMENT ON COLUMN F_Schadensteuerung.ID_Ereignisart IS
'aus MD34_Schadensteuerung.ID_Ereignisart

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.ID_Steuerungsdatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus MD34_Schadensteuerung.Steuerungsdatum';

COMMENT ON COLUMN F_Schadensteuerung.ID_zust_SBGruppe IS
'ID der Sachbearbeitergruppe, in deren Zust�ndigkeit die gesteuerten Sch�den fallen. 

aus MD34_Schadensteuerung.Sachbearbeitergruppe_kurz

Datenschutz $-?';

COMMENT ON COLUMN F_Schadensteuerung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schadensteuerung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugeh�rigen Gerichtsprozesse. 

aus ER02_Teilschaden_DWH_02_WBS. AnzahlGerichtsverfahren

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Anzahl_Familienangehoerige IS
'Anzahl der Familienangehoerigen (des VN/ der versicherten Person?) unter den verungl�ckten Personen

aus ER02_Teilschaden_SHUKR_02_WBS.Anzahl_Familienangehoerige

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Anzahl_Insassen IS
'Anzahl der Insassen in einem verungl�ckten Fahrzeug

aus ER02_Teilschaden_SHUKR_02_WBS.Anzahl_Insassen

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Teilschadenbearbeitung in Werktagen bis zur ersten Entsch�digungs- oder Rentenzahlung.

select	min( Werktag_Nr_ab_Stichtag) - Durchlaufzeit__Beginn (+1 ???)
from	LE01_Zahlung_SHUKR_01_HBS	sat,
			ER01_ER02_LE01_BL						link,
			RE01_Kalender_DWH_01_HBS	bis
where	bis.FK_RE01_Kalender= ???
and		bis.Datum = sat.Buchgungsdatum, sat.Belegdatum, sat.Nettofaellifkeit ???
and		link.FK_ER02_Teilschaden = FK_ER02_Teilschaden

--> Historie beachten !!!
--> Zahlungen qualifizieren (Leistungsart?)

aus ER02_Teilschaden_DWH_02_WBS. Durchlaufzeit_1_Zahlung_B

Datenschutz $B';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Entsch IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r reine Entsch�digungsleistungen (keine Schadenregulierung) gesetzt wurde.

aus ER02_Teilschaden_DWH_02_WBS. Erstrueckstellung_Entsch

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Rente IS
'Erste R�ckstellung, die zu einem Teilschaden f�r Rentenzahlungen angesetzt wurde. Da die Rentenr�ckstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des R�ckstellung f�r Entsch�digungsleistungen, ist im Gegensatz zur Erstr�ckstellung f�r Entsch�digungsleistungen / �u�ere SR nicht das Einrichtungsdatum ausschlaggebend.

aus ER02_Teilschaden_DWH_02_WBS. Erstrueckstellung_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_SRK IS
'R�ckstellung, die am Einrichtungstag des Teilschadens f�r Aufwendungen f�r �u�ere Schadenregulierung gesetzt wurde.

aus ER02_Teilschaden_DWH_02_WBS. Erstrueckstellung_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Datum_1_Wiedereroeffnung

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Datum_1_Wiedereroeffnung
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Eintrittsdatum

�ber	ER02_Teilschaden_ER02_BW 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Eintrittsdatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Erfassungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER02_Teilschaden_SHUKR_02_WBS.angelegt_am';

COMMENT ON COLUMN F_Teilschaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.GesSchaden_geaendert_am

�ber	ER02_Teilschaden_ER02_BW 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_GesSchaden_geaendert_am
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Invaliditaet_Beginn_B IS
'Geltendmachung Invalidit�t

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER02_Teilschaden_SHUKR_02_WBS.Invaliditaet_Beginn_B

Datenschutz $B';

COMMENT ON COLUMN F_Teilschaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Meldedatum

�ber	R02_Teilschaden_ER01_BW 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Meldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Partnerm_AuslBuero IS
'Lookup auf DET_Partner.ID_Partnermerkmal 

mit		PA01_PA02_ER02_BL
	->	DET_Partner

�ber	ER02_Teilschaden_ER01_BW 
	->	PA01_PA02_ER02_BL
	->	PA02_PartnerRolle_Par_01_HBS.RollenId = Auslandsb�ro (=�ZFAG� = 2469)

Bea: Wird mehr als ein g�ltiger Partner gefunden, so, wird der mit dem gr��ten FACHLICH_BEGINN verwendet


	

';

COMMENT ON COLUMN F_Teilschaden.ID_Partnermerkm_VN IS
'Lookup auf DMK_Partnermerkmale.ID_Partnermerkmal

�ber alle zugeh�rigen Attributwerte in 
PA01_Partner..._..._01_HBS

�ber 	ER02_Teilschaden_ER01_BW
	->	ER01_Schaden_BH
	->	PA01_PA02_ER01_BL	, mit Partnerrolle = VN
	->	PA01_Partner_BH

oder (falls vorhanden) Lookup auf 
DET_Partner.ID_Partnermerkmal mit 
DET_Partner.SK_Partner = this.SK_Partner_VN';

COMMENT ON COLUMN F_Teilschaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Region_Bearbeitungsstelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Region_VertragsfuehStelle IS
'zu ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	
	
oder (falls vorhanden)
aus F_Schaden.ID_Region_VertragsfuehStelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Region_anlegende_Stelle
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_SchadUrsacheGef IS
'Lookup auf DMK_SchadUrsacheGef.ID_SchadUrsacheGef

�ber
DMK_SchadUrsacheGef.Spartenliste_ID = ER01_Schaden_DWH_01_HBS. C_Dim_Schadengrund

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadUrsacheGef
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_SchadenFlags IS
'Lookup auf DMK_SchadenFlags.ID_SchadenFlags 

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_01_HBS

�ber	ER02_Teilschaden_ER01_BW 
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadenFlags
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenmerkmale IS
'Lookup auf DMK_SchadenMerkmale.ID_SchadenMerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_Schaden_SHUKR_01_HBS

�ber	ER02_Teilschaden_ER01_BW 
	-> 	ER01_Schaden_BH

oder (falls vorhanden) 
aus F_Schaden.ID_SchadenMerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenortmerkmale IS
'Lookup auf DMK_SchadenOrtMerkm.ID_Schadenortmerkmale

�ber alle zugeh�rigen Attributwerte in 
GE01_Gebiet_Sch_01_HBS

�ber	ER02_Teilschaden_ER01_BW
	->	ER01_Schaden_BH
	->	GE01_ER01_Schadenort_BL
	->	GE01_Gebiet_BH

oder (falls vorhanden)
aus F_Schaden.ID_Schadenortmerkmale
zum zugeh�rigen Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER01_SCHADEN_SHUKR_02_HBS.Schadenschlussmeldedatum

�ber	ER02_Teilschaden_ER01_BW 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Schdenschlussmeldedatum
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.

aus ER01_SCHADEN_SHUKR_02_HBS.C_Bearbeitungsstatus

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH

oder (falls vorhanden)
aus F_Schaden.ID_Schadenstatus_Detail
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Spartenkennziffer IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Sparte

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Spartenkennziffer
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenFlags IS
'... ist die identifizierende Nummer, die bei der Beladung erzeugt wird.';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenMerkmale IS
'LOOKUP auf DMK_TeilschadenMerkm mit 

ER02_Teilschaden_SHUKR_02_WBS.C_Steuerung
ER02_Teilschaden_SHUKR_02_WBS.C_Teilschadenart 
ER02_Teilschaden_SHUKR_02_WBS.C_Komplexitaet
';

COMMENT ON COLUMN F_Teilschaden.ID_UKZ IS
'zu ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Risikotraeger

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

oder (falls vorhanden) 
aus F_Schaden.ID_UKZ
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Versicherungsart IS
'aus ER01_SCHADEN_SHUKR_02_HBS.C_Versicherungsart

�ber	ER02_Teilschaden_ER01_BW 
	-> 	ER01_Schaden_BH
	
oder (falls vorhanden)
aus F_Schaden.ID_Versicherungsart
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_VertragsdeckMerkmale IS
'LOOKUP auf DMK_VertragDeckMerkm. ID_VertragsdeckMerkmale  mit 

ER01_WE03_DeckSpie_SCH_01_LBS.C_Deckungsart
ER01_WE03_DeckSpie_SCH_01_LBS.C_Deckungsstatus
ER01_WE03_DeckSpie_SCH_01_LBS.C_Rueckversicherungsart
ER01_WE03_DeckSpie_SCH_01_LBS. C_KaskoMobil

�ber 	ER02_Teilschaden_ER01_BW
	->	ER01WE03_ER02_DeckSp_BL
	->	ER01_WE03_Deckungsspiegel_BL

sofern kein FK_ER01_WE03_Deckungsspiegel gefunden wird, greift folgende Ersatzregel:
aus ER01_WE03_Deckungsspiegel_BL.SK_ER01_WE03_Deckungsspiegel

�ber 	ER02_Teilschaden_ER01_BW
	->	ER01_Schaden_BH
	->	ER01_WE03_Deckungsspiegel_BL
und  maximalem Fachlich_Gueltig_Beginn in ER01_WE03_DeckSpie_SCH_01_LBS 
';

COMMENT ON COLUMN F_Teilschaden.ID_Vertragsmerkmale IS
'Lookup auf DMK_Vertragsmerkmale.ID_Vertragsmerkmale 

�ber alle zugeh�rigen Attributwerte in 
ER01_WE01_VertrSpie_Sch_01_LBM

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL	

oder (falls vorhanden) 
aus F_Schaden.ID_Vertragsmerkmale
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus ER02_Teilschaden_SHUKR_02_WBS.geaendert_am';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_AuslBuero IS
'aus PA01_PA02_ER02_BL.FK_PA01_Partner

�ber	ER02_Teilschaden_ER01_BW 
	->	PA01_PA02_ER02_BL
	->	PA02_PartnerRolle_Par_01_HBS.RollenId = Auslandsb�ro (=�ZFAG� = 2469)

Bea: Wird mehr als ein g�ltiger Partner gefunden, so, wird der mit dem gr��ten FACHLICH_BEGINN verwendet


';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_VN IS
'aus PA01_PA02_ER01_BL.FK_PA01_Partner

�ber 	ER02_Teilschaden_ER01__BW
	->	ER01_Schaden_BH
	->	PA01_PA02_ER01_BL	
mit Partnerrolle = VN

Bea: Wird mehr als ein g�ltiger Versicherungsnehmer gefunden, so, wird der mit dem gr��ten fachlichen Beginn verwendet.

oder (falls vorhanden) 
aus F_Schaden.SK_Partner_VN
zum zugeh�rigen Schaden

';

COMMENT ON COLUMN F_Teilschaden.SK_Schaden IS
'aus ER02_Teilschaden_ER01_BW.FK_ER01_Schaden';

COMMENT ON COLUMN F_Teilschaden.SK_Schadenort IS
'Business Key des Eintrags in die Dimension.
Zusammensetzung:
Adress_Id_A

aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

�ber	ER02_Teilschaden_ER01_BW
	->	ER01_Schaden_BH
	->	GE01_ER01_Schadenort_BL
	->	GE01_Gebiet_BH

oder (falls vorhanden)
aus F_Schaden.SK_Schadenort
zum zugeh�rigen Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel

�ber	ER02_Teilschaden_ER01_BW
	-> 	ER01_Schaden_BH
	->	ER01_WE01_Vertragsspiegel_BL

oder (falls vorhanden)
aus F_Schaden.SK_Vertrag
zum zugeh�rigen Schaden';

COMMENT ON COLUMN F_Teilschaden.SK_Vertragsdeckung IS
'aus ER01WE03_ER02_DeckSp_BL. FK_ER01_WE03_Deckungsspiegel

�ber 	ER02_Teilschaden_ER01_BW
	->	ER01WE03_ER02_DeckSp_BL

Sofern kein FK_ER01_WE03_Deckungsspiegel gefunden wird, greift folgende Ersatzregel:
aus ER01_WE03_Deckungsspiegel_BL.SK_ER01_WE03_Deckungsspiegel

�ber 	ER02_Teilschaden_ER01_BW
	->	ER01_Schaden_BH
	->	ER01_WE03_Deckungsspiegel_BL
und  maximalem Fachlich_Gueltig_Beginn in ER01_WE03_DeckSpie_SCH_01_LBS 
(falls es mehrere g�ltige Deckungen geben sollte, wird das mit maximalem fachlichem G�ltig_beginn genommen -> es wird genau eine Deckung selektiert!)
';

COMMENT ON COLUMN F_Teilschaden.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_Entsch IS
'Summe gesicherte Regresseing�nge auf Entsch�digungszahlungen.

Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

aus ER02_Teilschaden_DWH_02_WBS. Regress_gesi_Eingang_Entsch

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_Rente IS
'Summe gesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER02_Teilschaden_DWH_02_WBS. Regress_gesi_Eingang_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_gesi_Eing_SRK IS
'Summe gesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

aus ER02_Teilschaden_DWH_02_WBS. Regress_gesi_Eingang_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_Entsch IS
'Summe ungesicherte Regresseing�nge auf Entsch�digungszahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entsch�digungszahlungen.

ER02_Teilschaden_DWH_02_WBS. Regress_ungesi_Eingang_Entsch

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_Rente IS
'Summe ungesicherte Regresseing�nge auf Rentenzahlungen.
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER02_Teilschaden_DWH_02_WBS. Regress_ungesi_Eingang_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Regr_unges_Eing_SRK IS
'Summe ungesicherte Regresseing�nge auf �u�ere Schadenregulierungsaufwendungen
Enth�lt alle Zahlungseing�nge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  �u�ere Schadenregulierungsaufwendungen.

aus ER02_Teilschaden_DWH_02_WBS. Regress_ungesi_Eingang_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Entsch IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER02_Teilschaden_DWH_02_WBS. Teilsch_Rueckst_rein_Entsch

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenr�ckstellung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens f�r Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER02_Teilschaden_DWH_02_WBS. Teilsch_Rueckst_rein_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_SRK IS
'Reine R�ckstellung f�r �u�ere Schadenregulierung
R�ckstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens f�r Aufwendungen der �u�eren Schadenregulierung noch existiert, also nicht durch Aufwendungen f�r die �u�ere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen m�ssen ber�cksichtigt werden, Zahlungseing�nge hingegen nicht.

aus ER02_Teilschaden_DWH_02_WBS. teilsch_Rueckst_rein_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Entsch IS
'Summe reine Entsch�digungszahlungen

Die Summe der reinen Entsch�digungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers f�r Entsch�digungsleistungen. Nicht eingerechnet werden dabei Zahlungen f�r die Schadenregulierung und auch keine Zahlungseing�nge. Umbuchungen werden hingegen betrachtet.

aus ER02_Teilschaden_DWH_02_WBS. Teilsch_Zahlung_rein_Entsch

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers f�r Renten. Explizit nicht eingerechnet werden dabei Zahlungseing�nge. Umbuchungen m�ssen dagegen ber�cksichtigt werden.

aus ER02_Teilschaden_DWH_02_WBS. Teilsch_Zahlung_rein_Rente

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_SRK IS
'Summe reine Aufwendungen �u�ere Schadenregulierung

Die Summe der reinen Aufwendungen f�r �u�ere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers f�r die �u�ere Schadenregulierung des (Teil-)Schadens. Zahlungseing�nge werden dabei nicht ber�cksichtigt, Umbuchungen dagegen schon.

aus ER02_Teilschaden_DWH_02_WBS. Teilsch_Zahlung_rein_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Ber�cksichtigt werden alle Ausgangszahlungen und Regresseing�nge (gesichert und ungesichert).

aus ER02_Teilschaden_DWH_02_WBS. Zahlungen_saldiert

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.Anzahl_Telegutachten IS
'Anzahl der Telegutachten im Bereich Kraftfahrt Haftpflicht, Kraftfahrt Kasko und Allgemeine Haftpflicht (hier nur Privathaftpflicht)

aus MD28_Telegutachten.Anzahl_Telegutachten_KH f�r Kraftfahrt Haftpflicht,
aus MD28_Telegutachten.Anzahl_Telegutachten_KK f�r Kraftfahrt Kasko,
aus MD28_Telegutachten.Anzahl_Telegutachten_PH f�r Allgemeine Haftpflicht

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.ID_Datum_Gueltig_Beginn IS
'aus MD28_Telegutachten.gueltig_beginn
 
Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.ID_Datum_Gueltig_Ende IS
'aus MD28_Telegutachten.gueltig_ende

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.ID_Regionaldirektion IS
'aus MD28_Telegutachten.ID_Regionaldirektion

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.ID_Sparte IS
'... ist die Sparte, zu der die Telegutachten geh�ren, also Kraftfahrt Haftpflicht, Kraftfahrt Kasko oder Allgemeine Haftpflicht (hier nur Privathaftpflicht)

aus MD28_Telegutachten.Anzahl_Telegutachten_KH f�r Kraftfahrt Haftpflicht,
aus MD28_Telegutachten.Anzahl_Telegutachten_KK f�r Kraftfahrt Kasko,
aus MD28_Telegutachten.Anzahl_Telegutachten_PH f�r Allgemeine Haftpflicht

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.SK_Telegutachten IS
'aus MD28_Telegutachten.ID_Regionaldirektion~MD28_Telegutachten.gueltig_beginn~this.ID_Sparte 

dabei ist this.ID_Sparte gef�llt wie das Attribut ID_Sparte in dieser Tabelle, also:
- aus MD28_Telegutachten.Anzahl_Telegutachten_KH: Kraftfahrt Haftpflicht,
- aus MD28_Telegutachten.Anzahl_Telegutachten_KK: Kraftfahrt Kasko,
- aus MD28_Telegutachten.Anzahl_Telegutachten_PH: Allgemeine Haftpflicht

Datenschutz $-
';

COMMENT ON COLUMN F_Telegutachten.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

aus MD28_Telegutachten.TA_Lade_ID

Datenschutz $-';

COMMENT ON COLUMN F_Telegutachten.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

aus MD28_Telegutachten.TA_Ladedatum

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Verl_Person.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Verl_Person.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Verl_Person.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Verl_Person.ID_Sterbedatum IS
'Sterbedatum

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus PA01_PA02_ER01_SHUKR_02_LBS.Sterbedatum

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Verl_Person.ID_geaendert_am IS
'...  ist der Zeitpunkt der letzten �nderung

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus PA01_PA02_ER01_SHUKR_02_LBS.geaendert_am

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.SK_Partner_VerlPers IS
'aus PA01_PA02_ER01_BL.FK_PA01_Partner';

COMMENT ON COLUMN F_Verl_Person.SK_Schaden IS
'aus PA01_PA02_ER01_BL.FK_ER01_Schaden';

COMMENT ON COLUMN F_Verl_Person.SK_Verl_Person IS
'aus PA01_PA02_ER01_SHUKR_02_LBS.FK_PA01_PA02_ER01';

COMMENT ON COLUMN F_Verl_Person.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Verl_Person.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Todesfall IS
'Kennzeichen: Todesfall?

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_Todesfall

Datenschutz $-';

COMMENT ON COLUMN F_Verl_Person.Verletzungen_B IS
'Kennzeichen: Bestehende Verletzungen?

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_Verletzungen_B

Datenschutz $B';

COMMENT ON COLUMN F_Verl_Person.selbstaendig IS
'selbst�ndig

ja / nein/ unzutreffend

aus PA01_PA02_ER01_SHUKR_02_LBS.C_selbstaendig

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.Anzahl_Zahlungen IS
'Anzahl der Zahlungen. Alternativ kann man auch �ber SK_Zahlungen_Hist z�hlen, nicht aber �ber SK_Zahlung, da diese Spalte bei den Regresseing�ngen aus CD f�r Zahlungseing�nge an verschiedenen Tagen identisch ist.';

COMMENT ON COLUMN F_Zahlung.Betrag IS
'... ist der Gesamtbetrag der Zahlung -- Summe der Teilzahlungen?

aus LE01_Zahlung_SHUKR_01_HBS.Betrag

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.BetragInEuro IS
'... ist der Gesamtbetrag der Zahlung in Euro -- Summe der Teilzahlungen in Euro?

aus LE01_Zahlung_SHUKR_01_HBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.ID_Abgabedatum IS
'Abgabedatum der Forderung (an externes Inkasso o.�.)

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

aus LE01_Zahlung_SHUKR_02_HBS.Abgabedatum

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_ForderungBuchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_ForderungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.ID_ForderungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_Nettofaelligkeit IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zahlung.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zahlung.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zahlung.ID_Region_zahlungsausloesend IS
'aus LE01_Zahlung_DWH_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zahlung.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zahlung.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zahlung.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Zahlung.ID_UKZ IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Risikotraeger';

COMMENT ON COLUMN F_Zahlung.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.ID_ZahlungBelegdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_ZahlungBuchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.ID_ZahlungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.ID_ZahlungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung.SK_Forderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zahlung.SK_Partner_ZahlEmp IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zahlung.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zahlung.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zahlung.SK_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.FK_ER01_WE01_Vertragsspiegel';

COMMENT ON COLUMN F_Zahlung.SK_Zahlung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung.SK_Zahlung_Hist IS
'Schl�ssel f�r die Historisierung: bei generierten Zahlungseing�ngen aus FS-CD abweichend von SK_Zahlung: aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung + Ausgleichsbuchungsdatum CD';

COMMENT ON COLUMN F_Zahlung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.Anzahl_Zahlungen_Detail IS
'Anzahl der Zahlungspositionen - zum Z�hlen der Zahlungspositionen. Alternativ kann man auch �ber SK_Zahlung_Detail_Hist z�hlen, nicht aber �ber SK_Zahlung_Detail, da letztere Spalte bei den Regresseing�ngen aus CD f�r Zahlungseing�nge an verschiedenen Tagen und den unterschiedlichen Leistungsarten identisch ist.';

COMMENT ON COLUMN F_Zahlung_Detail.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ForderungBuchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ForderungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ForderungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Region_zahlungsausloesend IS
'aus LE01_Zahlung_DWH_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zahlung_Detail.ID_RegressMerkmale IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gew�hlt, dass sie mit der ID in SAP-CM �bereinstimmt.';

COMMENT ON COLUMN F_Zahlung_Detail.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ZahlungBuchungsdatum IS
'... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. 

aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ZahlungDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ZahlungFlags IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.ID_ZahlungMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.ID_geaendert_am IS
' ...  ist der Zeitpunkt der letzten �nderung. 

aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am

Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Forderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Partner_ZahlEmp IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Regress IS
'aus LE03_Regress_SHUKR_01_HBS.FK_LE03_Regress';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Zahlung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Zahlung_Detail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zahlung_Detail.SK_Zahlung_Detail_Hist IS
'Schl�ssel f�r die Historisierung. Bei generierten Zahlungseing�ngen aus FS-CD zusammengesetzt aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung + Ausgleichsbuchungsdatum CD + Leistungsart. 

Bei Zahlungspositionen aus CM identisch zu SK_Zahlung_Detail';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.Teilbetrag IS
'... ist ein Teilbetrag einer Zahlung der sich hinsichtlich Leistungsart oder Betragsteil unterscheiden l��t.

aus LE02_Zahlung_Det_SHUKR_01_WBS.Teilbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zahlung_Detail.TeilbetragInEuro IS
'... gibt den in Euro umgerechneten Teilbetrag an.

aus LE02_Zahlung_Det_SHUKR_01_WBS.TeilbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.ID_Auswertungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_SSP_RVP_Ausw_indiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_KLUGO_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.ID_SammelereignisKlasse IS
'aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse

Repr�sentiert die Sammelereignisklasse zu ID_RV_NatKatEreignis.';

COMMENT ON COLUMN R_Schaden_RVEreign.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_RVEreign.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Regbeauftr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_SonstPartn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_VerlPerson.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.ID_Auswertungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Spartenl_AuswIndiv.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Handwerker.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Regbeauftr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_RepBetrieb.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_Sachverst.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_ServPartn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.Gueltig_Beginn IS
'Erster Stichtag, an dem der Datensatz G�ltigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.Gueltig_Ende IS
'Erster Stichtag, an dem der n�chste Datensatz g�ltig ist, also der vorliegende Datensatz keine G�ltigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr g�ltig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr g�ltig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz r�ckwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Ersatzdatum IS
'... identifiziert bei korrigierten S�tzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle S�tze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden S�tze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Teilsch_VerlPerson.TA_Ladedatum IS
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

COMMENT ON TABLE AGG_SCHADEN_1 IS
'Fokus: Meldejahr

F�hrende Quelle f�r die Bewirtschaftung dieser Aggregationstabelle sind prinzipiell die Fakt-Tabellen F_SCHADEN und F_SCHADEN_YTD (siehe Kapitel 2). Aus der folgenden Tabelle sind die Ziel-Attribute dieser Aggregation zu entnehmen. Als Abgrenzung zur AGG_SCHADEN_2 steht hier das Meldejahr und nicht der Meldemonat im Fokus. 

Da alle Attribute der AGG_SCHADEN_1 aus den Attributen der AGG_SCHADEN_2 ermittelt werden k�nnen und die Kennzahlen identisch sind, basiert aktuell der Aufbau der AGG_SCHADEN_1 direkt auf der AGG_SCHADEN_2 und nicht auf den origin�ren Fakt-Tabellen.

Anmerkung:
Im zugeh�rigen DDL steht zwischen dem Create und dem Tablespace:
SEGMENT CREATION IMMEDIATE 
   PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
';

COMMENT ON TABLE AGG_SCHADEN_2 IS
'Fokus: Meldemonat

F�hrende Quelle f�r die Bewirtschaftung dieser Aggregationstabelle sind prinzipiell die Fakt-Tabellen F_SCHADEN und F_SCHADEN_YTD. Als Abgrenzung zur AGG_SCHADEN_1 steht hier der Meldemonat und nicht das Meldejahr im Fokus. 
Da alle Attribute der AGG_SCHADEN_1 aus den Attributen der AGG_SCHADEN_2 ermittelt werden k�nnen und die Kennzahlen identisch sind, basiert aktuell (11.2018) der Aufbau der AGG_SCHADEN_1 direkt auf der AGG_SCHADEN_2 und nicht auf den origin�ren Fakt-Tabellen.
Die Kennzahlen werden alle als Summe aggregiert, wobei die Kennzahl ANZAHL (Anzahl Sch�den) die Summe von 1 (Anzahl Datens�tze der F_SCHADEN) darstellt.


Anmerkung:
Im zugeh�rigen DDL steht zwischen dem Create und dem Tablespace:
SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
';

COMMENT ON TABLE DET_Besch_Objekt IS
'aus OB01_Objekt_SCH_01_HBS bzw. ER01_OB01_bescObj_SHUKR_01_LBS.';

COMMENT ON TABLE DET_GerichtsInstanz IS
'aus ER04_GerInstanz_SHUKR_01_WBS';

COMMENT ON TABLE DET_Gerichtsverf IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS';

COMMENT ON TABLE DET_Ges_Schaden_Aend IS
'... enth�lt Informationen zum (gesamten) Schaden, wann und an welcher Stelle dieser zuletzt geaendert wurde. 
Da fachlich keine Vollhistorie notwendig ist, muss nur der letzte �nderungszeitpunkt je Quartal gespeichert werden, 
d.h. diese Tabelle muss nur einmal je Quartal per Ultimo aktualisiert werden.
';

COMMENT ON TABLE DET_Ladelauf IS
'Protokolldatei f�r die Ladel�ufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_Last_Load IS
'Protokolldatei f�r die Ladel�ufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_NatKatEreignis IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Eintrittsdatum_Beginn
Eintrittsdatum_Ende';

COMMENT ON TABLE DET_Partner IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Geburtsdatum_A aus PA01_Partner_Par_01_HBS.Geburtsdatum_A';

COMMENT ON TABLE DET_RV_NatKatEreign IS
'aus ER06_SammelergTeil_man_01_WBS

und aus  ER06_SammelergTeil_man_01_WBS
	 	  ->	ER06_SammelereignTeil_ER00_BW
		  ->	ER00_Sammelereignis_BH
  		  ->	ER00_Sammelereignis_man_01_HBS

';

COMMENT ON TABLE DET_Regress IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Sendedatum (Benachrichtigung zur Regress-Einleitung) aus LE03_Regress_SHUKR_01_HBS.Sendedatum

geaendert_am ...  ist der Zeitpunkt der letzten �nderung aus LE03_Regress_SHUKR_01_HBS.geaendert_am

aus LE03_Regress_SHUKR_01_HBS';

COMMENT ON TABLE DET_RegressPosition IS
'aus LE04_Regresspos_SHUKR_01_WBS';

COMMENT ON TABLE DET_Schaden IS
'aus ER01_SCHADEN_SHUKR_02_HBS


folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

Schadenbearbeitungsstelle
Vertragsbearbeitende Stelle
anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle



folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum

Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Gesch�ftsjahr Auskunft dar�ber, ob es sich um einen Gesch�fts- oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum

Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal ge�ndert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum

Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. F�r den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum

Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum

angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am

GesSchaden_geaendert_am �nderungszeitpunkt der letzten �nderung im gesamten Schaden incl. Teilsch�den. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am

AbgabedatumInkasso Abgabedatum an Inkassob�ro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso

Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum

Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung

Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum



folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:

Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr

Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es z�hlt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr

Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DET_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS';

COMMENT ON TABLE DET_Schadenrueckst IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus LE09_Rueckst_SHUKR_01_HBS.geaendert_am
Buchungsdatum ... gibt das Datum an, an dem die R�ckstellung gebucht wurde. aus LE09_Rueckst_SHUKR_01_HBS.Buchungsdatum


';

COMMENT ON TABLE DET_Teilschaden IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

angelegt_am  ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER02_Teilschaden_SHUKR_01_WBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten �nderung aus ER02_Teilschaden_SHUKR_01_WBS.geaendert_am
';

COMMENT ON TABLE DET_Verl_Person IS
'aus PA01_PA02_ER01_SHUKR_02_LBS mit Partenerrolle = "verletzte Person"';

COMMENT ON TABLE DET_Vertrag IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM

folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:
vertragsfuehrendeRD	 Kurztext f�r die vertragsf�hrende RD. 	aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD';

COMMENT ON TABLE DET_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_02_HBS
- Zahlungen mit folgenden Zahlungsstatus: Gebucht, Ausgeglichen, Angefordert, Erhalten, Teilweise Erhalten, umgebuchte Zahlungen, Storniert, Verschoben

folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:
zahlungsausl�sende Stelle

folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:
Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum
Belegdatum ... Belegdatum der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Belegdatum
Nettofaelligkeit	... Nettofaelligkeit der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Nettofaelligkeit
uebergeben_am ...  ist der Zeitpunkt der �bergabe an Inkasso-/Exkassosystem. aus LE01_Zahlung_SHUKR_01_HBS.uebergeben_am
angelegt_am	... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde. aus LE01_Zahlung_SHUKR_01_HBS.angelegt_am
geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus LE01_Zahlung_SHUKR_01_HBS.geaendert_am

nach DIM_Jahr:
Buchungsjahr ... ist das Kalenderjahr, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsjahr

nach DIM_Monat:
Buchungsmonat ... ist der Kalendermonat, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsmonat';

COMMENT ON TABLE DET_ZhlgFordDetail IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am

Enth�lt auch die Information �ber Zahlungseing�nge zu Forderungen aus FS-CD unter der Zahlung_Detail_lfd "000".

aus LE02_Zahlung_Det_SHUKR_01_WBS
und aus 	LE02_Zahlung_Det_SHUKR_01_WBS
		->	LE02_Zahlung_Detail_LE01_BW 
		->	LE01_Zahlung_BH
		->	LE01_KT01_BELEG_BL
		->	KT01_Beleg_BH
		->	KT01_Beleg_InEx_01_HBS

oder aus FSCD nur aus KT01_Beleg_InEx_01_HBS';

COMMENT ON TABLE DIM_Abgabestatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: STATUS_FORDERUNGSABGABE)';

COMMENT ON TABLE DIM_AbschlussVerf IS
'aus SC02_Schluesselbedeutung
(Dom�ne: PROZESSAUSGANG_ART)
';

COMMENT ON TABLE DIM_Akademiker IS
'aus SC02_Schluesselbedeutung
(Dom�ne: AKADEMIKERTITEL)';

COMMENT ON TABLE DIM_ArtGerichtlicheMahn IS
'Dimensionstabelle zur Art des Gerichtlichen Mahnverfahrens.

aus SC02_Schluesselbedeutung 
(Dom�ne: STATUS_GERICHTL_MAHNVERF)';

COMMENT ON TABLE DIM_Art_Schadenst IS
'aus MD34_Schadensteuerung';

COMMENT ON TABLE DIM_AusgangVerfahren IS
'aus SC02_Schluesselbedeutung
(Dom�ne: PROZESSAUSGANG)
';

COMMENT ON TABLE DIM_Auswertung_indiv IS
'Enth�lt die Knoten innerhalb der Auswertungsbereiche

aus MD26_Auswertung_individuell';

COMMENT ON TABLE DIM_Auswertungsber IS
'Enth�lt den Auswertungsbereich, also die Sicht auf die Daten, f�r die eine individuelle Aggregationsschicht �ber Spartenlisten-Eintr�ge definiert wird, z.B.

- Proris
- Spartensicht f�r VIII

aus MD26_Auswertung_individuell';

COMMENT ON TABLE DIM_Bedingungsschl IS
'dies dient als Vorrat,
zun�chst mit Dummy (konstant=-1) gef�llt,
danach aus SC02_Schluesselbedeutung (noch keine Dom�ne).';

COMMENT ON TABLE DIM_BerufungRevdurch IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BERUFUNGSVERURSACHER)';

COMMENT ON TABLE DIM_BeschaedigGrad IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BESCHAEDIGUNGSGRADE)';

COMMENT ON TABLE DIM_BeschaedigTyp IS
'aus SC02_Schluesselbedeutung
(Dom�ne: OBJEKTKATEGORIEN)';

COMMENT ON TABLE DIM_BestandsbezArt IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BESTANDSBEZIEHUNGSART)';

COMMENT ON TABLE DIM_Betragstyp IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BETRAGSART)';

COMMENT ON TABLE DIM_Bewertung_VTP IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BEWERTUNG_VTP)';

COMMENT ON TABLE DIM_Bilanz_Meldeper IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BILANZ_MELDEPERIODE)';

COMMENT ON TABLE DIM_BruttoNetto IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BRUTTO_NETTO)';

COMMENT ON TABLE DIM_CodeOrt IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SAP_CM_ADRCITYT)';

COMMENT ON TABLE DIM_CodeOrtsteil IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SAP_CM_ADRCITYPRTT)';

COMMENT ON TABLE DIM_Datum IS
'Allgemeine Dimension Zeit, die ausgehend vom Datum alle weiteren Eigenschaften enth�lt. Sollte allgemein f�r Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

COMMENT ON TABLE DIM_Deckungsart IS
'aus 	SC02_Schluesselbedeutung
und	SC07_Harmonisierung
(Dom�ne: DECKUNGSARTEN und RAW_Attributname: C_Deckungsart)';

COMMENT ON TABLE DIM_DeckungsschlK IS
'aus SC02_Schluesselbedeutung
(Dom�ne: KASKODECKUNGEN)';

COMMENT ON TABLE DIM_DeckungsschlKH IS
'aus SC02_Schluesselbedeutung
(Dom�ne: KFZ_HAFTPFLICHTDECKUNGEN)
';

COMMENT ON TABLE DIM_Deckungsstatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ICL_COVSTATUS)';

COMMENT ON TABLE DIM_Dunkelverarbeitg IS
'aus SC02_Schluesselbedeutung
(Dom�ne: DUNKELVERARBEITUNG)';

COMMENT ON TABLE DIM_Ereignisart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SCHADENARTEN)';

COMMENT ON TABLE DIM_Ereignisklasse IS
'Aggregationen �ber Gefahren mit gleichem Ereignis, z.B. "Feuer", "Leitungswasser", "Sturm",...

aus MD15_Schadenursache ';

COMMENT ON TABLE DIM_Erledig_im_Verf IS
'Erledigungszeitpunkt im Verfahren

aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSVERFAHRENERLEDIGUNGSZEITEN)

';

COMMENT ON TABLE DIM_Erledigungsart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSVERFAHRENSERGEBNIS)
';

COMMENT ON TABLE DIM_Eskalationsstufe IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ESKALATIONSSTUFEN)';

COMMENT ON TABLE DIM_Fachgebiet IS
'aus SC02_Schluesselbedeutung
(Dom�ne: FACHGEBIET_RECHTSSCHUTZ)
';

COMMENT ON TABLE DIM_FallzahlPostTyp IS
'aus SC02_Schluesselbedeutung
(Dom�ne: TEILZAHLUNGSKATEGORIEN)';

COMMENT ON TABLE DIM_Familienstand IS
'aus SC02_Schluesselbedeutung
(Dom�ne: FAMILIENSTAND)';

COMMENT ON TABLE DIM_Gefahr IS
'aus MD15_Schadenursache ';

COMMENT ON TABLE DIM_Geltungsbereich IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GELTUNGSBEREICH)
';

COMMENT ON TABLE DIM_Gerichtsbarkeit IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSBARKEIT)';

COMMENT ON TABLE DIM_GeschBezFirma IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GESCHAEFTSBEZIEHUNG_FIRMA)';

COMMENT ON TABLE DIM_GeschBezTaetigk IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GESCHAEFTSBEZIEHUNG_STELLUNG)';

COMMENT ON TABLE DIM_Geschlecht IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GESCHLECHT)';

COMMENT ON TABLE DIM_Grosskunde IS
'aus SC02_Schluesselbedeutung
(Dom�ne: KUNDENART)

zu MD27_Grosskundenvertraege
';

COMMENT ON TABLE DIM_Haftung IS
'aus SC02_Schluesselbedeutung
(Dom�ne: HAFTUNGSEINSCHAETZUNG)';

COMMENT ON TABLE DIM_Halbjahr IS
'Dimensionstabelle f�r Halbjahre, die f�r alle Halbjahresangaben genutzt werden sollte.';

COMMENT ON TABLE DIM_Instanzstatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSINSTANZSTATUS)';

COMMENT ON TABLE DIM_JNKENNZ IS
'Lookup Tabelle f�r MicroStrategy

Diese Dimension dient der Erstellung von Auswahl-M�glichkeiten der Eingabe in MStr, ohne Selects �ber gro�e Tabellen f�hren zu m�ssen. Auf die Anbindung durch Fremdschl�ssel wird im Modell verzichtet.

Die Bef�llung wird durch Skript im Rahmen der ETL-Prozesse erledigt, eine Vorgabe in den Transformationsbeschreibungen gibt es nicht.';

COMMENT ON TABLE DIM_Jahr IS
'Dimensionstabelle f�r Jahre, die f�r alle Jahresangaben genutzt werden sollte, z.B. Gesch�ftsjahre, Anfalljahre, Ereignisjahre, Meldejahre etc.';

COMMENT ON TABLE DIM_KlassifizRueckst IS
'Klassifizierungsart f�r einen Betrag
(wie KAZ aus SDS)

aus SC02_Schluesselbedeutung
(Dom�nen: REGRESS_KLASSIFIZIERUNGSART und RUECKST_KLASSIFIZIERUNGSART)';

COMMENT ON TABLE DIM_KlassifizSchluss IS
'aus SC02_Schluesselbedeutung
(Dom�ne: KLASSIF_SCHADENSCHLUSS)';

COMMENT ON TABLE DIM_Land_Nation IS
'aus SC02_Schluesselbedeutung
(Dom�ne: LAENDERCODES)';

COMMENT ON TABLE DIM_Leistungsart IS
'Dimensionstabelle der Leistungsarten

aus 	SC02_Schluesselbedeutung
und SC07_Harmonisierung
(Dom�ne: LEISTUNGSARTEN und RAW-Attributname: C_Leistungsart_B)';

COMMENT ON TABLE DIM_Meldeweg IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SCHADENMELDEWEGE)';

COMMENT ON TABLE DIM_Monat IS
'Dimensionstabelle f�r Monate, die f�r alle Monatsangaben genutzt werden sollte.';

COMMENT ON TABLE DIM_ObjektArt IS
'aus SC02_Schluesselbedeutung 
(Dom�ne: OBJEKTSUBKATEGORIEN)';

COMMENT ON TABLE DIM_PartnerObjekttyp IS
'aus MD15_Schadenursache ';

COMMENT ON TABLE DIM_PartnergemArt IS
'Partnergemeinschaftsart

aus SC02_Schluesselbedeutung
(Dom�ne: PARTNERGEMEINSCHAFTSART)';

COMMENT ON TABLE DIM_Partnertyp IS
'aus SC02_Schluesselbedeutung
(Dom�ne: PARTNERTYPEN)';

COMMENT ON TABLE DIM_Postleitzahl IS
'aus GE01_Gebiet_Sch_01_HBS.Postleitzahl_A
sowie
aus GE05_Anschrift_Par_01_HBS. Postleitzahl_A';

COMMENT ON TABLE DIM_Produkt IS
'aus SC02_Schluesselbedeutung
(Dom�ne: POLICENPRODUKTE)';

COMMENT ON TABLE DIM_Quartal IS
'Dimensionstabelle f�r Quartale, die f�r alle Quartalsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_RD_Ebene1 IS
'... ist die erste Ebene der Hierarchie der Regionaldirektionen und stellt die heute g�ltigen RD�en dar, w�hrend die unterste Ebene die origin�ren (auch ehemals g�ltigen RD�en) enth�lt

aus MD16_Regionaldirektion';

COMMENT ON TABLE DIM_RD_Ebene2 IS
'... ist die zweite Ebene der Hierarchie der Regionaldirektionen und stellt die heute g�ltigen Direktionsbereiche dar.

aus MD16_Regionaldirektion

N			Nord  			bestehend gem�� Ebene1 aus: 	Hannover, Hamburg, M�nster
O			Ost  			bestehend gem�� Ebene1 aus:	Berlin, Schwerin, Erfurt, Dresdenr 
W			West  			bestehend gem�� Ebene1 aus: 	K�ln, Essen, Wuppertal
SW		S�dwest		bestehend gem�� Ebene1 aus:	Mainz, Frankfurt, Kassel, Saarbr�cken 
S			S�d  			bestehend gem�� Ebene1 aus:	N�rnberg, Karlsruhe, Stuttgart, M�nchen, Regensburg 
Z			Zentrale		bestehend gem�� Ebene1 aus:	Zentrale

Datenschutz $-';

COMMENT ON TABLE DIM_RD_Ebene3 IS
'... ist die oberste Ebene der Hierarchie der Regionaldirektionen (z.B. BRD)

aus MD16_Regionaldirektion';

COMMENT ON TABLE DIM_Rechtsform IS
'aus SC02_Schluesselbedeutung
(Dom�ne: RECHTSFORMEN)';

COMMENT ON TABLE DIM_RechtswegEbene IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSVERFAHRENINSTANZEN)';

COMMENT ON TABLE DIM_Region IS
'aus SC02_Schluesselbedeutung
(Dom�ne: LAENDERREGIONEN)';

COMMENT ON TABLE DIM_Regionaldir IS
'aus MD16_Regionaldirektion';

COMMENT ON TABLE DIM_Regressart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: REGRESSARTEN)';

COMMENT ON TABLE DIM_Regressgrund IS
'aus SC02_Schluesselbedeutung
(Dom�ne: REGRESSGRUENDE)';

COMMENT ON TABLE DIM_Regresspotential IS
'aus SC02_Schluesselbedeutung
(Dom�ne: REGRESSPOTENTIAL)';

COMMENT ON TABLE DIM_Regressstatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: REGRESSSTATUS)';

COMMENT ON TABLE DIM_RueckstAendGrund IS
'aus SC02_Schluesselbedeutung
(Dom�ne: AENDERUNGSGRUENDE RUECKSTELLUNG)';

COMMENT ON TABLE DIM_RueckstBetrArt IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BETRAGSART)';

COMMENT ON TABLE DIM_RueckstSetzMeth IS
'aus SC02_Schluesselbedeutung
(Dom�ne: RESERVIERUNGSMETHODEN)';

COMMENT ON TABLE DIM_RueckversichArt IS
'aus SC02_Schluesselbedeutung
(Dom�ne: RUECKVERSICHERUNGSART)

';

COMMENT ON TABLE DIM_Rueckversicherg IS
'Art der R�ckversicherung

aus SC02_Schluesselbedeutung
(Domane: ART_DER_RUECKVERSICHERUNG)
';

COMMENT ON TABLE DIM_SBGruppe IS
'�ber SC02_Schluesselbedeutung
(Dom�ne: SACHB_GRUPPEN)';

COMMENT ON TABLE DIM_SammelereignisKl IS
'ersetzt eine DMK_NatKatEreignis, weil dort nur ein Eintrag vorhanden w�re.

aus SC02_Schuesselbedeutung
(Dom�ne: NATKAT_GEFAHREN)
';

COMMENT ON TABLE DIM_Satzart_Zahlung IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSKATEGORIEN)';

COMMENT ON TABLE DIM_SchadenKomplexit IS
'aus SC02_Schluesselbedeutung
(Dom�ne: KOMPLEXITAETSKENNZEICHEN)';

COMMENT ON TABLE DIM_SchadenSteuerung IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SCHADENSTEUERUNG)';

COMMENT ON TABLE DIM_Schaden_Besonder IS
'aus SC02_Schluesselbedeutung
(Dom�ne: BESONDERHEIT_SCHADEN)';

COMMENT ON TABLE DIM_Schadenfallart IS
'aus SC02_Schluesselbedeutung
(dom�ne: SCHADENFALLARTEN)';

COMMENT ON TABLE DIM_Schadenstatus IS
'Dimensionstabelle des Schadenstatus.

aus MD17_Schadenstatus';

COMMENT ON TABLE DIM_Schadenurs_SAP IS
'aus SC02_Schluesselbedeutung 
(Dom�ne: SCHADENURSACHEN)';

COMMENT ON TABLE DIM_Schadenursache IS
'aus MD15_Schadenursache ';

COMMENT ON TABLE DIM_SchadrueckstArt IS
'Schaden-Rueckstellungsart

aus SC02_Schluesselbedeutung
(Dom�ne: RESERVETYP)';

COMMENT ON TABLE DIM_Schuldigkeit IS
'aus SC02_Schluesselbedeutung
(Dom�ne: SCHULDEINSCHAETZUNGEN)';

COMMENT ON TABLE DIM_Schutzkennz IS
'aus SC02_Schluesselbedeutung
(Dom�ne: PARTNER_SCHUTZKENNZEICHEN)';

COMMENT ON TABLE DIM_Sparte IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_1 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_2 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_3 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_4 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_5 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_6 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenbuendel_7 IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DIM_Spartenkennziff IS
'... ist die nicht-harmonisierte Spartenkennziffer aus dem Quellsystem.

aus SC02_Schluesselbedeutung
(Dom�ne: SCHADENSPARTEN)';

COMMENT ON TABLE DIM_TV_Projekt IS
'aus MD37_TV_Projekte

Zus�tzlich muss ein Dummy mit der ID_TV_Projekt=-1 erzeugt werden:
TV_Projektnummer = n.r. 
RV_Gesellschaft = n.r.
ID_Zeichnungsjahr = 0
Sortierung_lfd: 9.999.999.999 (Maximalwert)

';

COMMENT ON TABLE DIM_Teilschadenart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: TEILSCHADENARTEN)';

COMMENT ON TABLE DIM_Teilsparte IS
'aus MD15_Schadenursache ';

COMMENT ON TABLE DIM_Titel IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ADELSTITEL)
';

COMMENT ON TABLE DIM_UKZ IS
'Dimensionstabelle f�r die Unternehmenskennzeichen (i.d.R. Risikotr�ger)

aus MD18_UKZ';

COMMENT ON TABLE DIM_Unfallart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: UNFALLART)
';

COMMENT ON TABLE DIM_Verfahrensart IS
'aus SC02_Schluesselbedeutung
(dom�bne: GERICHTSVERFAHRENSARTEN)';

COMMENT ON TABLE DIM_Verfahrensggst IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSVERFAHRENSGEGENSTAENDE)';

COMMENT ON TABLE DIM_Verfahrensstatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: GERICHTSVERFAHRENSSTATUS)';

COMMENT ON TABLE DIM_VerletzgKoerpert IS
'aus SC02_Schluesselbedeutung
(dom�ne: KOERPERTEILE)';

COMMENT ON TABLE DIM_Verletzung IS
'aus SC02_Schluesselbedeutung
Dom�ne: ART_DER_VERLETZUNG)
';

COMMENT ON TABLE DIM_Versicherungsart IS
'... ist die Versicherungart f��r die Rechnungslegung

aus SC02_Schluesselbedeutung
(Dom�ne: VERSICHERUNGSARTEN)';

COMMENT ON TABLE DIM_Vertragsart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: VERTRAGSTYPEN)';

COMMENT ON TABLE DIM_Vollmachtsstufe IS
'aus SC02_Schluesselbedeutung
(Dom�ne: VOLLMACHTSSTUFEN)';

COMMENT ON TABLE DIM_Waehrung IS
'aus SC02_Schluesselbedeutung
(Dom�ne: WAEHRUNGSCODES)';

COMMENT ON TABLE DIM_Wagnisart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: 	WAGNISART_KFZ
	und: 		WAGNISART)';

COMMENT ON TABLE DIM_Werbeunterdrueck IS
'aus SC02_Schluesselbedeutung
(Dom�ne: WERBE_STOP_KENNZ)';

COMMENT ON TABLE DIM_Woche IS
'Dimensionstabelle f�r Wochen, die f�r alle Wochengaben genutzt werden sollte';

COMMENT ON TABLE DIM_ZahlgspflichtArt IS
'ZahlungspflichtigerArt

aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSVERPFLICHTUNG_ART)';

COMMENT ON TABLE DIM_ZahlungStatus IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSSTATUS)
';

COMMENT ON TABLE DIM_Zahlungsart IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSARTEN)';

COMMENT ON TABLE DIM_Zahlungsgrund IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSGRUND)';

COMMENT ON TABLE DIM_ZahlungsgrundGrp IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLUNGSGRUNDGRUPPE)';

COMMENT ON TABLE DIM_Zahlweg IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZAHLWEGE)';

COMMENT ON TABLE DIM_Zeitzone IS
'aus SC02_Schluesselbedeutung
(Dom�ne: ZEITZONEN)';

COMMENT ON TABLE DMK_BeschObjektFlags IS
'... enth�lt J/N Kennzeichen zu besch�digten Objekten, die in der Regel als Selektionskriterien benutzt werden. 

aus ER01_OB01_bescObj_SHUKR_01_LBM ';

COMMENT ON TABLE DMK_BeschObjektMerkm IS
'aus OB01_Objekt_SCH_01_HBS bzw. ER01_OB01_bescObj_SHUKR_01_LBS';

COMMENT ON TABLE DMK_BilRueckstMerkm IS
'aus LE09_Rueckst_Bilanz_01_HBM  und LE03_REGRESS_BILANZ_01_HBM 

folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldejahr-Kapitalreservedatum
Vorjahr-Kapitalreservedatum
Meldejahr-Rentenreservedatum
Vorjahr-Rentenreservedatum
Meldejahr-Regressreservedatum
Vorjahr-Regressreservedatum
';

COMMENT ON TABLE DMK_GeriInstMerkmale IS
'aus ER04_GerInstanz_SHUKR_01_WBS';

COMMENT ON TABLE DMK_GeriVerfMerkmale IS
'aus ER03_GerVerf_eig_SHUKR_01_HBS';

COMMENT ON TABLE DMK_RegressMerkmale IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Sendedatum (Benachrichtigung zur Regress-Einleitung) aus LE03_Regress_SHUKR_01_HBS.Sendedatum

geaendert_am ...  ist der Zeitpunkt der letzten �nderung aus LE03_Regress_SHUKR_01_HBS.geaendert_am
';

COMMENT ON TABLE DMK_SSP_RVPMerkmale IS
'aus LE09_Rueckst_Man_01_HBS

zus�tzlich ein Eintrag mit
ID_Schadenrueckstellungsart = ''Anzahl Sp�tsch�den''
ID_RueckstellungsBetragsart = ''Anzahl Sch�den''

';

COMMENT ON TABLE DMK_SchadRueckstMerk IS
'

';

COMMENT ON TABLE DMK_SchadUrsacheGef IS
'aus MD15_Schadenursache';

COMMENT ON TABLE DMK_SchadenOrtMerkm IS
'aus GE01_Gebiet_Sch_01_HBS';

COMMENT ON TABLE DMK_Schadenmerkm IS
'aus
-	ER01_SCHADEN_SHUKR_02_HBS
-	ER01_Schaden_DWH_01_HBS
-	ER01_Schaden_DWH_02_HBM
- 	ER01_Schaden_Eskalat_R_01_HBS

und aus ER03_GerVerf_Schaden_R_01_HBS 
mit 		ER01_Schaden_BH
	->	ER01_ER03_Kundenprozess_BL 
	->	ER03_Gerichtsverfahren_BH (i.e. Kundenprozess)

folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:
-	Schadenbearbeitungsstelle
-	Vertragsbearbeitende Stelle
-	anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle

folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:
-	Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum
-	Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Gesch�ftsjahr Auskunft dar�ber, ob es sich um einen Gesch�fts- 	oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum
-	Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal ge�ndert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum
-	Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. F�r den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum
-	Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum
-	angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am
-	geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am
-	GesSchaden_geaendert_am �nderungszeitpunkt der letzten �nderung im gesamten Schaden incl. Teilsch�den. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am
-	AbgabedatumInkasso Abgabedatum an Inkassob�ro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso
-	Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum
-	Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung
-	Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum

folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:
-	Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr
-	Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es z�hlt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr
-	Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr
-	Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DMK_TeilschadenFlags IS
'
';

COMMENT ON TABLE DMK_VertragDeckMerkm IS
'aus ER01_WE03_DeckSpie_Sch_01_LBS';

COMMENT ON TABLE DMK_Vertragsmerkmale IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM

folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:
vertragsfuehrendeRD Kurztext f�r die vertragsf�hrende RD. aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD';

COMMENT ON TABLE DMK_ZhlgFordDetMerkm IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am

aus LE02_Zahlung_Det_SHUKR_01_WBS

F�r die Daten aus FS-CD wird ein einheitlicher Datensatz angelegt mit folgenden Werten:
ID_Betragstyp ="nicht geliefert" (-1)
ID Zahlungsart = �R�ckzahlung� (99)
ID_BruttoNetto = "netto" (29) 
ID_Zahlungsgrund = �nicht geliefert� (2248)
ID_Zahlungsgrundgruppe= �nicht geliefert� (2290)
ID_Fallzahlungspostentyp = �normale Fallzahlungsposition� (54)
';

COMMENT ON TABLE DMK_ZhlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_02_HBS
- Zahlungen mit folgenden Zahlungsstatus: Gebucht, Ausgeglichen, Angefordert, Erhalten, Teilweise Erhalten, umgebuchte Zahlungen, Storniert, Verschoben

folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:
zahlungsausl�sende Stelle

folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:
Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE01_Zahlung_SHUKR_01_HBS.Buchungsdatum
Belegdatum ... Belegdatum der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Belegdatum
Nettofaelligkeit	... Nettofaelligkeit der Zahlung. aus LE01_Zahlung_SHUKR_01_HBS.Nettofaelligkeit
uebergeben_am ...  ist der Zeitpunkt der �bergabe an Inkasso-/Exkassosystem. aus LE01_Zahlung_SHUKR_01_HBS.uebergeben_am
angelegt_am	... ist der Zeitpunkt, an dem die Zahlung erstmalig angelegt wurde. aus LE01_Zahlung_SHUKR_01_HBS.angelegt_am
geaendert_am ...  ist der Zeitpunkt der letzten �nderung. aus LE01_Zahlung_SHUKR_01_HBS.geaendert_am

nach DIM_Jahr:
Buchungsjahr ... ist das Kalenderjahr, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsjahr

nach DIM_Monat:
Buchungsmonat ... ist der Kalendermonat, in dem die Zahlung gebucht wurde. aus LE01_Zahlung_DWH_01_HBS.Buchungsmonat';

COMMENT ON TABLE F_Bilanzrueckstellgn IS
'aus 	LE09_Rueckst_Bilanz_01_HBM 
und LE03_Regress_Bilanz_01_HBM';

COMMENT ON TABLE F_Regress IS
'aus LE03_Regress_SHUKR_01_HBS';

COMMENT ON TABLE F_RegressPosition IS
'aus	LE04_Regresspos_SHUKR_01_WBS 
und	LE04_Regressposition_LE03_BW';

COMMENT ON TABLE F_SAP_Kontrollreport IS
'Kontrollreport aus SAP: In SAP werden Kontrollzahlen generiert, die zwecks Abgleich in das DWH geladen werden. Ziel ist es, die Vollst�ndigkeit der wichtigsten Kennzahlen sicherzustellen.';

COMMENT ON TABLE F_SCHADEN_YTD IS
'In vielen Berichten sind nicht nur die kumulierten Werte von Sch�den �ber die gesamte Laufzeit des Schadens von Interesse, sondern auch Zahlungen, Regresse etc. die im Stichtagsjahr angefallen sind.

Die prinzipielle Berechnung des YTD-Wertes lautet Stichtags-Wert minus Wert zum Vorjahresletzten:
Wert_YTD  :=  WertStichtag  -  NVL(Wert31.12.(Stichtagsjahr-1) , 0)

Anmerkung:
Im zugeh�rigen DDL steht zwischen dem PK-Constraint und dem Tablespace:
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DWHMARTSCHAD2P"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DWHMARTSCHAD2P" 
  PARTITION BY RANGE ("GUELTIG_BEGINN") INTERVAL (NUMTOYMINTERVAL(1,''YEAR'')) 
 (PARTITION "P1"  VALUES LESS THAN (TO_DATE('' 2000-01-01 00:00:00'', ''SYYYY-MM-DD HH24:MI:SS'', ''NLS_CALENDAR=GREGORIAN'')) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING 
  STORAGE(
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)

';

COMMENT ON TABLE F_SDS_Bilanzwerte IS
'aus MD36_SDS_Bilanz_Summensatz';

COMMENT ON TABLE F_SSP_RVP IS
'Sp�tschadenpauschalen und R�ckversicherungspauschalen

R�ckversicherungspauschalen werden nur bis 2013 (einschlie�lich) gesetzt.

aus LE09_Rueckst_Man_01_HBS 
und
aus MD07_Spaet_Rueckvers_Pausch 
';

COMMENT ON TABLE F_SchadRueckstellgn IS
'aus LE09_Rueckst_SHUKR_01_HBS';

COMMENT ON TABLE F_Schaden IS
'aus
-	ER01_SCHADEN_SHUKR_02_HBS
-	ER01_Schaden_DWH_01_HBS
-	ER01_Schaden_DWH_02_HBM
- 	ER01_Schaden_Eskalat_R_01_HBS

und aus ER03_GerVerf_Schaden_R_01_HBS 
mit 		ER01_Schaden_BH
	->	ER01_ER03_Kundenprozess_BL 
	->	ER03_Gerichtsverfahren_BH (i.e. Kundenprozess)

	
';

COMMENT ON TABLE F_Schadensteuerung IS
'Anzahl der gesteuerten Sch�den in Rechtsschutz nach Art der Steuerung, Datum und Sachbearbeitergruppe / RD';

COMMENT ON TABLE F_Teilschaden IS
'aus 
-	ER02_Teilschaden_ER01_BW
-	ER02_Teilschaden_SHUKR_02_WBS
-	ER02_Teilschaden_DWH_02_WBS
';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einf�hrung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgef�hrt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

