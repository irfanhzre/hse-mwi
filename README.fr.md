# Indice de bien-être mental™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)

## Traduction

### README dans différentes langues

-   [Anglais](README.md)
-   [Chinois simplifié](README.zh-CN.md)
-   [Française](README.fr.md)
-   [arabe](README.ar.md)
-   [japonais](README.ja.md)
-   [langue malaise](README.ms.md)

# Table des matières

-   [Indice de bien-être mental (MWI)](#mental-wellness-index-mwi)
    -   [Domaines et mesures MWI](#mwi-domains--measures)
    -   [Focus sur les Noirs américains](#focus-on-black-americans)
    -   [Mise à jour des données 2023](#2023-data-update)
-   [Configurez MWI et créez votre propre MWI](#set-up-mwi-and-create-your-own-mwi)
    -   [Configuration de base (Instructions 1 à 8)](#basic-setup-instructions-1-8)
    -   [Configuration alternative de la ligne de commande](#alternative-command-line-setup)
    -   [Création d'un MWI personnalisé (Instructions 9-15)](#creating-custom-mwi-instructions-9-15)
-   [Utilisation des données MWI](#using-mwi-data)
    -   [Structure du répertoire de données](#data-directory-structure)
    -   [Ressources](#resources)
    -   [Données prétraitées](#preprocessed-data)
    -   [Données nettoyées](#cleaned-data)
-   [Configuration technique](#technical-set-up)
    -   [Architecture du pipeline de données](#data-pipeline-architecture)
    -   [Environnement de développement](#development-environment)
    -   [Gestion des données](#data-management)
    -   [Système d'enregistrement des mesures](#measure-registration-system)
    -   [Méthodologie d'analyse](#analysis-methodology)
    -   [Systèmes de pondération](#weighting-systems)
    -   [Génération de partitions](#score-generation)
-   [Fonctionnalités avancées](#advanced-features)
    -   [Intégration de données personnalisée](#custom-data-integration)
    -   [Configuration des métadonnées](#metadata-configuration)
    -   [Outils d'analyse](#analysis-tools)
    -   [Options de visualisation](#visualization-options)
-   [Lignes directrices de contribution](#contributing-guidelines)
    -   [Configuration du développement](#development-setup)
-   [Contact et attribution](#contact-and-attribution)
    -   [Canaux d'assistance](#support-channels)
    -   [Informations sur la licence](#license-information)
    -   [Remerciements](#acknowledgments)

# Indice de bien-être mental (MWI)

Pour consulter l'outil d'indice de bien-être mental, veuillez visiter<https://sjp.mitre.org/mwi>. Pour des informations plus détaillées sur l'indice de bien-être mental, voir ci-dessous ou consulter l'aperçu[ici](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

L'Indice de bien-être mental est un cadre complet et un outil de tableau de bord qui fournit une image détaillée du bien-être mental au niveau communautaire pour chaque code postal\* du pays. Le MWI comprend 28 mesures réparties dans 3 domaines distincts : les déterminants sociaux de la santé, l'accès aux soins de santé et l'état de santé. Le racisme structurel et les atouts communautaires et culturels sont tissés dans tous les domaines du MWI lui-même, reflétant leur influence omniprésente dans tout le cadre de mesure.

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*Zone de tabulation du code postal (ZCTA)

## Domaines et mesures MWI

Le MWI génère un score sophistiqué pour chaque code postal compris entre 0 et 100, où :

-   Des valeurs plus élevées (plus proches de 100) indiquent plus**actifs**que**soutien**bien-être mental communautaire
-   Des valeurs inférieures (plus proches de 0) indiquent plus**obstacles**que**défi**bien-être mental communautaire

^ indique des mesures stratifiées selon la race

![](www/media/MWI%20Full%20Measures.png)

## Focus sur les Noirs américains

Le MWI a été spécifiquement développé en prenant comme considération centrale l’état de santé mentale des Noirs américains. Nous avons intentionnellement sélectionné les Noirs américains comme population prioritaire pour nous concentrer sur les marges et éviter de créer un indice axé sur la « communauté moyenne ». Ce choix délibéré reflète notre conviction selon laquelle se concentrer ainsi sur les Noirs américains crée des avantages pour tous les groupes confrontés à des disparités, en adhérant au principe selon lequel aucun de nous ne se porte bien tant que nous ne le sommes pas tous. Nous reconnaissons également la nécessité d'identifier, de reconnaître et d'adapter le MWI à des populations prioritaires supplémentaires dans les itérations futures.

## Mise à jour des données 2023

Les données ont été entièrement mises à jour avec les dernières versions disponibles en date du 24 janvier 2023. Pour accéder aux versions précédemment publiées du MWI, veuillez vous référer à notre[Sorties](https://github.com/mitre/hse-mwi/releases)page.

# Configurez MWI et créez votre propre MWI

## Configuration de base (Instructions 1 à 8)

Suivez ces étapes pour une installation et une exécution de base de l'outil d'indexation du bien-être mental :

1.  **Configuration de l'environnement**
    -   Téléchargez et installez[R.](https://www.r-project.org/)
    -   Téléchargez et installez[RStudio](https://www.rstudio.com/products/rstudio/download/)
    -   Assurez-vous d'avoir un navigateur moderne (Firefox, Chrome, Edge, etc.) défini par défaut

2.  **Téléchargement du référentiel**
    -   Accédez au[Page GitHub de l’Indice du bien-être mental](https://github.com/mitre/hse-mwi)
    -   Cliquez sur "Code" dans le coin supérieur droit
    -   Sélectionnez "Télécharger ZIP" dans le menu déroulant
    -   Localisez le "hse-mwi-main.zip" téléchargé dans votre dossier de téléchargements

3.  **Configuration initiale**
    -   Décompressez "hse-mwi-main.zip"
    -   Ouvrez "app.R" dans RStudio
    -   Localisez la ligne 11 : "app_local &lt;- FALSE"
    -   Remplacez FAUX par VRAI

4.  **Installation du paquet**Exécutez la commande suivante dans la console RStudio :
    ```R
    install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                      'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                      'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                      'shinyBS', 'DT', 'dplyr'))
    ```

## Configuration alternative de la ligne de commande

### Installation de Windows

```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Configuration macOS

```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Installation Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## Création d'un MWI personnalisé (Instructions 9-15)

### Préparation des données

9.  **Exigences en matière de format de données**
    -   Format de fichier : CSV (valeurs séparées par des virgules)
    -   Colonnes obligatoires :
        -   ID géographique (numérique)
        -   Numérateur de données
        -   Dénominateur de données (le cas échéant)

10. **Types d'identification géographique acceptables**
    -   ZCTA : 5 chiffres (par exemple, 35406)
    -   Comté : code FIPS à 5 chiffres (par exemple, 01001)
    -   Code postal : 5 chiffres (par exemple, 35051)
    -   Secteur de recensement : code FIPS à 11 chiffres (par exemple, 01001020100)

11. **Règles de traitement des données**
    -   Calcul final : (numérateur/dénominateur) × facteur d'échelle
    -   Données manquantes : laissez les cellules vides
    -   Données stratifiées sur la race :
        -   Suffixe de colonne « \_pop » : mesure de la population globale
        -   Suffixe de colonne « \_black » : mesure de la population noire
        -   Définissez « Prétraité » sur TRUE dans Metadata.xlsx

### Configuration des métadonnées

12. **Configuration requise pour Metadata.xlsx**
    -   Téléchargez et modifiez le modèle
    -   Champs obligatoires pour chaque mesure :
        -   Nom de la mesure
        -   Nom de fichier
        -   Niveau géographique
        -   Directionnalité
        -   Poids
        -   Description
        -   Source
        -   Année
        -   Remarques
    -   Facultatif : champ du dénominateur

13. **Création MWI personnalisée**
    -   Combinez des fichiers de données et de métadonnées au format ZIP
    -   Téléchargez le fichier ZIP via l'interface
    -   Attendez la fin du traitement

14. **Exportation de données**
    -   Téléchargez le fichier .RData généré
    -   Stockez en toute sécurité - aucune donnée n'est conservée dans l'application

15. **Visualisation**
    -   Utiliser la fonctionnalité « Téléchargement MWI personnalisé »
    -   Disponible dans les sections « Explorer les États » et « Explorer les codes postaux »

# Utilisation des données MWI

## Structure du répertoire de données

Le dossier « Data » contient plusieurs sous-répertoires importants :

### Ressources

-   Fichiers de concordance géographique
-   Utilitaires de traitement de données
-   Documentation de référence

### Prétraité

-   Données de mesure standardisées
-   Colonnes d'identifiant géographique
-   Valeurs de mesure numérique

### Nettoyé

-   Résultats finaux du MWI
-   Traitement des sorties du pipeline
-   Rapports d'assurance qualité

# Configuration technique

## Architecture du pipeline de données

![](www/media/Data%20Pipeline.png)

## Environnement de développement

### Synchronisation des données

-   Connectez-vous au dossier Microsoft Teams BHN Score Creation
-   Synchroniser avec le dossier local MITRE Corporation (One-Drive)

### Documentation des mesures

-   Emplacement:`Teams > BHN Score > Measure-Tracking.xlsx`
-   Mise à jour lors de l'ajout de nouvelles mesures
-   Suivre l'état et les modifications des mesures

## Gestion des données

### Stockage des données brutes

    Teams > BHN Score > Data > Raw
    - For data requiring processing
    - Supports multiple formats (.xlsx, .csv, .dta)

### Données prétraitées

    Teams > BHN Score > Data > Preprocessed
    - Contains geographic container-level data
    - CSV format only
    - Direct API data processing

### Données nettoyées

Une fois les données nettoyées, elles seront fusionnées dans le fichier de mesures combinées. Il y aura deux versions :

-   Fichier original de mesures combinées :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Fichier de mesures combinées à l'échelle des percentiles :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

De plus, des informations sur les données (montant manquant, nombre de lignes non manquantes, etc.) sont générées et apparaissent dans :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

## Système d'enregistrement des mesures

### Emplacement des documents

    Teams > BHN Score > Data > Metadata.xlsx

### Spécifications de traitement

-   Normalisation géographique
-   Mesurer la directivité
-   Ajustements de mise à l’échelle
-   Gestion de la stratification des courses

## Méthodologie d'analyse

### Analyse de covariance

-   Identifier la colinéarité variable
-   Gérer les mesures redondantes
-   Optimiser la sélection des mesures

### Analyse des données manquantes

-   Suivre les modèles de valeurs manquantes
-   Identifier les ZCTA problématiques
-   Documenter les lacunes dans les données

### Validation croisée

-   Comparez avec les indices existants :
    -   COI (Indice d’opportunité des enfants)
    -   UNS (score unifié des besoins)
    -   CHR (Classement sanitaire des comtés)
    -   SVI (Indice de Vulnérabilité Sociale)

## Systèmes de pondération

Trois méthodologies de pondération distinctes :

1.  **Pondération parcimoneuse**
    -   Pondérations égales entre les mesures
    -   Modèle de comparaison de référence

2.  **Méthode de l’indice des opportunités pour les enfants**
    -   Adapté de la méthodologie COI
    -   Pondérations spécifiques au domaine

3.  **Méthode de classement de la santé des comtés**
    -   Basé sur le cadre CHR
    -   Accent sur les résultats en matière de santé

## Génération de partitions

### Flux de processus

1.  Combiner des poids avec des données de mesure
2.  Calculer les sommes pondérées par ZCTA
3.  Mettre les résultats à l'échelle sur une plage de 0 à 100
4.  Générez des scores séparés :
    -   Score de la population totale
    -   Score de la population noire

### Fichiers de sortie

Situé dans`Teams > BHN Score > Data > Cleaned`:

-   `HSE_BHN_ZCTA_Score_Black.csv`
-   `HSE_BHN_ZCTA_Score_Population.csv`

# Fonctionnalités avancées

## Intégration de données personnalisée

Le MWI vous permet d'intégrer des sources de données personnalisées pour créer des indices spécialisés adaptés à vos besoins :

-   Prise en charge de plusieurs formats de données (CSV, Excel, etc.)
-   Cartographie flexible des identifiants géographiques
-   Validation et nettoyage automatisés des données
-   Capacités de création de mesures personnalisées

## Configuration des métadonnées

Guide détaillé pour configurer les métadonnées des mesures personnalisées :

-   Champs obligatoires et leurs descriptions
-   Règles de validation des données
-   Exemples de configuration
-   Bonnes pratiques pour la définition des mesures

## Outils d'analyse

Outils intégrés pour analyser vos données MWI :

-   Utilitaires d'analyse statistique
-   Outils d'évaluation de la qualité des données
-   Analyse de corrélation
-   Identification des tendances
-   Analyse de regroupement géographique

## Options de visualisation

Outils et options de visualisation disponibles :

-   Cartes interactives
-   Time series charts
-   Vues d'analyse comparative
-   Génération de rapports personnalisés
-   Capacités d'exportation

# Lignes directrices de contribution

## Configuration du développement

1.  Forker le référentiel
2.  Clonez votre fork :
    ```bash
    git clone https://github.com/your-username/hse-mwi.git
    ```
3.  Configurer l'environnement de développement :
    ```bash
    cd hse-mwi
    Rscript setup-dev.R
    ```

# Contact et attribution

## Canaux d'assistance

Pour obtenir de l’aide et des demandes de renseignements :

-   E-mail principal :[socialjustice@mitre.org](mailto:socialjustice@mitre.org)
-   Assistance technique :[Problèmes GitHub](https://github.com/mitre/hse-mwi/issues)
-   Forum communautaire :[Discussions](https://github.com/mitre/hse-mwi/discussions)
-   Documentation:[Une semaine](https://github.com/mitre/hse-mwi/wiki)

## Informations sur la licence

Ce projet est sous licence MIT. Voir le[LICENCE](LICENSE)fichier pour plus de détails.

Le Mental Wellness Index™ est une marque commerciale de The MITRE Corporation.

## Remerciements

-   Contributeurs à l'Indice de bien-être mental
-   Partenaires de recherche et fournisseurs de données
-   Organismes communautaires et intervenants
-   Communauté open source

**Approuvé pour diffusion publique ; Distribution illimitée.**Dossier de diffusion publique numéro 21-3708
©2021 La société MITRE. TOUS DROITS RÉSERVÉS.

* * *

_Dernière mise à jour : janvier 2024_
