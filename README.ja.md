# メンタルウェルネスインデックス™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)

## 翻訳

### さまざまな言語の README

-   [英語](README.md)
-   [簡体字中国語](README.zh-CN.md)
-   [フランス語](README.fr.md)
-   [アラブ](README.ar.md)
-   [日本語](README.ja.md)
-   [マレー語](README.ms.md)

# 目次

-   [メンタルウェルネス指数 (MWI)](#mental-wellness-index-mwi)
    -   [MWIの領域と対策](#mwi-domains--measures)
    -   [アメリカ黒人に焦点を当てる](#focus-on-black-americans)
    -   [2023年のデータ更新](#2023-data-update)
-   [MWI をセットアップし、独自の MWI を作成する](#set-up-mwi-and-create-your-own-mwi)
    -   [基本セットアップ (手順 1 ～ 8)](#basic-setup-instructions-1-8)
    -   [代替コマンドラインセットアップ](#alternative-command-line-setup)
    -   [カスタム MWI の作成 (手順 9 ～ 15)](#creating-custom-mwi-instructions-9-15)
-   [MWI データの使用](#using-mwi-data)
    -   [データディレクトリ構造](#data-directory-structure)
    -   [リソース](#resources)
    -   [前処理されたデータ](#preprocessed-data)
    -   [クリーンアップされたデータ](#cleaned-data)
-   [技術的なセットアップ](#technical-set-up)
    -   [データ パイプライン アーキテクチャ](#data-pipeline-architecture)
    -   [開発環境](#development-environment)
    -   [データ管理](#data-management)
    -   [測定値登録システム](#measure-registration-system)
    -   [分析方法](#analysis-methodology)
    -   [重み付けシステム](#weighting-systems)
    -   [スコアの生成](#score-generation)
-   [高度な機能](#advanced-features)
    -   [カスタムデータの統合](#custom-data-integration)
    -   [メタデータ構成](#metadata-configuration)
    -   [分析ツール](#analysis-tools)
    -   [視覚化オプション](#visualization-options)
-   [貢献ガイドライン](#contributing-guidelines)
    -   [開発セットアップ](#development-setup)
-   [連絡先と帰属](#contact-and-attribution)
    -   [サポートチャネル](#support-channels)
    -   [ライセンス情報](#license-information)
    -   [謝辞](#acknowledgments)

# メンタルウェルネス指数 (MWI)

メンタルウェルネスインデックスツールを表示するには、次のサイトにアクセスしてください。<https://sjp.mitre.org/mwi>。メンタルウェルネスインデックスの詳細については、以下を参照するか、洞察を参照してください。[ここ](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

メンタル ウェルネス インデックスは、全国の郵便番号\*ごとに地域レベルのメンタル ウェルネスの詳細な状況を提供する包括的なフレームワークおよびダッシュボード ツールです。 MWI は、健康の社会的決定要因、医療アクセス、健康状態という 3 つの異なる領域にわたる 28 の尺度で構成されています。構造的人種差別とコミュニティおよび文化資産は、MWI 自体の領域全体に織り込まれており、対策の枠組み全体に広がる影響を反映しています。

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*郵便番号集計エリア (ZCTA)

## MWIの領域と対策

MWI は、0 ～ 100 の郵便番号ごとに洗練されたスコアを生成します。

-   値が大きいほど (100 に近いほど)、より多くの値を示します。**資産**それ**サポート**コミュニティの精神的健康
-   値が低いほど (0 に近いほど)、より多くの値を示します。**障害物**それ**チャレンジ**コミュニティの精神的健康

^ は人種階層化された対策を示します

![](www/media/MWI%20Full%20Measures.png)

## アメリカ黒人に焦点を当てる

MWI は、黒人アメリカ人の精神的健康状態を中心的な考慮事項として特に開発されました。私たちは、周縁部を中心とする優先母集団として黒人アメリカ人を意図的に選択し、「平均的なコミュニティ」に焦点を当てた指数の作成を避けました。この意図的な選択は、このように黒人アメリカ人に焦点を当てることが、格差を経験しているすべてのグループに利益をもたらすという私たちの信念を反映しており、全員が健康になるまでは誰も健康ではないという原則を遵守しています。我々はまた、将来の反復において追加の優先人口に対して MWI を特定し、認識し、適応させる必要性を認識する。

## 2023年のデータ更新

データは、2023 年 1 月 24 日時点で利用可能な最新のものに包括的に更新されました。以前にリリースされたバージョンの MWI へのアクセスについては、次のリンクを参照してください。[リリース](https://github.com/mitre/hse-mwi/releases)ページ。

# MWI をセットアップし、独自の MWI を作成する

## 基本セットアップ (手順 1 ～ 8)

Mental Wellness Index ツールの基本的なインストールと実行には、次の手順に従います。

1.  **環境設定**
    -   ダウンロードしてインストールする[R](https://www.r-project.org/)
    -   ダウンロードしてインストールする[RSスタジオ](https://www.rstudio.com/products/rstudio/download/)
    -   最新のブラウザ (Firefox、Chrome、Edge など) がデフォルトとして設定されていることを確認します。

2.  **リポジトリのダウンロード**
    -   に移動します。[メンタルウェルネスインデックス GitHub ページ](https://github.com/mitre/hse-mwi)
    -   右上隅の「コード」をクリックします
    -   ドロップダウンメニューから「ZIPをダウンロード」を選択します
    -   ダウンロード フォルダーでダウンロードした「hse-mwi-main.zip」を見つけます。

3.  **初期設定**
    -   「hse-mwi-main.zip」を解凍します。
    -   RStudioで「app.R」を開きます
    -   行 11 を見つけます:「app_local &lt;- FALSE」
    -   FALSE を TRUE に変更します

4.  **パッケージのインストール**RStudio コンソールで次のコマンドを実行します。
    ```R
    install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                      'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                      'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                      'shinyBS', 'DT', 'dplyr'))
    ```

## 代替コマンドラインセットアップ

### Windowsのセットアップ

```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### macOS のセットアップ

```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Linux セットアップ (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## カスタム MWI の作成 (手順 9 ～ 15)

### データの準備

9.  **データ形式の要件**
    -   ファイル形式：CSV（カンマ区切り値）
    -   必須の列:
        -   地理的ID (数値)
        -   データ分子
        -   データ分母 (該当する場合)

10. **受け入れ可能な地理的 ID の種類**
    -   ZCTA: 5 桁 (例: 35406)
    -   郡: 5 桁の FIPS コード (例: 01001)
    -   郵便番号: 5 桁 (例: 35051)
    -   国勢調査区: 11 桁の FIPS コード (例: 01001020100)

11. **データ処理ルール**
    -   最終計算: (分子/分母) × スケーリング係数
    -   データが欠落しています: セルを空白のままにしておきます
    -   人種階層別データ:
        -   列接尾辞「\_pop」: 全体の人口測定値
        -   列接尾辞「\_black」: 黒人人口の測定値
        -   Metadata.xlsx で「Preprocessed」を TRUE に設定します。

### メタデータ構成

12. **Metadata.xlsx の要件**
    -   テンプレートをダウンロードして変更する
    -   各メジャーの必須フィールド:
        -   対策名
        -   ファイル名
        -   地理的レベル
        -   方向性
        -   重さ
        -   説明
        -   ソース
        -   Year
        -   注意事項
    -   オプション: 分母フィールド

13. **カスタム MWI の作成**
    -   データとメタデータ ファイルを ZIP 形式で結合する
    -   インターフェースを介してZIPファイルをアップロードします
    -   処理完了を待つ

14. **データのエクスポート**
    -   生成された .RData ファイルをダウンロードします。
    -   安全に保管 - アプリケーションにはデータが保持されません

15. **視覚化**
    -   「カスタム MWI アップロード」機能を使用する
    -   「州の探索」セクションと「郵便番号の探索」セクションの両方で利用可能

# MWI データの使用

## データディレクトリ構造

「Data」フォルダーには、いくつかの重要なサブディレクトリが含まれています。

### リソース

-   地理的横断歩道ファイル
-   データ処理ユーティリティ
-   参考資料

### 前処理済み

-   標準化された測定データ
-   地理的識別子の列
-   数値測定値

### 掃除済み

-   MWI の最終結果
-   パイプライン出力の処理
-   Quality assurance reports

# 技術的なセットアップ

## データ パイプライン アーキテクチャ

![](www/media/Data%20Pipeline.png)

## 開発環境

### データの同期

-   Microsoft Teams BHN スコア作成フォルダーに接続する
-   ローカルの MITRE Corporation (One-Drive) フォルダーと同期します

### 測定ドキュメント

-   位置：`Teams > BHN Score > Measure-Tracking.xlsx`
-   新しいメジャーを追加するときに更新します
-   測定ステータスと変更を追跡する

## データ管理

### 生データのストレージ

    Teams > BHN Score > Data > Raw
    - For data requiring processing
    - Supports multiple formats (.xlsx, .csv, .dta)

### 前処理されたデータ

    Teams > BHN Score > Data > Preprocessed
    - Contains geographic container-level data
    - CSV format only
    - Direct API data processing

### クリーンアップされたデータ

データがクリーンアップされると、それらは結合メジャー ファイルにマージされます。 2 つのバージョンがあります:

-   元の複合測定ファイル:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   パーセンタイルスケールの複合メジャーファイル:`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

さらに、データに関する情報 (欠落量、欠落していない行の数など) が生成され、以下に表示されます。`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

## 測定値登録システム

### ドキュメントの場所

    Teams > BHN Score > Data > Metadata.xlsx

### 加工仕様

-   地理的な標準化
-   方向性を測定する
-   スケーリング調整
-   人種階層化の処理

## 分析方法

### 共分散分析

-   変数の共線性を特定する
-   冗長な対策を管理する
-   メジャー選択の最適化

### 欠損データ分析

-   欠損値パターンを追跡する
-   問題のある ZCTA を特定する
-   文書データのギャップ

### 相互検証

-   既存のインデックスと比較します。
    -   COI (子ども機会指数)
    -   UNS (統一ニーズスコア)
    -   CHR (郡健康ランキング)
    -   SVI (社会的脆弱性指数)

## 重み付けシステム

3 つの異なる重み付け方法:

1.  **節約的な重み付け**
    -   メジャー間の重みが等しい
    -   ベースライン比較モデル

2.  **子ども機会指数法**
    -   COI 手法を採用
    -   ドメイン固有の重み付け

3.  **郡の健康ランキングの方法**
    -   CHRフレームワークに基づく
    -   健康上の成果に焦点を当てる

## スコアの生成

### 処理の流れ

1.  重みと測定データを組み合わせる
2.  ZCTAによる加重和の計算
3.  結果を 0 ～ 100 の範囲にスケールする
4.  個別のスコアを生成します。
    -   総人口スコア
    -   黒人人口スコア

### 出力ファイル

にあります`Teams > BHN Score > Data > Cleaned`:

-   `HSE_BHN_ZCTA_Score_Black.csv`
-   `HSE_BHN_ZCTA_Score_Population.csv`

# 高度な機能

## カスタムデータの統合

MWI を使用すると、カスタム データ ソースを統合して、ニーズに合わせた特殊なインデックスを作成できます。

-   複数のデータ形式のサポート (CSV、Excel など)
-   柔軟な地理的識別子のマッピング
-   自動化されたデータ検証とクリーニング
-   カスタムメジャー作成機能

## メタデータ構成

カスタム メジャーのメタデータを構成するための詳細なガイド:

-   必須フィールドとその説明
-   データ検証ルール
-   構成例
-   メジャー定義のベスト プラクティス

## 分析ツール

MWI データを分析するための組み込みツール:

-   統計分析ユーティリティ
-   データ品質評価ツール
-   相関分析
-   トレンドの特定
-   地理的クラスタリング分析

## 視覚化オプション

利用可能な視覚化ツールとオプション:

-   インタラクティブマップ
-   時系列チャート
-   比較分析ビュー
-   カスタムレポートの生成
-   エクスポート機能

# 貢献ガイドライン

## 開発セットアップ

1.  リポジトリをフォークする
2.  フォークのクローンを作成します。
    ```bash
    git clone https://github.com/your-username/hse-mwi.git
    ```
3.  開発環境をセットアップします。
    ```bash
    cd hse-mwi
    Rscript setup-dev.R
    ```

# 連絡先と帰属

## サポートチャネル

サポートと問い合わせについて:

-   メインのメールアドレス:[socialjustice@mitre.org](mailto:socialjustice@mitre.org)
-   テクニカルサポート：[GitHubの問題](https://github.com/mitre/hse-mwi/issues)
-   コミュニティフォーラム:[ディスカッション](https://github.com/mitre/hse-mwi/discussions)
-   ドキュメント:[一週間](https://github.com/mitre/hse-mwi/wiki)

## ライセンス情報

このプロジェクトは MIT ライセンスに基づいてライセンスされています。を参照してください。[ライセンス](LICENSE)詳細については、ファイルを参照してください。

Mental Wellness Index™ は、MITRE Corporation の商標です。

## 謝辞

-   メンタルウェルネスインデックスへの貢献者
-   研究パートナーとデータプロバイダー
-   コミュニティ組織と関係者
-   オープンソース コミュニティ

**一般公開が承認されました。配信無制限。**公開事件番号 21-3708
©2021 MITRE Corporation.無断転載を禁じます。

* * *

_最終更新日: 2024 年 1 月_
