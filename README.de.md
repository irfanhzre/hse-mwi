# Mental Wellness Index™ (MWI)

## Übersetzung

# README in verschiedenen Sprachen

-   [Englisch](README.md)
-   [Vereinfachtes Chinesisch](README.zh-CN.md)
-   [Französisch](README.fr.md)
-   [Araber](README.ar.md)
-   [japanisch](README.ja.md)
-   [Malaiische Sprache](README.ms.md)

# Gliederung

-   [Mental Wellness Index (MWI)](#Mental-Wellness-Index-(MWI))
-   [Richten Sie MWI ein und erstellen Sie Ihr eigenes MWI](#Set-Up-MWI-and-Create-Your-Own-MWI)
-   [Verwendung von MWI-Daten](#Using-MWI-Data)
-   [Technische Einrichtung](#Technical-Set-Up)(nur nützlich für Mitwirkende)
-   [Kontakt und Namensnennung](#Contact-and-Attribution)

# Mental Wellness Index (MWI)

Informationen zum Mental Wellness Index Tool finden Sie unter<https://sjp.mitre.org/mwi>. Weitere Informationen zum Mental Wellness Index finden Sie unten oder sehen Sie sich die Erkenntnisse an[Hier](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

Der Mental Wellness Index ist ein Rahmen- und Dashboard-Tool, das für jede Postleitzahl ein Bild des psychischen Wohlbefindens auf Gemeindeebene liefert\*in der Nation. Der MWI besteht aus 28 Maßnahmen aus drei Bereichen: Soziale Determinanten der Gesundheit, Zugang zur Gesundheitsversorgung und Gesundheitszustand. Struktureller Rassismus und gemeinschaftliche und kulturelle Vermögenswerte sind in den Bereichen des MWI selbst verankert und spiegeln ihren Einfluss im gesamten Maßnahmenrahmen wider.

<p align = "center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

Die Absicht des Mental Wellness Index besteht darin, eine Momentaufnahme des psychischen Wohlbefindens einer Gemeinde zu liefern, damit Gemeindevorsteher, Beamte des öffentlichen Gesundheitswesens und Fördereinrichtungen verstehen können, wie sie die Unterstützung für die psychische Gesundheit am besten steuern können, um auf den Vorzügen einer bestimmten Gemeinde aufzubauen und diese auszufüllen Lücken.

\*Tabellierungsbereich für Postleitzahlen (ZCTA)

## MWI-Domänen und -Maßnahmen

Das MWI erstellt für jede Postleitzahl einen Wert zwischen 0 und 100, sodass:

-   Höhere Werte bedeuten mehr**Vermögenswerte**Das**Unterstützung**gemeinschaftliches geistiges Wohlbefinden

-   Niedrigere Werte bedeuten mehr**Hindernisse**Das**Herausforderung**gemeinschaftliches geistiges Wohlbefinden

^ gibt Maßnahmen an, die nach Rasse geschichtet sind

![](www/media/MWI%20Full%20Measures.png)

## Konzentrieren Sie sich auf schwarze Amerikaner

Der MWI wurde unter Berücksichtigung des psychischen Gesundheitszustands schwarzer Amerikaner entwickelt. Wir haben schwarze Amerikaner als vorrangige Bevölkerungsgruppe ausgewählt, um uns auf die Randgruppen zu konzentrieren und die Erstellung eines Index zu vermeiden, der sich auf die „Durchschnittsgemeinschaft“ konzentriert. Wir glauben, dass die Fokussierung auf schwarze Amerikaner auf diese Weise allen Gruppen mit Ungleichheiten zugute kommt, da es keinem von uns gut geht, bis es uns allen gut geht. Wir erkennen auch die Notwendigkeit an, den MWI für zusätzliche vorrangige Bevölkerungsgruppen zu identifizieren, zu erkennen und anzupassen.

## Datenaktualisierung 2023

Die Daten wurden auf den neuesten Stand vom 24. Januar 2023 aktualisiert. Wenn Sie zuvor veröffentlichte Versionen des MWI verwenden möchten, lesen Sie[Veröffentlichungen](https://github.com/mitre/hse-mwi/releases).

# Richten Sie MWI ein und erstellen Sie Ihr eigenes MWI

Befolgen Sie die Anweisungen 1–8, um das Mental Wellness Index Tool einzurichten und einfach auszuführen.

Um Ihren eigenen Mental Wellness Index zu erstellen, können Sie den restlichen Anweisungen folgen, um das Mental Wellness Index Tool auf Ihrem lokalen Computer auszuführen. Befolgen Sie die Anweisungen 8+ unten, um Ihr eigenes MWI für Ihre Community zu erstellen, indem Sie die Gewichtungen anpassen und/oder Ihre eigenen Daten und Metadaten hinzufügen.

1.  Laden Sie kostenlose Versionen von herunter[R](https://www.r-project.org/)Und[RStudio](https://www.rstudio.com/products/rstudio/download/). Laden Sie einen modernen Browser herunter (Firefox, Chrome, Edge usw.) und machen Sie ihn zu Ihrem Standardbrowser, falls Sie dies noch nicht getan haben.

2.  Gehe zum[Mental Wellness Index GitHub-Seite](https://github.com/mitre/hse-mwi)und laden Sie das Repository herunter, indem Sie oben rechts auf „Code“ und dann im Dropdown-Menü auf „ZIP herunterladen“ klicken. Dadurch sollte eine ZIP-Datei des MWI-Repositorys mit dem Namen „hse-mwi-main.zip“ in Ihren Download-Ordner heruntergeladen werden.

3.  Entpacken Sie „hse-mwi-main.zip“.

4.  Öffnen Sie im entpackten Ordner „app.R“ in RStudio. Dadurch sollten RStudio und das Skript „app.R“ in der oberen linken Ecke der Anwendung geöffnet werden.

5.  In the console window, which is in the bottom left hand corner, enter the following line and answer "yes" to all prompts in the console as you install these packages:
    -   install.packages('readxl', 'writexl', 'htmltools', 'shiny', 'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 'ggbeeswarm', 'shinyWidgets', 'sass ', 'shinycssloaders', 'shinyBS', 'DT', 'dplyr')

6.  Navigieren Sie in „app.R“ zu Zeile 11, die „app_local &lt;- FALSE“ lauten sollte. Ändern Sie FALSE in TRUE.

7.  In der oberen rechten Ecke des „app.R“-Fensters sollten Sie „Run App“ sehen. Klicken Sie auf den kleinen Abwärtspfeil rechts daneben und dann auf „Extern ausführen“. Klicken Sie dann auf „App ausführen“.

8.  Nach einer Verzögerung (dies ist beim ersten Mal langsam, danach schneller) sollte sich das Mental Wellness Index Tool in Ihrem Browser öffnen. Klicken Sie auf die Registerkarte „Eigenes MWI erstellen“ und befolgen Sie die verbleibenden Schritte, um Ihr eigenes MWI zu erstellen.

9.  Wenn Sie für die enthaltenen Daten nur Gewichtungen oder Teilmengen an bestimmte Postleitzahlen anpassen, überspringen Sie den nächsten Schritt. Dies kann auch auf der Website erfolgen[Hier](https://sjp.mitre.org/mwi).

10. Geben Sie jeden Ihrer Datensätze in ein CSV-Format (Comma Separated Value) ein, wobei eine Spalte der geografischen ID der Daten, eine Spalte dem Zähler der Daten und eine weitere Spalte dem Nenner entspricht (falls erforderlich).

-   Akzeptierte geografische ID-Typen sind immer numerisch und umfassen Folgendes:
    -   ZCTA: 5-stelliges ZCTA (Beispiel: 35406)
    -   Landkreis: 5-stelliger County-FIPS-Code (2-stelliger Landescode und 3-stelliger County-Code, Beispiel: 01001)
    -   Postleitzahl: Postleitzahl des US-Postdienstes (Beispiel: 35051)
    -   Zensusbezirk: 11-stelliger FIPS-Code für den Zensusbezirk (2-stelliger Staatscode, 3-stelliger Bezirkscode und 6-stelliger Bezirkscode, Beispiel: 01001020100)
-   Wenn eine Nennerspalte bereitgestellt wird, ist die endgültige Eingabe in die MWI der Zähler dividiert durch den Nenner, multipliziert mit der Skalierungszahl (in der Metadatendatei angegeben, siehe nächster Schritt).
-   Zähler und Nenner müssen numerische Spalten sein.
-   Bei fehlenden Daten sollten die Zellen leer bleiben.
-   Wenn die Rasse geschichtet ist, sollte es zwei Spalten geben: eine mit der Endung „\_pop“, die dem Gesamtbevölkerungsmaß entspricht, und eine mit dem Ende „\_black“, die dem Maß für die schwarze Bevölkerungszahl entspricht. Bei der Bearbeitung der Datei „Metadata.xlsx“ sollte die Spalte „Vorverarbeitet“ dieser Zeile auf TRUE gesetzt werden.

11. Laden Sie Metadata.xlsx mit der Schaltfläche unten herunter. Wenn Sie benutzerdefinierte Daten hinzufügen, fügen Sie eine Zeile hinzu und geben Sie Informationen für jede Kennzahl ein, die Sie dem Mental Wellness Index hinzufügen möchten. Beschreibungen für jede Spalte finden Sie im Blatt „Spaltenbeschreibungen“ der Metadata.xlsx. Beachten Sie, dass alle Spaltennamen mit Ausnahme von „Nenner“ ausgefüllt werden müssen.

-   Wenn Sie mehrere Kennzahlen in einer Datei haben, fügen Sie für jede Kennzahl und ihre Qualitäten eine Zeile hinzu, geben Sie jedoch denselben Dateinamen an.
-   Wenn Sie eine Kennzahl in Ihrem MWI entfernen möchten, löschen Sie entweder die Kennzahlzeile oder setzen Sie deren Gewichtung auf 0.
-   Wenn Sie nur Gewichtungen anpassen möchten, ändern Sie nur die Gewichtsspalte auf die gewünschten Werte. Beachten Sie, dass Strafen für Rassenschichtungen und geografische Granularität weiterhin angewendet werden und die Gesamtgewichte so skaliert werden, dass sie sich auf 100 summieren.

12. Legen Sie Ihre Daten (falls verwendet) und die aktualisierte Metadata.xlsx-Datei in einer ZIP-Datei (.zip) ab.

13. Laden Sie Ihre ZIP-Datei hoch und klicken Sie unten auf „Benutzerdefiniertes MWI erstellen“. Dies kann je nach Umfang der Maßnahmen einige Zeit in Anspruch nehmen.

14. Sobald die benutzerdefinierte MWI-Erstellung abgeschlossen ist, klicken Sie auf „Benutzerdefiniertes MWI herunterladen“, um eine .RData-Datei mit allen erforderlichen Informationen herunterzuladen, um Ihre MWI in diesem Tool anzuzeigen. Hinweis: Wenn Sie diese Seite verlassen, gehen alle Verarbeitungen und Daten verloren! In dieser Anwendung wird nichts gespeichert.

15. Um Ihren MWI anzuzeigen, klicken Sie unter „Staaten erkunden“ oder „Postleitzahlen erkunden“ auf das Feld „Benutzerdefinierter MWI-Upload“ und laden Sie die heruntergeladene „.RData“-Datei hoch.

# Verwendung von MWI-Daten

Wenn Sie das MWI oder seine verarbeiteten Maßnahmen oder Daten nutzen möchten, finden Sie weitere Informationen in den Ordnern „Daten“ und „Dokumentation“. Jeder Ordner in „Data“ verfügt über eine README-Datei mit detaillierten Angaben zu den enthaltenen Dateien. Alle Daten, mit Ausnahme der Metadatendatei, liegen im CSV-Format vor.

Die Ordner in „Data“ lauten wie folgt:

-   Ressourcen: Enthält Dateien zur Verarbeitung von Daten und zur Referenzierung geografischer Zebrastreifen.
-   Vorverarbeitet: Enthält vorverarbeitete Daten für alle Kennzahlen in dem Format, das die MWI-Pipeline erfordert: eine Spalte zur Angabe der geografischen Kennung, dann eine für den numerischen Wert jeder Kennzahl.
-   Bereinigt: Enthält die Ergebnisse des Mental Wellness Index und der Verarbeitungspipeline.

# Technische Einrichtung

Hinweis: Dieser Abschnitt richtet sich in erster Linie an Mitwirkende.

## Datenpipeline

![](www/media/Data%20Pipeline.png)

## Datensynchronisierung

Synchronisieren Sie den Ordner „Microsoft Teams BHN Score Creation“ mit Ihrem lokalen Ordner „The MITRE Corporation (One-Drive)“.

## Maßnahmen abschließen

Messen Sie das Tracking-Dokument, das sich in befindet`Teams`>`BHN Score`>`Measure-Tracking.xslx`

Beziehen Sie sich auf dieses Dokument und aktualisieren Sie es, wenn weitere Maßnahmen abgeschlossen sind.

## Daten abrufen

Hinzufügen von Daten, die von einer API abgerufen oder direkt von einer Website heruntergeladen wurden, fallen in einen der beiden Ordner:

-   `Teams`>`BHN Score`>`Data`>`Raw`

    -   wenn eine Maßberechnung abgeschlossen werden muss (z. B. Punktgeographie zur Containergeographie, Prävalenzberechnungen usw.)

    -   Die Dateierweiterung kann auch .xlsx, .csv, .dta usw. sein

-   `Teams`>`BHN Score`>`Data`>`Preprocessed`

    -   wenn die Daten in ein Format fallen, in dem jede Zeile ein geografischer Container ist (z. B. Volkszählungsbezirk, Landkreis, Postleitzahl usw.)

    -   Die Dateierweiterung ist nur .csv

    -   **Notiz:**Führen Sie für alle Daten, die von einer API (Tidycensus usw.) abgerufen werden, alle Vorverarbeitungsaufgaben aus und schreiben Sie Daten direkt darauf`Preprocessed`Ordner.

Achten Sie beim Abrufen von Daten darauf, die relevanten Spalten im auszufüllen`Measure-Tracking.xlsx`und/oder`Metadata.xlsx`Dateien.

## Maßnahmenregistrierung

Messen Sie das Registrierungsdokument in`Teams`>`BHN Score`>`Data`> `Metadata.xslx`. Dieses Dokument enthält Informationen, die für die Stapelverarbeitung/Batch-Analyse von vorverarbeiteten Daten bis hin zu bereinigten Daten erforderlich sind.

### Vorverarbeitete Daten

Diese Datei enthält Informationen zu allen**vorverarbeitet**misst und informiert über alle zusätzlichen Transformationen, die zwischen Vorverarbeitungs- und bereinigten Daten stattfinden müssen, einschließlich:

-   Jede geografische Ebene –>Nur ZCTA-Ebene

-   Ausrichtung der Messung ausgerichtet (höhere Werte weisen auf einen höheren Bedarf hin)

-   Skalierung ausgerichtet (Bruchzahlen in Prozent 0,1 ->10(%), Prävalenzanpassungen (pro 1000 Personen) usw.)

### Bereinigte Daten

Sobald die Daten bereinigt sind, werden sie in der Combined Measures-Datei zusammengeführt. Es wird zwei Versionen geben:

-   Ursprüngliche kombinierte Maßnahmendatei:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Datei mit prozentual skalierten kombinierten Messwerten:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

Darüber hinaus werden Informationen zu Daten (fehlende Menge, Anzahl nicht fehlender Zeilen usw.) generiert und angezeigt in:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

### Analyse

Mit Combined Measure-Dateien führen wir die folgenden Analysen durch:

-   Kovarianzanalyse (Kennzeichnen und Verwalten von Variablensätzen mit hoher Multikollinearität)

-   Missingness-Analyse (Identifizierung von Maßen mit vielen mehreren fehlenden Werten, Identifizierung von ZCTAs mit mehreren fehlenden Maßen)

-   Kreuzvalidierung mit anderen zusammengesetzten Maßnahmen (COI, UNS, CHR, SVI usw.)

### Dokumentation

Die Maßnahmendokumentation finden Sie in`Teams`>`BHN Score`>`Documentation`Ordner.

## Gewichte

Wir werden drei Sätze von Gewichtsdateien erstellen:

-   Sparsame Gewichtung (Alle gleichen Gewichte)

-   Methode zur Bestimmung der Gewichtung des Child-Opportunity-Index

-   Gewichtung der Gesundheitsrankings des Landkreises

## Partiturerstellung

Die endgültigen Ergebnisse für jeden ZCTA werden durch die Kombination der Gewichtungen und der kombinierten Maßdatei erstellt. Maße und Maßgewichtungen werden miteinander multipliziert, für jeden ZCTA summiert und dann von 0 bis 100 neu skaliert. Die Bewertungen werden (mit Perzentil-Rangmaßen) in angezeigt`Teams`>`BHN Score`>`Data`>`Cleaned`:

-   Gesamtbevölkerungspunktzahl:`HSE_BHN_ZCTA_Score_Black.csv`

-   Schwarzer Bevölkerungswert:`HSE_BHN_ZCTA_Score_Population.csv`

# Kontakt und Namensnennung

Bei Fragen oder Bedenken wenden Sie sich bitte an[socialjustice@mitre.org](mailto:socialjustice@mitre.org).

Zur Veröffentlichung freigegeben; Unbegrenzte Verbreitung. Veröffentlichungsfallnummer 21-3708. ©2021 Die MITRE Corporation. ALLE RECHTE VORBEHALTEN.
