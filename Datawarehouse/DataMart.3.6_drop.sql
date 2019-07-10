--<ScriptOptions statementTerminator=";"/>
-- Version 22238

ALTER TABLE DET_Besch_Objekt DROP CONSTRAINT DET_Besch_Objekt_PK;

ALTER TABLE DET_GerichtsInstanz DROP CONSTRAINT DET_GerichtsInstanz_PK;

ALTER TABLE DET_Gerichtsverf DROP CONSTRAINT DET_Gerichtsverfahren_PK;

ALTER TABLE DET_Ges_Schaden_Aend DROP CONSTRAINT DET_Ges_Schaden_Aend_PK;

ALTER TABLE DET_Ladelauf DROP CONSTRAINT DET_Ladelauf_PK;

ALTER TABLE DET_Last_Load DROP CONSTRAINT DET_Last_Load_PK;

ALTER TABLE DET_NatKatEreignis DROP CONSTRAINT DET_NatKatEreignis_PK;

ALTER TABLE DET_Partner DROP CONSTRAINT DET_Partner_PK;

ALTER TABLE DET_RV_NatKatEreign DROP CONSTRAINT DET_RV_NatKat_Ereignis_PK;

ALTER TABLE DET_Regress DROP CONSTRAINT DET_Regress_PK;

ALTER TABLE DET_RegressPosition DROP CONSTRAINT DET_RegressPosition_PK;

ALTER TABLE DET_Schaden DROP CONSTRAINT DET_Schaden_PK;

ALTER TABLE DET_Schadenort DROP CONSTRAINT DET_Schadenort_PK;

ALTER TABLE DET_Schadenrueckst DROP CONSTRAINT DET_Schadenrueckstellungen_PK;

ALTER TABLE DET_Teilschaden DROP CONSTRAINT DET_Teilschaden_PK;

ALTER TABLE DET_Verl_Person DROP CONSTRAINT DET_Verl_Person_PK;

ALTER TABLE DET_Vertrag DROP CONSTRAINT DET_Vertrag_PK;

ALTER TABLE DET_Vertragsdeckung DROP CONSTRAINT DET_Vertragsdeckung_PK;

ALTER TABLE DET_ZahlungForderung DROP CONSTRAINT DET_ZahlungForderung_PK;

ALTER TABLE DET_ZhlgFordDetail DROP CONSTRAINT DET_ZhlgFordDetail_PK;

ALTER TABLE DIM_Abgabestatus DROP CONSTRAINT DIM_Abgabestatus_PK;

ALTER TABLE DIM_AbschlussVerf DROP CONSTRAINT DET_AbschlussVerfahren_PK;

ALTER TABLE DIM_Akademiker DROP CONSTRAINT DIM_Akademiker_PK;

ALTER TABLE DIM_ArtGerichtlicheMahn DROP CONSTRAINT DIM_ArtGerichtlicheMahn_PK;

ALTER TABLE DIM_Art_Schadenst DROP CONSTRAINT DIM_Art_Schadenst_PK;

ALTER TABLE DIM_AusgangVerfahren DROP CONSTRAINT DET_AusgangVerfahren_PK;

ALTER TABLE DIM_Auswertung_indiv DROP CONSTRAINT DIM_Auswertung_individuell_PK;

ALTER TABLE DIM_Auswertungsber DROP CONSTRAINT DET_Auswertungsbereich_PK;

ALTER TABLE DIM_Bedingungsschl DROP CONSTRAINT DIM_Bedingungsschluessel_PK;

ALTER TABLE DIM_BerufungRevdurch DROP CONSTRAINT DIM_Berufung_Rev_durch_PK;

ALTER TABLE DIM_BeschaedigGrad DROP CONSTRAINT DIM_Beschaedigungsgrad_PK;

ALTER TABLE DIM_BeschaedigTyp DROP CONSTRAINT DIM_Beschaedigungstyp_PK;

ALTER TABLE DIM_BestandsbezArt DROP CONSTRAINT DIM_Bestandsbeziehungsart_PK;

ALTER TABLE DIM_Betragstyp DROP CONSTRAINT DIM_Betragstyp_PK;

ALTER TABLE DIM_Bewertung_VTP DROP CONSTRAINT DIM_Bewertung_VTP_PK;

ALTER TABLE DIM_Bilanz_Meldeper DROP CONSTRAINT DIM_Bilanz_Meldeperiode_PK;

ALTER TABLE DIM_BruttoNetto DROP CONSTRAINT DIM_BruttoNetto_PK;

ALTER TABLE DIM_CodeOrt DROP CONSTRAINT DIM_CodeOrt_PK;

ALTER TABLE DIM_CodeOrtsteil DROP CONSTRAINT DIM_CodeOrtsteil_PK;

ALTER TABLE DIM_Datum DROP CONSTRAINT DIM_Datum_PK;

ALTER TABLE DIM_Deckungsart DROP CONSTRAINT DIM_Deckungsart_PK;

ALTER TABLE DIM_DeckungsschlK DROP CONSTRAINT DIM_DeckungsschluesselK_PK;

ALTER TABLE DIM_DeckungsschlKH DROP CONSTRAINT DIM_DeckungsschluesselKH_PK;

ALTER TABLE DIM_Deckungsstatus DROP CONSTRAINT DIM_Deckungsstatus_PK;

ALTER TABLE DIM_Dunkelverarbeitg DROP CONSTRAINT DIM_Dunkelverarbeitung_PK;

ALTER TABLE DIM_Ereignisart DROP CONSTRAINT DIM_Ereignisart_PK;

ALTER TABLE DIM_Ereignisklasse DROP CONSTRAINT DIM_Ereignisklasse_PK;

ALTER TABLE DIM_Erledig_im_Verf DROP CONSTRAINT DIM_Erledigungszeitpkt_PK;

ALTER TABLE DIM_Erledigungsart DROP CONSTRAINT DIM_Erledigungsart_PK;

ALTER TABLE DIM_Eskalationsstufe DROP CONSTRAINT DIM_Eskalationsstufe_PK;

ALTER TABLE DIM_Fachgebiet DROP CONSTRAINT DIM_Fachgebiet_PK;

ALTER TABLE DIM_FallzahlPostTyp DROP CONSTRAINT DIM_Fallzahlungspostentyp_PK;

ALTER TABLE DIM_Familienstand DROP CONSTRAINT DIM_Familienstand_PK;

ALTER TABLE DIM_Gefahr DROP CONSTRAINT DIM_Gefahr_PK;

ALTER TABLE DIM_Geltungsbereich DROP CONSTRAINT DET_Geltungsbereich_PK;

ALTER TABLE DIM_Gerichtsbarkeit DROP CONSTRAINT DIM_Gerichtsbarkeit_PK;

ALTER TABLE DIM_GeschBezFirma DROP CONSTRAINT DIM_GeschaeftsbezFirma_PK;

ALTER TABLE DIM_GeschBezTaetigk DROP CONSTRAINT DIM_GeschaeftsbezTaetigkeit_PK;

ALTER TABLE DIM_Geschlecht DROP CONSTRAINT DIM_Geschlecht_PK;

ALTER TABLE DIM_Grosskunde DROP CONSTRAINT DIM_Grosskunde_PK;

ALTER TABLE DIM_Haftung DROP CONSTRAINT DIM_Haftung_PK;

ALTER TABLE DIM_Halbjahr DROP CONSTRAINT DIM_Halbjahr_PK;

ALTER TABLE DIM_Instanzstatus DROP CONSTRAINT DIM_Instanzstatus_PK;

ALTER TABLE DIM_JNKENNZ DROP CONSTRAINT LKP_KENNZ_PK;

ALTER TABLE DIM_Jahr DROP CONSTRAINT DIM_Jahr_PK;

ALTER TABLE DIM_KlassifizRueckst DROP CONSTRAINT DIM_Klassifizierungsart_PK;

ALTER TABLE DIM_KlassifizSchluss DROP CONSTRAINT DIM_KlassifizierungSchluss_PK;

ALTER TABLE DIM_Land_Nation DROP CONSTRAINT DIM_Laenderkennzeichen_PK;

ALTER TABLE DIM_Leistungsart DROP CONSTRAINT DIM_Leistungsart_PK;

ALTER TABLE DIM_Meldeweg DROP CONSTRAINT DIM_Meldeweg_PK;

ALTER TABLE DIM_Monat DROP CONSTRAINT DIM_Monat_PK;

ALTER TABLE DIM_ObjektArt DROP CONSTRAINT DIM_ObjektArt_PK;

ALTER TABLE DIM_PartnerObjekttyp DROP CONSTRAINT DIM_Partner_Objekttyp_PK;

ALTER TABLE DIM_PartnergemArt DROP CONSTRAINT DIM_Partnergemeinschaftsart_PK;

ALTER TABLE DIM_Partnertyp DROP CONSTRAINT DIM_Partnertyp_PK;

ALTER TABLE DIM_Postleitzahl DROP CONSTRAINT DIM_Postleitzahl_PK;

ALTER TABLE DIM_Produkt DROP CONSTRAINT DIM_Produkt_PK;

ALTER TABLE DIM_Quartal DROP CONSTRAINT DIM_Quartal_PK;

ALTER TABLE DIM_RD_Ebene1 DROP CONSTRAINT DIM_RD_Ebene1_PK;

ALTER TABLE DIM_RD_Ebene2 DROP CONSTRAINT DIM_RD_Ebene2_PK;

ALTER TABLE DIM_RD_Ebene3 DROP CONSTRAINT DIM_RD_Ebene3_PK;

ALTER TABLE DIM_Rechtsform DROP CONSTRAINT DIM_Rechtsform_PK;

ALTER TABLE DIM_RechtswegEbene DROP CONSTRAINT DIM_RechtswegEbene_PK;

ALTER TABLE DIM_Region DROP CONSTRAINT DIM_Region_PK;

ALTER TABLE DIM_Regionaldir DROP CONSTRAINT DIM_Regionaldirektion_PK;

ALTER TABLE DIM_Regressart DROP CONSTRAINT DIM_Regressart_PK;

ALTER TABLE DIM_Regressgrund DROP CONSTRAINT DIM_Regressgrund_PK;

ALTER TABLE DIM_Regresspotential DROP CONSTRAINT DIM_Regresspotential_PK;

ALTER TABLE DIM_Regressstatus DROP CONSTRAINT DIM_Regressstatus_PK;

ALTER TABLE DIM_RueckstAendGrund DROP CONSTRAINT DIM_RueckstAenderungsgrund_PK;

ALTER TABLE DIM_RueckstBetrArt DROP CONSTRAINT DIM_RueckstBetragsart_PK;

ALTER TABLE DIM_RueckstSetzMeth DROP CONSTRAINT DIM_RueckstSetzungsmethode_PK;

ALTER TABLE DIM_RueckversichArt DROP CONSTRAINT DIM_Rueckversicherungsart_PK;

ALTER TABLE DIM_Rueckversicherg DROP CONSTRAINT DIM_Rueckversicherung_PK;

ALTER TABLE DIM_SBGruppe DROP CONSTRAINT DIM_zust_SBGruppe_PK;

ALTER TABLE DIM_SammelereignisKl DROP CONSTRAINT DIM_SammelereignisKlasse_PK;

ALTER TABLE DIM_Satzart_Zahlung DROP CONSTRAINT DIM_SatzartDerZahlung_PK;

ALTER TABLE DIM_SchadenKomplexit DROP CONSTRAINT DIM_SchadenKomplexitaet_PK;

ALTER TABLE DIM_SchadenSteuerung DROP CONSTRAINT DIM_SchadenSteuerung_PK;

ALTER TABLE DIM_Schaden_Besonder DROP CONSTRAINT DIM_Schaden_Besonderheit_PK;

ALTER TABLE DIM_Schadenfallart DROP CONSTRAINT DIM_Schadenfallart_PK;

ALTER TABLE DIM_Schadenstatus DROP CONSTRAINT DIM_Schadenstatus_PK;

ALTER TABLE DIM_Schadenurs_SAP DROP CONSTRAINT DIM_Schadenurs_SAP_PK;

ALTER TABLE DIM_Schadenursache DROP CONSTRAINT DIM_Schadenursache_PK;

ALTER TABLE DIM_SchadrueckstArt DROP CONSTRAINT DIM_Schadenrueckstellart_PK;

ALTER TABLE DIM_Schuldigkeit DROP CONSTRAINT DIM_Schuldigkeit_PK;

ALTER TABLE DIM_Schutzkennz DROP CONSTRAINT DIM_Schutzkennzeichen_PK;

ALTER TABLE DIM_Sparte DROP CONSTRAINT DIM_Sparte_PK;

ALTER TABLE DIM_Spartenbuendel_1 DROP CONSTRAINT DIM_Spartenbuendel_Ebene1_PK;

ALTER TABLE DIM_Spartenbuendel_2 DROP CONSTRAINT DIM_Spartenbuendel_Ebene2_PK;

ALTER TABLE DIM_Spartenbuendel_3 DROP CONSTRAINT DIM_Spartenbuendel_Ebene3_PK;

ALTER TABLE DIM_Spartenbuendel_4 DROP CONSTRAINT DIM_Spartenbuendel_Ebene4_PK;

ALTER TABLE DIM_Spartenbuendel_5 DROP CONSTRAINT DIM_Spartenbuendel_Ebene5_PK;

ALTER TABLE DIM_Spartenbuendel_6 DROP CONSTRAINT DIM_Spartenbuendel_Ebene6_PK;

ALTER TABLE DIM_Spartenbuendel_7 DROP CONSTRAINT DIM_Spartenbuendel_Ebene7_PK;

ALTER TABLE DIM_Spartenkennziff DROP CONSTRAINT DIM_Spartenkennziffer_PK;

ALTER TABLE DIM_TV_Projekt DROP CONSTRAINT DIM_TVProjekte_PK;

ALTER TABLE DIM_Teilschadenart DROP CONSTRAINT DIM_Teilschadenart_PK;

ALTER TABLE DIM_Teilsparte DROP CONSTRAINT DIM_Teilsparte_PK;

ALTER TABLE DIM_Titel DROP CONSTRAINT DIM_Titel_PK;

ALTER TABLE DIM_UKZ DROP CONSTRAINT DIM_UKZ_PK;

ALTER TABLE DIM_Unfallart DROP CONSTRAINT DET_Unfallart_PK;

ALTER TABLE DIM_Verfahrensart DROP CONSTRAINT DIM_Verfahrensart_PK;

ALTER TABLE DIM_Verfahrensggst DROP CONSTRAINT DIM_Verfahrensgegenstand_PK;

ALTER TABLE DIM_Verfahrensstatus DROP CONSTRAINT DIM_Verfahrensstatus_PK;

ALTER TABLE DIM_VerletzgKoerpert DROP CONSTRAINT DET_Verletzung_Koerperteil_PK;

ALTER TABLE DIM_Verletzung DROP CONSTRAINT DET_Verletzung_PK;

ALTER TABLE DIM_Versicherungsart DROP CONSTRAINT DIM_Versicherungsart_PK;

ALTER TABLE DIM_Vertragsart DROP CONSTRAINT DIM_Vertragsmerkmale_PK;

ALTER TABLE DIM_Vollmachtsstufe DROP CONSTRAINT DIM_Vollmachtsstufe_PK;

ALTER TABLE DIM_Waehrung DROP CONSTRAINT DIM_Waehrung_PK;

ALTER TABLE DIM_Wagnisart DROP CONSTRAINT DIM_Wagnisart_PK;

ALTER TABLE DIM_Werbeunterdrueck DROP CONSTRAINT DIM_Werbeunterdrueckung_PK;

ALTER TABLE DIM_Woche DROP CONSTRAINT D_Woche_PK;

ALTER TABLE DIM_ZahlgspflichtArt DROP CONSTRAINT DIM_ZahlungspflichtigerArt_PK;

ALTER TABLE DIM_ZahlungStatus DROP CONSTRAINT DIM_ZahlungStatus_PK;

ALTER TABLE DIM_Zahlungsart DROP CONSTRAINT DIM_Zahlungsart_PK;

ALTER TABLE DIM_Zahlungsgrund DROP CONSTRAINT DIM_Zahlungsgrund_PK;

ALTER TABLE DIM_ZahlungsgrundGrp DROP CONSTRAINT DIM_ZahlungsgrundGruppe_PK;

ALTER TABLE DIM_Zahlweg DROP CONSTRAINT DIM_Zahlweg_PK;

ALTER TABLE DIM_Zeitzone DROP CONSTRAINT DIM_Zeitzone_PK;

ALTER TABLE DMK_BeschObjektFlags DROP CONSTRAINT DMK_BeschObjektFlags_PK;

ALTER TABLE DMK_BeschObjektMerkm DROP CONSTRAINT DMK_BeschObjektMerkmale_PK;

ALTER TABLE DMK_BilRueckstMerkm DROP CONSTRAINT DMK_BilRueckstMerkmale_PK;

ALTER TABLE DMK_GeriInstMerkmale DROP CONSTRAINT DMK_GerichtsInstMerkmale_PK;

ALTER TABLE DMK_GeriVerfMerkmale DROP CONSTRAINT DMK_GerichtsverfahrenMerkm_PK;

ALTER TABLE DMK_Partnermerkmale DROP CONSTRAINT DMK_Partnermerkmale_PK;

ALTER TABLE DMK_RegressMerkmale DROP CONSTRAINT DMK_RegressMerkmale_PK;

ALTER TABLE DMK_SSP_RVPMerkmale DROP CONSTRAINT DMK_SSP_RVPMerkmale_PK;

ALTER TABLE DMK_SchadRueckstMerk DROP CONSTRAINT DMK_SchadenrueckstMerkmale_PK;

ALTER TABLE DMK_SchadUrsacheGef DROP CONSTRAINT DMK_SchadUrsacheGef_PK;

ALTER TABLE DMK_SchadenFlags DROP CONSTRAINT DMK_Schadenflags_PK;

ALTER TABLE DMK_SchadenOrtMerkm DROP CONSTRAINT DMK_Schadenortmerkmale_PK;

ALTER TABLE DMK_Schadenmerkm DROP CONSTRAINT DMK_Schadenmerkmale_PK;

ALTER TABLE DMK_TeilschadenFlags DROP CONSTRAINT DMK_TeilschadenFlags_PK;

ALTER TABLE DMK_TeilschadenMerkm DROP CONSTRAINT DMK_TeilschadenMerkmale_PK;

ALTER TABLE DMK_VertragDeckMerkm DROP CONSTRAINT DMK_VertragsdeckMerkmale_PK;

ALTER TABLE DMK_Vertragsmerkmale DROP CONSTRAINT DMK_Vertragsmerkmale_PK;

ALTER TABLE DMK_ZhlgFordDetMerkm DROP CONSTRAINT DMK_ZhlgFordDetMerkmale_PK;

ALTER TABLE DMK_ZhlgFordFlags DROP CONSTRAINT DMK_ZhlgFordFlags_PK;

ALTER TABLE DMK_ZhlgFordMerkmale DROP CONSTRAINT DMK_ZhlgFordMerkmale_PK;

ALTER TABLE F_Besch_Objekt DROP CONSTRAINT F_Besch_Objekt_PK;

ALTER TABLE F_Bilanzrueckstellgn DROP CONSTRAINT F_Bilanzrueckstellungen_PK;

ALTER TABLE F_Forderung DROP CONSTRAINT F_Forderung_PK;

ALTER TABLE F_Forderung_Detail DROP CONSTRAINT F_Forderung_Detail_PK;

ALTER TABLE F_GerichtsInstanz DROP CONSTRAINT F_GerichtsInstanz_PK;

ALTER TABLE F_Gerichtsverfahren DROP CONSTRAINT F_Gerichtsverfahren_PK;

ALTER TABLE F_RV_LAYER DROP CONSTRAINT F_RV_Layer_PK;

ALTER TABLE F_Regionaldirektion DROP CONSTRAINT F_Regionaldirektion_PK;

ALTER TABLE F_Regress DROP CONSTRAINT F_Regress_PK;

ALTER TABLE F_RegressPosition DROP CONSTRAINT F_RegressPos_PK;

ALTER TABLE F_SAP_Kontrollreport DROP CONSTRAINT F_SAP_Kontrollrep_PK;

ALTER TABLE F_SCHADEN_YTD DROP CONSTRAINT F_SCHADEN_YTD_PK;

ALTER TABLE F_SDS_Bilanzwerte DROP CONSTRAINT F_SDS_Bilanzwerte_PK;

ALTER TABLE F_SSP_RVP DROP CONSTRAINT F_SSP_RVP_PK;

ALTER TABLE F_SchadRueckstellgn DROP CONSTRAINT F_Schadenrueckstellungen_PK;

ALTER TABLE F_Schaden DROP CONSTRAINT F_Schaden_PK;

ALTER TABLE F_Schadensteuerung DROP CONSTRAINT F_Schadensteuerung_PK;

ALTER TABLE F_Teilschaden DROP CONSTRAINT F_Teilschaden_PK;

ALTER TABLE F_Telegutachten DROP CONSTRAINT F_Telegutachten_PK;

ALTER TABLE F_Verl_Person DROP CONSTRAINT F_Verl_Pers_PK;

ALTER TABLE F_Zahlung DROP CONSTRAINT F_Zahlung_PK;

ALTER TABLE F_Zahlung_Detail DROP CONSTRAINT F_Zahlung_Detail_PK;

ALTER TABLE R_SSP_RVP_Ausw_indiv DROP CONSTRAINT R_SSP_RVP_Ausw_indiv_PK;

ALTER TABLE R_Schaden_Apraxa_RA DROP CONSTRAINT R_Schaden_Apraxa_RA_PK;

ALTER TABLE R_Schaden_Eigener_RA DROP CONSTRAINT R_Schaden_Eigener_RA;

ALTER TABLE R_Schaden_KLUGO_RA DROP CONSTRAINT R_Schaden_KL_RA;

ALTER TABLE R_Schaden_RVEreign DROP CONSTRAINT R_Schaden_RVEreign_PK;

ALTER TABLE R_Schaden_Regbeauftr DROP CONSTRAINT R_Schaden_Regbeauftragter_PK;

ALTER TABLE R_Schaden_SonstPartn DROP CONSTRAINT R_Schaden_SonstPartn;

ALTER TABLE R_Schaden_VerlPerson DROP CONSTRAINT R_Schaden_VerletztePerson_PK;

ALTER TABLE R_Spartenl_AuswIndiv DROP CONSTRAINT R_Spartenliste_Ausw_indiv_PK;

ALTER TABLE R_Teilsch_Handwerker DROP CONSTRAINT R_Teilschaden_Handwerker_PK;

ALTER TABLE R_Teilsch_Regbeauftr DROP CONSTRAINT R_Teilschaden_Regbeauftr_PK;

ALTER TABLE R_Teilsch_RepBetrieb DROP CONSTRAINT R_Teilschaden_Reparaturbetr_PK;

ALTER TABLE R_Teilsch_Sachverst DROP CONSTRAINT R_Teilschaden_Sachverst_PK;

ALTER TABLE R_Teilsch_ServPartn DROP CONSTRAINT R_Teilsch_ServP_PK;

ALTER TABLE R_Teilsch_VerlPerson DROP CONSTRAINT R_Teilschaden_VerlPerson_PK;

DROP TABLE AGG_SCHADEN_1;

DROP TABLE AGG_SCHADEN_2;

DROP TABLE DET_Besch_Objekt;

DROP TABLE DET_GerichtsInstanz;

DROP TABLE DET_Gerichtsverf;

DROP TABLE DET_Ges_Schaden_Aend;

DROP TABLE DET_Ladelauf;

DROP TABLE DET_Last_Load;

DROP TABLE DET_NatKatEreignis;

DROP TABLE DET_Partner;

DROP TABLE DET_RV_NatKatEreign;

DROP TABLE DET_Regress;

DROP TABLE DET_RegressPosition;

DROP TABLE DET_Schaden;

DROP TABLE DET_Schadenort;

DROP TABLE DET_Schadenrueckst;

DROP TABLE DET_Teilschaden;

DROP TABLE DET_Verl_Person;

DROP TABLE DET_Vertrag;

DROP TABLE DET_Vertragsdeckung;

DROP TABLE DET_ZahlungForderung;

DROP TABLE DET_ZhlgFordDetail;

DROP TABLE DIM_Abgabestatus;

DROP TABLE DIM_AbschlussVerf;

DROP TABLE DIM_Akademiker;

DROP TABLE DIM_ArtGerichtlicheMahn;

DROP TABLE DIM_Art_Schadenst;

DROP TABLE DIM_AusgangVerfahren;

DROP TABLE DIM_Auswertung_indiv;

DROP TABLE DIM_Auswertungsber;

DROP TABLE DIM_Bedingungsschl;

DROP TABLE DIM_BerufungRevdurch;

DROP TABLE DIM_BeschaedigGrad;

DROP TABLE DIM_BeschaedigTyp;

DROP TABLE DIM_BestandsbezArt;

DROP TABLE DIM_Betragstyp;

DROP TABLE DIM_Bewertung_VTP;

DROP TABLE DIM_Bilanz_Meldeper;

DROP TABLE DIM_BruttoNetto;

DROP TABLE DIM_CodeOrt;

DROP TABLE DIM_CodeOrtsteil;

DROP TABLE DIM_Datum;

DROP TABLE DIM_Deckungsart;

DROP TABLE DIM_DeckungsschlK;

DROP TABLE DIM_DeckungsschlKH;

DROP TABLE DIM_Deckungsstatus;

DROP TABLE DIM_Dunkelverarbeitg;

DROP TABLE DIM_Ereignisart;

DROP TABLE DIM_Ereignisklasse;

DROP TABLE DIM_Erledig_im_Verf;

DROP TABLE DIM_Erledigungsart;

DROP TABLE DIM_Eskalationsstufe;

DROP TABLE DIM_Fachgebiet;

DROP TABLE DIM_FallzahlPostTyp;

DROP TABLE DIM_Familienstand;

DROP TABLE DIM_Gefahr;

DROP TABLE DIM_Geltungsbereich;

DROP TABLE DIM_Gerichtsbarkeit;

DROP TABLE DIM_GeschBezFirma;

DROP TABLE DIM_GeschBezTaetigk;

DROP TABLE DIM_Geschlecht;

DROP TABLE DIM_Grosskunde;

DROP TABLE DIM_Haftung;

DROP TABLE DIM_Halbjahr;

DROP TABLE DIM_Instanzstatus;

DROP TABLE DIM_JNKENNZ;

DROP TABLE DIM_Jahr;

DROP TABLE DIM_KlassifizRueckst;

DROP TABLE DIM_KlassifizSchluss;

DROP TABLE DIM_Land_Nation;

DROP TABLE DIM_Leistungsart;

DROP TABLE DIM_Meldeweg;

DROP TABLE DIM_Monat;

DROP TABLE DIM_ObjektArt;

DROP TABLE DIM_PartnerObjekttyp;

DROP TABLE DIM_PartnergemArt;

DROP TABLE DIM_Partnertyp;

DROP TABLE DIM_Postleitzahl;

DROP TABLE DIM_Produkt;

DROP TABLE DIM_Quartal;

DROP TABLE DIM_RD_Ebene1;

DROP TABLE DIM_RD_Ebene2;

DROP TABLE DIM_RD_Ebene3;

DROP TABLE DIM_Rechtsform;

DROP TABLE DIM_RechtswegEbene;

DROP TABLE DIM_Region;

DROP TABLE DIM_Regionaldir;

DROP TABLE DIM_Regressart;

DROP TABLE DIM_Regressgrund;

DROP TABLE DIM_Regresspotential;

DROP TABLE DIM_Regressstatus;

DROP TABLE DIM_RueckstAendGrund;

DROP TABLE DIM_RueckstBetrArt;

DROP TABLE DIM_RueckstSetzMeth;

DROP TABLE DIM_RueckversichArt;

DROP TABLE DIM_Rueckversicherg;

DROP TABLE DIM_SBGruppe;

DROP TABLE DIM_SammelereignisKl;

DROP TABLE DIM_Satzart_Zahlung;

DROP TABLE DIM_SchadenKomplexit;

DROP TABLE DIM_SchadenSteuerung;

DROP TABLE DIM_Schaden_Besonder;

DROP TABLE DIM_Schadenfallart;

DROP TABLE DIM_Schadenstatus;

DROP TABLE DIM_Schadenurs_SAP;

DROP TABLE DIM_Schadenursache;

DROP TABLE DIM_SchadrueckstArt;

DROP TABLE DIM_Schuldigkeit;

DROP TABLE DIM_Schutzkennz;

DROP TABLE DIM_Sparte;

DROP TABLE DIM_Spartenbuendel_1;

DROP TABLE DIM_Spartenbuendel_2;

DROP TABLE DIM_Spartenbuendel_3;

DROP TABLE DIM_Spartenbuendel_4;

DROP TABLE DIM_Spartenbuendel_5;

DROP TABLE DIM_Spartenbuendel_6;

DROP TABLE DIM_Spartenbuendel_7;

DROP TABLE DIM_Spartenkennziff;

DROP TABLE DIM_TV_Projekt;

DROP TABLE DIM_Teilschadenart;

DROP TABLE DIM_Teilsparte;

DROP TABLE DIM_Titel;

DROP TABLE DIM_UKZ;

DROP TABLE DIM_Unfallart;

DROP TABLE DIM_Verfahrensart;

DROP TABLE DIM_Verfahrensggst;

DROP TABLE DIM_Verfahrensstatus;

DROP TABLE DIM_VerletzgKoerpert;

DROP TABLE DIM_Verletzung;

DROP TABLE DIM_Versicherungsart;

DROP TABLE DIM_Vertragsart;

DROP TABLE DIM_Vollmachtsstufe;

DROP TABLE DIM_Waehrung;

DROP TABLE DIM_Wagnisart;

DROP TABLE DIM_Werbeunterdrueck;

DROP TABLE DIM_Woche;

DROP TABLE DIM_ZahlgspflichtArt;

DROP TABLE DIM_ZahlungStatus;

DROP TABLE DIM_Zahlungsart;

DROP TABLE DIM_Zahlungsgrund;

DROP TABLE DIM_ZahlungsgrundGrp;

DROP TABLE DIM_Zahlweg;

DROP TABLE DIM_Zeitzone;

DROP TABLE DMK_BeschObjektFlags;

DROP TABLE DMK_BeschObjektMerkm;

DROP TABLE DMK_BilRueckstMerkm;

DROP TABLE DMK_GeriInstMerkmale;

DROP TABLE DMK_GeriVerfMerkmale;

DROP TABLE DMK_Partnermerkmale;

DROP TABLE DMK_RegressMerkmale;

DROP TABLE DMK_SSP_RVPMerkmale;

DROP TABLE DMK_SchadRueckstMerk;

DROP TABLE DMK_SchadUrsacheGef;

DROP TABLE DMK_SchadenFlags;

DROP TABLE DMK_SchadenOrtMerkm;

DROP TABLE DMK_Schadenmerkm;

DROP TABLE DMK_TeilschadenFlags;

DROP TABLE DMK_TeilschadenMerkm;

DROP TABLE DMK_VertragDeckMerkm;

DROP TABLE DMK_Vertragsmerkmale;

DROP TABLE DMK_ZhlgFordDetMerkm;

DROP TABLE DMK_ZhlgFordFlags;

DROP TABLE DMK_ZhlgFordMerkmale;

DROP TABLE F_Besch_Objekt;

DROP TABLE F_Bilanzrueckstellgn;

DROP TABLE F_Forderung;

DROP TABLE F_Forderung_Detail;

DROP TABLE F_GerichtsInstanz;

DROP TABLE F_Gerichtsverfahren;

DROP TABLE F_RV_LAYER;

DROP TABLE F_Regionaldirektion;

DROP TABLE F_Regress;

DROP TABLE F_RegressPosition;

DROP TABLE F_SAP_Kontrollreport;

DROP TABLE F_SCHADEN_YTD;

DROP TABLE F_SDS_Bilanzwerte;

DROP TABLE F_SSP_RVP;

DROP TABLE F_SchadRueckstellgn;

DROP TABLE F_Schaden;

DROP TABLE F_Schadensteuerung;

DROP TABLE F_Teilschaden;

DROP TABLE F_Telegutachten;

DROP TABLE F_Verl_Person;

DROP TABLE F_Zahlung;

DROP TABLE F_Zahlung_Detail;

DROP TABLE R_SSP_RVP_Ausw_indiv;

DROP TABLE R_Schaden_Apraxa_RA;

DROP TABLE R_Schaden_Eigener_RA;

DROP TABLE R_Schaden_KLUGO_RA;

DROP TABLE R_Schaden_RVEreign;

DROP TABLE R_Schaden_Regbeauftr;

DROP TABLE R_Schaden_SonstPartn;

DROP TABLE R_Schaden_VerlPerson;

DROP TABLE R_Spartenl_AuswIndiv;

DROP TABLE R_Teilsch_Handwerker;

DROP TABLE R_Teilsch_Regbeauftr;

DROP TABLE R_Teilsch_RepBetrieb;

DROP TABLE R_Teilsch_Sachverst;

DROP TABLE R_Teilsch_ServPartn;

DROP TABLE R_Teilsch_VerlPerson;

DROP TABLE Releasestand;

