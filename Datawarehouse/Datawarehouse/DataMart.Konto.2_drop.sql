--<ScriptOptions statementTerminator=";"/>
-- Version 19297

ALTER TABLE DET_Ford_Verb DROP CONSTRAINT DET_Ford_Verb_PK;

ALTER TABLE DET_Ford_Verb_Pos DROP CONSTRAINT DET_Ford_Verb_Pos_PK;

ALTER TABLE DET_InExkassoObjekt DROP CONSTRAINT DET_InExObj_PK;

ALTER TABLE DET_InExkasso_Lauf DROP CONSTRAINT DET_InExkasso_Lauf_PK;

ALTER TABLE DET_InkassoPosition DROP CONSTRAINT DET_InkassoPosition_PK;

ALTER TABLE DET_Inkassobuero DROP CONSTRAINT DET_Inkassobuero_PK;

ALTER TABLE DET_Ladelauf DROP CONSTRAINT DET_Ladelauf_PK;

ALTER TABLE DET_Last_Load DROP CONSTRAINT DET_Last_Load_PK;

ALTER TABLE DET_Partner DROP CONSTRAINT DET_Partner_PK;

ALTER TABLE DET_Ueberwachung DROP CONSTRAINT DET_Ueberwachung_PK;

ALTER TABLE DET_Vertragskonto DROP CONSTRAINT DET_Vertragskonto_PK;

ALTER TABLE DET_Zahlung DROP CONSTRAINT DET_Zahlung_PK;

ALTER TABLE DET_Zahlungsposition DROP CONSTRAINT DET_Zahlungsposition_PK;

ALTER TABLE DIM_Ausgleichsgrund DROP CONSTRAINT DIM_Ausgleichsgrund_PK;

ALTER TABLE DIM_Ausgleichsstatus DROP CONSTRAINT DIM_Ausgleichsstatus_PK;

ALTER TABLE DIM_Ausnahmegrund DROP CONSTRAINT DIM_Ausnahmegrund_PK;

ALTER TABLE DIM_BelegHerkunft DROP CONSTRAINT DIM_BelegHerkunft_PK;

ALTER TABLE DIM_Belegart DROP CONSTRAINT DIM_Belegart_PK;

ALTER TABLE DIM_Betragsart DROP CONSTRAINT DIM_Betragsart_PK;

ALTER TABLE DIM_Buchungskreis DROP CONSTRAINT DIM_Buchungskreis_PK;

ALTER TABLE DIM_Datum DROP CONSTRAINT DIM_Datum_PK;

ALTER TABLE DIM_Eing_ZWeg_Klasse DROP CONSTRAINT DIM_Eingangszahlweg_Klasse_PK;

ALTER TABLE DIM_Eing_ZWeg_vorges DROP CONSTRAINT DIM_Eingangszahlweg_vorges_PK;

ALTER TABLE DIM_FoVe_Klassifiktn DROP CONSTRAINT DIM_Ford_Verb_Klass_PK;

ALTER TABLE DIM_FordAusfManMasch DROP CONSTRAINT DIM_FordAusfManMasch_PK;

ALTER TABLE DIM_Halbjahr DROP CONSTRAINT DIM_Halbjahr_PK;

ALTER TABLE DIM_HauptTeilvorgang DROP CONSTRAINT DIM_HauptTeilvorgang_PK;

ALTER TABLE DIM_Hauptvorgang DROP CONSTRAINT DIM_Hauptvorgang_PK;

ALTER TABLE DIM_InExObjArt DROP CONSTRAINT DIM_InExkassoObjektArt_PK;

ALTER TABLE DIM_InExObjTyp DROP CONSTRAINT DIM_InExkassoObjektTyp_PK;

ALTER TABLE DIM_InEx_Prod_Grp DROP CONSTRAINT DIM_InEx_Produktgruppe_PK;

ALTER TABLE DIM_InkAbgstat_Klass DROP CONSTRAINT DIM_Ink_AbgStatus_Klasse_PK;

ALTER TABLE DIM_Ink_Abgabestat DROP CONSTRAINT DIM_Ink_Abgabestatus_PK;

ALTER TABLE DIM_JNKENNZ DROP CONSTRAINT LKP_KENNZ_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT DIM_Jahr_PK;

ALTER TABLE DIM_LieferungsArt DROP CONSTRAINT DIM_LieferungsArt_PK;

ALTER TABLE DIM_MA_System DROP CONSTRAINT DIM_MA_System_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_Org_Bereich DROP CONSTRAINT DIM_Org_Bereich_PK;

ALTER TABLE DIM_Quartal DROP CONSTRAINT DIM_Quartal_PK;

ALTER TABLE DIM_RD_Ebene1 DROP CONSTRAINT DIM_RD_Ebene1_PK;

ALTER TABLE DIM_RD_Ebene2 DROP CONSTRAINT DIM_RD_Ebene2_PK;

ALTER TABLE DIM_RD_Ebene3 DROP CONSTRAINT DIM_RD_Ebene3_PK;

ALTER TABLE DIM_Regelbtg_Klasse DROP CONSTRAINT DIM_Regelbeitrag_Klasse_PK;

ALTER TABLE DIM_Regionaldir DROP CONSTRAINT DIM_Regionaldirektion_PK;

ALTER TABLE DIM_Ruecklaeufergrd DROP CONSTRAINT DIM_Ruecklaeufergrund_PK;

ALTER TABLE DIM_StaAbInkBueroBtr DROP CONSTRAINT DIM_StaAbInkBueroBtr_PK;

ALTER TABLE DIM_StaAbInkBueroSch DROP CONSTRAINT DIM_StaAbInkBueroSch_PK;

ALTER TABLE DIM_StatusInExObj DROP CONSTRAINT DIM_StatusInExkassoObjekt_PK;

ALTER TABLE DIM_UebStufenKlasse DROP CONSTRAINT DIM_Uebsstufenklasse_PK;

ALTER TABLE DIM_Ueb_Variante DROP CONSTRAINT DIM_Ueb_Variante_PK;

ALTER TABLE DIM_UeberwBetragsart DROP CONSTRAINT DIM_UeberwBetragsart_PK;

ALTER TABLE DIM_UeberwStufe DROP CONSTRAINT DIM_Ueberwachungsstufe_PK;

ALTER TABLE DIM_UeberwStufenTyp DROP CONSTRAINT DIM_Ueberwachungsstufentyp_PK;

ALTER TABLE DIM_UeberwVerfStatus DROP CONSTRAINT DIM_UeberwVerfStatus_PK;

ALTER TABLE DIM_UeberwVerfahren DROP CONSTRAINT DIM_Ueberwachungsverfahren_PK;

ALTER TABLE DIM_Vertragskontotyp DROP CONSTRAINT DIM_Vertragskontotyp_PK;

ALTER TABLE DIM_Woche DROP CONSTRAINT DIM_Woche_PK;

ALTER TABLE DIM_ZW_vertraglich DROP CONSTRAINT DIM_Zahlweise_vertraglich_PK;

ALTER TABLE DIM_Zahlart DROP CONSTRAINT DIM_Eingangszahlweg_Klasse_PK;

ALTER TABLE F_Direktzahlungspos DROP CONSTRAINT F_Direktzahlungsposition_PK;

ALTER TABLE F_FoVePos_ProLauf DROP CONSTRAINT F_FoVePo_LSV_PK;

ALTER TABLE F_FoVePosition DROP CONSTRAINT F_FoVePo_PK;

ALTER TABLE F_InExObjekt DROP CONSTRAINT F_InExObjekt_PK;

ALTER TABLE F_InkassoPosition DROP CONSTRAINT F_InkassoPosition_PK;

ALTER TABLE F_Ueberw_ProBelPos DROP CONSTRAINT F_Ueberw_ProBelPos_PK;

DROP TABLE DET_Ford_Verb;

DROP TABLE DET_Ford_Verb_Pos;

DROP TABLE DET_InExkassoObjekt;

DROP TABLE DET_InExkasso_Lauf;

DROP TABLE DET_InkassoPosition;

DROP TABLE DET_Inkassobuero;

DROP TABLE DET_Ladelauf;

DROP TABLE DET_Last_Load;

DROP TABLE DET_Partner;

DROP TABLE DET_Ueberwachung;

DROP TABLE DET_Vertragskonto;

DROP TABLE DET_Zahlung;

DROP TABLE DET_Zahlungsposition;

DROP TABLE DIM_Ausgleichsgrund;

DROP TABLE DIM_Ausgleichsstatus;

DROP TABLE DIM_Ausnahmegrund;

DROP TABLE DIM_BelegHerkunft;

DROP TABLE DIM_Belegart;

DROP TABLE DIM_Betragsart;

DROP TABLE DIM_Buchungskreis;

DROP TABLE DIM_Datum;

DROP TABLE DIM_Eing_ZWeg_Klasse;

DROP TABLE DIM_Eing_ZWeg_vorges;

DROP TABLE DIM_FoVe_Klassifiktn;

DROP TABLE DIM_FordAusfManMasch;

DROP TABLE DIM_Halbjahr;

DROP TABLE DIM_HauptTeilvorgang;

DROP TABLE DIM_Hauptvorgang;

DROP TABLE DIM_InExObjArt;

DROP TABLE DIM_InExObjTyp;

DROP TABLE DIM_InEx_Prod_Grp;

DROP TABLE DIM_InkAbgstat_Klass;

DROP TABLE DIM_Ink_Abgabestat;

DROP TABLE DIM_JNKENNZ;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_LieferungsArt;

DROP TABLE DIM_MA_System;

DROP TABLE DIM_Monat;

DROP TABLE DIM_Org_Bereich;

DROP TABLE DIM_Quartal;

DROP TABLE DIM_RD_Ebene1;

DROP TABLE DIM_RD_Ebene2;

DROP TABLE DIM_RD_Ebene3;

DROP TABLE DIM_Regelbtg_Klasse;

DROP TABLE DIM_Regionaldir;

DROP TABLE DIM_Ruecklaeufergrd;

DROP TABLE DIM_StaAbInkBueroBtr;

DROP TABLE DIM_StaAbInkBueroSch;

DROP TABLE DIM_StatusInExObj;

DROP TABLE DIM_UebStufenKlasse;

DROP TABLE DIM_Ueb_Variante;

DROP TABLE DIM_UeberwBetragsart;

DROP TABLE DIM_UeberwStufe;

DROP TABLE DIM_UeberwStufenTyp;

DROP TABLE DIM_UeberwVerfStatus;

DROP TABLE DIM_UeberwVerfahren;

DROP TABLE DIM_Vertragskontotyp;

DROP TABLE DIM_Woche;

DROP TABLE DIM_ZW_vertraglich;

DROP TABLE DIM_Zahlart;

DROP TABLE F_Direktzahlungspos;

DROP TABLE F_FoVePos_ProLauf;

DROP TABLE F_FoVePosition;

DROP TABLE F_InExObjekt;

DROP TABLE F_InkassoPosition;

DROP TABLE F_Ueberw_ProBelPos;

DROP TABLE Releasestand;

