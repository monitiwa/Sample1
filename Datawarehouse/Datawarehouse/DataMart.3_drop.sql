--<ScriptOptions statementTerminator=";"/>
-- Version 10923

ALTER TABLE DET_Besch_Objekt DROP CONSTRAINT DET_Besch_Objekt_PK;

ALTER TABLE DET_GerichtsInstanz DROP CONSTRAINT DET_GerichtsInstanz_PK;

ALTER TABLE DET_Gerichtsverfahren DROP CONSTRAINT DET_Gerichtsverfahren_PK;

ALTER TABLE DET_Ladelauf DROP CONSTRAINT DET_Ladelauf_PK;

ALTER TABLE DET_NatKatEreignis DROP CONSTRAINT DET_NatKatEreignis_PK;

ALTER TABLE DET_Partner DROP CONSTRAINT DET_Partner_PK;

ALTER TABLE DET_RV_NatKatEreignis DROP CONSTRAINT DET_RV_NatKat_Ereignis_PK;

ALTER TABLE DET_Regress DROP CONSTRAINT DET_Regress_PK;

ALTER TABLE DET_RegressPosition DROP CONSTRAINT DET_RegressPosition_PK;

ALTER TABLE DET_Schaden DROP CONSTRAINT DET_Schaden_PK;

ALTER TABLE DET_Schadenort DROP CONSTRAINT DET_Schadenort_PK;

ALTER TABLE DET_Schadenrueckstellungen DROP CONSTRAINT DET_Schadenrueckstellungen_PK;

ALTER TABLE DET_Teilschaden DROP CONSTRAINT DET_Teilschaden_PK;

ALTER TABLE DET_Verl_Person DROP CONSTRAINT DET_Verl_Person_PK;

ALTER TABLE DET_Vertrag DROP CONSTRAINT DET_Vertrag_PK;

ALTER TABLE DET_Vertragsdeckung DROP CONSTRAINT DET_Vertragsdeckung_PK;

ALTER TABLE DET_ZahlungForderung DROP CONSTRAINT DET_ZahlungForderung_PK;

ALTER TABLE DET_ZhlgFordDetail DROP CONSTRAINT DET_ZhlgFordDetail_PK;

ALTER TABLE DIM_ABCV_Bescheinigung DROP CONSTRAINT DIM_ABCV_Bescheinigung_PK;

ALTER TABLE DIM_Abgabestatus DROP CONSTRAINT DIM_Abgabestatus_PK;

ALTER TABLE DIM_AbschlussVerfahren DROP CONSTRAINT DET_AbschlussVerfahren_PK;

ALTER TABLE DIM_AusgangVerfahren DROP CONSTRAINT DET_AusgangVerfahren_PK;

ALTER TABLE DIM_Auswertung_individuell DROP CONSTRAINT DIM_Auswertung_individuell_PK;

ALTER TABLE DIM_Auswertungsbereich DROP CONSTRAINT DET_Auswertungsbereich_PK;

ALTER TABLE DIM_Bedingungsschluessel DROP CONSTRAINT DIM_Bedingungsschluessel_PK;

ALTER TABLE DIM_Berufung_Rev_durch DROP CONSTRAINT DIM_Berufung_Rev_durch_PK;

ALTER TABLE DIM_Beschaedigungsgrad DROP CONSTRAINT DIM_Beschaedigungsgrad_PK;

ALTER TABLE DIM_Beschaedigungstyp DROP CONSTRAINT DIM_Beschaedigungstyp_PK;

ALTER TABLE DIM_Bestandsbeziehungsart DROP CONSTRAINT DIM_Bestandsbeziehungsart_PK;

ALTER TABLE DIM_Betragstyp DROP CONSTRAINT DIM_Betragstyp_PK;

ALTER TABLE DIM_Bewertung_VTP DROP CONSTRAINT DIM_Bewertung_VTP_PK;

ALTER TABLE DIM_BruttoNetto DROP CONSTRAINT DIM_BruttoNetto_PK;

ALTER TABLE DIM_CodeOrt DROP CONSTRAINT DIM_CodeOrt_PK;

ALTER TABLE DIM_CodeOrtsteil DROP CONSTRAINT DIM_CodeOrtsteil_PK;

ALTER TABLE DIM_Datum DROP CONSTRAINT DIM_Datum_PK;

ALTER TABLE DIM_Deckungsart DROP CONSTRAINT DIM_Deckungsart_PK;

ALTER TABLE DIM_DeckungsschluesselK DROP CONSTRAINT DIM_DeckungsschluesselK_PK;

ALTER TABLE DIM_DeckungsschluesselKH DROP CONSTRAINT DIM_DeckungsschluesselKH_PK;

ALTER TABLE DIM_Deckungsstatus DROP CONSTRAINT DIM_Deckungsstatus_PK;

ALTER TABLE DIM_Dunkelverarbeitung DROP CONSTRAINT DIM_Dunkelverarbeitung_PK;

ALTER TABLE DIM_Ereignisart DROP CONSTRAINT DIM_Ereignisart_PK;

ALTER TABLE DIM_Ereignisklasse DROP CONSTRAINT DIM_Ereignisklasse_PK;

ALTER TABLE DIM_Erledigungsart DROP CONSTRAINT DIM_Erledigungsart_PK;

ALTER TABLE DIM_Erledigungszeitpkt_im_Verf DROP CONSTRAINT DIM_Erledigungszeitpkt_PK;

ALTER TABLE DIM_Erstkontakt DROP CONSTRAINT DIM_Erstkontakt_PK;

ALTER TABLE DIM_Eskalationsstufe DROP CONSTRAINT DIM_Eskalationsstufe_PK;

ALTER TABLE DIM_Fachgebiet DROP CONSTRAINT DIM_Fachgebiet_PK;

ALTER TABLE DIM_Fallzahlungspostentyp DROP CONSTRAINT DIM_Fallzahlungspostentyp_PK;

ALTER TABLE DIM_Familienstand DROP CONSTRAINT DIM_Familienstand_PK;

ALTER TABLE DIM_Gefahr DROP CONSTRAINT DIM_Gefahr_PK;

ALTER TABLE DIM_Geltungsbereich DROP CONSTRAINT DET_Geltungsbereich_PK;

ALTER TABLE DIM_Gerichtsbarkeit DROP CONSTRAINT DIM_Gerichtsbarkeit_PK;

ALTER TABLE DIM_GeschaeftsbezFirma DROP CONSTRAINT DIM_GeschaeftsbezFirma_PK;

ALTER TABLE DIM_GeschaeftsbezFirmaTarif DROP CONSTRAINT DIM_GeschaeftsbezFirmaTarif_PK;

ALTER TABLE DIM_GeschaeftsbezTaetigkTarif DROP CONSTRAINT DIM_GeschaeftsbezTaetigkTarif1;

ALTER TABLE DIM_GeschaeftsbezTaetigkeit DROP CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK;

ALTER TABLE DIM_Geschlecht DROP CONSTRAINT DIM_Geschlecht_PK;

ALTER TABLE DIM_Grosskunde DROP CONSTRAINT DIM_Grosskunde_PK;

ALTER TABLE DIM_Haftung DROP CONSTRAINT DIM_Haftung_PK;

ALTER TABLE DIM_Halbjahr DROP CONSTRAINT DIM_Halbjahr_PK;

ALTER TABLE DIM_Instanzstatus DROP CONSTRAINT DIM_Instanzstatus_PK;

ALTER TABLE DIM_JNKENNZ DROP CONSTRAINT LKP_KENNZ_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT DIM_Jahr_PK;

ALTER TABLE DIM_KlassifizierungRueckst DROP CONSTRAINT DIM_Klassifizierungsart_PK;

ALTER TABLE DIM_KlassifizierungSchluss DROP CONSTRAINT DIM_KlassifizierungSchluss_PK;

ALTER TABLE DIM_Laenderkennzeichen DROP CONSTRAINT DIM_Laenderkennzeichen_PK;

ALTER TABLE DIM_Leistungsart DROP CONSTRAINT DIM_Leistungsart_PK;

ALTER TABLE DIM_Meldeweg DROP CONSTRAINT DIM_Meldeweg_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_Nationalitaet DROP CONSTRAINT DIM_Nationalitaet_PK;

ALTER TABLE DIM_ObjektArt DROP CONSTRAINT DIM_ObjektArt_PK;

ALTER TABLE DIM_Partner_Objekttyp DROP CONSTRAINT DIM_Partner_Objekttyp_PK;

ALTER TABLE DIM_Partnergemeinschaftsart DROP CONSTRAINT DIM_Partnergemeinschaftsart_PK;

ALTER TABLE DIM_Partnertyp DROP CONSTRAINT DIM_Partnertyp_PK;

ALTER TABLE DIM_Personenzustand_Ident DROP CONSTRAINT DIM_Personenzustand_Ident_PK;

ALTER TABLE DIM_Personenzustand_negativ DROP CONSTRAINT DIM_Personenzustand_negativ_PK;

ALTER TABLE DIM_Personenzustand_positiv DROP CONSTRAINT DIM_Personenzustand_positiv_PK;

ALTER TABLE DIM_Postleitzahl DROP CONSTRAINT DIM_Postleitzahl_PK;

ALTER TABLE DIM_Produkt DROP CONSTRAINT DIM_Produkt_PK;

ALTER TABLE DIM_Quartal DROP CONSTRAINT DIM_Quartal_PK;

ALTER TABLE DIM_RD_Ebene1 DROP CONSTRAINT DIM_RD_Ebene1_PK;

ALTER TABLE DIM_RD_Ebene2 DROP CONSTRAINT DIM_RD_Ebene2_PK;

ALTER TABLE DIM_RD_Ebene3 DROP CONSTRAINT DIM_RD_Ebene3_PK;

ALTER TABLE DIM_RechtswegEbene DROP CONSTRAINT DIM_RechtswegEbene_PK;

ALTER TABLE DIM_Region DROP CONSTRAINT DIM_Region_PK;

ALTER TABLE DIM_Regionaldirektion DROP CONSTRAINT DIM_Regionaldirektion_PK;

ALTER TABLE DIM_Regressart DROP CONSTRAINT DIM_Regressart_PK;

ALTER TABLE DIM_Regressgrund DROP CONSTRAINT DIM_Regressgrund_PK;

ALTER TABLE DIM_Regresspotential DROP CONSTRAINT DIM_Regresspotential_PK;

ALTER TABLE DIM_Regressstatus DROP CONSTRAINT DIM_Regressstatus_PK;

ALTER TABLE DIM_RueckstAenderungsgrund DROP CONSTRAINT DIM_RueckstAenderungsgrund_PK;

ALTER TABLE DIM_RueckstSetzungsmethode DROP CONSTRAINT DIM_RueckstSetzungsmethode_PK;

ALTER TABLE DIM_RueckstellungsBetragsart DROP CONSTRAINT DIM_RueckstBetragsart_PK;

ALTER TABLE DIM_Rueckversicherung DROP CONSTRAINT DIM_Rueckversicherung_PK;

ALTER TABLE DIM_Rueckversicherungsart DROP CONSTRAINT DIM_Rueckversicherungsart_PK;

ALTER TABLE DIM_SBGruppe DROP CONSTRAINT DIM_zust_SBGruppe_PK;

ALTER TABLE DIM_SammelereignisKlasse DROP CONSTRAINT DIM_SammelereignisKlasse_PK;

ALTER TABLE DIM_SatzartDerZahlung DROP CONSTRAINT DIM_SatzartDerZahlung_PK;

ALTER TABLE DIM_SchadenKomplexitaet DROP CONSTRAINT DIM_SchadenKomplexitaet_PK;

ALTER TABLE DIM_SchadenSteuerung DROP CONSTRAINT DIM_SchadenSteuerung_PK;

ALTER TABLE DIM_Schaden_Besonderheit DROP CONSTRAINT DIM_Schaden_Besonderheit_PK;

ALTER TABLE DIM_Schadenfallart DROP CONSTRAINT DIM_Schadenfallart_PK;

ALTER TABLE DIM_Schadenrueckstellungsart DROP CONSTRAINT DIM_Schadenrueckstellart_PK;

ALTER TABLE DIM_Schadenstatus DROP CONSTRAINT DIM_Schadenstatus_PK;

ALTER TABLE DIM_Schadenursache DROP CONSTRAINT DIM_Schadenursache_PK;

ALTER TABLE DIM_Schuldigkeit DROP CONSTRAINT DIM_Schuldigkeit_PK;

ALTER TABLE DIM_Sparte DROP CONSTRAINT DIM_Sparte_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene1 DROP CONSTRAINT DIM_Spartenbuendel_Ebene1_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene2 DROP CONSTRAINT DIM_Spartenbuendel_Ebene2_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene3 DROP CONSTRAINT DIM_Spartenbuendel_Ebene3_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene4 DROP CONSTRAINT DIM_Spartenbuendel_Ebene4_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene5 DROP CONSTRAINT DIM_Spartenbuendel_Ebene5_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene6 DROP CONSTRAINT DIM_Spartenbuendel_Ebene6_PK;

ALTER TABLE DIM_Spartenbuendel_Ebene7 DROP CONSTRAINT DIM_Spartenbuendel_Ebene7_PK;

ALTER TABLE DIM_Spartenkennziffer DROP CONSTRAINT DIM_Spartenkennziffer_PK;

ALTER TABLE DIM_Teilschadenart DROP CONSTRAINT DIM_Teilschadenart_PK;

ALTER TABLE DIM_Teilsparte DROP CONSTRAINT DIM_Teilsparte_PK;

ALTER TABLE DIM_Telefonwerbung DROP CONSTRAINT DIM_Telefonwerbung_PK;

ALTER TABLE DIM_UKZ DROP CONSTRAINT DIM_UKZ_PK;

ALTER TABLE DIM_Unfallart DROP CONSTRAINT DET_Unfallart_PK;

ALTER TABLE DIM_Verfahrensart DROP CONSTRAINT DIM_Verfahrensart_PK;

ALTER TABLE DIM_Verfahrensgegenstand DROP CONSTRAINT DIM_Verfahrensgegenstand_PK;

ALTER TABLE DIM_Verfahrensstatus DROP CONSTRAINT DIM_Verfahrensstatus_PK;

ALTER TABLE DIM_Verletzung DROP CONSTRAINT DET_Verletzung_PK;

ALTER TABLE DIM_Verletzung_Koerperteil DROP CONSTRAINT DET_Verletzung_Koerperteil_PK;

ALTER TABLE DIM_Versicherungsart DROP CONSTRAINT DIM_Versicherungsart_PK;

ALTER TABLE DIM_Vertragsart DROP CONSTRAINT DIM_Vertragsmerkmale_PK;

ALTER TABLE DIM_Vollmachtsstufe DROP CONSTRAINT DIM_Vollmachtsstufe_PK;

ALTER TABLE DIM_Waehrung DROP CONSTRAINT DIM_Waehrung_PK;

ALTER TABLE DIM_Wagnisart DROP CONSTRAINT DIM_Wagnisart_PK;

ALTER TABLE DIM_Werbeunterdrueckung DROP CONSTRAINT DIM_Werbeunterdrueckung_PK;

ALTER TABLE DIM_Woche DROP CONSTRAINT D_Woche_PK;

ALTER TABLE DIM_ZahlungStatus DROP CONSTRAINT DIM_ZahlungStatus_PK;

ALTER TABLE DIM_Zahlungsart DROP CONSTRAINT DIM_Zahlungsart_PK;

ALTER TABLE DIM_Zahlungsgrund DROP CONSTRAINT DIM_Zahlungsgrund_PK;

ALTER TABLE DIM_ZahlungsgrundGruppe DROP CONSTRAINT DIM_ZahlungsgrundGruppe_PK;

ALTER TABLE DIM_ZahlungspflichtigerArt DROP CONSTRAINT DIM_ZahlungspflichtigerArt_PK;

ALTER TABLE DIM_Zahlweg DROP CONSTRAINT DIM_Zahlweg_PK;

ALTER TABLE DIM_Zeitzone DROP CONSTRAINT DIM_Zeitzone_PK;

ALTER TABLE DIM_vereinbDatenschutz DROP CONSTRAINT DIM_vereinbDatenschutz_PK;

ALTER TABLE DMK_BeschObjektFlags DROP CONSTRAINT DMK_BeschObjektFlags_PK;

ALTER TABLE DMK_BeschObjektMerkmale DROP CONSTRAINT DMK_BeschObjektMerkmale_PK;

ALTER TABLE DMK_BilRueckstMerkmale DROP CONSTRAINT DMK_BilRueckstMerkmale_PK;

ALTER TABLE DMK_GerichtsInstMerkmale DROP CONSTRAINT DMK_GerichtsInstMerkmale_PK;

ALTER TABLE DMK_GerichtsverfMerkmale DROP CONSTRAINT DMK_GerichtsverfahrenMerkm_PK;

ALTER TABLE DMK_Partnermerkmale DROP CONSTRAINT DMK_Partnermerkmale_PK;

ALTER TABLE DMK_RegressMerkmale DROP CONSTRAINT DMK_RegressMerkmale_PK;

ALTER TABLE DMK_SSP_RVPMerkmale DROP CONSTRAINT DMK_SSP_RVPMerkmale_PK;

ALTER TABLE DMK_SchadenFlags DROP CONSTRAINT DMK_Schadenflags_PK;

ALTER TABLE DMK_Schadenmerkmale DROP CONSTRAINT DMK_Schadenmerkmale_PK;

ALTER TABLE DMK_Schadenortmerkmale DROP CONSTRAINT DMK_Schadenortmerkmale_PK;

ALTER TABLE DMK_SchadenrueckstMerkmale DROP CONSTRAINT DMK_SchadenrueckstMerkmale_PK;

ALTER TABLE DMK_Schadenursache_Gefahr DROP CONSTRAINT DMK_Schadenursache_Gefahr_PK;

ALTER TABLE DMK_TeilschadenFlags DROP CONSTRAINT DMK_TeilschadenFlags_PK;

ALTER TABLE DMK_TeilschadenMerkmale DROP CONSTRAINT DMK_TeilschadenMerkmale_PK;

ALTER TABLE DMK_VertragsdeckMerkmale DROP CONSTRAINT DMK_VertragsdeckMerkmale_PK;

ALTER TABLE DMK_Vertragsmerkmale DROP CONSTRAINT DMK_Vertragsmerkmale_PK;

ALTER TABLE DMK_ZhlgFordDetMerkmale DROP CONSTRAINT DMK_ZhlgFordDetMerkmale_PK;

ALTER TABLE DMK_ZhlgFordFlags DROP CONSTRAINT DMK_ZhlgFordFlags_PK;

ALTER TABLE DMK_ZhlgFordMerkmale DROP CONSTRAINT DMK_ZhlgFordMerkmale_PK;

ALTER TABLE F_Besch_Objekt DROP CONSTRAINT F_Besch_Objekt_PK;

ALTER TABLE F_Bilanzrueckstellungen DROP CONSTRAINT F_Bilanzrueckstellungen_PK;

ALTER TABLE F_GerichtsInstanz DROP CONSTRAINT F_GerichtsInstanz_PK;

ALTER TABLE F_Gerichtsverfahren DROP CONSTRAINT F_Gerichtsverfahren_PK;

ALTER TABLE F_Regress DROP CONSTRAINT F_Regress_PK;

ALTER TABLE F_RegressPosition DROP CONSTRAINT F_RegressPos_PK;

ALTER TABLE F_SSP_RVP DROP CONSTRAINT F_SSP_RVP_PK;

ALTER TABLE F_Schaden DROP CONSTRAINT F_Schaden_PK;

ALTER TABLE F_Schadenrueckstellungen DROP CONSTRAINT F_Schadenrueckstellungen_PK;

ALTER TABLE F_Teilschaden DROP CONSTRAINT F_Teilschaden_PK;

ALTER TABLE F_Verl_Person DROP CONSTRAINT F_Verl_Pers_PK;

ALTER TABLE F_Zhlg_Ford DROP CONSTRAINT F_Zahlung_PK;

ALTER TABLE F_Zhlg_Ford_Detail DROP CONSTRAINT F_Zhlg_Ford_Detail_PK;

ALTER TABLE R_SSP_RVP_Ausw_indiv DROP CONSTRAINT R_SSP_RVP_Ausw_indiv_PK;

ALTER TABLE R_Schaden_Apraxa_RA DROP CONSTRAINT R_Schaden_Apraxa_RA_PK;

ALTER TABLE R_Schaden_Eigener_RA DROP CONSTRAINT R_Schaden_Eigener_RA;

ALTER TABLE R_Schaden_RVEreign DROP CONSTRAINT R_Schaden_RVEreign_PK;

ALTER TABLE R_Schaden_Regbeauftragter DROP CONSTRAINT R_Schaden_Regbeauftragter_PK;

ALTER TABLE R_Schaden_VerletztePerson DROP CONSTRAINT R_Schaden_VerletztePerson_PK;

ALTER TABLE R_Spartenliste_Ausw_indiv DROP CONSTRAINT R_Spartenliste_Ausw_indiv_PK;

ALTER TABLE R_Teilschaden_Handwerker DROP CONSTRAINT R_Teilschaden_Handwerker_PK;

ALTER TABLE R_Teilschaden_Regbeauftragter DROP CONSTRAINT R_Teilschaden_Regbeauftr_PK;

ALTER TABLE R_Teilschaden_Sachverst DROP CONSTRAINT R_Teilschaden_Sachverst_PK;

ALTER TABLE R_Teilschaden_VerletztePerson DROP CONSTRAINT R_Teilschaden_VerlPerson_PK;

DROP TABLE DET_Besch_Objekt;

DROP TABLE DET_GerichtsInstanz;

DROP TABLE DET_Gerichtsverfahren;

DROP TABLE DET_Ladelauf;

DROP TABLE DET_NatKatEreignis;

DROP TABLE DET_Partner;

DROP TABLE DET_RV_NatKatEreignis;

DROP TABLE DET_Regress;

DROP TABLE DET_RegressPosition;

DROP TABLE DET_Schaden;

DROP TABLE DET_Schadenort;

DROP TABLE DET_Schadenrueckstellungen;

DROP TABLE DET_Teilschaden;

DROP TABLE DET_Verl_Person;

DROP TABLE DET_Vertrag;

DROP TABLE DET_Vertragsdeckung;

DROP TABLE DET_ZahlungForderung;

DROP TABLE DET_ZhlgFordDetail;

DROP TABLE DIM_ABCV_Bescheinigung;

DROP TABLE DIM_Abgabestatus;

DROP TABLE DIM_AbschlussVerfahren;

DROP TABLE DIM_AusgangVerfahren;

DROP TABLE DIM_Auswertung_individuell;

DROP TABLE DIM_Auswertungsbereich;

DROP TABLE DIM_Bedingungsschluessel;

DROP TABLE DIM_Berufung_Rev_durch;

DROP TABLE DIM_Beschaedigungsgrad;

DROP TABLE DIM_Beschaedigungstyp;

DROP TABLE DIM_Bestandsbeziehungsart;

DROP TABLE DIM_Betragstyp;

DROP TABLE DIM_Bewertung_VTP;

DROP TABLE DIM_BruttoNetto;

DROP TABLE DIM_CodeOrt;

DROP TABLE DIM_CodeOrtsteil;

DROP TABLE DIM_Datum;

DROP TABLE DIM_Deckungsart;

DROP TABLE DIM_DeckungsschluesselK;

DROP TABLE DIM_DeckungsschluesselKH;

DROP TABLE DIM_Deckungsstatus;

DROP TABLE DIM_Dunkelverarbeitung;

DROP TABLE DIM_Ereignisart;

DROP TABLE DIM_Ereignisklasse;

DROP TABLE DIM_Erledigungsart;

DROP TABLE DIM_Erledigungszeitpkt_im_Verf;

DROP TABLE DIM_Erstkontakt;

DROP TABLE DIM_Eskalationsstufe;

DROP TABLE DIM_Fachgebiet;

DROP TABLE DIM_Fallzahlungspostentyp;

DROP TABLE DIM_Familienstand;

DROP TABLE DIM_Gefahr;

DROP TABLE DIM_Geltungsbereich;

DROP TABLE DIM_Gerichtsbarkeit;

DROP TABLE DIM_GeschaeftsbezFirma;

DROP TABLE DIM_GeschaeftsbezFirmaTarif;

DROP TABLE DIM_GeschaeftsbezTaetigkTarif;

DROP TABLE DIM_GeschaeftsbezTaetigkeit;

DROP TABLE DIM_Geschlecht;

DROP TABLE DIM_Grosskunde;

DROP TABLE DIM_Haftung;

DROP TABLE DIM_Halbjahr;

DROP TABLE DIM_Instanzstatus;

DROP TABLE DIM_JNKENNZ;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_KlassifizierungRueckst;

DROP TABLE DIM_KlassifizierungSchluss;

DROP TABLE DIM_Laenderkennzeichen;

DROP TABLE DIM_Leistungsart;

DROP TABLE DIM_Meldeweg;

DROP TABLE DIM_Monat;

DROP TABLE DIM_Nationalitaet;

DROP TABLE DIM_ObjektArt;

DROP TABLE DIM_Partner_Objekttyp;

DROP TABLE DIM_Partnergemeinschaftsart;

DROP TABLE DIM_Partnertyp;

DROP TABLE DIM_Personenzustand_Ident;

DROP TABLE DIM_Personenzustand_negativ;

DROP TABLE DIM_Personenzustand_positiv;

DROP TABLE DIM_Postleitzahl;

DROP TABLE DIM_Produkt;

DROP TABLE DIM_Quartal;

DROP TABLE DIM_RD_Ebene1;

DROP TABLE DIM_RD_Ebene2;

DROP TABLE DIM_RD_Ebene3;

DROP TABLE DIM_RechtswegEbene;

DROP TABLE DIM_Region;

DROP TABLE DIM_Regionaldirektion;

DROP TABLE DIM_Regressart;

DROP TABLE DIM_Regressgrund;

DROP TABLE DIM_Regresspotential;

DROP TABLE DIM_Regressstatus;

DROP TABLE DIM_RueckstAenderungsgrund;

DROP TABLE DIM_RueckstSetzungsmethode;

DROP TABLE DIM_RueckstellungsBetragsart;

DROP TABLE DIM_Rueckversicherung;

DROP TABLE DIM_Rueckversicherungsart;

DROP TABLE DIM_SBGruppe;

DROP TABLE DIM_SammelereignisKlasse;

DROP TABLE DIM_SatzartDerZahlung;

DROP TABLE DIM_SchadenKomplexitaet;

DROP TABLE DIM_SchadenSteuerung;

DROP TABLE DIM_Schaden_Besonderheit;

DROP TABLE DIM_Schadenfallart;

DROP TABLE DIM_Schadenrueckstellungsart;

DROP TABLE DIM_Schadenstatus;

DROP TABLE DIM_Schadenursache;

DROP TABLE DIM_Schuldigkeit;

DROP TABLE DIM_Sparte;

DROP TABLE DIM_Spartenbuendel_Ebene1;

DROP TABLE DIM_Spartenbuendel_Ebene2;

DROP TABLE DIM_Spartenbuendel_Ebene3;

DROP TABLE DIM_Spartenbuendel_Ebene4;

DROP TABLE DIM_Spartenbuendel_Ebene5;

DROP TABLE DIM_Spartenbuendel_Ebene6;

DROP TABLE DIM_Spartenbuendel_Ebene7;

DROP TABLE DIM_Spartenkennziffer;

DROP TABLE DIM_Teilschadenart;

DROP TABLE DIM_Teilsparte;

DROP TABLE DIM_Telefonwerbung;

DROP TABLE DIM_UKZ;

DROP TABLE DIM_Unfallart;

DROP TABLE DIM_Verfahrensart;

DROP TABLE DIM_Verfahrensgegenstand;

DROP TABLE DIM_Verfahrensstatus;

DROP TABLE DIM_Verletzung;

DROP TABLE DIM_Verletzung_Koerperteil;

DROP TABLE DIM_Versicherungsart;

DROP TABLE DIM_Vertragsart;

DROP TABLE DIM_Vollmachtsstufe;

DROP TABLE DIM_Waehrung;

DROP TABLE DIM_Wagnisart;

DROP TABLE DIM_Werbeunterdrueckung;

DROP TABLE DIM_Woche;

DROP TABLE DIM_ZahlungStatus;

DROP TABLE DIM_Zahlungsart;

DROP TABLE DIM_Zahlungsgrund;

DROP TABLE DIM_ZahlungsgrundGruppe;

DROP TABLE DIM_ZahlungspflichtigerArt;

DROP TABLE DIM_Zahlweg;

DROP TABLE DIM_Zeitzone;

DROP TABLE DIM_vereinbDatenschutz;

DROP TABLE DMK_BeschObjektFlags;

DROP TABLE DMK_BeschObjektMerkmale;

DROP TABLE DMK_BilRueckstMerkmale;

DROP TABLE DMK_GerichtsInstMerkmale;

DROP TABLE DMK_GerichtsverfMerkmale;

DROP TABLE DMK_Partnermerkmale;

DROP TABLE DMK_RegressMerkmale;

DROP TABLE DMK_SSP_RVPMerkmale;

DROP TABLE DMK_SchadenFlags;

DROP TABLE DMK_Schadenmerkmale;

DROP TABLE DMK_Schadenortmerkmale;

DROP TABLE DMK_SchadenrueckstMerkmale;

DROP TABLE DMK_Schadenursache_Gefahr;

DROP TABLE DMK_TeilschadenFlags;

DROP TABLE DMK_TeilschadenMerkmale;

DROP TABLE DMK_VertragsdeckMerkmale;

DROP TABLE DMK_Vertragsmerkmale;

DROP TABLE DMK_ZhlgFordDetMerkmale;

DROP TABLE DMK_ZhlgFordFlags;

DROP TABLE DMK_ZhlgFordMerkmale;

DROP TABLE F_Besch_Objekt;

DROP TABLE F_Bilanzrueckstellungen;

DROP TABLE F_GerichtsInstanz;

DROP TABLE F_Gerichtsverfahren;

DROP TABLE F_Regress;

DROP TABLE F_RegressPosition;

DROP TABLE F_SSP_RVP;

DROP TABLE F_Schaden;

DROP TABLE F_Schadenrueckstellungen;

DROP TABLE F_Teilschaden;

DROP TABLE F_Verl_Person;

DROP TABLE F_Zhlg_Ford;

DROP TABLE F_Zhlg_Ford_Detail;

DROP TABLE R_SSP_RVP_Ausw_indiv;

DROP TABLE R_Schaden_Apraxa_RA;

DROP TABLE R_Schaden_Eigener_RA;

DROP TABLE R_Schaden_RVEreign;

DROP TABLE R_Schaden_Regbeauftragter;

DROP TABLE R_Schaden_VerletztePerson;

DROP TABLE R_Spartenliste_Ausw_indiv;

DROP TABLE R_Teilschaden_Handwerker;

DROP TABLE R_Teilschaden_Regbeauftragter;

DROP TABLE R_Teilschaden_Sachverst;

DROP TABLE R_Teilschaden_VerletztePerson;

DROP TABLE Releasestand;

