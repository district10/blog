---
title: Git Issues 的爬取和展示以及用一个 repo 来备份和同步
date: 2016-07-16
keywords:
tags:
...

Git Issues 的爬取和展示以及用一个 repo 来备份和同步
==========

参考文档：[Issues | GitHub Developer Guide](https://developer.github.com/v3/issues/)。

虽然刚才试了用 jQuery 和 curl 一起浏览器就能很好的获得数据，
但我还是要用 C++ 来写这个程序。计划：

-   用 Boost Asio 来处理网络；
-   用 rapidjson 来处理 json 输出；
-   输出为
    +   yaml 数据（然后可以用 pandoc 的 templates 来处理成 html）
    +   json 数据（直接方便网页加载）

这是 craw 的部分。

因为 api 里面还可以 create issue、更新 issue，所以我想再弄一个
本地保存一份文本，可以用一个客户端载入显示 issues。并且能够进行修改和
提交修改。

下面是我的一点测试。基本数据这边已经没啥好弄的了。

`GET /repos/:owner/:repo/issues`

`var x;$.get('https://api.github.com/repos/district10/blog/issues', function(result){x=result;}); JSON.stringify( x[0] );`

:   ```json
    {
        "url": "https://api.github.com/repos/district10/blog/issues/7",
        "labels_url": "https://api.github.com/repos/district10/blog/issues/7/labels{/name}",
        "comments_url": "https://api.github.com/repos/district10/blog/issues/7/comments",
        "html_url": "https://github.com/district10/blog/issues/7",
        "title": "Windows 上实现 Linux 的【按住 Alt 拖动窗口】的实用功能",
        "user": {
            "login": "district10",
            "avatar_url": "https://avatars.githubusercontent.com/u/5262037?v=3",
            "html_url": "https://github.com/district10",
        },
        "labels": [
            {
                "url": "https://api.github.com/repos/district10/blog/labels/fix",
                "name": "fix",
                "color": "9ddcff"
            },
            {
                "url": "https://api.github.com/repos/district10/blog/labels/windows",
                "name": "windows",
                "color": "1d76db"
            }
        ],
        "comments": 0,
        "created_at": "2016-07-15T09:57:00Z",
        "updated_at": "2016-07-15T09:57:27Z",
        "state": "open",
        "closed_at": null,
        "body": "我已经...\r\n\r\n..."
    }
    ```

`https://api.github.com/repos/district10/blog/issues/7/labels`

:   ```json
    [
      {
        "url": "https://api.github.com/repos/district10/blog/labels/fix",
        "name": "fix",
        "color": "9ddcff"
      },
      {
        "url": "https://api.github.com/repos/district10/blog/labels/windows",
        "name": "windows",
        "color": "1d76db"
      }
    ]
    ```

    还可以单独获取一个 label：

    `https://api.github.com/repos/district10/blog/labels/fix`

    :   ```json
        {
            "url": "https://api.github.com/repos/district10/blog/labels/fix",
            "name": "fix",
            "color": "9ddcff"
        }
        ```

`https://api.github.com/repos/district10/blog/issues/6/comments`

:   comments 是一个列表，可能为空。每个 entry 的内容主要有 url、html_url、user、
    created_at、updated_at、body：

    ```json
    [
        ...,
        {
            "url": "https://api.github.com/repos/district10/blog/issues/comments/232917307",
            "html_url": "https://github.com/district10/blog/issues/6#issuecomment-232917307",
            "user": {
                    "login": "district10",
                    "avatar_url": "https://avatars.githubusercontent.com/u/5262037?v=3",
            },
            "created_at": "2016-07-15T10:26:52Z",
            "updated_at": "2016-07-15T10:26:52Z",
            "body": "..."
        }, ...
    ]
    ```

---

[Getting Started | GitHub Developer Guide](https://developer.github.com/guides/getting-started/)

```bash
$ curl https://api.github.com/zen

Keep it logically awesome.
```

`GET /users/defunkt`


```bash
$ curl https://api.github.com/users/defunkt

{
  "login": "district10",
  "avatar_url": "https://avatars.githubusercontent.com/u/5262037?v=3",
  "url": "https://api.github.com/users/district10",
  "html_url": "https://github.com/district10",
  "followers_url": "https://api.github.com/users/district10/followers",
  "following_url": "https://api.github.com/users/district10/following{/other_user}",
  "received_events_url": "https://api.github.com/users/district10/received_events",
  "type": "User",
  "site_admin": false,
  "name": "TANG ZhiXiong (dvorak4tzx)",
  "company": "RS, WHU",
  "blog": "http://tangzhixiong.com",
  "location": "China",
  "email": null,
  "hireable": true,
  "bio": null,
  "public_repos": 124,
  "public_gists": 7,
  "followers": 31,
  "following": 187,
  "created_at": "2013-08-19T14:01:33Z",
  "updated_at": "2016-07-13T10:10:18Z"
}
```

include headers

```
$ curl -i https://api.github.com/users/defunkt

HTTP/1.1 200 OK
Server: GitHub.com
Date: Sun, 11 Nov 2012 18:43:28 GMT
Content-Type: application/json; charset=utf-8       【那必须是 application/json 啊！】
Connection: keep-alive
Status: 200 OK
ETag: "bfd85cbf23ac0b0c8a29bee02e7117c6"
X-RateLimit-Limit: 60                               【“X-”开头的都不是 http spec 里原有的，是 github 自定义的】
X-RateLimit-Remaining: 57                           【这三个“X-RateLimit”是限制一个 clien 一定时间的爬取数量】
X-RateLimit-Reset: 1352660008
X-GitHub-Media-Type: github.v3                      【media type 用来 versioning，格式是 application/vnd.github[.version].param[+json]】
Vary: Accept
Cache-Control: public, max-age=60, s-maxage=60
X-Content-Type-Options: nosniff
Content-Length: 692
Last-Modified: Tue, 30 Oct 2012 18:58:42 GMT

{
    ...
}
```

refs and see also

-   [Media Types | GitHub Developer Guide](https://developer.github.com/v3/media/)

登陆

```
curl -i -u your_username                https://api.github.com/users/defunkt
curl -i -u your_username:your_password  https://api.github.com/users/defunkt
```

[OAuth section](https://developer.github.com/guides/getting-started/#oauth)

```bash
curl -i -u your_username https://api.github.com/user
```

```bash
curl -i -u your_username -d '{"scopes": ["repo", "user"], "note": "getting-started"}' \
   https://api.github.com/authorizations

curl -i -u your_username -H "X-GitHub-OTP: your_2fa_OTP_code" \
    -d '{"scopes": ["repo", "user"], "note": "getting-started"}' \
    https://api.github.com/authorizations

curl -i -H 'Authorization: token 5199831f4dd3b79e7c5b7e0ebe75d67aa66e79d4' \
    https://api.github.com/user
```

```
curl https://api.github.com/users/district10/repos
curl https://api.github.com/orgs/whudoc/repos
curl -i "https://api.github.com/users/technoweenie/repos?type=owner"
```

```
# create a repo
curl -i -H 'Authorization: token 5199831f4dd3b79e7c5b7e0ebe75d67aa66e79d4' \
    -d '{ \
        "name": "blog", \
        "auto_init": true, \
        "private": true, \
        "gitignore_template": "nanoc" \
      }' \
    https://api.github.com/user/repos
```

哈哈哈，如此贴心。

>   Oh noes! Where did it go? Since we created the repository as private, we
>   need to authenticate in order to see it. If you're a grizzled HTTP user,
>   you might expect a 403 instead. Since we don't want to leak information
>   about private repositories, the GitHub API returns a 404 in this case, as
>   if to say "we can neither confirm nor deny the existence of this
>   repository."

Issues

```
# 个人的
curl -i -H 'Authorization: token 5199831f4dd3b79e7c5b7e0ebe75d67aa66e79d4' \
    https://api.github.com/issues                       【其实 /issues 就是 /users/:user/issues】

# 组织的
curl -i -H 'Authorization: token 5199831f4dd3b79e7c5b7e0ebe75d67aa66e79d4' \
    https://api.github.com/orgs/rails/issues            【这里 /issues 就是 /orgs/:org/issues】

# 某一个 repo 的
curl -i https://api.github.com/repos/rails/rails/issues 【/repos/:user-or-org/:repo/issues】
```

Pagination，分页。

```
$ curl -i https://api.github.com/repos/rails/rails/issues

HTTP/1.1 200 OK

...
Link: <https://api.github.com/repositories/8514/issues?page=2>; rel="next", <https://api.github.com/repositories/8514/issues?page=30>; rel="last"
...
```

```
curl -i -H 'Authorization: token 5199831f4dd3b79e7c5b7e0ebe75d67aa66e79d4' \
   -d '{ \
        "title": "New logo", \
        "body": "We should have one", \
        "labels": ["design"] \
      }' \
   https://api.github.com/repos/pengwynn/api-sandbox/issues
```

Conditional requests

[A curl tutorial using GitHub's API](https://gist.github.com/caspyin/2288960)
