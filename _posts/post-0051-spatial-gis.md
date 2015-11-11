% GIS 理论与技术 -- 作业 3：时空 GIS 的研究分析报告
% TANG ZhiXiong
% 2015-10-28


GIS 理论与技术 -- 作业 3：时空 GIS 的研究分析报告
=================================================

> 注：这篇文章主要的侧重点在时间数据库。

从 Wikipedia 上的 [Temporal database](https://en.wikipedia.org/wiki/Temporal_database) 页面上我了解到，
时间数据库是 [Richard T. Snodgrass](https://en.wikipedia.org/wiki/Richard_T._Snodgrass) 在 1992 年提议加到 SQL 中，
作为一种扩展，这成了 SQL 的标准的一部分（ANSI X3.135.-1992 and ISO/IEC 9075:1992）。
我曾经了解过 GeoJSON 格式，用过 MongoDB 数据库存储管理空间意义上的地理信息数据，
基本明白地理信息的存储和表达。但对时间数据的存储，只有形而上的粗浅认识，
缺乏直观的理解和整体的把握，所以我阅读了 Richard Snodgrass 的论文 *Temporal Databases*[^paper-from]。

[^paper-from]: 来自论文集：Theories and Methods of Spatio-Temporal Reasoning in Geographic Space。

简而言之，这篇论文介绍了 1992 以来的 15 年内时空数据库的发展，对其主要思想、策略和实现做了分析阐明。
方便起见，下面用“Snodgrass”表示 Richard Snodgrass，“论文”表示本篇论文。

时间概念，时间的结构、维度、时效性和时间的表达
----------------------------------------------

传统的数据库（DBMS）虽然记录了昨天、今天的数据，也能记录明天的数据，但无法反应数据的变化过程。
这句话听上去或许普通，但蕴含深意，我分析一下。普通的数据库记录的各个字段的关系（主键、外键等约束），
数据库信息发生变化其实是可以反映数据内容时间上的变化，但是这种变化未能通过主键、外键等约束的方式被记录下来，
所以量化其变化过程，无法进行更深入的研究。这是非空间数据相对空间数据库的硬伤。
在早期的时间数据库理论研究中，提出了许多利用传统数据库概念实现时态功能的想法。

在这片论文中，先假定时间是一维的[^time-dim]，其次假定时间是离散的。这样一来，
时间和空间可以表达为正交的一组，在这个线性空间中可以表示为离散的向量（点）。

时间的表示依赖两点，一是 distance，二是 boundedness，这是时间的两个维度。举例说，
“9 点 20 分”[^time-example]这里有两个 boundedness 分别是小时（“点”）和分钟（“分”），
小时更加粗略，“9”和“20”表示 distance，表示距离某个基点的以 boundedness 为单位的时间长度。
时间的确定性由此而来。这个 boundedness 可以用一定的 baseline 和 distance 替换，论文中提到的 baseline 有：

* Dawn of Time（宇宙大爆炸）
* Past Synchronization Point（这个没看懂）
* UTC（这是我们现在用的时间）
* End of Time?（有世界末日吗？）

[^time-example]: 这个例子是我举的。

时间模糊性的表示则依赖于数据库的 DBMS granularity，和四叉树概念相关，也就是数据的 granularity coarser 过程。

[^time-dim]: 早期研究分散在 linear 和 branching 上，树结构的 branching 的时间
表示可能导致时间上的“环”（时间倒流），不比 linear 假定简单实用。

如何把事件和时间相联系？有关数据的建模和表达
--------------------------------------------

主要就是在说如何在计算机中表示。其实只涉及两点：一是时间跨度的选择（span），一个是时间范围。
这两点决定了时间的精度和长度范围，也决定了用计算机表达所必须的字节数（也就是信息量）。
比如一年 12 个月，最少用 4 个 bit 便可以表示。除了 span 的数量记录在计算机中（时间的量），
还需要 chronon identifiers（时间戳，确定基准）。这样才能对时间进行转化和拼接（还记得“9 点 20 分”吗？）。

其实还要考虑事件的建模和表示。事件的核心在于时间上和空间上的变化（time-varying & space-varying）。

查询优化（query optimization）和评估（evaluation）
-------------------------------------------------

论文首先介绍了查询语言需要的 proposals：

* SQL
* Quel
* QBE
* Relational algebra
* DEAL

这部分我没有细看（似乎也不必要）。

其次介绍了 schema 设计（就跟使用 MongoDB 时的 Schema Design 一样）。简言之，设计目标是：
消除歧义、直观易懂、规则简单。其实用 JavaScript 和 JSON（JavaScript 数据格式）所表达的恰好满足上述要求，
这里贴一段以前项目中的数据库 Schema Design 代码：

```javascript
"use strict";
var mongoose = require("mongoose");
var Schema = mongoose.Schema;
var SiteSchema = new Schema({
  _id: Number,
  f_id: Number,
  i_id: Number,
  name: { type: String, required: true },
  info: String,
  loc: { type: [Number], index: '2d' },
  created: { type: Date, default: Date.now },
  updated: { type: Date, default: Date.now },
  updator: Number
});

SiteSchema.pre("save", function (next) {
    this.updated = new Date();
    next();
});

SiteSchema.methods.findClosest = function(cb) {
    return this.model('Site').find({
        loc: { $nearSphere : this.loc },
        _id: { $ne : this._id }
    }).limit(1).exec(cb);
}

mongoose.model("Site", SiteSchema);
```

论文里介绍也都是结构化的查询语言，但都没有 JSON 来得简单直观。

系统架构
--------

（略）