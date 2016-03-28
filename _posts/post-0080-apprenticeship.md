---
title: 软件开发者路线图
date: 2015-12-18
key-words:
    - prenticeship
tags:
    - prenticeship
    - programming
    - philosophy
...

软件开发者路线图
================

[软件开发者路线图 (豆瓣)](http://book.douban.com/subject/4924164/)


> 我不会告诉你这本书讲了如何应对“国民党反动统治”。
>
> 和其他笔记不同的是，这篇有更大比例的 remix^[因为 PDF 不能拷贝啊……]。

Oreilly 公司的书中配套的代码你可以使用无需许可。将大量代码合并到你的产品文档中则需要获取许可，<mailto:permissons@oreilly.com>。

- Craft, craftsmanship, apprentice, journeyman, master
- Dave: First language: Perl, *Programming Perl*, at age 26.
- Internal locus (所在地) of control.

## 空杯心态^[有点类似张五常的“假设大师是对的”。]

系上“白色腰带”。

### 入门语言

- **feedback loop**：能够看到效果，所以脚本语言更容易上手（它们 fail fast），irb
  （Ruby），erb（Erlang），Firebug（Firefox），或者自己弄个空壳：

    ```java
    public class Main {
        public static void main(String[] args) throws Exception {
            System.out.prinln(/* things goes here */);
        }
    }
    ```
- Test-driven Development 也很重要，可以让你很快熟悉框架。
- 社区经验的重要性：找人帮助，找社区。
- Sandbox 很重要：可以在里面练习。
- 多体验，塑造自己的思想形态（The Shape of Your Mind），从面向对象到函数式，从动态语言到静态语言都要涉猎，从服务器到用户界面设计。
- 找一本 Specification 来读。现在很多源码都可以获取到比如 Linus Torvalds 的 git 源码。
- 记住，Stay hungry，Stay foolish，用 Yoda 的话说就是：

    > You must unlearn what you have learned.

- 放下经验，避免“用各种语言写 Fortran”，你要知道 idiomatic 的写法，以及它的优点。
- 寻找一个有激情的团队。
- 看看自己的 CV（Curriculum Vitae），是自己吗？
- 不要害怕暴露无知。

## 走过漫漫长路

- 当你觉得自己的 Perl 很好的时候，去看看那些真正的 Perl hackers。看看 Torvalds 和 Knuth。
- 作为技师，挨饿是一种失败。艺术和技术结合才是技艺，“有用”很重要。
- 持续动力：不管你编程的动机是什么，你总能找到让自己振奋的点来补充鸡血。
- Paul Graham：快乐的事情不会让你感到累。快乐的事情能做得更好。
- 但要避免“金锁”，不要在局部最高点沾沾自喜！Java 高手还要去学 Ruby、Perl。
- Low Pain Threshould：做你喜欢的事，钱自然会来。
- 培养激情：找同道中人，写博客，看博客。

## 准确的自我评估

- Worst musician in the band。宁为狮尾，不为狐头。
- Edgar Dijkstra 这样的在异国甚至去世的人也能成为你的灯塔，你的指导者，你的“同道中人”。
- 密切交往：和你的同道中人要花点时间交流。让他帮你点评自己的工作。

## 恒久学习

- 学会那些本来不会做的事情，常常比去做那些已经会做的事情更加重要。
- 不断实践。
- Dave Thomas 的“路数”（Kata）。
- “武馆”（dojo）
- 看一些经典老书，因为这些书都是关乎基础，而不是当前的流行。
- Linus 的玩具是 Linux，你的玩具呢？
- “结对编程”（Pair programming）。
- Bill Gates：一下抓住 30 页代码核心的程序员才是更好的程序员。
- 挑选一个算法精深的开源项目，如 Git、Mercurial，浏览他们，记下自己觉得新奇的算
  法、数据结构和设计理念，写一篇博客描述项目的架构，
- 着重突出自己学道德新理念。设想自己可能用到它们的场合。
- 为 GDB 写一个场景案例，为他的每个功能做一个描述，突出其意义。
- 写一个 Wiki，写一个博客，这个过程会让你了解 HTTP 等相关知识。
- 有一个比你能力更大的阅读列表。
- 分享所学，做了学徒一段时间后，你也成了别人的知识源。
- Stop energy，你得知道什么时候停下来。
- Systems thinker 的 reinforcing feedback 和 balancing feedback。
- 你的学习技能强了你的武功，但你的失败和弱点仍在。
- 学会失败。

## 安排你的课程

- 做一个不是靠成绩，而是知识激励的人。
- 还是阅读列表！你可以从一些好书的参考书目中获取。
- 坚持阅读。
- The Psychology of Computer Programming
- 需要熟悉调试器（GDB、PDB、RDB），Wire-level 调试器（如 Wireshark）。除了代码，还要读 spec。
- 原始文档的重要性，去看 Roy Fielding 在他博士论文里的 REST 概念。
- 理解一句话，可能需要你探索整个上下文。
- 你的常用工具，它们怎么帮助你？
- 掌握一套工具并坚持使用，但不要拒绝接受新的更好的工具。

## 结束语

- Antonio Stradivari 工场：“你个体的非凡才能为中心”，没能好好把这些技艺传承。
- Dunning-Kruger effect，达克效应（“无意识的无能”效应）。
- 你必须明白 RegExp，HTTP 和 Unix。
- 医生 Semmelweis 是个天才，也是个疯子（这是个悲剧……）。
- 许多人拒绝改变，抵触和反对很多模式和思想，因为他们可以从现状中获得好处，可以
  待在舒适区的温水中舒（man）服（xing）洗（zi）澡（sha）。而我们可以清晰地解释
  自己的观点，不要像 Semmelweis 那样。

## 回顾模式列表

**A Different Road**

:   You have discovered that the direction you want to go is different from the
    path toward software craftsmanship.

**Be the Worst**

:   Your learning has decelerated as you’ve quickly surpassed everyone around
    you.

**Breakable Toys**

:   You work in an environment that does not allow for failure, yet you need a
    safe place to learn.

**Concrete Skills**

:   You want to work on a great development team, yet you have very little
    practical experience.

**Confront Your Ignorance**

:   You have discovered wide gaps in your knowledge, and your work requires
    that you understand these topics.

**Craft over Art**
:   You need to deliver a solution for your customer, and you can choose from a
    simpler, proven solution or take the opportunity to create something novel
    and fantastic.

**Create Feedback Loops**

:   You can't tell if you’re suffering from “unconscious incompetence.”

**Dig Deeper**

:   You have only superficial knowledge of many tools, technologies, and
    techniques and keep hitting roadblocks as you try to tackle tougher problems.

**Draw Your Own Map**

:   None of the career paths that your employer provides is a fit for you.

**Expand Your Bandwidth**

:   Your understanding of software development is narrow and focused only on
    the low-level details of what you’ve worked on in your day job.

**Expose Your Ignorance**

:   You have discovered wide gaps in your knowledge and are afraid that people
    will think that you don’t know what you’re doing.

**Familiar Tools**

:   You are finding it difficult to estimate your work because your toolset and
    technology stack are changing so rapidly.

**Find Mentors**

:   You find that you’re spending a lot of time reinventing wheels and hitting
    roadblocks, but you aren’t sure where to turn for guidance.

**Kindred Spirits**

:   You find yourself stranded without mentors and in an atmosphere that seems
    at odds with your aspirations.

**Learn How You Fail**

:   Your learning skills have enhanced your successes, but your failures and
    weaknesses remain.

**Nurture Your Passion**

:   You work in an environment that stifles your passion for the craft.

**Practice, Practice, Practice**

:   The performance of your daily programming activities does not give you room
    to learn by making mistakes.

**Read Constantly**

:   There seems to be an endless stream of deeper and more fundamental concepts
    that are eluding you despite your quickly acquired proficiency.

**Reading List**

:   The number of books you need to read is increasing faster than you can read
    them.

**Record What You Learn**

:   You learn the same lessons again and again, but they never seem to stick.

**Reflect as You Work**

:   As the number of years and projects you have under your belt increases, you
    find yourself awaiting the epiphany that will magically make you“experienced.”

**Retreat into Competence**

:   You feel overwhelmed as you are faced with the vast reaches of your
    ignorance.

**Rubbing Elbows**

:   You have the feeling that there are superior techniques and approaches to
    the craft that are eluding you.

**Share What You Learn**

:   You are frustrated that the people around you are not learning as quickly
    as you are.

**Stay in the Trenches**

:   You have been offered a promotion into a role that will pull you away from
    programming.

**Study the Classics**

:   The experienced people around you are constantly referencing concepts from
    books that they assume you have read.

**Sustainable Motivations**

:   You find yourself working in the frustrating world of ambiguously specified
    projects for customers with shifting and conflicting demands.

**Sweep the Floor**

:   You are an inexperienced developer and need to earn your team’s trust.

**The Deep End**

:   You’re beginning to fear that your career is not resting on a plateau, but
    is in fact stuck in a rut.

**The Long Road**

:   You aspire to become a master software craftsman, yet your aspiration
    conflicts with what people expect from you.

**The White Belt**

:   You are struggling to learn, because the experience you have seems to have
    somehow made it harder to acquire new skills.

**Unleash Your Enthusiasm**

:   You find yourself holding back your excitement and curiosity about software
    development in order to fit in with your team.

**Use the Source**

:   How do you find out if your work is any good given that those around you
    may not have the ability to tell good code from bad?

**Use Your Title**

:   When you introduce yourself in a professional setting, you feel you have to
    apologize or explain away the difference between your skill level and your
    job description.

**Your First Language**

:   You are familiar with a few languages, but lack fluency in any of them.
