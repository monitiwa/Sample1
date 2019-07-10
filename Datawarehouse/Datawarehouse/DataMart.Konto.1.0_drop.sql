--<ScriptOptions statementTerminator=";"/>
-- Version 14578

ALTER TABLE DET_Ford_Verb DROP CONSTRAINT DET_Ford_Verb_PK;

ALTER TABLE DET_Ford_Verb_Pos DROP CONSTRAINT DET_Ford_Verb_Pos_PK;

ALTER TABLE DET_InExkassoObjekt DROP CONSTRAINT DET_InExObj_PK;

ALTER TABLE DET_LSV_Lauf DROP CONSTRAINT DET_LSV_Lauf_PK;

ALTER TABLE DET_Ladelauf DROP CONSTRAINT DET_Ladelauf_PK;

ALTER TABLE DET_Partner DROP CONSTRAINT DET_Partner_PK;

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

ALTER TABLE DIM_Halbjahr DROP CONSTRAINT DIM_Halbjahr_PK;

ALTER TABLE DIM_HauptTeilvorgang DROP CONSTRAINT DIM_HauptTeilvorgang_PK;

ALTER TABLE DIM_Hauptvorgang DROP CONSTRAINT DIM_Hauptvorgang_PK;

ALTER TABLE DIM_InExObjArt DROP CONSTRAINT DIM_InExkassoObjektArt_PK;

ALTER TABLE DIM_InExObjTyp DROP CONSTRAINT DIM_InExkassoObjektTyp_PK;

ALTER TABLE DIM_InEx_Prod_Grp DROP CONSTRAINT DIM_InEx_Produktgruppe_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT DIM_Jahr_PK;

ALTER TABLE DIM_LieferungsArt DROP CONSTRAINT DIM_LieferungsArt_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_Quartal DROP CONSTRAINT DIM_Quartal_PK;

ALTER TABLE DIM_StatusInExObj DROP CONSTRAINT DIM_StatusInExkassoObjekt_PK;

ALTER TABLE DIM_Vertragskontotyp DROP CONSTRAINT DIM_Vertragskontotyp_PK;

ALTER TABLE DIM_Woche DROP CONSTRAINT DIM_Woche_PK;

ALTER TABLE DIM_ZW_vertraglich DROP CONSTRAINT DIM_Zahlweise_vertraglich_PK;

ALTER TABLE F_Direktzahlungspos DROP CONSTRAINT F_Direktzahlungsposition_PK;

ALTER TABLE F_FoVePo_PlusProLauf DROP CONSTRAINT F_Ford_Verb_Pos_LSV_Lauf_PK;

ALTER TABLE F_InExOb_PlusProLauf DROP CONSTRAINT F_InExObj_LSV_PK;

DROP TABLE DET_Ford_Verb;

DROP TABLE DET_Ford_Verb_Pos;

DROP TABLE DET_InExkassoObjekt;

DROP TABLE DET_LSV_Lauf;

DROP TABLE DET_Ladelauf;

DROP TABLE DET_Partner;

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

DROP TABLE DIM_Halbjahr;

DROP TABLE DIM_HauptTeilvorgang;

DROP TABLE DIM_Hauptvorgang;

DROP TABLE DIM_InExObjArt;

DROP TABLE DIM_InExObjTyp;

DROP TABLE DIM_InEx_Prod_Grp;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_LieferungsArt;

DROP TABLE DIM_Monat;

DROP TABLE DIM_Quartal;

DROP TABLE DIM_StatusInExObj;

DROP TABLE DIM_Vertragskontotyp;

DROP TABLE DIM_Woche;

DROP TABLE DIM_ZW_vertraglich;

DROP TABLE F_Direktzahlungspos;

DROP TABLE F_FoVePo_PlusProLauf;

DROP TABLE F_InExOb_PlusProLauf;

DROP TABLE Releasestand;

