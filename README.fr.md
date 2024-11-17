# Indice de bien-être mental™ (MWI)

## Traduction

# README dans différentes langues

-   [Anglais](README.md)
-   [Chinois simplifié](README.zh-CN.md)
-   [Française](README.fr.md)
-   [arabe](README.ar.md)
-   [japonais](README.ja.md)
-   [langue malaise](README.ms.md)

# Contour

-   [Indice de bien-être mental (MWI)](#Mental-Wellness-Index-(MWI))
-   [Configurez MWI et créez votre propre MWI](#Set-Up-MWI-and-Create-Your-Own-MWI)
-   [Utilisation des données MWI](#Using-MWI-Data)
-   [Configuration technique](#Technical-Set-Up)(utile uniquement pour les contributeurs)
-   [Contact et attribution](#Contact-and-Attribution)

# Indice de bien-être mental (MWI)

Pour consulter l'outil d'indice du bien-être mental, veuillez consulter<https://sjp.mitre.org/mwi>. Pour plus d'informations sur l'indice de bien-être mental, voir ci-dessous ou consulter l'aperçu[ici](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

L'Indice de bien-être mental est un cadre et un tableau de bord qui fournit une image du bien-être mental au niveau communautaire pour chaque code postal.\*dans la nation. Le MWI comprend 28 mesures provenant de 3 domaines : les déterminants sociaux de la santé, l'accès aux soins de santé et l'état de santé. Le racisme structurel et les atouts communautaires et culturels sont tissés autour et à travers les domaines du MWI lui-même, reflétant leur influence dans tout le cadre de mesure.

<p align = "center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

L'objectif de l'Indice de bien-être mental est de fournir un aperçu du bien-être mental d'une communauté afin que les dirigeants communautaires, les responsables de la santé publique et les entités de financement puissent comprendre comment ils pourraient orienter au mieux le soutien en santé mentale pour tirer parti des atouts d'une communauté particulière et compléter ses lacunes.

\*Zone de tabulation du code postal (ZCTA)

## Domaines et mesures MWI

Le MWI crée un score pour chaque code postal entre 0 et 100, tel que :

-   des valeurs plus élevées indiquent plus**actifs**que**soutien**bien-être mental communautaire

-   des valeurs inférieures indiquent plus**obstacles**que**défi**bien-être mental communautaire

^ indique des mesures stratifiées selon la race

![](www/media/MWI%20Full%20Measures.png)

## Focus sur les Noirs américains

Le MWI a été développé en tenant compte de l’état de santé mentale des Noirs américains. Nous avons sélectionné les Noirs américains comme population prioritaire afin de nous concentrer sur les marges et d'éviter de créer un index axé sur la « communauté moyenne ». Nous pensons que se concentrer ainsi sur les Noirs américains permet à tous les groupes connaissant des disparités d’en bénéficier, car aucun d’entre nous ne se porte bien tant que nous ne le sommes pas tous. Nous reconnaissons également la nécessité d'identifier, de reconnaître et d'adapter le MWI à des populations prioritaires supplémentaires.

## Mise à jour des données 2023

Les données ont été mises à jour avec la dernière version disponible en date du 24 janvier 2023. Si vous souhaitez utiliser des versions précédemment publiées du MWI, voir[Sorties](https://github.com/mitre/hse-mwi/releases).

# Configurez MWI et créez votre propre MWI

Pour configurer et exécuter simplement l'outil d'indexation du bien-être mental, suivez les instructions 1 à 8.

Pour créer votre propre indice de bien-être mental, vous pouvez suivre le reste des instructions pour exécuter l'outil d'indice de bien-être mental sur votre ordinateur local. Suivez les instructions 8+ ci-dessous pour créer votre propre MWI pour votre communauté ci-dessous en ajustant les pondérations et/ou en ajoutant vos propres données et métadonnées.

1.  Téléchargez des versions gratuites de[R.](https://www.r-project.org/)et[RStudio](https://www.rstudio.com/products/rstudio/download/). Téléchargez un navigateur moderne (Firefox, Chrome, Edge, etc.) et faites-en votre navigateur par défaut si vous ne l'avez pas déjà fait.

2.  Allez au[Page GitHub de l’Indice du bien-être mental](https://github.com/mitre/hse-mwi)et téléchargez le référentiel en cliquant sur « Code » dans le coin supérieur droit, puis en cliquant sur « Télécharger ZIP » dans le menu déroulant. Cela devrait télécharger un fichier ZIP du référentiel MWI dans votre dossier de téléchargements, appelé "hse-mwi-main.zip".

3.  Décompressez "hse-mwi-main.zip".

4.  Dans le dossier décompressé, ouvrez « app.R » dans RStudio. Cela devrait ouvrir RStudio et le script "app.R" dans le coin supérieur gauche de l'application.

5.  Dans la fenêtre de la console, située dans le coin inférieur gauche, saisissez la ligne suivante et répondez « oui » à toutes les invites de la console lorsque vous installez ces packages :
    -   install.packages('readxl', 'writexl', 'htmltools', 'shiny', 'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 'ggbeeswarm', 'shinyWidgets', 'sass ', 'shinycssloaders', 'shinyBS', 'DT', 'dplyr')

6.  Dans "app.R", accédez à la ligne 11, qui devrait indiquer "app_local &lt;- FALSE". Remplacez FAUX par VRAI.

7.  Dans le coin supérieur droit de la fenêtre « app.R », vous devriez voir « Exécuter l'application ». Cliquez sur la petite flèche vers le bas à droite de celle-ci et cliquez sur "Exécuter en externe". Cliquez ensuite sur « Exécuter l'application ».

8.  Après un certain temps (cela sera lent la première fois, puis plus rapide par la suite), l'outil d'indexation du bien-être mental devrait s'ouvrir dans votre navigateur. Cliquez sur l'onglet "Créer votre propre MWI" et suivez les étapes restantes pour créer votre propre MWI.

9.  Si vous ajustez uniquement les pondérations ou les sous-ensembles à des codes postaux spécifiques pour les données incluses, ignorez l'étape suivante. Cela peut également être fait sur le site Web[ici](https://sjp.mitre.org/mwi).

10. Mettez chacun de vos jeux de données au format CSV (valeurs séparées par des virgules), avec une colonne correspondant à l'identifiant géographique des données, une colonne correspondant au numérateur des données et une autre colonne correspondant au dénominateur (si nécessaire).

-   Les types d’identifiants géographiques acceptés sont toujours numériques et incluent les éléments suivants :
    -   ZCTA : ZCTA à 5 chiffres (exemple : 35406)
    -   Comté : code FIPS du comté à 5 chiffres (code d'État à 2 chiffres et code du comté à 3 chiffres, exemple : 01001)
    -   Code postal : Code postal du service postal américain (exemple : 35051)
    -   Secteur de recensement : code FIPS du secteur de recensement à 11 chiffres (code d'État à 2 chiffres, code de comté à 3 chiffres et code de secteur à 6 chiffres, exemple : 01001020100)
-   Si une colonne de dénominateur est fournie, l'entrée finale du MWI sera le numérateur divisé par le dénominateur, multiplié par le nombre de mise à l'échelle (spécifié dans le fichier de métadonnées, voir l'étape suivante).
-   Les numérateurs et les dénominateurs doivent être des colonnes numériques.
-   Les données manquantes doivent avoir des cellules vides.
-   Si la race est stratifiée, il doit y avoir deux colonnes : une se terminant par « \_pop » correspondant à la mesure de la population globale et une se terminant par « \_black » correspondant à la mesure de la population noire. Dans la modification du fichier Metadata.xlsx, la colonne « Prétraité » de cette ligne doit être définie sur TRUE.

11. Téléchargez Metadata.xlsx avec le bouton ci-dessous. Si vous ajoutez des données personnalisées, ajoutez une ligne et remplissez les informations pour chaque mesure que vous souhaitez ajouter à l'indice de bien-être mental. Les descriptions de chaque colonne peuvent être trouvées dans la feuille « Descriptions des colonnes » du Metadata.xlsx. Notez que tous les noms de colonnes, à l'exception de « dénominateur », doivent être remplis.

-   Si vous avez plusieurs mesures dans un fichier, ajoutez une ligne pour chaque mesure et ses qualités, mais spécifiez le même nom de fichier.
-   Si vous souhaitez supprimer une mesure de votre MWI, supprimez la ligne de mesure ou définissez son poids sur 0.
-   Si vous souhaitez uniquement ajuster les poids, modifiez uniquement la colonne de poids aux valeurs souhaitées. Notez que les pénalités pour les stratifications raciales et la granularité géographique sont toujours appliquées et que les pondérations totales sont mises à l'échelle pour totaliser 100.

12. Mettez vos données (si vous l'utilisez) et le fichier Metadata.xlsx mis à jour dans un fichier ZIP (.zip).

13. Téléchargez votre fichier ZIP et cliquez sur « Créer un MWI personnalisé » ci-dessous. Cela prendra un certain temps, en fonction du nombre de mesures incluses.

14. Une fois la création du MWI personnalisé terminée, cliquez sur « Télécharger le MWI personnalisé » pour télécharger un fichier .RData avec toutes les informations nécessaires pour afficher votre MWI dans cet outil. Remarque : si vous quittez cette page, tous les traitements et données seront perdus ! Rien n'est stocké dans cette application.

15. Pour afficher votre MWI, cliquez sur la case « Téléchargement MWI personnalisé » sous « Explorer les États » ou « Explorer les codes postaux » et téléchargez le fichier « .RData » téléchargé.

# Utilisation des données MWI

Si vous souhaitez utiliser le MWI ou ses mesures ou données traitées, consultez les dossiers « Données » et « Documentation » pour plus d'informations. Chaque dossier dans « Données » contient un README détaillant les fichiers inclus. Toutes les données, à l'exception du fichier de métadonnées, sont au format CSV.

Les dossiers dans « Données » sont les suivants :

-   Ressources : contient des fichiers permettant de traiter les données et de référencer les passages pour piétons géographiques.
-   Prétraité : contient des données prétraitées pour toutes les mesures dans le format requis par le pipeline MWI : une colonne pour indiquer l'identifiant géographique, puis une pour la valeur numérique de chaque mesure.
-   Nettoyé : contient les résultats de l'indice de bien-être mental et les résultats du pipeline de traitement.

# Configuration technique

Remarque : cette section est principalement destinée aux contributeurs.

## Pipeline de données

![](www/media/Data%20Pipeline.png)

## Synchronisation des données

Synchronisez le dossier Microsoft Teams BHN Score Creation dans votre dossier local The MITRE Corporation (One-Drive)

## Finaliser les mesures

Document de suivi des mesures situé dans`Teams`>`BHN Score`>`Measure-Tracking.xslx`

Référez-vous à ce document et mettez-le à jour lorsque des mesures supplémentaires seront finalisées.

## Extraire des données

Ajouter des données extraites d'une API ou directement téléchargées depuis un site Web tombera dans l'un des deux dossiers :

-   `Teams`>`BHN Score`>`Data`>`Raw`

    -   si un calcul de mesure doit être effectué (c'est-à-dire la géographie du point vers la géographie du conteneur, les calculs de prévalence, etc.)

    -   l'extension de fichier peut également être .xlsx, .csv, .dta, etc.

-   `Teams`>`BHN Score`>`Data`>`Preprocessed`

    -   si les données sont dans un format où chaque ligne est un conteneur géographique (c'est-à-dire secteur de recensement, comté, code postal, etc.)

    -   l'extension du fichier est .csv uniquement

    -   **Note:**Pour toutes les données extraites d'une API (tidycensus, etc.), effectuez toutes les tâches de prétraitement et écrivez les données directement dans`Preprocessed`dossier.

Lorsque vous extrayez des données, assurez-vous de remplir les colonnes pertinentes dans le`Measure-Tracking.xlsx`et/ou`Metadata.xlsx`fichiers.

## Enregistrement des mesures

Mesure Document de référence en`Teams`>`BHN Score`>`Data`>`Metadata.xslx`. Ce document fournit les informations requises pour le traitement par lots/l'analyse par lots, des données prétraitées aux données propres.

### Données prétraitées

Ce fichier contient des informations sur tous**prétraité**mesure et informe toutes les transformations supplémentaires qui doivent se produire entre le prétraitement et les données nettoyées, notamment :

-   Tout niveau géographique ->Niveau ZCTA uniquement

-   Mesurer la directionnalité alignée (des valeurs plus élevées indiquent un besoin plus élevé)

-   Mise à l'échelle alignée (fractions en pourcentages 0,1 ->10 (%), ajustements de prévalence (pour 1 000 personnes), etc.)

### Données nettoyées

Une fois les données nettoyées, elles seront fusionnées dans le fichier de mesures combinées. Il y aura deux versions :

-   Fichier original de mesures combinées :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Fichier de mesures combinées à l'échelle des percentiles :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

De plus, des informations sur les données (montant manquant, nombre de lignes non manquantes, etc.) sont générées et apparaissent dans :`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

### Analyse

Avec les fichiers de mesures combinées, nous effectuerons les analyses suivantes :

-   Analyse de covariance (signalisation et gestion d'ensembles de variables à forte multi-colinéarité)

-   Analyse des défauts (identification des mesures avec plusieurs valeurs manquantes élevées, identification des ZCTA avec plusieurs mesures manquantes)

-   Validation croisée avec d'autres mesures composites (COI, UNS, CHR, SVI, etc.)

### Documentation

La documentation des mesures peut être trouvée dans`Teams`>`BHN Score`>`Documentation`dossier.

## Poids

Nous allons créer 3 ensembles de fichiers de poids :

-   Pondération parcimonieuse (tous poids égaux)

-   Méthode de détermination de la pondération du Child Opportunity Index

-   Pondération du classement de santé du comté

## Création de partition

Les scores finaux pour chaque ZCTA seront créés en combinant le fichier de poids et de mesures combinées. Les mesures et les poids des mesures sont multipliés ensemble, additionnés pour chaque ZCTA, puis rééchelonnés de 0 à 100. Les scores apparaissent (avec les mesures classées en centiles) dans`Teams`>`BHN Score`>`Data`>`Cleaned`:

-   Score de la population totale :`HSE_BHN_ZCTA_Score_Black.csv`

-   Score de la population noire :`HSE_BHN_ZCTA_Score_Population.csv`

# Contact et attribution

Pour toute question ou préoccupation, veuillez contacter[socialjustice@mitre.org](mailto:socialjustice@mitre.org).

Approuvé pour diffusion publique ; Distribution illimitée. Numéro de cas de diffusion publique 21-3708. ©2021 La société MITRE. TOUS DROITS RÉSERVÉS.
