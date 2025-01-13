# Mental Wellness Index™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)


## Translation
### README in Different Languages

- [English](README.md)
- [简体中文](README.zh-CN.md)
- [Française](README.fr.md)
- [عربى](README.ar.md)
- [日本語](README.ja.md)
- [Bahasa Melayu](README.ms.md)

# Table of Contents

- [Mental Wellness Index (MWI)](#mental-wellness-index-mwi)
  - [MWI Domains & Measures](#mwi-domains--measures)
  - [Focus on Black Americans](#focus-on-black-americans)
  - [2023 Data Update](#2023-data-update)
- [Set Up MWI and Create Your Own MWI](#set-up-mwi-and-create-your-own-mwi)
  - [Basic Setup (Instructions 1-8)](#basic-setup-instructions-1-8)
  - [Alternative Command Line Setup](#alternative-command-line-setup)
  - [Creating Custom MWI (Instructions 9-15)](#creating-custom-mwi-instructions-9-15)
- [Using MWI Data](#using-mwi-data)
  - [Data Directory Structure](#data-directory-structure)
  - [Resources](#resources)
  - [Preprocessed Data](#preprocessed-data)
  - [Cleaned Data](#cleaned-data)
- [Technical Setup](#technical-set-up)
  - [Data Pipeline Architecture](#data-pipeline-architecture)
  - [Development Environment](#development-environment)
  - [Data Management](#data-management)
  - [Measure Registration System](#measure-registration-system)
  - [Analysis Methodology](#analysis-methodology)
  - [Weighting Systems](#weighting-systems)
  - [Score Generation](#score-generation)
- [Advanced Features](#advanced-features)
  - [Custom Data Integration](#custom-data-integration)
  - [Metadata Configuration](#metadata-configuration)
  - [Analysis Tools](#analysis-tools)
  - [Visualization Options](#visualization-options)
- [Contributing Guidelines](#contributing-guidelines)
  - [Development Setup](#development-setup)
- [Contact and Attribution](#contact-and-attribution)
  - [Support Channels](#support-channels)
  - [License Information](#license-information)
  - [Acknowledgments](#acknowledgments)

# Mental Wellness Index (MWI)

To view the Mental Wellness Index Tool, please visit https://sjp.mitre.org/mwi. For more detailed information about the Mental Wellness Index, see below or view the insight [here](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

The Mental Wellness Index is a comprehensive framework and dashboard tool that provides a detailed picture of community-level mental wellness for each zip code* in the nation. The MWI comprises 28 measures across 3 distinct domains: Social Determinants of Health, Healthcare Access, and Health Status. Structural Racism and Community & Cultural Assets are woven throughout the domains of the MWI itself, reflecting their pervasive influence throughout the measure framework.

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*ZIP Code Tabulation Area (ZCTA)

## MWI Domains & Measures

The MWI generates a sophisticated score for each zip code between 0 and 100, where:

- Higher values (closer to 100) indicate more **assets** that **support** community mental wellness
- Lower values (closer to 0) indicate more **obstacles** that **challenge** community mental wellness

^ indicates measures that are race stratified

![](www/media/MWI%20Full%20Measures.png)

## Focus on Black Americans

The MWI was specifically developed with the mental health status of Black Americans as a central consideration. We intentionally selected Black Americans as a priority population to center at the margins and avoid creating an index focused on the 'average community.' This deliberate choice reflects our belief that focusing on Black Americans in this way creates benefits for all groups experiencing disparities, adhering to the principle that none of us are well until all of us are well. We also acknowledge the necessity to identify, recognize, and adapt the MWI for additional priority populations in future iterations.

## 2023 Data Update

Data has been comprehensively updated to the most recently available as of January 24, 2023. For access to previously released versions of the MWI, please refer to our [Releases](https://github.com/mitre/hse-mwi/releases) page.

# Set Up MWI and Create Your Own MWI

## Basic Setup (Instructions 1-8)
Follow these steps for a basic installation and running of the Mental Wellness Index Tool:

1. **Environment Setup**
   - Download and install [R](https://www.r-project.org/)
   - Download and install [RStudio](https://www.rstudio.com/products/rstudio/download/)
   - Ensure you have a modern browser (Firefox, Chrome, Edge, etc.) set as default

2. **Repository Download**
   - Navigate to the [Mental Wellness Index GitHub page](https://github.com/mitre/hse-mwi)
   - Click "Code" in the top right corner
   - Select "Download ZIP" from the dropdown menu
   - Locate the downloaded "hse-mwi-main.zip" in your downloads folder

3. **Initial Configuration**
   - Unzip "hse-mwi-main.zip"
   - Open "app.R" in RStudio
   - Locate line 11: "app_local <- FALSE"
   - Change FALSE to TRUE

4. **Package Installation**
   Run the following command in the RStudio console:
   ```R
   install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                     'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                     'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                     'shinyBS', 'DT', 'dplyr'))
   ```

## Alternative Command Line Setup

### Windows Setup
```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### macOS Setup
```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Linux Setup (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## Creating Custom MWI (Instructions 9-15)

### Data Preparation
9. **Data Format Requirements**
   - File format: CSV (comma separated value)
   - Required columns:
     - Geographical ID (numeric)
     - Data numerator
     - Data denominator (if applicable)

10. **Acceptable Geographic ID Types**
    - ZCTA: 5 digits (e.g., 35406)
    - County: 5 digit FIPS Code (e.g., 01001)
    - ZIP Code: 5 digits (e.g., 35051)
    - Census Tract: 11 digit FIPS Code (e.g., 01001020100)

11. **Data Processing Rules**
    - Final calculation: (numerator/denominator) × scaling factor
    - Missing data: Leave cells blank
    - Race stratified data:
      - Column suffix '_pop': overall population measure
      - Column suffix '_black': Black population measure
      - Set 'Preprocessed' to TRUE in Metadata.xlsx

### Metadata Configuration
12. **Metadata.xlsx Requirements**
    - Download and modify the template
    - Required fields for each measure:
      - Measure name
      - File name
      - Geographic level
      - Directionality
      - Weight
      - Description
      - Source
      - Year
      - Notes
    - Optional: denominator field

13. **Custom MWI Creation**
    - Combine data and metadata files in ZIP format
    - Upload ZIP file through the interface
    - Wait for processing completion

14. **Data Export**
    - Download the generated .RData file
    - Store safely - no data is retained in the application

15. **Visualization**
    - Use 'Custom MWI Upload' feature
    - Available in both 'Explore States' and 'Explore ZIP Codes' sections

# Using MWI Data

## Data Directory Structure
The "Data" folder contains several important subdirectories:

### Resources
- Geographic crosswalk files
- Data processing utilities
- Reference documentation

### Preprocessed
- Standardized measure data
- Geographic identifier columns
- Numerical measure values

### Cleaned
- Final MWI results
- Processing pipeline outputs
- Quality assurance reports

# Technical Set Up

## Data Pipeline Architecture

![](www/media/Data%20Pipeline.png)

## Development Environment

### Data Synchronization
- Connect to Microsoft Teams BHN Score Creation folder
- Sync with local The MITRE Corporation (One-Drive) folder

### Measure Documentation
- Location: `Teams > BHN Score > Measure-Tracking.xlsx`
- Update when adding new measures
- Track measure status and modifications

## Data Management

### Raw Data Storage
```
Teams > BHN Score > Data > Raw
- For data requiring processing
- Supports multiple formats (.xlsx, .csv, .dta)
```

### Preprocessed Data
```
Teams > BHN Score > Data > Preprocessed
- Contains geographic container-level data
- CSV format only
- Direct API data processing
```

### Cleaned Data

Once data is cleaned, they will be merged into the Combined Measures file. There will be two versions:

-   Original combined measures file: `Teams` \> `BHN Score` \>`Data` \> `Cleaned` \> `HSE_ZCTA_Converted_Measures.csv`

-   Percentile Scaled combined measures file: `Teams` \> `BHN Score` \>`Data` \> `Cleaned` \> `HSE_ZCTA_Percentile_Ranked_Measures.csv`

In addition, information about data (amount missing, number of nonmissing rows, etc.) is generated and appears in: `Teams` \> `BHN Score` \>`Data` \> `Cleaned` \> `HSE_BHN_Data_Information.csv`.


## Measure Registration System

### Documentation Location
```
Teams > BHN Score > Data > Metadata.xlsx
```

### Processing Specifications
- Geographic standardization
- Measure directionality
- Scaling adjustments
- Race stratification handling

## Analysis Methodology

### Covariance Analysis
- Identify variable collinearity
- Manage redundant measures
- Optimize measure selection

### Missing Data Analysis
- Track missing value patterns
- Identify problematic ZCTAs
- Document data gaps

### Cross-Validation
- Compare with existing indices:
  - COI (Child Opportunity Index)
  - UNS (Unified Needs Score)
  - CHR (County Health Rankings)
  - SVI (Social Vulnerability Index)

## Weighting Systems

Three distinct weighting methodologies:

1. **Parsimonious Weighting**
   - Equal weights across measures
   - Baseline comparison model

2. **Child Opportunity Index Method**
   - Adapted from COI methodology
   - Domain-specific weightings

3. **County Health Rankings Method**
   - Based on CHR framework
   - Health outcome focus

## Score Generation

### Process Flow
1. Combine weights with measure data
2. Calculate weighted sums by ZCTA
3. Scale results to 0-100 range
4. Generate separate scores:
   - Total Population Score
   - Black Population Score

### Output Files
Located in `Teams > BHN Score > Data > Cleaned`:
- `HSE_BHN_ZCTA_Score_Black.csv`
- `HSE_BHN_ZCTA_Score_Population.csv`

# Advanced Features

## Custom Data Integration

The MWI allows you to integrate custom data sources to create specialized indices tailored to your needs:

- Support for multiple data formats (CSV, Excel, etc.)
- Flexible geographic identifier mapping
- Automated data validation and cleaning
- Custom measure creation capabilities

## Metadata Configuration

Detailed guide for configuring metadata for custom measures:

- Required fields and their descriptions
- Data validation rules
- Example configurations
- Best practices for measure definition

## Analysis Tools

Built-in tools for analyzing your MWI data:

- Statistical analysis utilities
- Data quality assessment tools
- Correlation analysis
- Trend identification
- Geographic clustering analysis

## Visualization Options

Available visualization tools and options:

- Interactive maps
- Time series charts
- Comparative analysis views
- Custom report generation
- Export capabilities

# Contributing Guidelines

## Development Setup

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/your-username/hse-mwi.git
   ```
3. Set up development environment:
   ```bash
   cd hse-mwi
   Rscript setup-dev.R
   ```


# Contact and Attribution

## Support Channels

For assistance and inquiries:
- Primary Email: socialjustice@mitre.org
- Technical Support: [GitHub Issues](https://github.com/mitre/hse-mwi/issues)
- Community Forum: [Discussions](https://github.com/mitre/hse-mwi/discussions)
- Documentation: [Wiki](https://github.com/mitre/hse-mwi/wiki)

## License Information

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

The Mental Wellness Index™ is a trademark of The MITRE Corporation.

## Acknowledgments

- Contributors to the Mental Wellness Index
- Research partners and data providers
- Community organizations and stakeholders
- Open source community

**Approved for Public Release; Distribution Unlimited.**
Public Release Case Number 21-3708
©2021 The MITRE Corporation. ALL RIGHTS RESERVED.

---

*Last updated: January 2024*
