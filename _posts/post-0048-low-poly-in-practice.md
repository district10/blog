% 设计领域新风潮：Low Poly 风格
% TANG ZhiXiong
% 2015-11-10


设计领域新风潮：Low Poly 风格
=============================

`这是作业`

背景材料
--------

设计行业，流行趋势瞬息万变。继拟物化、扁平化、长阴影之后，
Low Poly（“低面设计”，也叫“多边形设计”）又火速掀起了最新设计风潮。

在设计领域，多边形的复杂程度确定了最终效果的细腻程度，为了
让设计产品的外观看起来更加圆润、细腻、自然，
通常需要柔化多边形边缘、面与面之间的过渡，并增加多边形数量。
Low Poly 则大反其道，用较少的多边形抽象打造棱角分明、简约的晶格化艺术风格，
广受欢迎，一个例子便是 QQ 2015 的动态 Low Poly 登录界面背景。

![QQ 2015 登录界面][qq-login]

传统设计领域，Low Poly 图片由设计师利用 PhotoShop、Adobe Illustrator、Cinema4D 等
专业软件手工制作，不仅费时费力，而且效率低下，不能实现在线处理，应用面窄。

![Phil Klay - Breno Bitencourt 为 Esquire 杂志制作的 lowpoly 风格插画](https://d13yacurqjgara.cloudfront.net/users/2973/screenshots/2246022/pk_dribbble_1x.jpg)

从理论上，Low Poly 其实是一种多边形三角分割方法（polygon triangulation）。

三角分割方法的通常方法是德劳内三角剖分（Delaunay Triangulation）。
在数学和计算几何领域, 平面上的点集 $P$
的 Delaunay 三角化是一种三角剖分 $DT(P)$，使得在 P 中没有点
严格处于 $DT(P)$ 中任意一个三角形外接圆的内部。Delaunay 三角化最大化了
此三角剖分中三角形的最小角，换句话，此算法尽量避免出现“极瘦”的三角形。
此算法命名来源于 [Boris Delaunay]，以纪念他自 1934 年在此领域的工作。
在二维图中，判断点 $D$ 是否落在点 $A$、$B$、$C$ 的包围盒内的方法是判断一个判定矩阵的秩的正负号，即：
$$\begin{vmatrix}
A_x & A_y & A_x^2 + A_y^2 & 1\\
B_x & B_y & B_x^2 + B_y^2 & 1\\
C_x & C_y & C_x^2 + C_y^2 & 1\\
D_x & D_y & D_x^2 + D_y^2 & 1
\end{vmatrix} = \begin{vmatrix}
A_x - D_x & A_y - D_y & (A_x^2 - D_x^2) + (A_y^2 - D_y^2) \\
B_x - D_x & B_y - D_y & (B_x^2 - D_x^2) + (B_y^2 - D_y^2) \\
C_x - D_x & C_y - D_y & (C_x^2 - D_x^2) + (C_y^2 - D_y^2)
\end{vmatrix} > 0$$
如果  $A$、$B$、$C$ 在空间上是逆时针顺序，只有点 $D$ 落于三点包围盒内，判定矩阵的秩才为正。

Low Poly 与 Delaunay Triangulation 的不同在于，它不要求避免极瘦三角形的出现（也不是说不强调），而是更多强调轮廓的表达。

![Delaunay Trianguation 不能有效把握整体轮廓](http://gnat.qiniudn.com/homework/zhihu-shit-1.png)

![Low Poly 则可以有效表达出对象的“骨架”](http://gnat.qiniudn.com/homework/zhihu-shit-2.png)

从视觉上，Low Poly 的处理“有粗有精”、层次分明，极具美感，而 Delaunay Triangulation 则
“浑然一体”，没有侧重，或许在地形保持上更胜一筹，但用于设计领域则美感不足。

案例分析
--------

算法实现的 Low Poly 的案例也有不少，我选择了张雯莉的 Polyvia，
因为她的代码开源在 [GitHub](https://github.com/Ovilia/Polyvia/)，而且有很好的说明和 Demo。其 Low Poly 处理
的主要流程是：

![Polyvia 算法处理流程][phases]

也就是 1) 边缘检测 $\to$ 2) 从边缘中选择点 $\to$ 3) 利用点生成 Low Poly 多边形，最后，还要对 4)每个三角形着色。在边缘检测上，张的程序使用 WebGL 着色器加速运算，效率很高。

其中 2) 的选点策略对最终效果影响较大。另一篇论文：
[Artistic Low Poly rendering for images (Meng Gai, Guoping Wang) - Springer]
则用边缘提取产生约束边进行带约束的 Delaunay 三角化，
用 Voronoi 迭代优化顶点位置，最终效果就好一些。可以看到，对同一幅图片，
TRIGRAFF[^trigraff] 的 Delaunay 程度不够，张的 Delaunay 程度过了，
而 Gai 的效果则很完美。这都和 Vertex 点的选择有关。

[^trigraff]: 见 [Art camera TRIGRAFF：在 App Store 上的内容](https://itunes.apple.com/cn/app/art-cameratrigraff/id646603902)。

![几种效果对比][compare]

张是还利用 Three.js 做了一个在线的视频 Low Poly 处理程序，
效果也不错，地址：<http://zhangwenli.com/Polyvia/video.html>。

![在线实时视频 Low Poly 处理 （画面太单一，所以我给阿萨姆奶茶打个广告……][video]

更多示例：

![汉堡 - Polyvia](http://gnat.qiniudn.com/homework/zhihu-shit-3.png)

![煎蛋 - Polyvia](http://gnat.qiniudn.com/homework/zhihu-shit-4.png)

[qq-login]: http://gnat.qiniudn.com/homework/qq-lowpoly.png
[compare]: http://gnat.qiniudn.com/homework/compare.png
[phases]: http://gnat.qiniudn.com/homework/phases.png
[video]: http://gnat.qiniudn.com/homework/video.png
[Boris Delaunay]: https://en.wikipedia.org/wiki/Boris_Delaunay

---

Refs

#. [如何简单地把一张相片处理成低多边形 Low Poly 3D 风格效果？ - 知乎](http://www.zhihu.com/question/20875750)
#. [设计新趋势！用 PS 和 AI 打造 Low Poly 低多边形肖像](http://pcedu.pconline.com.cn/490/4906839.html)
#. [“低面建模”设计美学-20140726早读课 | 互联网早读课](http://zaodula.com/archives/8578.html)
#. [如何使用 JavaScript 生成 lowpoly 风格图像？ - 知乎](http://www.zhihu.com/question/29856775)
#. [Dribbble - Phil Klay by Breno Bitencourt](https://dribbble.com/shots/2246022-Phil-Klay)

[Artistic Low Poly rendering for images (Meng Gai, Guoping Wang) - Springer]: http://link.springer.com/article/10.1007/s00371-015-1082-2