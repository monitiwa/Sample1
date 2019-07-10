--<ScriptOptions statementTerminator=";"/>
-- Version 6123

ALTER TABLE DET_NatKatEreignis DROP CONSTRAINT DET_NatKatEreignis_PK;

ALTER TABLE DET_Partner DROP CONSTRAINT DET_Partner_PK;

ALTER TABLE DET_RV_NatKatEreignis DROP CONSTRAINT DET_RV_NatKat_Ereignis_PK;

ALTER TABLE DET_Regress DROP CONSTRAINT DET_Regress_PK;

ALTER TABLE DET_RegressPosition DROP CONSTRAINT DET_RegressPosition_PK;

ALTER TABLE DET_Schaden DROP CONSTRAINT DET_Schaden_PK;

ALTER TABLE DET_Schadenort DROP CONSTRAINT DET_Schadenort_PK;

ALTER TABLE DET_Schadenrueckstellungen DROP CONSTRAINT DET_Schadenrueckstellungen_PK;

ALTER TABLE DET_Teilschaden DROP CONSTRAINT DET_Teilschaden_PK;

ALTER TABLE DET_Vertrag DROP CONSTRAINT DET_Vertrag_PK;

ALTER TABLE DET_Vertragsdeckung DROP CONSTRAINT DET_Vertragsdeckung_PK;

ALTER TABLE DET_ZahlungForderung DROP CONSTRAINT DET_ZahlungForderung_PK;

ALTER TABLE DET_ZhlgFordDetail DROP CONSTRAINT DET_ZhlgFordDetail_PK;

ALTER TABLE DIM_ABCV_Bescheinigung DROP CONSTRAINT DIM_ABCV_Bescheinigung_PK;

ALTER TABLE DIM_BearbeitungsstatusGrund DROP CONSTRAINT DIM_BearbeitungsstatusGrund_PK;

ALTER TABLE DIM_Bedingungsschluessel DROP CONSTRAINT DIM_Bedingungsschluessel_PK;

ALTER TABLE DIM_Bestandsbeziehungsart DROP CONSTRAINT DIM_Bestandsbeziehungsart_PK;

ALTER TABLE DIM_Betragstyp DROP CONSTRAINT DIM_Betragstyp_PK;

ALTER TABLE DIM_Bewertung_VTP DROP CONSTRAINT DIM_Bewertung_VTP_PK;

ALTER TABLE DIM_BruttoNetto DROP CONSTRAINT DIM_BruttoNetto_PK;

ALTER TABLE DIM_CodeOrt DROP CONSTRAINT DIM_CodeOrt_PK;

ALTER TABLE DIM_CodeOrtsteil DROP CONSTRAINT DIM_CodeOrtsteil_PK;

ALTER TABLE DIM_Deckungsart DROP CONSTRAINT DIM_Deckungsart_PK;

ALTER TABLE DIM_DeckungsschluesselK DROP CONSTRAINT DIM_DeckungsschluesselK_PK;

ALTER TABLE DIM_DeckungsschluesselKH DROP CONSTRAINT DIM_DeckungsschluesselKH_PK;

ALTER TABLE DIM_Deckungsstatus DROP CONSTRAINT DIM_Deckungsstatus_PK;

ALTER TABLE DIM_Dunkelverarbeitung DROP CONSTRAINT DIM_Dunkelverarbeitung_PK;

ALTER TABLE DIM_Ereignisart DROP CONSTRAINT DIM_Ereignisart_PK;

ALTER TABLE DIM_Erstkontakt DROP CONSTRAINT DIM_Erstkontakt_PK;

ALTER TABLE DIM_Fallzahlungspostentyp DROP CONSTRAINT DIM_Fallzahlungspostentyp_PK;

ALTER TABLE DIM_Familienstand DROP CONSTRAINT DIM_Familienstand_PK;

ALTER TABLE DIM_GeschaeftsbezFirma DROP CONSTRAINT DIM_GeschaeftsbezFirma_PK;

ALTER TABLE DIM_GeschaeftsbezFirmaTarif DROP CONSTRAINT DIM_GeschaeftsbezFirmaTarif_PK;

ALTER TABLE DIM_GeschaeftsbezTaetigkTarif DROP CONSTRAINT DIM_GeschaeftsbezTaetigkTarif1;

ALTER TABLE DIM_GeschaeftsbezTaetigkeit DROP CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK;

ALTER TABLE DIM_Geschlecht DROP CONSTRAINT DIM_Geschlecht_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT D_Jahr_PK;

ALTER TABLE DIM_KlassifizierungRueckst DROP CONSTRAINT DIM_Klassifizierungsart_PK;

ALTER TABLE DIM_KlassifizierungSchluss DROP CONSTRAINT DIM_KlassifizierungSchluss_PK;

ALTER TABLE DIM_Laenderkennzeichen DROP CONSTRAINT DIM_Laenderkennzeichen_PK;

ALTER TABLE DIM_Leistungsart DROP CONSTRAINT DIM_Leistungsart_PK;

ALTER TABLE DIM_Meldeweg DROP CONSTRAINT DIM_Meldeweg_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_Nationalitaet DROP CONSTRAINT DIM_Nationalitaet_PK;

ALTER TABLE DIM_Partnergemeinschaftsart DROP CONSTRAINT DIM_Partnergemeinschaftsart_PK;

ALTER TABLE DIM_Partnertyp DROP CONSTRAINT DIM_Partnertyp_PK;

ALTER TABLE DIM_Personenzustand_Ident DROP CONSTRAINT DIM_Personenzustand_Ident_PK;

ALTER TABLE DIM_Personenzustand_negativ DROP CONSTRAINT DIM_Personenzustand_negativ_PK;

ALTER TABLE DIM_Personenzustand_positiv DROP CONSTRAINT DIM_Personenzustand_positiv_PK;

ALTER TABLE DIM_Postleitzahl DROP CONSTRAINT DIM_Postleitzahl_PK;

ALTER TABLE DIM_Produkt DROP CONSTRAINT DIM_Produkt_PK;

ALTER TABLE DIM_Region DROP CONSTRAINT DIM_Region_PK;

ALTER TABLE DIM_Regionaldirektion DROP CONSTRAINT DIM_Regionaldirektion_PK;

ALTER TABLE DIM_Regressart DROP CONSTRAINT DIM_Regressart_PK;

ALTER TABLE DIM_Regressgrund DROP CONSTRAINT DIM_Regressgrund_PK;

ALTER TABLE DIM_Regressstatus DROP CONSTRAINT DIM_Regressstatus_PK;

ALTER TABLE DIM_RueckstAenderungsgrund DROP CONSTRAINT DIM_RueckstAenderungsgrund_PK;

ALTER TABLE DIM_RueckstSetzungsmethode DROP CONSTRAINT DIM_RueckstSetzungsmethode_PK;

ALTER TABLE DIM_RueckstellungsBetragsart DROP CONSTRAINT DIM_RueckstBetragsart_PK;

ALTER TABLE DIM_Rueckversicherungsart DROP CONSTRAINT DIM_Rueckversicherungsart_PK;

ALTER TABLE DIM_SBGruppe DROP CONSTRAINT DIM_zust_SBGruppe_PK;

ALTER TABLE DIM_SammelereignisKlasse DROP CONSTRAINT DIM_SammelereignisKlasse_PK;

ALTER TABLE DIM_SatzartDerZahlung DROP CONSTRAINT DIM_SatzartDerZahlung_PK;

ALTER TABLE DIM_SchadenKomplexitaet DROP CONSTRAINT DIM_SchadenKomplexitaet_PK;

ALTER TABLE DIM_SchadenSteuerung DROP CONSTRAINT DIM_SchadenSteuerung_PK;

ALTER TABLE DIM_Schadenfallart DROP CONSTRAINT DIM_Schadenfallart_PK;

ALTER TABLE DIM_Schadenrueckstellungsart DROP CONSTRAINT DIM_Schadenrueckstellart_PK;

ALTER TABLE DIM_Schadenstatus DROP CONSTRAINT DIM_Schadenstatus_PK;

ALTER TABLE DIM_Schadenursache DROP CONSTRAINT DIM_Schadenursache_PK;

ALTER TABLE DIM_Schuldigkeit DROP CONSTRAINT DIM_Schuldigkeit_PK;

ALTER TABLE DIM_Spartenkennziffer DROP CONSTRAINT DIM_Spartenkennziffer_PK;

ALTER TABLE DIM_Teilschadenart DROP CONSTRAINT DIM_Teilschadenart_PK;

ALTER TABLE DIM_Telefonwerbung DROP CONSTRAINT DIM_Telefonwerbung_PK;

ALTER TABLE DIM_UKZ DROP CONSTRAINT DIM_UKZ_PK;

ALTER TABLE DIM_Versicherungsart DROP CONSTRAINT DIM_Versicherungsart_PK;

ALTER TABLE DIM_Vertragsart DROP CONSTRAINT DIM_Vertragsmerkmale_PK;

ALTER TABLE DIM_Vollmachtsstufe DROP CONSTRAINT DIM_Vollmachtsstufe_PK;

ALTER TABLE DIM_Waehrung DROP CONSTRAINT DIM_Waehrung_PK;

ALTER TABLE DIM_Wagnisart DROP CONSTRAINT DIM_Wagnisart_PK;

ALTER TABLE DIM_Werbeunterdrueckung DROP CONSTRAINT DIM_Werbeunterdrueckung_PK;

ALTER TABLE DIM_ZahlungStatus DROP CONSTRAINT DIM_ZahlungStatus_PK;

ALTER TABLE DIM_Zahlungsart DROP CONSTRAINT DIM_Zahlungsart_PK;

ALTER TABLE DIM_Zahlungsgrund DROP CONSTRAINT DIM_Zahlungsgrund_PK;

ALTER TABLE DIM_ZahlungsgrundGruppe DROP CONSTRAINT DIM_ZahlungsgrundGruppe_PK;

ALTER TABLE DIM_Zahlweg DROP CONSTRAINT DIM_Zahlweg_PK;

ALTER TABLE DIM_Zeit DROP CONSTRAINT D_Zeit_PK;

ALTER TABLE DIM_Zeitzone DROP CONSTRAINT DIM_Zeitzone_PK;

ALTER TABLE DIM_vereinbDatenschutz DROP CONSTRAINT DIM_vereinbDatenschutz_PK;

ALTER TABLE DMK_BilRueckstMerkmale DROP CONSTRAINT DMK_BilRueckstMerkmale_PK;

ALTER TABLE DMK_Partnermerkmale DROP CONSTRAINT DIM_Partnermerkmale_PK;

ALTER TABLE DMK_RegressMerkmale DROP CONSTRAINT DIM_RegressMerkmale_PK;

ALTER TABLE DMK_SSP_RVPMerkmale DROP CONSTRAINT DMK_SSP_RVPMerkmale_PK;

ALTER TABLE DMK_Schadenmerkmale DROP CONSTRAINT DMK_Schadenmerkmale_PK;

ALTER TABLE DMK_Schadenortmerkmale DROP CONSTRAINT DMK_Schadenortmerkmale_PK;

ALTER TABLE DMK_SchadenrueckstMerkmale DROP CONSTRAINT DMK_SchadenrueckstMerkmale_PK;

ALTER TABLE DMK_TeilschadenMerkmale DROP CONSTRAINT DMK_TeilschadenMerkmale_PK;

ALTER TABLE DMK_VertragsdeckMerkmale DROP CONSTRAINT DMK_VertragsdeckMerkmale_PK;

ALTER TABLE DMK_Vertragsmerkmale DROP CONSTRAINT DMK_Vertragsmerkmale_PK;

ALTER TABLE DMK_ZhlgFordDetMerkmale DROP CONSTRAINT DMK_ZhlgFordDetMerkmale_PK;

ALTER TABLE DMK_ZhlgFordMerkmale DROP CONSTRAINT DMK_ZhlgFordMerkmale_PK;

ALTER TABLE F_Bilanzrueckstellungen DROP CONSTRAINT F_Bilanzrueckstellungen_PK;

ALTER TABLE F_Regress DROP CONSTRAINT F_Regress_PK;

ALTER TABLE F_RegressPosition DROP CONSTRAINT F_RegressPos_PK;

ALTER TABLE F_SSP_RVP DROP CONSTRAINT F_SSP_RVP_PK;

ALTER TABLE F_Schaden DROP CONSTRAINT F_Schaden_PK;

ALTER TABLE F_Schadenrueckstellungen DROP CONSTRAINT F_Schadenrueckstellungen_PK;

ALTER TABLE F_Teilschaden DROP CONSTRAINT F_Teilschaden_PK;

ALTER TABLE F_Zhlg_Ford DROP CONSTRAINT F_Zahlung_PK;

ALTER TABLE F_Zhlg_Ford_Detail DROP CONSTRAINT F_Zhlg_Ford_Detail_PK;

ALTER TABLE R_Schaden_RVEreign DROP CONSTRAINT R_Schaden_RVEreign_PK;

ALTER TABLE R_Schaden_Regbeauftragter DROP CONSTRAINT R_Schaden_Regbeauftragter_PK;

ALTER TABLE R_Schaden_VerletztePerson DROP CONSTRAINT R_Schaden_VerletztePerson_PK;

ALTER TABLE R_Teilschaden_Handwerker DROP CONSTRAINT R_Teilschaden_Handwerker_PK;

ALTER TABLE R_Teilschaden_Regbeauftragter DROP CONSTRAINT R_Teilschaden_Regbeauftr_PK;

ALTER TABLE R_Teilschaden_Sachverst DROP CONSTRAINT R_Teilschaden_Sachverst_PK;

DROP INDEX DIM_VertragsdeckMerkmale_IDX;

DROP INDEX DMK_BilRueckstMerkmale_IDX;

DROP INDEX DMK_Partnermerkmale_IDX;

DROP INDEX DMK_RegressMerkmale_IDX;

DROP INDEX DMK_SSP_RVPMerkmale_IDX;

DROP INDEX DMK_Schadenmerkmale_IDX;

DROP INDEX DMK_Schadenortmerkmale_IDX;

DROP INDEX DMK_SchadenrueckstMerkmale_IDX;

DROP INDEX DMK_TeilschadenMerkmale_IDX;

DROP INDEX DMK_Vertragsmerkmale_IDX;

DROP INDEX DMK_ZhlgFordDetMerkmale_IDX;

DROP INDEX DMK_ZhlgFordMerkmale_IDX;

DROP TABLE DET_NatKatEreignis;

DROP TABLE DET_Partner;

DROP TABLE DET_RV_NatKatEreignis;

DROP TABLE DET_Regress;

DROP TABLE DET_RegressPosition;

DROP TABLE DET_Schaden;

DROP TABLE DET_Schadenort;

DROP TABLE DET_Schadenrueckstellungen;

DROP TABLE DET_Teilschaden;

DROP TABLE DET_Vertrag;

DROP TABLE DET_Vertragsdeckung;

DROP TABLE DET_ZahlungForderung;

DROP TABLE DET_ZhlgFordDetail;

DROP TABLE DIM_ABCV_Bescheinigung;

DROP TABLE DIM_BearbeitungsstatusGrund;

DROP TABLE DIM_Bedingungsschluessel;

DROP TABLE DIM_Bestandsbeziehungsart;

DROP TABLE DIM_Betragstyp;

DROP TABLE DIM_Bewertung_VTP;

DROP TABLE DIM_BruttoNetto;

DROP TABLE DIM_CodeOrt;

DROP TABLE DIM_CodeOrtsteil;

DROP TABLE DIM_Deckungsart;

DROP TABLE DIM_DeckungsschluesselK;

DROP TABLE DIM_DeckungsschluesselKH;

DROP TABLE DIM_Deckungsstatus;

DROP TABLE DIM_Dunkelverarbeitung;

DROP TABLE DIM_Ereignisart;

DROP TABLE DIM_Erstkontakt;

DROP TABLE DIM_Fallzahlungspostentyp;

DROP TABLE DIM_Familienstand;

DROP TABLE DIM_GeschaeftsbezFirma;

DROP TABLE DIM_GeschaeftsbezFirmaTarif;

DROP TABLE DIM_GeschaeftsbezTaetigkTarif;

DROP TABLE DIM_GeschaeftsbezTaetigkeit;

DROP TABLE DIM_Geschlecht;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_KlassifizierungRueckst;

DROP TABLE DIM_KlassifizierungSchluss;

DROP TABLE DIM_Laenderkennzeichen;

DROP TABLE DIM_Leistungsart;

DROP TABLE DIM_Meldeweg;

DROP TABLE DIM_Monat;

DROP TABLE DIM_Nationalitaet;

DROP TABLE DIM_Partnergemeinschaftsart;

DROP TABLE DIM_Partnertyp;

DROP TABLE DIM_Personenzustand_Ident;

DROP TABLE DIM_Personenzustand_negativ;

DROP TABLE DIM_Personenzustand_positiv;

DROP TABLE DIM_Postleitzahl;

DROP TABLE DIM_Produkt;

DROP TABLE DIM_Region;

DROP TABLE DIM_Regionaldirektion;

DROP TABLE DIM_Regressart;

DROP TABLE DIM_Regressgrund;

DROP TABLE DIM_Regressstatus;

DROP TABLE DIM_RueckstAenderungsgrund;

DROP TABLE DIM_RueckstSetzungsmethode;

DROP TABLE DIM_RueckstellungsBetragsart;

DROP TABLE DIM_Rueckversicherungsart;

DROP TABLE DIM_SBGruppe;

DROP TABLE DIM_SammelereignisKlasse;

DROP TABLE DIM_SatzartDerZahlung;

DROP TABLE DIM_SchadenKomplexitaet;

DROP TABLE DIM_SchadenSteuerung;

DROP TABLE DIM_Schadenfallart;

DROP TABLE DIM_Schadenrueckstellungsart;

DROP TABLE DIM_Schadenstatus;

DROP TABLE DIM_Schadenursache;

DROP TABLE DIM_Schuldigkeit;

DROP TABLE DIM_Spartenkennziffer;

DROP TABLE DIM_Teilschadenart;

DROP TABLE DIM_Telefonwerbung;

DROP TABLE DIM_UKZ;

DROP TABLE DIM_Versicherungsart;

DROP TABLE DIM_Vertragsart;

DROP TABLE DIM_Vollmachtsstufe;

DROP TABLE DIM_Waehrung;

DROP TABLE DIM_Wagnisart;

DROP TABLE DIM_Werbeunterdrueckung;

DROP TABLE DIM_ZahlungStatus;

DROP TABLE DIM_Zahlungsart;

DROP TABLE DIM_Zahlungsgrund;

DROP TABLE DIM_ZahlungsgrundGruppe;

DROP TABLE DIM_Zahlweg;

DROP TABLE DIM_Zeit;

DROP TABLE DIM_Zeitzone;

DROP TABLE DIM_vereinbDatenschutz;

DROP TABLE DMK_BilRueckstMerkmale;

DROP TABLE DMK_Partnermerkmale;

DROP TABLE DMK_RegressMerkmale;

DROP TABLE DMK_SSP_RVPMerkmale;

DROP TABLE DMK_Schadenmerkmale;

DROP TABLE DMK_Schadenortmerkmale;

DROP TABLE DMK_SchadenrueckstMerkmale;

DROP TABLE DMK_TeilschadenMerkmale;

DROP TABLE DMK_VertragsdeckMerkmale;

DROP TABLE DMK_Vertragsmerkmale;

DROP TABLE DMK_ZhlgFordDetMerkmale;

DROP TABLE DMK_ZhlgFordMerkmale;

DROP TABLE F_Bilanzrueckstellungen;

DROP TABLE F_Regress;

DROP TABLE F_RegressPosition;

DROP TABLE F_SSP_RVP;

DROP TABLE F_Schaden;

DROP TABLE F_Schadenrueckstellungen;

DROP TABLE F_Teilschaden;

DROP TABLE F_Zhlg_Ford;

DROP TABLE F_Zhlg_Ford_Detail;

DROP TABLE R_Schaden_RVEreign;

DROP TABLE R_Schaden_Regbeauftragter;

DROP TABLE R_Schaden_VerletztePerson;

DROP TABLE R_Teilschaden_Handwerker;

DROP TABLE R_Teilschaden_Regbeauftragter;

DROP TABLE R_Teilschaden_Sachverst;

