--<ScriptOptions statementTerminator=";"/>
-- Version 20644

CREATE TABLE DET_Ford_Verb (
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Ford_Verb_Pos (
		SK_Ford_Verb_Position VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL,
		BelegPositionNr VARCHAR2(8 CHAR) NOT NULL,
		Teilposition VARCHAR2(8 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_InExkassoObjekt (
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		InExkassoObjektNr_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_InExkasso_Lauf (
		SK_InExkasso_Lauf VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Laufdatum DATE NOT NULL,
		Laufkennung VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_InkassoPosition (
		SK_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		BelegNr_A VARCHAR2(64 CHAR),
		Abgabedatum DATE,
		InkassoPositionLfdNr VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Inkassobuero (
		SK_Inkassobuero VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		POB_A VARCHAR2(64 CHAR) NOT NULL,
		POB_PZ_A VARCHAR2(64 CHAR) NOT NULL,
		Name_A VARCHAR2(180 CHAR) NOT NULL
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

CREATE TABLE DET_Partner (
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		POB_A VARCHAR2(64 CHAR) NOT NULL,
		POB_PZ_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Ueberwachung (
		SK_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Mandant VARCHAR2(8 CHAR),
		InExkassoObjektNr_A VARCHAR2(64 CHAR) NOT NULL,
		POB_A VARCHAR2(64 CHAR),
		Vertragskontonummer_A VARCHAR2(64 CHAR),
		Ueberwachung_LFD VARCHAR2(8 CHAR)
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Vertragskonto (
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Vertragskontonummer_A VARCHAR2(64 CHAR) NOT NULL,
		Regelbeitrag_jaehrlich_VK NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Zahlung (
		SK_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DET_Zahlungsposition (
		SK_Zahlungsposition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		BelegNr_A VARCHAR2(64 CHAR) NOT NULL,
		BelegPositionNr VARCHAR2(8 CHAR) NOT NULL,
		Teilposition VARCHAR2(8 CHAR) NOT NULL,
		Position_simuliert CHAR(1) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ausgleichsgrund (
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ausgleichsgrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ausgleichsgrund VARCHAR2(64 CHAR) NOT NULL,
		Ausgleichsgrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ausgleichsstatus (
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ausgleichsstatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ausgleichsstatus VARCHAR2(64 CHAR) NOT NULL,
		Ausgleichsstatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ausnahmegrund (
		ID_Ausnahmegrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ausnahmegrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ausnahmegrund VARCHAR2(64 CHAR) NOT NULL,
		Ausnahmegrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_BelegHerkunft (
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		BelegHerkunft_kurz VARCHAR2(24 CHAR) NOT NULL,
		BelegHerkunft VARCHAR2(64 CHAR) NOT NULL,
		BelegHerkunft_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Belegart (
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Belegart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Belegart VARCHAR2(64 CHAR) NOT NULL,
		Belegart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sollstellungsrelevant CHAR(1 CHAR) NOT NULL,
		Zahlungsrelevant CHAR(1 CHAR) NOT NULL,
		LSV_Einzugsrelevant CHAR(1 CHAR) NOT NULL,
		ID_FordAusfManMasch NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Betragsart (
		ID_Betragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Betragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Betragsart VARCHAR2(64 CHAR) NOT NULL,
		Betragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Buchungskreis (
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Buchungskreis_kurz VARCHAR2(24 CHAR) NOT NULL,
		Buchungskreis VARCHAR2(64 CHAR) NOT NULL,
		Buchungskreis_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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

CREATE TABLE DIM_Eing_ZWeg_Klasse (
		ID_Eingangszahlweg_Klasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Zahlart NUMBER(28 , 0) NOT NULL,
		Eingangszahlweg_Klasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Eingangszahlweg_Klasse VARCHAR2(64 CHAR) NOT NULL,
		Eingangszahlweg_Klasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Eing_ZWeg_vorges (
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Eingangszahlweg_Klasse NUMBER(28 , 0) NOT NULL,
		Eingangszahlweg_vorges_kurz VARCHAR2(24 CHAR) NOT NULL,
		Eingangszahlweg_vorges VARCHAR2(64 CHAR) NOT NULL,
		Eingangszahlweg_vorges_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_FoVe_Klassifiktn (
		ID_Ford_Verb_Klassifikation NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ford_Verb_Klassifikation_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ford_Verb_Klassifikation VARCHAR2(64 CHAR) NOT NULL,
		Ford_Verb_Klassifikation_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_FordAusfManMasch (
		ID_FordAusfManMasch NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		FordAusfall_ManMasch_kurz VARCHAR2(24 CHAR) NOT NULL,
		Forderungsausfall_ManMasch VARCHAR2(64 CHAR) NOT NULL,
		FordAusfall_ManMasch_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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

CREATE TABLE DIM_HauptTeilvorgang (
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Hauptvorgang NUMBER(28 , 0) NOT NULL,
		ID_Betragsart NUMBER(28 , 0) NOT NULL,
		HauptTeilvorgang_kurz VARCHAR2(24 CHAR) NOT NULL,
		HauptTeilvorgang VARCHAR2(64 CHAR) NOT NULL,
		HauptTeilvorgang_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Hauptvorgang (
		ID_Hauptvorgang NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Hauptvorgang_kurz VARCHAR2(24 CHAR) NOT NULL,
		Hauptvorgang VARCHAR2(64 CHAR) NOT NULL,
		Hauptvorgang_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_InExObjArt (
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		InExkassoObjektArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		InExkassoObjektArt VARCHAR2(64 CHAR) NOT NULL,
		InExkassoObjektArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_InExObjTyp (
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		InExkassoObjektTyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		InExkassoObjektTyp VARCHAR2(64 CHAR) NOT NULL,
		InExkassoObjektTyp_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_InEx_Prod_Grp (
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		InEx_Produktgruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		InEx_Produktgruppe VARCHAR2(64 CHAR) NOT NULL,
		InEx_Produktgruppe_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_InkAbgstat_Klass (
		ID_Ink_Abgabestatus_Klasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ink_Abgabestatus_Klasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ink_Abgabestatus_Klasse VARCHAR2(64 CHAR) NOT NULL,
		Ink_Abgabestatus_Klasse_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ink_Abgabestat (
		ID_Inkasso_Abgabestatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Ink_Abgabestatus_Klasse NUMBER(28 , 0) NOT NULL,
		Inkasso_Abgabestatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		Inkasso_Abgabestatus VARCHAR2(64 CHAR) NOT NULL,
		Inkasso_Abgabestatus_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Jahr NUMBER(10 , 0) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_LieferungsArt (
		ID_LieferungsArt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		LieferungsArt_kurz VARCHAR2(24 CHAR) NOT NULL,
		LieferungsArt VARCHAR2(64 CHAR) NOT NULL,
		LieferungsArt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_MA_System (
		ID_MA_System NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Mitarbeiter_System_kurz VARCHAR2(24 CHAR) NOT NULL,
		Mitarbeiter_System VARCHAR2(64 CHAR) NOT NULL,
		Mitarbeiter_System_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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

CREATE TABLE DIM_Org_Bereich (
		ID_Org_Bereich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Organisationsbereich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Organisationsbereich VARCHAR2(64 CHAR) NOT NULL,
		Organisationsbereich_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		RD_Ebene3_kurz VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3 VARCHAR2(64 CHAR) NOT NULL,
		RD_Ebene3_lang VARCHAR2(64 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Regelbtg_Klasse (
		ID_Regelbeitrag_Klasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Regelbeitrag_Klasse_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regelbeitrag_Klasse VARCHAR2(64 CHAR) NOT NULL,
		Regelbeitrag_Klasse_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_RD_Ebene1 NUMBER(28 , 0) NOT NULL,
		Regionaldirektion_kurz VARCHAR2(24 CHAR) NOT NULL,
		Regionaldirektion VARCHAR2(64 CHAR) NOT NULL,
		Regionaldirektion_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ruecklaeufergrd (
		ID_Ruecklaeufergrund NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ruecklaeufergrund_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ruecklaeufergrund VARCHAR2(64 CHAR) NOT NULL,
		Ruecklaeufergrund_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_StaAbInkBueroBtr (
		ID_StatusAbgabeInkbuero_Btr NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		StatusAbgabeInkbuero_Btr_kurz VARCHAR2(24 CHAR) NOT NULL,
		StatusAbgabeInkassobuero_Btr VARCHAR2(64 CHAR) NOT NULL,
		StatusAbgabeInkbuero_Btr_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_StaAbInkBueroSch (
		ID_StatusAbgabeInkbuero_Sch NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		StatusAbgabeInkbuero_Sch_kurz VARCHAR2(24 CHAR) NOT NULL,
		StatusAbgabeInkassobuero_Sch VARCHAR2(64 CHAR) NOT NULL,
		StatusAbgabeInkbuero_Sch_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_StatusInExObj (
		ID_StatusInExkassoObjekt NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		StatusInExkassoObjekt_kurz VARCHAR2(24 CHAR) NOT NULL,
		StatusInExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		StatusInExkassoObjekt_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UebStufenKlasse (
		ID_Ueberwachungsstufenklasse NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ist_aktive_passive_Stufe VARCHAR2(24 CHAR) NOT NULL,
		Ueberwstufenklasse_B_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsstufenklasse_B VARCHAR2(64 CHAR) NOT NULL,
		Ueberwstufenklasse_B_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Ueb_Variante (
		ID_Ueberwachungsvariant NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ueberwachungsvariante_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsvariante VARCHAR2(64 CHAR) NOT NULL,
		Ueberwachungsvariante_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UeberwBetragsart (
		ID_UeberwBetragsart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ueberw_Betragsart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsbetragsart VARCHAR2(64 CHAR) NOT NULL,
		Ueberw_Betragsart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UeberwStufe (
		ID_Ueberwachungsstufe NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Ueberwachungsverfahren NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsstufenklasse NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsstufentyp NUMBER(28 , 0) NOT NULL,
		Ueberwachungsstufe_B_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsstufe_B VARCHAR2(64 CHAR) NOT NULL,
		Ueberwachungsstufe_B_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UeberwStufenTyp (
		ID_Ueberwachungsstufentyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Ueberwachungsstufentyp_B_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsstufentyp_B VARCHAR2(64 CHAR) NOT NULL,
		Ueberwachungsstufentyp_B_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UeberwVerfStatus (
		ID_UeberwVerfStatus NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		UeberwVerfStatus_kurz VARCHAR2(24 CHAR) NOT NULL,
		UeberwVerfStatus VARCHAR2(64 CHAR) NOT NULL,
		UeberwVerfStatus_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_UeberwVerfahren (
		ID_Ueberwachungsverfahren NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_UeberwBetragsart NUMBER(28 , 0) NOT NULL,
		Ueberwachungsverfahren_kurz VARCHAR2(24 CHAR) NOT NULL,
		Ueberwachungsverfahren VARCHAR2(64 CHAR) NOT NULL,
		Ueberwachungsverfahren_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Vertragskontotyp (
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Vertragskontotyp_kurz VARCHAR2(24 CHAR) NOT NULL,
		Vertragskontotyp VARCHAR2(64 CHAR) NOT NULL,
		Vertragskontotyp_lang VARCHAR2(500 CHAR) NOT NULL,
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
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Woche_kurz VARCHAR2(64 CHAR) NOT NULL,
		Woche NUMBER(10 , 0) NOT NULL,
		Woche_lang VARCHAR2(64 CHAR) NOT NULL,
		Sequenz NUMBER(28 , 0) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_ZW_vertraglich (
		ID_Zahlweise_vertraglich NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Zahlweise_vertraglich_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlweise_vertraglich VARCHAR2(64 CHAR) NOT NULL,
		Zahlweise_vertraglich_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE DIM_Zahlart (
		ID_Zahlart NUMBER(28 , 0) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		Zahlart_kurz VARCHAR2(24 CHAR) NOT NULL,
		Zahlart VARCHAR2(64 CHAR) NOT NULL,
		Zahlart_lang VARCHAR2(500 CHAR) NOT NULL,
		Sortierung_lfd NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Direktzahlungspos (
		SK_DIZ_Zahlungsposition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		ID_Zahlungsdatum NUMBER(28 , 0) NOT NULL,
		SK_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_VertragskontoTyp NUMBER(28 , 0) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		ID_HVTV_ausgeglichen NUMBER(28 , 0) NOT NULL,
		ID_Belegart_ausgeglichen NUMBER(28 , 0) NOT NULL,
		ID_Valutadatum NUMBER(28 , 0) NOT NULL,
		ID_Zahlung_Anlegedatum NUMBER(28 , 0) NOT NULL,
		Zahlung_Anlegezeitpunkt DATE NOT NULL,
		Anzahl_Zahlungspositionen NUMBER(10 , 0) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_FoVePos_ProLauf (
		SK_FoVePos_ProLauf VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_LSV_Lauf VARCHAR2(64 CHAR) NOT NULL,
		ID_LSV_Laufdatum NUMBER(28 , 0) NOT NULL,
		SK_LSV_Lauf_vorheriger VARCHAR2(64 CHAR) NOT NULL,
		ID_Datum_vorheriger_LSV_Lauf NUMBER(28 , 0) NOT NULL,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		SK_Ford_Verb_Position VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		ID_Zahlweise_vertraglich NUMBER(28 , 0) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		ID_Ausnahmegrund NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeitdatum NUMBER(28 , 0) NOT NULL,
		ID_FoVeKlassifikation_Beleg NUMBER(28 , 0) NOT NULL,
		ID_Ford_Verb_Anlegedatum NUMBER(28 , 0) NOT NULL,
		Ford_Verb_Anlegezeitpunkt DATE NOT NULL,
		Anzahl_FoVe_Positionen NUMBER(10 , 0) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL,
		Anzahl_Einzuege NUMBER(10 , 0) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_FoVePosition (
		SK_FoVePosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		SK_Ford_Verb_Position VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		ID_StatusInExkassoObjekt NUMBER(28 , 0) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		ID_Zahlweise_vertraglich NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsvariante NUMBER(28 , 0) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		ID_Ausgleich_Belegart NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichdurchf_MA_System NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichdurchfuehrung_RD NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichdurchf_Bereich NUMBER(28 , 0) NOT NULL,
		ID_Nettofaelligkeitdatum NUMBER(28 , 0) NOT NULL,
		ID_FoVeKlassifikation_Beleg NUMBER(28 , 0) NOT NULL,
		ID_Ford_Verb_Anlegedatum NUMBER(28 , 0) NOT NULL,
		Ford_Verb_Anlegezeitpunkt DATE NOT NULL,
		ID_StatusAbgabeInkbuero_Sch NUMBER(28 , 0) NOT NULL,
		Anzahl_FoVe_Positionen NUMBER(10 , 0) NOT NULL,
		ID_UeberwVerf_vorges NUMBER(28 , 0) NOT NULL,
		ist_ueberwachungsrelevant CHAR(1 CHAR) NOT NULL,
		BetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_InExObjekt (
		SK_InExObjekt VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		ID_StatusInExkassoObjekt NUMBER(28 , 0) NOT NULL,
		ID_StatusAbgabeInkbuero_Btr NUMBER(28 , 0) NOT NULL,
		ID_Zahlweise_vertraglich NUMBER(28 , 0) NOT NULL,
		ID_InExObj_LieferungsArt NUMBER(28 , 0) NOT NULL,
		ID_Regelbeitrag_jhrl_Klasse_VK NUMBER(28 , 0) NOT NULL,
		ID_InExObj_Anlegedatum NUMBER(28 , 0) NOT NULL,
		InExObj_Anlegezeitpunkt DATE NOT NULL,
		Anzahl_InExObjekte NUMBER(10 , 0) NOT NULL,
		Regelbeitrag_jaehrlich NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_InkassoPosition (
		SK_InkassoPosition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektArt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		SK_Inkassobuero VARCHAR2(64 CHAR) NOT NULL,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		ID_Abgabedatum VARCHAR2(64 CHAR) NOT NULL,
		ID_Abgabestatus VARCHAR2(64 CHAR) NOT NULL,
		Anzahl_InkassoPosition NUMBER(10 , 0) NOT NULL,
		AbgabebetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE F_Ueberw_ProBelPos (
		SK_Ueberw_ProBelPos VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		TA_Ersatzdatum DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		Stichtag_Ende DATE NOT NULL,
		SK_Ueberwachung VARCHAR2(64 CHAR) NOT NULL,
		SK_Ford_Verb_Position VARCHAR2(64 CHAR) NOT NULL,
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		ID_UeberwMassnahme_Beginn DATE,
		ID_UeberwMassnahme_Ende DATE,
		SK_Ueberwachungslauf VARCHAR2(64 CHAR) NOT NULL,
		ID_Ueberwachungslaufdatum NUMBER(28 , 0) NOT NULL,
		SK_Ueberwachungslauf_initial VARCHAR2(64 CHAR) NOT NULL,
		ID_UeberwLaufdatum_initial NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsstufe NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsstufe_initial NUMBER(28 , 0) NOT NULL,
		ID_Ueberwachungsdruckdatum NUMBER(28 , 0) NOT NULL,
		ID_UeberwVerfahrenStatus DATE,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		ID_StatusInExkassoObjekt NUMBER(28 , 0) NOT NULL,
		ID_Zahlweise_vertraglich NUMBER(28 , 0) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_letzter_Ruecklaeufergrund NUMBER(28 , 0) NOT NULL,
		ID_RD_vertragsfuehrend NUMBER(28 , 0) NOT NULL,
		ID_Abrechnungszeit_von NUMBER(28 , 0) NOT NULL,
		ID_Abrechnungszeit_bis NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0),
		ID_Ausgleichsgrund NUMBER(28 , 0),
		ID_Ausgleich_Belegart NUMBER(28 , 0) NOT NULL,
		hat_Ausgleich_durch_ZahlEing CHAR(1 BYTE) NOT NULL,
		ID_Ausgleichdurchf_MA_System NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichdurchfuehrung_RD NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichdurchf_Bereich NUMBER(28 , 0) NOT NULL,
		ID_Ausgleich_angelegt_am DATE,
		Anzahl_Ueberw_BearbSchritte NUMBER(10 , 0) NOT NULL,
		Anzahl_Ueberw_ProBelPos NUMBER(10 , 0) NOT NULL,
		UeberwachungsbetragInEuro NUMBER(16 , 2) NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '24.10.2018','DD.MM.YYYY') NOT NULL,
		Deploymentdatum DATE DEFAULT sysdate NOT NULL
	)
	PCTFREE 0
	PCTUSED 0
	LOGGING;

ALTER TABLE DET_Ford_Verb ADD CONSTRAINT DET_Ford_Verb_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Forderung_Verbindlichkeit);

ALTER TABLE DET_Ford_Verb_Pos ADD CONSTRAINT DET_Ford_Verb_Pos_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Ford_Verb_Position);

ALTER TABLE DET_InExkassoObjekt ADD CONSTRAINT DET_InExObj_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InExkassoObjekt);

ALTER TABLE DET_InExkasso_Lauf ADD CONSTRAINT DET_InExkasso_Lauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InExkasso_Lauf);

ALTER TABLE DET_InkassoPosition ADD CONSTRAINT DET_InkassoPosition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InkassoPosition);

ALTER TABLE DET_Inkassobuero ADD CONSTRAINT DET_Inkassobuero_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Inkassobuero);

ALTER TABLE DET_Ladelauf ADD CONSTRAINT DET_Ladelauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag);

ALTER TABLE DET_Last_Load ADD CONSTRAINT DET_Last_Load_PK PRIMARY KEY
	(WFL);

ALTER TABLE DET_Partner ADD CONSTRAINT DET_Partner_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Partner);

ALTER TABLE DET_Ueberwachung ADD CONSTRAINT DET_Ueberwachung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Ueberwachung);

ALTER TABLE DET_Vertragskonto ADD CONSTRAINT DET_Vertragskonto_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Vertragskonto);

ALTER TABLE DET_Zahlung ADD CONSTRAINT DET_Zahlung_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Zahlung);

ALTER TABLE DET_Zahlungsposition ADD CONSTRAINT DET_Zahlungsposition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Zahlungsposition);

ALTER TABLE DIM_Ausgleichsgrund ADD CONSTRAINT DIM_Ausgleichsgrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ausgleichsgrund);

ALTER TABLE DIM_Ausgleichsstatus ADD CONSTRAINT DIM_Ausgleichsstatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ausgleichsstatus);

ALTER TABLE DIM_Ausnahmegrund ADD CONSTRAINT DIM_Ausnahmegrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ausnahmegrund);

ALTER TABLE DIM_BelegHerkunft ADD CONSTRAINT DIM_BelegHerkunft_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_BelegHerkunft);

ALTER TABLE DIM_Belegart ADD CONSTRAINT DIM_Belegart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Belegart);

ALTER TABLE DIM_Betragsart ADD CONSTRAINT DIM_Betragsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Betragsart);

ALTER TABLE DIM_Buchungskreis ADD CONSTRAINT DIM_Buchungskreis_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Buchungskreis);

ALTER TABLE DIM_Datum ADD CONSTRAINT DIM_Datum_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Datum);

ALTER TABLE DIM_Eing_ZWeg_Klasse ADD CONSTRAINT DIM_Eingangszahlweg_Klasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Eingangszahlweg_Klasse);

ALTER TABLE DIM_Eing_ZWeg_vorges ADD CONSTRAINT DIM_Eingangszahlweg_vorges_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Eingangszahlweg_vorges);

ALTER TABLE DIM_FoVe_Klassifiktn ADD CONSTRAINT DIM_Ford_Verb_Klass_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ford_Verb_Klassifikation);

ALTER TABLE DIM_FordAusfManMasch ADD CONSTRAINT DIM_FordAusfManMasch_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_FordAusfManMasch);

ALTER TABLE DIM_Halbjahr ADD CONSTRAINT DIM_Halbjahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Halbjahr);

ALTER TABLE DIM_HauptTeilvorgang ADD CONSTRAINT DIM_HauptTeilvorgang_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_HauptTeilvorgang);

ALTER TABLE DIM_Hauptvorgang ADD CONSTRAINT DIM_Hauptvorgang_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Hauptvorgang);

ALTER TABLE DIM_InExObjArt ADD CONSTRAINT DIM_InExkassoObjektArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_InExkassoObjektArt);

ALTER TABLE DIM_InExObjTyp ADD CONSTRAINT DIM_InExkassoObjektTyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_InExkassoObjektTyp);

ALTER TABLE DIM_InEx_Prod_Grp ADD CONSTRAINT DIM_InEx_Produktgruppe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_InEx_Produktgruppe);

ALTER TABLE DIM_InkAbgstat_Klass ADD CONSTRAINT DIM_Ink_AbgStatus_Klasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ink_Abgabestatus_Klasse);

ALTER TABLE DIM_Ink_Abgabestat ADD CONSTRAINT DIM_Ink_Abgabestatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Inkasso_Abgabestatus);

ALTER TABLE DIM_JNKENNZ ADD CONSTRAINT LKP_KENNZ_PK PRIMARY KEY
	(KENNZ);

ALTER TABLE DIM_Jahr ADD CONSTRAINT DIM_Jahr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Jahr);

ALTER TABLE DIM_LieferungsArt ADD CONSTRAINT DIM_LieferungsArt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_LieferungsArt);

ALTER TABLE DIM_MA_System ADD CONSTRAINT DIM_MA_System_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_MA_System);

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Monat);

ALTER TABLE DIM_Org_Bereich ADD CONSTRAINT DIM_Org_Bereich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Org_Bereich);

ALTER TABLE DIM_Quartal ADD CONSTRAINT DIM_Quartal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Quartal);

ALTER TABLE DIM_RD_Ebene1 ADD CONSTRAINT DIM_RD_Ebene1_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene1);

ALTER TABLE DIM_RD_Ebene2 ADD CONSTRAINT DIM_RD_Ebene2_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene2);

ALTER TABLE DIM_RD_Ebene3 ADD CONSTRAINT DIM_RD_Ebene3_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_RD_Ebene3);

ALTER TABLE DIM_Regelbtg_Klasse ADD CONSTRAINT DIM_Regelbeitrag_Klasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Regelbeitrag_Klasse);

ALTER TABLE DIM_Regionaldir ADD CONSTRAINT DIM_Regionaldirektion_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Regionaldirektion);

ALTER TABLE DIM_Ruecklaeufergrd ADD CONSTRAINT DIM_Ruecklaeufergrund_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ruecklaeufergrund);

ALTER TABLE DIM_StaAbInkBueroBtr ADD CONSTRAINT DIM_StaAbInkBueroBtr_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_StatusAbgabeInkbuero_Btr);

ALTER TABLE DIM_StaAbInkBueroSch ADD CONSTRAINT DIM_StaAbInkBueroSch_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_StatusAbgabeInkbuero_Sch);

ALTER TABLE DIM_StatusInExObj ADD CONSTRAINT DIM_StatusInExkassoObjekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_StatusInExkassoObjekt);

ALTER TABLE DIM_UebStufenKlasse ADD CONSTRAINT DIM_Uebsstufenklasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ueberwachungsstufenklasse);

ALTER TABLE DIM_Ueb_Variante ADD CONSTRAINT DIM_Ueb_Variante_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ueberwachungsvariant);

ALTER TABLE DIM_UeberwBetragsart ADD CONSTRAINT DIM_UeberwBetragsart_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_UeberwBetragsart);

ALTER TABLE DIM_UeberwStufe ADD CONSTRAINT DIM_Ueberwachungsstufe_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ueberwachungsstufe);

ALTER TABLE DIM_UeberwStufenTyp ADD CONSTRAINT DIM_Ueberwachungsstufentyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ueberwachungsstufentyp);

ALTER TABLE DIM_UeberwVerfStatus ADD CONSTRAINT DIM_UeberwVerfStatus_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_UeberwVerfStatus);

ALTER TABLE DIM_UeberwVerfahren ADD CONSTRAINT DIM_Ueberwachungsverfahren_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Ueberwachungsverfahren);

ALTER TABLE DIM_Vertragskontotyp ADD CONSTRAINT DIM_Vertragskontotyp_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Vertragskontotyp);

ALTER TABLE DIM_Woche ADD CONSTRAINT DIM_Woche_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Woche);

ALTER TABLE DIM_ZW_vertraglich ADD CONSTRAINT DIM_Zahlweise_vertraglich_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Zahlweise_vertraglich);

ALTER TABLE DIM_Zahlart ADD CONSTRAINT DIM_Eingangszahlweg_Klasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Zahlart);

ALTER TABLE F_Direktzahlungspos ADD CONSTRAINT F_Direktzahlungsposition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_DIZ_Zahlungsposition);

ALTER TABLE F_FoVePos_ProLauf ADD CONSTRAINT F_FoVePo_LSV_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_FoVePos_ProLauf);

ALTER TABLE F_FoVePosition ADD CONSTRAINT F_FoVePo_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_FoVePosition);

ALTER TABLE F_InExObjekt ADD CONSTRAINT F_InExObjekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InExObjekt);

ALTER TABLE F_InkassoPosition ADD CONSTRAINT F_InkassoPosition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InkassoPosition);

ALTER TABLE F_Ueberw_ProBelPos ADD CONSTRAINT F_Ueberw_ProBelPos_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Ueberw_ProBelPos);

COMMENT ON COLUMN DET_Ford_Verb.BelegNr_A IS
'aus KT01_Beleg_InEx_02_HBS.BelegNr_A';

COMMENT ON COLUMN DET_Ford_Verb.SK_Forderung_Verbindlichkeit IS
'aus KT01_Beleg_InEx_02_HBS.FK_KT01_Beleg mit KT01_Beleg_InEx_02_HBS.C_Belegart = ''10 Forderung''';

COMMENT ON COLUMN DET_Ford_Verb.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.BelegNr_A IS
'aus KT06_BelegPosition_InEx_02_WBS.BelegNr_A';

COMMENT ON COLUMN DET_Ford_Verb_Pos.BelegPositionNr IS
'aus KT06_BelegPosition_InEx_02_WBS.BelegPositionNr';

COMMENT ON COLUMN DET_Ford_Verb_Pos.SK_Ford_Verb_Position IS
'aus KT06_BelegPosition_InEx_02_WBS.FK_KT06_BelegPosition';

COMMENT ON COLUMN DET_Ford_Verb_Pos.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ford_Verb_Pos.Teilposition IS
'aus KT06_BelegPosition_InEx_02_WBS.Teilposition';

COMMENT ON COLUMN DET_InExkassoObjekt.InExkassoObjektNr_A IS
'aus KT05_InExkassoObj_InEx_01_HBS.InExkassObjektNr_A';

COMMENT ON COLUMN DET_InExkassoObjekt.SK_InExkassoObjekt IS
'aus KT05_InExkassoObj_InEx_01_HBS.FK_KT05_InExkassoObjekt';

COMMENT ON COLUMN DET_InExkassoObjekt.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkassoObjekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.Laufdatum IS
'aus 
- für Zahllauf: 								KT10_ZahllaufZahl_InEx_..._HBS.DatumZahllauf
- für Sollstellung:		 					KT03_KT06_ZPP_BP_InEx_..._LBS.DatumSollstellungslauf
- für Überwachungslauf:				KT04_Ueberwachung_InEx_01_HBS.DatumUeberwachungslauf (in FSCD: Mahnlauf)
- für Überwachungsendelauf: (in FSCD: Mahnendelauf)
- für Maschineller Ausgleich:
- für Abgabe Inkassobüro:
- für Massenausbuchung:
- für Forderungsberichtigung:';

COMMENT ON COLUMN DET_InExkasso_Lauf.Laufkennung IS
'aus 
- für Zahllauf: 								KT10_ZahllaufZahl_InEx_..._HBS.KennungZahllauf
- für Sollstellung:		 					KT03_KT06_ZPP_BP_InEx_..._LBS.KennungSollstellungslauf
- für Überwachungslauf:				KT04_Ueberwachung_InEx_01_HBS.KennungUeberwachungslauf (in FSCD: Mahnlauf)
- für Überwachungsendelauf: (in FSCD: Mahnendelauf)
- für Maschineller Ausgleich:
- für Abgabe Inkassobüro:
- für Massenausbuchung:
- für Forderungsberichtigung:';

COMMENT ON COLUMN DET_InExkasso_Lauf.SK_InExkasso_Lauf IS
'aus 
- für Zahllauf: 								KT10_ZahllaufZahl_InEx_..._HBS..DatumZahllauf~.KennungZahllauf
- für Sollstellung:		 					KT03_KT06_ZPP_BP_InEx_..._LBS.DatumSollstellungslauf~.KennungSollstellungslauf
- für Überwachungslauf:				KT04_Ueberwachung_InEx_01_HBM.DatumUeberwachungslauf~.KennungUeberwachungslauf (in FSCD: Mahnlauf)
- für Überwachungsendelauf: (in FSCD: Mahnendelauf)
- für Maschineller Ausgleich:
- für Abgabe Inkassobüro:
- für Massenausbuchung:
- für Forderungsberichtigung:

Bea: Der Schlüssel ist eindeutig, da sich die Kennungen nicht überschneiden.


Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InExkasso_Lauf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.Abgabedatum IS
'... ist das Maschinendatum der Abgabe

aus KT08_InkassoPos_InEx_nn_HBS.Abgabedatum

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.BelegNr_A IS
'Belegnummer aus dem Business-Key

aus KT08_InkassoPos_InEx_nn_HBS.BelegNr_A

Datenschutz $A1';

COMMENT ON COLUMN DET_InkassoPosition.InkassoPositionLfdNr IS
'... ist die laufende Nummer der Inkassoposition innerhalb eines Belegs.

aus KT08_InkassoPos_InEx_nn_HBS.InkassoPositionLfdNr

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus KT08_InkassoPos_InEx_nn_HBS.Mandant

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.SK_InkassoPosition IS
'aus KT08_InkassoPos_InEx_nn_HBS.FK_KT08_InkassoPosition
';

COMMENT ON COLUMN DET_InkassoPosition.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_InkassoPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.Name_A IS
'... ist der Name des Inkassobüros.

aus PA01_Partner..._Par_01_HBS.Name_A

Werte
441751001 	CREDITREFORM
479475571	BRINKMANN und PARTNER RECHTSANWÄLTE
565834860	GERICHTLICHES MAHNVERFAHREN VB
568217349	GERICHTLICHES MAHNVERFAHREN SCHADEN

Datenschutz $A2';

COMMENT ON COLUMN DET_Inkassobuero.POB_A IS
'Partner-Ordnungsbegriff des Inkassobüros aus PARIS, mit Prüfziffer.

aus PA01_Partner..._Par_01_HBS.POB_A

Werte
441751001 	CREDITREFORM
479475571	BRINKMANN und PARTNER RECHTSANWÄLTE
565834860	GERICHTLICHES MAHNVERFAHREN VB
568217349	GERICHTLICHES MAHNVERFAHREN SCHADEN

Datenschutz $A1';

COMMENT ON COLUMN DET_Inkassobuero.POB_PZ_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.

aus PA01_Partner..._Par_01_HBS.POB_A mit hinzugefügter Prüfziffer

Datenschutz $A1';

COMMENT ON COLUMN DET_Inkassobuero.SK_Inkassobuero IS
'	aus PA01_Partner..._Par_01_HBS.FK_PA01_Partner
';

COMMENT ON COLUMN DET_Inkassobuero.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Inkassobuero.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.Stichtag IS
'Stichtag, der im Ladejob verarbeitet wurde.
Wenn derselbe Stichtag in mehereren Ladejobs verarbeitet wurde (z.B. Korrekturen), können mehrere Sätze zu demselben Stichtag in dieser Tabelle auftreten.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, zu dem dieser Tabellen-Eintrag gehört.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, können mehrere Sätze zu derselben Lade_ID dieser Tabelle auftreten.
Es können mehrere Sätze zu einem Ladejob in dieser Tabelle stehen.

Datenschutz $-';

COMMENT ON COLUMN DET_Ladelauf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, zu dem dieser Satz geschrieben wurde.
Wenn mehrere Stichtage in demselben Ladejob verarbeitet wurden, können mehrere Sätze zu demselben Ladedatum in dieser Tabelle auftreten.

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

COMMENT ON COLUMN DET_Partner.POB_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.

aus PA01_Partner_Par_01_HBS.POB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.POB_PZ_A IS
'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.

aus PA01_Partner_Par_01_HBS.POB_A || PA01_Partner_Par_01_HBS.Pruefziffer

Datenschutz $A1';

COMMENT ON COLUMN DET_Partner.SK_Partner IS
'aus PA01_Partner..._Par_01_HBS.FK_PA01_Partner
';

COMMENT ON COLUMN DET_Partner.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Partner.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Partner.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.InExkassoObjektNr_A IS
'aus KT04_Ueberwachung_InEx_nn_HBM.InExkassObjektNr_A';

COMMENT ON COLUMN DET_Ueberwachung.Mandant IS
'Mandant wird bei der DEVK z.Zt. in Produktion nicht genutzt und ist konstant "100"

aus KT04_Ueberwachung_InEx_01_HBS.Mandant (oder konstant = ''100'')

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.POB_A IS
'Partner-Ordnungsbegriff aus FS-CD, mit Prüfziffer.

aus KT04_Ueberwachung_InEx_nn_HBM.POB_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Ueberwachung.SK_Ueberwachung IS
'aus KT04_Ueberwachung_InEx_nn_HBM.FK_KT04_Ueberwachung';

COMMENT ON COLUMN DET_Ueberwachung.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.Ueberwachung_LFD IS
'... ist der laufende Zähler für die Überwachungen an einem Vertragskonto für einen In-/Exkasso-Partner.

aus KT04_Ueberwachung_InEx_nn_HBM.Ueberwachung_LFD

Datenschutz $-';

COMMENT ON COLUMN DET_Ueberwachung.Vertragskontonummer_A IS
'... ist die Zusammenfassungsebene für diejenigen InkassoObjekte, die einem Kunden gegenüber gemeinsam abgerechnet  und überwacht werden sollen bzw. dürfen.

aus KT04_Ueberwachung_InEx_nn_HBM.Vertragskontonummer_A

Datenschutz $A1';

COMMENT ON COLUMN DET_Vertragskonto.Regelbeitrag_jaehrlich_VK IS
'Bestimme den jährlichen Regelbeitrag zum Vertragskonto als Summe der jährlichen Regelbeiträge der zugehörigen InExkossoObjkte.



';

COMMENT ON COLUMN DET_Vertragskonto.SK_Vertragskonto IS
'aus KT02_Partner_VK_InEx_01_HBS.FK_KT02_Vertragskonto';

COMMENT ON COLUMN DET_Vertragskonto.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Vertragskonto.Vertragskontonummer_A IS
'aus KT02_Partner_VK_InEx_01_HBS.Vertragskontonummer_A';

COMMENT ON COLUMN DET_Zahlung.BelegNr_A IS
'aus KT01_Beleg_InEx_02_HBS.BelegNr_A  ';

COMMENT ON COLUMN DET_Zahlung.SK_Zahlung IS
'aus KT01_Beleg_InEx_02_HBS.FK_KT01_Beleg mit KT01_Beleg_InEx_02_HBS.C_Belegart = ''20 Eingangszahlung''';

COMMENT ON COLUMN DET_Zahlung.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlung.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.BelegNr_A IS
'aus KT06_BelegPosition_InEx_02_WBS.BelegNr_A  zum Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung';

COMMENT ON COLUMN DET_Zahlungsposition.BelegPositionNr IS
'1. Fall: Der Direktzahlungsbeleg hat mindestens eine Belegposition (Standardfall: Die DIZ-Zahlung geschieht nach dem LSV-Ausgleich oder DIZ-Zahlung zu groß): Dann alle diese Belegpositionen laden.

dann aus KT06_BelegPosition_InEx_02_WBS.BelegPositionNr

2. Fall: Der Direktzahlungsbeleg hat keine Belegposition (Fachlich: DIZ-Zahlung vor LSV-Lauf und DIZ-Zahlung wird komplett ausgeglichen):  Dann alle über KT01_KT06_BL verbundenen Belegpositionem (mit umgekehrten Betrag) laden.

dann ausgeglichene Belegpositionen an KT06_Belegposition durchnummerieren mit -1, -2, -3, ...';

COMMENT ON COLUMN DET_Zahlungsposition.Position_simuliert IS
'... hält fest, ob diese Belegposition zu einem Zahlungsbeleg in der Quelle nur implizit vorhanden ist und vom DWH simuliert wurde. Wenn die Beleposition zur Zahlung zwar vorhanden aber über einen "Verheiratungs-"Beleg eindeutig ausgeglichen ist, so wird die vorhandene Belegposition ersetzt, und zwar durch simulierte Belegpositionen gemäß der ausgegeglichenen Belegpositionen.

Werte: ja/nein/ersetzt (J/N/E)';

COMMENT ON COLUMN DET_Zahlungsposition.SK_Zahlungsposition IS
'aus KT06_BelegPosition_InEx_02_WBS.FK_KT06_BelegPosition';

COMMENT ON COLUMN DET_Zahlungsposition.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_Zahlungsposition.Teilposition IS
'konstant=0';

COMMENT ON COLUMN DIM_Ausgleichsgrund.Ausgleichsgrund IS
'Kurztext für den Ausgleichsgrund der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund

Werteliste:
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

DIRFORD direkte Forderungszuordnung, 
INDIRFORD indirekte Forderungszuordnung

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.Ausgleichsgrund_kurz IS
'Kurzbezeichnung für den Ausgleichsgrund der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund

Werteliste:
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

DIRFORD direkte Forderungszuordnung, 
INDIRFORD indirekte Forderungszuordnung

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.Ausgleichsgrund_lang IS
'Langtext fü den Ausgleichsgrund der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund

Werteliste:
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

DIRFORD direkte Forderungszuordnung, 
INDIRFORD indirekte Forderungszuordnung

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsgrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.Ausgleichsstatus IS
'Kurztext für den Ausgleichsstatus der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus

Werteliste:
NULL   nicht ausgeglichen
9           ausgeglichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.Ausgleichsstatus_kurz IS
'Kurzbezeichnung für den Ausgleichsstatus der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus

Werteliste:
NULL   nicht ausgeglichen
9           ausgeglichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.Ausgleichsstatus_lang IS
'Langtext für den Ausgleichsstatus der Belegposition

aus KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus

Werteliste:
NULL   nicht ausgeglichen
9           ausgeglichen

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausgleichsstatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.Ausnahmegrund IS
'Kurztext für den Grund der Ausnahme, der die Lastschrift verhindert hat.

aus KT06_KT10_Regul_InEx_01_LBS.C_Postenkennzeichen_B

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
Liste s. Postenkennzeichen.xls

Datenschutz $B';

COMMENT ON COLUMN DIM_Ausnahmegrund.Ausnahmegrund_kurz IS
'Kurzbezeichnung für den Grund der Ausnahme, der die Lastschrift verhindert hat.

aus KT06_KT10_Regul_InEx_01_LBS.C_Postenkennzeichen_B

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
Liste s. Postenkennzeichen.xls

Datenschutz $B';

COMMENT ON COLUMN DIM_Ausnahmegrund.Ausnahmegrund_lang IS
'Langtext für den Grund der Ausnahme, der die Lastschrift verhindert hat.

aus KT06_KT10_Regul_InEx_01_LBS.C_Postenkennzeichen_B

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
Liste s. Postenkennzeichen.xls

Datenschutz $B';

COMMENT ON COLUMN DIM_Ausnahmegrund.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ausnahmegrund.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.BelegHerkunft IS
'Kurztext für die Herkunft eines Belegs

aus KT01_Beleg_InEx_02_HBS.C_BelegHerkunft

Werteliste:
1  Manuelle Buchung
2  Storno
3  Kontenpflege
4  Maschinelles Ausgleichen
5  Zahlungsstapel
6  Zahllauf
7  Zinsbeleg
8  Rückläufer
9  Rücknahme Ausgleich
10 SD Faktura
11 Beleg aus Mahnlauf
12 Ratenplan
13 Barsicherheit
14 Korrespondenz
15 Gebühr
16 Ausbuchung
17 Massenausbuchung
18 Sonstige Aktivitäten
19 Manuelle Zahlung
1A Externe Barzahlung
1B Externe Kartenzahlung
1C Externe Scheckzahlung
1D Externe Postauftrag
1E Externe Zahlung
1I  Händlerprovision
1S Storno von Externe Kasse
1T Transferbeleg
1X Einlage durch externe Kasse
1Y Entnahme durch externe Kasse
1Z Differenzbuchung durch externe Kasse
20 Manuelle Kartenzahlung
21 Manuelle Scheckzahlung
22 Manueller Postauftrag
23 Rückläufer zum Zahlungsauftrag
24 Barkasse: mehrere Zahlungstypen
25 Scheckstapel
26 Abrechnung Zahlkarte
27 Zinsbeleg Zinslauf
28 Zinsbeleg Mahnung
29 Zinsbeleg Fakturierung
30 Zins Laufzeit Raten
31 Erlösumbuchungslauf
32 Zweifelhaftstellung / Einzelwertberichtg
33 Belegübernahme
34 Transfer offener Posten
35 Rückzahlung
36 Beleg über Buchungsschnittstelle
37 Zinsbeleg Barzahlung
38 FI-CA: Abf. Bollo
39 Teilrücknahme Ausgleich
40 Fremdwährungsbewertung
41 Convert Stat to Real
42 Beleg Korrespondenzmahnen
43 Einnahmenverteilung
44 Anordnung
45 Zahlungsauftragsstapel
46 Scheckeinlösung
47 Ausgleichen (Biller Direct)
48 Bündelung von Posten
49 Storno Überzahlung (Biller Direct)
4I  Inkassogebühren, -zins und -ausbuchungen
4S Storno Einnahmenverteilung
50 Faktura Billing Engine
51 Aufteilung nach GeschBer und ProfitCtr
52 Zusatzbuchung bei Storno oder Rückläufer
53 Änderung / Ausbuchung Quellensteuer
54 Transfer offener Posten aus Guthabenklae
55 Kreditkartenstapel
56 Umgliederung aus OP-Liste zum Stichtag
57 Storno Einlagen/Entnahmen im Kassenbuch
58 Externe Zahlstelle, Dateiübernahme
59 Storno Fremdwährungsbewertung
60 Manuelle Scheckausgabe
61 Zinsbuchung zum Zahlungsversprechen
62 Sonstige Buchung zum Zahlungsversprechen
63 Rückbuchung Akonto auf Klärung
64 Bestätigte Gutschriftsumbuchung
65 Manuelle Sammelrechnung
67 Ausgleichen (Zahlungsservices)
68 Scheckabtretung
70 IDOC Beleguebernahme
71 IDOC Belegstorno
72 IDOC Rechnung
73 IDOC Gutschrift
74 IDOC Ausbuchung
75 IDOC Anzahlungsanforderung
77 Fakturierung
78 Storno Fakturierung
79 Forderung an externe Händler
80 Umbuchen auf anderen verantw. Buchungsk.
81 Korrekturbuchung nach VBUND-Änderung
82 Forderung an Inkassobüro
85 Umbuchung auf Hauptbuch
90 RE: Periodische Buchung
91 RE: Nebenkostenabrechnung
92 RE: Umsatzabrechnung
98 Jahresabschlußbuchung
99 Technischer Beleg
A1 Gutschrift aus Anpassungsanforderung
A2 Forderung aus Anpassungsanforderung
L1 Leasing (Agency Business)
V1 Sollstellung
V2 Zahlplan
V3 Umsatzverrechnung
V4 IS-CD Maklermeldung
V5 IS-CD-Maklermeld Sum
V6 IS-CD-Depotverrechng
V7 Buchung MitvAnteile
V8 Kontokorent. Ausgl.
V9 ISCD-Maklerm. Nachb.
VA ISCD-Währungswechsel
VB Maklermeldg Verrechn
VC Aufteilung Guthabenposten
VD Ausgleich der ältesten Schuld
VF Verrechnung vorl. Prämienanforderung
VI  Agenturinkasso
VS Korrektur ungültiger Steuersätze
VU Umbuchung für Ausgangszahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.BelegHerkunft_kurz IS
'Kurzbezeichnung für die Herkunft eines Belegs

aus KT01_Beleg_InEx_02_HBS.C_BelegHerkunft

Werteliste:
1  Manuelle Buchung
2  Storno
3  Kontenpflege
4  Maschinelles Ausgleichen
5  Zahlungsstapel
6  Zahllauf
7  Zinsbeleg
8  Rückläufer
9  Rücknahme Ausgleich
10 SD Faktura
11 Beleg aus Mahnlauf
12 Ratenplan
13 Barsicherheit
14 Korrespondenz
15 Gebühr
16 Ausbuchung
17 Massenausbuchung
18 Sonstige Aktivitäten
19 Manuelle Zahlung
1A Externe Barzahlung
1B Externe Kartenzahlung
1C Externe Scheckzahlung
1D Externe Postauftrag
1E Externe Zahlung
1I  Händlerprovision
1S Storno von Externe Kasse
1T Transferbeleg
1X Einlage durch externe Kasse
1Y Entnahme durch externe Kasse
1Z Differenzbuchung durch externe Kasse
20 Manuelle Kartenzahlung
21 Manuelle Scheckzahlung
22 Manueller Postauftrag
23 Rückläufer zum Zahlungsauftrag
24 Barkasse: mehrere Zahlungstypen
25 Scheckstapel
26 Abrechnung Zahlkarte
27 Zinsbeleg Zinslauf
28 Zinsbeleg Mahnung
29 Zinsbeleg Fakturierung
30 Zins Laufzeit Raten
31 Erlösumbuchungslauf
32 Zweifelhaftstellung / Einzelwertberichtg
33 Belegübernahme
34 Transfer offener Posten
35 Rückzahlung
36 Beleg über Buchungsschnittstelle
37 Zinsbeleg Barzahlung
38 FI-CA: Abf. Bollo
39 Teilrücknahme Ausgleich
40 Fremdwährungsbewertung
41 Convert Stat to Real
42 Beleg Korrespondenzmahnen
43 Einnahmenverteilung
44 Anordnung
45 Zahlungsauftragsstapel
46 Scheckeinlösung
47 Ausgleichen (Biller Direct)
48 Bündelung von Posten
49 Storno Überzahlung (Biller Direct)
4I  Inkassogebühren, -zins und -ausbuchungen
4S Storno Einnahmenverteilung
50 Faktura Billing Engine
51 Aufteilung nach GeschBer und ProfitCtr
52 Zusatzbuchung bei Storno oder Rückläufer
53 Änderung / Ausbuchung Quellensteuer
54 Transfer offener Posten aus Guthabenklae
55 Kreditkartenstapel
56 Umgliederung aus OP-Liste zum Stichtag
57 Storno Einlagen/Entnahmen im Kassenbuch
58 Externe Zahlstelle, Dateiübernahme
59 Storno Fremdwährungsbewertung
60 Manuelle Scheckausgabe
61 Zinsbuchung zum Zahlungsversprechen
62 Sonstige Buchung zum Zahlungsversprechen
63 Rückbuchung Akonto auf Klärung
64 Bestätigte Gutschriftsumbuchung
65 Manuelle Sammelrechnung
67 Ausgleichen (Zahlungsservices)
68 Scheckabtretung
70 IDOC Beleguebernahme
71 IDOC Belegstorno
72 IDOC Rechnung
73 IDOC Gutschrift
74 IDOC Ausbuchung
75 IDOC Anzahlungsanforderung
77 Fakturierung
78 Storno Fakturierung
79 Forderung an externe Händler
80 Umbuchen auf anderen verantw. Buchungsk.
81 Korrekturbuchung nach VBUND-Änderung
82 Forderung an Inkassobüro
85 Umbuchung auf Hauptbuch
90 RE: Periodische Buchung
91 RE: Nebenkostenabrechnung
92 RE: Umsatzabrechnung
98 Jahresabschlußbuchung
99 Technischer Beleg
A1 Gutschrift aus Anpassungsanforderung
A2 Forderung aus Anpassungsanforderung
L1 Leasing (Agency Business)
V1 Sollstellung
V2 Zahlplan
V3 Umsatzverrechnung
V4 IS-CD Maklermeldung
V5 IS-CD-Maklermeld Sum
V6 IS-CD-Depotverrechng
V7 Buchung MitvAnteile
V8 Kontokorent. Ausgl.
V9 ISCD-Maklerm. Nachb.
VA ISCD-Währungswechsel
VB Maklermeldg Verrechn
VC Aufteilung Guthabenposten
VD Ausgleich der ältesten Schuld
VF Verrechnung vorl. Prämienanforderung
VI  Agenturinkasso
VS Korrektur ungültiger Steuersätze
VU Umbuchung für Ausgangszahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.BelegHerkunft_lang IS
'Langtext für die Herkunft eines Belegs

aus KT01_Beleg_InEx_02_HBS.C_BelegHerkunft

Werteliste:
1  Manuelle Buchung
2  Storno
3  Kontenpflege
4  Maschinelles Ausgleichen
5  Zahlungsstapel
6  Zahllauf
7  Zinsbeleg
8  Rückläufer
9  Rücknahme Ausgleich
10 SD Faktura
11 Beleg aus Mahnlauf
12 Ratenplan
13 Barsicherheit
14 Korrespondenz
15 Gebühr
16 Ausbuchung
17 Massenausbuchung
18 Sonstige Aktivitäten
19 Manuelle Zahlung
1A Externe Barzahlung
1B Externe Kartenzahlung
1C Externe Scheckzahlung
1D Externe Postauftrag
1E Externe Zahlung
1I  Händlerprovision
1S Storno von Externe Kasse
1T Transferbeleg
1X Einlage durch externe Kasse
1Y Entnahme durch externe Kasse
1Z Differenzbuchung durch externe Kasse
20 Manuelle Kartenzahlung
21 Manuelle Scheckzahlung
22 Manueller Postauftrag
23 Rückläufer zum Zahlungsauftrag
24 Barkasse: mehrere Zahlungstypen
25 Scheckstapel
26 Abrechnung Zahlkarte
27 Zinsbeleg Zinslauf
28 Zinsbeleg Mahnung
29 Zinsbeleg Fakturierung
30 Zins Laufzeit Raten
31 Erlösumbuchungslauf
32 Zweifelhaftstellung / Einzelwertberichtg
33 Belegübernahme
34 Transfer offener Posten
35 Rückzahlung
36 Beleg über Buchungsschnittstelle
37 Zinsbeleg Barzahlung
38 FI-CA: Abf. Bollo
39 Teilrücknahme Ausgleich
40 Fremdwährungsbewertung
41 Convert Stat to Real
42 Beleg Korrespondenzmahnen
43 Einnahmenverteilung
44 Anordnung
45 Zahlungsauftragsstapel
46 Scheckeinlösung
47 Ausgleichen (Biller Direct)
48 Bündelung von Posten
49 Storno Überzahlung (Biller Direct)
4I  Inkassogebühren, -zins und -ausbuchungen
4S Storno Einnahmenverteilung
50 Faktura Billing Engine
51 Aufteilung nach GeschBer und ProfitCtr
52 Zusatzbuchung bei Storno oder Rückläufer
53 Änderung / Ausbuchung Quellensteuer
54 Transfer offener Posten aus Guthabenklae
55 Kreditkartenstapel
56 Umgliederung aus OP-Liste zum Stichtag
57 Storno Einlagen/Entnahmen im Kassenbuch
58 Externe Zahlstelle, Dateiübernahme
59 Storno Fremdwährungsbewertung
60 Manuelle Scheckausgabe
61 Zinsbuchung zum Zahlungsversprechen
62 Sonstige Buchung zum Zahlungsversprechen
63 Rückbuchung Akonto auf Klärung
64 Bestätigte Gutschriftsumbuchung
65 Manuelle Sammelrechnung
67 Ausgleichen (Zahlungsservices)
68 Scheckabtretung
70 IDOC Beleguebernahme
71 IDOC Belegstorno
72 IDOC Rechnung
73 IDOC Gutschrift
74 IDOC Ausbuchung
75 IDOC Anzahlungsanforderung
77 Fakturierung
78 Storno Fakturierung
79 Forderung an externe Händler
80 Umbuchen auf anderen verantw. Buchungsk.
81 Korrekturbuchung nach VBUND-Änderung
82 Forderung an Inkassobüro
85 Umbuchung auf Hauptbuch
90 RE: Periodische Buchung
91 RE: Nebenkostenabrechnung
92 RE: Umsatzabrechnung
98 Jahresabschlußbuchung
99 Technischer Beleg
A1 Gutschrift aus Anpassungsanforderung
A2 Forderung aus Anpassungsanforderung
L1 Leasing (Agency Business)
V1 Sollstellung
V2 Zahlplan
V3 Umsatzverrechnung
V4 IS-CD Maklermeldung
V5 IS-CD-Maklermeld Sum
V6 IS-CD-Depotverrechng
V7 Buchung MitvAnteile
V8 Kontokorent. Ausgl.
V9 ISCD-Maklerm. Nachb.
VA ISCD-Währungswechsel
VB Maklermeldg Verrechn
VC Aufteilung Guthabenposten
VD Ausgleich der ältesten Schuld
VF Verrechnung vorl. Prämienanforderung
VI  Agenturinkasso
VS Korrektur ungültiger Steuersätze
VU Umbuchung für Ausgangszahlung

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_BelegHerkunft.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.Belegart IS
'Kurztext für die  Belegart

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
00 	Migration
01	Nacharbeit Migration
10 	Forderung
11 	Gebühr
12 	Zinsen
13 	Rücknahme Niederschl
14 	Buchung aus GM
15 	Ratenplan
16 	Buchung f Stundung
17 	PC Miete
18 	Ford. Vorwegabzug
19 	ZfA Zulagenforderung
20 	Eingangszahlung
21 	Ausgangszahlung
22 	Rückläufer
23 	Scheckeinlösung
24 	Bareinzahlung RD
25 	Leistungseinbehalt K
26 	Umwandlung Leben
27 	Schaden Makler RD27
28 	Ausgl. Vorwegabzug
29 	ZfA Eingangszahlung
30 	Stornierung
31 	Scheckstorno Altsys.
32 	Klärungsbuchung
33	Kostenforderung
34	EingZahl KapÜber RI
35	Ford/Verb KapÜber RI
40 	BUZ-Leistung
41 	Leistungseinbehalt
50 	Manuelle Buchung
51 	Postentransfer oder BZ-Wechsel
52 	Umbuchung anderer FB
60 	Masch. Ausgleichen
61 	Ausgleichsbuchung
70 	Ford./Verb. Schaden
71 	Umbuchung Schaden
75 	Ford./Verb. LL
76 	Sto. Ford./Verb. LL
77 	Verrechnung LL
80 	Forderungsberichtig.
81 	Umbuchung (verz.Erl)
82 	Man. Ausbuchung
83 	Umgliederung
84 	Ausbuchung m. Steuer
85 	Ausbuchung o. Steuer
86 	Umbuchung
87 	Vertragsumsetzung
90 	Zulagenforderung FPT
91 	Eingangszahlung FPT
99 	Bündelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.Belegart_kurz IS
'Kurzbezeichnung für die Belegart

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
00 	Migration
01	Nacharbeit Migration
10 	Forderung
11 	Gebühr
12 	Zinsen
13 	Rücknahme Niederschl
14 	Buchung aus GM
15 	Ratenplan
16 	Buchung f Stundung
17 	PC Miete
18 	Ford. Vorwegabzug
19 	ZfA Zulagenforderung
20 	Eingangszahlung
21 	Ausgangszahlung
22 	Rückläufer
23 	Scheckeinlösung
24 	Bareinzahlung RD
25 	Leistungseinbehalt K
26 	Umwandlung Leben
27 	Schaden Makler RD27
28 	Ausgl. Vorwegabzug
29 	ZfA Eingangszahlung
30 	Stornierung
31 	Scheckstorno Altsys.
32 	Klärungsbuchung
33	Kostenforderung
34	EingZahl KapÜber RI
35	Ford/Verb KapÜber RI
40 	BUZ-Leistung
41 	Leistungseinbehalt
50 	Manuelle Buchung
51 	Postentransfer oder BZ-Wechsel
52 	Umbuchung anderer FB
60 	Masch. Ausgleichen
61 	Ausgleichsbuchung
70 	Ford./Verb. Schaden
71 	Umbuchung Schaden
75 	Ford./Verb. LL
76 	Sto. Ford./Verb. LL
77 	Verrechnung LL
80 	Forderungsberichtig.
81 	Umbuchung (verz.Erl)
82 	Man. Ausbuchung
83 	Umgliederung
84 	Ausbuchung m. Steuer
85 	Ausbuchung o. Steuer
86 	Umbuchung
87 	Vertragsumsetzung
90 	Zulagenforderung FPT
91 	Eingangszahlung FPT
99 	Bündelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.Belegart_lang IS
'Langtext für die  Belegart

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
00 	Migration
01	Nacharbeit Migration
10 	Forderung
11 	Gebühr
12 	Zinsen
13 	Rücknahme Niederschl
14 	Buchung aus GM
15 	Ratenplan
16 	Buchung f Stundung
17 	PC Miete
18 	Ford. Vorwegabzug
19 	ZfA Zulagenforderung
20 	Eingangszahlung
21 	Ausgangszahlung
22 	Rückläufer
23 	Scheckeinlösung
24 	Bareinzahlung RD
25 	Leistungseinbehalt K
26 	Umwandlung Leben
27 	Schaden Makler RD27
28 	Ausgl. Vorwegabzug
29 	ZfA Eingangszahlung
30 	Stornierung
31 	Scheckstorno Altsys.
32 	Klärungsbuchung
33	Kostenforderung
34	EingZahl KapÜber RI
35	Ford/Verb KapÜber RI
40 	BUZ-Leistung
41 	Leistungseinbehalt
50 	Manuelle Buchung
51 	Postentransfer oder BZ-Wechsel
52 	Umbuchung anderer FB
60 	Masch. Ausgleichen
61 	Ausgleichsbuchung
70 	Ford./Verb. Schaden
71 	Umbuchung Schaden
75 	Ford./Verb. LL
76 	Sto. Ford./Verb. LL
77 	Verrechnung LL
80 	Forderungsberichtig.
81 	Umbuchung (verz.Erl)
82 	Man. Ausbuchung
83 	Umgliederung
84 	Ausbuchung m. Steuer
85 	Ausbuchung o. Steuer
86 	Umbuchung
87 	Vertragsumsetzung
90 	Zulagenforderung FPT
91 	Eingangszahlung FPT
99 	Bündelung v. Posten

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.ID_FordAusfManMasch IS
'... legt fest, ob eine Belegart einen Forderungsausfall beschreibt, und ggls. welchen.

Werteliste:
- ID zu "manuelle Ausbuchung" (aus Belegart ''82 	Man. Ausbuchung'')
- ID zu "maschinelle Ausbuchung" (aus Belegarten ''84 	Ausbuchung m. Steuer'' und ''85 	Ausbuchung o. Steuer'')
- ID zu "keine Ausbuchung" (aus jeder Belegart ungleich 82, 84, 85)

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.LSV_Einzugsrelevant IS
'Kennzeichnung ob es sich um eine Belegart handelt, die für LSV-Einzüge relevant ist.
ja / nein';

COMMENT ON COLUMN DIM_Belegart.Sollstellungsrelevant IS
'Kennzeichnung ob es sich um eine Belegart handelt, die für Sollstellungen relevant ist.
ja / nein';

COMMENT ON COLUMN DIM_Belegart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Belegart.Zahlungsrelevant IS
'Kennzeichnung ob es sich um eine Belegart handelt, die für Zahlungen relevant ist.
ja / nein';

COMMENT ON COLUMN DIM_Betragsart.Betragsart IS
'Kurztext für die Betragsart.

Werte: Erstbeitrag, Folgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'',. ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

Bea: FEHLEN: Mahngebühr, Rücklaufkosten, Rücklaufgebühr, sonstige Beitragsforderung, sonstige Forderung/Verbindlichkeit

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.Betragsart_kurz IS
'Kurzbezeichnung für die Betragsart.

Werte: Erstbeitrag, Forgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'',. ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.Betragsart_lang IS
'Langtext für die Betragsart.

Werte: Erstbeitrag, Forgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'',. ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Betragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.Buchungskreis IS
'Kurztext für den Buchungskreis

aus KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.Buchungskreis_kurz IS
'Kurzbezeichnung für den Buchungskreis

aus KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.Buchungskreis_lang IS
'Langtext für den Buchungskreis

aus KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Buchungskreis.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Arbeitstag_Nr IS
'... ist die laufende Nummer des Arbeitstages, beginnend mit dem 01.01.1.1900j als Nr. "1" (falls es ein Arbeitstag ist) oder Nr. "0" (falls es kein Arbeitstag ist) (der 1.1 ist Feiertag)

Falls der Tag ein Arbeitstag ist, berechnet sich der Inhalt dieses Feldes als "Arbeitstag_Nr vom Vortag +1".
Falls der Tag kein Arbeitstag ist ist der Inhalt = "Arbeitstag_Nr vom Vortag".

Als Arbeitstage gelten alle Tage außer Samstage, Sonntage, bundeseinheitliche Feiertage, Heilig Abend und Silvester.

Dieses Feld erlaubt es, die Länge von Zeitspannen kalenderjahresübergreifend in Arbeitstagen auszurechnen. Wenn durch eine Änderung im Kalender Feiertage wegfallen oder hinzukommen, muß dieser Wert für die Zeit nach der Änderung neu berechnet werden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Datum IS
'Datum im Datumsformat, z.B. 13.12.2013';

COMMENT ON COLUMN DIM_Datum.Feiertag IS
'Kennzeichnung ob es sich um einen bundeseinheitlichen Feiertag (inkl. Heilig Abend und Silvester) handelt.
ja / nein';

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
'Die ID_Halbjahr wird mit YYYYH besetzt.';

COMMENT ON COLUMN DIM_Datum.ID_Monat IS
'Die ID_Monat wird so gesetzt, dass sie identisch zum Monat zum Datum ist. Aufbau JJJJMM,  z.B. 201307';

COMMENT ON COLUMN DIM_Datum.ID_Quartal IS
'Die ID_Quartal wird mit YYYYQ besetzt.';

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

COMMENT ON COLUMN DIM_Datum.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Datum.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

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

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.Eingangszahlweg_Klasse IS
'Kurztext für die Klasse des Eingangszahlweg. (zunächst wird nur zwischen DIZ und LSV-unterschieden)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

LSV bei:
   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV

DIZ bei:
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.Eingangszahlweg_Klasse_kurz IS
'Kurzbezeichnung für die Klasse des Eingangszahlweg. (zunächst wird nur zwischen DIZ und LSV-unterschieden)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

LSV bei:
   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV

DIZ bei:
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-
';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.Eingangszahlweg_Klasse_lang IS
'Langtext für die Klasse des Eingangszahlweg. (zunächst wird nur zwischen DIZ und LSV-unterschieden)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

LSV bei:
   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV

DIZ bei:
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_Klasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.Eingangszahlweg_vorges IS
'Kurztext für den Eingangszahlweg

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.Eingangszahlweg_vorges_kurz IS
'Kurzbezeichnung für den Eingangszahlweg

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-
';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.Eingangszahlweg_vorges_lang IS
'Langtext für den Eingangszahlweg

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

   LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ).	

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Eing_ZWeg_vorges.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.Ford_Verb_Klassifikation IS
'Kurztext für die Klassifikation der Belege nach ihrem Vorzeichen.

aus 	Vorzeichen der Summe(KT06_Belegposition_KT01_BW.BetragInEuro zu einem KT01_Beleg_BH

F	Forderung			Forderungen
V	Verbindlichkeit	Verbindlichkeiten
0	Null-Beleg			Null-Belege

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.Ford_Verb_Klassifikation_kurz IS
'Kurzbezeichnung für die Klassifikation der Belege nach ihrem Vorzeichen.

aus 	Vorzeichen der Summe(KT06_Belegposition_KT01_BW.BetragInEuro zu einem KT01_Beleg_BH

F	Forderung			Forderungen
V	Verbindlichkeit	Verbindlichkeiten
0	Null-Beleg			Null-Belege

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.Ford_Verb_Klassifikation_lang IS
'Langtext für die Klassifikation der Belege nach ihrem Vorzeichen.

aus 	Vorzeichen der Summe(KT06_Belegposition_KT01_BW.BetragInEuro zu einem KT01_Beleg_BH

F	Forderung			Forderungen
V	Verbindlichkeit	Verbindlichkeiten
0	Null-Beleg			Null-Belege

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FoVe_Klassifiktn.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.FordAusfall_ManMasch_kurz IS
'Kurzbezeichnung für die Art eines Forderungsausfalls

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
- manuell (aus Belegart ''82 	Man. Ausbuchung'')
- maschinell (aus Belegarten ''84 	Ausbuchung m. Steuer'' und ''85 	Ausbuchung o. Steuer'')
- keine (sonst)

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.FordAusfall_ManMasch_lang IS
'Langtext die Art eines Forderungsausfalls

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
- manuelle Ausbuchung (aus Belegart ''82 	Man. Ausbuchung'')
- maschinelle Ausbuchung (aus Belegarten ''84 	Ausbuchung m. Steuer'' und ''85 	Ausbuchung o. Steuer'')
- keine Ausbuchung (sonst)

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.Forderungsausfall_ManMasch IS
'Kurztext für die Art eines Forderungsausfalls

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Werteliste:
- manuelle Ausbuchung (aus Belegart ''82 	Man. Ausbuchung'')
- maschinelle Ausbuchung (aus Belegarten ''84 	Ausbuchung m. Steuer'' und ''85 	Ausbuchung o. Steuer'')
- keine Ausbuchung (sonst)

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_FordAusfManMasch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr IS
'Halbjahr im Format YYYYHH, z.B. 201302';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_kurz IS
'Halbjahr als Kurztext, z.B. H2 2013';

COMMENT ON COLUMN DIM_Halbjahr.Halbjahr_lang IS
'Langtext des Halbjahres, z.B. 2. Halbjahr 2013';

COMMENT ON COLUMN DIM_Halbjahr.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJHH,  z.B. 201302';

COMMENT ON COLUMN DIM_Halbjahr.ID_Jahr IS
'Die ID_Jahr wird so gesetzt, dass sie identisch zum Jahr zum Datum ist. Aufbau JJJJ';

COMMENT ON COLUMN DIM_Halbjahr.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Halbjahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.HauptTeilvorgang IS
'Kurztext für den HauptTeilvorgang

aus 	KT06_BelegPosition_InEx_.._WBS.C_Teilvorgang
dabei sind Haupt- und Teilvorgang mit "." getrennt.

in FSCD z.B.:
HVorg. Teilvorg.
1000   0100          Erstbeitrag
1000   0110          Folgebeitrag
1000   0130          Einmaliger Beitrag
1000   0400          PC-Miete
1000   1999          Rücknahme Niederschlagung
1000   2999          Rückläufer aus KID
1010   0100          Erstbeitrag Leben Hauptvers.
1010   0110          Folgebeitrag Leben Hauptvers.
1010   0140          Zuzahlung
1010   0150          Vorwegabzug  Leben Hauptvers.
1010   0160          Niederschlagung
1020   0100          Erstbeitrag Leben Berufsunf.
1020   0110          Folgebeitrag Leben Berufsunf.
1020   0150          Vorwegabzug
1030   0100          Erstbeitrag Unfallzusatz
1030   0110          Folgebeitrag Unfallzusatz
1030   0150          Vorwegabzug Unfallzusatz
1040   0100          Erstbeitrag Leben Erwerbsunf.
1040  0110          Folgebeitrag Leben Erwerbsunf.
1040   0150          Vorwegabzug Leben Erwerbsunf.
1050   0100          Erstbeitrag Leben Arbeitsunf.
1050   0110          Folgebeitrag Leben Arbeitsunf.
1050   0150          Vorwegabzug Leben Arbeitsunf.
1060   0100          Erstbeitrag Leben Risikozusus.
1060   0110          Folgebeitrag Leben Risikozus.
1060   0150          Vorwegabzug Leben Risikozus.
1070   0100          Erstbeitrag Leben Hint.vers.
1070   0110          Folgebeitrag Leben Hint.vers.
1070   0150          Vorwegabzug Leben Hint.vers.
1080   0200          Deckungskapital
1080   0201          Gewinnguthaben
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

ZAHL.EIN Zahlungseingang

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.HauptTeilvorgang_kurz IS
'Kurzbezeichnung für den HauptTeilvorgang

aus 	KT06_BelegPosition_InEx_.._WBS.C_Teilvorgang
dabei sind Haupt- und Teilvorgang mit "." getrennt.

in FSCD z.B.:
HVorg. Teilvorg.
1000   0100          Erstbeitrag
1000   0110          Folgebeitrag
1000   0130          Einmaliger Beitrag
1000   0400          PC-Miete
1000   1999          Rücknahme Niederschlagung
1000   2999          Rückläufer aus KID
1010   0100          Erstbeitrag Leben Hauptvers.
1010   0110          Folgebeitrag Leben Hauptvers.
1010   0140          Zuzahlung
1010   0150          Vorwegabzug  Leben Hauptvers.
1010   0160          Niederschlagung
1020   0100          Erstbeitrag Leben Berufsunf.
1020   0110          Folgebeitrag Leben Berufsunf.
1020   0150          Vorwegabzug
1030   0100          Erstbeitrag Unfallzusatz
1030   0110          Folgebeitrag Unfallzusatz
1030   0150          Vorwegabzug Unfallzusatz
1040   0100          Erstbeitrag Leben Erwerbsunf.
1040  0110          Folgebeitrag Leben Erwerbsunf.
1040   0150          Vorwegabzug Leben Erwerbsunf.
1050   0100          Erstbeitrag Leben Arbeitsunf.
1050   0110          Folgebeitrag Leben Arbeitsunf.
1050   0150          Vorwegabzug Leben Arbeitsunf.
1060   0100          Erstbeitrag Leben Risikozusus.
1060   0110          Folgebeitrag Leben Risikozus.
1060   0150          Vorwegabzug Leben Risikozus.
1070   0100          Erstbeitrag Leben Hint.vers.
1070   0110          Folgebeitrag Leben Hint.vers.
1070   0150          Vorwegabzug Leben Hint.vers.
1080   0200          Deckungskapital
1080   0201          Gewinnguthaben
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

ZAHL.EIN Zahlungseingang

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.HauptTeilvorgang_lang IS
'Langtext für den HauptTeilvorgang

aus 	KT06_BelegPosition_InEx_.._WBS.C_Teilvorgang
dabei sind Haupt- und Teilvorgang mit "." getrennt.

in FSCD z.B.:
HVorg. Teilvorg.
1000   0100          Erstbeitrag
1000   0110          Folgebeitrag
1000   0130          Einmaliger Beitrag
1000   0400          PC-Miete
1000   1999          Rücknahme Niederschlagung
1000   2999          Rückläufer aus KID
1010   0100          Erstbeitrag Leben Hauptvers.
1010   0110          Folgebeitrag Leben Hauptvers.
1010   0140          Zuzahlung
1010   0150          Vorwegabzug  Leben Hauptvers.
1010   0160          Niederschlagung
1020   0100          Erstbeitrag Leben Berufsunf.
1020   0110          Folgebeitrag Leben Berufsunf.
1020   0150          Vorwegabzug
1030   0100          Erstbeitrag Unfallzusatz
1030   0110          Folgebeitrag Unfallzusatz
1030   0150          Vorwegabzug Unfallzusatz
1040   0100          Erstbeitrag Leben Erwerbsunf.
1040  0110          Folgebeitrag Leben Erwerbsunf.
1040   0150          Vorwegabzug Leben Erwerbsunf.
1050   0100          Erstbeitrag Leben Arbeitsunf.
1050   0110          Folgebeitrag Leben Arbeitsunf.
1050   0150          Vorwegabzug Leben Arbeitsunf.
1060   0100          Erstbeitrag Leben Risikozusus.
1060   0110          Folgebeitrag Leben Risikozus.
1060   0150          Vorwegabzug Leben Risikozus.
1070   0100          Erstbeitrag Leben Hint.vers.
1070   0110          Folgebeitrag Leben Hint.vers.
1070   0150          Vorwegabzug Leben Hint.vers.
1080   0200          Deckungskapital
1080   0201          Gewinnguthaben
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

ZAHL.EIN Zahlungseingang

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.Hauptvorgang IS
'Kurztext für den Hauptvorgang

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang

in FSCD z.B.:
1000	Beitrag
1010	Beitrag Leben Hauptvers.
1020	Beitrag Leben Berufsunf.
1030	Beitrag Leben Unfallzusatz
1040	Beitrag Leben Erwerbsunf.
1050	Beitrag Leben Arbeitsunf.
1060	Beitrag Leben Risikozusatz
1070	Beitrag Leben Hinterbl.vers.
1080	Vertragsübertragung
1100	Inkasso
1400	Ratenplan
1500	Vorwegabzug Leben (Ford/Ausgl)
2000	Gebühr
2100	Zinsen
2200	Kosten
2300	Stundung
3000	Zulage
4100	Umbuchung
4200	Ausgleichsrücknahme
4300	Storno
4500	Vorweggenommene Auszahlung
4600	Manueller Ausgangsscheck
5000	Akonto
6000	Ausgleichsbuchung (Schaden)
6100	Ausgangszahlung (Schaden)
6200	Eingangszahlung (Schaden)
6300	Schaden Regressforderung
6400	Migration Schaden
6500	Ford. / Verbl. Leben Leistung
6501	Neueinstellung ohne Auszahlung
6600	Forderung Leben Leistung
7000	Hauptbuch-Umbuchung (KCLJ)
9000	Bündelung
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.Hauptvorgang_kurz IS
'Kurzbezeichnung für den Hauptvorgang

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang

in FSCD z.B.:
1000	Beitrag
1010	Beitrag Leben Hauptvers.
1020	Beitrag Leben Berufsunf.
1030	Beitrag Leben Unfallzusatz
1040	Beitrag Leben Erwerbsunf.
1050	Beitrag Leben Arbeitsunf.
1060	Beitrag Leben Risikozusatz
1070	Beitrag Leben Hinterbl.vers.
1080	Vertragsübertragung
1100	Inkasso
1400	Ratenplan
1500	Vorwegabzug Leben (Ford/Ausgl)
2000	Gebühr
2100	Zinsen
2200	Kosten
2300	Stundung
3000	Zulage
4100	Umbuchung
4200	Ausgleichsrücknahme
4300	Storno
4500	Vorweggenommene Auszahlung
4600	Manueller Ausgangsscheck
5000	Akonto
6000	Ausgleichsbuchung (Schaden)
6100	Ausgangszahlung (Schaden)
6200	Eingangszahlung (Schaden)
6300	Schaden Regressforderung
6400	Migration Schaden
6500	Ford. / Verbl. Leben Leistung
6501	Neueinstellung ohne Auszahlung
6600	Forderung Leben Leistung
7000	Hauptbuch-Umbuchung (KCLJ)
9000	Bündelung
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.Hauptvorgang_lang IS
'Langtext für den Hauptvorgang

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang

in FSCD z.B.:
1000	Beitrag
1010	Beitrag Leben Hauptvers.
1020	Beitrag Leben Berufsunf.
1030	Beitrag Leben Unfallzusatz
1040	Beitrag Leben Erwerbsunf.
1050	Beitrag Leben Arbeitsunf.
1060	Beitrag Leben Risikozusatz
1070	Beitrag Leben Hinterbl.vers.
1080	Vertragsübertragung
1100	Inkasso
1400	Ratenplan
1500	Vorwegabzug Leben (Ford/Ausgl)
2000	Gebühr
2100	Zinsen
2200	Kosten
2300	Stundung
3000	Zulage
4100	Umbuchung
4200	Ausgleichsrücknahme
4300	Storno
4500	Vorweggenommene Auszahlung
4600	Manueller Ausgangsscheck
5000	Akonto
6000	Ausgleichsbuchung (Schaden)
6100	Ausgangszahlung (Schaden)
6200	Eingangszahlung (Schaden)
6300	Schaden Regressforderung
6400	Migration Schaden
6500	Ford. / Verbl. Leben Leistung
6501	Neueinstellung ohne Auszahlung
6600	Forderung Leben Leistung
7000	Hauptbuch-Umbuchung (KCLJ)
9000	Bündelung
usw.

Vollständige Liste s. Haupt-_und_Teilvorgaenge.xlsx

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Hauptvorgang.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.InExkassoObjektArt IS
'Kurztext für die InExkassoObjektArt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektArt

Beitrag
Schaden
LebenLeistung

aus den Präfixen (ICL, LL, keins) in DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.InExkassoObjektArt_kurz IS
'Kurzbezeichnung für die InExkassoObjektArt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektArt

Beitrag
Schaden
LebenLeistung

aus den Präfixen (ICL, LL, keins) in DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.InExkassoObjektArt_lang IS
'Langtext für die InExkassoObjektArt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektArt

Alle Beitrag
Alle Schaden
Alle LebenLeistung

aus den Präfixen (ICL, LL, keins) in DIMAIOBPAR.INSOBJECT

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.InExkassoObjektTyp IS
'Kurztext für den InExkassoObjektTyp

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektTyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.InExkassoObjektTyp_kurz IS
'Kurzbezeichnung für den InExkassoObjektTyp

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektTyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.InExkassoObjektTyp_lang IS
'Langtext für  den InExkassoObjektTyp

aus 	KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektTyp

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

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InExObjTyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.ID_InExkassoObjektArt IS
'... ist die InExkassoObjektArt, die zur InEx_Produktgruppe gehört (siehe Anhang).

Bea: Zu einer Belegposition kann das zugehörige InExkassoObjekt und die zugehörige InEx_Produktgruppe zu unterschiedlichen InExkassoObjektArten führen.  
BeispieL: Eine LebenLeistung_Zahlung gehört zum InExkassoObjekt der Art "Beitrag", aber zu InEx_Produktgruppe der Art "Leben Leistung".

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.InEx_Produktgruppe IS
'Kurztext für die Produktgruppe

aus KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe

AK	Auslandsreisekrankenversicherung			
AL	Arbeitslosenkreditversicherung			
CU	Caravan Universal Versicherung			
GL	Glasversicherung			
GP	Geförd. Pflegetageversicherung			
GS	Schaden Gebäudeversicherung			
H	Haftpflichtversicherung			
HS	Schaden Hausratversicherung			
K	Krankenversicherung			
K1	Leistung Krankheitskostenvollversicherung			
K2	Leistung Krankenversicherung			
K3	Leistung Auslandsreisekrankenversicherung			
KA	Kautionsversicherung			
KR	Kurzfristige Reiseversicherung			
KV	Krankheitskostenvollversicherung			
L	Lebensversicherung			
LE	Leistungseinbehalt Leben			
LL	Leistung Leben			
LR	Leistung Riester			
LV	Leistung VW Lebensversicherung			
PC	PC-Miete			
R	Rechtsschutzversicherung			
RI	Riester			
RS	Schaden Rechtsschutzversicherung			
RV	Reiseversicherung			
S1	Schaden Sach-Einzelversicherung			
S2	Schaden Reiseversicherung			
S3	Schaden Arbeitslosenkreditversicherung			
S4	Schaden ServicePLUS			
S5	Schaden Sparda-Reiseversicherung			
S6	Schaden Kautionsversicherung			
S7	Schaden Kurzfristige Reiseversicherung			
SC	Schaden Caravan Universal Versicherung			
SE	Sach-Einzelversicherung			
SG	Schaden Glasversicherung			
SH	Schaden Haftpflichtversicherung			
SK	Schaden Kraft			
SP	ServicePLUS			
SR	Sparda-Reiseversicherung			
SU	Schaden Unfall			
U	Unfallversicherung			
VG	Gebäudeversicherung			
VH	Hausratversicherung			
VW	Vermögenswirksame Lebensversicherung			


Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.InEx_Produktgruppe_kurz IS
'Kurzbezeichnung für die Produktgruppe

aus KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe

AK	Auslandsreisekrankenversicherung			
AL	Arbeitslosenkreditversicherung			
CU	Caravan Universal Versicherung			
GL	Glasversicherung			
GP	Geförd. Pflegetageversicherung			
GS	Schaden Gebäudeversicherung			
H	Haftpflichtversicherung			
HS	Schaden Hausratversicherung			
K	Krankenversicherung			
K1	Leistung Krankheitskostenvollversicherung			
K2	Leistung Krankenversicherung			
K3	Leistung Auslandsreisekrankenversicherung			
KA	Kautionsversicherung			
KR	Kurzfristige Reiseversicherung			
KV	Krankheitskostenvollversicherung			
L	Lebensversicherung			
LE	Leistungseinbehalt Leben			
LL	Leistung Leben			
LR	Leistung Riester			
LV	Leistung VW Lebensversicherung			
PC	PC-Miete			
R	Rechtsschutzversicherung			
RI	Riester			
RS	Schaden Rechtsschutzversicherung			
RV	Reiseversicherung			
S1	Schaden Sach-Einzelversicherung			
S2	Schaden Reiseversicherung			
S3	Schaden Arbeitslosenkreditversicherung			
S4	Schaden ServicePLUS			
S5	Schaden Sparda-Reiseversicherung			
S6	Schaden Kautionsversicherung			
S7	Schaden Kurzfristige Reiseversicherung			
SC	Schaden Caravan Universal Versicherung			
SE	Sach-Einzelversicherung			
SG	Schaden Glasversicherung			
SH	Schaden Haftpflichtversicherung			
SK	Schaden Kraft			
SP	ServicePLUS			
SR	Sparda-Reiseversicherung			
SU	Schaden Unfall			
U	Unfallversicherung			
VG	Gebäudeversicherung			
VH	Hausratversicherung			
VW	Vermögenswirksame Lebensversicherung	

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.InEx_Produktgruppe_lang IS
'Langtext für die Produktgruppe

aus KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe

AK	Auslandsreisekrankenversicherung				ARK, ohne Sparda-Reiseversicherung-Anteil
AL	Arbeitslosenkreditversicherung						VgfsV 
CU	Caravan Universal Versicherung						CUV 
GL	Glasversicherung												Gl 
GP	Geförd. Pflegetageversicherung						fpTG
GS	Schaden Gebäudeversicherung						Schaden VG , manchmal ohne VG Elementar, manchmal mit GGV zu Feuer, Leitungswasser, Sturm
H		Haftpflichtversicherung									H und SKV , ohne Service-Plus-Anteil, ohne Sparda-Reiseversicherung-Anteil
HS	Schaden Hausratversicherung						Schaden VH, manchmal ohne VH Elementar
K		Krankenversicherung										KV, ohne KKV, ohne ARK, ohne fpTG
K1	Leistung Krankheitskostenvollvers.				Leistung KKV
K2	Leistung Krankenversicherung						Leistung KV, ohne KKV, ohne ARK, ohne fpTG
K3	Leistung Auslandsreisekrankenvers.				Leistung ARK, ohne Sparda-Reiseversicherung-Anteil
KA	Kautionsversicherung										Kau
KR	Kurzfristige Reiseversicherung						gibt es nicht mehr
KV	Krankheitskostenvollversicherung					KKV
L		Lebensversicherung											LV , ohne VW, ohne Rie
LE	Leistungseinbehalt Leben								Leistungseinbehalt LV
LL	Leistung Leben													Leistung LV, ohne VW, ohne Rie
LR	Leistung Riester													Leistung Rie
LV	Leistung VW Lebensversicherung					Leistung VW
PC	PC-Miete															PC-Miete (keine Sparte)
R		Rechtsschutzversicherung								RS, ohne Service-Plus-Anteil
RI		Riester																	Rie 
RS	Schaden Rechtsschutzversicherung				Schaden RS
RV	Reiseversicherung												RGP, ohne Sparda-Reiseversicherung-Anteil
S1	Schaden Sach-Einzelversicherung					Schaden F, F BU, ED, Lw, St, TV, ARVS und EC, manchmal mit Elementar (zu VG und VH), manchmal ohne GGV zu Feuer, Leitungswasser, Sturm
S2	Schaden Reiseversicherung								Schaden RGP, manchmal ohne Sparda-Reiseversicherung-Anteil
S3	Schaden Arbeitslosenkreditversicherung		Schaden VgfsV 
S4	Schaden ServicePLUS										manchmal Schaden Service Plus, bestehend aus Produkten in AU, RS, H, aber hier nur manchmal Schäden aus H
S5	Schaden Sparda-Reiseversicherung				Schaden RR und manchmal Schaden Sparda-Reisevesicherung, bestehend aus Produkten in RGP, ARK, H 
S6	Schaden Kautionsversicherung						Schaden Kau 
S7	Schaden Kurzfristige Reiseversicherung		gibt es nicht mehr
SC	Schaden Caravan Universal Versicherung		Schaden CUV
SE	Sach-Einzelversicherung									F, F BU, ED, Lw, St , TV, ARVS und EC
SG	Schaden Glasversicherung								Schaden Gl 
SH	Schaden Haftpflichtversicherung					Schaden H und SKV, manchmal ohne Service-Plus-Anteil, manchmal ohne Sparda-Reiseversicherung-Anteil
SK	Schaden Kraft													Schaden KH, KK, fbSchB mit Moped, ohne KU
SP	ServicePLUS														Service Plus, bestehend aus Produkten in AU, RS, H
SR	Sparda-Reiseversicherung								Sparda-Reiseversicherung, bestehend aus Produkten in RGP, ARK, H 
SU	Schaden Unfall													Schaden Unfall, bestehend aus AU und KU 
U		Unfallversicherung											AU (ohne KU)
VG	Gebäudeversicherung										VG
VH	Hausratversicherung										VH
VW	Vermögenswirksame Lebensversicherung	VW 

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InEx_Prod_Grp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.Ink_Abgabestatus_Klasse IS
'Kurztext für die Klasse des Abgabestatus.

- freigegeben -> zur Abgabe freigegeben, aber noch nicht ans Inkasssobüro abgegeben
- abgegeben -> ans Inkassobüro abgegeben
- zurückgenommen -> die Abgabe wurde zurückgenommen

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.Ink_Abgabestatus_Klasse_kurz IS
'Kurzbezeichnung für die Klasse des Abgabestatus.

- freigegeben -> zur Abgabe freigegeben, aber noch nicht ans Inkasssobüro abgegeben
- abgegeben -> ans Inkassobüro abgegeben
- zurückgenommen -> die Abgabe wurde zurückgenommen

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.Ink_Abgabestatus_Klasse_lang IS
'Langtext für die Klasse des Abgabestatus.

- freigegeben -> zur Abgabe freigegeben, aber noch nicht ans Inkasssobüro abgegeben
- abgegeben -> ans Inkassobüro abgegeben
- zurückgenommen -> die Abgabe wurde zurückgenommen

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_InkAbgstat_Klass.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.ID_Ink_Abgabestatus_Klasse IS
'... beschreibt, ob die InkassoPosition 

- zur Abgabe freigegeben,
- ans Inkassobüro abgegeben, oder
- ob die Abgabe zurückgenommen wurde.

ABGABESTATUS																					ABGABESTATUS_KLASSE
01 Forderung zur Abgabe freigegeben												freigegeben
02 Forderung abgegeben																	abgegeben
03 Forderung von Inkassobüro bezahlt												abgegeben
04 Forderung von Inkassobüro teilbezahlt										abgegeben
05 Abgabe der Forderung storniert													zurückgenommen
06 Abgabe der Forderung  erfolglos													zurückgenommen
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar		abgegeben
08 Forderung teilbezahlt und ein Teil nicht inkassierbar					abgegeben
09 Forderung zurückgerufen																zurückgenommen
10 Forderung direkt vom Kunden bezahlt											abgegeben
11 Forderung direkt vom Kunden teilbezahlt									abgegeben
12 Forderung ausgeglichen																	abgegeben
13 Forderung teilausgeglichen															abgegeben												
14 Forderung freigegeben und ein Teil nicht inkassierbar				freigegeben
15 Forderung abgegeben und ein Teil nicht inkassierbar				abgegeben
16 Forderung zurückgerufen und ein Teil nicht inkassierbar			zurückgenommen

Datenschutz $-
';

COMMENT ON COLUMN DIM_Ink_Abgabestat.Inkasso_Abgabestatus IS
'Kurztext für den Abgabestatus einer InkassoPosition

aus KT08_InkassoPos_InEx_nn_HBS.C_Abgabestatus (DFKKCOLL(H).AGSTA)

ABGABESTATUS																					ABGABESTATUS_KLASSE
01 Forderung zur Abgabe freigegeben												freigegeben
02 Forderung abgegeben																	abgegeben
03 Forderung von Inkassobüro bezahlt												abgegeben
04 Forderung von Inkassobüro teilbezahlt										abgegeben
05 Abgabe der Forderung storniert													zurückgenommen
06 Abgabe der Forderung  erfolglos													zurückgenommen
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar		abgegeben
08 Forderung teilbezahlt und ein Teil nicht inkassierbar					abgegeben
09 Forderung zurückgerufen																zurückgenommen
10 Forderung direkt vom Kunden bezahlt											abgegeben
11 Forderung direkt vom Kunden teilbezahlt									abgegeben
12 Forderung ausgeglichen																	abgegeben
13 Forderung teilausgeglichen															abgegeben												
14 Forderung freigegeben und ein Teil nicht inkassierbar				freigegeben
15 Forderung abgegeben und ein Teil nicht inkassierbar				abgegeben
16 Forderung zurückgerufen und ein Teil nicht inkassierbar			zurückgenommen

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.Inkasso_Abgabestatus_kurz IS
'Kurzbezeichnung für den Abgabestatus einer InkassoPosition

aus KT08_InkassoPos_InEx_nn_HBS.C_Abgabestatus (DFKKCOLL(H).AGSTA)

ABGABESTATUS																					ABGABESTATUS_KLASSE
01 Forderung zur Abgabe freigegeben												freigegeben
02 Forderung abgegeben																	abgegeben
03 Forderung von Inkassobüro bezahlt												abgegeben
04 Forderung von Inkassobüro teilbezahlt										abgegeben
05 Abgabe der Forderung storniert													zurückgenommen
06 Abgabe der Forderung  erfolglos													zurückgenomme
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar		abgegeben
08 Forderung teilbezahlt und ein Teil nicht inkassierbar					abgegeben
09 Forderung zurückgerufen																zurückgenommen
10 Forderung direkt vom Kunden bezahlt											abgegeben
11 Forderung direkt vom Kunden teilbezahlt									abgegeben
12 Forderung ausgeglichen																	abgegeben
13 Forderung teilausgeglichen															abgegeben												
14 Forderung freigegeben und ein Teil nicht inkassierbar				freigegeben
15 Forderung abgegeben und ein Teil nicht inkassierbar				abgegeben
16 Forderung zurückgerufen und ein Teil nicht inkassierbar			zurückgenommen

Datenschutz $-
';

COMMENT ON COLUMN DIM_Ink_Abgabestat.Inkasso_Abgabestatus_lang IS
'Langtext für den Abgabestatus einer InkassoPosition

aus KT08_InkassoPos_InEx_nn_HBS.C_Abgabestatus (DFKKCOLL(H).AGSTA)

ABGABESTATUS																					ABGABESTATUS_KLASSE
01 Forderung zur Abgabe freigegeben												freigegeben
02 Forderung abgegeben																	abgegeben
03 Forderung von Inkassobüro bezahlt												abgegeben
04 Forderung von Inkassobüro teilbezahlt										abgegeben
05 Abgabe der Forderung storniert													zurückgenommen
06 Abgabe der Forderung  erfolglos													zurückgenomme
07 Forderung direkt teilbezahlt und ein Teil nicht inkassierbar		abgegeben
08 Forderung teilbezahlt und ein Teil nicht inkassierbar					abgegeben
09 Forderung zurückgerufen																zurückgenommen
10 Forderung direkt vom Kunden bezahlt											abgegeben
11 Forderung direkt vom Kunden teilbezahlt									abgegeben
12 Forderung ausgeglichen																	abgegeben
13 Forderung teilausgeglichen															abgegeben												
14 Forderung freigegeben und ein Teil nicht inkassierbar				freigegeben
15 Forderung abgegeben und ein Teil nicht inkassierbar				abgegeben
16 Forderung zurückgerufen und ein Teil nicht inkassierbar			zurückgenommen

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ink_Abgabestat.TA_Ladedatum IS
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

COMMENT ON COLUMN DIM_Jahr.ID_Jahr IS
'Die ID_Jahr wird so gesetzt, dass sie identisch zum Jahr zum Datum ist. Aufbau JJJJ';

COMMENT ON COLUMN DIM_Jahr.Jahr IS
'Jahr des Datums als vierstellige Zahl';

COMMENT ON COLUMN DIM_Jahr.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Jahr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.LieferungsArt IS
'Kurztext für die Lieferung der InExkasso-Information zum InExkassoObjekt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Lieferung_faelligkeitbez

= "1 fälligkeitsbezogen", wenn C_Lieferung_faelligkeitbez=JA
= "0 änderungsbezogen", sonst

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.LieferungsArt_kurz IS
'Kurzbezeichnung für die Lieferung der InExkasso-Information zum InExkassoObjekt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Lieferung_faelligkeitbez

= "fälligkeitsbezogen", wenn C_Lieferung_faelligkeitbez=JA
= "änderungsbezogen", sonst

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.LieferungsArt_lang IS
'Langtext für die Lieferung der InExkasso-Information zum InExkassoObjekt

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Lieferung_faelligkeitbez

= "fälligkeitsbezogen", wenn C_Lieferung_faelligkeitbez=JA
= "änderungsbezogen", sonst

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_LieferungsArt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.Mitarbeiter_System IS
'Kurztext für ''Mitarbeiter'' oder''System''

Werte:
- Mitarbeiter (kurz: MA)
- System (kurz: SYS)

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.Mitarbeiter_System_kurz IS
'Kurzbezeichnung für  ''Mitarbeiter'' oder''System''

Werte:
- Mitarbeiter (kurz: MA)
- System (kurz: SYS)

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.Mitarbeiter_System_lang IS
'Langtext für  ''Mitarbeiter'' oder''System''

Werte:
- Mitarbeiter (kurz: MA)
- System (kurz: SYS)

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_MA_System.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.ID_Monat IS
'Die ID_Monat wird so gesetzt, dass sie identisch zum Monat zum Datum ist. Aufbau JJJJMM,  z.B. 201307';

COMMENT ON COLUMN DIM_Monat.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Monat.Monat IS
'Name des Monats und Jahr, z.B. "Dez. 2014"';

COMMENT ON COLUMN DIM_Monat.Monat_kurz IS
'Name des Monats und Jahr, z.B. "12.2014"
';

COMMENT ON COLUMN DIM_Monat.Monat_lang IS
'Name des Monats und Jahr, z.B. "Dezember 2014"';

COMMENT ON COLUMN DIM_Monat.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Monat.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.ID_Org_Bereich IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Org_Bereich.Organisationsbereich IS
'Kurztext für den Organisationsbereich in einer RD oder Zentrale

Werte:
prinzipiell eine beliebige zweistellige Nummer 01 bis 99,
derzeit (04.2018) werden nur die folgenden Nummern verwendet:
10, 11, 21, 31, 34, 36, 39, 42, 44, 46, 50, 54, 55, 56, 57, 58, 80, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 93, 99

Für RD''en sind das z.B.:
- 42 --> KKC	KundenKompetenzCenter
- 31 -->  L		Leben
- 99 --> RS		Rechtsschutz

Bea: Es gibt noch Arbeitsanteile mit Buchstaben-Kombination an der 3''ten und 4''ten Stelle (z.B. D, C, VI). Diese betreffen maschinelle Läufe oder einzelne Personen (z.B. HVD, HVB, HVVIII) und werden ignoriert.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.Organisationsbereich_kurz IS
'Kurzbezeichnung für den Organisationsbereich in einer RD oder Zentrale

Werte:
prinzipiell eine beliebige zweistellige Nummer 01 bis 99,
derzeit (04.2018) werden nur die folgenden Nummern verwendet:
10, 11, 21, 31, 34, 36, 39, 42, 44, 46, 50, 54, 55, 56, 57, 58, 80, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 93, 99

Für RD''en sind das z.B.:
- 42 --> KKC	KundenKompetenzCenter
- 31 -->  L		Leben
- 99 --> RS		Rechtsschutz

Bea: Es gibt noch Arbeitsanteile mit Buchstaben-Kombination an der 3''ten und 4''ten Stelle (z.B. D, C, VI). Diese betreffen maschinelle Läufe oder einzelne Personen (z.B. HVD, HVB, HVVIII) und werden ignoriert.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.Organisationsbereich_lang IS
'Langtext für den Organisationsbereich in einer RD oder Zentrale

Werte:
prinzipiell eine beliebige zweistellige Nummer 01 bis 99,
derzeit (04.2018) werden nur die folgenden Nummern verwendet:
10, 11, 21, 31, 34, 36, 39, 42, 44, 46, 50, 54, 55, 56, 57, 58, 80, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 93, 99

Für RD''en sind das z.B.:
- 42 --> KKC	KundenKompetenzCenter
- 31 -->  L		Leben
- 99 --> RS		Rechtsschutz

Bea: Es gibt noch Arbeitsanteile mit Buchstaben-Kombination an der 3''ten und 4''ten Stelle (z.B. D, C, VI). Diese betreffen maschinelle Läufe oder einzelne Personen (z.B. HVD, HVB, HVVIII) und werden ignoriert.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Org_Bereich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.ID_Halbjahr IS
'Die ID_Halbjahr wird so gesetzt, dass sie identisch zum Halbjahr zum Datum ist. Aufbau JJJJHH,  z.B. 201302';

COMMENT ON COLUMN DIM_Quartal.ID_Quartal IS
'Die ID_Quartal wird so gesetzt, dass sie identisch zum Quartal zum Datum ist. Aufbau JJJJQQ,  z.B. 201304';

COMMENT ON COLUMN DIM_Quartal.Quartal IS
'Quartal im Format YYYYQQ';

COMMENT ON COLUMN DIM_Quartal.Quartal_kurz IS
'Quartal als Kurztext, z.B. Q4 2013';

COMMENT ON COLUMN DIM_Quartal.Quartal_lang IS
'Quartal als Langtext, z.B. 4. Quartal 2013';

COMMENT ON COLUMN DIM_Quartal.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Quartal.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene1 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene1.ID_RD_Ebene2 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1 IS
'Kurztext für die Region einer RD oder Zentrale

Nord: Hannover, Hamburg, Münster
Ost: Berlin, Schwerin, Erfurt, Dresden
West: Köln, Essen, Wuppertal
Südwest: Main, Frankfurt, Kassel, Saarbrücken
Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige: Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, O, W, SW, S, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.RD_Ebene1_lang IS
'Langtext für die Region einer RD oder Zentrale

Verbund Nord: Hannover, Hamburg, Münster
Verbund Ost: Berlin, Schwerin, Erfurt, Dresden
Verbund West: Köln, Essen, Wuppertal
Verbund Südwest: Main, Frankfurt, Kassel, Saarbrücken
Verbund Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige:Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene1.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene2 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene2.ID_RD_Ebene3 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2 IS
'Kurztext für die Region einer RD oder Zentrale

Nord: Hannover, Hamburg, Münster
Ost: Berlin, Schwerin, Erfurt, Dresden
West: Köln, Essen, Wuppertal
Südwest: Main, Frankfurt, Kassel, Saarbrücken
Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige: Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, O, W, SW, S, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.RD_Ebene2_lang IS
'Langtext für die Region einer RD oder Zentrale

Verbund Nord: Hannover, Hamburg, Münster
Verbund Ost: Berlin, Schwerin, Erfurt, Dresden
Verbund West: Köln, Essen, Wuppertal
Verbund Südwest: Main, Frankfurt, Kassel, Saarbrücken
Verbund Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige:Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene2.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.ID_RD_Ebene3 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3 IS
'Kurztext für die Region einer RD oder Zentrale

Nord: Hannover, Hamburg, Münster
Ost: Berlin, Schwerin, Erfurt, Dresden
West: Köln, Essen, Wuppertal
Südwest: Main, Frankfurt, Kassel, Saarbrücken
Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige: Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_kurz IS
'Kurzbezeichnung für die Region einer RD oder Zentrale

N, O, W, SW, S, Son.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.RD_Ebene3_lang IS
'Langtext für die Region einer RD oder Zentrale

Verbund Nord: Hannover, Hamburg, Münster
Verbund Ost: Berlin, Schwerin, Erfurt, Dresden
Verbund West: Köln, Essen, Wuppertal
Verbund Südwest: Main, Frankfurt, Kassel, Saarbrücken
Verbund Süd: Nürnberg, Karlsruhe, Stuttgart, München, Regensburg
Sonstige:Alle anderen

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_RD_Ebene3.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.Regelbeitrag_Klasse IS
'Kurztext für die Klasse für Regelbeiträge.

Zum Beispiel:
<=400
>400 und <=700
>700

Zunächst nur DUMMY.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.Regelbeitrag_Klasse_kurz IS
'Kurzbezeichnung für die Klasse für Regelbeiträge.

Zum Beispiel:
<=400
>400 und <=700
>700

Zunächst nur DUMMY.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.Regelbeitrag_Klasse_lang IS
'Langtext für die Klasse für Regelbeiträge.

Zum Beispiel:
<=400
>400 und <=700
>700

Zunächst nur DUMMY.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regelbtg_Klasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.ID_RD_Ebene1 IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldir.ID_Regionaldirektion IS
'aus SC02_Schluesselbedeutung.ID';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion IS
'Kurztext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurztext 
bzw. PA01_BH->PA01_PartnerOrga_Par_01_HBS.Kurzname_alfa

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_kurz IS
'Kurzbezeichnung für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Kurzbezeichnung
bzw. PA01_BH->PA01_PartnerOrga_Par_01_HBS.Kurzname_num

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Regionaldirektion_lang IS
'Langtext für die RD oder Zentrale

aus SC02_Schluesselbedeutung.Langtext
bzw. PA01_BH->PA01_PartnerOrga_Par_01_HBS.Name_A

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Regionaldir.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.Ruecklaeufergrund IS
'Kurztext für den Rückläufergrund

aus 	KT01_Beleg_InEx_nn_HBS.C_Ruecklaeufergrund

in FSCD :
seit SEPA
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

"alt" (vor-SEPA):
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

COMMENT ON COLUMN DIM_Ruecklaeufergrd.Ruecklaeufergrund_kurz IS
'Kurzbezeichnung für den Rückläufergrund

aus 	KT01_Beleg_InEx_nn_HBS.C_Ruecklaeufergrund

in FSCD :
seit SEPA
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

"alt" (vor-SEPA):
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

COMMENT ON COLUMN DIM_Ruecklaeufergrd.Ruecklaeufergrund_lang IS
'Langtext für den Rückläufergrund

aus 	KT01_Beleg_InEx_nn_HBS.C_Ruecklaeufergrund

in FSCD :
seit SEPA
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

"alt" (vor-SEPA):
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

COMMENT ON COLUMN DIM_Ruecklaeufergrd.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ruecklaeufergrd.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.StatusAbgabeInkassobuero_Btr IS
'Kurztext für den Status der Abgabe von Forderungen zu einem Beitrags-InExkassoObjekt an Inkassobüro''s.

aus KT05_InExkassoObj_InEx_nn_HBS.C_Status_Abgabe_Inkbuero_Btr_B

Werte:
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

aus DIMAIOBPAR.Z_STATUS_GM

In der Quelle wird diese Information auf der Ebene InkassoObjekt nur für Beitragsinkasso geführt (für Regressforderungen s. BelegPosition).

Datenschutz $B';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.StatusAbgabeInkbuero_Btr_kurz IS
'Kurzbezeichnung fürden Status der Abgabe von Forderungen zu einem Beitrags-InExkassoObjekt an Inkassobüro''s.

aus KT05_InExkassoObj_InEx_nn_HBS.C_Status_Abgabe_Inkbuero_Btr_B

Werte:
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

aus DIMAIOBPAR.Z_STATUS_GM

In der Quelle wird diese Information auf der Ebene InkassoObjekt nur für Beitragsinkasso geführt (für Regressforderungen s. BelegPosition).

Datenschutz $B';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.StatusAbgabeInkbuero_Btr_lang IS
'Langtext für den Status der Abgabe von Forderungen zu einem Beitrags-InExkassoObjekt an Inkassobüro''s.

aus KT05_InExkassoObj_InEx_nn_HBS.C_Status_Abgabe_Inkbuero_Btr_B

Werte:
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

aus DIMAIOBPAR.Z_STATUS_GM

In der Quelle wird diese Information auf der Ebene InkassoObjekt nur für Beitragsinkasso geführt (für Regressforderungen s. BelegPosition).

Datenschutz $B';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroBtr.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.StatusAbgabeInkassobuero_Sch IS
'Kurztext für den Status der Abgabe von Forderungen zu einem Schaden-InExkassoObjekt an Inkassobüro''s.

aus KT06_Belegposition_InEx_..._WBSC_Status_Abgabe_Inkbuero_Sch_B

Werte:
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

COMMENT ON COLUMN DIM_StaAbInkBueroSch.StatusAbgabeInkbuero_Sch_kurz IS
'Kurzbezeichnung für den Status der Abgabe von Forderungen zu einem Schaden-InExkassoObjekt an Inkassobüro''s.

aus KT06_Belegposition_InEx_..._WBSC_Status_Abgabe_Inkbuero_Sch_B

Werte:
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

COMMENT ON COLUMN DIM_StaAbInkBueroSch.StatusAbgabeInkbuero_Sch_lang IS
'Langtext für den Status der Abgabe von Forderungen zu einem Schaden-InExkassoObjekt an Inkassobüro''s.

aus KT06_Belegposition_InEx_..._WBSC_Status_Abgabe_Inkbuero_Sch_B

Werte:
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

COMMENT ON COLUMN DIM_StaAbInkBueroSch.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StaAbInkBueroSch.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.StatusInExkassoObjekt IS
'Kurztext für den Status des InExkassoObjekts

aus 	KT05_InExkassoObj_InEx_01_HBS.C_StatusInExkassoObjekt

Werte
10	Gültig
11	Beitragsfrei
12	Kurzfristig
30	Erloschen
40	VK/BZ-Wechsel (Inkassodialog)
91	gesperrt durch CoC (erloschener kurzfristiger Vertrag)
93	gesperrt durch CoC (erloschener Vertrag)
94	gesperrt durch CoC (VK/BZ-Wechsel)
09	gesperrt durch CoC (Schaden)

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.StatusInExkassoObjekt_kurz IS
'Kurzbezeichnung für den Status des InExkassoObjekts

aus 	KT05_InExkassoObj_InEx_01_HBS.C_StatusInExkassoObjekt

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.StatusInExkassoObjekt_lang IS
'Langtext für den Status des InExkassoObjekts

aus 	KT05_InExkassoObj_InEx_01_HBS.C_StatusInExkassoObjekt

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_StatusInExObj.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.Sortierung_lfd IS
'aus Ueberwstufenklasse_B_kurz

Werteliste s. unter "Ueberwstufenklasse_B_kurz"!';

COMMENT ON COLUMN DIM_UebStufenKlasse.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UebStufenKlasse.Ueberwachungsstufenklasse_B IS
'Kurztext für die Überwachungsstufenklasse

aus KT04_Ueberwachung_InEx_nn_HBS.C_Ueberwachungsstufe_B

Werteliste s. unter "Ueberwstufenklasse_B_kurz"

Datenschutz $B
					';

COMMENT ON COLUMN DIM_UebStufenKlasse.Ueberwstufenklasse_B_kurz IS
'Kurzbezeichnung für die Überwachungsstufenklasse

durch Harmonisierung aus KT04_Ueberwachung_InEx_nn_HBS.C_Ueberwachungsstufe_B 

Sortierreihenfolge wird mit Ueberwstufenklasse_B_kurz vorgegeben (s.Sortierung_lfd) !

Werte:
UESKNR			ÜBERWACHUNGSSTUFENKLASSE									AKTIV_PASSIV
1						Zahlungserinnerung Erstbeitrag											aktive
2						Rücktritt																					aktive
3						Zahlungserinnerung																aktive
4						Erinnerungsschreiben Rechtsschutz									aktive
5						Beendigung SFR-Rückkaufangebot									passive
6						Klärung Nichtzahlung															aktive
7						Erinnerung Klärung Nichtzahlung										aktive
8						Mahnung Folgebeitrag														aktive
9						Mahnung PC-Miete																aktive
10					Klärung Nichtzahlung Mahnung										aktive
11					Ratenplanmahnschreiben Rechtsschutzschaden				aktive
12					Zahlungserinnerung erloschener Vertrag							aktive
13					vorgerichtliches Mahnschreiben										aktive
14					Vormerkung Beendigung Ratenplan									passive
15					Prüfung Mahnverfahren nach Ratenplan							passive
16					Spartenmeldung Nichtzahlung Folgebeitrag					passive
17					Aufhebung Nichteinlösung												passive
18					Aufhebung Nichtzahlung Folgebeitrag								passive
19					Aufhebung Nichtzahlung Folgebeitrag aus Migration	passive
20					Prüfung Freigabe an externes Inkasso								passive

Datenschutz $B
					';

COMMENT ON COLUMN DIM_UebStufenKlasse.Ueberwstufenklasse_B_lang IS
'Langtext für die Überwachungsstufenklasse

aus KT04_Ueberwachung_InEx_nn_HBS.C_Ueberwachungsstufe_B

Werteliste s. unter "Ueberwstufenklasse_B_kurz"

Datenschutz $B
					';

COMMENT ON COLUMN DIM_UebStufenKlasse.ist_aktive_passive_Stufe IS
'... hält fest, ob die Überwachungsstufenklasse eine aktive oder passive ist.
Eine aktive Überwachungsstufenklasse bewirkt mindestens eine Täigkeit mit Kontakt zum Kunden, eine passive nicht.

Werteliste s. unter "Ueberwstufenklasse_B_kurz"

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.Ueberwachungsvariante IS
'Kurztext für die Ueberwachungsvariante

aus 	KT05_InExkassoObj_InEx_nn_HBS.C_Ueberwachungsvariante

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.Ueberwachungsvariante_kurz IS
'Kurzbezeichnung für die Ueberwachungsvariante

aus 	KT05_InExkassoObj_InEx_nn_HBS.C_Ueberwachungsvariante

Datenschutz $-';

COMMENT ON COLUMN DIM_Ueb_Variante.Ueberwachungsvariante_lang IS
'Langtext für die Ueberwachungsvariante

aus 	KT05_InExkassoObj_InEx_nn_HBS.C_Ueberwachungsvariante

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.Ueberw_Betragsart_kurz IS
'Kurzbezeichnung für die Überwachungs-Betragsart.

Werte: Erstbeitrag, Folgebeitrag, PC-Miete, erloschener Vertrag, kein Beitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.Ueberw_Betragsart_lang IS
'Langtext für die Überwachungs-Betragsart.

Werte: Erstbeitrag, Folgebeitrag, PC-Miete, erloschener Vertrag, kein Beitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwBetragsart.Ueberwachungsbetragsart IS
'Kurztext für die Überwachungs-Betragsart.

Werte: Erstbeitrag, Folgebeitrag, PC-Miete, erloschener Vertrag, kein Beitrag

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufe.Ueberwachungsstufe_B IS
'Kurztext für die Überwachungsstufe

aus KT04_Ueberwachung_InEx_nn_HBS.C_Ueberwachungsstufe_B

Werte:
ÜBERWACHUNGSSTUFE_KURZ		ÜBERWACHUNGSSTUFE							ÜBERWACHUNGSSTUFE_LANG																				
	MAHNV		MAHNS						MAHNSTUFE																																													MSTYP ( -> Mahnstufentyp)
		 1					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag Standard										 1
		 1					 2								Rücktritt														Rücktritt	in	Erstbeitrag Standard																				11
		 1					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag Standard											Z4
		 2					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag vwL Standard							 	  1
		 2					 2								Rücktritt														Rücktritt	in	Erstbeitrag vwL Standard																		11
		 2					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag vwL Standard									Z4
...

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwStufe.Ueberwachungsstufe_B_kurz IS
'Kurzbezeichnung für die Überwachungsstufe

aus KT04_Ueberwachung_InEx_nn_HBS.C_Ueberwachungsstufe_B
 
Werte:
ÜBERWACHUNGSSTUFE_KURZ		ÜBERWACHUNGSSTUFE							ÜBERWACHUNGSSTUFE_LANG																				
	MAHNV		MAHNS						MAHNSTUFE																																													MSTYP ( -> Mahnstufentyp)
		 1					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag Standard										 1
		 1					 2								Rücktritt														Rücktritt	in	Erstbeitrag Standard																				11
		 1					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag Standard											Z4
		 2					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag vwL Standard							 	  1
		 2					 2								Rücktritt														Rücktritt	in	Erstbeitrag vwL Standard																		11
		 2					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag vwL Standard									Z4
...

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwStufe.Ueberwachungsstufe_B_lang IS
'Langtext für die Überwachungsstufe

aus KT04_Ueberwachung_InEx_HBS.C_Ueberwachungsstufe_B

Werte:
ÜBERWACHUNGSSTUFE_KURZ		ÜBERWACHUNGSSTUFE							ÜBERWACHUNGSSTUFE_LANG																				
	MAHNV		MAHNS						MAHNSTUFE																																													MSTYP ( -> Mahnstufentyp)
		 1					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag Standard										 1
		 1					 2								Rücktritt														Rücktritt	in	Erstbeitrag Standard																				11
		 1					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag Standard											Z4
		 2					 1								Zahlungserinnerung Erstbeitrag				Zahlungserinnerung Erstbeitrag	in	Erstbeitrag vwL Standard							 	  1
		 2					 2								Rücktritt														Rücktritt	in	Erstbeitrag vwL Standard																		11
		 2					 3								Aufhebung Nichteinlösung					Aufhebung Nichteinlösung	in	Erstbeitrag vwL Standard									Z4
...

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwStufenTyp.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwStufenTyp.Ueberwachungsstufentyp_B IS
'Kurztext für den Überwachungsstufentyp

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsstufentyp_B

in FSCD :
MSTYP	MAHNSTUFENTYP
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

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwStufenTyp.Ueberwachungsstufentyp_B_kurz IS
'Kurzbezeichnung für den Überwachungsstufentyp

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsstufentyp_B

in FSCD :
MSTYP	MAHNSTUFENTYP
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

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwStufenTyp.Ueberwachungsstufentyp_B_lang IS
'Langtext für den Überwachungsstufentyp

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsstufentyp_B

in FSCD :
MSTYP	MAHNSTUFENTYP
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

Datenschutz $B';

COMMENT ON COLUMN DIM_UeberwVerfStatus.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfStatus.UeberwVerfStatus IS
'Kurztext für den Status der Überwachungsmaßnahme wieder, insbesondere Informationen über die Art der Beendung.

aus KT04_Ueberwachung_InEx_nn_HBS.C_UeberwVerfahrenStatus_B

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

COMMENT ON COLUMN DIM_UeberwVerfStatus.UeberwVerfStatus_kurz IS
'Kurzbezeichnung für den Status der Überwachungsmaßnahme wieder, insbesondere Informationen über die Art der Beendung.

aus KT04_Ueberwachung_InEx_nn_HBS.C_UeberwVerfahrenStatus_B

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

COMMENT ON COLUMN DIM_UeberwVerfStatus.UeberwVerfStatus_lang IS
'Langtext für den Status der Überwachungsmaßnahme wieder, insbesondere Informationen über die Art der Beendung.

aus KT04_Ueberwachung_InEx_nn_HBS.C_UeberwVerfahrenStatus_B

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

COMMENT ON COLUMN DIM_UeberwVerfahren.ID_InExkassoObjektArt IS
'... ist die InExkassoObjektArt, die zum Überwachungsverfahren gehört (siehe Anhang).

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.ID_UeberwBetragsart IS
'... ist die die Überwachungs-Betragsart, die zum Überwachungsverfahren gehört (siehe Anhang).

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.Ueberwachungsverfahren IS
'Kurztext für das Überwachungsverfahren

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsverfahren

in FSCD :
MAHNV	MAHNVERFAHREN
1				Erstbeitrag Standard
2				Erstbeitrag vwL Standard
3				Erstbeitrag Direktvers. Nicht-GroKu Standard
4				Folgebeitrag Standard
5				Krankheitskostenvoll Standard
6				Folgebeitrag Riester Standard
7				Folgebeitrag Direktvers. Nicht-GroKu Standard
8				Folgebeitrag vwL Standard und Direktvers. + Mahnung
9				Erstbeitrag schlechter Zahler
...

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.Ueberwachungsverfahren_kurz IS
'Kurzbezeichnung für das Überwachungsverfahren

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsverfahren

in FSCD :
MAHNV	MAHNVERFAHREN
1				Erstbeitrag Standard
2				Erstbeitrag vwL Standard
3				Erstbeitrag Direktvers. Nicht-GroKu Standard
4				Folgebeitrag Standard
5				Krankheitskostenvoll Standard
6				Folgebeitrag Riester Standard
7				Folgebeitrag Direktvers. Nicht-GroKu Standard
8				Folgebeitrag vwL Standard und Direktvers. + Mahnung
9				Erstbeitrag schlechter Zahler
...

Datenschutz $-';

COMMENT ON COLUMN DIM_UeberwVerfahren.Ueberwachungsverfahren_lang IS
'Langtext für das Überwachungsverfahren

aus KT04_Ueberwachung_InEx_01_HBS.C_Ueberwachungsverfahren

in FSCD :
MAHNV	MAHNVERFAHREN
1				Erstbeitrag Standard
2				Erstbeitrag vwL Standard
3				Erstbeitrag Direktvers. Nicht-GroKu Standard
4				Folgebeitrag Standard
5				Krankheitskostenvoll Standard
6				Folgebeitrag Riester Standard
7				Folgebeitrag Direktvers. Nicht-GroKu Standard
8				Folgebeitrag vwL Standard und Direktvers. + Mahnung
9				Erstbeitrag schlechter Zahler
...

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.Vertragskontotyp IS
'Kurztext für den Vertragskontotyp.

aus KT02_Vertragskonto_InEx_01_HBS.C_Vertragskontotyp (DIMAIOBJPAR.PARTNRERACCTYP)

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.Vertragskontotyp_kurz IS
'Kurzbezeichnung für den EVertragskontotyp.

aus KT02_Vertragskonto_InEx_01_HBS.C_Vertragskontotyp (DIMAIOBJPAR.PARTNRERACCTYP)

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Vertragskontotyp.Vertragskontotyp_lang IS
'Langtext für den Vertragskontotyp.

aus KT02_Vertragskonto_InEx_01_HBS.C_Vertragskontotyp (DIMAIOBJPAR.PARTNRERACCTYP)

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

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.ID_Woche IS
'Die ID_Woche wird so gesetzt, dass sie identisch zur Woche ist, in der das Datum liegt. Aufbau JJJJWW,  z.B. 201351';

COMMENT ON COLUMN DIM_Woche.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Woche.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

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
'Wochennummer, z.B. 50';

COMMENT ON COLUMN DIM_Woche.Woche_kurz IS
'Kurztext der Woche, z.b. KW 50
';

COMMENT ON COLUMN DIM_Woche.Woche_lang IS
'Langtext der Woche, z. B. Kalenderwoche 50';

COMMENT ON COLUMN DIM_ZW_vertraglich.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.Zahlweise_vertraglich IS
'Kurztext für die Zahlweise_vertraglich

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.Zahlweise_vertraglich_kurz IS
'Kurzbezeichnung für die Zahlweise_vertraglich

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich

Datenschutz $-';

COMMENT ON COLUMN DIM_ZW_vertraglich.Zahlweise_vertraglich_lang IS
'Langtext für die Zahlweise_vertraglich

aus 	KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.Zahlart IS
'Kurztext für die Zahlart

Werte:
EiZa (eigeninitiierte Zahlart)
FiZa (fremdinitiierte Zahlart)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

eigeninitiierte Zahlart (Jede Zahlart, bei der die DEVK den Betrag sowie den Zeitpunkt der Zahlung selber festlegt. Bspw. LSV) bei:
     LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
... 

fremdinitiierte Zahlart	(Jede Zahlart, bei der der Schuldner den Betrag sowie den Zeitpunkt der Zahlung festlegt. Bspw. Überweisung) bei:
DIZ Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ)
... (z.B. Paypal)

Datenschutz $-';

COMMENT ON COLUMN DIM_Zahlart.Zahlart_kurz IS
'Kurzbezeichnung für die Zahlart

Werte:
EiZa (eigeninitiierte Zahlart)
FiZa (fremdinitiierte Zahlart)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

eigeninitiierte Zahlart	(Jede Zahlart, bei der die DEVK den Betrag sowie den Zeitpunkt der Zahlung selber festlegt. Bspw. LSV) bei:
     LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
... 

fremdinitiierte Zahlart	(Jede Zahlart, bei der der Schuldner den Betrag sowie den Zeitpunkt der Zahlung festlegt. Bspw. Überweisung) bei:
DIZ Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ)
... (z.B. Paypal)

Datenschutz $-
';

COMMENT ON COLUMN DIM_Zahlart.Zahlart_lang IS
'Langtext  für die Zahlart

Werte:
EiZa (eigeninitiierte Zahlart)
FiZa (fremdinitiierte Zahlart)

aus KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg (FKKVKP.EZAWE)

eigeninitiierte Zahlart	(Jede Zahlart, bei der die DEVK den Betrag sowie den Zeitpunkt der Zahlung selber festlegt. Bspw. LSV) bei:
     LSV zum 1. des Monats
1   LSV zum 15. des Monats
5   LSV zum 1. oder 15. des Monats
6  SCHADEN LSV
... 

fremdinitiierte Zahlart	(Jede Zahlart, bei der der Schuldner den Betrag sowie den Zeitpunkt der Zahlung festlegt. Bspw. Überweisung) bei:
DIZ Wenn dieses Feld bei Sollstellungen in FS-CD leer ist, handelt es sich um einen Direktzahler (DIZ)
... (z.B. Paypal)

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.Anzahl_Zahlungspositionen IS
'.. ist die Anzahl der Zahlungspositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.BetragInEuro IS
'... ist der Betrag in Hauswährung (=Euro).

aus KT06_BelegPosition_InEx_..._WBS.BetragInEuro (Fall1) oder (-1)* KT06_BelegPosition_InEx_..._WBS.BetragInEuro bei ausgeglichener Forderungsposition (Fall2,3)

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Ausgleichsgrund IS
'1.Fall (aus Belegposition zur Zahlung geladen): aus KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsgrund
2.Fall (aus Ausgleichposition zur Zahlung geladen): konstant = direkte Forderungszuordnung, Kurzbezeichnung: DIRFORD
3.Fall (aus indirekter Ausgleichposition (über Ausgleichsbeleg) zur Zahlung geladen): konstant = indirekte Forderungszuordnung, Kurzbezeichnung: INDIRFORD

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Ausgleichsstatus IS
'aus KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsstatus  (bei Ausgleich über ausgeglichene Forderungsbelegposition)

Datenschutz $-
';

COMMENT ON COLUMN F_Direktzahlungspos.ID_BelegHerkunft IS
'aus KT01_Beleg_InEx_..._HBS.C_BelegHerkunft zum DIZ-Beleg mit KT01_Beleg_InEx_..._HBS.FK_Beleg = F_Direktzahlungsposition.SK_Zahlung

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Belegart IS
' aus KT01_Beleg_InEx_..._HBS.C_Belegart zum Direktzahlungsbeleg mit KT01_Beleg_InEx_..._HBS.FK_Beleg = F_Direktzahlungsposition.SK_Zahlung

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Belegart_ausgeglichen IS
'... ist die Belegart des Belegs der ausgeglichen Belegpositon (meistens Forderung), falls die ausgeglichene Belegposition bekannt ist, d.h. falls die Direktzahlungbelegposition simuliert  (oder ersetzt) ist.

aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.Belgart
(bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,

sonst :=Dummy.

Datenschutz $-

';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Eingangszahlweg_vorges IS
'aus KT06_BelegPosition_KT01_BW-> KT02_KT06_BL -> KT02_BH->KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... könnte bei "echten" Zahlungsbelegpositionen falsch sein, wenn die Zuordnung der Zahlung in FSCD über Ausgleichsbelege korrigiert wurde, ohne dass die Zuordnung der Original-Belegposition verändert wurde.  Dies ist nicht mehr erlaubt.

Datenschutz $-
';

COMMENT ON COLUMN F_Direktzahlungspos.ID_HVTV_ausgeglichen IS
'... ist der Haupt-/Teilvorgang der ausgeglichen Belegpositon (meistens Forderung), falls die ausgeglichene Belegposition bekannt ist, d.h. falls die Direktzahlungbelegposition simuliert  (oder ersetzt) ist.

aus KT06_BelegPosition_KT01_BW->
	KT06_BelegPosition_InEx_..._WBS.C_Hauptvorgang~....C_Teilvorgang 
(bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,

sonst :=Dummy.

Datenschutz $-

';

COMMENT ON COLUMN F_Direktzahlungspos.ID_HauptTeilvorgang IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Hauptvorgang~....C_Teilvorgang 
oder (bei Ausgleich) konstant = Zahlungseingang, Kurzbezeichnung: ZAHL_EIN 
(bei Ausgleich über ausgeglichene Forderungsbelegposition),

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_InEx_Produktgruppe IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_InEx_Produktgruppe   (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... ist bei "echten" Zahlungsbelegpositionen leer.

Datenschutz $-

 ';

COMMENT ON COLUMN F_Direktzahlungspos.ID_InExkassoObjektArt IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_InExkassoObjektArt  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... ist bei "echten" Zahlungsbelegpositionen leer.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_InExkassoObjektTyp IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektTyp  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... ist bei "echten" Zahlungsbelegpositionen leer.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Valutadatum IS
'... aus 
KT01_Beleg_InEx_..._HBS->KT01_Beleg_BH->(*)KT01_KT13_Zahlstap_AusglBel_BL->KT13_ZahlstapelPos_KT12_BW->KT12_Zahlungsstapel_BH->KT12_Zahlstapel_InEx_01_HBS.Valutadatum, 
für einen beliebigen Eintrag in den zugehörigen KT01_KT13_Zahlstap_AusglBel_BL

oder abgekürzt aus 
KT01_Beleg_InEx_..._HBS->KT01_Beleg_BH->KT01_KT12_ZahlungsBeleg_BBL->KT12_Zahlungsstapel_BH->KT12_Zahlstapel_InEx_01_HBS.Valutadatum

jeweils zum Direktzahlungsbeleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_Direktzahlungsposition.SK_Zahlung


Datenschutz $-

';

COMMENT ON COLUMN F_Direktzahlungspos.ID_VertragskontoTyp IS
'aus KT06_BelegPosition_KT01_BW-> KT02_KT06_BL -> KT02_Vertragskonto_BH -> KT02_Vertragskonto_InEx_..._HBS.C_Vertragskontotyp  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... könnte bei "echten" Zahlungsbelegpositionen falsch sein, wenn die Zuordnung der Zahlung in FSCD über Ausgleichsbelege korrigiert wurde, ohne dass die Zuordnung der Original-Belegposition verändert wurde.  Dies ist nicht mehr erlaubt.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Zahlung_Anlegedatum IS
' aus Datum-Teil von KT01_Beleg_InEx_nn_HBS.angelegt_am zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_Direktzahlungsposition.SK_Zahlung

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Zahlungsdatum IS
'aus KT01_Beleg_InEx_nn_HBS.Belegdatum zum Direktzahlungsbeleg mit KT01_Beleg_InEx_..._HBS.FK_Beleg = F_Direktzahlungspos.SK_Zahlung

Datenschutz $-

';

COMMENT ON COLUMN F_Direktzahlungspos.SK_DIZ_Zahlungsposition IS
'aus KT06_BelegPosition_InEx_02_WBS.FK_KT06_BelegPosition mit KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart = ''20 Eingangszahlung'' (Fall1) oder aus ausgeglichener Forderungsposition (Fall2)';

COMMENT ON COLUMN F_Direktzahlungspos.SK_InExkassoObjekt IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... ist bei "echten" Zahlungsbelegpositionen leer.

Datenschutz $-

';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Partner IS
'aus KT06_BW->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Alternativ über Vertragskonto aus
KT06_BW->KT02_KT06_BL->KT02_BH->PA01_PA02_KT02_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Vertragskonto IS
'aus KT06_BelegPosition_KT01_BW-> KT02_KT06_BL -> KT02_Vertragskonto_BH.SK_KT02_Vertragskonto  (bei Ausgleich über ausgeglichene Forderungsbelegposition), falls eindeutig vorhanden,
sonst :=Dummy.

Bea: ... könnte bei "echten" Zahlungsbelegpositionen falsch sein, wenn die Zuordnung der Zahlung in FSCD über Ausgleichsbelege korrigiert wurde, ohne dass die Zuordnung der Original-Belegposition verändert wurde.  Dies ist nicht mehr erlaubt.

Bea: Bei Summen-simulierten Direktzahlungsbelegpositionen kann es bei Summierung über Beträge zu unterschiedlichen Vertragskonten vorkommen, das kein eindeutiges Vertragskonto feststellbar ist und dann als Dummy gesetzt wird.

Datenschutz $-


';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Zahlung IS
'aus KT06_BelegPosition_InEx_..._WBS.FK_KT01_Beleg oder (bei Ausgleich) über KT01_KT06_Ausgleich_BL-> KT01_Beleg_BH.SK_Beleg

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.Zahlung_Anlegezeitpunkt IS
' aus KT01_Beleg_InEx_02_HBS.angelegt_am zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_Direktzahlungsposition.SK_Zahlung

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Anzahl_Einzuege IS
'=Anzahl (disjunkt KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.Laufdatum
	mit (kein Ausnahmegrund)
		 KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT06_KT10_Regul_InEx_..._LBS.C_Postenkennzeichen_B=leer)
	und mit (das aktuelle Laufdatum und zusätzlich nur vorherige Laufdatümer)
		KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.Laufdatum 
		<=
		KT06_KT10_Regulierung_BL->KT10_ZahllaufZahl_InEx_..._HBS.Laufdatum
(ohne simulierte Läufe)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Anzahl_FoVe_Positionen IS
'.. ist die Anzahl der Belegpositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.BetragInEuro IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW-> KT06_BelegPosition_InEx_..._WBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Ford_Verb_Anlegezeitpunkt IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_am
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausgleichsgrund IS
'aus KT06_KT10_Regulierung_BL->KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsgrund, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausgleichsstatus IS
'aus KT06_KT10_Regulierung_BL->KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsstatus, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausnahmegrund IS
'aus KT06_KT10_Regulierung_BL->KT06_KT10_Regul_InEx_.._LBS.C_Postenkennzeichen_B, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_BelegHerkunft IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_BelegHerkunft

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Belegart IS
' aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Buchungskreis IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Datum_vorheriger_LSV_Lauf IS
'falls Forderungsverbindlichkeitsposition schon mal eingezogen wurde, dann aus  KT06_KT10_BL->KT06_BW->vorheriger KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.DatumZahllauf (bzw. Laufdatum),
(ohne simulierte Läufe)

sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Eingangszahlweg_vorges IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT02_KT06_BL-> KT02_Vertragskonto_BH->KT02_Partner_VK_InEx_..._HBS.C_Eingangszahlweg

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_FoVeKlassifikation_Beleg IS
'... ist die Klassifikation des Gesamtbetrags des zugehörigen Belegs.

aus Vorzeichen von Gesamtbetrag := Summe(KT06_Belegposition_KT01_BW.BetragInEuro) zum Beleg zu SK_Forderung_Verbindlichkeit

Werte:
Gesamtbetrag > 0 -> Forderung
Gesamtbetrag < 0 -> Verbindlichkeit
Gesamtbetrag = 0 -> Null-Beleg
Sonst Dummy

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ford_Verb_Anlegedatum IS
'aus Datum-Teil von KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_HauptTeilvorgang IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Hauptvorgang~....C_Teilvorgang, 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_InEx_Produktgruppe IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_InEx_Produktgruppe, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_InExkassoObjektArt IS
'aus KT06_KT10_Regulierung_BL->
	KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->KT05_InExkassoObjekt_BH-
	KT05_InExkassoObj_InEx_nn_HBS.C_InExkassoObjektArt, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_InExkassoObjektTyp IS
'aus KT06_KT10_Regulierung_BL->
	KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkassoObjekt_BH->
	KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektTyp, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_LSV_Laufdatum IS
'aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.DatumZahllauf (bzw. Laufdatum)

Bea: Da das Laufdatum vom tatsächlichen Laufdatum abweichen kann, kann zur Präzisierung auch Min(KT10BH->(*)KT01_KT10_BL->KT01_Beleg_BH->KT01_HBS.angelegt_am) verwendet werden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Nettofaelligkeitdatum IS
'aus  KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_Belegposition_InEx_..._WBS.Nettofaelligkeit, 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Vertragskontotyp IS
'aus KT06_KT10_Regulierung_BL->
	KT06_BelegPosition_KT01_BW->
	KT02_KT06_BL->
	KT02_Vertragskonto_BH->
	KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Zahlweise_vertraglich IS
'aus KT06_KT10_Regulierung_BL->
	KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkasssoObjekt_BH->
	KT05_InExkassoObj_InEx_..._HBS.C_Zahlweise_vertraglich, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_FoVePos_ProLauf IS
'aus KT06_KT10_Regulierung_BL.SK_KT06_KT10_Regulierung

Datenschutz $-

';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Ford_Verb_Position IS
'aus KT06_KT10_Regulierung_BL.FK_KT06_BelegPosition

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Forderung_Verbindlichkeit IS
'aus  KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW.FK_KT01_Beleg 

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_InExkassoObjekt IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_LSV_Lauf IS
'aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.DatumZahllauf (bzw. Laufdatum)
und aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_..._HBS.KennungZahllauf (bzw. Laufkennung)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_LSV_Lauf_vorheriger IS
'falls Forderungsverbindlichkeitsposition schon mal eingezogen wurde, 
	dann aus  KT06_KT10_BL->
	KT06_BW->
	vorheriger KT06_KT10_BL->	
	KT10_BH->
	KT10_ZahllaufZahl_InEx_..._HBS.DatumZahllauf (bzw. Laufdatum)
und aus KT06_KT10_BL->
	KT06_BW->
	vorheriger KT06_KT10_BL->	
	KT10_BH->
	KT10_ZahllaufZahl_InEx_..._HBS.KennungZahllauf (bzw. Laufkennung),
(ohne simulierte Läufe)

sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Partner IS
'aus KT06_BH->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner), 
falls vorhanden, sonst :=Dummy

Alternativ über Vertragskonto aus
KT06_BW->KT02_KT06_BL->KT02_BH->PA01_PA02_KT02_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Vertragskonto IS
'aus KT06_KT10_Regulierung_BL->
	KT06_BelegPosition_KT01_BW->
	KT02_KT06_BL.FK_KT02_Vertragskonto

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.Anzahl_FoVe_Positionen IS
'.. ist die Anzahl der Belegpositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.BetragInEuro IS
'aus KT06_BelegPosition_KT01_BW-> KT06_BelegPosition_InEx_.._WBS.BetragInEuro 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.Ford_Verb_Anlegezeitpunkt IS
'aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_am
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleich_Belegart IS
'aus KT06_BW->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH->
	KT01_Beleg_InEx_..._HBS.C_Belegart,
falls vorhanden, sonst Dummy

Werteliste:
00 	Migration
01	Nacharbeit Migration
10 	Forderung
11 	Gebühr
12 	Zinsen
13 	Rücknahme Niederschl
14 	Buchung aus GM
15 	Ratenplan
16 	Buchung f Stundung
17 	PC Miete
18 	Ford. Vorwegabzug
19 	ZfA Zulagenforderung
20 	Eingangszahlung
21 	Ausgangszahlung
22 	Rückläufer
23 	Scheckeinlösung
24 	Bareinzahlung RD
25 	Leistungseinbehalt K
26 	Umwandlung Leben
27 	Schaden Makler RD27
28 	Ausgl. Vorwegabzug
29 	ZfA Eingangszahlung
30 	Stornierung
31 	Scheckstorno Altsys.
32 	Klärungsbuchung
33	Kostenforderung
34	EingZahl KapÜber RI
35	Ford/Verb KapÜber RI
40 	BUZ-Leistung
41 	Leistungseinbehalt
50 	Manuelle Buchung
51 	Postentransfer oder BZ-Wechsel
52 	Umbuchung anderer FB
60 	Masch. Ausgleichen
61 	Ausgleichsbuchung
70 	Ford./Verb. Schaden
71 	Umbuchung Schaden
75 	Ford./Verb. LL
76 	Sto. Ford./Verb. LL
77 	Verrechnung LL
80 	Forderungsberichtig.
81 	Umbuchung (verz.Erl)
82 	Man. Ausbuchung  
83 	Umgliederung
84 	Ausbuchung m. Steuer 
85 	Ausbuchung o. Steuer 
86 	Umbuchung
87 	Vertragsumsetzung
90 	Zulagenforderung FPT
91 	Eingangszahlung FPT
99 	Bündelung v. Posten

Datenschutz $-

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichdurchf_Bereich IS
'aus  der 3-ten und 4-ten Stelle von 
KT06_BW->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH->
	KT01_Beleg_InEx_..._HBS.angelegt_von_A,
falls vorhanden, eine zweistellige Nummer und angelegt_von_A einen Arbeitsanteil beschreibt,
sonst Dummy

Bea:
Org-Bereiche sind hier für RD''en z.B.
- KKC	KundenKompetenzCenter (42)
- L		Leben (31)
- RS		Rechtsschutz (99)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichdurchf_MA_System IS
'aus KT06_BW->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH->
	KT01_Beleg_InEx_..._HBS.angelegt_von_A,
falls vorhanden und einen Arbeitsanteil oder ein System beschreibt,
sonst Dummy

Werte:
- Mitarbeiter (kurz: MA), falls ''angelegt_von_A'' ein Arbeitsanteil
- System (kurz: SYS), falls ''angelegt_von_A'' kein Arbeitsanteil

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichdurchfuehrung_RD IS
'aus  den ersten beiden Stellen von 
KT06_BW->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH->
	KT01_Beleg_InEx_..._HBS.angelegt_von_A, 
falls vorhanden und eine RD oder die Zentrale beschreibt,
sonst Dummy

Bea: Dies kann (und wird) von der vertragskontoführenden RD abweichen.  In PARIS enthält PA01_228.EM_ALT die VKONT und PA01_228.RDNR die vertragskontoführende RD-Nummer.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichsgrund IS
'aus KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsgrund, 
falls vorhanden, sonst :=Dummy 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichsstatus IS
'aus  KT06_BW->KT06_BelPos_Ausgl_InEx_..._WBS.C_Ausgleichsstatus, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_BelegHerkunft IS
'aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_BelegHerkunft 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Belegart IS
'aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Buchungskreis IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Buchungskreis 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Eingangszahlweg_vorges IS
'aus KT06_BelegPosition_KT01_BW->KT02_KT06_BL-> KT02_Vertragskonto_BH->KT02_Partner_VK_InEx_..._HBS.C_Eingangszahlweg

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_FoVeKlassifikation_Beleg IS
'... ist die Klassifikation des Gesamtbetrags des zugehörigen Belegs.

aus Vorzeichen der Gesamtbetrag := Summe(KT06_Belegposition_KT01_BW.BetragInEuro) zum Beleg zu SK_Forderung_Verbindlichkeit

Werte:
Gesamtbetrag > 0 -> Forderung
Gesamtbetrag < 0 -> Verbindlichkeit
Gesamtbetrag = 0 -> Null-Beleg
Sonst Dummy

Datenschutz $-

';

COMMENT ON COLUMN F_FoVePosition.ID_Ford_Verb_Anlegedatum IS
'aus Datum-Teil von KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_am 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_HauptTeilvorgang IS
'aus  KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_Hauptvorgang~....C_Teilvorgang 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_InEx_Produktgruppe IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_..._WBS.C_InEx_Produktgruppe, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_InExkassoObjektArt IS
'aus KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkassoObjekt_BH->
	KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektArt, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_InExkassoObjektTyp IS
'aus KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkassoObjekt_BH->
	KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektTyp, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Nettofaelligkeitdatum IS
'aus KT06_BelegPosition_KT01_BW->KT06_Belegposition_InEx_..._WBS.Nettofaelligkeit 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_StatusAbgabeInkbuero_Sch IS
'aus KT06_BelegPosition_KT01_BW->
	KT06_Belegposition_InEx_..._WBS.C_Status_Abgabe_Inkbuero_Sch_B

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_StatusInExkassoObjekt IS
'aus  KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkassoObjekt_BK->
	KT05_InExkassoObj_InEx_nn_HBS.C_StatusInkassoObjekt, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_UeberwVerf_vorges IS
'.. ermittelt gemäß MD35_UeberwVerf_vorges (abhängig von Überwachungsvariante, Buchungskreis, InEx_Produktgruppe, Haupt-/Teilvorgang) das Überwachungsverfahren, nach dem die Belegposition überwacht wird.

Datenschutz $-


';

COMMENT ON COLUMN F_FoVePosition.ID_Ueberwachungsvariante IS
'aus KT06_BelegPosition_KT01_BW->
	KT05_KT06_BL->
	KT05_InExkasssoObjekt_BH->
	KT05_InExkassoObj_InEx_..._HBS.C_Ueberwachungsvariante, 
falls vorhanden, sonst :=Dummy

Datenschutz $';

COMMENT ON COLUMN F_FoVePosition.ID_Vertragskontotyp IS
'aus KT06_BelegPosition_KT01_BW->KT02_KT06_BL->KT02_BH->KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Zahlweise_vertraglich IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL->KT05_InExkasssoObjekt_BH->KT05_InExkassoObj_InEx_..._HBS.C_Zahlweise_vertraglich, 
falls vorhanden, sonst :=Dummy

Datenschutz $';

COMMENT ON COLUMN F_FoVePosition.SK_FoVePosition IS
'aus KT06_Belegposition_KT01_BW.SK_KT06_Belegposition

Datenschutz $-

';

COMMENT ON COLUMN F_FoVePosition.SK_Ford_Verb_Position IS
'aus KT06_BelegPosition_KT01_BW.SK_KT06_Belegposition 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_Forderung_Verbindlichkeit IS
'aus KT06_BelegPosition_KT01_BW.FK_KT01_Beleg 

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePosition.SK_InExkassoObjekt IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt, 
falls vorhanden, sonst :=Dummy

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_Partner IS
'aus KT06_BH->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner), 
falls vorhanden, sonst :=Dummy

Alternativ über Vertragskonto aus
KT06_BW->KT02_KT06_BL->KT02_BH->PA01_PA02_KT02_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_Vertragskonto IS
'aus KT06_BelegPosition_KT01_BW->KT02_KT06_BL.FK_KT02_Vertragskonto 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ist_ueberwachungsrelevant IS
'... hält fest, ob diese Belegposition überwacht wird, also ob ein Überwachungsverfahren dafür definiert ist.

Werte: ja/nein
- ja, genau dann, wenn es ein vorgesehenes Überwachungsverfahren gibt, also wenn ID_UeberwVerf_vorges ein Überwachungsverfahren enthält
- nein, sonst

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Anzahl_InExObjekte IS
'.. ist die Anzahl der InExkasssoObjekte

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_Eingangszahlweg_vorges IS
'aus KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH->KT02_KT05_BL->KT02_BH->KT02_Partner_VK_InEx_nn_HBS.C_Eingangszahlweg

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_InExObj_Anlegedatum IS
' aus Datum-Teil von KT05_InExkassoObj_InEx_nn_HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_InExObj_LieferungsArt IS
'aus 	KT05_InExkassoObj_InEx_nn_HBS.C_Lieferung_faelligkeitbez

= "1 fälligkeitsbezogen", wenn C_Lieferung_faelligkeitbez=JA
= "0 änderungsbezogen", sonst

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_InExkassoObjektArt IS
'aus KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektArt

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_InExkassoObjektTyp IS
'aus KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektTyp

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_Regelbeitrag_jhrl_Klasse_VK IS
'derzeit konstant = Dummy

aus der Gesamtsumme der jährlichen Regelbeiträge aller gültigen InExkossoObjekte zu einem Vertragskonto, wenn die Festlegung der Regelbeitragsklasssen stabil ist.

Datenschutz $-



';

COMMENT ON COLUMN F_InExObjekt.ID_StatusAbgabeInkbuero_Btr IS
'aus KT05_InExkassoObj_InEx_nn_HBS.C_Status_Abgabe_Inkbuero_Btr_B

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_StatusInExkassoObjekt IS
'aus KT05_InExkassoObj_InEx_nn_HBS.C_StatusInkassoObjekt

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_Vertragskontotyp IS
'aus KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH->KT02_KT05_BL->KT02_BH->KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_Zahlweise_vertraglich IS
'aus KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.InExObj_Anlegezeitpunkt IS
'aus KT05_InExkassoObj_InEx_nn_HBS.angelegt_am
 
Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Regelbeitrag_jaehrlich IS
'Bestimme den jährlichen Regelbeitrag zum InExkassoObjekt KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH (aus KT03_Zahlplanpos_InEx_nn_WBS.BETRAG):

Bestimme zunächst den Regelbeitrag mittels einer der Varianten a) oder b):

a.) Variante Nicht LF-Vertrag (C_InExkassoObjektTyp.C_INEXKASSOOBJEKTTYP<>11 : "10 Lebensversicherung"):
Bestimme KT03_Zahlplanpos_InEx_nn_WBS.BETRAG in  KT03_Zahlplanpos_InEx_nn_WBS mit C_ARCHIVIERUNG = nein, VORZEITIGBEENDEN = leer oder > Stichtag (Ende) und C_EINMALZAHLUNG = nein mit GUELTIG_VON = Max(GUELTIG_VON mit GUELTIG_VON<=Stichtag) 

b.) Variante LF-Vertrag (C_InExkassoObjektTyp.C_INEXKASSOOBJEKTTYP=11 : "10 Lebensversicherung"): 
Bestimme SUM( KT03_Zahlplanpos_InEx_nn_WBS.BETRAG) über alle Datensätze aus KT03_Zahlplanpos_InEx_nn_WBS mit C_HAUPTVORGANG IN (1010; 1020;1030;1040;1050;1060;1070) und C_TEILVORGANG IN (0110;0150) und C_EINMALZAHLUNG = ja mit FACHLICHERBEGINN = MAX(FACHLICHERBEGINN) und ANGELEGT_AM= MAX(ANGELEGT_AM) innerhalb der KT03_Zahlplanposition_KT05_BW zu KT05_InExkassoObjekt_BH mit KT05_InExkassoObj_InEx_nn_HBS.C_InExkassoObjektArt = Beitrag!

Multipliziere den so gefundenen Regelbeitrag (gem Variante a.) oder b.)) mit einem Faktor für die KT05_InExkassoObjekt_InEx_02.HBS.Zahlweise_vertraglich (12 bei montatlich; 4 bei quartärlich; 2 bei halbjährlich) um den jährlichen Regelbeitrag zu erhalten.

Datenschutz $-

';

COMMENT ON COLUMN F_InExObjekt.SK_InExObjekt IS
'aus KT05_InExkassoObj_InEx_01_HBS.FK_KT05_InExkassoObjekt

Bea: Für ein InExkassoObjekt zu einem LSV-Lauf zusätzlich
aus KT05_BH->KT05_KT06_BL->KT06_BH-> KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum
und aus KT05_BH->KT05_KT06_BL->KT06_BH-> KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufkennung';

COMMENT ON COLUMN F_InExObjekt.SK_InExkassoObjekt IS
'aus KT05_InExkassoObj_InEx_nn_HBS.FK_KT05_InExkassoObjekt

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.SK_Partner IS
'aus KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH->PA01_PA02_KT05_BL.FK_PA01_Partner (mit Rolle=InExkassopartner), 
falls vorhanden, sonst :=Dummy

oder alternativ über das Vertragskonto
KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH->KT02_KT05_BL->KT02_Vertragskonto_BH->PA01_PA02_KT02_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.SK_Vertragskonto IS
'aus KT05_InExkassoObj_InEx_nn_HBS->KT05_InExkassoObjekt_BH->KT02_KT05_BL->KT02_BH.SK_KT02_Vertragskonto

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.AbgabebetragInEuro IS
'... ist der Abgabebetrag in Euro.

aus KT08_InkassoPos_InEx_nn_HBS->
KT08_InkassoPosition->
KT06_KT08_BL->
KT06_Belegposition_KT01_BW->
KT06_BelegPosition_InEx_nn_WBS.BetragInEuro
(am Abgabedatum und) mit gleichem C_Waehrung und Betrag in KT06_BelegPosition_InEx_nn_WBS wie in KT08_InkassoPos_InEx_nn_HBS

Datenschutz $-
	';

COMMENT ON COLUMN F_InkassoPosition.Anzahl_InkassoPosition IS
'.. ist die Anzahl der Inkassopositionen.

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.ID_Abgabedatum IS
'aus KT08_InkassoPos_InEx_nn_HBS.Abgabedatum

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.ID_Abgabestatus IS
'aus KT08_InkassoPos_InEx_nn_HBS.C_Abgabestatus

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.ID_InExkassoObjektArt IS
'aus KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT06_KT08_BL->KT06_Belegposition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InkassoObjektArt

oder über KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT05_KT08_BBL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InkassoObjektArt, 

falls vorhanden, sonst :=Dummy 

Datenschutz $-

';

COMMENT ON COLUMN F_InkassoPosition.ID_InExkassoObjektTyp IS
'aus KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT06_KT08_BL->KT06_Belegposition_KT01_BW->KT05_KT06_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InkassoObjektTyp

oder über KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT05_KT08_BBL->KT05_InExkassoObjekt_BH->KT05_InExkassoObjekt_InEx_nn_HBS.C_InkassoObjektTyp, 

falls vorhanden, sonst :=Dummy 

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.ID_Vertragskontotyp IS
'aus KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT06_KT08_BL->KT06_Belegposition_KT01_BW->KT02_KT06_BL->KT02_Vertragskonto_BH->KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp 

oder abgekürzt aus  KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT02_KT08_BBL->KT02_Vertragskonto_BH->KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.SK_Forderung_Verbindlichkeit IS
'aus KT08_InkassoPos_InEx_nn_HBS->
	KT08_InkassoPosition->
	KT06_KT08_BL->
	KT06_Belegposition_KT01_BW.FK_KT01_Beleg

oder abgekürzt aus KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT01_KT08_BBL.FK_KT01_Beleg

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.SK_InExkassoObjekt IS
'aus KT08_InkassoPos_InEx_nn_HBS->
	KT08_InkassoPosition->
	KT06_KT08_BL->
	KT06_Belegposition_KT01_BW->
	KT05_KT06_BL.FK_KT05_InExkassoObjekt

oder abgekürzt aus  KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT05_KT08_BBL.FK_KT05_InExkassoObjekt, 

falls vorhanden, sonst :=Dummy 

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.SK_InkassoPosition IS
'aus KT08_InkassoPos_InEx_nn_HBS.FK_KT08_InkassoPosition
';

COMMENT ON COLUMN F_InkassoPosition.SK_Inkassobuero IS
'aus KT08_InkassoPos_InEx_nn_HBS->
	KT08_InkassoPosition->
	PA01_PA02_KT08_BL.FK_PA01_Partner (mit Rolle=Inkassobüro), 
falls vorhanden, sonst :=Dummy 

Datenschutz $-
';

COMMENT ON COLUMN F_InkassoPosition.SK_Vertragskonto IS
'aus KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT06_KT08_BL->KT06_Belegposition_KT01_BW->KT02_KT06_BL.FK_KT02_Vertragskonto 

oder abgekürzt aus  KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->KT02_KT08_BBL.FK_KT02_Vertragskonto 

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_InkassoPosition.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.Anzahl_Ueberw_BearbSchritte IS
'... ist die Anzahl der bisherigen Bearbeitungsschritte im Rahmen der Überwachungsmaßnahme

aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.UeberwBearbeitungsschritt
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.Anzahl_Ueberw_ProBelPos IS
'.. ist die Anzahl der Überwachungsmassnahmen pro Belegposition

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Abrechnungszeit_bis IS
'... gibt zusammen mit Abrechnungszeit_von den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig.

aus KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_bis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Abrechnungszeit_von IS
'... gibt zusammen mit Abrechnungszeit_bis den Abrechnungszeitraum an, auf den sich der Beleg bezieht. Dieser ist für Mahnungsfristen wichtig.

aus KT06_BelegPosition_InEx_03_WBS.Abrechnungszeit_von

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleich_Belegart IS
'aus KT04_KT06_InEx_nn_LBS->
	KT04_KT06_BL->
	KT06_BW->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH->
	KT01_Beleg_InEx_..._HBS.C_Belegart, falls vorhanden 
sonst Dummy

Werteliste:
00 	Migration
01	Nacharbeit Migration
10 	Forderung
11 	Gebühr
12 	Zinsen
13 	Rücknahme Niederschl
14 	Buchung aus GM
15 	Ratenplan
16 	Buchung f Stundung
17 	PC Miete
18 	Ford. Vorwegabzug
19 	ZfA Zulagenforderung
20 	Eingangszahlung
21 	Ausgangszahlung
22 	Rückläufer
23 	Scheckeinlösung
24 	Bareinzahlung RD
25 	Leistungseinbehalt K
26 	Umwandlung Leben
27 	Schaden Makler RD27
28 	Ausgl. Vorwegabzug
29 	ZfA Eingangszahlung
30 	Stornierung
31 	Scheckstorno Altsys.
32 	Klärungsbuchung
33	Kostenforderung
34	EingZahl KapÜber RI
35	Ford/Verb KapÜber RI
40 	BUZ-Leistung
41 	Leistungseinbehalt
50 	Manuelle Buchung
51 	Postentransfer oder BZ-Wechsel
52 	Umbuchung anderer FB
60 	Masch. Ausgleichen
61 	Ausgleichsbuchung
70 	Ford./Verb. Schaden
71 	Umbuchung Schaden
75 	Ford./Verb. LL
76 	Sto. Ford./Verb. LL
77 	Verrechnung LL
80 	Forderungsberichtig.
81 	Umbuchung (verz.Erl)
82 	Man. Ausbuchung  
83 	Umgliederung
84 	Ausbuchung m. Steuer 
85 	Ausbuchung o. Steuer 
86 	Umbuchung
87 	Vertragsumsetzung
90 	Zulagenforderung FPT
91 	Eingangszahlung FPT
99 	Bündelung v. Posten

Datenschutz $-
';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleich_angelegt_am IS
'... gibt das  tatsächliche physische Datum an, zu der der Ausgleichsbeleg in der Quelldatenbank angelegt worden ist, falls die überwachte Belegposition ausgeglichen ist.

aus Datum-Anteil von
KT04_KT06_InEx_nn_LBS ->
KT04_KT06_BL ->
KT06_Belegposition_KT01_BW ->
KT01_KT06_Ausgleich_BL ->
KT01_Beleg_BH ->
KT01_Beleg_InEx_nn_HBS.angelegt_am, falls vorhanden,
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleichdurchf_Bereich IS
'aus  der 3-ten und 4-ten Stelle von 
aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BW->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_von_A,,
falls vorhanden, eine zweistellige Nummer und angelegt_von_A einen Arbeitsanteil beschreibt,
sonst Dummy

Bea:
Org-Bereiche sind hier für RD''en z.B.
- KKC	KundenKompetenzCenter (42)
- L		Leben (31)
- RS		Rechtsschutz (99)

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleichdurchf_MA_System IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BW->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_von_A,
falls vorhanden und eine Arbeitsanteil oder ein System beschreibt,
sonst Dummy

Werte:
- Mitarbeiter (kurz: MA), falls ''angelegt_von_A'' ein Arbeitsanteil
- System (kurz: SYS), fall ''angelegt_von_A'' kein Arbeitsanteil

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleichdurchfuehrung_RD IS
'aus  den ersten beiden Stellen von 
aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BW->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.angelegt_von_A,
falls vorhanden und eine RD oder die Zentrale beschreibt,
sonst Dummy

Bea: Dies kann (und wird) von der vertragskontoführenden RD abweichen.  In PARIS enthält PA01_228.EM_ALT die VKONT und PA01_228.RDNR die vertragskontoführende RD-Nummer.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleichsgrund IS
'Ausgleichsgrund aus der überwachten Belegpositionen, falls diese ausgeglichen ist. 
aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW->KT06_BelPos_Ausl_InEx_nn_WBS.C_Ausgleichsgrund, falls vorhanden 
sonst Dummy

Werteliste:
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

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ausgleichsstatus IS
'Ausgleichsstatus aus der überwachten Belegposition. 
Aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW->KT06_BelPos_Ausl_InEx_nn_WBS.C_Ausgleichsstatus

gültige Werte:
9           ausgeglichen
NULL   nicht ausgeglichen

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Buchungskreis IS
'aus KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Eingangszahlweg_vorges IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->KT04_KT02_BL-> KT02_Vertragskonto_BH->KT02_Partner_VK_InEx_02_HBS.C_Eingangszahlweg
dabei ist das Vertragskonto zum Nettofälligkeitdatum relevant.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_HauptTeilvorgang IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_nn_WBS.C_Teilvorgang

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_InEx_Produktgruppe IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW->KT06_BelegPosition_InEx_nn_WBS.C_InEx_Produktgruppe, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_InExkassoObjektArt IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH ->KT04_KT05_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektArt, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_InExkassoObjektTyp IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH ->KT04_KT05_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_InkassoObjektTyp, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_RD_vertragsfuehrend IS
'aus  KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW->KT06_BelegPosition_InEx_nn_WBS.C_RD_vertragsfuehrend
falls vorhanden,
sonst Dummy

Bea: Dies ist die vertragsführende RD im Bestandbeziehungsegment aus PARIS.  

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_StatusInExkassoObjekt IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->KT04_KT05_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_StatusInkassoObjekt, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_UeberwLaufdatum_initial IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.DatumUeberwachungslauf
mit minimalem ...->(*)KT04_Ueberwachung_InEx_nn_HBM.UeberwBearbeitungsschritt
unter allen mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis (unabhängig vom Stichtag)

Bea: Dieses Attribut ist stets unverändert.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_UeberwMassnahme_Beginn IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.Ueberwachungsmasssnahme_von
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_UeberwMassnahme_Ende IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.Ueberwachungsmassnahme_bis


Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_UeberwVerfahrenStatus IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_UeberwVerfahrenStatus
mit  KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

... gibt den Status der Überwachungsmaßnahme wieder, insbesondere Informationen über die Art der Beendung.

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

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ueberwachungsdruckdatum IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.Druckdatum
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ueberwachungslaufdatum IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.DatumUeberwachungslauf
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ueberwachungsstufe IS
'... ist die aktuell erreichte Überwachungsstufe innerhalb der Überwachungsmaßnahme.

aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Ueberwachungsstufe_B
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Bea: der Schlüssel für die Mahnstufe besteht in FS-CD aus dem Schlüssel des "Mahnverfahrens" im Sinne von FS-CD und einer laufenden Nummer innerhalb des "Mahnverfahrens". Ist im Attribut C_Ueberwachungsstufe_B zusammengefasst.

Datenschutz $B';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Ueberwachungsstufe_initial IS
'... ist die initiale Überwachungsstufe innerhalb der Überwachungsmaßnahme.

aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Ueberwachungsstufe_B
mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis
und  mit minimalem ...->(*)KT04_Ueberwachung_InEx_nn_HBM.UeberwBearbeitungsschritt
unter allen mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis (unabhängig vom Stichtag)
[d.h. KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.DatumUeberwachungslauf =  this.IDUeberwLaufdatum_initial]

Bea: der Schlüssel für die Mahnstufe besteht in FS-CD aus dem Schlüssel des "Mahnverfahrens" im Sinne von FS-CD und einer laufenden Nummer innerhalb des "Mahnverfahrens". Ist im Attribut C_Ueberwachungsstufe_B zusammengefasst.

Datenschutz $B';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Vertragskontotyp IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH ->KT02_KT04_BL->KT02_Vertragskonto_BH->KT02_Vertragskonto_InEx_nn_HBS.C_Vertragskontotyp 

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_Zahlweise_vertraglich IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->KT04_KT05_BL->KT05_InExkassoObjekt_BH->KT05_InExkassoObj_InEx_nn_HBS.C_Zahlweise_vertraglich, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.ID_letzter_Ruecklaeufergrund IS
'... ist der Rückläufergrund des Rückläufers beim letzten Einzugsversuch der überwachten Forderungsbelegposition, falls es einen solchen Rückläufer gab (ohne simulierte Läufe), 
sonst Dummy.

aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BelegPosition_KT01_BW->(*)KT06_KT10_Regulierung_BL->KT10_ZahllaufZahlung_BH->KT01_KT10_Zahllauf_AusglBel_BL->KT01_Beleg_BH->(Zahlung) KT01_KT01_Ruecklaeufer_BL(Rückläufer)->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_RuecklaeuferGrund
(ohne simulierte Läufe)

mit maximalem KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BelegPosition_KT01_BW->(*)KT06_KT10_Regulierung_BL->KT06_KT10_Regul_InEx_01_LBS.Erfassung_Gueltig_Beginn,
(ohne simulierte Läufe)

falls ein solche Rückläufergrund vorhanden ist,
sonst Dummy.

Werteliste:
in FSCD :
seit SEPA
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

"alt" (vor-SEPA):
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

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Ford_Verb_Position IS
'aus KT04_KT06_InEx_nn_LBS->
	KT04_KT06_BL.FK_KT06_Belegposition

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Forderung_Verbindlichkeit IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW.FK_KT01_Beleg

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_InExkassoObjekt IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH ->KT04_KT05_BL.FK_KT05_InExkassoObjekt, falls vorhanden 
sonst Dummy

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Partner IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->PA01_PA02_KT04_InExPartner_BL.FK_PA01_Partner (mit Rolle=InExkassopartner), falls vorhanden 
sonst Dummy

Bea: Falls >PA01_PA02_KT04_InExPartner_BL.FK_PA01_Partner (mit Rolle=InExkassopartner) nicht ins DWH geladen wird, gibt es den alternativen Pfad:
aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_BW->KT02_KT04_BL->KT02_BH->PA01_PA02_KT02_BL.FK_PA01_Partner (mit Rolle=InExkassopartner), falls vorhanden 
sonst Dummy


Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Ueberw_ProBelPos IS
'aus KT04_KT06_InEx_nn_LBS.FK_KT04_KT06

';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Ueberwachung IS
'aus KT04_KT06_InEx_nn_LBS->
	KT04_KT06_BL.FK_KT04_Ueberwachung

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Ueberwachungslauf IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.DatumUeberwachungslauf und ...HBM.KennungUeberwachungslauf
mit  KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Ueberwachungslauf_initial IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.DatumUeberwachungslauf und ...HBM.KennungUeberwachungslauf
mit minimalem ...->(*)KT04_Ueberwachung_InEx_nn_HBM.UeberwBearbeitungsschritt
unter allen mit KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH->(*)KT04_Ueberwachung_InEx_nn_HBM.C_Buchungskreis = KT04_KT06_InEx_nn_LBS.C_Buchungskreis (unabhängig vom Stichtag)

Bea: Dieses Attribut ist stets unverändert.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.SK_Vertragskonto IS
'aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT04_Ueberwachung_BH ->KT02_KT04_BL.FK_KT02_Vertragskonto 

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN F_Ueberw_ProBelPos.UeberwachungsbetragInEuro IS
'... ist der Überwachungsbetrag in Euro.

aus KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_Belegposition_KT01_BW->KT06_BelegPosition_InEx_nn_WBS.BetragInEuro 
zum Überwachungsdruckdatum für das Überwachungslaufdatum
und  mit gleichem C_Waehrung und Überwachungsbetrag in KT06_BelegPosition_InEx_nn_WBS wie in KT04_KT06_InEx_nn_LBS


Datenschutz $-
	';

COMMENT ON COLUMN F_Ueberw_ProBelPos.hat_Ausgleich_durch_ZahlEing IS
'... beschreibt, ob der überwachte Betrag durch einen Zahlungseingang ausgeglichen wurde.

Dabei werden zwei Möglichkeiten beachtet:

1. Die überwachte Belegposition ist durch eine Zahlungseingangsbeleg ausgeglichen (gleichbedeutend mit ID_Ausgleich_Belegart = ''Zahlungseingang'' (=20)
d.h.: KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BW->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart =  ''Zahlungseingang'' (=20)

2. Die überwachte Belegposition ist durch einen Ausgleichsbeleg ausgeglichen und es gibt eine Zahlungseingangsbelegposition mit Betrag mindestens 0,01 Euro, der von diesem Ausgleichbeleg ebenfalls ausgeglichen wird.
d.h.:  Es gibt eine Belegposition ZaPo mit den beiden Bedingungen a) und b):
a) ZaPo->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart = ''Zahlungseingang'' (=20) und
b) ZaPo->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH = KT04_KT06_InEx_nn_LBS->KT04_KT06_BL->KT06_BW->KT01_KT06_Ausgleich_BL->KT01_Beleg_BH

:= ja, genau dann, wenn mindestens einer der beiden Fälle erfüllt ist,
:= nein, sonst

Datenschutz $-';

COMMENT ON COLUMN Releasestand.Deploymentdatum IS
'Datum des Deployments, Defaultwert ist sysdate.';

COMMENT ON COLUMN Releasestand.Modelldatum IS
'Datum der Erstellung der DDL zum Releasestand aus dem Datenmodell.
Das entsprechende Datum wird hier als Defaultwert in der DDL hinterlegt (durch create table bzw. alter table)
';

COMMENT ON COLUMN Releasestand.Releasebezeichnung IS
'Bezeichnung des Release';

COMMENT ON TABLE DET_Ford_Verb IS
'aus KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH mit KT06_KT10_Regulierung_BL->KT10_BH->KT10_InEx_01_HBS.Laufkennung=LSV* (ohne simulierte Läufe) 

und aus KT06_BelegPosition_KT01_BW_KT01_BH mit  KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart = Forderung / Verbindlichkeit,
d.h. C_Belegart =

10	Forderung
17	PC Miete
18 	Ford. Vorwegabzug
19	ZfA Zulagenforderung
25	Leistungseinbehalt K
26	Umwandlung Leben
27	Schaden Makler RD27
35	Ford/Verb KapÜber RI
40	BUZ-Leistung
41	Leistungseinbehalt
70	Ford./Verb. Schaden
75	Ford./Verb. LL
76	Sto. Ford./Verb. LL
77	Verrechnung LL
90	Zulagenforderung FPT

und zusätzlich für Prognosen aus KT06_BePoLaufProg_InEx_01_WBM->KT06_BW->KT01_BH 
oder aus  KT06_BePoLaufProg_InEx_01_WBM.Mandant~...BelegNr_A





';

COMMENT ON TABLE DET_Ford_Verb_Pos IS
'aus KT06_KT10_Regulierung_BL mit KT06_KT10_Regulierung_BL->KT10_BH->KT10_InEx_01_HBS.Laufkennung=LSV* (ohne simulierte Läufe)

und aus KT06_BelegPosition_KT01_BW mit  ...->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart = Forderung / Verbindlichkeit,
d.h. C_Belegart =

10	Forderung
17	PC Miete
18 	Ford. Vorwegabzug
19	ZfA Zulagenforderung
25	Leistungseinbehalt K
26	Umwandlung Leben
27	Schaden Makler RD27
35	Ford/Verb KapÜber RI
40	BUZ-Leistung
41	Leistungseinbehalt
70	Ford./Verb. Schaden
75	Ford./Verb. LL
76	Sto. Ford./Verb. LL
77	Verrechnung LL
90	Zulagenforderung FPT

und zusätzlich für Prognosen aus KT06_BePoLaufProg_InEx_01_WBM.FK_KT06_BelegPosition

';

COMMENT ON TABLE DET_InkassoPosition IS
'aus KT08_InkassoPos_InEx_nn_HBS';

COMMENT ON TABLE DET_Inkassobuero IS
'aus PA01_Partner..._Par_01_HBS 
mit KT08_InkassoPos_InEx_nn_HBS->KT08_InkassoPosition->PA01_PA02_KT08_BL.FK_PA01_Partner (mit Rolle=Inkassobüro) = PA01_Partner..._Par_01_HBS.FK_PA01_Partner';

COMMENT ON TABLE DET_Ladelauf IS
'Protokolldatei für die Ladeläufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_Last_Load IS
'Protokolldatei für die Ladeläufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_Ueberwachung IS
'aus KT04_Ueberwachung_InEx_nn_HBM (ohne Unterscheidung nach Buchungskreis)';

COMMENT ON TABLE DET_Zahlung IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

';

COMMENT ON TABLE DET_Zahlungsposition IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

Für die Ermittlung der zugehörigen Zahlungspositionen gibt es folgende Fälle, die im angehängten Dokument detailliert beschrieben werden:

1. Fall "echte" Belegpositionen
2a. Fall "simulierte" Belegpositionen 
2b. Fall "Summen-simulierte" Belegposition 
3. Fall "ersetzte" Belegposition 

Bea. zu "Änderung": Jede Änderungen oder Neuerstellung im Business an einer Zahlungsposition zum Beleg mit SK_Zahlung kann eine Änderung bei allen(!) Zahlungspositionen zu SK_Zahlung in diesem Fakt  bewirken.
Insbesondere gilt dies bei:
- eine neue Belegposition (KT06_Belegposition_KT01_BW) am Beleg mit SK_Zahlung
- eine Änderung im Ausgleich in einer vorhandenen Belegposition zu SK_Zahlung';

COMMENT ON TABLE DIM_Betragsart IS
'Werte: Erstbeitrag, Folgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'', ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

Sonst: kein Beitrag
				
';

COMMENT ON TABLE DIM_Buchungskreis IS
'Die Dimension Buchungskreis gibt es im Fakt DIZ_Zahlungsposition nicht, weil DWH sie für simulierte Positionen nicht füllen kann. Grund: der Buchungkreis zur Zahlung stammt aus den Zahlstapel,  aus dem DWH das Attribut Buchungskreis nicht lädt,.';

COMMENT ON TABLE DIM_Datum IS
'Allgemeine Dimension der Zeit, für die ausgehend vom Datum alle weiteren Eigenschaften ermittelt werden können. Sollte allgemein für Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

COMMENT ON TABLE DIM_FoVe_Klassifiktn IS
'... ist die Klassifikation, ob für einen Beleg abgängig vom Vorzeichen eines Betrages eine Forderung oder Verbindlichkeit vorliegt.

Betrag>0 -->Forderung
Betrag<0 --> Verbindlichkeit
Betrag=0 -->Null-Beleg
';

COMMENT ON TABLE DIM_FordAusfManMasch IS
'... beschreibt ob ein Forderungsausfall manuell oder maschinell erzeugt wurde.

aus KT01_Beleg_InEx_02_HBS.C_Belegart

Bea: Dies ist nicht der Grund des Forderungsausfalls. Dieser ist in KT01_Beleg_InEx_02_HBS.C_AusbuchungsGrund_B enthalten.';

COMMENT ON TABLE DIM_Halbjahr IS
'Dimensionstabelle für Halbjahre, die für alle Halbjahresangaben genutzt werden sollte.';

COMMENT ON TABLE DIM_JNKENNZ IS
'Lookup Tabelle für MicroStrategy

Diese Dimension dient der Erstellung von Auswahl-Möglichkeiten der Eingabe in MStr, ohne Selects über große Tabellen führen zu müssen. Auf die Anbindung durch Fremdschlüssel wird im Modell verzichtet.

Die Befüllung wird durch Skript im Rahmen der ETL-Prozesse erledigt, eine Vorgabe in den Transformationsbeschreibungen gibt es nicht.';

COMMENT ON TABLE DIM_Jahr IS
'Dimensionstabelle für Jahre, die für alle Jahresangaben genutzt werden sollte, z.B. Geschäftsjahre, Anfalljahre, Ereignisjahre, Meldejahre etc.';

COMMENT ON TABLE DIM_Monat IS
'Dimensionstabelle für Monate, die für alle Monatsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_Quartal IS
'Dimensionstabelle für Quartale, die für alle Quartalsgaben genutzt werden sollte';

COMMENT ON TABLE DIM_RD_Ebene1 IS
'Dimension der 1.  Hierarchie-Ebene der Regionaldirektionen ';

COMMENT ON TABLE DIM_RD_Ebene2 IS
'Dimension der 2.  Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland Nord, -Ost, -Süd, West)';

COMMENT ON TABLE DIM_RD_Ebene3 IS
'Dimension der 3. Hierarchie-Ebene der Regionaldirektionen (z.B. Deutschland)';

COMMENT ON TABLE DIM_Regelbtg_Klasse IS
'... dient zur Klassifikation von Regelbeiträgen.';

COMMENT ON TABLE DIM_UebStufenKlasse IS
'... ist der Typ der Überwachnungsstufe.

Die Werteliste ist im referenzierten Dokument enthalten (Werteliste_Ueberwachung.xlsx).';

COMMENT ON TABLE DIM_UeberwStufe IS
'... ist die Überwachnungsstufe, der eine Überwachungsmaßnahme zugeordnet sein kann.

Die Werteliste ist im referenzierten Dokument enthalten (Werteliste_Ueberwachung.xlsx).
';

COMMENT ON TABLE DIM_UeberwStufenTyp IS
'... ist der Typ der Überwachnungsstufe.

Die Werteliste ist im referenzierten Dokument enthalten (Werteliste_Ueberwachung.xlsx).';

COMMENT ON TABLE DIM_UeberwVerfahren IS
'... ist das Überwachungsverfahren zur Überwachnungsstufe.

Die Werteliste ist im referenzierten Dokument enthalten (Werteliste_Ueberwachung.xlsx).';

COMMENT ON TABLE DIM_Woche IS
'Dimensionstabelle für Wochen, die für alle Wochengaben genutzt werden sollte';

COMMENT ON TABLE DIM_Zahlart IS
'... bestimmt dasjenige Verfahren des Zahlungsverkehrs, über das eine Zahlung die DEVK erreicht oder verlässt. Bspw. LSV oder Überweisung.';

COMMENT ON TABLE F_Direktzahlungspos IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

Für die Ermittlung der zugehörigen Zahlungspositionen gibt es folgende Fälle, die im angehängten Dokument detailliert beschrieben werden:

1a. Fall "echte" Belegpositionen 
1b. Fall "aufgefüllte echte" Belegpositionen
2a. Fall "simulierte" Belegpositionen 
2b. Fall "Summen-simulierte" Belegposition 

Bea. zu "Änderung": Jede Änderungen oder Neuerstellung im Business an einer Zahlungsposition zum Beleg mit SK_Zahlung kann eine Änderung bei allen(!) Zahlungspositionen zu SK_Zahlung in diesem Fakt  bewirken.
Insbesondere gilt dies bei:
- eine neue Belegposition (KT06_Belegposition_KT01_BW) am Beleg mit SK_Zahlung
- eine Änderung im Ausgleich in einer vorhandenen Belegposition zu SK_Zahlung


';

COMMENT ON TABLE F_FoVePos_ProLauf IS
'aus KT06_KT10_Regulierung_BL mit KT06_KT10_Regulierung_BL->KT10_BH->KT10_InEx_01_HBS.Laufkennung=LSV* (ohne simulierte Läufe)

Überlegung: Um LSV-Läufe zeitnah (am Morgen des Lauftages) auswerten zu können, wird überlegt, ob kurz vorher (z.B. am Tag vorher) ein spezieller Simulationslauf durchgeführt wird (:= Prognoselauf). Dieser ist zwar nicht 100% identisch mit dem nachfolgenden LSV-Lauf, aber diese Abweichung kann vermeintlich in Kauf genommen werden.
ToDo''s
- spezielle Kennung für Prognosenläufe festlegen (z.B. PrognoseLSV*)
- zusätzliches Attribut "ist_Prognose" in Business (zu KT10_BH und KT06_KT10_Regulierung_BL) und in diesem Fakt
- für vorherigen LSV-Lauf (SK... und ...datum) nur "echte" LSV-Läufe beachten
- für "Anzahl_Einzüge" nur "echte" LSV-Läufe betrachten 
- für Ueberw_ProBelPos.ID_letzter_Ruecklaeufergrund nur "echte" LSV-Läufe betrachten








';

COMMENT ON TABLE F_FoVePosition IS
'Direkt ohne Beachtung eines Einzugs aus KT06_BelegPosition_KT01_BW abhängig von
- Belegart (s.u.) oder
- Hauptvorgang (s.u.)

Bea:  Die Mengen der Belegpositionen, die den Kriterien für unterschiedliche Attribute genügen, sind nicht disjunkt und nicht umfassend und nicht enthaltend

Hauptvorgänge: Die überwachungsrelevanten Belegpositionen haben einen Hauptvorgang (KT06_BelegPosition_KT01_BW->KT06_Belegposition_KT01_InEx_nn_WBS.C_Hauptvorgang)
aus: 1000, 1010, 1020, 1030, 1040, 1050, 1060, 1070, 6200, 6300, 6500, 6600

Belegarten: Für LSV005 genüg(t)en die KT06_BelegPosition_KT01_BW  mit ...->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart = Forderung / Verbindlichkeit, d.h
C_Belegart =
10	Forderung
17	PC-Miete
18	Ford. Vorwegabzug
19	ZfA Zulagenforderung
25	Leistungseinbehalt K
26	Umwandlung Leben
27	Schaden Makler RD27
35	Ford/Verb KapÜber RI
40	BUZ-Leistung
41	Leistungseinbehalt
70	Ford./Verb. Schaden
75	Ford./Verb. LL
76	Sto. Ford./Verb. LL
77	Verrechnung LL
90	Zulagenforderung FPT








';

COMMENT ON TABLE F_InExObjekt IS
'Jedes gültige In ExkassoObjekt (unabhängig von einem LSV-Lauf).

aus KT05_InExkassoObj_InEx_nn_HBS  

Bea: Sollte es notwendig sein, auch für jeden LSV-Lauf jedes gültige InExkassoObjekt auszuwerten, das zu einem Vertragskonto mit mindestens einem InExkassoObjekt gehört, das beim zugehörigen LSV-Lauf beteiligt ist, 
so ist dies über folgenden Pfad feststellbar:
KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT05_KT06_BL-> KT05_InExkassoObjekt_BH->KT02_KT05__BL->KT02_Vertragskonto_BH->(*)KT02_KT06_BL->KT05_InExkassoObjekt_BH

Der dann notwendige Fakt unterscheidet sich vom vorliegenden  nur durch zusätzliche Attribute zum LSV-Lauf (Laufdatum und Laufkennung zu KT06_KT10_Regulierung_BL-> KT10_ZahllaufZahlung_BH).';

COMMENT ON TABLE F_InkassoPosition IS
'aus KT08_InkassoPos_InEx_nn_HBS
 
Bea: Dieser Fakt stellt Inkassopositionen dar. Inkassierungsmaßnahmen ohne Inkassoposition sind möglich (durch Rücknahmen), aber hier nicht enthalten.';

COMMENT ON TABLE F_Ueberw_ProBelPos IS
'aus KT04_KT06_InEx_nn_LBS
 
Bea: Dieser Fakt stellt die Informationen zur Überwachung als Ergebnis eines Überwachungslauf dar. Falls das Business zu einem Attribut in diesem Fakt zwischen zwei Überwachungsläufen einen neuen Wert bekommt (z.B. zu ID_Ausgleichsstatus), bleibt es in diesem Fakt unverändert.';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einführung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgeführt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

