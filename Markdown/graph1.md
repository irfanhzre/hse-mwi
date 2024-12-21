```mermaid
graph TD
%% Styling
classDef core fill:#e3f2fd,stroke:#2196F3,stroke-width:2px
classDef data fill:#fff3e6,stroke:#FF9800,stroke-width:2px
classDef utility fill:#f3e5f5,stroke:#9c27b0,stroke-width:2px

%% Nodes
A[create_cleaned_mwi.R<br>Pipeline Launcher]:::utility

D1[Raw Data<br>.csv, .xlsx]:::data
D2[Metadata.xlsx]:::data
D3[Geographic Data<br>ZCTA, County]:::data

B[pipeline_driver.R<br>Main Controller]:::core
C[read_geo_files.R<br>ZIP Code Processor]:::utility

E[crosswalk_func.R<br>Geographic Conversion Engine]:::core
F[relationship_func.R<br>Census Conversion]:::core

G[Mental Wellness Index<br>Final Scores]:::data

%% Dependencies and Data Flow
A -->|launches| B
D1 -->|input| B
D2 -->|input| B
D3 -->|input| B

B -.->|calls| C
B -->|controls| E
B -->|controls| F

E -->|processes| G
F -->|processes| G

%% Subgraph for legend
subgraph Legend
    L1[Core Module]:::core
    L2[Utility Module]:::utility
    L3[Data]:::data
    L4[Data Flow]
    L5[Control Flow]
end
