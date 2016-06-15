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

ipython notebook 是一个便于使用的浏览器内 python 交互界面。现在改名为 Jupyter。

在命令行下输入 `ipython notebook`{.bash} 就可以打开当前文件夹，下面的 `*.ipynb`
就是一个 ipython 笔记本。

但不幸的是，你不能在服务器上打开 ipython notebook，然后回到自己的笔记本上输入
ip 端口进行登陆。如果看过官方的文档，你发现其实可以把服务公开给其他电脑使用，不过
很麻烦。

这里有一个更简单的解决方案：

-   在服务器上，`ipython notebook --no-browser --port=8889` 在 8889 端口打开 notebook 服务
-   用 ssh 连接到服务器，并把服务器的端口接通到一个公共的端口：`ssh -N -f -L localhost:8888:localhost:8889 tzx@192.168.1.106`
    这里的 `tzx@192.168.1.106` 是远程服务器和用户名
-   然后就可以在本地打开 `localhost:8888` 连接到 notebook 里了

refs and see also

  - [Coderwall | Remote Access to IPython Notebooks via SSH](https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh)
  - [SSH/OpenSSH/PortForwarding - Community Help Wiki](https://help.ubuntu.com/community/SSH/OpenSSH/PortForwarding)
