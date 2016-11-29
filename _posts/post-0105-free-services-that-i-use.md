---
title: Free Services That I Use
date: 2016-05-23
keywords:
tags:
    - tool
    - presentation
---

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片1.PNG)

I don't want to share my research work, instead, I'll give an introduction to
how I organize my scientific life. So, it's meta-research.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片2.PNG)

How to organize your scientific life? The simple answer is, by blog posting and note taking.
I read LIU WeiPeng's *Dark Time* years ago, there's an article annalysing why
you should start writing blogs right now. It's convincing, so I began blog posting.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片3.PNG)

My blog is personal project, started last september, evolving all the time, now
becomes an integrated blog posting system. The three main parts are github,
travis-ci, and qiniu. They play different roles in the system and combined
together provide me great convenience for tracking my ideas, developing my
ideas, and sharing my ideas.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片4.PNG)

GitHub, offiers a code-hosting service. You can see my blog source code here,
and my activities. I made most of the contributions in winter, that's why
there is a peak.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片5.PNG)

GitHub the website is easy to use, but I recommend you to use the command-line
interface.  Instead of the official GitHub for windows. After you know how to
clone a repo, how to commit a change, and how to push your commits, you can
have fun on GitHub.

Then you can write your blogs in markdown, and host all your staffs on GitHub.

<div class="tzx-drawer" shy>
See more

:   Version Control

    :   ![`git`{.bash} as the version control tool](http://whudoc.qiniudn.com/2016/2016-05-23_10-59-56.png)

        refs and see also

          - [Pretty Diff | 听歌学英语](http://tangzx.qiniudn.com/post-0062-pretty-diff.html)
          - [lyrics](http://whudoc.qiniudn.com/2016/lyrics.html)

    Markdown, Fork, PR

    :   The bcp utility is a tool for extracting subsets of Boost, it's useful for
        Boost authors who want to distribute their library separately from Boost,
        and for Boost users who want to distribute a subset of Boost with their
        application.

        refs and see also

          - [district10/bcp: Standalone bcp. Boost.org bcp module, and a CMakeLists.txt for lazy people.](https://github.com/district10/bcp)
          - [bcp，只为boost库瘦身 - iqfifty的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/iqfifty/article/details/8997909)
</div>

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片6.PNG)

Travis-ci is a build system. You should write a `.travis.yml` (dot travis dot
yamal file), to configure how travis process your blog posts. if you know
Linux, it's straightforward and simple.  It's just several shell scripts. I use
travis to convert my markdown file to html, then upload to qiniu.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片7.PNG)

Qiniu is a CDN, it offers 10 Gigabytes of storage for free. And also several
command-line tools for file uploading.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片8.PNG)

When I commit some changes to my repo, travis will be notified (there's a hook).
It'll build my website under my instructions and upload to qiniu, then you
can visit it, at <http://tangzx.qiniudn.com>.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片9.PNG)

So, there are two hosting services: GitHub to store my sources files, Qiniu to
store my website html files.  And one temporary build system, Ubuntu, which
helps me automate the conversion from markdown file to htmls.

---

![](http://whudoc.qiniudn.com/2016/sci/幻灯片10.PNG)

For simplicity, the details are not coverred here. You can visit
<http://goto.tangzhixiong.com/20160524> for a closer look.

---

build script: (<https://github.com/district10/blog/blob/master/.travis.yml>)

:   ```yaml
    language: c
    sudo: required
    before_install:
      - mkdir -p ~/.ssh
        # 解密密钥文件，加到 shh 里，用于把代码备份到 coding.net
      - openssl aes-256-cbc -K $encrypted_0f64f26238f6_key -iv $encrypted_0f64f26238f6_iv -in id_rsa.enc -out ~/.ssh/id_rsa -d
      - chmod 600 ~/.ssh/id_rsa
      - eval "$(ssh-agent -s)"
      - ssh-add ~/.ssh/id_rsa
      - cp ssh_config ~/.ssh/config
        # git 用户信息的设置
      - git config --global user.email "dvorak4tzx@qq.com"
      - git config --global user.name "TANG ZhiXiong"
    install:
        # 安装 pandoc 来处理 markdown，安装 qrsync 来上载到七牛云
      - cd ~
      - wget https://github.com/jgm/pandoc/releases/download/1.17/pandoc-1.17-1-amd64.deb
      - sudo dpkg -i pandoc*.deb
      - wget http://whudoc.qiniudn.com/2016/qrsync.tar.gz
      - tar xfz qrsync.tar.gz
      - chmod +x qrsync
      - sudo cp qrsync /bin
      - git clone https://github.com/district10/aha.git
      - cd aha && make && sudo make install
    script:
      - cd ~/build/district10/blog;
        # 载入七牛的私钥公钥（AK，SK）
      - cat conf.json.in | sed -e "s/QiNiuAK/$QiNiuAK/" | sed -e "s/QiNiuSK/$QiNiuSK/" > conf.json
        # make the website
      - make
      - make sitemap
        # 上载到七牛
      - make qiniu
    after_success:
        # 同步到 coding.net
      - cd ~/build/district10/blog; git reset --hard HEAD;
      - make
      - make sitemap
      - cd publish
      - git init; git add -A; git commit -m "pushing to coding:coding-pages, lazy me @ `date`"
      - git remote add origin git@git.coding.net:dvorak4tzx/dvorak4tzx.git
      - git push -u origin HEAD:coding-pages --force
      - cd ..; rm -Rf publish; git reset --hard HEAD;
      - rm -Rf .git
      - git init; git add -A; git commit -m "pushing to coding:master, lazy me @ `date`"
      - git remote add origin git@git.coding.net:dvorak4tzx/dvorak4tzx.git
      - git push -u origin HEAD:master --force
    ```

说明：

-   GitHub 的 repo 页面：[district10/blog: Simplest Pandoc Markdown Blog, evolving to be my PIM. | 以此打理自己的生活。](https://github.com/district10/blog)
-   Travis-ci 的 build 页面：[district10/blog - Travis CI](https://travis-ci.org/district10/blog)
-   代码会在国内备份：[dvorak4tzx - dvorak4tzx - Coding.net](https://coding.net/u/dvorak4tzx/p/dvorak4tzx/git)，
    其中 master branch 是源码，coding-pages branch 是网页文件。
