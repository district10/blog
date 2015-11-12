% 桥梁模型贴纹理文档
% TANG ZhiXiong
% 2015-11-08


桥梁模型贴纹理文档
==================

概述
----

长沙桥梁裂缝检测项目需要将处理后的桥底影像、裂缝纹理贴到桥梁模型上，用于交互式展示。

需求
----

程序独立可运行，数据存储在远端服务器上。登录后可以编辑桥梁模型、裂缝纹理和贴合方式。

设计
----

桥梁模型贴纹理（`btSystem`）项目，主要分为客户端（`btClient`）和服务端（`btServer`）。

用户与使用环境、开发者与生产环境

:   用户
      ~ 不需要专业技能，能对桥梁模型和纹理进行简单的浏览、编辑。
    
    使用环境
      ~ 适用于但不限于 Windows x64 操作系统^[或可提供更为方便的 Web 访问方式。]
    
    开发者
      ~ 运用专业技能为用户提供简单实用的产品。

    生产环境
      ~ Windows x64 操作系统 + [CMake] + [Qt 4.8.6] + [OpenSceneGraph 3.4.0]

[CMake]: https://cmake.org/
[Qt 4.8.6]: http://mirrors.ustc.edu.cn/qtproject/archive/qt/4.8/4.8.6/
[OpenSceneGraph 3.4.0]: http://www.openscenegraph.org/

功能点

:   #. 三维场景显示
    #. 二维纹理显示
    #. 三维/二维联动和互操作


规范
----

* 参考 Cloud Compare，相关的类用 `bt`{.cpp}（bridge texture）开头，如纹理编辑模块的类名为 `class btTextureEditor`{.cpp}
* 文件名为 `btTextureEditor.h`，`btTextureEditor.cpp`，`btTextureEditor.ui`，UI 文件里面的类为 `btTextureEditor`，应该能用 `Ui_btTextureEditor` 和 `Ui::btTextureEditor` 访问
* 界面分离，单独测试

Element | Example
------- | -------
Class   | `ccMyClass`
File | `ccMyClass.h` and `ccMyClass.cpp`
Attribute/variable | `myAttribute`
Static attribute/variable | `s_myAttribute`
Method | `getMethod()`
Static method | `GetMethod()`
Structure | `myStruct`
Enumerator | `CC_MY_ENUMERATOR`
Macro | `MACRO_myMethod`
Const | `MY_CONSTANT`
Const (#define) | `MY_CONSTANT`

架构
----

主 UI 和各部分 UI 分离。大致如下：

* btMainWindow（主界面）
    + btLogger（信息记录和打印输出）
    + btTextureEditor（二维纹理编辑）
    + btExplorer（模型和纹理浏览器）
    + 注：三维显示部分还没有完全分离

各部分都是分离的。可以独立完善，然后以 dock 的形式整合到 btMainWindow 中。

TODO
----

要做

:   * XML 工程化（桥梁的各个部分、纹理和 Pose，相应的 UI）
    * OpenGL 相关操作，四个视图以及各自视图下的操作并实现视角的切换
    * 二维纹理的交互操作
    * 模型 treeView