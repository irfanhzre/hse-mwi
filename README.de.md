# Mental Wellness Index™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)

## Übersetzung

### README in verschiedenen Sprachen

-   [Englisch](README.md)
-   [Vereinfachtes Chinesisch](README.zh-CN.md)
-   [Französisch](README.fr.md)
-   [Araber](README.ar.md)
-   [japanisch](README.ja.md)
-   [Malaiische Sprache](README.ms.md)

# Inhaltsverzeichnis

-   [Mental Wellness Index (MWI)](#mental-wellness-index-mwi)
    -   [MWI-Domänen und -Maßnahmen](#mwi-domains--measures)
    -   [Konzentrieren Sie sich auf schwarze Amerikaner](#focus-on-black-americans)
    -   [Datenaktualisierung 2023](#2023-data-update)
-   [Richten Sie MWI ein und erstellen Sie Ihr eigenes MWI](#set-up-mwi-and-create-your-own-mwi)
    -   [Grundlegende Einrichtung (Anweisungen 1-8)](#basic-setup-instructions-1-8)
    -   [Alternatives Befehlszeilen-Setup](#alternative-command-line-setup)
    -   [Erstellen eines benutzerdefinierten MWI (Anweisungen 9–15)](#creating-custom-mwi-instructions-9-15)
-   [Verwendung von MWI-Daten](#using-mwi-data)
    -   [Datenverzeichnisstruktur](#data-directory-structure)
    -   [Ressourcen](#resources)
    -   [Vorverarbeitete Daten](#preprocessed-data)
    -   [Bereinigte Daten](#cleaned-data)
-   [Technischer Aufbau](#technical-set-up)
    -   [Datenpipeline-Architektur](#data-pipeline-architecture)
    -   [Entwicklungsumgebung](#development-environment)
    -   [Datenmanagement](#data-management)
    -   [System zur Registrierung von Maßnahmen](#measure-registration-system)
    -   [Analysemethodik](#analysis-methodology)
    -   [Gewichtungssysteme](#weighting-systems)
    -   [Score-Generierung](#score-generation)
-   [Erweiterte Funktionen](#advanced-features)
    -   [Benutzerdefinierte Datenintegration](#custom-data-integration)
    -   [Metadatenkonfiguration](#metadata-configuration)
    -   [Analysetools](#analysis-tools)
    -   [Visualisierungsoptionen](#visualization-options)
-   [Mitwirkende Richtlinien](#contributing-guidelines)
    -   [Entwicklungs-Setup](#development-setup)
-   [Kontakt und Namensnennung](#contact-and-attribution)
    -   [Support-Kanäle](#support-channels)
    -   [Lizenzinformationen](#license-information)
    -   [Danksagungen](#acknowledgments)

# Mental Wellness Index (MWI)

Um das Mental Wellness Index Tool anzuzeigen, besuchen Sie bitte<https://sjp.mitre.org/mwi>. Ausführlichere Informationen zum Mental Wellness Index finden Sie unten oder sehen Sie sich die Erkenntnisse an[Hier](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

Der Mental Wellness Index ist ein umfassendes Rahmen- und Dashboard-Tool, das ein detailliertes Bild des psychischen Wohlbefindens auf Gemeindeebene für jede Postleitzahl\* im Land liefert. Der MWI umfasst 28 Maßnahmen in drei verschiedenen Bereichen: Soziale Determinanten der Gesundheit, Zugang zur Gesundheitsversorgung und Gesundheitszustand. Struktureller Rassismus und gemeinschaftliche und kulturelle Vermögenswerte sind in den Bereichen des MWI selbst verwoben und spiegeln ihren allgegenwärtigen Einfluss im gesamten Maßnahmenrahmen wider.

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*Tabellierungsbereich für Postleitzahlen (ZCTA)

## MWI-Domänen und -Maßnahmen

Das MWI generiert einen anspruchsvollen Score für jede Postleitzahl zwischen 0 und 100, wobei:

-   Höhere Werte (näher an 100) bedeuten mehr**Vermögenswerte**Das**Unterstützung**gemeinschaftliches geistiges Wohlbefinden
-   Niedrigere Werte (näher bei 0) weisen auf mehr hin**Hindernisse**Das**Herausforderung**gemeinschaftliches geistiges Wohlbefinden

^ gibt Maßnahmen an, die nach Rasse geschichtet sind

![](www/media/MWI%20Full%20Measures.png)

## Konzentrieren Sie sich auf schwarze Amerikaner

Der MWI wurde speziell unter Berücksichtigung des psychischen Gesundheitszustands schwarzer Amerikaner entwickelt. Wir haben absichtlich schwarze Amerikaner als vorrangige Bevölkerungsgruppe ausgewählt, um sie an den Rand zu rücken und die Erstellung eines Index zu vermeiden, der sich auf die „Durchschnittsgemeinschaft“ konzentriert. Diese bewusste Entscheidung spiegelt unsere Überzeugung wider, dass eine solche Konzentration auf schwarze Amerikaner Vorteile für alle Gruppen mit Ungleichheiten bringt, wobei wir dem Grundsatz folgen, dass es keinem von uns gut geht, bis es uns allen gut geht. Wir erkennen auch die Notwendigkeit an, den MWI für zusätzliche vorrangige Bevölkerungsgruppen in zukünftigen Iterationen zu identifizieren, zu erkennen und anzupassen.

## Datenaktualisierung 2023

Die Daten wurden umfassend auf den neuesten verfügbaren Stand vom 24. Januar 2023 aktualisiert. Den Zugriff auf zuvor veröffentlichte Versionen des MWI finden Sie in unserem[Veröffentlichungen](https://github.com/mitre/hse-mwi/releases)Seite.

# Richten Sie MWI ein und erstellen Sie Ihr eigenes MWI

## Grundlegende Einrichtung (Anweisungen 1-8)

Befolgen Sie diese Schritte für eine grundlegende Installation und Ausführung des Mental Wellness Index Tools:

1.  **Umgebungseinrichtung**
    -   Herunterladen und installieren[R](https://www.r-project.org/)
    -   Herunterladen und installieren[RStudio](https://www.rstudio.com/products/rstudio/download/)
    -   Stellen Sie sicher, dass Sie einen modernen Browser (Firefox, Chrome, Edge usw.) als Standard festgelegt haben

2.  **Repository-Download**
    -   Navigieren Sie zu[Mental Wellness Index GitHub-Seite](https://github.com/mitre/hse-mwi)
    -   Klicken Sie oben rechts auf „Code“.
    -   Wählen Sie „ZIP herunterladen“ aus dem Dropdown-Menü
    -   Suchen Sie die heruntergeladene Datei „hse-mwi-main.zip“ in Ihrem Download-Ordner

3.  **Erstkonfiguration**
    -   Entpacken Sie „hse-mwi-main.zip“
    -   Öffnen Sie „app.R“ in RStudio
    -   Suchen Sie Zeile 11: „app_local &lt;- FALSE“
    -   Ändern Sie FALSE in TRUE

4.  **Paketinstallation**Führen Sie den folgenden Befehl in der RStudio-Konsole aus:
    ```R
    install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                      'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                      'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                      'shinyBS', 'DT', 'dplyr'))
    ```

## Alternatives Befehlszeilen-Setup

### Windows-Setup

```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### macOS-Setup

```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Linux-Setup (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## Erstellen eines benutzerdefinierten MWI (Anweisungen 9–15)

### Datenvorbereitung

9.  **Anforderungen an das Datenformat**
    -   Dateiformat: CSV (durch Kommas getrennter Wert)
    -   Erforderliche Spalten:
        -   Geografische ID (numerisch)
        -   Datenzähler
        -   Datennenner (falls zutreffend)

10. **Akzeptable geografische ID-Typen**
    -   ZCTA: 5 Ziffern (z. B. 35406)
    -   Landkreis: 5-stelliger FIPS-Code (z. B. 01001)
    -   Postleitzahl: 5 Ziffern (z. B. 35051)
    -   Zensusgebiet: 11-stelliger FIPS-Code (z. B. 01001020100)

11. **Regeln zur Datenverarbeitung**
    -   Endgültige Berechnung: (Zähler/Nenner) × Skalierungsfaktor
    -   Fehlende Daten: Zellen leer lassen
    -   Rassengeschichtete Daten:
        -   Spaltensuffix „\_pop“: Gesamtbevölkerungsmaß
        -   Spaltensuffix „\_black“: Maß für die schwarze Bevölkerung
        -   Setzen Sie „Vorverarbeitet“ in Metadata.xlsx auf TRUE

### Metadatenkonfiguration

12. **Metadata.xlsx-Anforderungen**
    -   Laden Sie die Vorlage herunter und ändern Sie sie
    -   Erforderliche Felder für jede Kennzahl:
        -   Name der Maßnahme
        -   Dateiname
        -   Geografische Ebene
        -   Direktionalität
        -   Gewicht
        -   Beschreibung
        -   Quelle
        -   Jahr
        -   Notizen
    -   Optional: Nennerfeld

13. **Benutzerdefinierte MWI-Erstellung**
    -   Kombinieren Sie Daten- und Metadatendateien im ZIP-Format
    -   Laden Sie die ZIP-Datei über die Schnittstelle hoch
    -   Warten Sie, bis die Verarbeitung abgeschlossen ist

14. **Datenexport**
    -   Laden Sie die generierte .RData-Datei herunter
    -   Sicher aufbewahren – es bleiben keine Daten in der Anwendung erhalten

15. **Visualisierung**
    -   Verwenden Sie die Funktion „Benutzerdefinierter MWI-Upload“.
    -   Verfügbar in den Abschnitten „Staaten erkunden“ und „Postleitzahlen erkunden“.

# Verwendung von MWI-Daten

## Datenverzeichnisstruktur

Der Ordner „Data“ enthält mehrere wichtige Unterverzeichnisse:

### Ressourcen

-   Geografische Zebrastreifendateien
-   Dienstprogramme zur Datenverarbeitung
-   Referenzdokumentation

### Vorverarbeitet

-   Standardisierte Messdaten
-   Spalten für geografische Kennungen
-   Numerische Maßwerte

### Gereinigt

-   Endgültige MWI-Ergebnisse
-   Verarbeiten von Pipeline-Ausgaben
-   Qualitätssicherungsberichte

# Technische Einrichtung

## Datenpipeline-Architektur

![](www/media/Data%20Pipeline.png)

## Entwicklungsumgebung

### Datensynchronisierung

-   Stellen Sie eine Verbindung zum Microsoft Teams BHN Score Creation-Ordner her
-   Mit dem lokalen Ordner der MITRE Corporation (One-Drive) synchronisieren

### Maßnahmendokumentation

-   Standort:`Teams > BHN Score > Measure-Tracking.xlsx`
-   Aktualisieren Sie beim Hinzufügen neuer Maßnahmen
-   Verfolgen Sie den Status und die Änderungen der Maßnahmen

## Datenmanagement

### Rohdatenspeicherung

    Teams > BHN Score > Data > Raw
    - For data requiring processing
    - Supports multiple formats (.xlsx, .csv, .dta)

### Vorverarbeitete Daten

    Teams > BHN Score > Data > Preprocessed
    - Contains geographic container-level data
    - CSV format only
    - Direct API data processing

### Bereinigte Daten

Sobald die Daten bereinigt sind, werden sie in der Combined Measures-Datei zusammengeführt. Es wird zwei Versionen geben:

-   Ursprüngliche kombinierte Maßnahmendatei:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Datei mit prozentual skalierten kombinierten Messwerten:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

Darüber hinaus werden Informationen zu Daten (fehlende Menge, Anzahl nicht fehlender Zeilen usw.) generiert und angezeigt in:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

## System zur Registrierung von Maßnahmen

### Dokumentationsort

    Teams > BHN Score > Data > Metadata.xlsx

### Verarbeitungsvorgaben

-   Geografische Standardisierung
-   Richtwirkung messen
-   Skalierungsanpassungen
-   Handhabung der Rassenschichtung

## Analysemethodik

### Kovarianzanalyse

-   Identifizieren Sie die variable Kollinearität
-   Redundante Maßnahmen verwalten
-   Maßnahmenauswahl optimieren

### Fehlende Datenanalyse

-   Verfolgen Sie Muster fehlender Werte
-   Identifizieren Sie problematische ZCTAs
-   Dokumentieren Sie Datenlücken

### Kreuzvalidierung

-   Vergleichen Sie mit vorhandenen Indizes:
    -   COI (Child Opportunity Index)
    -   UNS (Unified Needs Score)
    -   CHR (County Health Rankings)
    -   SVI (Social Vulnerability Index)

## Gewichtungssysteme

Drei unterschiedliche Gewichtungsmethoden:

1.  **Sparsame Gewichtung**
    -   Gleiche Gewichte über alle Maße hinweg
    -   Basisvergleichsmodell

2.  **Methode des Child Opportunity Index**
    -   Angepasst an die COI-Methodik
    -   Domänenspezifische Gewichtungen

3.  **Methode der Kreisgesundheitsrankings**
    -   Basierend auf dem CHR-Framework
    -   Fokus auf Gesundheitsergebnisse

## Score-Generierung

### Prozessablauf

1.  Kombinieren Sie Gewichte mit Messdaten
2.  Berechnen Sie gewichtete Summen nach ZCTA
3.  Skalieren Sie die Ergebnisse auf einen Bereich von 0 bis 100
4.  Separate Partituren generieren:
    -   Gesamtbevölkerungswert
    -   Schwarzer Bevölkerungswert

### Ausgabedateien

Befindet sich in`Teams > BHN Score > Data > Cleaned`:

-   `HSE_BHN_ZCTA_Score_Black.csv`
-   `HSE_BHN_ZCTA_Score_Population.csv`

# Erweiterte Funktionen

## Benutzerdefinierte Datenintegration

Mit dem MWI können Sie benutzerdefinierte Datenquellen integrieren, um spezielle, auf Ihre Bedürfnisse zugeschnittene Indizes zu erstellen:

-   Unterstützung mehrerer Datenformate (CSV, Excel usw.)
-   Flexible Zuordnung geografischer Identifikatoren
-   Automatisierte Datenvalidierung und -bereinigung
-   Funktionen zur Erstellung benutzerdefinierter Kennzahlen

## Metadatenkonfiguration

Detaillierte Anleitung zum Konfigurieren von Metadaten für benutzerdefinierte Kennzahlen:

-   Erforderliche Felder und ihre Beschreibungen
-   Regeln zur Datenvalidierung
-   Beispielkonfigurationen
-   Best Practices für die Maßdefinition

## Analysetools

Integrierte Tools zur Analyse Ihrer MWI-Daten:

-   Dienstprogramme zur statistischen Analyse
-   Tools zur Datenqualitätsbewertung
-   Korrelationsanalyse
-   Trenderkennung
-   Geografische Clusteranalyse

## Visualisierungsoptionen

Verfügbare Visualisierungstools und -optionen:

-   Interaktive Karten
-   Zeitreihendiagramme
-   Vergleichende Analyseansichten
-   Benutzerdefinierte Berichtserstellung
-   Exportmöglichkeiten

# Mitwirkende Richtlinien

## Entwicklungs-Setup

1.  Forken Sie das Repository
2.  Klonen Sie Ihre Gabel:
    ```bash
    git clone https://github.com/your-username/hse-mwi.git
    ```
3.  Entwicklungsumgebung einrichten:
    ```bash
    cd hse-mwi
    Rscript setup-dev.R
    ```

# Kontakt und Namensnennung

## Support-Kanäle

Für Hilfe und Anfragen:

-   Primäre E-Mail:[socialjustice@mitre.org](mailto:socialjustice@mitre.org)
-   Technische Unterstützung:[GitHub-Probleme](https://github.com/mitre/hse-mwi/issues)
-   Community-Forum:[Diskussionen](https://github.com/mitre/hse-mwi/discussions)
-   Dokumentation:[Eine Woche](https://github.com/mitre/hse-mwi/wiki)

## Lizenzinformationen

Dieses Projekt ist unter der MIT-Lizenz lizenziert. Siehe die[LIZENZ](LICENSE)Einzelheiten finden Sie in der Datei.

Der Mental Wellness Index™ ist eine Marke der MITRE Corporation.

## Danksagungen

-   Mitwirkende am Mental Wellness Index
-   Forschungspartner und Datenanbieter
-   Gemeinschaftsorganisationen und Interessenvertreter
-   Open-Source-Community

**Zur Veröffentlichung freigegeben; Unbegrenzte Verbreitung.**Veröffentlichungsfallnummer 21-3708
©2021 Die MITRE Corporation. ALLE RECHTE VORBEHALTEN.

* * *

_Letzte Aktualisierung: Januar 2024_
