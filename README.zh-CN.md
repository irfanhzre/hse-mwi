# 心理健康指数™ (MWI)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://github.com/mitre/hse-mwi/graphs/commit-activity)

## 翻译

### 不同语言的自述文件

-   [英语](README.md)
-   [简体中文](README.zh-CN.md)
-   [法语](README.fr.md)
-   [阿拉伯](README.ar.md)
-   [日本人](README.ja.md)
-   [马来语](README.ms.md)

# 目录

-   [心理健康指数 (MWI)](#mental-wellness-index-mwi)
    -   [MWI 领域和措施](#mwi-domains--measures)
    -   [关注美国黑人](#focus-on-black-americans)
    -   [2023年数据更新](#2023-data-update)
-   [设置 MWI 并创建您自己的 MWI](#set-up-mwi-and-create-your-own-mwi)
    -   [基本设置（说明 1-8）](#basic-setup-instructions-1-8)
    -   [替代命令行设置](#alternative-command-line-setup)
    -   [创建自定义 MWI（说明 9-15）](#creating-custom-mwi-instructions-9-15)
-   [使用 MWI 数据](#using-mwi-data)
    -   [数据目录结构](#data-directory-structure)
    -   [资源](#resources)
    -   [预处理数据](#preprocessed-data)
    -   [清理后的数据](#cleaned-data)
-   [技术设置](#technical-set-up)
    -   [数据管道架构](#data-pipeline-architecture)
    -   [开发环境](#development-environment)
    -   [数据管理](#data-management)
    -   [措施登记系统](#measure-registration-system)
    -   [分析方法](#analysis-methodology)
    -   [称重系统](#weighting-systems)
    -   [分数生成](#score-generation)
-   [高级功能](#advanced-features)
    -   [定制数据集成](#custom-data-integration)
    -   [元数据配置](#metadata-configuration)
    -   [分析工具](#analysis-tools)
    -   [可视化选项](#visualization-options)
-   [贡献指南](#contributing-guidelines)
    -   [开发设置](#development-setup)
-   [联系方式和归属](#contact-and-attribution)
    -   [支持渠道](#support-channels)
    -   [许可证信息](#license-information)
    -   [致谢](#acknowledgments)

# 心理健康指数 (MWI)

要查看心理健康指数工具，请访问<https://sjp.mitre.org/mwi>。有关心理健康指数的更多详细信息，请参阅下文或查看见解[这里](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

The Mental Wellness Index is a comprehensive framework and dashboard tool that provides a detailed picture of community-level mental wellness for each zip code\* in the nation. The MWI comprises 28 measures across 3 distinct domains: Social Determinants of Health, Healthcare Access, and Health Status. Structural Racism and Community & Cultural Assets are woven throughout the domains of the MWI itself, reflecting their pervasive influence throughout the measure framework.

<p align="center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

\*邮政编码制表区 (ZCTA)

## MWI 领域和措施

MWI 为每个邮政编码生成 0 到 100 之间的复杂分数，其中：

-   值越高（接近 100）表示越多**资产**那**支持**社区心理健康
-   值越低（越接近 0）表示越多**障碍**那**挑战**社区心理健康

^ 表示按种族分层的衡量标准

![](www/media/MWI%20Full%20Measures.png)

## 关注美国黑人

MWI 是专门以美国黑人的心理健康状况为核心考虑因素而制定的。我们有意选择美国黑人作为优先人群，将其集中在边缘，并避免创建专注于“普通社区”的指数。这一深思熟虑的选择反映了我们的信念，即以这种方式关注美国黑人可以为所有经历不平等的群体带来好处，并坚持“只有所有人都康复了，才能让所有人都好起来”的原则。我们还承认有必要在未来的迭代中识别、识别和调整 MWI，以适应其他优先人群。

## 2023年数据更新

数据已全面更新至截至 2023 年 1 月 24 日的最新数据。要访问 MWI 之前发布的版本，请参阅我们的[发布](https://github.com/mitre/hse-mwi/releases)页。

# 设置 MWI 并创建您自己的 MWI

## 基本设置（说明 1-8）

请按照以下步骤进行心理健康指数工具的基本安装和运行：

1.  **环境设置**
    -   下载并安装[右](https://www.r-project.org/)
    -   下载并安装[RStudio](https://www.rstudio.com/products/rstudio/download/)
    -   确保您将现代浏览器（Firefox、Chrome、Edge 等）设置为默认浏览器

2.  **存储库下载**
    -   导航至[心理健康指数 GitHub 页面](https://github.com/mitre/hse-mwi)
    -   点击右上角“代码”
    -   从下拉菜单中选择“下载 ZIP”
    -   在下载文件夹中找到下载的“hse-mwi-main.zip”

3.  **初始配置**
    -   解压“hse-mwi-main.zip”
    -   在 RStudio 中打开“app.R”
    -   找到第 11 行：“app_local &lt;- FALSE”
    -   将 FALSE 更改为 TRUE

4.  **包安装**在 RStudio 控制台中运行以下命令：
    ```R
    install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 
                      'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 
                      'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 
                      'shinyBS', 'DT', 'dplyr'))
    ```

## 替代命令行设置

### Windows 设置

```bash
# Install Chocolatey first if not installed
choco install r.project
choco install r.studio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### macOS 设置

```bash
brew install --cask r
brew install --cask rstudio
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

### Linux 设置 (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install r-base
sudo apt install git
git clone https://github.com/mitre/hse-mwi.git
cd hse-mwi
```

## 创建自定义 MWI（说明 9-15）

### 数据准备

9.  **数据格式要求**
    -   文件格式：CSV（逗号分隔值）
    -   必填栏目：
        -   地理 ID（数字）
        -   数据分子
        -   数据分母（如果适用）

10. **可接受的地理 ID 类型**
    -   ZCTA：5 位数字（例如 35406）
    -   县：5 位 FIPS 代码（例如 01001）
    -   邮政编码：5 位数字（例如 35051）
    -   人口普查表：11 位 FIPS 代码（例如 01001020100）

11. **数据处理规则**
    -   最终计算：（分子/分母）×比例因子
    -   缺失数据：将单元格留空
    -   种族分层数据：
        -   列后缀“\_pop”：总体人口度量
        -   列后缀“\_black”：黑人人口度量
        -   在 Metadata.xlsx 中将“预处理”设置为 TRUE

### 元数据配置

12. **元数据.xlsx 要求**
    -   下载并修改模板
    -   每个度量的必填字段：
        -   措施名称
        -   文件名
        -   地理层面
        -   方向性
        -   重量
        -   描述
        -   来源
        -   年
        -   笔记
    -   可选：分母字段

13. **自定义 MWI 创建**
    -   以 ZIP 格式合并数据和元数据文件
    -   通过界面上传ZIP文件
    -   等待处理完成

14. **数据导出**
    -   下载生成的.RData文件
    -   安全存储 - 应用程序中不会保留任何数据

15. **可视化**
    -   使用“自定义 MWI 上传”功能
    -   可在“探索州”和“探索邮政编码”部分中找到

# 使用 MWI 数据

## 数据目录结构

“Data”文件夹包含几个重要的子目录：

### 资源

-   地理人行横道文件
-   数据处理实用程序
-   参考文档

### 预处理

-   标准化测量数据
-   地理标识符列
-   数值测量值

### 已清洁

-   最终 MWI 结果
-   处理管道输出
-   质量保证报告

# 技术设置

## 数据管道架构

![](www/media/Data%20Pipeline.png)

## 开发环境

### 数据同步

-   连接到 Microsoft Teams BHN 分数创建文件夹
-   与本地 MITRE Corporation（One-Drive）文件夹同步

### 测量文档

-   地点：`Teams > BHN Score > Measure-Tracking.xlsx`
-   添加新措施时更新
-   跟踪测量状态和修改

## 数据管理

### 原始数据存储

    Teams > BHN Score > Data > Raw
    - For data requiring processing
    - Supports multiple formats (.xlsx, .csv, .dta)

### 预处理数据

    Teams > BHN Score > Data > Preprocessed
    - Contains geographic container-level data
    - CSV format only
    - Direct API data processing

### 清理后的数据

数据清理后，它们将合并到组合测量文件中。将有两个版本：

-   原始组合措施文件：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   百分位比例组合测量文件：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

此外，还会生成有关数据的信息（缺失量、非缺失行数等）并显示在：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

## 措施登记系统

### 文档位置

    Teams > BHN Score > Data > Metadata.xlsx

### 加工规格

-   地理标准化
-   测量方向性
-   缩放调整
-   种族分层处理

## 分析方法

### 协方差分析

-   识别变量共线性
-   管理冗余措施
-   优化措施选择

### 缺失数据分析

-   跟踪缺失值模式
-   识别有问题的 ZCTA
-   记录数据差距

### 交叉验证

-   与现有指数比较：
    -   COI（儿童机会指数）
    -   UNS（统一需求评分）
    -   CHR（县健康排名）
    -   SVI（社会脆弱性指数）

## 称重系统

三种不同的加权方法：

1.  **简约权重**
    -   各个度量的权重相等
    -   基线比较模型

2.  **儿童机会指数法**
    -   改编自 COI 方法论
    -   特定领域的权重

3.  **县健康排名法**
    -   基于CHR框架
    -   健康成果焦点

## 分数生成

### 工艺流程

1.  将权重与测量数据相结合
2.  通过ZCTA计算加权和
3.  将结果缩放至 0-100 范围
4.  生成单独的分数：
    -   人口总分
    -   黑人人口得分

### 输出文件

位于`Teams > BHN Score > Data > Cleaned`:

-   `HSE_BHN_ZCTA_Score_Black.csv`
-   `HSE_BHN_ZCTA_Score_Population.csv`

# 高级功能

## 定制数据集成

MWI 允许您集成自定义数据源来创建适合您需求的专门索引：

-   支持多种数据格式（CSV、Excel等）
-   灵活的地理标识符映射
-   自动数据验证和清理
-   自定义测量创建功能

## 元数据配置

为自定义度量配置元数据的详细指南：

-   必填字段及其描述
-   数据验证规则
-   配置示例
-   度量定义的最佳实践

## 分析工具

用于分析 MWI 数据的内置工具：

-   统计分析实用程序
-   数据质量评估工具
-   相关性分析
-   趋势识别
-   地理聚类分析

## 可视化选项

可用的可视化工具和选项：

-   互动地图
-   时间序列图表
-   对比分析观点
-   自定义报告生成
-   出口能力

# 贡献指南

## 开发设置

1.  分叉存储库
2.  克隆你的叉子：
    ```bash
    git clone https://github.com/your-username/hse-mwi.git
    ```
3.  搭建开发环境：
    ```bash
    cd hse-mwi
    Rscript setup-dev.R
    ```

# 联系方式和归属

## 支持渠道

如需帮助和查询：

-   主要电子邮件：[socialjustice@mitre.org](mailto:socialjustice@mitre.org)
-   技术支援：[GitHub 问题](https://github.com/mitre/hse-mwi/issues)
-   社区论坛：[讨论](https://github.com/mitre/hse-mwi/discussions)
-   文档：[一周](https://github.com/mitre/hse-mwi/wiki)

## 许可证信息

该项目根据 MIT 许可证获得许可。请参阅[执照](LICENSE)文件以获取详细信息。

Mental Wellness Index™ 是 MITRE Corporation 的商标。

## 致谢

-   心理健康指数的贡献者
-   研究合作伙伴和数据提供商
-   社区组织和利益相关者
-   开源社区

**批准公开发布；分发无限。**公开发布案例编号 21-3708
©2021 MITRE 公司。版权所有。

* * *

_最后更新时间：2024 年 1 月_
