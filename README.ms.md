# Indeks Kesejahteraan Mental™ (MWI)

## Terjemahan

# README dalam Bahasa Berbeza

-   [Inggeris](README.md)
-   [Cina ringkas](README.zh-CN.md)
-   [Perancis](README.fr.md)
-   [Arab](README.ar.md)
-   [Jepun](README.ja.md)
-   [Bahasa Melayu](README.ms.md)

# Garis besar

-   [Indeks Kesejahteraan Mental (MWI)](#Mental-Wellness-Index-(MWI))
-   [Sediakan MWI dan Cipta MWI Anda Sendiri](#Set-Up-MWI-and-Create-Your-Own-MWI)
-   [Menggunakan Data MWI](#Using-MWI-Data)
-   [Persediaan Teknikal](#Technical-Set-Up)(hanya berguna untuk penyumbang)
-   [Kenalan dan Atribusi](#Contact-and-Attribution)

# Indeks Kesejahteraan Mental (MWI)

Untuk melihat Alat Indeks Kesejahteraan Mental, sila lihat<https://sjp.mitre.org/mwi>. Untuk maklumat lanjut tentang Indeks Kesejahteraan Mental, lihat di bawah atau lihat pandangan[di sini](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

Indeks Kesejahteraan Mental ialah rangka kerja dan alat papan pemuka yang memberikan gambaran kesihatan mental peringkat komuniti untuk setiap poskod\*dalam negara. MWI terdiri daripada 28 langkah daripada 3 domain: Penentu Sosial Kesihatan, Akses Penjagaan Kesihatan dan Status Kesihatan. Perkauman Struktural dan Aset Komuniti & Budaya dijalin di sekeliling dan di seluruh domain MWI itu sendiri, mencerminkan pengaruhnya sepanjang rangka kerja ukuran.

<p align = "center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

Hasrat Indeks Kesejahteraan Mental adalah untuk memberikan gambaran kesihatan mental komuniti supaya pemimpin komuniti, pegawai kesihatan awam dan entiti pembiayaan dapat memahami cara terbaik mereka mengarahkan sokongan kesihatan mental untuk membina aset komuniti tertentu dan mengisinya. jurang.

\*Kawasan Penjadualan Kod Pos (ZCTA)

## Domain dan Ukuran MWI

MWI mencipta skor untuk setiap poskod antara 0 dan 100, supaya:

-   nilai yang lebih tinggi menunjukkan lebih banyak**aset**itu**sokongan**kesejahteraan mental masyarakat

-   nilai yang lebih rendah menunjukkan lebih banyak**halangan**itu**cabaran**kesejahteraan mental masyarakat

^ menunjukkan langkah-langkah yang berstrata kaum

![](www/media/MWI%20Full%20Measures.png)

## Fokus pada orang kulit hitam Amerika

MWI dibangunkan dengan mengambil kira status kesihatan mental warga kulit hitam Amerika. Kami memilih warga kulit hitam Amerika sebagai populasi keutamaan untuk menumpukan pada margin dan mengelak daripada mencipta indeks yang tertumpu kepada 'komuniti sederhana'. Kami percaya bahawa memberi tumpuan kepada orang kulit hitam Amerika dengan cara ini membolehkan semua kumpulan yang mengalami jurang perbezaan mendapat manfaat kerana tiada seorang pun daripada kita yang sihat sehingga kita semua sihat. Kami juga menyedari keperluan untuk mengenal pasti, mengiktiraf dan menyesuaikan MWI untuk populasi keutamaan tambahan.

## Kemas Kini Data 2023

Data telah dikemas kini kepada yang paling terkini tersedia pada 24 Januari 2023. Jika anda ingin menggunakan versi MWI yang dikeluarkan sebelum ini, lihat[Keluaran](https://github.com/mitre/hse-mwi/releases).

# Sediakan MWI dan Cipta MWI Anda Sendiri

Untuk menyediakan dan hanya menjalankan Alat Indeks Kesejahteraan Mental, ikut arahan 1 - 8.

Untuk mencipta Indeks Kesejahteraan Mental anda sendiri, anda boleh mengikuti arahan yang lain untuk menjalankan Alat Indeks Kesejahteraan Mental pada komputer setempat anda. Ikut arahan 8+ di bawah untuk mencipta MWI anda sendiri untuk komuniti anda di bawah dengan melaraskan pemberat dan/atau menambah data dan metadata anda sendiri.

1.  Muat turun versi percuma[R](https://www.r-project.org/)dan[RStudio](https://www.rstudio.com/products/rstudio/download/). Muat turun penyemak imbas moden (Firefox, Chrome, Edge, dll.) dan jadikan penyemak imbas lalai anda jika anda belum melakukannya.

2.  Pergi ke[Halaman GitHub Indeks Kesejahteraan Mental](https://github.com/mitre/hse-mwi)dan muat turun repositori dengan mengklik "Kod" di penjuru kanan sebelah atas, kemudian mengklik "Muat turun ZIP" daripada menu lungsur. Ini sepatutnya memuat turun fail ZIP repositori MWI ke dalam folder muat turun anda, dipanggil "hse-mwi-main.zip".

3.  Nyahzip "hse-mwi-main.zip".

4.  Dalam folder yang dinyahzip, buka "app.R" dalam RStudio. Ini sepatutnya membuka RStudio dan skrip "app.R" di penjuru kiri sebelah atas aplikasi.

#### Alternatif untuk langkah 1-4

Arahan untuk Penggunaan Baris Perintah

##### 1 . Pasang R dan RStudio

Muat turun dan pasang versi terkini R dan RStudio daripada pautan di bawah jika belum dipasang:
R:<https://www.r-project.org/>RStudio:<https://www.rstudio.com/products/rstudio/download/>Sebagai alternatif, gunakan pengurus pakej untuk memasang R:

Untuk Windows: Gunakan Chocolatey:

`choco install r.project ``choco install r.studio `

Untuk macOS: Gunakan Homebrew:

`brew install --cask r ``brew install --cask rstudio`

Untuk Linux (Ubuntu/Debian):

`sudo apt update  ``sudo apt install r-base  `

##### 2 . Klon Repositori Indeks Kesejahteraan Mental Menggunakan Git

Buka terminal atau command prompt anda dan jalankan arahan berikut:

`git clone https://github.com/mitre/hse-mwi.git`

Ini akan memuat turun repositori ke dalam folder baharu bernama hse-mwi.

Jika git tidak dipasang, pasangkannya:

-   Windows: Git untuk Windows

-   macOS:`brew install git`

-   Linux:`sudo apt install git `

Navigasi ke Direktori Projek

Tukar ke direktori tempat repositori diklon:`cd hse-mwi `

Buka app.R dalam RStudio Menggunakan Baris Perintah

##### 4 . Jalankan arahan berikut untuk melancarkan RStudio dan buka skrip app.R:

Untuk macOS/Linux:`open -a RStudio app.R  `

Untuk Windows:

`Replace <path-to-rstudio> with the full path to RStudio executable:``"<path-to-rstudio>\rstudio.exe" app.R`

Contohnya:

`"C:\Program Files\RStudio\bin\rstudio.exe" app.R `

5.  Dalam tetingkap konsol, yang berada di sudut kiri bawah, masukkan baris berikut dan jawab "ya" kepada semua gesaan dalam konsol semasa anda memasang pakej ini:
    -   install.packages(c('readxl', 'writexl', 'htmltools', 'berkilat', 'shinyjs', 'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 'shinyBS', 'DT', 'dplyr'))

6.  Dalam "app.R", navigasi ke baris 11, yang sepatutnya menyatakan "app_local &lt;- FALSE". Tukar FALSE kepada TRUE.

7.  Di penjuru kanan sebelah atas tetingkap "app.R", anda sepatutnya melihat "Run App". Klik anak panah kecil ke bawah di sebelah kanan itu dan klik "Jalankan Luaran". Kemudian klik "Jalankan Apl".

8.  Selepas kelewatan (ini akan menjadi perlahan pada kali pertama, kemudian lebih cepat selepas itu), Alat Indeks Kesejahteraan Mental harus dibuka dalam penyemak imbas anda. Klik pada tab "Buat MWI Anda Sendiri" dan ikuti langkah yang tinggal untuk mencipta MWI anda sendiri.

9.  Jika anda hanya melaraskan pemberat atau subset kepada Kod ZIP tertentu untuk data yang disertakan, langkau langkah seterusnya. Ini juga boleh dilakukan di laman web[di sini](https://sjp.mitre.org/mwi).

10. Letakkan setiap set data anda dalam format CSV (nilai dipisahkan koma), dengan satu lajur sepadan dengan ID geografi data, lajur sepadan dengan pengangka data dan lajur lain sepadan dengan penyebut (jika perlu).

-   Jenis ID geografi yang diterima sentiasa berangka dan termasuk yang berikut:
    -   ZCTA: 5 digit ZCTA (contoh: 35406)
    -   Daerah: 5 digit Kod FIPS Daerah (2 digit kod negeri dan 3 digit kod daerah, contoh: 01001)
    -   Poskod: Kod Pos Perkhidmatan Pos AS (contoh: 35051)
    -   Bancian Trak: 11 digit Kod Banci Trak FIPS (2 digit kod negeri, 3 digit kod daerah dan 6 digit kod saluran, contoh: 01001020100)
-   Jika lajur penyebut disediakan, input akhir kepada MWI akan menjadi pengangka dibahagikan dengan penyebut, didarab dengan nombor penskalaan (dinyatakan dalam fail metadata, lihat langkah seterusnya).
-   Numerator dan penyebut mestilah lajur angka.
-   Data yang hilang harus dibiarkan kosong.
-   Jika kaum berstrata, perlu ada dua lajur: satu lajur berakhir dengan '\_pop' sepadan dengan ukuran populasi keseluruhan, dan satu lajur berakhir dengan '\_hitam' sepadan dengan ukuran populasi kulit hitam. Dalam pengeditan fail Metadata.xlsx, lajur 'Praproses' baris itu hendaklah ditetapkan kepada BENAR.

11. Muat turun Metadata.xlsx dengan butang di bawah. Jika menambah data tersuai, tambahkan baris dan isikan maklumat untuk setiap ukuran yang ingin anda tambahkan pada Indeks Kesejahteraan Mental. Perihalan untuk setiap lajur boleh didapati dalam helaian 'Perihalan Lajur' Metadata.xlsx. Ambil perhatian bahawa semua nama lajur, kecuali 'penyebut', mesti diisi.

-   Jika anda mempunyai berbilang ukuran dalam satu fail, tambahkan baris untuk setiap ukuran dan kualitinya, tetapi nyatakan nama fail yang sama.
-   Jika anda ingin mengalih keluar ukuran dalam MWI anda, sama ada padamkan baris ukuran atau tetapkan beratnya kepada 0.
-   Jika anda hanya ingin melaraskan pemberat, tukar hanya lajur berat kepada nilai yang dikehendaki. Ambil perhatian bahawa penalti untuk stratifikasi kaum dan butiran geografi masih digunakan dan jumlah wajaran diskalakan kepada jumlah kepada 100.

12. Letakkan data anda (jika menggunakan) dan fail Metadata.xlsx yang dikemas kini dalam fail ZIP (.zip).

13. Muat naik fail ZIP anda dan klik 'Buat MWI Tersuai' di bawah. Ini akan mengambil sedikit masa, bergantung pada jumlah langkah yang disertakan.

14. Setelah penciptaan MWI tersuai selesai, klik 'Muat Turun MWI Tersuai' untuk memuat turun fail .RData dengan semua maklumat yang diperlukan untuk melihat MWI anda dalam alat ini. Nota: jika anda menavigasi keluar dari halaman ini, semua pemprosesan dan data akan hilang! Tiada apa-apa yang disimpan dalam aplikasi ini.

15. Untuk melihat MWI anda, klik kotak 'Muat Naik MWI Tersuai' di bawah 'Teroka Negeri' atau 'Teroka Kod ZIP' dan muat naik fail '.RData' yang dimuat turun.

# Menggunakan Data MWI

Jika anda ingin menggunakan MWI atau langkah atau datanya yang diproses, lihat folder "Data" dan "Dokumentasi" untuk mendapatkan maklumat lanjut. Setiap folder dalam "Data" mempunyai README yang memperincikan fail yang disertakan. Semua data, kecuali fail Metadata, adalah dalam format CSV.

Folder dalam "Data" adalah seperti berikut:

-   Sumber: mengandungi fail untuk memproses data dan merujuk persimpangan geografi.
-   Praproses: mengandungi data praproses untuk semua ukuran dalam format yang diperlukan oleh saluran paip MWI: satu lajur untuk menunjukkan pengecam geografi, kemudian satu untuk nilai berangka setiap ukuran.
-   Dibersihkan: mengandungi keputusan Indeks Kesejahteraan Mental dan memproses keputusan saluran paip.

# Persediaan Teknikal

Nota: bahagian ini terutamanya untuk penyumbang.

## Talian Paip Data

![](www/media/Data%20Pipeline.png)

## Penyegerakan Data

Segerakkan folder Microsoft Teams BHN Score Creation ke dalam folder The MITER Corporation (One-Drive) setempat anda

## Memuktamadkan Langkah

Dokumen Penjejakan Ukur terletak di`Teams`>`BHN Score`>`Measure-Tracking.xslx`

Rujuk dan kemas kini dokumen ini apabila langkah tambahan dimuktamadkan.

## Menarik Data

Menambah data yang ditarik daripada API atau dimuat turun terus daripada tapak web akan dimasukkan ke dalam salah satu daripada dua folder:

-   `Teams`>`BHN Score`>`Data`>`Raw`

    -   jika sebarang pengiraan ukuran perlu diselesaikan (iaitu titik geografi ke geografi bekas, pengiraan kelaziman, dsb.)

    -   sambungan fail juga boleh menjadi .xlsx, .csv, .dta, dsb

-   `Teams`>`BHN Score`>`Data`>`Preprocessed`

    -   jika data jatuh ke dalam format di mana setiap baris adalah bekas geografi (iaitu Banci Tract, County, Poskod, dsb.)

    -   sambungan fail ialah .csv sahaja

    -   **Nota:**Untuk sebarang data yang diambil daripada API (tidycensus, dll.), laksanakan sebarang tugas pra-pemprosesan dan tulis data terus ke`Preprocessed`folder.

Apabila menarik data, pastikan anda mengisi lajur yang berkaitan dalam`Measure-Tracking.xlsx`dan / atau`Metadata.xlsx`fail.

## Ukur Pendaftaran

Ukur dokumen Pendaftaran dalam`Teams`>`BHN Score`>`Data`>`Metadata.xslx`. Dokumen ini menyediakan maklumat yang diperlukan untuk pemprosesan kelompok / analisis kelompok daripada data Pra-Diproses kepada data Bersih.

### Data Pra-Diproses

Fail ini mengandungi maklumat tentang semua**pra-diproses**mengukur dan memaklumkan sebarang transformasi tambahan yang perlu berlaku antara pra-pemprosesan dan data yang dibersihkan, termasuk:

-   Mana-mana peringkat geografi ->Tahap ZCTA sahaja

-   Ukur arah sejajar (nilai yang lebih tinggi menunjukkan keperluan yang lebih tinggi)

-   Penskalaan diselaraskan (pecahan kepada peratus 0.1 ->10(%), pelarasan kelaziman (setiap 1000 orang), dsb.)

### Data Dibersihkan

Setelah data dibersihkan, data tersebut akan digabungkan ke dalam fail Gabungan Langkah. Akan ada dua versi:

-   Fail langkah gabungan asal:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   Fail ukuran gabungan Berskala Persentil:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

Selain itu, maklumat tentang data (jumlah yang hilang, bilangan baris yang tidak hilang, dll.) dijana dan muncul dalam:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

### Analisis

Dengan fail Pengukuran Gabungan, kami akan melaksanakan analisis berikut:

-   Analisis kovarians (membenderakan dan mengurus set pembolehubah dengan multi-kolineariti yang tinggi)

-   Analisis ketiadaan (mengenal pasti langkah dengan nilai yang hilang berbilang tinggi, mengenal pasti ZCTA dengan berbilang langkah yang hilang)

-   Pengesahan silang dengan langkah komposit lain (COI, UNS, CHR, SVI, dll.)

### Dokumentasi

Dokumentasi ukuran boleh didapati di`Teams`>`BHN Score`>`Documentation`folder.

## Timbang

Kami akan membuat 3 set fail pemberat:

-   Pemberat parsimonious (Semua pemberat sama)

-   Kaedah penentuan pemberat Indeks Peluang Kanak-kanak

-   Pemberat Kedudukan Kesihatan Daerah

## Penciptaan Skor

Markah akhir untuk setiap ZCTA akan dibuat dengan menggabungkan pemberat dan fail ukuran gabungan. Sukatan dan sukatan didarab bersama, dijumlahkan untuk setiap ZCTA, dan kemudian diskalakan semula daripada 0 hingga 100. Markah muncul (dengan ukuran kedudukan persentil) dalam`Teams`>`BHN Score`>`Data`>`Cleaned`:

-   Jumlah Skor Penduduk:`HSE_BHN_ZCTA_Score_Black.csv`

-   Skor Populasi Hitam:`HSE_BHN_ZCTA_Score_Population.csv`

# Kenalan dan Atribusi

Untuk sebarang pertanyaan atau kebimbangan, sila hubungi[socialjustice@mitre.org](mailto:socialjustice@mitre.org).

Diluluskan untuk Siaran Umum; Pengedaran Tanpa Had. Nombor Kes Siaran Awam 21-3708. ©2021 The MITER Corporation. SEMUA HAK TERPELIHARA.
