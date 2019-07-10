--<ScriptOptions statementTerminator=";"/>
-- Version 9090

COMMENT ON COLUMN WE01_Willenserklaerung_BH.SK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_Willenserklaerung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gelöscht wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_Willenserklaerung_BH.TA_Lade_ID IS
'... ist die Identifizierung des entsprechenden Ladejobs, in dem dieser Tabellen-Eintrag geladen wurde.

Datenschutz $-';

COMMENT ON COLUMN WE01_Willenserklaerung_BH.TA_Ladedatum IS
'... ist der Beginn (bis Minute) des jeweiligen Gesamt-Lade-Jobs, in dem auch dieser Satz vom Quellsystem ins Data Warehouse geladen wurde.
Identifiziert damit eindeutig, wann die Daten aus dem Quellsystem extrahiert wurden.

Datenschutz $-';

COMMENT ON COLUMN WE01_Willenserklaerung_BH.TA_SPERRE IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gesperrt wurden.

Datenschutz $-';

COMMENT ON TABLE WE01_Willenserklaerung_BH IS
'Willenserklärung ist die Erklärung eines Willens der DEVK und/oder von Partnern der DEVK. Es gibt ein- oder zweiseitige Willenserklärungen, z.B. zwischen dem Versicherungsnehmer und dem Versicherungsunternehmen.

Ein Antrag ist eine einseitige Erstversicherungs-Willenserklärung eines Versicherungsnehmers gegenüber der DEVK. Ein Antrag unterliegt schwächeren Konsistenzbedingungen als ein Vertrag und kann z.B. gegen Annahmerichtlinien verstoßen. Inkonsistenzen dürfen bei einem Antrag aber nicht auftreten, z.B. ist es nicht möglich zwei sich ausschließende Selbstbehalte in einem Antrag anzugeben.

Ein Vertrag ist eine zweiseitige Erstversicherungs-Willenserklärung, die zwischen dem Versicherungsnehmer und einem Versicherungsunternehmen abgeschlossen wird. Verträge werden immer genau einem Versicherungsnehmer, einem Versicherungsunternehmen und einem Versicherungszweig zugeordnet. Ähnlich wie beim Bündel spielt der Versicherungsschein für die Definition des Vertrages eine wesentliche Rolle. Das was als kleinster Versicherungsumfang innerhalb desselben Versicherungszweiges auf einem separaten Versicherungsschein ausgewiesen werden soll, spezifiziert über die obigen Festlegungen (genau ein VN, genau ein VU) hinaus den Vertrag. 

Verträge sind nicht(! ) die rechtlich selbständigen Verträge im juristischen Sinne, sondern können mehrere juristisch selbstständige Verträge desselben Versicherungszweiges umfassen. Daher gehört z.B. für Gebäude im Gegensatz zu Leben (lifefactory) die ZNR nicht zur VNR.

Business-Key:
- für Verträge:
VNR (Versicherungsscheinnummer mit Prüfziffer)

- für Verträge zu Schäden aus CM:
ICLPOL.POLICY (Versicherungsscheinnummer)

- für Verträge aus Lifefactory:
Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	 and lv.lvstatus not in (2, 5, 6)		(besteht aus VNR, PZ, ZNR 11-stellig)
BEA: Anträge ausfiltern!

- für Anträge aus Lifefactory:
''ANTRAG~'' || Antragsnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	 and lv.lvstatus in (2, 5, 6)		(besteht aus VNR, PZ, ZNR 11-stellig)
BEA: Verträge ausfiltern!';

