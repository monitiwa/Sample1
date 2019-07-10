--<ScriptOptions statementTerminator=";"/>
-- Version 9090

COMMENT ON COLUMN WE01_Willenserklaerung_BH.SK_WE01_Willenserklaerung IS
'
Datenschutz $-';

COMMENT ON COLUMN WE01_Willenserklaerung_BH.TA_GELOESCHT IS
'...gibt an, ob datenschutzrelevante Inhalte in dieser Tabelle gel�scht wurden.

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
'Willenserkl�rung ist die Erkl�rung eines Willens der DEVK und/oder von Partnern der DEVK. Es gibt ein- oder zweiseitige Willenserkl�rungen, z.B. zwischen dem Versicherungsnehmer und dem Versicherungsunternehmen.

Ein Antrag ist eine einseitige Erstversicherungs-Willenserkl�rung eines Versicherungsnehmers gegen�ber der DEVK. Ein Antrag unterliegt schw�cheren Konsistenzbedingungen als ein Vertrag und kann z.B. gegen Annahmerichtlinien versto�en. Inkonsistenzen d�rfen bei einem Antrag aber nicht auftreten, z.B. ist es nicht m�glich zwei sich ausschlie�ende Selbstbehalte in einem Antrag anzugeben.

Ein Vertrag ist eine zweiseitige Erstversicherungs-Willenserkl�rung, die zwischen dem Versicherungsnehmer und einem Versicherungsunternehmen abgeschlossen wird. Vertr�ge werden immer genau einem Versicherungsnehmer, einem Versicherungsunternehmen und einem Versicherungszweig zugeordnet. �hnlich wie beim B�ndel spielt der Versicherungsschein f�r die Definition des Vertrages eine wesentliche Rolle. Das was als kleinster Versicherungsumfang innerhalb desselben Versicherungszweiges auf einem separaten Versicherungsschein ausgewiesen werden soll, spezifiziert �ber die obigen Festlegungen (genau ein VN, genau ein VU) hinaus den Vertrag. 

Vertr�ge sind nicht(! ) die rechtlich selbst�ndigen Vertr�ge im juristischen Sinne, sondern k�nnen mehrere juristisch selbstst�ndige Vertr�ge desselben Versicherungszweiges umfassen. Daher geh�rt z.B. f�r Geb�ude im Gegensatz zu Leben (lifefactory) die ZNR nicht zur VNR.

Business-Key:
- f�r Vertr�ge:
VNR (Versicherungsscheinnummer mit Pr�fziffer)

- f�r Vertr�ge zu Sch�den aus CM:
ICLPOL.POLICY (Versicherungsscheinnummer)

- f�r Vertr�ge aus Lifefactory:
Versicherungsscheinnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	 and lv.lvstatus not in (2, 5, 6)		(besteht aus VNR, PZ, ZNR 11-stellig)
BEA: Antr�ge ausfiltern!

- f�r Antr�ge aus Lifefactory:
''ANTRAG~'' || Antragsnummer 	jurLV.lvIDext where jurLV.lvID = lv.lvID	 and lv.lvstatus in (2, 5, 6)		(besteht aus VNR, PZ, ZNR 11-stellig)
BEA: Vertr�ge ausfiltern!';

