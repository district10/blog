---
title: Remote Jupyter
date: 2016-06-15
keywords:
    - ipython notebook
    - jupyter notebook
    - remote jupyter notebook
    - remote ipython notebook
tags:
    - ipython notebook
    - jupyter notebook
    - remote jupyter notebook
    - remote ipython notebook
...

远程使用 Jupyter Notebook （iPython Notebook）
=============================================

在深度学习框架 caffe 里，有几个很赞的教程都是用 ipython notebook 写成的，
在命令行中，cd 到 caffe 根目录，输入 `ipython notebook`{.bash} 就可以在浏览器中运行使用它们。

但不幸的是，你不能在服务器上打开 ipython notebook，然后回到自己的笔记本上输入
ip 端口进行登陆（我们实验室那配有两个 Nvidia 显卡，120 G 内存的服务器也不能总自己占着阿是不是……）。
如果看过官方的文档，你发现其实可以把服务公开给其他电脑使用，不过很麻烦。

这里有一个更简单的解决方案，【端口映射】。步骤如下：

-   在服务器上，`ipython notebook --no-browser --port=8888` 在 8888 端口打开 notebook 服务；
-   用 ssh 连接到服务器，并把服务器的端口接通到一个公共的端口：
    `ssh -NfL localhost:8000:localhost:8888 tzx@192.168.1.106`
    这里的 `tzx@192.168.1.106` 是远程服务器（的 ip 地址）和用户名（tzx），格式为 `<用户名>@<主机地址>`；
-   然后就可以在本地打开 `localhost:8000` 就可以使用远程的 notebook。

refs and see also

  - [Coderwall | Remote Access to IPython Notebooks via SSH](https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh)
  - [SSH/OpenSSH/PortForwarding - Community Help Wiki](https://help.ubuntu.com/community/SSH/OpenSSH/PortForwarding)
