---
title: Remote Jupyter
date: 2016-06-15
keywords:
tags:
  - ipython
  - jupyter
  - hack
---

远程使用 Jupyter Notebook （iPython Notebook）
=============================================

在深度学习框架 caffe 里，有几个很赞的教程都是用 ipython notebook 写成的，
在命令行中，cd 到 caffe 根目录，输入 `ipython notebook`{.bash} 就可以在浏览器中运行使用它们。

但不幸的是，你不能在服务器上打开 ipython notebook，然后回到自己的笔记本上输入
ip 端口进行登陆（我们实验室那配有两个 Nvidia 显卡，120 G 内存的服务器也不能总自己占着阿是不是……）。
如果看过官方的文档，你发现其实可以把服务公开给其他电脑使用，不过很麻烦。

这里有一个更简单的解决方案，【端口映射】。步骤如下：

#.  在服务器上，`ipython notebook --no-browser --port=8888`{.bash} 在 8888 端口打开 notebook 服务；
#.  用 ssh 连接到服务器，并把服务器的端口接通到一个公共的端口：
    `ssh -NfL localhost:8000:localhost:8888 tzx@192.168.1.106`{.bash}
    这里的 `tzx@192.168.1.106` 是远程服务器（的 ip 地址）和用户名（tzx），格式为 `<用户名>@<主机地址>`；
#.  然后就可以在本地打开 `localhost:8000` 就可以使用远程的 notebook。

Why it works? -> `man ssh`

:   ```
    -N
            Do not execute a remote command.
            This is useful for just forwarding ports (protocol version 2 only).

    -f
            Requests ssh to go to background just before command execution.
            This is useful if ssh is going to ask for passwords or passphrases,
            but the user wants it in the background.  This implies `-n`.
            The recommended way to start X11 programs at a remote site is with
            something like `ssh -f host xterm`.

            If the ExitOnForwardFailure configuration option is set to “yes”,
            then a client started with -f will wait for all remote port
            forwards to be successfully established before placing itself in
            the background.

    -L [bind_address:]port:host:hostport
            Specifies that the given port on the local (client) host is to be
            forwarded to the given host and port on the remote side.  This
            works by allocating a socket to listen to port on the local side,
            optionally bound to the specified bind_address.  Whenever a
            connection is made to this port, the connection is forwarded over
            the secure channel, and a connection is made to host port hostport
            from the remote machine.  Port forwardings can also be specified in
            the configuration file.  IPv6 addresses can be specified by
            enclosing the address in square brackets.  Only the superuser can
            forward privileged ports.  By default, the local port is bound in
            accordance with the GatewayPorts setting.  However, an explicit
            bind_address may be used to bind the connection to a specific
            address.  The bind_address of “localhost” indicates that the
            listening port be bound for local use only, while an empty address
            or ‘*’ indicates that the port should be available from all
            interfaces.
    ```

refs and see also

-   [Coderwall | Remote Access to IPython Notebooks via SSH](https://coderwall.com/p/ohk6cg/remote-access-to-ipython-notebooks-via-ssh)
-   [SSH/OpenSSH/PortForwarding - Community Help Wiki](https://help.ubuntu.com/community/SSH/OpenSSH/PortForwarding)
