# Indeks Kesejahteraan Mental™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)

## Terjemahan

### README dalam Bahasa Berbeza

-   [Inggeris](README.md)
-   [Cina ringkas](README.zh-CN.md)
-   [Perancis](README.fr.md)
-   [Arab](README.ar.md)
-   [Jepun](README.ja.md)
-   [Bahasa Melayu](README.ms.md)

# Jadual Kandungan

-   [Indeks Kesejahteraan Mental (MWI)](#mental-wellness-index-mwi)
    -   [Domain dan Ukuran MWI](#mwi-domains--measures)
    -   [Fokus pada orang kulit hitam Amerika](#focus-on-black-americans)
    -   [Kemas Kini Data 2023](#2023-data-update)
-   [Sediakan MWI dan Cipta MWI Anda Sendiri](#set-up-mwi-and-create-your-own-mwi)
    -   [Persediaan Asas (Arahan 1-8)](#basic-setup-instructions-1-8)
    -   [Persediaan Barisan Perintah Alternatif](#alternative-command-line-setup)
    -   [Mencipta MWI Tersuai (Arahan 9-15)](#creating-custom-mwi-instructions-9-15)
-   [Menggunakan Data MWI](#using-mwi-data)
    -   [Struktur Direktori Data](#data-directory-structure)
    -   [Sumber](#resources)
    -   [Data Praproses](#preprocessed-data)
    -   [Data Dibersihkan](#cleaned-data)
-   [Persediaan Teknikal](#technical-set-up)
    -   [Senibina Talian Paip Data](#data-pipeline-architecture)
    -   [Persekitaran Pembangunan](#development-environment)
    -   [Pengurusan Data](#data-management)
    -   [Sistem Pendaftaran Ukur](#measure-registration-system)
    -   [Metodologi Analisis](#analysis-methodology)
    -   [Sistem Pemberat](#weighting-systems)
    -   [Penjanaan Skor](#score-generation)
-   [Ciri Lanjutan](#advanced-features)
    -   [Penyepaduan Data Tersuai](#custom-data-integration)
    -   [Konfigurasi Metadata](#metadata-configuration)
    -   [Alat Analisis](#analysis-tools)
    -   [Pilihan Visualisasi](#visualization-options)
-   [Garis Panduan Menyumbang](#contributing-guidelines)
    -   [Persediaan Pembangunan](#development-setup)
-   [Kenalan dan Atribusi](#contact-and-attribution)
    -   [Saluran Sokongan](#support-channels)
    -   [Maklumat Lesen](#license-information)
    -   [Ucapan terima kasih](#acknowledgments)

# Indeks Kesejahteraan Mental (MWI)

Untuk melihat Alat Indeks Kesejahteraan Mental, sila lawati<https://sjp.mitre.org/mwi>. Untuk maklumat lebih terperinci tentang Indeks Kesejahteraan Mental, lihat di bawah atau lihat pandangan[di sini](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

Indeks Kesejahteraan Mental ialah rangka kerja dan alat papan pemuka yang komprehensif yang memberikan gambaran terperinci tentang kesihatan mental peringkat komuniti untuk setiap poskod\* di negara ini. MWI terdiri daripada 28 langkah merentasi 3 domain berbeza: Penentu Sosial Kesihatan, Akses Penjagaan Kesihatan dan Status Kesihatan. Perkauman Struktural dan Aset Komuniti & Budaya dijalin di seluruh domain MWI itu sendiri, mencerminkan pengaruh meresapnya di seluruh rangka kerja ukuran.

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*Kawasan Penjadualan Kod Pos (ZCTA)

## Domain dan Ukuran MWI

MWI menjana skor yang canggih untuk setiap poskod antara 0 dan 100, di mana:

-   Nilai yang lebih tinggi (lebih hampir kepada 100) menunjukkan lebih banyak**aset**itu**sokongan**kesejahteraan mental masyarakat
-   Nilai yang lebih rendah (lebih hampir kepada 0) menunjukkan lebih banyak**halangan**itu**cabaran**kesejahteraan mental masyarakat

^ menunjukkan langkah-langkah yang berstrata kaum

![](www/media/MWI%20Full%20Measures.png)

## Fokus pada orang kulit hitam Amerika

MWI telah dibangunkan secara khusus dengan status kesihatan mental orang kulit hitam Amerika sebagai pertimbangan utama. Kami sengaja memilih warga kulit hitam Amerika sebagai populasi keutamaan untuk berpusat di margin dan mengelak daripada mencipta indeks yang tertumpu pada 'komuniti sederhana.' Pilihan yang disengajakan ini mencerminkan kepercayaan kami bahawa memfokuskan kepada orang kulit hitam Amerika dengan cara ini menghasilkan manfaat untuk semua kumpulan yang mengalami jurang perbezaan, mematuhi prinsip bahawa tiada seorang pun daripada kita sihat sehingga kita semua sihat. Kami juga mengakui keperluan untuk mengenal pasti, mengiktiraf dan menyesuaikan MWI untuk populasi keutamaan tambahan dalam lelaran masa hadapan.

## Kemas Kini Data 2023

Data telah dikemas kini secara menyeluruh kepada yang terbaru tersedia pada 24 Januari 2023. Untuk akses kepada versi MWI yang dikeluarkan sebelum ini, sila rujuk kami[Keluaran](https://github.com/mitre/hse-mwi/releases)muka surat.

# Sediakan MWI dan Cipta MWI Anda Sendiri

## Persediaan Asas (Arahan 1-8)

Ikuti langkah ini untuk pemasangan asas dan menjalankan Alat Indeks Kesejahteraan Mental:

1.  **Persediaan Persekitaran**
    -   Muat turun dan pasang[R](https://www.r-project.org/)
    -   Muat turun dan pasang[RStudio](https://www.rstudio.com/products/rstudio/download/)
    -   Pastikan anda mempunyai penyemak imbas moden (Firefox, Chrome, Edge, dll.) ditetapkan sebagai lalai

2.  **Muat Turun Repositori**
    -   Navigasi ke[Halaman GitHub Indeks Kesejahteraan Mental](https://github.com/mitre/hse-mwi)
    -   Klik "Kod" di penjuru kanan sebelah atas
    -   Pilih "Muat turun ZIP" daripada menu lungsur
    -   Cari "hse-mwi-main.zip" yang dimuat turun dalam folder muat turun anda

3.  **Konfigurasi Awal**
    -   Nyahzip "hse-mwi-main.zip"
    -   Buka "app.R" dalam RStudio
    -   Cari baris 11: "app_local &lt;- FALSE"
    -   Tukar FALSE kepada TRUE

4.  **Pemasangan Pakej**Jalankan arahan berikut dalam konsol RStudio:
    ```R
    install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                      'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                      'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                      'shinyBS', 'DT', 'dplyr'))
    ```

## Persediaan Barisan Perintah Alternatif

### Persediaan Windows

```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Persediaan macOS

```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Persediaan Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## Mencipta MWI Tersuai (Arahan 9-15)

### Penyediaan Data

9.  **Keperluan Format Data**
    -   Format fail: CSV (nilai dipisahkan koma)
    -   Lajur yang diperlukan:
        -   ID Geografi (angka)
        -   Pengangka data
        -   Penyebut data (jika berkenaan)

10. **Jenis ID Geografi yang Boleh Diterima**
    -   ZCTA: 5 digit (mis., 35406)
    -   Daerah: 5 digit Kod FIPS (cth., 01001)
    -   Poskod: 5 digit (cth., 35051)
    -   Banci Trak: 11 digit Kod FIPS (cth., 01001020100)

11. **Peraturan Pemprosesan Data**
    -   Pengiraan akhir: (pembilang/penyebut) × faktor penskalaan
    -   Data tiada: Biarkan sel kosong
    -   Data berstrata perlumbaan:
        -   Akhiran lajur '\_pop': ukuran populasi keseluruhan
        -   Akhiran lajur '\_black': Ukuran populasi kulit hitam
        -   Tetapkan 'Praproses' kepada TRUE dalam Metadata.xlsx

### Konfigurasi Metadata

12. **Keperluan Metadata.xlsx**
    -   Muat turun dan ubah suai templat
    -   Medan yang diperlukan untuk setiap ukuran:
        -   Ukur nama
        -   Nama fail
        -   Tahap geografi
        -   Arah arah
        -   Berat badan
        -   Penerangan
        -   Sumber
        -   tahun
        -   Nota
    -   Pilihan: medan penyebut

13. **Penciptaan MWI Tersuai**
    -   Gabungkan data dan fail metadata dalam format ZIP
    -   Muat naik fail ZIP melalui antara muka
    -   Tunggu sehingga pemprosesan selesai

14. **Eksport Data**
    -   Muat turun fail .RData yang dijana
    -   Simpan dengan selamat - tiada data disimpan dalam aplikasi

15. **Visualisasi**
    -   Gunakan ciri 'Muat Naik MWI Tersuai'
    -   Tersedia dalam kedua-dua bahagian 'Teroka Negeri' dan 'Teroka Kod ZIP'

# Menggunakan Data MWI

## Struktur Direktori Data

Folder "Data" mengandungi beberapa subdirektori penting:

### Sumber

-   Fail lintasan geografi
-   Utiliti pemprosesan data
-   Dokumentasi rujukan

### Diproses terlebih dahulu

-   Data ukuran piawai
-   Lajur pengecam geografi
-   Nilai ukuran berangka

### Dibersihkan

-   Keputusan MWI akhir
-   Memproses output saluran paip
-   Laporan jaminan kualiti

# Persediaan Teknikal

## Senibina Talian Paip Data

![](www/media/Data%20Pipeline.png)

## Persekitaran Pembangunan

### Penyegerakan Data

-   Sambung ke folder Microsoft Teams BHN Score Creation
-   Segerakkan dengan folder The MITER Corporation (One-Drive) setempat

### Mengukur Dokumentasi

-   lokasi:`Teams > BHN Score > Measure-Tracking.xlsx`
-   Kemas kini apabila menambah langkah baharu
-   Jejaki status dan pengubahsuaian ukuran

## Pengurusan Data

### Storan Data Mentah

    Teams > BHN Score > Data > Raw
    - For data requiring processing
    - Supports multiple formats (.xlsx, .csv, .dta)

### Data Praproses

    Teams > BHN Score > Data > Preprocessed
    - Contains geographic container-level data
    - CSV format only
    - Direct API data processing

### Data Dibersihkan

Setelah data dibersihkan, data tersebut akan digabungkan ke dalam fail Gabungan Langkah. Akan ada dua versi:

-   Fail langkah gabungan asal:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Fail ukuran gabungan Berskala Persentil:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

Selain itu, maklumat tentang data (jumlah yang hilang, bilangan baris yang tidak hilang, dll.) dijana dan muncul dalam:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

## Sistem Pendaftaran Ukur

### Lokasi Dokumentasi

    Teams > BHN Score > Data > Metadata.xlsx

### Spesifikasi Pemprosesan

-   Penyeragaman geografi
-   Ukur arah
-   Pelarasan skala
-   Pengendalian stratifikasi kaum

## Metodologi Analisis

### Analisis Kovarians

-   Kenal pasti kolineariti pembolehubah
-   Uruskan langkah berlebihan
-   Optimumkan pemilihan ukuran

### Analisis Data Tiada

-   Jejaki corak nilai yang tiada
-   Kenal pasti ZCTA yang bermasalah
-   Jurang data dokumen

### Pengesahan Silang

-   Bandingkan dengan indeks sedia ada:
    -   COI (Indeks Peluang Kanak-kanak)
    -   UNS (Skor Keperluan Bersatu)
    -   CHR (Kedudukan Kesihatan Daerah)
    -   SVI (Indeks Kerentanan Sosial)

## Sistem Pemberat

Tiga metodologi pemberat yang berbeza:

1.  **Pemberatan Parsimonious**
    -   Berat sama merentas sukatan
    -   Model perbandingan garis dasar

2.  **Kaedah Indeks Peluang Kanak-kanak**
    -   Diadaptasi daripada metodologi COI
    -   Pemberat khusus domain

3.  **Kaedah Kedudukan Kesihatan Daerah**
    -   Berdasarkan rangka kerja CHR
    -   Fokus hasil kesihatan

## Penjanaan Skor

### Aliran Proses

1.  Menggabungkan pemberat dengan data ukuran
2.  Kira jumlah wajaran mengikut ZCTA
3.  Skalakan keputusan kepada julat 0-100
4.  Hasilkan markah berasingan:
    -   Jumlah Skor Penduduk
    -   Skor Populasi Hitam

### Fail Output

Terletak di`Teams > BHN Score > Data > Cleaned`:

-   `HSE_BHN_ZCTA_Score_Black.csv`
-   `HSE_BHN_ZCTA_Score_Population.csv`

# Ciri Lanjutan

## Penyepaduan Data Tersuai

MWI membolehkan anda menyepadukan sumber data tersuai untuk mencipta indeks khusus yang disesuaikan dengan keperluan anda:

-   Sokongan untuk berbilang format data (CSV, Excel, dll.)
-   Pemetaan pengecam geografi yang fleksibel
-   Pengesahan dan pembersihan data automatik
-   Keupayaan penciptaan ukuran tersuai

## Konfigurasi Metadata

Panduan terperinci untuk mengkonfigurasi metadata untuk langkah tersuai:

-   Medan yang diperlukan dan penerangannya
-   Peraturan pengesahan data
-   Contoh konfigurasi
-   Amalan terbaik untuk definisi ukuran

## Alat Analisis

Alat terbina dalam untuk menganalisis data MWI anda:

-   Utiliti analisis statistik
-   Alat penilaian kualiti data
-   Analisis korelasi
-   Pengenalpastian aliran
-   Analisis pengelompokan geografi

## Pilihan Visualisasi

Alat dan pilihan visualisasi yang tersedia:

-   Peta interaktif
-   Carta siri masa
-   Pandangan analisis perbandingan
-   Penjanaan laporan tersuai
-   Keupayaan eksport

# Garis Panduan Menyumbang

## Persediaan Pembangunan

1.  Garpu repositori
2.  Klon garpu anda:
    ```bash
    git clone https://github.com/your-username/hse-mwi.git
    ```
3.  Sediakan persekitaran pembangunan:
    ```bash
    cd hse-mwi
    Rscript setup-dev.R
    ```

# Kenalan dan Atribusi

## Saluran Sokongan

Untuk bantuan dan pertanyaan:

-   E-mel Utama:[socialjustice@mitre.org](mailto:socialjustice@mitre.org)
-   Sokongan Teknikal:[Isu GitHub](https://github.com/mitre/hse-mwi/issues)
-   Forum Komuniti:[Perbincangan](https://github.com/mitre/hse-mwi/discussions)
-   Dokumentasi:[Seminggu](https://github.com/mitre/hse-mwi/wiki)

## Maklumat Lesen

Projek ini dilesenkan di bawah Lesen MIT. Lihat[LESEN](LICENSE)fail untuk butiran.

Mental Wellness Index™ ialah tanda dagangan The MITER Corporation.

## Ucapan terima kasih

-   Penyumbang kepada Indeks Kesejahteraan Mental
-   Rakan kongsi penyelidikan dan pembekal data
-   Organisasi komuniti dan pihak berkepentingan
-   Komuniti sumber terbuka

**Diluluskan untuk Siaran Umum; Pengedaran Tanpa Had.**Nombor Kes Siaran Awam 21-3708
©2021 The MITER Corporation. SEMUA HAK TERPELIHARA.

* * *

_Kemas kini terakhir: Januari 2024_
