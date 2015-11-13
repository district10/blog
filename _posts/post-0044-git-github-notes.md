% Git、GitHub 和 Windows
% TANG ZhiXiong
% 2014-08-10

Windows 上配置 Git
==================

GitHub 是什么
-------------

* [GitHub 是怎样一个网站][github-baidu]：一个程序托管网站，一个社会化编程平台（Social Coding）
* GitHub 使用 Git 版本控制，Git 作为一个版本控制工具有什么特点**：
    + Git 是目前世界上最先进的分布式版本控制系统（没有之一）。
 	+ 特点是高端大气上档次！（[廖雪峰语][liaoxuefeng-git]）
* GitHub 对于程序员的意义**：
    + 你要知道 GitHub 被中国的防火长城封锁过几次，在多人联名抗议下才解锁。李开复也发博声援：
    + ![GitHub is blocked by GFW][github-blocked]
* GitHub 的竞争对手**：
    + 国外的 BitBucket，以及
    + 中国的 GitHub 克隆版 GitCafe
* 现在请注册一个 GitHub 账户（必须的），有账户的请登录

### Git 常用流程

* 详细戳 Git 教程：[廖雪峰 Git 教程][git-liaoxuefeng]，或者 [我的 ProGIT 笔记][pro-git-notes]
* 简单地说 Git 记录了文档的状态和状态间的变动，所有记录项分为三个状态：
    + Modified（修改了）
	+ Staged（提交了）
	+ Committed（提交确认了）。
* Git 命令分为三个部分：`git` + `命令` + `参数`等，不如：
    + `git clone url`{.bash} 从 url（需要合法的 git repo 才行） 克隆一个副本到本地当前目录
	+ `git commit -m "message"` 把修改提交并记录
* 一个通常的 Git 流程是：
    + `git clone git@github.com:district10/new-repo.git`{.bash}
	    - 把一个云端 Repo 复制下来
		- 复制别人的 Repo 用 HTTPS 协议，复制自己的 Repo 用 GIT 协议，直接在本地创建一个 Git Repo 则使用 `git init`
		- 一个 Git Repo 有一些文档来记录变化，他们是隐藏的。
    + `git add -A`{.bash}
	    - 在每次修改后，修改的文档的状态就从 Clean（Committed） 变成 Modified
		- 使用这个命令把所有内容提交，状态变成 Staged
    + `git commit -m "提交记录"`
	    - 把修改 commit，比如：”修正了一个拼写错误“（Fixed Typo），但这时候只是本地修改好了，云端（GitHub 端）没有同步。
    + `git push`
	    - 把修改同步到云端，最简单地方式就是 `git push`{.bash}
		- 多人合作的时候，每次先把本地修改 Commit，再 Push 到 云端。再把别人的修改 `git pull` 下来。

### 使用 GitHub 的前提以及一些常识

* 联网的电脑
* 网页登入（在网页上也可以很方便的查看别人代码，克隆别人的 Repo）
* 控制台 SSH 连接（用 SSH 登入方便地同步代码，版本控制）
* 最好学习一下 Markdown 的使用
    + GitHub 上的 README 文档很多都是用 Markdown 写成（以 `.md` 结尾的文件）
	+ 学习 Markdown 可参考我的博客：[Markdown 简明教程][markdown]
* 文档保存时编码请使用 【UTF-8 无 BOM 格式编码】而不是 Windows 默认的 【ANSI 格式编码】，在 Notepad++ 里如下设置：
    + ![Notepad++ & UTF-8 encoding][ansi-utf8]

GitHub 教程：Step by Step
-------------------------

Linux 用户，直接敲命令，一行搞定：`apt-get install git`{.bash}

Windows 的话……

### 下载 Git for Windows

Git 需要安装使用，到 [Git Scm][git-scm] 下载 Windows 版本：Git for Windows。
因下载需要翻墙，这里提供一个备份：[Git-1.9.5][git-archive]。

### 安装 Git for Windows

【1】 双击如下图标（【右键 - 以管理员身份运行】响应更快），开始安装

![git for windows][git-for-windows]

【2】 下一步，同意 GNU General Public License

【3】 选择组件，把 `Git Bash Here` 和 `Git GUI Here` 注册到注册表

![git bash][git-setup-a]

【4】 选择 Git Bash，Bash 是一种命令行

![git bash][git-setup-b]

【5】 选择 Git 换行符工作方式（Windows，Unix/Linux，Mac OS 的换行符各不相同）

![newline][git-setup-c]

【6】 安装完成，在资源管理器里右键出现了 Git Bash 和 Git GUI 选项

![git bash & git gui][git-bash-gui]

### 使用 Git Bash

【1】 打开 Git Bash

在某一文件夹下右键单击打开 Git Bash，这是一个命令行环境，就像 Windows 下的 CMD，PowerShell 或者 Linux 下的 Bash，Zsh

【2】 Hello Git Bash

试着输入，`echo Hello Git Bash`{.bash}，回车，就有：

![hello world][git-hello]

顺便把自己的用户名和邮箱配置一下：（把用户名和邮箱改成自己 GitHub 账号对应的用户名邮箱）
 
```bash
git config --global user.name "district10"
git config --global user.email "gnat_tang@yeah.net"
```

【3】 克隆一个 Github Repository

克隆（Clone）就是把代码复制到本地，到 GitHub 上找个 Repo，比如：https://github.com/alols/xcape

在 Git Bash 里输入 `git clone https://github.com/alols/xcape`，回车，就有：

![git clone][git-clone-https]

【4】 配置 SSH

首先打开 Git Bash（不论在哪个文件夹都行），然后输入 `cd ~/.ssh`{.bash} 把目录跳转到
自己用户的 `.ssh` 目录下；（如果失败，则输入 `cd ~ && mkdir .ssh && cd .ssh`{.bash}）

输入 `ls`{.bash} （打印目录）应该输出为空；

输入 `ssh-keygen.exe -t rsa -C "your-email"`{.bash} （换成你的邮箱），回车，有：

![ssh-keygen][gen-ssh-a]

等待你输入目录，直接使用默认的，回车即可；

![][gen-ssh-b]

等待你输入密码，可以不设置（方便自己），回车两次即可；

然后 SSH 密钥公钥就生成好了，用 ls 看一下（输入 `ls`{.bash})，查看 生成的公钥，并拷贝到剪贴板：

![][gen-ssh-c]

到 Github 里设置 SSH，如下：

【Step 1】

![][gen-ssh-d]

【Step 2】

![][gen-ssh-e]

保存好就可以了。

### 编辑器选择

Geek 的编辑器有 Emacs，Vim，但是推荐大家使用 Notepad++（尤其是在 Windows 上），这个编辑器简单好用。而且有便携版，解压即可使用。

这里提供一个 Portable 版本下载：http://download.tuxfamily.org/notepadplus/6.6.8/npp.6.6.8.bin.7z

[git-scm]: http://www.git-scm.com/downloads
[git-archive]: http://gnat.qiniudn.com/Git-1.9.5-preview20150319.exe
[git-for-windows]: http://whudoc.qiniudn.com/github-guide/img/git-for-windows.png
[git-setup-a]: http://whudoc.qiniudn.com/github-guide/img/git-setup-components.png
[git-setup-b]: http://whudoc.qiniudn.com/github-guide/img/git-setup-gitbash.png
[git-setup-c]: http://whudoc.qiniudn.com/github-guide/img/git-setup-lineendings.png
[git-bash-gui]: http://whudoc.qiniudn.com/github-guide/img/gitbash-gitgui.png
[git-hello]: http://whudoc.qiniudn.com/github-guide/img/git-hello.png
[git-clone-https]: http://whudoc.qiniudn.com/github-guide/img/git-clone-https.png
[gen-ssh-a]: http://whudoc.qiniudn.com/img/gen-ssh-a.png
[gen-ssh-b]: http://whudoc.qiniudn.com/img/gen-ssh-b.png
[gen-ssh-c]: http://whudoc.qiniudn.com/img/gen-ssh-c.png
[gen-ssh-d]: http://whudoc.qiniudn.com/img/gen-ssh-d.png
[gen-ssh-e]: http://whudoc.qiniudn.com/img/gen-ssh-e.png

在 GitHub 上新建一个 Repo
-------------------------

### 【1】

首先去 GitHub 主页 https://github.com ，在右上角点击 New Repository

![new repository][new-repo-a]

### 【2】

然后输入新 Repo 的名称，输入 Repo 说明，选择 Public（Private 要收费），
勾选生成 `README` 文档，选择一个 `.gitignore` 文件（也可不选），
选择一个协议，这里我选了 `GPL v3`，整个如下：

![][new-repo-b]

这样，就在 GitHub 上新建了一个 Repo，如下：

![][new-repo-c]

### 【3】

然后把这个 Repo 用 Git 克隆下来，先到如上图右下角，复制 SSH 链接：

`git@github.com:district10/new-repo.git`（复制自己的 Repo 用 SSH，别人的用 HTTPS）

然后到本地目录，比如这个 `github` 文件夹下，右键打开 Git Bash，输入

```bash
git clone git@github.com:district10/new-repo.git
```

如图：

![][new-repo-d]

![][new-repo-e]

克隆好后当前文件夹下就有了 `new-repo` 文件夹，如图：

![][new-repo-f]

### 【4】

进入文件夹，用 Notepad++ 打开 `README.md` 文件：

![][new-repo-g]

简单地修改，添加一行 “【这是新入的一行。来自 Notepad++】”：

![][new-repo-h]

然后在 `new-repo` 文件夹打开 Git Bash 提交修改并 Push 到 GitHub：

![][new-repo-i]

再到自己的 GitHub 上，查看，发现修改已经提交上去了：

![][new-repo-j]

### 【完】

这就是在 GitHub 上新建一个 Repo 的过程。以后修改之后，再

```bash
git add -A # 与 git add README.md 不同的是，这个命令一次添加所有修改了的文档
git commit -m "Msg"
git push
```

即可把代码同步到 GitHub。Git 在编写代码时可以很好的控制版本，深入的学习，可以参考 [最好的 Git 进阶材料][progit-learn-more]

[new-repo-a]: http://whudoc.qiniudn.com/github-guide/img/new-repo-a.png
[new-repo-b]: http://whudoc.qiniudn.com/github-guide/img/new-repo-b.png
[new-repo-c]: http://whudoc.qiniudn.com/github-guide/img/new-repo-c.png
[new-repo-d]: http://whudoc.qiniudn.com/github-guide/img/new-repo-d.png
[new-repo-e]: http://whudoc.qiniudn.com/github-guide/img/new-repo-e.png
[new-repo-f]: http://whudoc.qiniudn.com/github-guide/img/new-repo-f.png
[new-repo-g]: http://whudoc.qiniudn.com/github-guide/img/new-repo-g.png
[new-repo-h]: http://whudoc.qiniudn.com/github-guide/img/new-repo-h.png
[new-repo-i]: http://whudoc.qiniudn.com/github-guide/img/new-repo-i.png
[new-repo-j]: http://whudoc.qiniudn.com/github-guide/img/new-repo-j.png
[progit-learn-more]: http://book.douban.com/review/6465637/

附录
----

### 为什么要学习 Git

* XDite 的博文：[有效提升大學生競爭力 -- 用 Git Pull Request 收作業][git-homework]

### 文档撰写与 Coding 规范

* [写博客，撰写文档通用规范][convensions-writing]
* [Coding 规范][convensions-coding]

#### 如有疑问

如有疑问请到 Issue 提问：

![][how-to-issues]

[git-homework]: http://blog.xdite.net/posts/2014/06/18/git-pull-request-homework
[convensions-writing]: https://gitcafe.com/Guide-of-Coding/general-convensions
[convensions-coding]: https://gitcafe.com/Guide-of-Coding/coding-conventions
[how-to-issues]: http://whudoc.qiniudn.com/github-guide/img/issues.png
[github-baidu]: http://baike.baidu.com/view/3366456.htm
[git-liaoxuefeng]: http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000
[pro-git-notes]: http://jianshu.io/p/db84ee45f16c
[liaoxuefeng-git]: http://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000/001373962845513aefd77a99f4145f0a2c7a7ca057e7570000
[github-blocked]: http://whudoc.qiniudn.com/github-guide/img/github-blocked.png
[git-windows]: https://github.com/whudoc/github-guide/blob/master/%E9%85%8D%E7%BD%AE-Windows.md
[new-repo-guide]: https://github.com/whudoc/github-guide/blob/master/%E6%96%B0%E5%BB%BA-Repo.md
[markdown]: http://jianshu.io/p/7bd23251da0a
[ansi-utf8]:  http://whudoc.qiniudn.com/github-guide/img/ansi-utf8.png

---

Refs

#. [whudoc/github-guide](https://github.com/whudoc/github-guide)