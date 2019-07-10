--<ScriptOptions statementTerminator=";"/>
-- Version 9761

CREATE TABLE DET_Schaden (
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
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
		CoC_VerlaengerungsGrund VARCHAR2(180 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_ZhlgFordDetail (
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		ZhlgFordNr_A VARCHAR2(24 CHAR) NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR),
		Zahlung_Detail_LFD VARCHAR2(8 CHAR) NOT NULL,
		geaendert_von_Grp  VARCHAR2(24 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AbschlussVerfahren (
		ID_AbschlussVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_Art_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang_Art VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_Art_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_AusgangVerfahren (
		ID_AusgangVerfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		RS_Prozessausgang_kurz VARCHAR2(24 CHAR) NOT NULL,
		RS_Prozessausgang VARCHAR2(64 CHAR) NOT NULL,
		RS_Prozessausgang_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Fachgebiet (
		ID_Fachgebiet NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Fachgebiet_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Fachgebiet_B VARCHAR2(64 CHAR) NOT NULL,
		Fachgebiet_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Geltungsbereich (
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Geltungsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Geltungsbereich VARCHAR2(64 CHAR) NOT NULL,
		Geltungsbereich_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Grosskunde (
		ID_Grosskunde NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Grosskunde_kurz VARCHAR2(24 CHAR) NOT NULL,
		Grosskunde VARCHAR2(64 CHAR) NOT NULL,
		Grosskunde_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Rueckversicherung (
		ID_Rueckversicherung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Rueckversicherung_kurz VARCHAR2(24 CHAR) NOT NULL,
		Rueckversicherung VARCHAR2(64 CHAR) NOT NULL,
		Rueckversicherung_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Schaden_Besonderheit (
		ID_Schaden_Besonderheit NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Besonderheiten_kurz VARCHAR2(24 CHAR) NOT NULL,
		Besonderheiten VARCHAR2(64 CHAR) NOT NULL,
		Besonderheiten_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Unfallart (
		ID_Unfallart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Unfallart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Unfallart VARCHAR2(64 CHAR) NOT NULL,
		Unfallart_lang VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verletzung (
		ID_Verletzung NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Verletzung_Kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Verletzung_B VARCHAR2(64 CHAR) NOT NULL,
		Verletzung_lang_B VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Verletzung_Koerperteil (
		ID_Verletzung_Koerperteil NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		Koerperteil_kurz_B VARCHAR2(24 CHAR) NOT NULL,
		Koerperteil_B VARCHAR2(64 CHAR) NOT NULL,
		Koerperteil_langB VARCHAR2(500 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DMK_Schadenmerkmale (
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
		ID_Geltungsbereich NUMBER(28 , 0) NOT NULL
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
		ID_Grosskunde NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Schaden (
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Meldejahr NUMBER(28 , 0) NOT NULL,
		ID_Anlagejahr NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussjahr NUMBER(28 , 0) NOT NULL,
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
		BelastendeZahlungen NUMBER(16 , 2) NOT NULL,
		AnzahlToteVerletzte NUMBER(10 , 0) NOT NULL,
		JahresbeitragKunde NUMBER(16 , 2) NOT NULL,
		Rueckkaufbetrag NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_initial NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_initial NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_offen NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_Rente NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_offen NUMBER(16 , 2) NOT NULL,
		Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Rueckstellungen_saldiert NUMBER(16 , 2) NOT NULL,
		Schadenaufwand_ohne_IK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Rueckstellung_rein NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Zahlung_rein NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlTote NUMBER(10 , 0) NOT NULL,
		AnzahlVerletzte NUMBER(10 , 0) NOT NULL,
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
		ID_Waehrung_aussergeri NUMBER(28 , 0) NOT NULL,
		Streitwert_aussergeri NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz1 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz1 NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz2 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz2 NUMBER(16 , 2) NOT NULL,
		ID_Waehrung_Instanz3 NUMBER(28 , 0) NOT NULL,
		Streitwert_Instanz3 NUMBER(16 , 2) NOT NULL,
		Ordnungswidrigkeit_Kennz CHAR(1) NOT NULL,
		Sozialrechtsschutz_Kennz CHAR(1) NOT NULL,
		Strafverfahren_Kennz CHAR(1) NOT NULL,
		Freizeit_Unfallschutz CHAR(1) NOT NULL,
		VTP_Info CHAR(1) NOT NULL,
		ID_arbeitslos_VNSicht_ab NUMBER(28 , 0) NOT NULL,
		ID_arbeitslos_ab NUMBER(28 , 0) NOT NULL,
		ID_Arbeitslosengeld_ab NUMBER(28 , 0) NOT NULL,
		ID_Karenzzeit_bis NUMBER(28 , 0) NOT NULL,
		Halter CHAR(1) NOT NULL,
		ID_LetzterPosteingang NUMBER(28 , 0) NOT NULL,
		CoC_Loeschdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		CoC_Sperrdatum_vorgesehen NUMBER(28 , 0) NOT NULL,
		CoC_zur_Loeschung_vorgesehen CHAR(1) NOT NULL,
		CoC_zur_Sperrung_vorgesehen CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Teilschaden (
		SK_F_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_TeilschadenMerkmale NUMBER(28 , 0) NOT NULL,
		SK_Partner_Auslandsbuero VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_Auslandsbuero_Merkm NUMBER(28 , 0) NOT NULL,
		SK_Partner_VN VARCHAR2(64 CHAR) NOT NULL,
		ID_Partner_VN_Merkm NUMBER(28 , 0) NOT NULL,
		ID_Erfassungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		SK_Vertragsdeckung VARCHAR2(64 CHAR) NOT NULL,
		ID_VertragsdeckMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		SK_Schadenort VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenortmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsjahr NUMBER(28 , 0) NOT NULL,
		ID_Meldejahr NUMBER(28 , 0) NOT NULL,
		ID_Anlagejahr NUMBER(28 , 0) NOT NULL,
		ID_Schadenschlussjahr NUMBER(28 , 0) NOT NULL,
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
		Regress_gesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_gesi_Eingang NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Entsch NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang_Rente NUMBER(16 , 2) NOT NULL,
		TeilfallUngueltig CHAR(1) NOT NULL,
		Regress_ungesi_Eingang_SRK NUMBER(16 , 2) NOT NULL,
		Regress_ungesi_Eingang NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlungen_saldiert NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Rueckst_rein NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_Entsch NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_Rente NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein_SRK NUMBER(16 , 2) NOT NULL,
		Teilsch_Zahlung_rein NUMBER(16 , 2) NOT NULL,
		Durchlaufzeit_1_Zahlung_B NUMBER(16 , 8) NOT NULL,
		Erstrueckstellung_Entsch NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_Rente NUMBER(16 , 2) NOT NULL,
		Erstrueckstellung_SRK NUMBER(16 , 2) NOT NULL,
		AnzahlGerichtsverfahren NUMBER(10 , 0) NOT NULL,
		RegulierungAussendienst CHAR(1) NOT NULL,
		FalschberatungAussendienst CHAR(1) NOT NULL,
		SchadenfeststellerVorOrt CHAR(1) NOT NULL,
		SchadenOhneForderung CHAR(1) NOT NULL,
		Abgelehnt CHAR(1) NOT NULL,
		Fehlanlage CHAR(1) NOT NULL,
		Betrugsverdacht_C CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Zhlg_Ford_Detail (
		SK_F_Zhlg_Ford_Detail VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_ZahlungForderung VARCHAR2(64 CHAR) NOT NULL,
		SK_Teilschaden VARCHAR2(64 CHAR) NOT NULL,
		ID_ZhlgFordDetMerkmale NUMBER(28 , 0) NOT NULL,
		SK_ZhlgFordDetail VARCHAR2(64 CHAR) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_geaendert_am NUMBER(28 , 0) NOT NULL,
		ID_Waehrung NUMBER(28 , 0) NOT NULL,
		ID_Leistungsart NUMBER(28 , 0) NOT NULL,
		Teilbetrag NUMBER(16 , 2) NOT NULL,
		TeilbetragInEuro NUMBER(16 , 2) NOT NULL,
		GeforderterBetrag NUMBER(16 , 2) NOT NULL,
		GeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetrag NUMBER(16 , 2) NOT NULL,
		UrsprGeforderterBetragInEuro NUMBER(16 , 2) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL,
		ID_Schadenursache NUMBER(28 , 0) NOT NULL,
		ID_Schadenstatus_Detail NUMBER(28 , 0) NOT NULL,
		SK_Vertrag VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragsmerkmale NUMBER(28 , 0) NOT NULL,
		ID_UKZ NUMBER(28 , 0) NOT NULL,
		ID_Region_Bearbeitungsstelle NUMBER(28 , 0) NOT NULL,
		ID_Region_VertragsfuehStelle NUMBER(28 , 0) NOT NULL,
		ID_Meldedatum  NUMBER(28 , 0) NOT NULL,
		ID_Eintrittsdatum NUMBER(28 , 0) NOT NULL,
		ID_ZahlgFordMerkmale NUMBER(28 , 0) NOT NULL,
		ID_Datum_1_Wiedereroeffnung NUMBER(28 , 0) NOT NULL,
		GJ_Schaden CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Apraxa_RA (
		ID_Schaden_Apraxa_RA NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Apraxa_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Apraxa_RA NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE R_Schaden_Eigener_RA (
		ID_Schaden_Eigener_RA NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		Gueltig_Beginn DATE NOT NULL,
		Gueltig_Ende DATE NOT NULL,
		SK_F_Schaden VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner_Eigener_RA VARCHAR2(64 CHAR) NOT NULL,
		ID_Partnerme_Eigener_RA NUMBER(28 , 0) NOT NULL,
		SK_Schaden VARCHAR2(64 CHAR) NOT NULL,
		ID_Schadenmerkmale NUMBER(28 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE UNIQUE INDEX DMK_Schadenmerkmale_IDX
	ON DMK_Schadenmerkmale
	(ID_Meldeweg		ASC,
	  ID_Ereignisart		ASC,
	  ID_SchadenKomplexitaet		ASC,
	  ID_Wagnisart		ASC,
	  ID_SchadenSteuerung		ASC,
	  ID_SchuldigkeitSichtVU		ASC,
	  ID_SchuldigkeitSichtVN		ASC,
	  ID_Bewertung_VTP		ASC,
	  ID_KlassifizierungSchluss		ASC,
	  ID_Dunkelverarbeitung		ASC,
	  ID_Schadenfallart		ASC,
	  ID_zust_SBGruppe		ASC,
	  ID_Zeitzone		ASC,
	  ID_AusgangVerfahren		ASC,
	  ID_AbschlussVerfahren		ASC,
	  ID_Schaden_Besonderheit		ASC,
	  ID_Verletzung		ASC,
	  ID_Verletzung_Koerperteil		ASC,
	  ID_Rueckversicherung		ASC,
	  ID_Unfallart		ASC,
	  ID_Fachgebiet		ASC,
	  ID_Geltungsbereich		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX DMK_Vertragsmerkmale_IDX
	ON DMK_Vertragsmerkmale
	(ID_GeschaeftsbezFirma		ASC,
	  ID_GeschaeftsbezTaetigkeit		ASC,
	  ID_Produkt		ASC,
	  Versicherungszweig		ASC,
	  Autoplus		ASC,
	  ID_Bestandsbeziehungsart		ASC,
	  ID_Vertragsart		ASC,
	  Rabattschutz		ASC,
	  Beitragsrueckstand		ASC,
	  ID_Bedingungsschluessel		ASC,
	  ID_Wagnisart		ASC,
	  SchadenfreiheitsklasseKH		ASC,
	  SchadenfreiheitsrabattKH		ASC,
	  ID_DeckungsschluesselKH		ASC,
	  SchadenfreiheitsklasseVK		ASC,
	  SchadenfreiheitsrabattVK		ASC,
	  ID_DeckungsschluesselK		ASC,
	  KaskoMobil		ASC,
	  ID_Grosskunde		ASC)
	PCTFREE 0
	LOGGING;

CREATE UNIQUE INDEX F_Schaden_I
	ON F_Schaden
	(SK_F_Schaden		ASC,
	  Gueltig_Beginn		ASC)
	PCTFREE 0
	LOGGING;

ALTER TABLE DET_Schaden ADD CONSTRAINT DET_Schaden_PK PRIMARY KEY
	(SK_Schaden,
	 Gueltig_Beginn);

ALTER TABLE DET_ZhlgFordDetail ADD CONSTRAINT DET_ZhlgFordDetail_PK PRIMARY KEY
	(SK_ZhlgFordDetail,
	 Gueltig_Beginn);

ALTER TABLE DIM_AbschlussVerfahren ADD CONSTRAINT DET_AbschlussVerfahren_PK PRIMARY KEY
	(ID_AbschlussVerfahren,
	 Gueltig_Beginn);

ALTER TABLE DIM_AusgangVerfahren ADD CONSTRAINT DET_AusgangVerfahren_PK PRIMARY KEY
	(ID_AusgangVerfahren,
	 Gueltig_Beginn);

ALTER TABLE DIM_Fachgebiet ADD CONSTRAINT DIM_Fachgebiet_PK PRIMARY KEY
	(ID_Fachgebiet,
	 Gueltig_Beginn);

ALTER TABLE DIM_Geltungsbereich ADD CONSTRAINT DET_Geltungsbereich_PK PRIMARY KEY
	(ID_Geltungsbereich,
	 Gueltig_Beginn);

ALTER TABLE DIM_Grosskunde ADD CONSTRAINT DIM_Grosskunde_PK PRIMARY KEY
	(ID_Grosskunde,
	 Gueltig_Beginn);

ALTER TABLE DIM_Rueckversicherung ADD CONSTRAINT DIM_Rueckversicherung_PK PRIMARY KEY
	(ID_Rueckversicherung,
	 Gueltig_Beginn);

ALTER TABLE DIM_Schaden_Besonderheit ADD CONSTRAINT DIM_Schaden_Besonderheit_PK PRIMARY KEY
	(ID_Schaden_Besonderheit,
	 Gueltig_Beginn);

ALTER TABLE DIM_Unfallart ADD CONSTRAINT DET_Unfallart_PK PRIMARY KEY
	(ID_Unfallart,
	 Gueltig_Beginn);

ALTER TABLE DIM_Verletzung ADD CONSTRAINT DET_Verletzung_PK PRIMARY KEY
	(ID_Verletzung,
	 Gueltig_Beginn);

ALTER TABLE DIM_Verletzung_Koerperteil ADD CONSTRAINT DET_Verletzung_Koerperteil_PK PRIMARY KEY
	(ID_Verletzung_Koerperteil,
	 Gueltig_Beginn);

ALTER TABLE DMK_Schadenmerkmale ADD CONSTRAINT DMK_Schadenmerkmale_PK PRIMARY KEY
	(ID_Schadenmerkmale);

ALTER TABLE DMK_Vertragsmerkmale ADD CONSTRAINT DMK_Vertragsmerkmale_PK PRIMARY KEY
	(ID_Vertragsmerkmale);

ALTER TABLE F_Schaden ADD CONSTRAINT F_Schaden_PK PRIMARY KEY
	(SK_F_Schaden,
	 Gueltig_Beginn);

ALTER TABLE F_Teilschaden ADD CONSTRAINT F_Teilschaden_PK PRIMARY KEY
	(SK_F_Teilschaden,
	 Gueltig_Beginn);

ALTER TABLE F_Zhlg_Ford_Detail ADD CONSTRAINT F_Zhlg_Ford_Detail_PK PRIMARY KEY
	(SK_F_Zhlg_Ford_Detail,
	 Gueltig_Beginn);

ALTER TABLE R_Schaden_Apraxa_RA ADD CONSTRAINT R_Schaden_Apraxa_RA_PK PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Schaden_Apraxa_RA);

ALTER TABLE R_Schaden_Eigener_RA ADD CONSTRAINT R_Schaden_Eigener_RA PRIMARY KEY
	(Gueltig_Beginn,
	 ID_Schaden_Eigener_RA);

COMMENT ON COLUMN DET_Schaden.AZ_Gericht_A IS
'... ist das Aktenzeichen des Gerichts (nur für RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_Gericht_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.AZ_VN_Rechtsanwalt_A IS
'... ist das Aktenzeichen des Rechtsanwalts des VN (nur für RS)

aus ER03_GerVerf_Schaden_R_01_HBS.AZ_VN_Rechtsanwalt_A
	
Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Amtliches_Kennzeichen_A IS
'... ist das amtliche Kennzeichen des Fahrzeugs.

aus ER01_Schaden_SHUKR_02_HBS.Amtliches_Kennzeichen_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.CoC_VerlaengerungsGrund IS
'... ist ein Text, der im Zusammenhang mit der Verlängerung der CoC-Löschfrist erstellt wird.

aus ER01_Schaden_SHUKR_02_HBS.CoC_VerlaengerungsGrund

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.Deckungsquote IS
'... gibt den Deckungsanteil der DEVK gegenüber dem VN in % an. Kann durch Obligenheitsverletzungen des VN beeinflusst werden.

aus ER01_Schaden_SHUKR_01_HBS.Deckungsquote

Datenschutz $-';

COMMENT ON COLUMN DET_Schaden.GesSchaden_geaendert_von_Grp IS
'... ist die Gruppe des Users der letzten Änderung im gesamten Schaden incl. Teilschäden

aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.HoeheGeldbusse_B IS
'...ist die Höhe der Geldbuße

vermutlich eher Filter als Kennzahl?

aus ER01_Schaden_SHUKR_02_HBS.HoeheGeldbusse_B

Datenschutz $B';

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
'... ist die Gruppe des Sachbearbeiter, der für den Schaden zuständig ist

aus ER01_Schaden_SHUKR_01_HBS.SchadenSB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.Schadennummer_A IS
'
aus ER01_Schaden_SHUKR_01_HBS.Schadennummer_A

Datenschutz $A1';

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

COMMENT ON COLUMN DET_Schaden.angelegt_von_Grp IS
'... ist die Gruppe des Users, der den Schaden registriert/angelegt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.angelegt_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Schaden.geaendert_von_Grp IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat, kann auch ein technischer User sein

aus ER01_Schaden_SHUKR_01_HBS.geaendert_von_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.BelegNr_A IS
'Belegnummer gem. FS-CD

aus KT01_Beleg_InEx_01_HBS.BelegNr_A

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.Zahlung_Detail_LFD IS
'laufende Nummer der Zahlung_Detail

aus LE02_Zahlung_Det_SHUKR_01_WBS.Zahlung_Detail_LFD für Zahlungen / Forderungen aus CM
"000" für Zahlungseingänge aus CD

Datenschutz $-';

COMMENT ON COLUMN DET_ZhlgFordDetail.ZhlgFordNr_A IS
'
aus LE02_Zahlung_Det_SHUKR_01_WBS.Zahlungsnummer_A für Zahlungen / Forderungen aus CM

Datenschutz $A1';

COMMENT ON COLUMN DET_ZhlgFordDetail.geaendert_von_Grp  IS
'... ist die Gruppe des Users, der die letzte Änderung durchgeführt hat

aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_von_A 

Datenschutz $A1';

COMMENT ON COLUMN DIM_AbschlussVerfahren.ID_AbschlussVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.RS_Prozessausgang_Art_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	außergerichtlich
02	1. Instanz
03	2. Instanz
04	3. Instanz
05	automatische RS-Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AbschlussVerfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.ID_AusgangVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_kurz IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.RS_Prozessausgang_lang IS
'Dokumentiert den Ausgang des Kundenprozesses zum RS-Schaden.

01	nicht bekannt/relevant
02	gewonnen
03	verloren
04	teils/teils
05	Vergleich
06	automatische Schaden-Schließung

aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_AusgangVerfahren.TA_Ladedatum IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

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

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

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

aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B

wegen 02 Gewerkschaften:
Datenschutz $B ';

COMMENT ON COLUMN DIM_Fachgebiet.ID_Fachgebiet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Fachgebiet.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_kurz IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.Geltungsbereich_lang IS
'Geltungsbereich - Vertrags- bzw. Produkteigenschaft

DE	DE
EU	EU
WE	Weltweit

aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.ID_Geltungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Geltungsbereich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde IS
'Kurztext des Grosskunden

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A

Datenschutz $-?';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_kurz IS
'Kurzbezeichnung des Grosskunden

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A

Datenschutz $-?';

COMMENT ON COLUMN DIM_Grosskunde.Grosskunde_lang IS
'Langtext des Grosskunden

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungsscheinnummer_A

Datenschutz $-?';

COMMENT ON COLUMN DIM_Grosskunde.ID_Grosskunde IS
'aus ER01_WE01_VertrSpie_Sch_01_LBS.C_Grosskunde';

COMMENT ON COLUMN DIM_Grosskunde.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Grosskunde.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung_kurz IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.Rueckversicherung_lang IS
'Rückversicherung

01	kein Rückversicherungsfall
02	fakultative Rückversicherung
03	Summenexcedent
04	fakultative Rückversicherung plus Summenexcedent
05	Cover
06	Sp. 70-79: U-Rente ab 27.11.02/Kinder-U-Rente ab 01.06.10
07	KH-Fahrerunfall

aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Rueckversicherung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten_kurz IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.Besonderheiten_lang IS
'Besonderheiten

01	Falschberatung durch Außendienst
02	Kundenkritik
03	Schaden-Feststellung vor Ort
04	Vermittlung von SMM durch das KSC
05	Möglicherweise auffälliger RA

aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.ID_Schaden_Besonderheit IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Schaden_Besonderheit.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Unfallart.ID_Unfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

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

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

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

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

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

aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung.ID_Verletzung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

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

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_Kurz_B IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung.Verletzung_lang_B IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.ID_Verletzung_Koerperteil IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_B IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_kurz_B IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.Koerperteil_langB IS
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

aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B

Datenschutz $B';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Verletzung_Koerperteil.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_AbschlussVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang_Art';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_AusgangVerfahren IS
'aus ER03_GerVerf_Schaden_R_01_HBS.C_RS_Prozessausgang';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Bewertung_VTP IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bewertung_VTP';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Dunkelverarbeitung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Ereignisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Fachgebiet IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Fachgebiet_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Geltungsbereich IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Geltungsbereich';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_KlassifizierungSchluss IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
bzw. 
aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Meldeweg IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Meldeweg';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Rueckversicherung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Rueckversicherung';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenKomplexitaet IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Komplexitaet';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchadenSteuerung IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Steuerung';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schaden_Besonderheit IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Besonderheiten';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schadenfallart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Schadenfallart_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVN IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVN
';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_SchuldigkeitSichtVU IS
'aus ER01_Schaden_SHUKR_01_HBS.C_SchuldigkeitSichtVU';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Unfallart IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Unfallart';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Verletzung IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Verletzung_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Verletzung_Koerperteil IS
'aus ER01_Schaden_SHUKR_02_HBS.C_Koerperteil_B';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Wagnisart IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Wagnis';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_Zeitzone IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Betragstyp';

COMMENT ON COLUMN DMK_Schadenmerkmale.ID_zust_SBGruppe IS
'aus ER01_Schaden_DWH_01_HBS.C_zust_SBGrp';

COMMENT ON COLUMN DMK_Schadenmerkmale.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DMK_Schadenmerkmale.TA_Ladedatum IS
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

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezFirma IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezFirma';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_GeschaeftsbezTaetigkeit IS
'aus ER01_WE01_VertrSpie_Sch_01_LBM.C_GeschaeftsbezTaetigkeit';

COMMENT ON COLUMN DMK_Vertragsmerkmale.ID_Grosskunde IS
'aus ER01_WE01_VertrSpie_Sch_01_LBS.C_Grosskunde';

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
'Der Versicherungszweig wird auch als Branchenschlüsselzahl (BSZ) gem. GDV bezeichnet

aus ER01_WE01_VertrSpie_Sch_01_LBM.Versicherungszweig

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Abgabe_RD IS
'Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an eine andere RD (Regionaldirektion) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_RD

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Abgabe_Z IS
'Kennzeichen Abgabe an Z

Der Schaden wurde in einer RD (Regionaldirektion) angelegt, aber für die folgende Bearbeitung an die Z (Zentrale) weitergeleitet. Schäden können an die RD zurückgewiesen werden. Relevant ist der Bearbeitungsort zum Auswertungsstichtag

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Abgabe_Z

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AktiveMeldung IS
'Aktive Meldung an Uniwagnis

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_AktiveMeldung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlTote IS
'.. ist die Anzahl der Toten

aus ER01_Schaden_DWH_01_HBS.AnzahlTote

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlToteVerletzte IS
'.. ist die Anzahl der Toten und Verletzten

aus ER01_Schaden_SHUKR_01_HBS.AnzahlToteVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.AnzahlVerletzte IS
'.. ist die Anzahl der Verletzten

aus ER01_Schaden_DWH_01_HBS.AnzahlVerletzte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Auffaelligkeit IS
'Auffälligkeiten

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Auffaelligkeit

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Auslandsschadenschutz IS
'... gibt an, dass es sich um einen Schaden handelt, der auf einer Auslandsschadenschutz-Versicherung beruht. Der Versicherungsnehmer wird im Falle eines unverschuldeten Schadens im Ausland bzgl. der Regulierung so gestellt, als hätte sich der Schaden in Deutschland ereignet.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_Auslandsschadenschutz

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.BelastendeZahlungen IS
'
aus ER01_Schaden_DWH_nn_HBS.BelastendeZahlungen (zukünftig)

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.CoC_Loeschdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gelöscht werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Loeschdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.CoC_Sperrdatum_vorgesehen IS
'...ist das Datum, ab dem der Schaden voraussichtlich im operativen System gesperrt werden kann.

aus ER01_Schaden_SHUKR_02_HBS.CoC_Sperrdatum_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.CoC_zur_Loeschung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gelöscht werden wird.

ja/ neinja / nein/ unzutreffend
aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Loeschung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.CoC_zur_Sperrung_vorgesehen IS
'... ist gesetzt, wenn der Schaden durch den nächsten CoC-Lauf im operativen System gesperrt werden wird.

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_CoC_zur_Sperrung_vorgesehen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Dreiv_Spaet_Schaden IS
'...gibt an, ob ein Schaden in den ersten drei Quartalen eingetreten ist und erst zu einem späteren Zeitpunkt beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Dreiv_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Schadenbearbeitung in Arbeitstagen bis zur ersten Entschädigungs- oder Rentenzahlung.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $B';

COMMENT ON COLUMN F_Schaden.Ersatzpflicht IS
'Kennzeichnet, ob Ersatzpflicht besteht

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Ersatzpflicht

Datenschutz $-
';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Fehlanlage IS
'Fehlanlage

Ja / nein

aus ER01_Schaden_SHUKR_01_HBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Freizeit_Unfallschutz IS
'Anwendung erw. Freizeitunfallschutz

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Freizeit_Unfallschutz

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Geschäftsjahres) ereignet hat und gemeldet wurde.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_GJ_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_wiedereroeffnet IS
'Kennzeichen Schaden im GJ wiedereröffnet

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und irgendwann im GJ bis zum Betrachtungszeitpunkt den Status ‚geöffnet‘ hatte bzw. aktuell hat oder im GJ eine Zahlung erfolgt ist.
Jede Öffnung eines Schadens wird hierbei betrachtet, unabhängig davon, ob sie monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GJ_wiedereroeffnet_monetaer IS
'Kennzeichen Schaden im GJ wiedereröffnet monetär

Kennzeichen, ob ein Schaden am Ende des vorherigen Geschäftsjahres (VJ) den Status ‚abgeschlossen‘ hatte und im GJ des Betrachtungszeitpunktes entweder zum Stichtag den Status ‚geöffnet‘ hat und eine Rückstellung gesetzt wurde oder aber im Laufe des GJ eine Zahlung erfolgt ist.
Der Fokus hier liegt darin, ob eine Wiedereröffnung des Schadens monetäre Auswirkungen hatte bzw. haben könnte.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_GJ_wiedereroeffnet_monetaer

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GeschlossenMitEntsch IS
'Merker, ob Schließen mit Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenMitEntsch

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.GeschlossenOhneEntsch IS
'Merker, ob Schließen ohne Entschädigung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_GeschlossenOhneEntsch

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Halbj_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Halbjahr eingetreten ist und erst in einem späteren Halbjahr beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein
aus ER01_Schaden_DWH_01_HBS.C_Halbj_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Halter IS
'Ist der VN gleichzeitig der Halter?

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_Halter

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Hausakte IS
'... ist das Kennzeichen, ob es sich um einen "Hausakte"-Schaden handelt oder nicht.

ja/nein

aus ER01_Schaden_DWH_01_HBS.POLPROD.C_Hausakte

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_AbgabedatumInkasso IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anlagedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Anlagejahr IS
'... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'')

für CM:
aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Datenschutz $-
';

COMMENT ON COLUMN F_Schaden.ID_Arbeitslosengeld_ab IS
'Arbeitslosengeld bewilligt ab

aus ER01_Schaden_SHUKR_02_HBS.Arbeitslosengeld_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstatusdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Bearbeitungsstelledatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Karenzzeit_bis IS
'Arbeitslosenversicherung: Karenzzeit bis

aus ER01_Schaden_SHUKR_02_HBS.Karenzzeit_bis

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_LetzterPosteingang IS
'Datum des letzten Posteingangs

aus ER01_Schaden_SHUKR_02_HBS.LetzterPosteingang

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Loeschdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Meldejahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Partner_VN_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Schaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Schaden.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Schaden.ID_SammelereignisKlasse IS
'... ist die Sammelereignisklasse zum Sammelereignis gem. ID_Sammelereignis

aus ER00_Sammelereignis_man_01_HBS.C_SammelereignisKlasse';

COMMENT ON COLUMN F_Schaden.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussjahr IS
'... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde

aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr

Datenschutz $-
';

COMMENT ON COLUMN F_Schaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Schaden.ID_Waehrung IS
'Limit- und Selbstbehaltwährung aus dem Vertrag zum Schaden

aus ER01_WE01_VertrSpie_Sch_01_LBM.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz1 IS
'... ist die Währung für den Streitwert 1. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz1

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz2 IS
'... ist die Währung für den Streitwert 2. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz2

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_Instanz3 IS
'... ist die Währung für den Streitwert 3. Instanz (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_Instanz3

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Waehrung_aussergeri IS
'... ist die Währung für den Streitwert aussergerichtlich (nur RS)

aus ER03_GerVerf_Schaden_R_01_HBS.C_Waehrung_aussergeri

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_Wiedervorlage IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_VNSicht_ab IS
'Arbeitslos aus VN-Sicht seit

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_VNSicht_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_arbeitslos_ab IS
'Arbeitslos gemeldet zum

aus ER01_Schaden_SHUKR_02_HBS.arbeitslos_ab

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Schaden.JahresbeitragKunde IS
'Gesamt-Jahresbeitrag des Kunden zu sämtlichen Verträgen

aus ER01_Schaden_SHUKR_01_HBS.JahresbeitragKunde

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.KeineBelastung IS
'Keine Belastung trotz Entschädigungszahlungen (Teilungsabkommen)

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineBelastung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.KeineStufung IS
'Keine Stufung trotz belastender Zahlungen

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_KeineStufung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Klasse_Erdb_Erdru_Lawine_Sonst IS
'Ist dem Schaden die SammelereignisKlasse  3	(Erdbeben/Erdrutsch/Lawinen/Sonstige) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 3	Erdbeben/Erdrutsch/Lawinen/Sonstige

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Klasse_Flut_Ueberschw_Rueckst IS
'Ist dem Schaden die SammelereignisKlasse  2	(Flut/Überschwemmung/Rückstau) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 2	Flut/Überschwemmung/Rückstau

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Klasse_NatKat_fuer_Austauschqu IS
'Ist dem Schaden die SammelereignisKlasse  4	(Nat-Kat für Austauschquoten) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 4	Nat-Kat für Austauschquoten

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Klasse_Sturm_Hagel IS
'Ist dem Schaden die SammelereignisKlasse  1	(Sturm/Hagel) zuzuordnen?

ja / nein

wenn ER01_Schaden_DWH_02_HBM.C_SammelereignisKlasse = 1	Sturm/Hagel

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Migriert IS
'migrierter Schaden

Ja / Nein

aus ER01_Schaden_SHUKR_01_HBS.C_Migriert

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Ordnungswidrigkeit_Kennz IS
'Ordnungswidrigkeitsverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Ordnungswidrigkeit_Kennz

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ProzessKennzeichen IS
'... gibt an, ob es im Zuge der Schadenregulierung eine gerichtliche Auseinandersetzung gegeben hat / gibt.

ja/nein

aus ER01_Schaden_DWH_01_HBS.C_ProzessKennzeichen

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Quartal_Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Quartal eingetreten ist und erst in einem Folgequartal beim Versicherungsunternehmen gemeldet wurde (ohne besondere Berücksichtigung des Kalenderjahreswwechsels).

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Quartal_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu gesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial IS
'Initial-Summe gesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Entsch IS
'Initial-Summe gesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_Rente IS
'Initial-Summe gesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_initial_SRK IS
'Initial-Summe gesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen IS
'Offene gesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_Entsch IS
'Offene gesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_Rente IS
'Offene gesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_gesi_offen_SRK IS
'Offene gesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als realisierbare Forderungen angesehen werden (‚gesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial IS
'Initial-Summe ungesicherte Regresse
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (''ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Entsch IS
'Initial-Summe ungesicherte Regresse auf Entschädigungszahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_Rente IS
'Initial-Summe ungesicherte Regresse auf Rentenzahlungen.
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_initial_SRK IS
'Initial-Summe ungesicherte Regresse auf äußere Schadenregulierungsaufwendungen
Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘). Nicht betrachtet werden Regresseingänge, also tatsächliche Zahlungseingänge zu den Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen IS
'Offene ungesicherte Regresse

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Entsch IS
'Offene ungesicherte Regresse Entschädigungszahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Entschädigungsleistungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_Rente IS
'Offene ungesicherte Regresse Rentenzahlungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen auf Rentenzahlungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Regress_ungesi_offen_SRK IS
'Offene ungesicherte Regresse äußere Schadenregulierungsaufwendungen

Beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt ursprünglich eingestellten Regressforderungen bzgl  äußere Schadenregulierungsaufwendungen, die als unsicher angesehen werden (‚ungesichert‘) abzgl. der Zahlungseingänge zu diesen Regressen.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckkaufbetrag IS
'Betrag im Kfz-Bereich, den der Versicherungsnehmer für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

aus ER01_Schaden_DWH_01_HBS.Rueckkaufbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellung_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Rueckstellungen_saldiert IS
'Saldierte Schadenrückstellungen
Summe aller zum Betrachtungszeitpunkt noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines Schadens. Offene Anteile gesicherter Regresse werden dabei berücksichtigt.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SFR_Belastung IS
'SFR-Belastung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SFR_Belastung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Schaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Schaden.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Business Key des Eintrags in die Dimension.

Zusammensetzung:

Adress_Id_A

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Schaden_rueckgekauft IS
'Kennzeichen im Kfz-Bereich, dass der Versicherungsnehmer die Zahlungen für den Schaden selbst getragen oder zurückgezahlt hat, um eine Rückstufung in eine schlechtere Schadenfreiheitsklasse zu verhindern.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_Schaden_rueckgekauft

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Schadenaufwand_ohne_IK IS
'Schadenaufwand ohne innere Kosten

Gesamter Aufwand aus Sicht des Unternehmens eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden belastende und nicht belastende Zahlungen sowie Forderungseingänge, Rückstellungen und offene Anteile gesicherter Regresse. Offene Anteile ungesicherter Regresse werden nicht berücksichtigt, ebenso innere Kosten.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Sozialrechtsschutz_Kennz IS
'Sozialrechtsschutz (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Sozialrechtsschutz_Kennz

Datenschutz $-? Bedeutung klären';

COMMENT ON COLUMN F_Schaden.Spaet_Schaden IS
'...gibt an, ob ein Schaden in einem Kalenderjahr eingetreten ist, das vor dem Kalenderjahr der Meldung beim Versicherungsunternehmen liegt.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_Spaet_Schaden

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Strafverfahren_Kennz IS
'Strafverfahren (nur RS)

ja / nein/ unzutreffend

aus ER03_GerVerf_Schaden_R_01_HBS.C_Strafverfahren_Kennz

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

COMMENT ON COLUMN F_Schaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.VTP_Info IS
'VTP-Info Unfallregulierung

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_02_HBS.C_VTP_Info

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.VersicherungsschVersagt IS
'Merker, ob Versicherungsschutz versagt

ja / nein/ unzutreffend

aus ER01_Schaden_SHUKR_01_HBS.C_VersicherungsschutzVersagt

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastenden und nicht belastenden Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

aus ER01_Schaden_DWH_01_HBS.

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.aufwandsneutral IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und der Schadenaufwand ohne innere Kosten <=0 ist. 
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.aufwandsneutral_ohne_SRK IS
'Kennzeichen aufwandsneutral ohne äußere Schadenregulierung

Bei einem Schaden wird dieses Kennzeichen gesetzt, wenn er den Schadenstatus ‚Abgeschlossen'' hat und die saldierten Schadenzahlungen für Entschädigungen und Renten <=0 sind. Aufwendungen für äußere Schadenregulierung können dagegen aufgetreten sein, der Schaden muss also nicht insgesamt aufwandsneutral sein.  Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Hinweis: Dies entspricht inhaltlich der bisherigen o.E.-Logik in der SDS-Statistik

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_aufwandsneutral_ohne_SRK

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.ohneEntschaedigung IS
'... gibt an, ob der Schaden den Schadenstatus ‚Abgeschlossen'' hat und  keinerlei reine Entschädigungs- oder reine Rentenzahlungen geflossen sind.
Geöffnete Schäden erhalten die Ausprägung NULL, da das Kennzeichen bei geöffneten Schäden nicht abgeleitet werden kann.
Das Kennzeichen ‚o.E.‘ wurde früher auch als ‚o.Z.‘ bezeichnet (ohne Zahlung). 

ja / nein/ unzutreffend

aus ER01_Schaden_DWH_01_HBS.C_OE

Datenschutz $-';

COMMENT ON COLUMN F_Schaden.sensiblerSchaden IS
'ein Schaden wird als "sensibel" bezeichnet, wenn z.B. eine am Schaden beteiligte Person eine Vorstandsbeschwerde ausgesprochen hat.

ja/ nein

aus ER01_Schaden_SHUKR_01_HBS.C_sensiblerSchaden

Datenschutz  $-';

COMMENT ON COLUMN F_Teilschaden.Abgelehnt IS
'Fall/ Teilfall abgelehnt

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Abgelehnt

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.AnzahlGerichtsverfahren IS
'.. ist die Anzahl der zu einem Betrachtungszeitraum innerhalb einer oder mehrerer Zeitdimension (Schadenmeldedatum, Schadeneintrittsdatum, Verfahrensanfangsdatum, Verfahrensendedatum etc.) zugehörigen Gerichtsprozesse. 

aus ER02_Teilschaden_DWH_01_WBS.AnzahlGerichtsverfahren

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Betrugsverdacht_C IS
'... ist das Kennzeichen, ob ein Betrugsverdacht besteht oder nicht.

ja/nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_Betrugsverdacht_C

wg. Nicht-Änderbarkeit in der Historie: Datenschutz $C';

COMMENT ON COLUMN F_Teilschaden.Durchlaufzeit_1_Zahlung_B IS
'Durchlaufzeit der Teilschadenbearbeitung in Werktagen bis zur ersten Entschädigungs- oder Rentenzahlung.

select	min( Werktag_Nr_ab_Stichtag) - Durchlaufzeit__Beginn (+1 ???)
from	LE01_Zahlung_SHUKR_01_HBS	sat,
			ER01_ER02_LE01_BL						link,
			RE01_Kalender_DWH_01_HBS	bis
where	bis.FK_RE01_Kalender= ???
and		bis.Datum = sat.Buchgungsdatum, sat.Belegdatum, sat.Nettofaellifkeit ???
and		link.FK_ER02_Teilschaden = FK_ER02_Teilschaden

--> Historie beachten !!!
--> Zahlungen qualifizieren (Leistungsart?)

Datenschutz $B';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Entsch IS
'Rückstellung, die am Einrichtungstag des Teilschadens für reine Entschädigungsleistungen (keine Schadenregulierung) gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_Rente IS
'Erste Rückstellung, die zu einem Teilschaden für Rentenzahlungen angesetzt wurde. Da die Rentenrückstellung in der Regel erst nach einiger Zeit gesetzt wird durch Umwidmung eines Teils des Rückstellung für Entschädigungsleistungen, ist im Gegensatz zur Erstrückstellung für Entschädigungsleistungen / äußere SR nicht das Einrichtungsdatum ausschlaggebend.


Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Erstrueckstellung_SRK IS
'Rückstellung, die am Einrichtungstag des Teilschadens für Aufwendungen für äußere Schadenregulierung gesetzt wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.FalschberatungAussendienst IS
'... gibt an, ob durch den Außendienst eine falsche Beratung stattgefunden hat.

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_FalschberatungAussendienst

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Fehlanlage IS
'Fehlanlage

ja / nein/ unzutreffend

ER02_Teilschaden_SHUKR_01_WBS.C_Fehlanlage

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Anlagejahr IS
'... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'')

für CM:
aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Datenschutz $-
';

COMMENT ON COLUMN F_Teilschaden.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Eintrittsjahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Erfassungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_GesSchaden_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Meldejahr IS
'Die Jahr_ID ist identisch zum Jahr im Format JJJJ, so dass bereits die ID in der Faktentabelle als Jahr genutzt werden kann.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.ID_Partner_Auslandsbuero_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.ID_Partner_VN_Merkm IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Teilschaden.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Teilschaden.ID_Region_anlegende_Stelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenortmerkmale IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussjahr IS
'... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde

aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr

Datenschutz $-
';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenschlussmeldedatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Teilschaden.ID_TeilschadenMerkmale IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang IS
'Summe gesicherte Regresseingänge
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_Entsch IS
'Summe gesicherte Regresseingänge auf Entschädigungszahlungen.

Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_Rente IS
'Summe gesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_gesi_Eingang_SRK IS
'Summe gesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge aus gesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang IS
'Summe ungesicherte Regresseingänge
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_Entsch IS
'Summe ungesicherte Regresseingänge auf Entschädigungszahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Entschädigungszahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_Rente IS
'Summe ungesicherte Regresseingänge auf Rentenzahlungen.
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt auf Rentenzahlungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Regress_ungesi_Eingang_SRK IS
'Summe ungesicherte Regresseingänge auf äußere Schadenregulierungsaufwendungen
Enthält alle Zahlungseingänge zu ungesicherten Regressen des Teil-Schadens bis zum Betrachtungszeitpunkt bzgl  äußere Schadenregulierungsaufwendungen.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.RegulierungAussendienst IS
'... gibt an, ob die Regulierung durch den Aussendienst vorgenommen wurde

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_RegulierungAussendienst

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SK_F_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_Auslandsbuero IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.SK_Partner_VN IS
'aus PA01_Partner_Par_01_HBS.FK_PA01_Partner
und PA01_Partner_Sch_01_HBS.FK_PA01_Partner';

COMMENT ON COLUMN F_Teilschaden.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Teilschaden.SK_Schadenort IS
'aus GE01_Gebiet_Sch_01_HBS.FK_GE01_Gebiet

Business Key des Eintrags in die Dimension.

Zusammensetzung:

Adress_Id_A

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Teilschaden.SchadenOhneForderung IS
'Schaden ohne Forderung

ja / nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS,C_SchadenOhneForderung

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.SchadenfeststellerVorOrt IS
'... gibt an, ob ein Schadenfeststeller vor Ort war.

ja/ nein/ unzutreffend

aus ER02_Teilschaden_SHUKR_01_WBS.C_SchadenfeststellerVorOrt

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.TeilfallUngueltig IS
'Teilfall ist ungültig

Ja / Nein

aus ER02_Teilschaden_SHUKR_01_WBS.C_TeilfallUngueltig

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein IS
'Reine Rückstellung
Summe aller zum Zeitpunkt t noch vorhandenen Rückstellungen für Entschädigungen, äußere Schadenregulierung und Renten eines (Teil-)Schadens. Regresse werden nicht berücksichtigt

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Entsch IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.


Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_Rente IS
'Reine Rentenrückstellung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt t des (Teil-)Schadens für Rentenzahlungen noch existiert, also nicht durch Rentenzahlungen aufgebraucht wurde. Umgebuchte Rentenzahlungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Rueckst_rein_SRK IS
'Reine Rückstellung für äußere Schadenregulierung
Rückstellung, die zum aktuellen Betrachtungszeitpunkt des (Teil-)Schadens für Aufwendungen der äußeren Schadenregulierung noch existiert, also nicht durch Aufwendungen für die äußere Schadenregulierung aufgebraucht wurde. Umgebuchte Aufwendungen müssen berücksichtigt werden, Zahlungseingänge hingegen nicht.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein IS
'Summe reine Schadenzahlungen

Summe aller Zahlungen eines (Teil-) Schadens zu einem Betrachtungszeitpunkt t. Berücksichtigt werden alle belastenden und nicht belastenden Zahlungen. Nicht berücksichtigt werden Forderungseingänge.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Entsch IS
'Summe reine Entschädigungszahlungen

Die Summe der reinen Entschädigungszahlungen beinhaltet alle im Zuge der (Teil-) Schadenregulierung bis zum Betrachtungszeitpunkt ausgehenden Zahlungen des Versicherers für Entschädigungsleistungen. Nicht eingerechnet werden dabei Zahlungen für die Schadenregulierung und auch keine Zahlungseingänge. Umbuchungen werden hingegen betrachtet.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_Rente IS
'Summe reine Rentenzahlungen

Die Summe Rentenzahlungen beinhaltet alle im Zuge der (Teil-)Schadenregulierung bis zum Betrachtungszeitpunkt t ausgehenden Zahlungen des Versicherers für Renten. Explizit nicht eingerechnet werden dabei Zahlungseingänge. Umbuchungen müssen dagegen berücksichtigt werden.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlung_rein_SRK IS
'Summe reine Aufwendungen äußere Schadenregulierung

Die Summe der reinen Aufwendungen für äußere Schadenregulierung beinhaltet alle im Zuge der Schadenregulierung bis zum Betrachtungszeitpunkt angefallenen Aufwendungen des Versicherers für die äußere Schadenregulierung des (Teil-)Schadens. Zahlungseingänge werden dabei nicht berücksichtigt, Umbuchungen dagegen schon.

Datenschutz $-';

COMMENT ON COLUMN F_Teilschaden.Teilsch_Zahlungen_saldiert IS
'Saldierte Schadenzahlungen
Summe aller Zahlungen eines Teil-Schadens zu einem Betrachtungszeitpunkt. Berücksichtigt werden alle Ausgangszahlungen und Regresseingänge (gesichert und ungesichert).

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GJ_Schaden IS
'...gibt an, ob sich ein Schaden innerhalb des gleichen Kalenderjahres (Geschäftsjahres) ereignet hat und gemeldet wurde.

ja/ nein

aus ER01_Schaden_DWH_01_HBS.C_GJ_Schaden,
redundant zu F_Schaden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetrag IS
'... enthält  für Regress-Zahlungen den Gesamtbetrag der Regressforderung, während ''Teilbetrag'' nur den Betrag aus der aktuellen Zahlung wiedergibt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.GeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.GeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Buchungsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Datum_1_Wiedereroeffnung IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT

Redundant zu F_Schaden.';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Eintrittsdatum IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Leistungsart IS
'Lfd. Nr. der Leistungsarten

aus LE02_Zahlung_Det_SHUKR_01_WBS.C_Leistungsart_B ?

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Meldedatum  IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Region_Bearbeitungsstelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_Bearbeitungsstelle';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Region_VertragsfuehStelle IS
'aus ER01_Schaden_SHUKR_01_HBS.C_VertragsfuehrendeStelle';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Schadenmerkmale IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Schadenstatus_Detail IS
'ID des Status - da bisher nur die Status 0...3 in SAP-CM aktiv genutzt werden, wird die ID bis auf weiteres so gewählt, dass sie mit der ID in SAP-CM übereinstimmt.';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_Waehrung IS
'
aus LE01_Zahlung_SHUKR_01_HBS.C_Waehrung

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZahlgFordMerkmale IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_ZhlgFordDetMerkmale IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.ID_geaendert_am IS
'Die Zeit_ID wird so gesetzt, dass sie identisch zum Datum ist. Aufbau JJJJMMTT';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_F_Zhlg_Ford_Detail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_Teilschaden IS
'aus ER02_Teilschaden_SHUKR_01_WBS.FK_ER02_Teilschaden';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZahlungForderung IS
'aus LE01_Zahlung_SHUKR_01_HBS.FK_LE01_Zahlung';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.SK_ZhlgFordDetail IS
'aus LE02_Zahlung_Det_SHUKR_01_WBS.FK_LE02_Zahlung_Detail';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.Teilbetrag IS
'... ist ein Teilbetrag einer Zahlung der sich hinsichtlich Leistungsart oder Betragsteil unterscheiden läßt.

aus LE02_Zahlung_Det_SHUKR_01_WBS.Teilbetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.TeilbetragInEuro IS
'... gibt den im Euro umgerechneten Teilbetrag an.

aus LE02_Zahlung_Det_SHUKR_01_WBS.TeilbetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.UrsprGeforderterBetrag IS
'... enthält  für Regress-Zahlungen den ursprünglich vor Verhandlungen geforderten Gesamtbetrag der Regressforderung.

aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetrag

Datenschutz $-';

COMMENT ON COLUMN F_Zhlg_Ford_Detail.UrsprGeforderterBetragInEuro IS
'... gibt den im Euro umgerechneten vor Verhandlungen geforderten Gesamtbetrag der Regressforderung an.

aus aus LE02_Zahlung_Det_SHUKR_01_WBS.UrsprGeforderterBetragInEuro

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Apraxa_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.SK_F_Schaden IS
'aus ER01_Schaden_SHUKR_01_HBS.FK_ER01_Schaden';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN R_Schaden_Eigener_RA.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON TABLE DET_Schaden IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

Schadenbearbeitungsstelle
Vertragsbearbeitende Stelle
anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle



folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum

Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum

Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum

Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. Für den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum

Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum

angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am

GesSchaden_geaendert_am Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am

AbgabedatumInkasso Abgabedatum an Inkassobüro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso

Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum

Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung

Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum



folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:

Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr

Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es zählt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr

Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DET_ZhlgFordDetail IS
'folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Buchungsdatum ... Buchungsdatum, an dem die Zahlung im Schadensystem verbucht wird. aus LE02_Zahlung_Det_SHUKR_01_WBS.Buchungsdatum
geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus LE02_Zahlung_Det_SHUKR_01_WBS.geaendert_am

Enthält auch die Information über Zahlungseingänge zu Forderungen aus FS-CD unter der Zahlung_Detail_lfd "000".';

COMMENT ON TABLE DIM_AbschlussVerfahren IS
'
';

COMMENT ON TABLE DIM_AusgangVerfahren IS
'
';

COMMENT ON TABLE DIM_Fachgebiet IS
'
';

COMMENT ON TABLE DIM_Geltungsbereich IS
'
';

COMMENT ON TABLE DIM_Unfallart IS
'
';

COMMENT ON TABLE DIM_Verletzung IS
'
';

COMMENT ON TABLE DIM_Verletzung_Koerperteil IS
'
';

COMMENT ON TABLE DMK_Schadenmerkmale IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

Schadenbearbeitungsstelle
Vertragsbearbeitende Stelle
anl_Stelle ... ist die einrichtende Bearbeitungsstelle, gibt an, durch welche Regionaldirektion der Schadenfall angelegt wurde. aus ER01_Schaden_DWH_01_HBS.C_anl_Stelle



folgende Datumsfelder wurden nach DIM_Zeit ausgelagert:

Meldedatum ... ist das Datum, an dem der DEVK der Schaden erstmalig gemeldet wurde, aus ER01_Schaden_SHUKR_01_HBS.Meldedatum

Eintrittsdatum ... ist der Zeitpunkt, an dem der Schaden eingetreten ist (Eintrittsdatum + -uhrzeit). Dieses Datum gibt in Verbindung mit dem laufenden Geschäftsjahr Auskunft darüber, ob es sich um einen Geschäfts- oder Vorjahresschaden handelt. aus ER01_Schaden_SHUKR_01_HBS.Eintrittsdatum

Bearbeitungsstelledatum ... ist das Datum, an dem die Bearbeitungsstelle zum letzten Mal geändert wurde. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstelledatum

Bearbeitungsstatusdatum ... ist das Datum an dem der Bearbeitungsstatus eingetreten ist. Für den Status geschlossen ist das das Schadenschlussmeldedatum. aus ER01_Schaden_SHUKR_01_HBS.Bearbeitungsstatusdatum

Loeschdatum ... ist das Liquidationsdatum der Schadenakte. aus ER01_Schaden_SHUKR_01_HBS.Loeschdatum

angelegt_am ... ist der Zeitpunkt, an dem der Schaden erstmalig angelegt wurde. aus ER01_Schaden_SHUKR_01_HBS.angelegt_am

geaendert_am ...  ist der Zeitpunkt der letzten Änderung. aus ER01_Schaden_SHUKR_01_HBS.geaendert_am

GesSchaden_geaendert_am Änderungszeitpunkt der letzten Änderung im gesamten Schaden incl. Teilschäden. aus ER01_Schaden_SHUKR_01_HBS.GesSchaden_geaendert_am

AbgabedatumInkasso Abgabedatum an Inkassobüro. aus ER01_Schaden_SHUKR_01_HBS.AbgabedatumInkasso

Schadenschlussmeldedatum ... ist das Datum, an dem der Schaden (letztmalig) geschlossen wurde. aus ER01_Schaden_DWH_01_HBS.Schadenschlussmeldedatum

Datum_Erste_Wiedereroeffnung aus ER01_Schaden_DWH_01_HBS.Datum_Erste_Wiedereroeffnung

Wiedervorlagedatum Datum der Wiedervorlage aus ER01_Schaden_SHUKR_01_HBS.Wiedervorlagedatum



folgende Datumsfelder wurden nach DIM_Jahr ausgelagert:

Eintrittsjahr ... ist das Kalenderjahr, in dem ein Schaden eingetreten ist. (Jahr aus ''Eintrittsdatum'') aus ER01_Schaden_DWH_01_HBS.Eintrittsjahr

Meldejahr ... ist das Kalenderjahr, in dem ein Schaden dem Versicherer gemeldet wurde, d.h. es zählt der Tag, an dem das Versicherungsunternehmen Kenntnis von dem Schaden erlangt hat. (Jahr aus ''Meldedatum'') aus ER01_Schaden_DWH_01_HBS.Meldejahr

Anlagejahr ... ist das Kalenderjahr, in dem ein Schaden im Schadensystem angelegt wurde. (Jahr aus ''angelegt_am'') aus ER01_Schaden_DWH_01_HBS.Anlagejahr

Schadenschlussjahr ... ist das Kalenderjahr, in dem ein Schaden geschlossen wurde aus ER01_Schaden_DWH_01_HBS.Schadenschlussjahr';

COMMENT ON TABLE DMK_Vertragsmerkmale IS
'folgende Felder zur Zuordnung von RDen wurden nach DIM_Region  ausgelagert:

vertragsfuehrendeRD Kurztext für die vertragsführende RD. aus ER01_WE01_VertrSpie_Sch_01_LBM.C_vertragsfuehrendeRD';

