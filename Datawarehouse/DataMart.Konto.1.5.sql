--<ScriptOptions statementTerminator=";"/>
-- Version 17626

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

CREATE TABLE DET_LSV_Lauf (
		SK_LSV_Lauf VARCHAR2(64 CHAR) NOT NULL,
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
		POB_A VARCHAR2(64 CHAR) NOT NULL
		--POB_PZ_A VARCHAR2(64 CHAR) NOT NULL
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
		InEx_Produktgruppe_kurz VARCHAR2(24 CHAR) NOT NULL,
		InE_Produktgruppe VARCHAR2(64 CHAR) NOT NULL,
		InEx_Produktgruppe_lang VARCHAR2(500 CHAR) NOT NULL,
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

CREATE TABLE F_Direktzahlungspos (
		SK_DIZ_Zahlungsposition VARCHAR2(64 CHAR) NOT NULL,
		TA_Ladedatum DATE NOT NULL,
		TA_Lade_ID NUMBER(28 , 0) NOT NULL,
		TA_Aenderungsdatum DATE NOT NULL,
		TA_Aenderungs_ID NUMBER(28 , 0),
		Stichtag_Ende DATE NOT NULL,
		TA_Ersatz_ID NUMBER(28 , 0),
		Stichtag_Beginn DATE NOT NULL,
		TA_Ersatzdatum DATE NOT NULL,
		ID_Zahlungsdatum NUMBER(28 , 0) NOT NULL,
		SK_Zahlung VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
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
		ID_Datum_vorheriger_LSV_Lauf NUMBER(28 , 0) NOT NULL,
		ID_LSV_Laufdatum NUMBER(28 , 0) NOT NULL,
		SK_Forderung_Verbindlichkeit VARCHAR2(64 CHAR) NOT NULL,
		SK_Ford_Verb_Position VARCHAR2(64 CHAR) NOT NULL,
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		ID_Ausnahmegrund NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_FoVeKlassifikation_Beleg NUMBER(28 , 0) NOT NULL,
		ID_Ford_Verb_Anlegedatum NUMBER(28 , 0) NOT NULL,
		Ford_Verb_Anlegezeitpunkt DATE NOT NULL,
		Anzahl_FoVe_Positionen NUMBER(10 , 0) NOT NULL,
		ist_LSV_relevant CHAR(1) NOT NULL,
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
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Belegart NUMBER(28 , 0) NOT NULL,
		ID_BelegHerkunft NUMBER(28 , 0) NOT NULL,
		ID_InEx_Produktgruppe NUMBER(28 , 0) NOT NULL,
		ID_HauptTeilvorgang NUMBER(28 , 0) NOT NULL,
		ID_Buchungskreis NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsstatus NUMBER(28 , 0) NOT NULL,
		ID_Ausgleichsgrund NUMBER(28 , 0) NOT NULL,
		ID_Buchungsdatum NUMBER(28 , 0) NOT NULL,
		ID_FoVeKlassifikation_Beleg NUMBER(28 , 0) NOT NULL,
		ID_Ford_Verb_Anlegedatum NUMBER(28 , 0) NOT NULL,
		Ford_Verb_Anlegezeitpunkt DATE NOT NULL,
		Anzahl_FoVe_Positionen NUMBER(10 , 0) NOT NULL,
		ist_LSV_relevant CHAR(1) NOT NULL,
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
		SK_Partner VARCHAR2(64 CHAR) NOT NULL,
		SK_InExkassoObjekt VARCHAR2(64 CHAR) NOT NULL,
		SK_Vertragskonto VARCHAR2(64 CHAR) NOT NULL,
		ID_Eingangszahlweg_vorges NUMBER(28 , 0) NOT NULL,
		ID_Vertragskontotyp NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektArt NUMBER(28 , 0) NOT NULL,
		ID_InExkassoObjektTyp NUMBER(28 , 0) NOT NULL,
		ID_StatusInExkassoObjekt NUMBER(28 , 0) NOT NULL,
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

CREATE TABLE Releasestand (
		Releasebezeichnung VARCHAR2(64 CHAR) NOT NULL,
		Modelldatum DATE DEFAULT to_date( '28.03.2018','DD.MM.YYYY') NOT NULL,
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

ALTER TABLE DET_LSV_Lauf ADD CONSTRAINT DET_LSV_Lauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_LSV_Lauf);

ALTER TABLE DET_Ladelauf ADD CONSTRAINT DET_Ladelauf_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag);

ALTER TABLE DET_Last_Load ADD CONSTRAINT DET_Last_Load_PK PRIMARY KEY
	(WFL);

ALTER TABLE DET_Partner ADD CONSTRAINT DET_Partner_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_Partner);

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

ALTER TABLE DIM_Monat ADD CONSTRAINT DIM_Monat_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Monat);

ALTER TABLE DIM_Quartal ADD CONSTRAINT DIM_Quartal_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Quartal);

ALTER TABLE DIM_Regelbtg_Klasse ADD CONSTRAINT DIM_Regelbeitrag_Klasse_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_Regelbeitrag_Klasse);

ALTER TABLE DIM_StatusInExObj ADD CONSTRAINT DIM_StatusInExkassoObjekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 ID_StatusInExkassoObjekt);

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

ALTER TABLE F_Direktzahlungspos ADD CONSTRAINT F_Direktzahlungsposition_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_DIZ_Zahlungsposition);

ALTER TABLE F_FoVePos_ProLauf ADD CONSTRAINT F_FoVePo_LSV_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_FoVePos_ProLauf);

ALTER TABLE F_FoVePosition ADD CONSTRAINT F_FoVoPo_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_FoVePosition);

ALTER TABLE F_InExObjekt ADD CONSTRAINT F_InExObjekt_PK PRIMARY KEY
	(TA_Ladedatum,
	 Stichtag_Beginn,
	 SK_InExObjekt);

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

COMMENT ON COLUMN DET_LSV_Lauf.Laufdatum IS
'aus KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum';

COMMENT ON COLUMN DET_LSV_Lauf.Laufkennung IS
'aus KT10_ZahllaufZahl_InEx_01_HBS.Laufkennung';

COMMENT ON COLUMN DET_LSV_Lauf.SK_LSV_Lauf IS
'aus KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum~..._HBS.Laufkennung';

COMMENT ON COLUMN DET_LSV_Lauf.Stichtag_Beginn IS
'Erster Stichtag, an dem der Datensatz Gültigkeit hat.
 
Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.Stichtag_Ende IS
'Erster Stichtag, an dem der nächste Datensatz gültig ist, also der vorliegende Datensatz keine Gültigkeit mehr hat.

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Aenderungs_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag als "fachlich nicht mehr gültig" markiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Aenderungsdatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem dieser Satz als "fachlich nicht mehr gültig" markiert wurde. Es entspricht dem ''TA_Ladedatum'' des ersetzenden Satzes, falls ein solcher existiert.
Identifiziert damit eindeutig, wann die Daten aus dem Business Vault extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Ersatz_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Satz rückwirkend korrigiert wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Ersatzdatum IS
'... identifiziert bei korrigierten Sätzen, wann der Datensatz gem. Historisierungskonzept durch einen oder mehrere aktuelle Sätze ersetzt worden ist. Es entspricht dem ''TA_Ladedatum'' der ersetzenden Sätze.

DEFAULT: Highdate

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN DET_LSV_Lauf.TA_Ladedatum IS
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

aus PA01_Partner..._Par_01_HBS.POB_A

Datenschutz $A1';

--COMMENT ON COLUMN DET_Partner.POB_PZ_A IS
--'Partner-Ordnungsbegriff aus PARIS, mit Prüfziffer.

--aus PA01_Partner..._Par_01_HBS.POB_A mit hinzugefügter Prüfziffer

--Datenschutz $A1';

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

Werte: ja/nein/ersetzt (J/N/E)

ALT_________________________________________________________
... hält fest, ob diese Belegposition zu einem Zahlungsbeleg in der Quelle nur implizit vorhanden ist um vom DWH simuliert wurde

Werte: ja/nein';

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

UE uneinheitlich

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

COMMENT ON COLUMN DIM_Betragsart.Betragsart IS
'Kurztext für die Betragsart.

Werte: Erstbeitrag, Forgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'',. ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

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
'Kurztext für den nur zwschen DIZ und LSV-unterscheidenden Eingangszahlweg

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
'Kurzbezeichnung für den nur zwschen DIZ und LSV-unterscheidenden Eingangszahlweg

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
'Langtext  für den nur zwschen DIZ und LSV-unterscheidenden Eingangszahlweg

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

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang
und	KT06_BelegPosition_InEx_02_WBS.C_Teilvorgang
mit "_" getrennt.

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

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.HauptTeilvorgang_kurz IS
'Kurzbezeichnung für den HauptTeilvorgang

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang
und	KT06_BelegPosition_InEx_02_WBS.C_Teilvorgang
mit "_" getrennt.

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

Datenschutz $-';

COMMENT ON COLUMN DIM_HauptTeilvorgang.HauptTeilvorgang_lang IS
'Langtext für den HauptTeilvorgang

aus 	KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang
und	KT06_BelegPosition_InEx_02_WBS.C_Teilvorgang
mit "_" getrennt.

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
1040  0110           Folgebeitrag Leben Erwerbsunf.
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

Beitrag
Schaden
LebenLeistung

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

COMMENT ON COLUMN DIM_InEx_Prod_Grp.InE_Produktgruppe IS
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

COMMENT ON COLUMN DIM_StatusInExObj.StatusInExkassoObjekt IS
'Kurztext für den Status des InExkassoObjekts

aus 	KT05_InExkassoObj_InEx_01_HBS.C_StatusInExkassoObjekt

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

COMMENT ON COLUMN F_Direktzahlungspos.Anzahl_Zahlungspositionen IS
'.. ist die Anzahl der Zahlungspositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.BetragInEuro IS
'... ist der Betrag in Hauswährung (=Euro).

aus KT06_BelegPosition_InEx_02_WBS.BetragInEuro (Fall1) oder (-1)* KT06_BelegPosition_InEx_02_WBS.BetragInEuro bei ausgeglichener Forderungsposition (Fall2)

Datenschutz $-';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Ausgleichsgrund IS
'1.Fall (aus Belegposition zur Zahlung geladen): aus KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund
2.Fall (aus Ausgleichposition zur Zahlung geladen): konstant = direkte Forderungszuordnung, Kurzbezeichnung: DirFord';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Ausgleichsstatus IS
'aus KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus
';

COMMENT ON COLUMN F_Direktzahlungspos.ID_BelegHerkunft IS
'aus KT01_Beleg_InEx_02_HBS.C_BelegHerkunft zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Belegart IS
' aus KT01_Beleg_InEx_02_HBS.C_Belegart zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Eingangszahlweg_vorges IS
'aus KT06_BelegPosition_KT01_BW-> KT02_KT06_BL -> KT02_BH->KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg';

COMMENT ON COLUMN F_Direktzahlungspos.ID_HauptTeilvorgang IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang~....C_Teilvorgang 
oder (bei Ausgleich) konstant = Zahlungseingang, Kurzbezeichnung: ZAHL / EIN ';

COMMENT ON COLUMN F_Direktzahlungspos.ID_InEx_Produktgruppe IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe ';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Zahlung_Anlegedatum IS
' aus Datum-Teil von KT01_Beleg_InEx_02_HBS.angelegt_am zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung';

COMMENT ON COLUMN F_Direktzahlungspos.ID_Zahlungsdatum IS
'aus KT01_Beleg_InEx_02_HBS.Belegdatum zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung';

COMMENT ON COLUMN F_Direktzahlungspos.SK_DIZ_Zahlungsposition IS
'aus KT06_BelegPosition_InEx_02_WBS.FK_KT06_BelegPosition mit KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart = ''20 Eingangszahlung'' (Fall1) oder aus ausgeglichener Forderungsposition (Fall2)';

COMMENT ON COLUMN F_Direktzahlungspos.SK_InExkassoObjekt IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Partner IS
'aus KT06_BH->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Vertragskonto IS
'aus KT06_BelegPosition_KT01_BW-> KT02_KT06_BL -> KT02_Vertragskonto_BH.SK_KT02_Vertragskonto';

COMMENT ON COLUMN F_Direktzahlungspos.SK_Zahlung IS
'aus
	KT06_BelegPosition_InEx_02_WBS (Direktzahlungsposition)->
		KT06_BelegPosition_KT01_BW.FK_KT01_Beleg

oder (bei Ausgleich) über
	KT06_BelegPosition_InEx_02_WBS (Forderungsposition) ->
	KT01_KT06_Ausgleich_BL->
	KT01_Beleg_BH.SK_KT01_Beleg';

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
' aus KT01_Beleg_InEx_02_HBS.angelegt_am zum DIZ-Beleg mit KT01_Beleg_InEx_02_HBS.FK_Beleg = F_DIZ_Zahlungsposition.SK_Zahlung

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Anzahl_Einzuege IS
'=Anzahl (disjunkt KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT10_BH->KT10_ZahllaufZahl_InEx_02_HBS.Laufdatum
	mit (kein Ausnahmegrund)
		 KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT06_KT10_Regul_InEx_02_LBS.C_Postenkennzeichen_B=leer)
	und mit (das aktuelle Laufdatum und zusätzlich nur vorherige Laufdatümer)
		KT06_KT10_Regulierung_BL->KT06_BW->KT01_BH->(*)KT06_BW->KT06_KT10_Regulierung_BL->KT10_BH->KT10_ZahllaufZahl_InEx_02_HBS.Laufdatum 
		<=
		KT06_KT10_Regulierung_BL->KT10_ZahllaufZahl_InEx_02_HBS.Laufdatum

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Anzahl_FoVe_Positionen IS
'.. ist die Anzahl der Belegpositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.BetragInEuro IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW-> KT06_BelegPosition_InEx_02_WBS.BetragInEuro

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.Ford_Verb_Anlegezeitpunkt IS
' aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausgleichsgrund IS
'aus KT06_KT10_Regulierung_BL->KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausgleichsstatus IS
'aus KT06_KT10_Regulierung_BL->KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ausnahmegrund IS
'aus KT06_KT10_Regulierung_BL->KT06_KT10_Regul_InEx_01_LBS.C_Postenkennzeichen_B

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_BelegHerkunft IS
' aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_BelegHerkunft

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Belegart IS
' aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Buchungsdatum IS
'aus  KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.Buchungsdatum

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Buchungskreis IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Datum_vorheriger_LSV_Lauf IS
'falls Forderungsverbindlichkeitsposition schon mal eingezogen wurde, dann aus  KT06_KT10_BL->KT06_BW->vorheriger KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum,
sonst: leer

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Eingangszahlweg_vorges IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT02_KT06_BL-> KT02_Vertragskonto_BH->KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_FoVeKlassifikation_Beleg IS
'... ist die Klassifikation des Gesamtbetrags des zugehörigen Belegs.

aus Vorzeichen der Gesamtbetrag := Summe(KT06_Belegposition_KT01_BW.BetragInEuro) zum Beleg zu SK_Forderung_Verbindlichkeit

Werte:
Gesamtbetrag > 0 -> Forderung
Gesamtbetrag < 0 -> Verbindlichkeit
Gesamtbetrag = 0 -> Null-Beleg
Sonst Dummy

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_Ford_Verb_Anlegedatum IS
' aus Datum-Teil von KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_HauptTeilvorgang IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang~....C_Teilvorgang 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_InEx_Produktgruppe IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.ID_LSV_Laufdatum IS
'aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_FoVePos_ProLauf IS
'aus KT06_KT10_Regulierung_BL.SK_KT06_KT10_Regulierung
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Ford_Verb_Position IS
'aus KT06_KT10_Regulierung_BL.FK_KT06_BelegPosition

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Forderung_Verbindlichkeit IS
'aus  KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW.FK_KT01_Beleg 

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_InExkassoObjekt IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_LSV_Lauf IS
'aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum
und aus  KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufkennung

Datenschutz $-
';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Partner IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

Datenschutz $-';

COMMENT ON COLUMN F_FoVePos_ProLauf.SK_Vertragskonto IS
'aus KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT02_KT06_BL.FK_KT02_Vertragskonto

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

COMMENT ON COLUMN F_FoVePos_ProLauf.ist_LSV_relevant IS
'... hält fest, ob diese Belegposition LSV-relevant ist (ja), oder zwar zur allgemeinen Sollstellung gehört, aber nicht LSV-relevant ist (nein). 
Belegpositionen in Rahmen eines LSV-Laufs (auch mit Ausnahmengrund) sind immer LSV-relevant, daher.

Wert: kostant = ja

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.Anzahl_FoVe_Positionen IS
'.. ist die Anzahl der Belegpositionen

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.BetragInEuro IS
'aus KT06_BelegPosition_KT01_BW-> KT06_BelegPosition_InEx_02_WBS.BetragInEuro';

COMMENT ON COLUMN F_FoVePosition.Ford_Verb_Anlegezeitpunkt IS
'aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.angelegt_am
 
Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichsgrund IS
'aus KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsgrund 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Ausgleichsstatus IS
'aus KT06_BW->KT06_BelPos_Ausgl_InEx_02_WBS.C_Ausgleichsstatus 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_BelegHerkunft IS
' aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_BelegHerkunft

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Belegart IS
' aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.C_Belegart 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Buchungsdatum IS
' aus KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.Buchungsdatum 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Buchungskreis IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_Buchungskreis 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_Eingangszahlweg_vorges IS
'aus KT06_BelegPosition_KT01_BW->KT02_KT06_BL-> KT02_Vertragskonto_BH->KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg 

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
' aus Datum-Teil von KT06_BelegPosition_KT01_BW->KT01_Beleg_BH->KT01_Beleg_InEx_02_HBS.angelegt_am

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_HauptTeilvorgang IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_Hauptvorgang~....C_Teilvorgang

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.ID_InEx_Produktgruppe IS
'aus KT06_BelegPosition_KT01_BW->KT06_BelegPosition_InEx_02_WBS.C_InEx_Produktgruppe 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_FoVePosition IS
'... aus KT06_Belegposition_KT01_BW.SK_KT06_Belegposition';

COMMENT ON COLUMN F_FoVePosition.SK_Ford_Verb_Position IS
'KT06_BelegPosition_KT01_BW.SK_KT06_Belegposition

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_Forderung_Verbindlichkeit IS
'aus KT06_BelegPosition_KT01_BW.FK_KT01_Beleg 

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_InExkassoObjekt IS
'aus KT06_BelegPosition_KT01_BW->KT05_KT06_BL.FK_KT05_InExkassoobjekt

Datenschutz $-';

COMMENT ON COLUMN F_FoVePosition.SK_Partner IS
'aus KT06_BH->PA01_PA02_KT06_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)

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

COMMENT ON COLUMN F_FoVePosition.ist_LSV_relevant IS
'... hält fest, ob diese Belegposition LSV-relevant ist (ja), oder zwar zur allgemeinen Sollstellung gehört, aber nicht LSV-relevant ist (nein). 

Werte: ja/nein (Zuordnung nach Belegarten: siehe Anhang "Belegartrelevanz.xslx")

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Anzahl_InExObjekte IS
'.. ist die Anzahl der InExkasssoObjekte

hier konstant=1

Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.ID_Eingangszahlweg_vorges IS
'aus KT05_BH->KT02_KT05_BL->KT02_BH->KT02_Partner_VK_InEx_01_HBS.C_Eingangszahlweg';

COMMENT ON COLUMN F_InExObjekt.ID_InExObj_Anlegedatum IS
' aus Datum-Teil von  KT05_BH->KT05_InExkassoObj_InEx_01_HBS.angelegt_am';

COMMENT ON COLUMN F_InExObjekt.ID_InExObj_LieferungsArt IS
'aus 	KT05_InExkassoObj_InEx_01_HBS.C_Lieferung_faelligkeitbez

= "1 fälligkeitsbezogen", wenn C_Lieferung_faelligkeitbez=JA
= "0 änderungsbezogen", sonst';

COMMENT ON COLUMN F_InExObjekt.ID_InExkassoObjektArt IS
'aus KT05_BH->KT05_InExkassoObj_InEx_01_HBS.C_InkassoObjektArt';

COMMENT ON COLUMN F_InExObjekt.ID_InExkassoObjektTyp IS
'aus KT05_BH->KT05_InExkassoObj_InEx_01_HBS.C_InkassoObjektTyp';

COMMENT ON COLUMN F_InExObjekt.ID_Regelbeitrag_jhrl_Klasse_VK IS
'derzeit konstant = Dummy

aus der Gesamtsumme der jährlichen Regelbeiträge aller gültigen InExkossoObjekte zu einem Vertragskonto, wenn die Festlegung der Regelbeitragsklasssen stabil ist.,



';

COMMENT ON COLUMN F_InExObjekt.ID_StatusInExkassoObjekt IS
'aus KT05_BK-> KT05_InExkassoObj_InEx_01_HBS.C_StatusInkassoObjekt';

COMMENT ON COLUMN F_InExObjekt.ID_Vertragskontotyp IS
'aus KT05_BH->KT02_KT05_BL->KT02_BH->KT02_Vertragskonto_InEx_01_HBS.C_Vertragskontotyp';

COMMENT ON COLUMN F_InExObjekt.ID_Zahlweise_vertraglich IS
'aus KT05_BH->KT05_InExkassoObj_InEx_01_HBS.C_Zahlweise_vertraglich';

COMMENT ON COLUMN F_InExObjekt.InExObj_Anlegezeitpunkt IS
'aus KT05_BH->KT05_InExkassoObj_InEx_01_HBS.angelegt_am
 
Datenschutz $-';

COMMENT ON COLUMN F_InExObjekt.Regelbeitrag_jaehrlich IS
'Bestimme den jährlichen Regelbeitrag zum InExkassoObjekt KT05_InExkassoObjekt_BH (aus KT03_Zahlplanpos_InEx_01_WBS.BETRAG):

Bestimme zunächst den Regelbeitrag mittels einer der Varianten a) oder b):

a.) Variante Nicht LF-Vertrag (C_InExkassoObjektTyp.C_INEXKASSOOBJEKTTYP<>11 : "10 Lebensversicherung"):
Bestimme KT03_Zahlplanpos_InEx_01_WBS.BETRAG in  KT03_Zahlplanpos_InEx_01_WBS mit C_ARCHIVIERUNG = nein, VORZEITIGBEENDEN = leer oder > Stichtag (Ende) und C_EINMALZAHLUNG = nein mit GUELTIG_VON = Max(GUELTIG_VON mit GUELTIG_VON<=Stichtag) 

b.) Variante LF-Vertrag (C_InExkassoObjektTyp.C_INEXKASSOOBJEKTTYP=11 : "10 Lebensversicherung"): 
Bestimme SUM( KT03_Zahlplanpos_InEx_01_WBS.BETRAG) über alle Datensätze aus KT03_Zahlplanpos_InEx_01_WBS mit C_HAUPTVORGANG IN (1010; 1020;1030;1040;1050;1060;1070) und C_TEILVORGANG IN (0110;0150) und C_EINMALZAHLUNG = ja mit FACHLICHERBEGINN = MAX(FACHLICHERBEGINN) und ANGELEGT_AM= MAX(ANGELEGT_AM) innerhalb der KT03_Zahlplanposition_KT05_BW zu KT05_InExkassoObjekt_BH mit KT05_InExkassoObj_InEx_01_HBS.C_InExkassoObjektArt = Beitrag!

Multipliziere den so gefundenen Regelbeitrag (gem Variante a.) oder b.)) mit einem Faktor für die KT05_InExkassoObjekt_InEx_02.HBS.Zahlweise_vertraglich (12 bei montatlich; 4 bei quartärlich; 2 bei halbjährlich) um den jährlichen Regelbeitrag zu erhalten.

';

COMMENT ON COLUMN F_InExObjekt.SK_InExObjekt IS
'aus KT05_InExkassoObj_InEx_01_HBS.FK_KT05_InExkassoObjekt

Bea: Für ein InExkassoObjekt zu einem LSV-Lauf zusätzlich
aus KT05_BH->KT05_KT06_BL->KT06_BH-> KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufdatum
und aus KT05_BH->KT05_KT06_BL->KT06_BH-> KT06_KT10_BL->KT10_BH->KT10_ZahllaufZahl_InEx_01_HBS.Laufkennung';

COMMENT ON COLUMN F_InExObjekt.SK_InExkassoObjekt IS
'aus KT05_BH.SK_KT05_InExkassoObjekt';

COMMENT ON COLUMN F_InExObjekt.SK_Partner IS
'aus KT05_InExkassoObjekt_BH->PA01_PA02_KT05_BL.FK_PA01_Partner (mit Rolle=InExkassopartner)';

COMMENT ON COLUMN F_InExObjekt.SK_Vertragskonto IS
'aus KT05_BH->KT02_KT05_BL->KT02_BH.SK_KT02_Vertragskonto';

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
';

COMMENT ON TABLE DET_Ladelauf IS
'Protokolldatei für die Ladeläufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_Last_Load IS
'Protokolldatei für die Ladeläufe.

Hier wird dokumentiert, welcher Stichtag zu den einzelnen Lade-Zeitpunkten bearbeitet worden ist.
';

COMMENT ON TABLE DET_Zahlung IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

';

COMMENT ON TABLE DET_Zahlungsposition IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

Die zugehörigen Zahlungspositionen werden wie folgt ermittelt:

1. Fall ("echte" Belegpositionen): ''eigene'' Belegpositionen am Direktzahlungsbeleg (Beispiele: Direktzahlung geschieht nach dem LSV-Ausgleich oder Direktzahlung zu groß): Alle diese über FK_KT01_Beleg verbundenen Belegpositionen laden, außer 
- Belegpositionen, die einen Auslöserbeleg haben (denn der ist nur für die Meldung an das Hauptbuch vorhanden)
- Belegpositionen, die über KT01_KT06_Ausgleich_BL mit einem Beleg mit C_Belegart = "30 Stornierung" verbunden sind
2. Fall ("simulierte" Belegpositionen): ''ausgeglichene'' Belegpositionen zum Direktzahlungsbeleg (Beispiele: Direktzahlung vor LSV-Lauf (d.h. Direktzahlung wird komplett ausgeglichen):  Alle diese über KT01_KT06_Ausgleich_BL verbundenen Belegpositionen (mit umgekehrten Betrag) laden, außer 
- Belegpositionen, die einen Auslöserbeleg haben  (denn der ist nur für die Meldung an das Hauptbuch vorhanden)
- Belegpositionen, die eine Stellvertreterbelegposition sind (denn die ist doppelt vorhanden)
3. Fall ("ersetzte" Belegposition): Wenn eine im Fall 1 gefundene "echte" Belegposition über KT01_KT06_Ausgleich_BL mit einem Ausgleichsbeleg (C_Belegart=60 oder 61) verbunden ist, der (wieder über KT01_KT06_Ausgleich_BL)  nur mit anderen Belegpositionen verbunden ist, die keine Direktzahlungspositionen sind (und davon mindesten mit einer kein Stellvertreter), dann wird die ursprüngliche "echte" Belegpositionen durch "simulierte" Belegpositionen gemäß Fall 2 ersetzt. Nur der Ausgleichsgrund wird anders gesetzt, nämlich: "indirekte Forderungszuordnung" (INDIRFORD).

Bea. zu "echt, Auslöserbeleg": Falls die Beziehung zum auslösenden Beleg (DFKKOP.ASBLG) nicht im Business vorhanden ist, identifiziert für "echte" ausgelöste Direktzahlungsbelegpositionen auch ein Hauptvorgang (DFKKOP.HVORG) = ''2000 Gebühr'' oder = ''2100 Zinsen'' oder = ''2200 Kosten (sowie 6200 und 6300)  eine ausgelöste Direktzahlungsbelegposition. Für andere Zahlungsbelegpositionen (z.B. LSV) gibt es keinen auslösenden Beleg.

Bea. zu "simuliert, Auslöserbeleg": Falls die Beziehung zum auslösenden Beleg (DFKKOP.ASBLG) nicht im Business vorhanden ist, identifiziert für zu simulierende Belegpositionen auch eine selbstausgleichende Belegposition (DFKKOP.OPBEL = DFKKOP.AUGBL) eine ausgelöste Belegposition.

Bea zu "simuliert, Stellvertreterbeleg": Falls die Beziehung von der Stellvertreterbelegposition (DFKKOP.ABWBL) zum Ursprungsbeleg nicht im Business vorhanden ist, identifiziert auch die Belegart (DFKKKO.BLART) = ''15 Ratenplan'' sowie der Haupt-/Teilvorgang = "1400.0100 Ratenbetrag" die Stellvertreterbelegposition.

ALT___________________________________________________________________________________
Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

Die zugehörigen Zahlungspositionen werden wie folgt ermittelt:

1. Fall: Der Direktzahlungsbeleg hat mindestens eine Belegposition (Standardfall: Die DIZ-Zahlung geschieht nach dem LSV-Ausgleich oder DIZ-Zahlung zu groß): Dann alle diese Belegpositionen laden.
2. Fall: Der Direktzahlungsbeleg hat keine Belegposition (Fachlich: DIZ-Zahlung vor LSV-Lauf und DIZ-Zahlung wird komplett ausgeglichen):  Dann alle über KT01_KT06_BL verbundenen Belegpositionen (mit umgekehrten Betrag) laden.';

COMMENT ON TABLE DIM_Betragsart IS
'Werte: Erstbeitrag, Forgebeitrag, Einmalbeitrag, kein Beitrag

Aus Haupt-Teilvorgang abgeleitet:

Hauptvorgang IN ''1000'', ''1010'', ''1020'', ''1030'', ''1040'',. ''1050'', ''1060'', ''1070''
Teilvorgang:
				''0100'' --> Erstbeitrag
				''0110'' --> Folgebeitrag
				''0130'' --> Einmalbeitrag

Sonst: kein Beitrag
				
';

COMMENT ON TABLE DIM_Buchungskreis IS
'Die Dimension Buchungskreis gibt es imFakt DIZ_Zahlungsposition nicht, weil DWH sie für simulierte Positionen nicht füllen kann. Grund: der Buchungkreis zur Zahlung stammt aus den Zahlstapel,  aus dem DWH das Attribut Buchungskreis nicht lädt,.';

COMMENT ON TABLE DIM_Datum IS
'Allgemeine Dimension der Zeit, für die ausgehend vom Datum alle weiteren Eigenschaften ermittelt werden können. Sollte allgemein für Datumsangaben verwendet werden (Schadendatum, Anlagedatum, Datenstand etc.)';

COMMENT ON TABLE DIM_FoVe_Klassifiktn IS
'... ist die Klassifikation, ob für einen Beleg abgängig vom Vorzeichen eines Betrages eine Forderung oder Verbindlichkeit vorliegt.

Betrag>0 -->Forderung
Betrag<0 --> Verbindlichkeit
Betrag=0 -->Null-Beleg
';

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

COMMENT ON TABLE DIM_Regelbtg_Klasse IS
'... dient zur Klassifikation von Regelbeiträgen.';

COMMENT ON TABLE DIM_Woche IS
'Dimensionstabelle für Wochen, die für alle Wochengaben genutzt werden sollte';

COMMENT ON TABLE F_Direktzahlungspos IS
'Aus KT01_Beleg_BH alle Belege mit C_Belegart = 20 und C_Herkunft = 05 
=> damit alle Belege zu Direktzahlungen ermittelt

Die zugehörigen Zahlungspositionen werden wie folgt ermittelt:

1. Fall ("echte" Belegpositionen): ''eigene'' Belegpositionen am Direktzahlungsbeleg (Beispiele: Direktzahlung geschieht nach dem LSV-Ausgleich oder Direktzahlung zu groß): Alle diese über FK_KT01_Beleg verbundenen Belegpositionen laden, außer 
- Belegpositionen, die einen Auslöserbeleg haben (denn der ist nur für die Meldung an das Hauptbuch vorhanden)
- Belegpositionen, die über KT01_KT06_Ausgleich_BL mit einem Beleg mit C_Belegart = "30 Stornierung" verbunden sind
2a. Fall ("simulierte" Belegpositionen): ''ausgeglichene'' Belegpositionen zum Direktzahlungsbeleg (Beispiele: Direktzahlung vor LSV-Lauf (d.h. Direktzahlung wird komplett ausgeglichen):  Alle diese über KT01_KT06_Ausgleich_BL verbundenen Belegpositionen (gemäß Transformation, z.B. mit umgekehrten BetragInEuro) laden, außer 
- Belegpositionen, die einen Auslöserbeleg haben  (denn der ist nur für die Meldung an das Hauptbuch vorhanden)
- Belegpositionen, die eine Stellvertreterbelegposition sind (denn die ist doppelt vorhanden)
Falls mindestens eine der so gefundenen Belegpositionen (ohne die Ausnahmen) eine Verbindlichkeit ist  (BetragInEuro < 0), so wird NICHT pro gefundener Belegposition simuliert (siehe 2b)).
2b. Fall ("Summen-simulierte" Belegposition): Falls mindestens eine der unter 2a) gefundenen Belegpositionen (ohne die Ausnahmen) eine Verbindlichkeit ist  (BetragInEuro < 0), so wird NICHT pro gefundener Belegpositionen simuliert, sondern es wird eine einzige Belegposition erstellt mit:
- BetragInEuro := (-1)*(Summe BetragInEuro aller in 2a) gefundenen Belegpositionen (sowohl Forderungen, als auch Verbindlichkeiten))
- Schlüssel := SIMSUMME~Zahlungsbelegnummer~1
- Attribute, die bei 2a) auf Basis von  Attributen der gefundenen Belegpositionen ermittelt werden, werden genau dann wie bei 2a) aus diesen ermittelt, wenn die basierenden Attribute für alle gefundenen Belegpositionen mit gleichem Vorzeichen beim eigenen BetragInEuro mit der Summe der BeträgeInEuro von allen(!) in 2a) gefundenen Belegpositionen (entweder nur Forderungen oder nur Verbindlichkeiten) den gleichen Wert haben, 
sonst (und bei obiger Summe = 0) := Dummy
- Attribute, die bei 2a) konstant gesetzt werden, werden genauso gesetzt.

Bea: Bei "echten" Zahlungspositionen sind solche mit positivem Betrag möglich (z.B. bei Ausgleichs-Rücknahme mit einer Verbindlichkeit). Auch bei "Summen-simulierten" Zahlungspositionen sind  solche mit positivem Betrag möglich (z.B. Lastschriften, die vom DEVK-Girokonto abgebucht werden (macht aber nur Schaden))

Bea. zu "echt, Auslöserbeleg": Falls die Beziehung zum auslösenden Beleg (DFKKOP.ASBLG) nicht im Business vorhanden ist, identifiziert für "echte" ausgelöste Direktzahlungsbelegpositionen auch ein Hauptvorgang (DFKKOP.HVORG) = ''2000 Gebühr'' oder = ''2100 Zinsen'' oder = ''2200 Kosten (sowie 6200 und 6300)  eine ausgelöste Direktzahlungsbelegposition. Für andere Zahlungsbelegpositionen (z.B. LSV) gibt es keinen auslösenden Beleg.

Bea. zu "simuliert, Auslöserbeleg": Falls die Beziehung zum auslösenden Beleg (DFKKOP.ASBLG) nicht im Business vorhanden ist, identifiziert für zu simulierende Belegpositionen auch eine selbstausgleichende Belegposition (DFKKOP.OPBEL = DFKKOP.AUGBL) eine ausgelöste Belegposition.

Bea zu "simuliert, Stellvertreterbeleg": Falls die Beziehung von der Stellvertreterbelegposition (DFKKOP.ABWBL) zum Ursprungsbeleg nicht im Business vorhanden ist, identifiziert auch die Belegart (DFKKKO.BLART) = ''15 Ratenplan'' sowie der Haupt-/Teilvorgang = "1400.0100 Ratenbetrag" die Stellvertreterbelegposition.

Bea. zu "Änderung": Jede Änderungen oder Neuerstellung im Business an einer Zahlungsposition zum Beleg mit SK_Zahlung kann eine Änderung bei allen(!) Zahlungspositionen zu SK_Zahlung in diesem Fakt  bewirken.
Insbesondere gilt dies bei:
- eine neue Belegposition (KT06_Belegposition_KT01_BW) am Beleg mit SK_Zahlung





';

COMMENT ON TABLE F_FoVePos_ProLauf IS
'aus KT06_KT10_Regulierung_BL mit KT06_KT10_Regulierung_BL->KT10_BH->KT10_InEx_01_HBS.Laufkennung=LSV* (ohne simulierte Läufe)

';

COMMENT ON TABLE F_FoVePosition IS
'Direkt ohne Beachtung eines Einzugs aus KT06_BelegPosition_KT01_BW mit ...->KT01_Beleg_BH->KT01_Beleg_InEx_..._HBS.C_Belegart = Forderung / Verbindlichkeit,

 C_Belegart =
10	Forderung
17	PC-Miete
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
90	Zulagenforderung FPT';

COMMENT ON TABLE F_InExObjekt IS
'Jedes gültige In ExkassoObjekt (unabhängig von einem LSV-Lauf).

Bea: Sollte es notwendig sein, auch für jeden LSV-Lauf jedes gültige InExkassoObjekt auszuwerten, das zu einem Vertragskonto mit mindestens einem InExkassoObjekt gehört, das beim zugehörigen LSV-Lauf beteiligt ist, 
so ist dies über folgenden Pfad feststellbar:
KT06_KT10_Regulierung_BL->KT06_BelegPosition_KT01_BW->KT05_KT06_BL-> KT05_InExkassoObjekt_BH->KT02_KT05__BL->KT02_Vertragskonto_BH->(*)KT02_KT06_BL->KT05_InExkassoObjekt_BH

Der dann notwendige Fakt unterscheidet sich vom vorliegenden  nur durch zusätzliche Attribute zum LSV-Lauf (Laufdatum und Laufkennung zu KT06_KT10_Regulierung_BL-> KT10_ZahllaufZahlung_BH).';

COMMENT ON TABLE Releasestand IS
'Tabelle zur Protokollierung der Einführung von Releases.
Hier soll durch einen Insert, der im Rahmen des Deployment durchgeführt wird, der Name, das Fertigstellungsdatum der DDL und das Deploymentdatum festgehalten werden.';

