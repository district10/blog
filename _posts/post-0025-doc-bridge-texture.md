---
title: 桥梁模型贴纹理文档
date: 2015-11-08
keywords:
    - docs
tags:
    - docs
...

桥梁模型贴纹理文档
==================

概述
----

长沙桥梁裂缝检测项目需要将处理后的桥底影像、裂缝纹理贴到桥梁模型上，用于交互式展示。

生产环境
  ~ Windows x64 操作系统 + [CMake] + [Qt 4.8.6] + [OpenSceneGraph 3.4.0]

[CMake]: https://cmake.org/
[Qt 4.8.6]: http://mirrors.ustc.edu.cn/qtproject/archive/qt/4.8/4.8.6/
[OpenSceneGraph 3.4.0]: http://www.openscenegraph.org/

规范
----

参考 [CVRS 编码规范](http://cvrs.whu.edu.cn/docs/CVRS-CodingStyleGuide.html)。[^permlink]

[^permlink]: 文档本由我撰写。可查看我的备份/最新：[CVRS 编码规范 -- 备份](post-0060-coding-style.html)。

TODO
----

要做

:   * XML 工程化（桥梁的各个部分、纹理和 Pose，相应的 UI）
    * OpenGL 相关操作，四个视图以及各自视图下的操作并实现视角的切换
    * 二维纹理的交互操作
    * 模型 treeView

需求分析说明书
--------------

### 引言

需求分析很重要，是系统开发的……

本桥梁纹理系统的需求为后期系统开发和维护……

#### 目的

理清需求，明确开发工作，有助于系统的开发和维护。

#### 背景

桥梁纹理系统是桥梁裂缝检测系统的系统前端，提供方便的可视化手段来展示
整个桥梁裂缝检测系统的成果，即是系统宣传和公关工具，也有助于评价裂缝检测系统的
效果。

#### 业务术语

桥梁裂缝检测系统

:   本桥梁纹理系统的上游数据提供方，为本系统提供桥梁模型参数和纹理信息。

原始纹理图片

:   桥梁裂缝检测系统提供的桥面纹理图片，含位置信息、灰度信息和裂缝拓扑信息。

手工纹理图层

:   在原始纹理图片基础上，人工添加的纹理矢量线画图。

二维显示

:   实现桥梁裂缝原始纹理图片和手工纹理图层的加载和显示，并可执行缩放、平移等常规操作。

三维显示

:   桥梁模型和纹理平面的三维展示，有多个视图，有多种交互方式（Trackball，Bird view，etc）。
    并能对关键纹理贴图平面进行方便的二维显示。

二维编辑

:   在二维显示的基础上，在纹理图层上进行纹理编辑和保存。（可能需要额外的纹理编辑权限）

三维编辑

:   在三维显示的基础上，对纹理的放置位置和纹理贴合方式进行编辑修改。（可能需要额外的纹理编辑权限）

互操作

:   二维和三维联动，方便模型和纹理的查看和修改。




#### 参考资料

某需求分析参考（内部文档资料）

etc

### 硬件环境需求

#. 互联网接入
#. 主机（一般配置即可）
#. 存储（一般容量即可）

### 软件环境需求

操作系统

:   Windows 8/10

库

:   OpenCV、OpenSceneGraph 库

如果系统的服务器端提供 Web 浏览方式，软件环境需求可相应削弱至一台配置了支持 WebGL 浏览器的 PC 或一般智能机。

### 总体模型

桥梁纹理系统称为 `[bt::System]`，主要分为后台服务器端（`[bt::Server]`）和前台客户端（`[bt::Client]`），
总体模型为：

【桥梁纹理系统】| `[bt::System]`

:   整个系统被称为桥梁纹理系统，分为 `[bt::Server]` 和 `[bt::Client]`，所有代码类放在 `bt` 命名空间中。

    1. 【服务器端】| `[bt::Server]`
        #. 【认证模块】| `[bt::Auth]`
        #. 【数据库模块】| `[bt::Database]`
        #. 【日志模块】| `[bt::Logger]`
        #. 【计算模块】| `[bt::Computing]`
        #. 【服务端核心】| `[bt::Kernel]`
    2. 【客户端】| `[bt::Client]`
        #. 【客户代理模块】| `[bt::Agent]`
        #. 【高级功能模块组】| `[bt::Project]`
            1. 【工程创建和数据导入模块】| `[bt::Project::Genisys]`
            2. 【模型生成和纹理拼接融合模块】| `[bt::Project::Builder]`
            3. 【桥梁工程管理模块】| `[bt::Project::Management]`
        #. 【模型编辑模块】| `[bt::BridgeEditor]`
            * 【模型浏览模块】| `[bt::BridgeViewer]`
        #. 【纹理编辑模块】| `[bt::TextureEditor]`
            * 【纹理浏览模块】| `[bt::TextureViewer]`
        #. 【会话日志模块】| `[bt::SessionLogger]`

#### 概述

`[bt::Server]` 和 `[bt::Client]` 通过网络连接和通讯。下面简述各个模块的功能点。

（一）【服务器端】| `[bt::Server]`

:   后端服务器，为前端服务，分为
    `[bt::Auth]`（认证模块）、`[bt::Database]`（数据库模块）、
    `[bt::Logger]`（日志模块）、`[bt::Computing]`（计算模块）、
    `[bt::Kernel]`（服务器核心）。

    各模块的主要工作：

    #. 【认证模块】| `[bt::Auth]`
        i. 登录验证
        #. 权限控制
        #. 独立于其他模块，自带数据库
        #. 提供第三方登录功能
    #. 【数据库模块】| `[bt::Database]`
        i. 存储桥梁原始数据、桥梁工程信息、桥梁参数信息、桥面纹理信息、人工添加的纹理图层信息，等等
        #. 存储用户对上述信息的编辑修改状况，以特殊的格式记录下来，并进行版本控制（versioning）
        #. 根据 version 信息处理多用户编辑同一模型、纹理时导致的冲突，
           并报告给 `[bt::Kernel]`，继而让用户知道冲突的发生和处理结果
    #. 【日志模块】| `[bt::Logger]`
        i. 被其他模块调用，记录一切的浏览、编辑、计算请求，等等
        #. 记录匿名用户和登录用户的查看、检索、数据请求、计算请求等操作
        #. 记录登录用户对桥梁工程数据、桥梁模型数据、纹理数据等的编辑和修改
        #. 记录系统个模块运行状况
    #. 【计算模块】| `[bt::Computing]`
        i. 完成桥梁系统的大型计算任务，如纹理的提取统计和分析、模型生成、桥梁整体状况分析报告的统计计算
        #. 客户可通过 `[bt::ComputingTaskSubmission]` 模块向服务器请求以使用计算模块
        #. 计算模块应能智能选择何时删除旧的计算结果并重新计算、何时直接返回上次计算结果（而不是对每次请求都进行计算）
    #. 【服务端核心】| `[bt::Kernel]`
        i. 对内统筹 `[bt::Auth]`、`[bt::Database]` 和 `[bt::Computing]` 模块
        #. 对外处理 `[bt::Client]` 的登录
        #. 处理 `[bt::Client]` 对数据资源、计算资源的请求
            a. 如，接受客户的计算任务请求并分配给 `[bt::Computing]` 模块，
               当计算任务完成后，从 `[bt::Computing]` 模块接受返回结果并回传给用户
            #. 如，从数据库查询、获取数据并返回给用户
            #. 如，接受用户权限内的数据编辑并记录编辑内容

（二）【客户端】| `[bt::Client]`

:   前端客户端，包括 `[bt::Agent]`（客户端代理模块）、`[bt::Project]`（高级功能模块组）、
    `[bt::BridgeEditor]`（模型编辑模块）、`[bt::TextureEditor]`（纹理编辑模块）、
    `[bt::ComputingTaskSubmission]`（计算任务提交模块）、`[bt::SessionLogger]`（会话日志模块）、
    `[bt::BridgeReport]`（桥梁病害统计分析报告）。

    #. 【客户代理模块】`[bt::Agent]`
        i. 用于连接服务器
        #. 登录验证（不进行验证的“游客”也具备基本的浏览权限）
        #. 请求数据
        #. 进行编辑
        #. 提交 `[bt::ComputingTaskSubmission]` 模块计划让服务器处理的计算任务
        #. 提交 `[bt::Project]`、`[bt::TextureEditor]`、`[bt::BridgeEditor]` 等模块中执行的且需要全局生效的操作
        #. 提交本账户在 `[bt::SessionLogger]` 中记录的浏览编辑信息
    #. 【高级功能模块组】| `[bt::Project]`
        #. 【工程创建和数据导入模块】| `[bt::Project::Genisys]`^[Genisys：创世纪，一个桥梁工程的发源。]
            i. 帮助数据采集人员快速将采集的数据导入中心数据库
            #. 提供简单好用的数据导入交互方式
            #. 能尽可能无损地导入桥梁模型信息和纹理信息
        #. 【模型生成和纹理拼接融合模块】| `[bt::Project::Builder]`
            i. 对已经导入到数据库的桥梁原始数据进行模型建立，转化为本系统范围内通用的数据格式
            #. 对原始数据自动处理和转化
            #. 人工微调处理结果，得到理想效果的桥梁模型和理想效果的纹理拼接
            #. 模型生成和纹理拼接需要 `[bt::Computing]` 模块的帮助。且
               `[bt::Computing]` 模块默认对 `[bt::Project]` 的请求更优先地执行
        #. 【桥梁工程管理模块】| `[bt::Project::Management]`
            i. 负责原始数据的工程管理
            #. 负责处理后的模型和纹理的工程管理
            #. 负责原始数据采集相关信息（采集时间，人员等等）的管理
            #. 在客户端上提供方便的管理界面
    #. 【模型编辑模块】| `[bt::BridgeEditor]`
        i. 模型编辑器
        #. 可修改桥梁模型和纹理投影方式，且能利用不同视角提供方便的编辑操作方式
        #. 包含 【模型浏览模块】| `[bt::BridgeViewer]` 以实现基本的模型显示功能
            a. `[bt::BridgeViewer]` 应提供多种方式的模型浏览操作模式
            #. `[bt::BridgeViewer]` 能与二维纹理浏览模块 `[bt::TextureViewer]` 联动
            #. 记录当前用户的浏览历史，载入模型后自动切换到上次浏览时的视角
            #. 发掘用户浏览行为中隐藏的最佳视角，作为模型默认的初始加载位置
    #. 【纹理编辑模块】| `[bt::TextureEditor]`
        i. 纹理图层编辑器
        #. 包含 【纹理浏览模块】| `[bt::TextureViewer]` 子模块以显示二维纹理
            a. `[bt::TextureViewer]` 提供对纹理图片的基本操作，如显示、切换、测量、缩放
            #. 显示当前纹理图片相关信息，如图片尺寸、通道数、灰度级、空间中位置、采集时间
            #. 提供与三维模型 `[bt::BridgeViewer]` 模块的联动，从当前纹理图片转到模型相应视角
            #. 把当前人工修改后的图层重新加载到三维模型中
    #. 【计算任务提交模块】| `[bt::ComputingTaskSubmission]`
        i. 对计算能力需求高的计算任务，应在服务器中完成
        #. `[bt::Client]` 应当判断计算任务的复杂度，必要时将任务提交至服务器代为处理
        #. 应能合理规划任务的上传频次、Load
    #. 【会话日志模块】| `[bt::SessionLogger]`
        i. 记录当前会话下 client 的查看和编辑操作
        #. 优化变更提交多次处理能合并则合并^[如，将模型以某一方式旋转 30&deg;，再 60&deg;，就应能合并为 90&deg;。]
    #. 【桥梁病害统计分析报告】| `[bt::BridgeReport]`
        i. 统计桥梁的裂缝状况，综合分析得出一份分析报告
        #. 支持提供多种格式的报告导出
        #. 能与专家系统合作得出一份可靠的桥梁现状评估结果分析^[如果有这样的专家系统的话。]

#### 使用流程

`[bt::Server]` 上线运行后，可以运行客户端软件连接服务器，查看桥梁模型和桥面纹理。基本使用流程是：

#. 安装客户端软件
#. 连接服务器，登录并获取权限
#. 获取桥梁列表
#. 通过从桥梁列表选取的方式或者模糊检索的方式，请求某一桥梁相关数据
#. 利用客户端的模型浏览模块和纹理浏览模块浏览当前桥梁
#. 记录用户的查询、浏览，用户可以通过使用历史快速打开桥梁模型或其具体的某一纹理平面
#. 如果有足够的权限，可以打开模型和纹理的编辑功能
#. 对模型和纹理编辑后，变更记录保存在当前的账户信息中（匿名用户的记录注销后自动删除）
#. 用户可以把对纹理进行的编辑提交到服务器，审核过后，变更会在系统范围内生效

### 定位和设计思路

本 `[bt::System]` 处于桥梁裂缝检测系统的下游，和客户联系紧密。
一方面要利用上游的桥梁和纹理数据为客户呈现活灵活现的三维、二维显示效果，
还要在实际运行过程中收集信息、向系统上游反馈数据质量的不足和改进点。

`[bt::System]` 所处的位置决定了其重要性。只有把 `[bt::System]` 做好，
出色地满足客户的各方面需求，桥梁裂缝检测系统才能得到应有的认可和好评。
如果本桥梁纹理系统做得不好、使用体验差，导致用户不满意，不仅是本系统的失败，
也是整个桥梁裂缝检测系统的失败。

（TODO：继续补充：论自我展示的重要性。）

鉴于 `[bt::System]` 的定位，在系统设计上，我们要：

a. 从**用户**角度出发
    i. 提供易用的交互方式
    #. 提供一定的容错能力，纠正非专业人士的误操作
    #. 提供更简洁的 UI，避免暴露不必要的选择
#. 从后台为整个系统默默贡献**开发人员**的角度出发
    i. 充分利用裂缝检测系统开发人员提供的桥梁模型参数和纹理信息
    #. 反馈数据的优劣，提出数据改进意见
#. 从系统的**设计和维护**的角度出发
    i. 设计应当简洁
    #. 层次清晰、模块独立
    #. 便于单元测试和集成测试
    #. 即使开发人员频繁变动，也不会影响系统稳定性和开发进度
    #. 便于项目提交

### 资源和共享需求

综合考虑客户、开发者、维护者、投资者的利益，我们将系统设计成
**中心管理**的方式，因为这种模式

i. 减轻了客户端的安装压力
#. 保护了系统数据不轻易流失
#. 便于权限管理，向普通用户隐藏高精度数据，向高级用户提供更优质服务和更多特权
#. 滚动式数据更新，让用户及时体验最新数据^[这简直是应用系统中的 Arch Linux。]
#. 便于记录数据使用情况，分析用户浏览的特点，分析原始数据的优劣

是在**数据保护**和**系统推广**之间的折中选择。

### 应用功能需求

从 [总体模型](#总体模型) 中可以提炼出总体功能架构：

#. 登录
    a. 可以匿名登录（或者不登录），但只有浏览权限
    #. 登录，获得某一等级的权限
    #. 社交网络分享某一桥体模型或者纹理模型，吸引更多用户
#. 浏览
    a. 二维纹理浏览
        i. 可对纹理贴图平移、缩放、放大查看
        #. 可保存截图
        #. 显示纹理贴图的信息
            #. 图片格式、大小、日期（atime、ctime、mtime）
            #. 人工纹理图层的修改者
            #. 裂缝详细信息（支持排序、筛选）
    #. 三维模型浏览
        i. 切换交互方式（track-ball view，car-drive view 等）
        #. 通过点击选中三维物体
        #. 通过鼠标放大、缩小放大视角
    #. 二维、三维互操作和联动
        i. 通过在三维浏览器中点选模型平面查看纹理贴图
        #. 通过在二维浏览器中选择纹理贴图跳转到三维模型的具体位置
#. 编辑
    a. 二维纹理编辑
        i. 在当前纹理图层上添加、删除裂缝
        #. 修改某一裂缝
        #. 备注某一裂缝
        #. 裂缝应保存为矢量（比如 svg 格式）
    #. 三维模型编辑
        i. 直接修改模型参数
        #. 手工微调模型位置（不同视角协助用户判断调整是否到位）
        #. 调整纹理颜色融合（blend）的 alpha 值
        #. 添加备注信息
#. 保存
    a. 浏览记录保存在本地，不定期同步至服务器
    #. 完全保存编辑记录，可重放
    #. 可以将编辑记录绑定到自己的视图中，下次加载纹理、模型后会自动 patch 这个编辑，再显示编辑后的效果
    #. 可以请求把这个 patch（编辑）提交到全系统范围，请求绑定全范围的纹理、模型加载后都将 patch 这个编辑，再显示之后的效果（全局生效）
    #. （前两点把模型和纹理的编辑看成了一个对模型、纹理配置文本不断 patch 的过程，这些 patch 可以提交可以、共享，可以向服务器提交继而被接受或被否定）
#. 提交
    a. 浏览和编辑记录保存在当前用户账户中，应及时提交至中心服务器
#. 系统无关
    a. 设计合理的功能、布局、按钮以及必要的快捷键
    #. 从示例中教用户如何使用（类似游戏设计中前几关告诉玩家游戏的方法）
    #. 联系开发者，报告问题

总体功能架构图（略）

总体业务流程（概述、流程）

用例图（略）。

功能描述（略）。

### 系统性能需求

服务器端处理能力要求

:   `[bt::Kernel]` 应能处理多并发访问，有用足够的 IO 带宽，
    对每个用户的响应时间小于一定阈值（比如：resThresh = 300ms）。

    `[bt::Database]` 支持查询优化。……

    `[bt::Auth]` 应能满足用户第三方登录需求，满足用户通过邮箱、手机重置密码的需求，
    认证响应时间小于一定阈值（比如 authThresh = 400ms）。

    `[bt::Logger]` 及时将所有信息记录下来。

客户端处理能力要求

:   `[bt::Client]` 应能保存一些离线数据，在偶然断网情况下也能浏览。

    `[bt::Agent]` 应能把本地账户信息（由 `[bt::SessionLogger]` 收集）提交到中心服务器。

    `[bt::BridgeEditor]` 和 `[bt::TextureEditor]` 应能充分利用计算机 GPU 能力，减少卡顿，
    并不应影响主界面消息循环线程。在三维浏览、编辑模块卡死时能重置这个模块。

    `[bt::SessionLogger]` 应能记录用户的浏览操作，保存在当前账户中。

系统稳定性指标

:   #. 7 x 24 小时工作，无宕机
    #. 平均年故障时间：< 1天
    #. 平均故障修复时间：< 10 min
    #. 最大故障修复时间：< 50 min

备份需求和策略

:   #. 一方面中心服务器选用磁盘阵列运行服务器程序、进行数据存储
    #. 另一方面，数据库要定期差异备份和完全备份
    #. 可以考虑选用第三方 CDN 云存储服务
      （避免自己考虑数据的安全性和并发访问能力）

### 系统测试需求

#### 测试指标

#. 从综合功能的角度，验证系统和用户需求的符合性；
#. 降低系统运行风险，降低系统运行和维护成本；
#. 通过测试找出系统瓶颈和协助系统调优，提升系统的整体性能；
#. 通过测试产生的数据，为今后的系统稳定可靠运行提供科学依据；
#. 保证系统的实用性、稳定性、可维护性、灵活性、可操作性。

#### 测试方法

系统功能性测试

:   完成情况 | 功能点 | 备注
    :------: | ------ | ----
    &#x2610; | 数据库 | null
    &#x2611; | 二维浏览 | null
    &#x2610; | 二维编辑 | null
    &#x2611; | 三维浏览 | null
    &#x2610; | 三维编辑 | null
    &#x2610; | 二维浏览 | null

    （系统功能性测试只是一个概略，
    在 [测试模块](#测试模块) 有具体每个功能点的测试情况）

业务性能测试

:   业务的完整性，和每个业务模块的可用性

单元测试、集成测试、系统测试、压力测试、etc

#### 测试模块

序号 | 系统 | 功能点 | 期望 | 测试结果 | 备注
---- | ---- | ------ | ---- | :---: | --- |
   1 | `[bt::Server]` | Web 服务 | 接收请求并应答 | &#x2610; | null
   2 | `[bt::TextureViewer]` | 缩放 | 接收请求并应答 | &#x2610; | null

测试环境（与与运行环境一致，

被测模块 --> 单元测试 --> 集成测试  ->> 确认测试  --> 系统测试
（测试过程图）

### 系统部署需求

服务器端部署（应用服务器、数据服务器、备用网络服务器）

软件部署（需要哪些软件？多少套，型号）

客户端部署（安装包、浏览器）
（安装包的获取，认证？账户注册流程……）

### 系统验收需求

#### 验收的前提条件

#. 系统设计各项功能满足双方的需求约定；
#. 合同或合同附件规定的各类文档齐全；
#. 软件产品已置于配置管理之下；
#. 与业务需求的符合程度；
#. 已通过计算机软件确认测试，已通过系统测试；
#. 与预期结果的符合程度，包括不仅限于信息资源规划、业务流程再造需求及业务持续改进需求和业务指标评价体系的符合程度。

可运行+文档+培训

#### 验收方法

#### 验收步骤

#. 我方将保证实用性、稳定性、可维护性、灵活性、可操作性。
#. 初验 --> 终验 --> 项目交接

#### 验收内容和标准

本项目的验收工作应遵循以下标准：

#. 应用系统符合“合同”、“深化设计方案”、“实施方案”以及用户确认的“需求分析说明书”规定的全部功能和质量要求；
#. 不同安全性关键等级的软件均通过项目验收的各项测试，并且获得可接受的软件测评和信息安全测评结果；
#. 建设方要求的文档规范《关于加强市应急联动指挥系统工程项目建设档案管理工作的通知》。

数据库设计
----------

> 注：
>
> 这部分放在后期再完善。

### 引言

目的、背景、参考资料、定义

### 结构设计

数据库分布

逻辑结构设计

各数据库直接的数据交换

命名规则
+ 对象命名规范
+ 编码规范

### 表结构设计

bt::Server 子系统

bt::Client 子系统（PC 客户端、Web 客户端）

bt::Auth 子系统


### 数据字典设计

？什么是数据字典？……

### 数据存储设计


### 数据采集


UI 设计文档
-----------

### 引言



#### 目的

（本文档根据对相关资料的理解，通过对用户的交流，从满足用户业务应用需求的角度出发，
结合项目建设的实际情况，对应急管理平台系统的界面进行详细描述。）

#### 背景

本系统作为**系统的一个子系统，是其它相关子系统在统一规划的基础上进行同步建设的。
结合项目建设目标的要求及系统特点，进行定制开发和改造，从而实现整体规划目标。

#### 总体设计

#. UI 的各部分应当独立开，可分别测试
#. UI 和类解耦，UI 类接受 UI 的协助但不依赖于 UI，可以独立运行
#. 借助 CmdLine 等函数库，可以把原本在 UI 内完成的任务放到命令行，通过指令调用实现脚本批处理

#### 业务术语

MainWindow

Widget

Dialog

Dock

快捷键

二维纹理

编辑器

认证

保存

提交

上传

原图

#### 参考资料

《Qt 界面设计？》

### 系统界面说明

浏览、索引（查找、搜索）、认证、编辑、提交更改（纹理修改是在另一个图层上，不修改原始图片）、
最终 blend 显示（二维 alpha blend，三维两个纹理 transparent blend）

#### 三维查看

#### 二维查看

#### 认证和登录

#### 二维编辑

#### 三维编辑

#### 确认编辑（列出编辑的地方和变动）

#### 提交变动

（后台审核后判断是否把编辑后的状态设为默认。）


---

代码部分
--------

#. 模型组织：`osg::Switch`{.cpp}（是一种 Group 相比 Group 能快速地 hidden/show）
#. 模型操作：`osg::MatrixTransform`{.cpp}（translate/rotate/scale）
#. &#x2717; OSG 中的菜单（用 Qt 的那一套）
#. &#x2713; 动画（关键帧、骨骼、颜色渐变）
    * 颜色渐变的示例代码可做动态贴纹理
#. &#x2610; 键盘、鼠标、Pick（Handler）
#. &#x2610; 操作器（Camera Manipulator）
    * 用 OSG 默认的几个
    * 自己再继承一个（实现位置的切换）
        + note: 主要是 `getMatrix()`{.cpp}（位置姿态）、`getInverseMatrix()`{.cpp}、`handle()`{.cpp}（键鼠）

杂七杂八的 Note：

```cpp
// 设置 node 名字
node.setName( std::string );

// TODO: 从 config 中判断是否纹理需要重新贴
// （新建一个静态类，专门用来配置三维模型，配置放在静态的 `getInstance()`{.cpp} 里）
bool applied;
std::string textureImgUrl;
node.setUpdateCallback( cb );
if ( !applied ) {
    apply();
    applied = true;
}

// more snippets
osg::Matrix osg::Matrixd::rotate( dx, osg::X_AXIS,
                                  dy, .....Y.....,
                                  dz, .....Z..... );
* osg::GUIEventHandlerAdapter
    + KEYDOWN（键盘）
    + PUSH（单击）
    + DRAG（从代码上看更像是 MOVE）

// osg 里的矩阵运算用的是左乘
current pose = rot * trans

// osg, rot(0,0,0) 其实是朝向 (0,0,-1)（面对着 xy 平面）

// 参数里用的是弧度，有弧度角度转化的函数
osg::PI






```


```cmake

# include them all
include( ${QT_USE_FILE} )
include_directories( ${OPENCV_INCLUDE_DIR} )
include_directories( ${Boost_INCLUDE_DIR} )
include_directories( ${OSG_INCLUDE_DIR} )

# link them all
link_directories( ${Boost_LIBRARY_DIR} )
link_directories( "D:/boost_1_58_0/stage/lib" )
link_directories( ${OSG_LIBRARY_DIR_DEBUG} )
link_directories( ${OSG_LIBRARY_DIR_RELEASE} )

target_link_libraries( ${PROJECT_NAME} ${QT_LIBRARIES} ${OPENGL_LIBRARY} ${GLUT_LIBRARIES} ${OpenCV_LIBS} ${OpenSceneGraph_LIBS_Debug} ${OpenSceneGraph_LIBS_Release} Utils SignCutter )
```


```cpp
// viewer
const std::string name="Main";
bool windowDecoration = false;
if ( MONO_VIWER == vt )
{
    viewNum=1;
    QWidget* widget = addViewWidget( createGraphicsWindow(0,0,200,200,name,windowDecoration), VIEW_PERSPECTIVE, true ); // set as main
    QGridLayout* grid = new QGridLayout;
    grid->addWidget( widget);
    setLayout( grid );
}
else if ( FOUR_VIEWERS == vt )
{
    //views=std::vector<osg::ref_ptr<osgViewer::View> >(4);
    viewNum=4;
    QWidget* widget1 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_PERSPECTIVE, true ); // set as main
    QWidget* widget2 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_TOP );
    QWidget* widget3 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_LEFT );
    QWidget* widget4 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_FRONT );

    QGridLayout* grid = new QGridLayout;
    grid->addWidget( widget1, 0, 0 );
    grid->addWidget( widget2, 0, 1 );
    grid->addWidget( widget3, 1, 0 );
    grid->addWidget( widget4, 1, 1 );
    setLayout( grid );
} else if ( SEVEN_VIEWERS == vt ) {
    viewNum=6;
    QWidget* widget1 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_FRONT );
    QWidget* widget2 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_TOP );
    QWidget* widget3 = addViewWidget( createGraphicsWindow(0,0,200,200,name,windowDecoration), VIEW_PERSPECTIVE, true ); // set as main
    QWidget* widget4 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_LEFT );
    QWidget* widget5 = addViewWidget( createGraphicsWindow(0,0,100,100,name,windowDecoration), VIEW_LEFT );
    QWidget* widget6 = addViewWidget( createGraphicsWindow(0,0,100, 50,name,windowDecoration), VIEW_FRONT );
    QWidget* widget7 = addViewWidget( createGraphicsWindow(0,0,100, 50,name,windowDecoration), VIEW_TOP );
    QGridLayout* grid = new QGridLayout;
    grid->addWidget( widget1, 0, 0, 1, 2 );
    grid->addWidget( widget2, 1, 0, 1, 2 );
    grid->addWidget( widget3, 0, 2, 2, 4 );
    grid->addWidget( widget4, 2, 0, 1, 2 );
    grid->addWidget( widget5, 2, 2, 1, 2 );
    grid->addWidget( widget6, 2, 4, 1, 1 );
    grid->addWidget( widget7, 2, 5, 1, 1 );
    setLayout( grid );
} else {
    settingViewer();
}

connect( &_timer, SIGNAL(timeout()), this, SLOT(update()) );
_timer.start( 10 );

this->setGeometry( 100, 100, 800, 600 );
this->show();

// 一个直接添加，一个加点 Scribe 特效
osg::ref_ptr<osg::Node> cow = osgDB::readNodeFile( filename );
osg::ref_ptr<osgFX::Scribe> sc = new osgFX::Scribe;
sc->addChild( cow.get() );
group.addChild( cow.get() );
group.addChild( sc.get() );

camera->setViewMatrixAsLookAt( eyePoint, center, upDirection );
```


class ccCustomQTreeView (CloudCompare\qCC\db_tree\ccDBRoot.h)




---

Koan
----

话说 CloudCompare 的程序写的很赞，连 CMakeLists.txt 都很考究，
包括但不限于空格、大小写、注释。[^cccmake]

[^cccmake]: 那些 CMake 语句（说的不是变量）用大写的，都是逗逼。

    ```cmake
    cmake_minimum_required(VERSION 2.8)

    project( CloudCompare )

    set( VERSION_MAJOR 2 )
    set( VERSION_MINOR 7 )
    set( VERSION_PATCH 0 )

    include_directories( ${GLEW_LIB_SOURCE_DIR}/include )
    include_directories( ${CC_FBO_LIB_SOURCE_DIR}/include )
    include_directories( ${CC_CORE_LIB_SOURCE_DIR}/include )
    include_directories( ${QCC_DB_LIB_SOURCE_DIR} )
    if( MSVC )
    include_directories( ${QCC_DB_LIB_SOURCE_DIR}/msvc )
    endif()
    include_directories( ${QCC_IO_LIB_SOURCE_DIR} )
    include_directories( ${QCC_GL_LIB_SOURCE_DIR} )
    include_directories( ${EXTERNAL_LIBS_INCLUDE_DIR} )
    include_directories( ${CloudComparePlugins_SOURCE_DIR} )
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR} )
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/db_tree )
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/ui_templates )
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../libs/qxt )
    include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../libs/qcustomplot )
    include_directories( ${CMAKE_CURRENT_BINARY_DIR} )

    # QCustomPlot
    set( QCUSTOMPLOT_HEADERS ../libs/qcustomplot/qcustomplot.h )
    set( QCUSTOMPLOT_SOURCES ../libs/qcustomplot/qcustomplot.cpp )

    file( GLOB header_list *.h db_tree/*.h ${QXT_HEADERS} ${QCUSTOMPLOT_HEADERS} )
    file( GLOB source_list *.cpp db_tree/*.cpp ${QXT_SOURCES} ${QCUSTOMPLOT_SOURCES} )

    # 3DX support (3dConnexion devices)
    if ( ${OPTION_SUPPORT_3DCONNEXION_DEVICES} )
        file( GLOB 3DX_header_list devices/3dConnexion/*.h )
        file( GLOB 3DX_source_list devices/3dConnexion/*.cpp )
        list( APPEND header_list ${3DX_header_list} )
        list( APPEND source_list ${3DX_source_list} )
    endif()

    file( GLOB ui_list ui_templates/*.ui )
    file( GLOB qrc_list *.qrc )
    #file( GLOB rc_list *.rc )
    file( GLOB txt_list TODO.txt bin_other/history.txt )

    if ( USE_QT5 )
        qt5_wrap_ui( generated_ui_list ${ui_list} )
        qt5_add_resources( generated_qrc_list ${qrc_list} )
    else()
        # find Qt mocable files
        find_mocable_files( mocable_list ${header_list} )
        qt4_wrap_cpp( moc_list ${mocable_list} )
        qt4_wrap_ui( generated_ui_list ${ui_list} )
        qt4_add_resources( generated_qrc_list ${qrc_list} )
    endif()

    # App icon with MSVC
    if( MSVC )
        set( rc_list images/icon/cc_icon.rc )
    endif()

    if( MSVC )
        #to get rid of the (system) console
        add_executable( ${PROJECT_NAME} WIN32 ${header_list} ${source_list} ${moc_list} ${generated_ui_list} ${generated_qrc_list} ${rc_list} ${resource_list} ${txt_list} )
    elseif( APPLE )
        add_executable( ${PROJECT_NAME} MACOSX_BUNDLE ${header_list} ${source_list} ${moc_list} ${generated_ui_list} ${generated_qrc_list} ${resource_list} ${txt_list} )
    else()
        add_executable( ${PROJECT_NAME} ${header_list} ${source_list} ${moc_list} ${generated_ui_list} ${generated_qrc_list} ${rc_list} ${resource_list} ${txt_list} )
    endif()

    target_link_libraries( ${PROJECT_NAME} GLEW_LIB )
    target_link_libraries( ${PROJECT_NAME} CC_FBO_LIB )
    target_link_libraries( ${PROJECT_NAME} CC_CORE_LIB )
    target_link_libraries( ${PROJECT_NAME} QCC_DB_LIB )
    target_link_libraries( ${PROJECT_NAME} QCC_IO_LIB )
    target_link_libraries( ${PROJECT_NAME} QCC_GL_LIB )
    target_link_libraries( ${PROJECT_NAME} ${EXTERNAL_LIBS_LIBRARIES} )

    if ( USE_QT5 )
        if (WIN32)
            target_link_libraries( ${PROJECT_NAME} Qt5::WinMain )
        endif()
        qt5_use_modules(${PROJECT_NAME} Core Gui Widgets OpenGL PrintSupport)
    endif()

    # contrib. libraries support
    target_link_contrib( ${PROJECT_NAME} ${CLOUDCOMPARE_DEST_FOLDER} )

    # 3dConnexion devices support
    target_link_3DXWARE( ${PROJECT_NAME} )

    # Default preprocessors
    set_default_cc_preproc( ${PROJECT_NAME} )

    # Add custom preprocessor definitions
    set_property( TARGET ${PROJECT_NAME} APPEND PROPERTY COMPILE_DEFINITIONS USE_GLEW GLEW_STATIC )
    if( WIN32 )
        set_property( TARGET ${PROJECT_NAME} APPEND PROPERTY COMPILE_DEFINITIONS CC_USE_AS_DLL QCC_DB_USE_AS_DLL QCC_IO_USE_AS_DLL )
        if (MSVC)
            SET_TARGET_PROPERTIES(${PROJECT_NAME} PROPERTIES LINK_FLAGS " /MANIFEST:NO")
        endif()
    endif()

    #set_property( TARGET ${PROJECT_NAME} APPEND PROPERTY COMPILE_DEFINITIONS_RELEASE XXX) #nothing right now
    #set_property( TARGET ${PROJECT_NAME} APPEND PROPERTY COMPILE_DEFINITIONS_DEBUG XXX) #nothing right now

    # App icon with Code::Blocks/MinGW
    if( WIN32 )
        if( MINGW )
            add_custom_command( TARGET ${PROJECT_NAME} PRE_BUILD COMMAND windres -i ${CMAKE_CURRENT_SOURCE_DIR}/images/icon/cc_icon.rc --input-format=rc -o ${CMAKE_CURRENT_BINARY_DIR}/cc_icon.res -O coff )
        endif()
    endif()

    # install program
    install_ext( TARGETS ${PROJECT_NAME} ${CLOUDCOMPARE_DEST_FOLDER} )

    # Auxiliary files
    set( auxFiles bin_other/history.txt bin_other/license.txt bin_other/global_shift_list_template.txt )

    if( WIN32 )
        # Export Qt dlls
        install_Qt_Dlls( ${CLOUDCOMPARE_DEST_FOLDER} )
        install_Qt_ImageFormats( ${CLOUDCOMPARE_DEST_FOLDER} )
        install_Qt5_plugins( ${CLOUDCOMPARE_DEST_FOLDER} )

        # Additional auxiliary file(s)
        list( APPEND auxFiles bin_other/start.bat )
    endif()

    # Install auxiliary files
    foreach( filename ${auxFiles} )
        install_ext( FILES ${filename} ${CLOUDCOMPARE_DEST_FOLDER} )
    endforeach()

    # in order to ensure that everything else is installed first, put the Mac bundling in its own subdirectory
    if( APPLE )
    set_property( TARGET ${PROJECT_NAME} PROPERTY MACOSX_BUNDLE_INFO_PLIST ${CMAKE_CURRENT_SOURCE_DIR}/Mac/CloudCompare.plist )

    set( MACOSX_BUNDLE_ICON_FILE cc_icon.icns )
    set( MACOSX_BUNDLE_SHORT_VERSION_STRING "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}" )
    set( MACOSX_BUNDLE_LONG_VERSION_STRING "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}" )
    set( MACOSX_BUNDLE_BUNDLE_VERSION "${VERSION_MAJOR}.${VERSION_MINOR}.${VERSION_PATCH}" )

    add_subdirectory( Mac )
    endif()

    # Export common shader files to all install destinations
    if( APPLE )
    install( FILES ${CC_FBO_LIB_SOURCE_DIR}/bilateral/bilateral.frag DESTINATION ${CLOUDCOMPARE_MAC_BASE_DIR}/Contents/Shaders )
    install( FILES ${CC_FBO_LIB_SOURCE_DIR}/bilateral/bilateral.vert DESTINATION ${CLOUDCOMPARE_MAC_BASE_DIR}/Contents/Shaders )
    install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/ColorRamp/color_ramp.frag DESTINATION ${CLOUDCOMPARE_MAC_BASE_DIR}/Contents/Shaders/ColorRamp )
    #install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/Rendering/rendering.frag DESTINATION ${CLOUDCOMPARE_MAC_BASE_DIR}/Contents/Shaders/Rendering )
    #install( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/Rendering/rendering.vert DESTINATION ${CLOUDCOMPARE_MAC_BASE_DIR}/Contents/Shaders/Rendering )
    else()
    install_ext( FILES ${CC_FBO_LIB_SOURCE_DIR}/bilateral/bilateral.frag ${CLOUDCOMPARE_DEST_FOLDER} /shaders )
    install_ext( FILES ${CC_FBO_LIB_SOURCE_DIR}/bilateral/bilateral.vert ${CLOUDCOMPARE_DEST_FOLDER} /shaders )
    install_ext( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/ColorRamp/color_ramp.frag ${CLOUDCOMPARE_DEST_FOLDER} /shaders/ColorRamp )
    #install_ext( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/Rendering/rendering.frag ${CLOUDCOMPARE_DEST_FOLDER} /shaders/Rendering )
    #install_ext( FILES ${CMAKE_CURRENT_SOURCE_DIR}/shaders/Rendering/rendering.vert ${CLOUDCOMPARE_DEST_FOLDER} /shaders/Rendering )
    endif()
    ```


配置的读取，

理论上应该支持

#. [JSON](http://json.org/)（用 [open-source-parsers/jsoncpp](https://github.com/open-source-parsers/jsoncpp)）
#. YAML（用 OpenCV）
#. XML（用 Qt ）

OpenCV, YAML

```cpp
cv::FileStorage fs( filename.yaml, FileStorage::{READ,WRITE} );

// read
int frameCount = (int)fs2["frameCount"];
fs2["frameCount"] >> frameCount;

// write
fs << "key" << value; // object.pair
fs << "[:" << "item1" << item1 << "item2" << item2 << "]"; // object.array
fs << "{:" /* key-value pairs */ << "}" ; object
```

output:

```yaml
%YAML:1.0
width: 30.
length: 60.
beamnum: 4
```

src/qCC/db_tree/ccDBRoot.h -> CloudCompare/ccDBRoot.h
src/qCC/ui_templates/mainWindow.ui -> CloudCompare/mainWindow.ui


mainWindow.ui:

```xml
<customwidget>
 <class>ccCustomQTreeView</class>
 <extends>QTreeView</extends>
 <header location="global">ccDBRoot.h</header>
</customwidget>
```

通过在 QtDesigner 里面对 UI 进行类型提升（设置提升后的 ClassName，基类 BaseClass，以及头文件名 Header.h）

Qt 中响应右键？这部分要看参考 CloudCompare 源码：`src/qCC/db_tree/ccDBRoot.h`

```cpp
// 新建 action
m_addEmptyGroup = new QAction( "Add empty group", this );

// 连接  action
connect( m_addEmptyGroup, SIGNAL(triggered()),
         this, SLOT(addEmptyGroup()) );

// 添加到菜单
QMenu menu;
menu.addAction( m_addEmptyGroup );
menu.addSeparator( );

// 右键响应其实是弹出 ContextMenu，先打开功能，再连接
widget->setContextMenuPolicy( Qt::CustomContextMenu );
connect( m_dbTreeWidget, SIGNAL(customContextMenuRequested(const QPoint&)),
         this, SLOT(showContextMenu(const QPoint&)) );

// 再去实现：通过点击的位置，判断需要弹出什么样子右键菜单；一翻逻辑后显示 menu
void ccDBRoot::showContextMenu(const QPoint& menuPos)
QModelIndex index = m_dbTreeWidget->indexAt(menuPos);
if ( index.isValid() ) { /* process */ }
menu.exec(m_dbTreeWidget->mapToGlobal(menuPos));
```

上面的 menu 没有 parent，它的显示位置要把 menuPos 转化到全局的坐标小，所以用到了
`QPoint QWidget::mapToGlobal(const QPoint & pos) const`{.cpp}

关于 contextMenuPolicy : Qt::ContextMenuPolicy

> The default value of this property is `Qt::DefaultContextMenu`{.cpp},
> which means the `contextMenuEvent()`{.cpp} handler is called.
> Other values are `Qt::NoContextMenu`{.cpp}, `Qt::PreventContextMenu`{.cpp},
> `Qt::ActionsContextMenu`{.cpp}, and `Qt::CustomContextMenu`{.cpp}.
> **With `Qt::CustomContextMenu`{.cpp}, the signal customContextMenuRequested() is emitted.**

图片列表

```cpp
model->setHorizontalHeaderLabels(
    QStringList()<< tr("") << tr("Images") << tr("Path") );

icon = new QIcon( ":/images/folder.png" );
item = new QStandardItem( *icon, QString("Images") );
```

ToolButton 的设置

```cpp
int btnSz = 24;
QString colorName = "red";
QColor colorRed = QColor( 255, 0, 0, 255 );
QPixmap colorPix( btnSz, btnSz );
colorPix.fill( colorRed );

QAction *colorAction = new QAction( colorName, this );
colorAction->setData( colorRed );
colorAction->setIcon( colorPix );
connect( colorAction, SIGNAL(triggered()),
         this, SLOT(changeColorToRed()) );

QToolButton *colorBtn = new QToolButton;
colorBtn->setFixedSize( QSize( btnSz, btzSz ) );
colorBtn->setAutoRaise( true );
colorBtn->setDefaultAction( colorAction );
colorBtn->setToolTip( "set color to red." );

buttonsLayout->addWidget( colorBtn, 1, 3 );
```

<span id="nice"></span>`<span id="nice"></span>`

go [nice](#nice)

~~~~ {.cpp}
QString::number( integer, base );
QString::number( decimal, flag, precise );
~~~~

显示缩略图的方法

```cpp
// method 1 (from StackOverflow)
QStandardItemModel *model = new QStandardItemModel;
QImage image(":/cat/lovers/own/myCat.jpg");
QStandardItem *item = new QStandardItem();
item->setData(QVariant(QPixmap::fromImage(image)), Qt::DecorationRole);
model->setItem(0, 0, item);
ui->tableView->setModel(model);

// method 2(tried out)
QStandardItem *item =
    new QStandardItem( QIcon(QPixmap(filename).scaledToHeight(40)), Utils::basename( filename ) );
model->appendRow( item ); // 会缩放至行高
```


有个很有意思的文档：[c++ - Show image in a column of QTableView from QSqlTableModel - Stack Overflow](http://stackoverflow.com/questions/24201822/show-image-in-a-column-of-qtableview-from-qsqltablemodel)

To do this, the concept is simple: provide QTableView with 【QVariant of
QPixmap】 as QTableView render them according to `Qt::DecorationRole`{.cpp}.

You may subclass `QSqlTableModel` and reimplement the virtual function
`QVariant data(const QModelIndex & index, int role = Qt::DisplayRole)`{.cpp}
and make the image column return the QPixmap as QVariant, with the decoration
role. So do something like this:

```cpp
QVariant CustomSqlTableModel::data(const QModelIndex &idx, int role = Qt::DisplayRole) const
{
    if (idx.column() == imageColumn) {
        QString imgFile = QSqlTableModel::data(idx, Qt::DisplayRole); // get path string

        if (role == Qt::DisplayRole)
            return QString(); // return the path string for display role

        QImage image(imgFile);
        /* some modification to the image, maybe */

        QPixmap pixmap(imgFile);
        if (role == Qt::DecorationRole)
            return pixmap;   // return QPixmap for decoration role

        if (role == Qt::SizeHintRole)
            return pixmap.size(); // in case need the image size

    }
    return QSqlTableModel::data( idx, role ); // use original data() outside the imageColumn
}
```

Besides, you can also try subclassing QStyledItemDelegate and reimplement
`paint()`{.cpp} function to customize your own delegate, but that will require a more
complicated work. An example using delegate can be found [here](http://www.qtcentre.org/threads/18633-Images-QTableview-Delegates).
You can paint whatever you want with delegate, even a button.


```cpp
// m_pivotVisibilityPopupButton 可以弹出三个子菜单
//pivot center pop-up menu
{
    m_pivotVisibilityPopupButton = new QToolButton();
    QMenu* menu = new QMenu(m_pivotVisibilityPopupButton);
    menu->addAction(actionSetPivotAlwaysOn);
    menu->addAction(actionSetPivotRotationOnly);
    menu->addAction(actionSetPivotOff);

    m_pivotVisibilityPopupButton->setMenu(menu);
    m_pivotVisibilityPopupButton->setPopupMode(QToolButton::InstantPopup);
    m_pivotVisibilityPopupButton->setToolTip("Set pivot visibility");
    m_pivotVisibilityPopupButton->setStatusTip(m_pivotVisibilityPopupButton->toolTip());
    toolBarView->insertWidget(actionZoomAndCenter,m_pivotVisibilityPopupButton);
    m_pivotVisibilityPopupButton->setEnabled(false); // 默认点不了
}
```

杂七杂八的笔记
--------------

#. CloudCompare 源码里的 signal/slot 用了引用，但由于 Qt 的 signal/slot 机制的问题（需要 signature normalization），
这样的代码运行（还不是编译期间变慢！）起来会更慢。^[参见我以前的笔记：[直觉上我也觉得用 & 不对](http://dvorak4tzx.lofter.com/post/1d4021c8_7e2c8cf)。]

```
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include <iostream>

using namespace rapidjson;
using namespace std;

int main() {
    StringBuffer s;
    Writer<StringBuffer> writer(s);

    writer.StartObject();
    writer.String("hello");
    writer.String("world");
    writer.String("t");
    writer.Bool(true);
    writer.String("f");
    writer.Bool(false);
    writer.String("n");
    writer.Null();
    writer.String("i");
    writer.Uint(123);
    writer.String("pi");
    writer.Double(3.1416);
    writer.String("a");
    writer.StartArray();
    for (unsigned i = 0; i < 4; i++)
        writer.Uint(i);
    writer.EndArray();
    writer.EndObject();

    cout << s.GetString() << endl;

    return 0;
}
```


```cpp
#include "rapidjson/reader.h"
#include <iostream>

using namespace rapidjson;
using namespace std;

struct MyHandler {
    bool Null() { cout << "Null()" << endl; return true; }
    bool Bool(bool b) { cout << "Bool(" << boolalpha << b << ")" << endl; return true; }
    bool Int(int i) { cout << "Int(" << i << ")" << endl; return true; }
    bool Uint(unsigned u) { cout << "Uint(" << u << ")" << endl; return true; }
    bool Int64(int64_t i) { cout << "Int64(" << i << ")" << endl; return true; }
    bool Uint64(uint64_t u) { cout << "Uint64(" << u << ")" << endl; return true; }
    bool Double(double d) { cout << "Double(" << d << ")" << endl; return true; }
    bool String(const char* str, SizeType length, bool copy) {
        cout << "String(" << str << ", " << length << ", " << boolalpha << copy << ")" << endl;
        return true;
    }
    bool StartObject() { cout << "StartObject()" << endl; return true; }
    bool Key(const char* str, SizeType length, bool copy) {
        cout << "Key(" << str << ", " << length << ", " << boolalpha << copy << ")" << endl;
        return true;
    }
    bool EndObject(SizeType memberCount) { cout << "EndObject(" << memberCount << ")" << endl; return true; }
    bool StartArray() { cout << "StartArray()" << endl; return true; }
    bool EndArray(SizeType elementCount) { cout << "EndArray(" << elementCount << ")" << endl; return true; }
};

int main() {
    const char json[] = " { \"hello\" : \"world\", \"t\" : true , \"f\" : false, \"n\": null, \"i\":123, \"pi\": 3.1416, \"a\":[1, 2, 3, 4] } ";

    MyHandler handler;
    Reader reader;
    StringStream ss(json);
    reader.Parse(ss, handler);

    return 0;
}
```

---

Refs

#. [Opencv YAML和XML格式文件操作详解 - YhL_Leo的博客 - 博客频道 - CSDN.NET](http://blog.csdn.net/yhl_leo/article/details/47660943)
#. [QWidget::setContextMenuPolicy](http://doc.qt.io/qt-4.8/qwidget.html#contextMenuPolicy-prop)

![](http://whudoc.qiniudn.com/2016/4-15/幻灯片1.PNG)

![](http://whudoc.qiniudn.com/2016/4-15/幻灯片2.PNG)
