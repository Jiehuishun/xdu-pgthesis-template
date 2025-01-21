# xdu-pgthesis-template

基于[note286/xduts](https://github.com/note286/xduts)的研究生论文模版。

## 使用指南

### （可选）利用github云端托管你的论文项目

fork该项目，并在新的仓库设置中将论文设置为私有的。

### 环境准备

1. 安装TeX系统

依据你的操作系统，跟随[TeX Live](https://tug.org/texlive/)中的提示完成对应TeXLive/MacTeX的安装。

2. 升级包

```shell
tlmgr update --all --self
```

这里可能需要管理员权限，升级所有包的时间一般较长。

3. 安装xduts

依据[note286/xduts](https://github.com/note286/xduts)中的Installation完成xduts的安装，建议从github上下载后安装后执行xduts提供的指令：

```shell
xetex xduts.ins
l3build doc
```

完成安装后，我们会获得xduts的说明书——xduts.pdf，未来我们如何使用都可以参考它。

### 快速开始

> 绝大多数的同学的目标是完成毕业设计，并不希望去了解复杂的TeX生态。本项目提供最小集的脚手架并脱离复杂的TeX术语，故而下述内容，可能或就是与TeX术语或文档相悖。

#### 下载项目

下载/克隆本仓库（或你的fork仓库）。

#### Helloworld与TeX编译

我们下载的TeXLive/MacTeX提供一系列的TeX生态工具，其中我们最关心的就是，将`.tex`文件编译为`.pdf`文件的过程，而这一过程只需要在命令行中输入一条命令就可以完成。

在/hello-tex-demo目录下，我们提供了一个shell脚本，它仅包含一条命令(执行时注意当前路径)：

```shell
xelatex -output-directory=./output helloworld.tex
```

该命令`xelatex`将编译helloworld.tex，并生成一系列中间文件，以及我们需要的helloworld.pdf，通过参数`output-directory`控制所有生成的文件在`./output`子目录下（你可能需要创建这个文件夹，`mkdir output`）。

![LaTeX编译](/resources/image.png)

如图，我们之后需要的工作就是，完成一个`.tex`文件，在需要时通过编译获得对应pdf文件。

#### 毕业论文撰写

在目录pg-thesis下，我们提供了研究生毕业论文的脚手架代码，通过运用xduts提供的“格式”，你还需要了解下述内容。

1. 脚手架结构说明

```sh
.
├── chapters            // 按章节的tex文件
│   ├── abstract-zh.tex // 中文简介
│   └── abstract.tex    // 英文简介
├── pictures            // 存放待引用的图片
│   └── kfcvme50.png    // 图片示例
├── references.bib      // 增加引用
├── thesis.tex          // 论文主体，你主要编辑它
└── update.sh           // 通过sh update.sh将“编译”并输出到output目录下
```

聪明如你，肯定已经明白了——通过编辑thesis.tex，然后通过`xelatex`命令就获得对应的pdf文件，但这里复杂一些，你可能注意到了，还需要使用`.bib`文件中的，所有编译的命令更复杂一些（你可以点开update.sh查看），但我推荐你直接运行它：

```sh
cd pg-thesis // 运行指令必须在该目录下
mkdir output // 第一次运行脚本前记得创建output目录
sh update.sh
```

当你看到这里时，我希望你直接运行，因为thesis.tex并不是空的，参考其中的内容，你就已经具备主要的写作能力。

但是在开始你的写作之前，你还需要注意几点。

1. **信息录入**：「面向KFC点餐的多模态大模型的后训练研究」的封面以及各种信息设置是符合「专业硕士」，如果你不是专业硕士，那么你需要在`\xdusetup`中添加或删去不必要的配置，然后修改成符合你的对应信息。如何配置？请参考xduts.pdf的5.18节，并在配置完成后生成一次，并与你论文模版做对比。

> xdupgthesis 文档类基于ctexbook 文档类，提供多种字体配置，部分样式可自定义，信息录入便捷。请在阅读《西安电子科技大学研究生学位论文模板（2015 年修订版）-2025.01修订》后再使用xdupgthesis 文档类。专业学位硕士请额外阅读《西安电子科技大学专业学位硕士学位论文封面及中英文题名页模板（2015 年版）-2022.11 修订》，撰写英文学位论文请额外阅读《西安电子科技大学英文学位论文撰写相关规定》。 ——xduts.pdf

2. **其他配置**：「面向KFC点餐的多模态大模型的后训练研究」中的演示的一些语法都非常简单，当你需要一些额外的配置时，例如提交盲审时需要删除特定页，或者手动设置提交日期，那么你都需要查看xduts.pdf的第5节的相关配置。


3. **语法工具书**：在提供的thesis.tex中，已经涵盖了常见的基础语法，例如交叉引用，章节目录设置，图片引用。但你可能想了解如何完成比较复杂的数学公式排版，亦或是各种各样的表格。你需要将[一份（不太）简短的LATEX介绍](https://mirrors.cloud.tencent.com/CTAN/info/lshort/chinese/lshort-zh-cn.pdf)视作一本工具书，在需要时查看。当然，你也可以**让大模型为你生成你想要的语法等内容**。

简单来说，首次使用时完成信息录入，然后写你的论文去，当你确实需要修改其他配置时，再参考第5节的配置说明。当特殊样式的语法不会时，查看工具书或者请教大模型。就这么简单。

### 如何引用论文呢？

![如何引用论文](/resources/how-to-cite.jpg)

在Google Scholar的搜索表单下，点击`cite`，再点击左下角的`BibTex`，你就能获得对应论文的bib格式，将它复制到references.bib中，在你需要时引用。

### 我不喜欢就一个tex文件

如果你希望每个章节采用单独的`.tex`文件，那么你可以去了解一下`input`，`include`等语法，从而拆分论文到多个文件中。