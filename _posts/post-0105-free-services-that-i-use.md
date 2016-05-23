---
title: Free Services That I Use
date: 2016-05-23
keywords:
    - tool
tags:
    - tool
...

Free Services That I Use
========================

TOC

-   GitHub
-   Travis
-   Qiniu

## 1. GitHub

It offers all of the
distributed revision control and source code management functionality of
Git as well as adding its own features. Unlike Git, which is strictly a
command-line tool, GitHub provides a Web-based graphical interface and desktop
as well as mobile integration. It also provides access control and several
collaboration features such as bug tracking, feature requests, task management,
and wikis for every project.

![GitHub is a web-based Git repository hosting service.](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/GitHub_logo_2013_padded.svg/330px-GitHub_logo_2013_padded.svg.png)

## 1.1 Git: Version Control

-   git repository

    ```bash
    git clone <url>
    git add -A && git commit -m "fixed something, blah blah"
    git push origin master
    ```

    ![](diff picture)

    [Pretty Diff | 听歌学英语](http://tangzx.qiniudn.com/post-0062-pretty-diff.html)

    [](http://whudoc.qiniudn.com/2016/lyrics.html)

    ![](http://whudoc.qiniudn.com/2016/2016-05-23_10-59-56.png)

## 1.2 Fork, Pull Request

Markdown, Fork, PR

:   The bcp utility is a tool for extracting subsets of Boost, it's useful for
    Boost authors who want to distribute their library separately from Boost,
    and for Boost users who want to distribute a subset of Boost with their
    application.

    refs and see also

      - [district10/bcp: Standalone bcp. Boost.org bcp module, and a CMakeLists.txt for lazy people.](https://github.com/district10/bcp)
      - [bcp，只为boost库瘦身 - iqfifty的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/iqfifty/article/details/8997909)

## 1.2 repo

## GitHub The Website

![](https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Mapping_collaborative_software_on_GitHub.png/1200px-Mapping_collaborative_software_on_GitHub.png)

## 2. Travis

-   badges

Travis CI is a hosted, distributed[2] continuous integration service used to build and test software projects hosted at GitHub.[3]

Open source projects may be tested at no charge via travis-ci.org. Private projects may be tested at the same location on a fee basis. TravisPro provides custom deployments of a proprietary version on the customer's own hardware.

## 2.1 for what?
## 2.2 about yaml

## 3. Qiniu

## 4. GitHub + Travis + Qiniu -> Blog

![](https://avatars2.githubusercontent.com/u/639823?v=3&s=200)

```yaml
language: c
sudo: required
before_install:
  - mkdir -p ~/.ssh
  - openssl aes-256-cbc -K $encrypted_0f64f26238f6_key -iv $encrypted_0f64f26238f6_iv -in id_rsa.enc -out ~/.ssh/id_rsa -d
  - chmod 600 ~/.ssh/id_rsa
  - eval "$(ssh-agent -s)"
  - ssh-add ~/.ssh/id_rsa
  - cp ssh_config ~/.ssh/config
  - git config --global user.email "dvorak4tzx@qq.com"
  - git config --global user.name "TANG ZhiXiong"
install:
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
  - cat conf.json.in | sed -e "s/QiNiuAK/$QiNiuAK/" | sed -e "s/QiNiuSK/$QiNiuSK/" > conf.json
  - make
  - make sitemap
  - make qiniu
after_success:
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
