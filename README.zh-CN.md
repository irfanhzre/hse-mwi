# 心理健康指数™ (MWI)

## 翻译

# 不同语言的自述文件

-   [英语](README.md)
-   [简体中文](README.zh-CN.md)
-   [法语](README.fr.md)
-   [阿拉伯](README.ar.md)
-   [日本人](README.ja.md)
-   [马来语](README.ms.md)

# 大纲

-   [心理健康指数 (MWI)](#Mental-Wellness-Index-(MWI))
-   [设置 MWI 并创建您自己的 MWI](#Set-Up-MWI-and-Create-Your-Own-MWI)
-   [使用 MWI 数据](#Using-MWI-Data)
-   [技术设置](#Technical-Set-Up)（仅对贡献者有用）
-   [联系方式和归属](#Contact-and-Attribution)

# 心理健康指数 (MWI)

要查看心理健康指数工具，请参阅<https://sjp.mitre.org/mwi>。有关心理健康指数的更多信息，请参阅下文或查看见解[这里](https://sjp.mitre.org/insights/61f312259916dc001a9ba4db).

心理健康指数是一个框架和仪表板工具，提供每个邮政编码的社区级心理健康状况图\*在全国。 MWI 由来自 3 个领域的 28 项衡量指标组成：健康的社会决定因素、医疗保健获取和健康状况。结构性种族主义和社区与文化资产交织在 MWI 本身的各个领域，反映了它们在整个衡量框架中的影响力。

<p align = "center">
<img src="https://github.com/mitre/hse-mwi/blob/main/www/media/MWI%20Framework%20(Transparent%20Background).png" width="400" />
</p>

心理健康指数的目的是提供社区心理健康状况的快照，以便社区领导、公共卫生官员和资助实体能够了解他们如何最好地指导心理健康支持，以建立特定社区的资产并填补其空白。差距。

\*邮政编码制表区 (ZCTA)

## MWI 领域和措施

MWI 为每个邮政编码创建一个介于 0 到 100 之间的分数，如下所示：

-   值越高表示越多**资产**那**支持**社区心理健康

-   值越低表示越多**障碍**那**挑战**社区心理健康

^ 表示按种族分层的衡量标准

![](www/media/MWI%20Full%20Measures.png)

## 关注美国黑人

MWI 的制定考虑到了美国黑人的心理健康状况。我们选择美国黑人作为优先人群，以便将其集中在边缘，并避免创建专注于“普通社区”的指数。我们相信，以这种方式关注美国黑人可以让所有经历不平等的群体受益，因为只有我们所有人都康复了，我们才会好起来。我们还认识到需要为其他优先人群确定、识别和调整 MWI。

## 2023年数据更新

数据已更新为截至 2023 年 1 月 24 日的最新可用数据。如果您想使用以前发布的 MWI 版本，请参阅[发布](https://github.com/mitre/hse-mwi/releases).

# 设置 MWI 并创建您自己的 MWI

要设置并简单运行心理健康指数工具，请按照说明 1 - 8 操作。

要创建您自己的心理健康指数，您可以按照其余说明在本地计算机上运行心理健康指数工具。按照下面的说明 8+，通过调整权重和/或添加您自己的数据和元数据，为您的社区创建您自己的 MWI。

1.  下载免费版本[右](https://www.r-project.org/)和[RStudio](https://www.rstudio.com/products/rstudio/download/)。下载现代浏览器（Firefox、Chrome、Edge 等）并将其设为您的默认浏览器（如果您还没有这样做）。

2.  前往[心理健康指数 GitHub 页面](https://github.com/mitre/hse-mwi)单击右上角的“代码”，然后从下拉菜单中单击“下载 ZIP”来下载存储库。这应该将 MWI 存储库的 ZIP 文件下载到您的下载文件夹中，名为“hse-mwi-main.zip”。

3.  解压缩“hse-mwi-main.zip”。

4.  在解压的文件夹中，在 RStudio 中打开“app.R”。这应该打开 RStudio 和应用程序左上角的“app.R”脚本。

#### 步骤 1-4 的替代方案

命令行使用说明

##### 1.安装 R 和 RStudio

如果尚未安装，请从以下链接下载并安装最新版本的 R 和 RStudio：
回复：<https://www.r-project.org/>R工作室：<https://www.rstudio.com/products/rstudio/download/>或者，使用包管理器安装 R：

对于 Windows：使用 Chocolatey：

`choco install r.project ``choco install r.studio `

对于 macOS：使用 Homebrew：

`brew install --cask r ``brew install --cask rstudio`

对于 Linux（Ubuntu/Debian）：

`sudo apt update  ``sudo apt install r-base  `

##### 2.使用 Git 克隆心理健康指数存储库

打开终端或命令提示符并运行以下命令：

`git clone https://github.com/mitre/hse-mwi.git`

这会将存储库下载到名为 hse-mwi 的新文件夹中。

如果没有安装 git，请安装它：

-   Windows：适用于 Windows 的 Git

-   苹果系统：`brew install git`

-   Linux：`sudo apt install git `

导航到项目目录

更改到克隆存储库的目录：`cd hse-mwi `

使用命令行在 RStudio 中打开 app.R

##### 4.运行以下命令启动 RStudio 并打开 app.R 脚本：

对于 macOS/Linux：`open -a RStudio app.R  `

对于 Windows：

`Replace <path-to-rstudio> with the full path to RStudio executable:``"<path-to-rstudio>\rstudio.exe" app.R`

例如：

`"C:\Program Files\RStudio\bin\rstudio.exe" app.R `

5.  在安装这些软件包时，在左下角的控制台窗口中，输入以下行并对控制台中的所有提示回答“是”：
    -   install.packages(c('readxl', 'writexl', 'htmltools', 'shiny', 'shinyjs', 'tigris', 'leaflet', 'RColorBrewer', 'sf', 'plotly', 'ggbeeswarm', 'shinyWidgets', 'sass', 'shinycssloaders', 'shinyBS', 'DT', 'dplyr'))

6.  在“app.R”中，导航到第 11 行，其中应显示“app_local &lt;- FALSE”。将 FALSE 更改为 TRUE。

7.  在“app.R”窗口的右上角，您应该看到“运行应用程序”。单击右侧的小向下箭头，然后单击“运行外部”。然后单击“运行应用程序”。

8.  延迟一段时间后（第一次会很慢，之后会更快），心理健康指数工具应该在您的浏览器中打开。单击“创建您自己的 MWI”选项卡，然后按照其余步骤创建您自己的 MWI。

9.  如果您只是调整权重或子集到包含的数据的特定邮政编码，请跳过下一步。这也可以在网站上完成[这里](https://sjp.mitre.org/mwi).

10. 将每个数据集采用 CSV（逗号分隔值）格式，其中一列对应于数据的地理 ID，一列对应于数据的分子，另一列对应于分母（如果需要）。

-   接受的地理 ID 类型始终是数字，并包括以下内容：
    -   ZCTA：5 位 ZCTA（示例：35406）
    -   县：5 位县 FIPS 代码（2 位州代码和 3 位县代码，例如：01001）
    -   邮政编码：美国邮政服务邮政编码（例如：35051）
    -   人口普查区：11 位人口普查区 FIPS 代码（2 位州代码、3 位县代码和 6 位地区代码，例如：01001020100）
-   如果提供了分母列，MWI 的最终输入将是分子除以分母，再乘以缩放数字（在元数据文件中指定，请参阅下一步）。
-   分子和分母必须是数字列。
-   缺失数据的单元格应留空。
-   如果按种族分层，则应有两列：一列以“\_pop”结尾，对应于总体人口指标，一列以“\_black”结尾，对应于黑人人口指标。在 Metadata.xlsx 文件编辑中，该行的“预处理”列应设置为 TRUE。

11. 使用下面的按钮下载 Metadata.xlsx。如果添加自定义数据，请添加一行并填写要添加到心理健康指数的每个测量的信息。每列的描述可以在 Metadata.xlsx 的“列描述”表中找到。请注意，必须填写除“分母”之外的所有列名称。

-   如果一个文件中有多个度量，请为每个度量及其质量添加一行，但指定相同的文件名。
-   如果您想删除 MWI 中的某个度量，请删除该度量行或将其权重设置为 0。
-   如果您只想调整权重，只需将权重列更改为所需的值。请注意，对种族分层和地理粒度的处罚仍然适用，并且总权重总计为 100。

12. 将您的数据（如果使用）和更新的 Metadata.xlsx 文件放入 ZIP 文件 (.zip) 中。

13. 上传您的 ZIP 文件并点击下面的“创建自定义 MWI”。这将需要一些时间，具体取决于所采取措施的数量。

14. 自定义 MWI 创建完成后，单击“下载自定义 MWI”以下载 .RData 文件，其中包含在此工具中查看 MWI 所需的所有信息。注意：如果您离开此页面，所有处理和数据都将丢失！该应用程序中不存储任何内容。

15. 要查看您的 MWI，请单击“探索州”或“探索邮政编码”下的“自定义 MWI 上传”框，然后上传下载的“.RData”文件。

# 使用 MWI 数据

如果您想使用 MWI 或其处理的测量或数据，请参阅“数据”和“文档”文件夹以获取更多信息。 “Data”中的每个文件夹都有一个自述文件，详细说明了所包含的文件。除元数据文件外，所有数据均为 CSV 格式。

“Data”中的文件夹如下：

-   资源：包含用于处理数据和引用地理人行横道的文件。
-   预处理：包含所有度量的预处理数据，格式为 MWI 管道所需的格式：一列表示地理标识符，然后一列表示每个度量的数值。
-   已清理：包含心理健康指数结果和处理管道结果。

# 技术设置

注意：本节主要面向贡献者。

## 数据管道

![](www/media/Data%20Pipeline.png)

## 数据同步

将 Microsoft Teams BHN Score Creation 文件夹同步到本地 The MITRE Corporation（One-Drive）文件夹

## 最终确定措施

测量跟踪文档位于`Teams`>`BHN Score`>`Measure-Tracking.xslx`

当其他措施最终确定时，请参阅并更新本文档。

## 拉取数据

添加从 API 提取的数据或直接从网站下载的数据将落入以下两个文件夹之一：

-   `Teams`>`BHN Score`>`Data`>`Raw`

    -   是否需要完成任何测量计算（即点地理到容器地理、流行度计算等）

    -   文件扩展名也可以是 .xlsx、.csv、.dta 等

-   `Teams`>`BHN Score`>`Data`>`Preprocessed`

    -   如果数据采用每行都是一个地理容器的格式（即人口普查区、县、邮政编码等）

    -   文件扩展名仅为 .csv

    -   **笔记：**对于从 API（tidycensus 等）提取的任何数据，执行任何预处理任务并将数据直接写入`Preprocessed`文件夹。

提取数据时，请确保填写相关列`Measure-Tracking.xlsx`和/或`Metadata.xlsx`文件。

## 措施登记

措施登记文件在`Teams`>`BHN Score`>`Data`>`Metadata.xslx`。本文档提供了从预处理数据到清理数据的批处理/批分析所需的信息。

### 预处理数据

该文件包含所有信息**预处理的**测量并通知预处理和清理数据之间需要发生的任何其他转换，包括：

-   任何地理级别 ->仅限 ZCTA 级别

-   衡量方向性一致（值越高表示需求越高）

-   缩放比例对齐（分数到百分比 0.1 ->10(%)、患病率调整（每1000人）等）

### 清理后的数据

数据清理后，它们将合并到组合测量文件中。将有两个版本：

-   原始组合措施文件：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Converted_Measures.csv`

-   百分位比例组合测量文件：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_ZCTA_Percentile_Ranked_Measures.csv`

此外，还会生成有关数据的信息（缺失量、非缺失行数等）并显示在：`Teams`>`BHN Score`>`Data`>`Cleaned`>`HSE_BHN_Data_Information.csv`.

### 分析

通过组合测量文件，我们将执行以下分析：

-   协方差分析（标记和管理具有高度多重共线性的变量集）

-   缺失分析（识别具有高多个缺失值的度量，识别具有多个缺失度量的 ZCTA）

-   与其他综合指标（COI、UNS、CHR、SVI 等）的交叉验证

### 文档

测量文档可以在以下位置找到`Teams`>`BHN Score`>`Documentation`文件夹。

## 重量

我们将创建 3 组权重文件：

-   简约权重（所有权重相等）

-   儿童机会指数权重确定方法

-   县健康排名权重

## 乐谱创建

每个 ZCTA 的最终分数将通过结合权重和组合测量文件来创建。度量和度量权重相乘，对每个 ZCTA 求和，然后从 0 重新缩放到 100。分数出现在（带有百分位排名度量）`Teams`>`BHN Score`>`Data`>`Cleaned`:

-   人口总分：`HSE_BHN_ZCTA_Score_Black.csv`

-   黑人人口得分：`HSE_BHN_ZCTA_Score_Population.csv`

# 联系方式和归属

如有任何问题或疑虑，请联系[socialjustice@mitre.org](mailto:socialjustice@mitre.org).

批准公开发布；分发无限。公开发布案件编号 21-3708。 ©2021 MITRE 公司。版权所有。
