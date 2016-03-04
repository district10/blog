% Notes | 笔记
% TANG ZHiXiong
% 2015-11-18

Notes | 笔记
============

```lisp
(defun smart-open-line ()
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(global-set-key [(shift return)] 'smart-open-line)
```

```elisp
(defun prelude-open-with (arg)
  "Open visited file in default external program.

With a prefix ARG always prompt for command to use."
  (interactive "P")
  (when buffer-file-name
    (shell-command (concat
                    (cond
                     ((and (not arg) (eq system-type 'darwin)) "open")
                     ((and (not arg) (member system-type '(gnu gnu/linux gnu/kfreebsd))) "xdg-open")
                     (t (read-shell-command "Open current file with: ")))
                    " "
                    (shell-quote-argument buffer-file-name)))))
```

```elisp
(defun copy-file-name-to-clipboard ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))
```

```elisp
(defun indent-buffer ()
  "Indent the currently visited buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer ()
  "Indent a region if selected, otherwise the whole buffer."
  (interactive)
  (save-excursion
    (if (region-active-p)
        (progn
          (indent-region (region-beginning) (region-end))
          (message "Indented selected region."))
      (progn
        (indent-buffer)
        (message "Indented buffer.")))))
```

```elisp
(defun google ()
  "Google the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
         (buffer-substring (region-beginning) (region-end))
       (read-string "Google: "))))))
```

```elisp
(defun indent-defun ()
  "Indent the current defun."
  (interactive)
  (save-excursion
    (mark-defun)
    (indent-region (region-beginning) (region-end))))
```


```elisp
(electric-indent-mode +1)
```

```elisp
(global-set-key (kbd "C-c o") 'open-with)
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c g") 'google)
(global-set-key (kbd "C-M-z") 'indent-defun)
(global-set-key (kbd "C-c t") 'visit-term-buffer)
(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)

```

```elisp
(defun visit-term-buffer ()
  "Create or visit a terminal buffer."
  (interactive)
  (if (not (get-buffer "*ansi-term*"))
      (progn
        (split-window-sensibly (selected-window))
        (other-window 1)
        (ansi-term (getenv "SHELL")))
    (switch-to-buffer-other-window "*ansi-term*")))
```

```elisp
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))
```

```elisp
(require 'paren)
(setq show-paren-style 'parenthesis)
(show-paren-mode +1)
```

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-c k") 'kill-other-buffers)
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1)))

```elisp
(defun kill-other-buffers ()
  "Kill all buffers but the current one.
Don't mess with special buffers."
  (interactive)
  (dolist (buffer (buffer-list))
    (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
      (kill-buffer buffer))))
```

```elisp
(require 'dash)

(defun prelude-kill-other-buffers ()
  "Kill all buffers but the current one.
Doesn't mess with special buffers."
  (interactive)
  (-each
   (->> (buffer-list)
     (-filter #'buffer-file-name)
     (--remove (eql (current-buffer) it)))
   #'kill-buffer))
```

#. [Repeat last command - Emacs Redux](http://emacsredux.com/blog/2013/03/26/repeat-last-command/)
#. [Copy filename to the clipboard - Emacs Redux](http://emacsredux.com/blog/2013/03/27/copy-filename-to-the-clipboard/)
#. [Open file in external program - Emacs Redux](http://emacsredux.com/blog/2013/03/27/open-file-in-external-program/)
#. [Indent region or buffer - Emacs Redux](http://emacsredux.com/blog/2013/03/27/indent-region-or-buffer/)
#. [Indent defun - Emacs Redux](http://emacsredux.com/blog/2013/03/28/indent-defun/)
#. [Google - Emacs Redux](http://emacsredux.com/blog/2013/03/28/google/)
#. [Network utilities - Emacs Redux](http://emacsredux.com/blog/2013/03/28/network-utilities/)
#. [Automatic(electric) indentation - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-indentation/)
#. [Automatic(electric) character pairing - Emacs Redux](http://emacsredux.com/blog/2013/03/29/automatic-electric-character-pairing/)
#. [Terminal at your fingertips - Emacs Redux](http://emacsredux.com/blog/2013/03/29/terminal-at-your-fingertips/)
#. [Kill other buffers - Emacs Redux](http://emacsredux.com/blog/2013/03/30/kill-other-buffers/)
#. [Go back to previous window - Emacs Redux](http://emacsredux.com/blog/2013/03/30/go-back-to-previous-window/)
#. [Playing with Font Sizes - Emacs Redux](http://emacsredux.com/blog/2013/04/01/playing-with-font-sizes/)
#. [Highlight matching parentheses - Emacs Redux](http://emacsredux.com/blog/2013/04/01/highlight-matching-parentheses/)
#. [Highlight current line - Emacs Redux](http://emacsredux.com/blog/2013/04/02/highlight-current-line/)



sudo update-alternatives –config x-terminal-emulator
scrot # caputre screenshot

X-f: fullscreen

arrow keys: get focus

e, s, w

X-e: toggle
X-s: stacked
X-w: tabbed, X-left, X-right

shift r: restart i3 inplace

%s/重车,运营/运营,重车/g

%s/,超速报警//g
%s/,登录//g
g/,设备工作正常/d
g!/ACC/d

删除中文字符
:%s/\v[^\x00-\xff]+//g

 4
down vote


You could use more expressive version of substitution you employed when assigning OBJECTS

OBJECTS=$(SOURCES:%.cpp=obj/%.o)

or use a standard text transformation function

OBJECTS=$(addprefix obj/,$(SOURCES:.cpp=.o))



[dynamic_cast Operator](https://msdn.microsoft.com/en-us/library/cby9kycs.aspx)

[Casting](https://msdn.microsoft.com/en-us/library/x9wzb5es.aspx)


```cpp
// static_cast_Operator.cpp
// compile with: /LD
class B {};

class D : public B {};

void f(B* pb, D* pd) {
   D* pd2 = static_cast<D*>(pb);   // Not safe, D can have fields
                                   // and methods that are not in B.

   B* pb2 = static_cast<B*>(pd);   // Safe conversion, D always
                                   // contains all of B.
}

// static_cast_Operator_2.cpp
// compile with: /LD /GR
class B {
public:
   virtual void Test(){}
};
class D : public B {};

void f(B* pb) {
   D* pd1 = dynamic_cast<D*>(pb);
   D* pd2 = static_cast<D*>(pb);
}


// static_cast_Operator_3.cpp
// compile with: /LD /GR
typedef unsigned char BYTE;

void f() {
   char ch;
   int i = 65;
   float f = 2.5;
   double dbl;

   ch = static_cast<char>(i);   // int to char
   dbl = static_cast<double>(f);   // float to double
   i = static_cast<BYTE>(ch);
}

// dynamic_cast_1.cpp
// compile with: /c
class B { };
class C : public B { };
class D : public C { };

void f(D* pd) {
   C* pc = dynamic_cast<C*>(pd);   // ok: C is a direct base class
                                   // pc points to C subobject of pd
   B* pb = dynamic_cast<B*>(pd);   // ok: B is an indirect base class
                                   // pb points to B subobject of pd
}

// dynamic_cast_2.cpp
// compile with: /c /GR
class A {virtual void f();};
class B {virtual void f();};

void f() {
   A* pa = new A;
   B* pb = new B;
   void* pv = dynamic_cast<void*>(pa);
   // pv now points to an object of type A

   pv = dynamic_cast<void*>(pb);
   // pv now points to an object of type B
}

// dynamic_cast_3.cpp
// compile with: /c /GR
class B {virtual void f();};
class D : public B {virtual void f();};

void f() {
   B* pb = new D;   // unclear but ok
   B* pb2 = new B;

   D* pd = dynamic_cast<D*>(pb);   // ok: pb actually points to a D
   D* pd2 = dynamic_cast<D*>(pb2);   // pb2 points to a B not a D
}


```



The emoji repository has a CNAME file with the domain emoji.muan.co. It is owned by muan, whose User Pages repository has a CNAME file with the domain muan.co.

    The Project Pages site at muan.github.io/emoji redirects to muan.co/emoji and is also available at emoji.muan.co.


a type qualifier is not allowed on a static member function.

文件夹 PATH 列表
卷序列号为 00000200 BC08:BFBA
D:.
├─data
│  └─textures
├─demo
│  ├─3rdParty
│  │  └─QtPropertyBrowser
│  │      ├─canvas_typed
│  │      ├─canvas_variant
│  │      ├─decoration
│  │      ├─demo
│  │      │  └─images
│  │      ├─extension
│  │      ├─object_controller
│  │      └─simple
│  ├─btExplorerDemo
│  ├─btLoggerDemo
│  ├─btMainWindowDemo
│  ├─btTextureEditorDemo
│  ├─IODemo
│  ├─JsonReaderDemo
│  ├─ModelStructureDemo
│  ├─OSGDemo
│  ├─QtPropertyBrowserVariantDemo
│  ├─RapidJSONDemo
│  ├─SignCutterDemo
│  ├─SignTransformerDemo
│  ├─TextureEditorDemo
│  ├─TextureNotationDemo
│  └─TheBrowserDemo
├─docs
├─images
├─includes
│  ├─OSGDemo
│  └─rapidjson
│      ├─error
│      ├─internal
│      └─msinttypes
├─lib
│  ├─debug
│  └─release
├─notes
│  └─images
│      ├─deprecated
│      ├─icon
│      └─material
├─src
│  ├─3rdParty
│  ├─btGUI
│  ├─Global
│  ├─Handlers
│  ├─IO
│  ├─ModelStructure
│  ├─Parts
│  ├─QtPropertyBrowser
│  │  └─images
│  ├─SignCutter
│  ├─SignLogger
│  ├─SignTransformer
│  ├─TextureEditor
│  ├─TextureNotation
│  ├─TheBrowser
│  └─Utils
└─tryouts
    └─StackedBoxes
        └─images

'The enjoyment of one's tools is an essential ingredient of successful work.' -- Donald E. Knuth

[崔添翼 § 翼若垂天之云 › 谁能看出这是个文科生？——关于matrix67](http://cuitianyi.com/blog/%e8%b0%81%e8%83%bd%e7%9c%8b%e5%87%ba%e8%bf%99%e6%98%af%e4%b8%aa%e6%96%87%e7%a7%91%e7%94%9f%ef%bc%9f%e2%80%94%e2%80%94%e5%85%b3%e4%ba%8ematrix67/)
[把梦想“码”进现实 ——访计算机学院2013届校友崔添翼-学院动态-浙江大学计算机科学与技术学院中文站](http://www.cs.zju.edu.cn/chinese/redir.php?catalog_id=101754&object_id=133940)

Better Emacs shortcut for Neo users:

* delete last word: ESC Backspace
* get back to last word: ESC b

| Movement | Shortcut |
| :---: | :---: |
| next word | X-s(ESC) d |
| previous word | X-s(ESC) X-d(Backspace) |
| go to previous word | X-s(ESC) b |

Just in case this sounds annoying, the major advantage is that you can always get back a previous state. In most editors, undoing several changes and then accidentally typing a character would leave you 'stranded' with no way to redo what you had undone. Emacs makes this trivial. – phils


update.

/ə/和/ʌ/这两个发音，在语言学上有区别，在发音中没区别，再说一遍，麻痹没区别！！！！！！！！！！！！！

朙（míng）月拼音

[gat json](http://whudoc.qiniudn.com/gat.json)
[tag json](http://whudoc.qiniudn.com/tag.json)

you flinched!

- [豆瓣](http://www.douban.com/)
- [Complex Network Notes](file:///D:/tzx/git/blog/publish/post-0084-complex-network-notes.html)
- [Complex network - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Complex_network)
- [小波变换在图像处理分析中的应用](file:///D:/tzx/git/blog/publish/post-0077-wavelet-transform.html)
- [复杂网络 - 维基百科，自由的百科全书](http://wiki.yooooo.us/d2lraS8lRTUlQTQlOEQlRTYlOUQlODIlRTclQkQlOTElRTclQkIlOUM=)
- [学术海报 | LaTeX工作室](http://www.latexstudio.net/archives/category/tex-slides/latex-poster)
- [一个清新典雅的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4948)
- [用LaTeX重现1875年的广告样式 | LaTeX工作室](http://www.latexstudio.net/archives/4935)
- [伯尔尼高等专业学院的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4931)
- [一个清爽的beamer主题样式 | LaTeX工作室](http://www.latexstudio.net/archives/4894)
- [一个所见即所得的科学公式编辑软件–GNU TeXmacs | LaTeX工作室](http://www.latexstudio.net/archives/4876)
- [黄正华老师的课件beamer分享 | LaTeX工作室](http://www.latexstudio.net/archives/4853)
- [LaTeX技巧826:TeXLive的安装与使用-黄正华 | LaTeX工作室](http://www.latexstudio.net/archives/4816)
- [实现TeX的算法：回首编程技术的过去三十年 | LaTeX工作室](http://www.latexstudio.net/archives/4759)
- [LaTeX排版The AWK Programming Language中译本 | LaTeX工作室](http://www.latexstudio.net/archives/4736)
- [一个电子书LaTeX模板分享 | LaTeX工作室](http://www.latexstudio.net/archives/4665)
- [LaTeX排版精致的数学笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4625)
- [中国科学技术大学研究生官网为LaTeX模板正名 | LaTeX工作室](http://www.latexstudio.net/archives/4542)
- [中国科学技术大学学位与研究生教育 - 学位授予——文档下载](http://gradschool.ustc.edu.cn/ylb/material/xw/wdxz.html)
- [一个用户的LaTeX笔记 | LaTeX工作室](http://www.latexstudio.net/archives/4429)
- [Tikz绘制Android的短信息聊天界面 | LaTeX工作室](http://www.latexstudio.net/archives/4384)
- [2015 GNOME年会beamer主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/4347)
- [莲枝专栏–来作笔记吧。 | LaTeX工作室](http://www.latexstudio.net/archives/4898)
- [乌普萨拉大学的科技海报主题模板 | LaTeX工作室](http://www.latexstudio.net/archives/3012)


### 真爱其实叫牺牲—献给永远的鼬

 修罗之道是什么,它通往何方?在火影忍者中,有如此一人,他便在此道上踏歌而行.在他之后,留下了无尽之血与泪水；在他前方,只有看不见尽头的黑暗；而他红中泛黑的双瞳中,映射出了太多的死亡与破灭。

　　未来没有救赎,只有灭亡,抱此觉悟,宇智波鼬------即使在宇智波这个原本就自悲剧中诞生的家族之中也是最具悲剧色彩的男人, 背负了太多诅咒与怨恨, 在名为终结的黑色的华尔兹舞曲中艰难而孤傲的独舞.

      其实,他只是一位兄长，他只想保护自己的弟弟，就算被自己的弟弟憎恨也无所谓，就算被弟弟杀掉也无所谓。“我愚蠢的弟弟啊，如果你想杀我的话，就憎我恨我吧，不断地逃，不断地逃只是为了活着而活着，然后，等你哪一天得到了和我相同的眼睛，就来到我面前吧。”他只想让弟弟活下去，便只得噙着泪水这样冷酷的说道，在乱世之中，这是唯一可以让弟弟强大起来的办法—给予他杀死自己的目标，让他把仇恨全部发泄到自己的身上。

     其实,他只是一名忍者，忍者本来就是活在黑暗中的，鼬更把这一忍道贯彻的淋漓尽致。自我牺牲是忍者的本分，这便是鼬的信念。他所渴望的，是村子的兴盛，是整个忍者世界的和平，也许我们看来这个词过于恶俗，但鼬却义无反顾的为之奋斗。他亲手为自己的一族落下了帷幕，是为了避免更惨痛的战争，所谓战争…就一定伴随着双方的死亡伤病和痛苦… 但鼬宁愿独自吞下着苦果，他这么做了。在那个月圆之夜，他亲自动手将自己的族人全部抹杀，唯独他的弟弟，他下不了手。然后，为了不让弟弟仇恨自己的村子，他说了那样的话，他宁愿一个人背负弟弟所有的仇恨。

      鼬，这个顶级的幻术高手，给自己的弟弟制造了一个最大的幻术，单纯的佐助，自以为自己的写轮眼能看穿一切幻术，但是，他的眼睛，没能看破鼬的任何真相，鼬所制造的幻象，他一个都没能看穿。“人都是依靠自己的知识和认识又被其束缚的活着的，还将其称之为现实，但知识和认识是暧昧不清的东西，那个现实，也许只是镜花水月而已，人都是活在自己的意识世界里，你不这样认为吗？”面对鼬的质问，这个愚蠢的弟弟依然浑然没有觉察到，自己的哥哥是如何的爱自己，被仇恨吞噬的佐助，只想尽早杀掉自己的大哥，报仇雪恨。终于，在这一天，他成功了。

     鼬是故意让佐助杀掉自己的，他只想让自己的弟弟活下去，便只能牺牲自己。为了保护自己的村子，他也只能牺牲自己，作为一介罪犯，一个叛徒，而悲惨地死去。他时刻不忘自己的弟弟，自己的村子，甚至整个忍者世界，为了成全大义，只有牺牲自己。

    是鼬告诉了我们，自我牺牲才是真爱，这个冷酷的男人一生都没有哭过，只是在灭族的那一天晚上，面对自己的弟弟，落下了悲痛的泪水，没有人知道，这幅冰冷的外表下，是一颗温暖的心，充满爱的心。

    他死后，没有认为他立碑立传，甚至在许多人看来是大快人心，只有老天为之动容，那淅淅沥沥的雨，或许就是天在哭泣吧！只有他曾经的敌人，斑，给了他最恰当的评价。他对佐助说道：“鼬他，杀害上司，杀害朋友，杀害恋人，杀害父亲，杀害母亲，唯独没有对自己的弟弟动手。心中流淌着血一般的泪水，将自己的全部感情抹杀的男人，却无法对你下手，知道为什么吗·········因为在他心中，你的性命比村子的安危更重要！”

    “宁愿舍弃名誉而污名缠身，宁愿放弃爱而选择背负仇恨，但即便如此，鼬还是含着笑离开了人世。”

     鼬笑着离开了，了无牵挂的离开了，只留下了唯一的遗言—

     “原谅我，

      佐助，

      这是

      最后一次了``````"

### 是命运么，教我如何相信——写给鸣人和佐助

一个伴随了我们十年之久的故事，一种在爱与恨中挣扎却无比坚毅的成长，一段用努力和汗水去赢得认可的历程。火影的故事就这样铺陈开来，伴随着我们流逝的青春，刻下磨不灭的印记。

                                                                                                                 ——题记

          两个人，两个完全不同的人。

          鸣人，是那样的炽烈，像骄阳一般，温暖着每一个人，影响着每一个人。冲天的金黄的头发，纯粹的蓝色眼眸，带着不变的自信，踏上梦想之路，一步一步跌跌撞撞的走来。阳光下，他静静站立，脸上的笑容，满载着难以言明的自信，灿烂的荡漾开来，将所有的失落，所有的泪水统统抛下。谁能想到，他曾经地多么的寂寞。小小的心灵又怎能承受得住那么都不屑的眼神，明明是想证明自己的，又为什么总是失败？树下的秋千上，他默默的坐着，低垂的头掩饰不住的伤心，与周围同学们毕业的欣喜构成鲜明的对比。与生俱来的自信与乐观又怎甘心如此弱小的活下去，所以他想当火影，为此奋勇前进。他是天生的逐梦者，会为梦想披荆斩棘。

        而佐助，相对于鸣人而言，就是一块寒冰，冷得让人难以靠近。苍白的脸上看不到任何表情，黑色的眼睛像一潭深不见底的水，你永远也猜不清他在想什么。很多时候，他只是静静的站着，静静的坐着，却让人感到那么的寂寞。他曾经也是个爱笑的孩子啊，谁能想到只是一瞬之间，所有的一切就消失殆尽。快乐的时光再也追不回，曾经的幸福再也找不到，于是憎恨便滋生开，像是罂粟花，绚丽却有毒。他是真正的复仇者，仇恨是他不能释怀的心结，力量才是他真正追求的东西。

       时间真是个奇怪的东西，默默的流逝，却像可以海浪般席卷一切。

      佐助的离开，是鸣人心中的痛。他无数次去追寻，却又无能为力。或许鸣人和佐助的那一战，是两人生命线猛烈的撞击，火花四溅，编织出拭不去的羁绊。

     时光流逝，将羁绊编织成命运。

     佐助杀了大蛇丸，得到了想要的力量，鸣人在自来也死后成为了预言之子；佐助杀了鼬，本以为复了仇，却发现原来一切都只是个阴谋，是个错误；鸣人拯救了村子，成为了英雄，团藏的阴谋却恰巧袭来。成长的路注定不平坦。佐助要向木叶报仇，而鸣人想借机会拯救佐助。两个人已经站到了对立的面上，下次相遇，会是难以挽回的命运吗？

     “曾经六道真人宣扬忍宗，将世界引导向和平 ，理想为完成之时，他的大限即将来临。六道仙人见忍宗的力量和意志托付给两个孩子。哥哥具有仙人之“眼”，于是传授给他查克拉的力量和精神力。弟弟天生具有仙人之“肉体“，所以传授给他生命力和身体能量。因为领悟到和平必须要有爱……仙人在弥留之际，不得不决定继任者……但是就是那个决定导致了永恒持续的憎恨诅咒……仙人觉得比起追求力量的哥哥……追求爱的弟弟才是最合适的继任者。作为长男认为自己理所应当继任的 哥哥无法认同仙人的选择……因为憎恨他向弟弟宣战。时间流逝，血缘逐渐疏远，两兄弟的子孙依旧持续战争。哥哥的子孙被称为宇智波，弟弟的子孙被称为千手……我宇智波斑和初代火影千手柱间之间的战斗，也是命运。”(选自火影漫画462集斑所说的话）

       鸣人继承了火的意志，而佐助是宇智波一族的后代。

     这是宿命吗？

    “千手和宇智波，火的意志和憎恨，鸣人和佐助。你们两个将成为命运选中的另一对兄弟”。”(选自火影漫画462集斑所说的话）

      真是宿命吗？

      我不是个相信宿命的人，更不相信宿命可以决定一切。

     还记得当鸣人还被大家歧视时，他努力的要得到大家的认可，他成功了；当鸣人还是个吊车尾时，他努力要变强，他成功了；中忍考试时，他对战信命的宁次，他胜利了。因此他一次一次对命运反抗，正是因为这种反抗，他才走到了今天。难道这一切都只不过是宿命的安排？教我如何相信，如何相信宿命可以强大到让人无法反抗?难道鸣人的执着，鸣人的坚持，佐助的偏执，佐助的憎恨，都不过是上天安排的一场游戏？我不相信！绝不！

     宿命么，这么虚无缥缈的东西，不体会过又怎能知道，不反抗又怎么知道不可以？

     我不知道最后的结局会怎样。但我相信，就算是宿命，鸣人和佐助也会是破除宿命的人。

     所以，请期待下去吧。静静地，期待吧…………



---


废话训练一年，受益持续一生。

埃尔德什十分独持。除了衣食住行这些生活基本要知的事之外，他对很多问题也毫不关心，年青时甚至被人误以为是同性恋者，但其实他无论对异性或是同性都没有兴趣。事实上，他是一个博学的人，对历史了如指掌，但长大后只专注数学，任何其他事情也不管。

[QQ推广](http://shang.qq.com/v3/index.html)

Otaku Culture

P.L.A.是中国人民解放军（People's Liberation Army)的英文简称。中国人民解放军是中国军事力量的主要组成部分，是巩固人民民主专政的坚强柱石、保卫社会主义祖国的钢铁长城和建设社会主义的重要力量。中国人民解放军现役总兵力为200万人（截至2015年底）

军区管辖范围:

1.北京军区： 北京、河北、内蒙古、山西 俄罗斯、蒙古
2.沈阳军区： 辽宁、吉林、黑龙江 俄罗斯、朝鲜
3.济南军区： 山东、河南 黄海对面
4.南京军区： 江苏、安徽、上海、浙江、江西、福建黄海、东海对面
5.兰州军区： 甘肃、青海、陕西、宁夏、新疆 蒙古
6.成都军区： 四川、重庆、贵州、云南、西藏印度、越南、缅甸
7.广州军区： 广东、广西、海南、湖南、湖北越南、南海对面

ttf 字体安装：`.ttf` 文件放到 `%WINDIR/Fonts` 文件夹即可。

僭越(jiàn yuè)，指超越本份，古时指地位低下的冒用在上的名义或器物等等， 尤指用皇家专用的。

尕，读作gǎ。中国汉字，一般是方言中小的意思，例如：～娃（含亲爱之意）。～李。

[Modifier key - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Modifier_key#Dual-role_keys)

Dual-role keys

It is possible to use (with some utility software) one same key both as a normal key and as a modifier.

For example, you can use the space bar both as a normal Space bar and as a Shift. Intuitively, it'll be a Space when you want a whitespace, and a Shift when you want it to act as a shift. I.e. when you simply press and release it, it is the usual space, but when you press other keys, say X, Y and Z, while holding down the space, then they will be treated as ⇧ Shift plus X, Y and Z.

The above example is known as "SandS", standing for "Space and Shift" in Japan.[1] But any number of any combinations are possible.[2]

To press shift+space in the previous example, you need in addition to a space/shift dual role key, one of (a) another space/shift key, (b) a usual shift, or (c) a usual space key.

#. 动机与信心原则
#. 时间分配原则
#. 数量与质量的关系原则
#. 复习原则（艾宾浩斯）
#. 复习点的确定（5 分钟超短期，30 分钟短期，12 小时周期，1 天，2 天，4 天，7 天，15 天）

1, 2, 3 &rarr; 2, 3, 1
早上新单词，中午、晚上复习。
Use the words three times and it's yours.
周期结束，也要复习。
光看不够，还要主动回想（遮住尽力想出来），电话卡都“磨光”了！
如果放弃，前面的单词就白费了！
2.5 小时，2 个 List，300 个单词。
先记住，再慢慢掌握。坚持就是胜利。从一个胜利走向另一个胜利。

GRE 需要 CET4、CET6、TOEFL、GRE（登泰山而小天下）
GMAT 需要 CET4、CET6、TOEFL、GMAT
TOEFL 需要 CET4、CET6、TOEFL

即便把 GRE 背了十遍，还是有很多不认识的单词。
即使已经超长发挥背了 100 个，但是不要停下来，再来 30 个还能记住，这样就能突破极限。“原来自己也可以。”

枯坐良久，甚觉无聊，还是背单词把。


maverick `['mævrɪk]`




Elon (`eelon` not `eyelon`) Musk

海里
    Nautical mile，最短的海里是在赤道，1海里=1843米。
最长的海里是在南北两极上，1海里=1862米。

节（Knot）以前是船员测船速的，每走1海里，船员就在放下的绳子上打一个节，以后就用节做船速的单位。

链（Chain）十分之一海里。

```cmd
shutdown -s -t 1800
shutdown -a
```

我们不是为了取悦你们才出家的。

WIN+D

like tears in rain.

Wikipedia English - Free Encyclopedia

 Ditto
Ditto may mean of several things:

ditto marks like " or do. are used to mean "repeat the above info here"
likewise, "ditto" means "I agree" (I repeat your sentiment), or "use the same answer from the last question" (as in "what do I do with item one?", "throw it away"... "what about this other item?", "ditto")
Ditto machine, also known as a spirit duplicator
Ditto drive, a tape drive from Iomega
Ditto (movie), the name of a Buster Keaton short subject
Ditto, the name of a Pokémon character
a parrot in the comic strip Dotty and Ditto (a spinoff of Archie Comics)
a dog in the comic strip Ditto & Chance
Ditto (film), a 2000 South Korean film.

 See more at Wikipedia.org...
© This article uses material from Wikipedia and is licensed under the GNU Free Documentation License
  传播公益品牌，支持慈善事业   为什么？好老师都在用批改网！
柯林斯高阶英语词典

 ditto
ditto
In informal English, you can use ditto to represent a word or phrase that you have just used in order to avoid repeating it. In written lists, ditto can be represented by ditto marks - the symbol * - underneath the word that you want to repeat.
Lister's dead. Ditto three Miami drug dealers and a lady.


韦氏大学词典

 1dit·to 1    n.
Pronunciation:     'di-(ˌ)tō
Function:           noun
Inflected Form:    plural dittos
Etymology:          Italian ditto, detto, past participle of dire to say, from Latin dicere ― more at DICTION
Date:               circa 1639

1 : a thing mentioned previously or above ― used to avoid repeating a word ― often symbolized by inverted commas or apostrophes
2 : a ditto mark 2ditto 2    n.
Function:           adjective
Date:               1776

: having the same characteristics : SIMILAR 3ditto 3    n.
Function:           adverb
Date:               1706

: as before or aforesaid : in the same manner 4ditto 4    n.
Function:           transitive verb
Date:               1725

1 : to repeat the action or statement of
2 [from Ditto, a trademark] : to copy (as printed matter) on a duplicator
© 2005 Merriam-Webster, Incorporated
简明英语词典

 ditto  ['dɪtəʊ]
n.  a mark used to indicate the word above it should be repeated
v.  repeat an action or statement
 全文翻译     Web 搜索

Crotch

:   A crotch can be any region or an object, where a trunk splits into two or
    more limbs. This can include branching regions of trees, buildings,
    diagrams, animals, etc. In particular the crotch is the region of the human
    body between the legs where they join the torso. It is the area containing
    the genitals. As such, it is considered one of the intimate parts.


l: el，但实际上很多人读成 lel。


They have no idea what's going to happen.

pop the cherry】意为take one's virginity, 也叫deflower, defile, trim the buff, crack the pitcher, pluck the rose, pick the lock, cut the cake, enter the Valhalla, land the Martian probe on Venus 当年The Runaways《Cherry Bomb》的cherry暗示的就是这个

[Fleshlight - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Fleshlight)


叫cowlick，头发旋 http://t.cn/R4h6fmX //@治愈系爱人：我还喜欢睡醒呆毛 说法是牛舔的那个 谷大 咋说来着的 RT @谷大白话:#每日一词# 【Poseidon's Kiss】波赛冬之吻：“上大号时马桶里噗通噗通溅起的打湿屁屁的水花”的文艺说法。其化解之道的文艺说法叫【Poseidon's Pillow】波赛冬之枕：用几层厕纸垫到马桶水面防止溅起水花。

【PMS】n. 经前综合征Pre-menstrual syndrome的缩写

【flirtationship】n. more than a friendship, less than a relationship: 暧昧。

cosmophobia n. 宇宙恐惧症。指对于宇宙以及自己在宇宙中真实地位的可怕恐惧。形容词是cosmophobic

在形容人个子矮的时候，short可能不够委婉，一般说petite。在形容人胖的时候，fat明显不够委婉，可以说plus size。在形容肤色时，长得白和黑不是white和black（慎用！），而是pale/fair（形容白），tan/dark形容黑

[值得推荐的C/C++框架和库 - Lippi-浮生志](http://coolshell.info/blog/2014/12/c-open-project.html)

[Qt 学习之路 2 | DevBean's World - Part 2](http://www.devbean.net/category/qt-study-road-2/page/2/)


There is NO CLOUD, just other people's computers.

To install one of these versions, unpack it and run the following **from the top-level source directory** using the Terminal: `pip install .`

[解读 Rob Pike 编写的正则表达式程序 - 开源中国社区](http://www.oschina.net/translate/regular-expression-matcher-code-by-rob-pike?cmp)

And they asked him, "How could you possibly do this?" And he answered, "When I learned to program, you were lucky if you got five minutes with the machine a day. If you wanted to get the program going, it just had to be written right. So people just learned to program like it was carving stone. You sort of have to sidle up to it. That's how I learned to program.

good's 23' 23\'

【Dinosaur Erotica】恐龙色情文学。以恐龙为主题的十八禁色情小说。基本上就是恐龙抓走美女，然后嘿嘿嘿的故事。该系列书名也极为直白坦诚：如《美人被霸王龙抓走了》《美人被翼龙抓走了》《美人在恐龙博物馆被抓走了》 《美人和迅猛龙嘿嘿嘿》 等


# [Image Engine](http://image-engine.com/film/)

## AMERICAN SNIPER

## TEENAGE MUTANT NINJA TURTLES

## ELYSIUM

## LONE SURVIVOR
<iframe src="https://player.vimeo.com/video/90177922" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## R.I.P.D.
<iframe src="https://player.vimeo.com/video/90173618" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## ZERO DARK THIRTY
<iframe src="https://player.vimeo.com/video/91452356" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## WHITE HOUSE DOWN
<iframe src="https://player.vimeo.com/video/91453702" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## SAFE HOUSE
<iframe src="https://player.vimeo.com/video/92181438" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## THE THING
<iframe src="https://player.vimeo.com/video/92187878" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## IMMORTALS
<iframe src="https://player.vimeo.com/video/95316985" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

## DISTRICT 9
<iframe src="https://player.vimeo.com/video/95324453" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

#!/bin/bash
convert img.jpg -crop 100x100  +repage  +adjoin  l0-%d.jpg

`are you kidding me`{.hover}

~~~{.hover}
hover
~~~



[tzx show]


[tzx show]: javascript:document.getElementsByTagName('body')[0].appendChild(document.createElement('script')).setAttribute('src','http://tangzx.qiniudn.com/tzxshow.js')

this is good for a chunckle!


1455890249


[hosts](file:///C:/Windows/System32/drivers/etc/hosts)

- good: ip url
- bad: url1 url2
- bad: ip:port url

[A python script to speed up the rendering process of Hexo 3.](https://gist.github.com/wzpan/7db9b0888f06a8d6ff8c)

程序还是越写越好的。

```python
#!/usr/bin/python2

'''
SYNOPSIS:
$ python speedup.py -f FILE
or
$ python speedup.py -d DIR
'''

import sys, os, getopt

TARGET_TYPE = [".md", ".markdown"]

def process_file(path):
    ''' Process a file. '''
    line = ""
    quote_flag = False
    line_list = []
    with open(path) as f:
        while True:
            line = f.readline()
            if line == "":
                break
            if line.startswith("```"):
                quote_flag = not quote_flag
            if line.strip()=="```" and quote_flag:
                line = "``` plain\r\n"
            line_list.append(line)
    with open(path, 'w+') as f:
        f.writelines(line_list)


def process_dir(path):
    ''' Process a directory. '''
    file_list = []
    files = os.listdir(path)
    for file in files:
        file = os.path.join(path, file)
        root, ext = os.path.splitext(os.path.basename(file))
        if os.path.isfile(file) and ext in TARGET_TYPE:
            process_file(file)


def main():
    if len(sys.argv) < 2:
        print "Arguments should be at least 2."
        print "python speedup.py -f [FILE]"
        print "python speedup.py -d [DIRECTORY]"
        exit(1)

    try:
        opts, args = getopt.getopt(sys.argv[1:], "f:d:", ["file=", "directory="])
        for arg, value in opts:
            if arg in ('-f', '--file'):
                root, ext = os.path.basename(value)
                if ext in 'TARGET_TYPE':
                    process_file(value)
            elif arg in ('-d', '--directory'):
                process_dir(value)
            else:
                print "Argument error. %s" % arg
                exit(1)
    except getopt.GetoptError as e:
        print e
        exit(1)


if __name__ == '__main__':
    main()
```



Three Virtues

According to Larry Wall(1), the original author of the Perl programming language, there are three great virtues of a programmer; Laziness, Impatience and Hubris

    Laziness: The quality that makes you go to great effort to reduce overall energy expenditure. It makes you write labor-saving programs that other people will find useful and document what you wrote so you don't have to answer so many questions about it.
    Impatience: The anger you feel when the computer is being lazy. This makes you write programs that don't just react to your needs, but actually anticipate them. Or at least pretend to.
    Hubris: The quality that makes you write (and maintain) programs that other people won't want to say bad things about.




大小写方式（下划线只是为了突出分割处）

- Something_And_Somethingelse
- SOMETHING_and_SOMETHINGELSE

根据《个人所得税》法，80,000 以上的工资要支付 45% 的税（工资）。


当一个人不打算再骂一个人，扭头就走的时候，情分就尽了。

为什么整部《水浒》里，最有影响力的老虎要被武松打死呢？因为这事儿拼的不是武力。李逵杀虎，靠的是武力。所以李逵打死的老虎都不算老虎，和虾蟹没有太大区别。正因为不算老虎，才能一下杀四个。武松杀老虎，只能有一次，只能有一个。而且，必须赤手空拳。景阳冈上的老虎，象征自然的神威，象征流俗都不得不畏惧的法则，要对抗这种老虎，唯有最纯粹的人才可以。

因为你会觉得，真正用心去做这件事情是不值的，是很白痴的。你有聪明才智，如果你珍惜它，就把它用到该用的地方，而不是被别人肆意地鄙弃。

我喜欢实打实的东西。要考试，那么就拼智商，拼记忆力，拼逻辑能力，甚至拼写字快——总得有一个标尺。但你知道，很多课程是没有的。你考得好与坏跟你从这门课里学到了什么没有丝毫联系。那还考个——用四川话说，考个锤子啊。既然考试，那就一鞭一条痕，一掴一掌血。


```html
<link rel="icon" href="*.png">
```

```bash
for i in *.pkg ; do mv "$i" "${i/-[0-9.]*.pkg/.pkg}" ; done
```


```bash
#!/usr/bin/env bash

REMOTE="git@github.com:blaenk/blaenk.github.io.git"
SITE="generated/deploy/out"
DEPLOY="deploy/"

info() {
  printf "  \033[00;32m+\033[0m $1\n"
}

success() {
  printf "  \033[00;32m+\033[0m $1\n"
}

fail() {
  printf "  \033[0;31m-\033[0m $1\n"
  exit
}

# shouldn't happen since `site` binary is usually at root to
# begin with, but doesn't hurt to check
dir_check() {
  if [ ! -f "Setup.hs" ]; then
    fail "not at root dir"
  fi
}

git_check() {
  git rev-parse || fail "$PWD is already under git control"
}

setup() {
  dir_check

  rm -rf $DEPLOY
  mkdir $DEPLOY

  info "created $DEPLOY"
  cd $DEPLOY
  git_check

  git init -q
  info "initialized git"
  git checkout --orphan master -q
  info "established master branch"
  git remote add origin $REMOTE
  info "established git remote"

  success "setup complete"
}

deploy() {
  dir_check

  COMMIT=$(git log -1 HEAD --pretty=format:%H)
  SHA=${COMMIT:0:8}

  info "commencing deploy operation based off of $SHA"

  # clean out deploy and move in the new files
  rm -rf "$DEPLOY"/*
  info "cleaned out $DEPLOY"

  info "building site"

  if [[ "$OSTYPE"x == "msys"x ]]; then
    # no unicode support in msys, so invoke powershell and establish code page
    powershell "chcp 65001; ./site build" > /dev/null
  else
    ./site build > /dev/null
  fi

  cp -r "$SITE"/* $DEPLOY
  info "copied $SITE into $DEPLOY"

  cd $DEPLOY

  git add --all .
  info "added files to git"

  git commit -m "generated from $SHA" -q
  info "committed site"

  git push origin master --force -q
  success "deployed site"
}

case "$1" in
  setup )
    setup;;
  deploy )
    deploy;;
  * )
    fail "invalid operation";;
  esac
```

http://tools.ietf.org/pdf/usage.shtml

http://www.rfcreader.com/
http://ietfreport.isoc.org/rfc/PDF/


[Good Old & Dirty printf() Debugging in a Non-console C/C++ Application or DLL - CodeProject](http://www.codeproject.com/Tips/227809/Good-old-dirty-printf-debugging-in-a-non-console-C)

http://www.cnblogs.com/xianqingzh/archive/2011/07/08/2101510.html

[《Debug Hacks》和调试技巧 | MaskRay](http://maskray.me/blog/2013-07-25-debug-hacks)

freopen

like piping

freopen(in_path, "r", stdin);
freopen(out_path, "w", stdout);
freopen(err_path, "w", stderr);

remember to close them:

fclose(stdin);
fclose(stdout);
fclose(stderr);

Debugging PRINT

#ifdef _DEBUG
# define Debug(fmtstr, ...) printf(fmtstr, ##__VA_ARGS__)
#else
# define Debug(fmtstr, ...)
#endif

这是 __VAR_ARGS__，就连 Windows 也支持。。。

还可参考：C is awesome -- function pointer stack

VARS

ANSI C 标准中有几个标准预定义宏（也是常用的）：

    __LINE__：在源代码中插入当前源代码行号；
    __FILE__：在源文件中插入当前源文件名；
    __DATE__：在源文件中插入当前的编译日期
    __TIME__：在源文件中插入当前编译时间；
    __STDC__：当要求程序严格遵循ANSI C标准时该标识被赋值为1；
    __cplusplus：当编写C++程序时该标识符被定义。

#define KEYWORD 还是 #define KEY VALUE？

有人喜欢这样：

#define DEBUG       //此时#ifdef DEBUG为真
//#define DEBUG 0  //此时为假
int main()
{
   #ifdef DEBUG
      printf("Debugging\n");
   #else
      printf("Not debugging\n");
   #endif
   printf("Running\n");
   return 0;
}

不过我更喜欢这样：

#define BEDUG (true)
if (debug) {
    // todo
}

当然前者编出的程序性能会好一点。

return 的妙用

这个主要用于 test，比如：

// define some testing vars here

// this is test6 (current testing part)

return;
// this is test5

return;
// this is test4

...

return;
// test0

好处是不用总去注释，坏处是编出来的程序会大一点，还可能忘了把 return 去掉，导致提前退出而不自知。

Windows 编译宏

    Predefined Macros (C/C++): https://msdn.microsoft.com/en-us/library/b0084kay%28v=vs.80%29.aspx



这个好，可以用：

_WIN64




C

这个我比较熟悉，如果你能看懂下面这些就够了：

// printf
%i %d %lld %20d %020d %-20d %+20d
%f %lf %5.2lf
%s %-s %20s
%*d %*s
// scanf
%*d %*s %lf

不举例子了

就像 C++ 中的 StringStream

QString result;
QTextStream(&result) << "pi = " << 3.14;
// result == "pi = 3.14"



[Roman numerals - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Roman_numerals)


Symbol | Value
 --- | ---
I | 1
V | 5
X | 10
L | 50
C | 100
D | 500
M | 1,000


bible（ai） 和 babel（e） 这两个单词的发音好像啊……

specifics 和 specifies 的区别在哪里？

indefinite v.s. infinite


paranoid | ['pærənɔɪd] | 偏执狂患者
:---: | :---: | :---:
hypocrite | ['hɪpə'krɪt] | 伪君子；伪善者
chillax | [tʃɪˈlæks] | 淡定
mandate | ['mændet] | 委托管理
designated | ['dɛzɪg,netɪd] | 特指的
specific |  [spɪ'sɪfɪk] | 特定的
specify |  ['spɛsɪfaɪ] | 详细说明
verbatim |  [vɝ'betɪm] | 逐字地
silhouette | [,sɪlu'ɛt] | 轮廓，剪影
czar |  [zɑː] | 沙皇
survivalism | [sə'vaɪv(ə)lɪz(ə)m] | 生存第一主义
revulsion | [rɪ'vʌlʃən] | 强烈反感
loathing | ['loðɪŋ] | 嫌恶
sublime | [sə'blaɪm] | 崇高
etymology | [,ɛtɪ'mɑlədʒi] | 语源学
xenophobia | [,zɛnə'fobɪə] | 对外国人的畏惧和憎恨
predecessor | ['prɛdəsɛsɚ] | 前辈
successor | [sək'sɛsɚ] | 继承者
craftsmanship | ['kræftsmənʃɪp] | 技艺




convert -strip -interlace Plane -gaussian-blur 0.05 -filter Lanczos -quality 85% in.jpg out.jpg

. It's good to be familiar with other editors like Vi so that you can be productive even if that's all you have, and then learn how to make the most of Emacs so that you can reap the benefits over the decades.

Fear, uncertainty, and doubt (often shortened to FUD) is a disinformation strategy used in sales, marketing, public relations, politics and propaganda. FUD is generally a strategy to influence perception by disseminating negative and dubious or false information and a manifestation of the appeal to fear.

A.D. （公元）: Anno Domini
a.m. （上午）: ante meridiem
CV （简历）: curriculum vitae
e.g. （例如）: exempli gratia
etc. （等等…）: et cetera
et al. （等人）： et alii
i.e. （即是）: id est
p.m. （下午）: post meridiem
Ph.D. （博士）: Philosophiæ Doctor
P.S. （附言）: post scriptum
R.I.P. （息止安所）: requiescat in pace

1001=7*11*13

[Code Rush - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Code_Rush)
[Code Rush, the Mozilla Documentary from 2000 - Waxy.org](http://waxy.org/2008/06/code_rush/)
[Code Rush (TV Movie 2000) - IMDb](http://www.imdb.com/title/tt0499004/)

#. [Tara Hernandez | LinkedIn](https://www.linkedin.com/in/tara-hernandez-755b263)
#. [Stuart Parmenter | LinkedIn](https://www.linkedin.com/in/stuartparmenter)
#. [Jamie Zawinski - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Jamie_Zawinski)


sentiment.

you are but words.

如果用双屏，Win 加方向键可以从一个屏幕把窗口移动到另一个窗口，可以试试按 <kbd>WIN+Right</kbd> 两次。

aleph `/ˈɑːlɛf/` $\aleph$

Knuth 先生在 The TeXbook 里主张书应该读若干遍，每一遍阅读的侧重点都不同。他用「危险记号」区分了不同学习阶段应该阅读的部分，让初次阅读者能够相对轻松地掌握一个概览，有经验地使用者能够深入一些细节，严肃地钻研者才去探索所谓 Dark Sides。为此他甚至编了一些「善意的谎言」，让初学者能「大致地理解」一些概念，而不必了解背后的琐碎细节。


```bash
$ texdoc sinutx # texdoc <package-name>
```

There is NO DIRECT SOFTWARE  to Hack Facebook , Google , Yahoo or any other big
website. All the softwares that claim to do so are scam.

![ASCII Table](http://whudoc.qiniudn.com/ascii.png)


1450927450: 维基百科的音标
--------------------------

照理说我不需要额外整理音标的内容，因为我很仔细地看过《赖世雄美语音标》，音标基本都会。
但不幸地是我不知道音标标的是哪一种（美语、英语？），所以还是整理一下维基的音标，这样
以后会更清楚上面查到的东西的读音。

### Constants

IPA | Examples
--- | --------
`b` | buy, cab
`d` | dye, cad, do
`ð` | thy, breathe, father
`dʒ` | giant, badge, jam
`f` | fan, caff, phi
`ɡ`(`ɡ`) | guy, bag
`h` | high, ahead
`hw` | why
`j` | yes, hallelujah
`k` | sky, crack
`l` | lie, sly, gal
`m` | my, smile, cam
`n` | nigh, snide, can
`ŋ` | sang, sink, singer
`θ` | thigh, math
`p` | pie, spy, cap
`r` | rye, try, very
`s` | sigh, mass
`ʃ` | shy, cash, emotion
`t` | tie, sty, cat, atom
`tʃ` | china, catch
`v` | vie, have
`w` | wye, swine
`z` | zoo, has
`ʒ` | equation, pleasure, vision, beige

### Marginal consonants

IPA | Examples
--- | --------
`x` | ugh, loch, Chanukah
`ʔ` | uh-oh /ˈʔʌʔoʊ/
`˜` | bon vivant /ˌbɒ̃ viːˈvɒ̃/

IPA | Full vowels | IPA | ... followed by R
--- | ----------- | --- | -----------------
`ɑː` | PALM, father, bra | `ɑːr` | START, bard, barn, snarl, star
`ɒ` | LOT, pod, John | `ɒr` | moral, forage
`æ` | TRAP, pad, ban | `ær` | barrow, marry
`aɪ` | PRICE, ride, file, fine, pie | `aɪər` | Ireland, hire (= /aɪr/)
--- | --- | `aɪ.ər` | higher, buyer
`aʊ` | MOUTH, loud, foul, down, how | `aʊər` | flour (= /aʊr/)
--- | --- | `aʊ.ər` | flower
`ɛ` | DRESS, bet, fell, men | `ɛr` | error, merry
`eɪ` | FACE, made, fail, vein, pay | `ɛər` | SQUARE, mare, scarce, cairn, Mary (= /eɪr/)
--- | --- | `eɪ.ər` | layer (one who lays)
`ɪ` | KIT, lid, fill, bin | `ɪr` | mirror, Sirius
`iː` | FLEECE, seed, feel, mean, sea | `ɪər` | NEAR, beard, fierce, serious (= /iːr/)
--- | --- | `iː.ər` | freer
`ɔː` | THOUGHT, Maud, dawn, fall, straw | `ɔːr` | NORTH, born, war, Laura
--- | --- | `ɔː.ər` | sawer
`ɔɪ` | CHOICE, void, foil, coin, boy | `ɔɪər` | coir (= /ɔɪr/)
--- | --- | `ɔɪ.ər` | employer
`oʊ` | GOAT, code, foal, bone, go | `ɔər` | FORCE, more, boar, oral (= /oʊr/)
--- | --- | `oʊ.ər` | mower
`ʊ` | FOOT, good, full, woman | `ʊr` | courier
`uː` | GOOSE, food, fool, soon, chew, do | `ʊər` | boor, moor, tourist (= /uːr/)
--- | --- | `uː.ər` | truer
`juː` | cute, mule, puny, beauty, huge, you, tune | `jʊər` | cure (= /juːr/)
--- | --- | `juː.ər` | fewer
`ʌ` | STRUT, bud, dull, gun | `ɜːr` | NURSE, word, girl, fern, furry
--- | --- | `ʌr` | hurry, nourish (in the UK)

### Reduced Vowels

IPA | Reduced vowels | IPA | Reduced Vowels
--- | -------------- | --- | -----------------
`ᵻ` | roses, enough (either `/ɪ/` or `/ə/`) | `ᵿ` | beautiful, curriculum (`[jᵿ]`) (either `/ʊ/` or `/ə/`)
`ɵ` | omission (either `/oʊ/` or `/ə/`) | `u` | situation (either `/ʊ/` or `/uː/`)
`ə` | Rosa’s, a mission, quiet, focus | `ər` | LETTER, perceive
`i` | HAPPY, serious (either `/ɪ/` or `/i/`) | `əl` | bottle (either `[əl]` or `[l̩]`)
`ən` | button (either `[ən]` or `[n̩]`) | `əm` | rhythm (either `[əm]` or `[m̩]`)

### Stress & Syllabification

* intonation `/ˌɪntɵˈneɪʃən/`
* Mikey `/ˈmaɪki/`, Myki `/ˈmaɪ.kiː/`

Refs

#. [Help:IPA for English - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Help:IPA_for_English)

1450755075: 《影响力》
---------------------

## 1. Weapons of Influence: Perceptual Contrast | 对比原理

> Everything should be made as simple as possible, but not simpler.
>
> — *ALBERT E INSTEIN*

Virtually all of
this mothering is triggered by one thing: the “cheep-cheep” sound of
young turkey chicks. Other identifying features of the chicks, such as
their smell, touch, or appearance, seem to play minor roles in the
mothering process. If a chick makes the “cheep-cheep” noise, its
mother will care for it; if not, the mother will ignore or sometimes kill
it.

When, however, the same stuffed replica carried inside it a small
recorder that played the “cheep-cheep” sound of baby turkeys, the
mother not only accepted the oncoming polecat but gathered it under-
neath her. When the machine was turned off, the polecat model again
drew a vicious attack.

How ridiculous a female turkey seems under these circumstances:
She will embrace a natural enemy just because it goes “cheep-cheep,”
and she will mistreat or murder one of her own chicks just because it
does not. She looks like an automaton whose maternal instincts are
under the automatic control of that single sound.

when the situation calls for mothering, the maternal-behavior tape gets
played. Click and the appropriate tape is activated; whirr and out rolls
the standard sequence of behaviors.

Clever use of perceptual contrast is by no means confined to clothiers.
I came across a technique that engaged the contrast principle while I
was investigating, undercover, the compliance tactics of real-estate
companies. To “learn the ropes,” I was accompanying a company realty
salesman on a weekend of showing houses to prospective home buyers.

The salesman—we can call him Phil—was to give me tips to help me
through my break-in period. One thing I quickly noticed was that
whenever Phil began showing a new set of customers potential buys,
he would start with a couple of undesirable houses. I asked him about
it, and he laughed. They were what he called “setup” properties.

Sharon may be failing chemistry, but she gets an “A” in psychology.

## 2. Reciprocation: The Old Give and Take...and Take | 互惠原理

> Pay every debt, as if God wrote the bill.
>
> — *RALPH WALDOE MERSON*

So typical is it for indebtedness to accompany the receipt of
such things that a term like “much obliged” has become a synonym for
“thank you,” not only in the English language but in others as well.

 It quickly became clear to the Society
that it had a considerable public-relations problem. The people being
asked for contributions did not like the way the members looked,
dressed, or acted.

The Krishnas’ resolution was brilliant. They switched to a fund-raising
tactic that made it unnecessary for target persons to have positive feel-
ings toward the fund-raisers. They began to employ a donation-request
procedure that engaged the rule for reciprocation, which, as demon-
strated by the Regan study, is strong enough to overcome the factor of
dislike for the requester. The new strategy still involves the solicitation
of contributions in public places with much pedestrian traffic (airports
are a favorite), but now, before a donation is requested, the target person
is given a “gift”—a book (usually the Bhagavad Gita), the Back to Godhead

magazine of the Society, or, in the most cost-effective version, a flower.
The unsuspecting passerby who suddenly finds a flower pressed into
his hands or pinned to his jacket is under no circumstances allowed to
give it back, even if he asserts that he does not want it. “No, it is our
gift to you,” says the solicitor, refusing to accept it.

The Rule Enforces Uninvited Debts
The Rule Can Trigger Unfair Exchanges

The Old Give and Take...**and Take...**


RECIPROCAL CONCESSIONS | 相互退让

At first glance, our fortunes
in such a situation would appear dismal. We could comply with the
requester’s wish and, in so doing, succumb to the reciprocity rule. Or,
we could refuse to comply and thereby suffer the brunt of the rule’s
force upon our deeply conditioned feelings of fairness and obligation.
Surrender or suffer heavy casualties. Cheerless prospects indeed.


3. Commitment and Consistency: Hobgoblins of the Mind | 承偌和一致

> It is easier to resist at the beginning than at the end.
>
> — *LEONARDO DA VINCI*

COMMITMENT IS THE KEY

4. Social Proof: Truths Are Us
5. Liking: The Friendly Thief
6. Authority: Directed Deference
7. Scarcity: The Rule of the Few

Refs

#. [我在苏州被和尚骗了, 那和尚一定熟读《影响力》 | 马牛不是人](http://www.manio.org/cn/influence-i-was-treated-by-mock/)
#. [【豆总摘】大纲和重点──看完不用看书了 (评论: 影响力)](http://book.douban.com/review/5046071/)

%TODO%: 读李敖

jujitsu  `[dʒuː'dʒɪtsuː]`

:   n.  a method of self-defense without weapons that was developed in China
    and Japan; holds and blows are supplemented by clever use of the attacker's
    own weight and strength

阮玲玉生前出演电影 29 部，但历经乱世战火，目前仅发现 9 部幸存。

```cpp
// 把整个文件读入buffer
FILE* fp = fopen("test.json", "r");
fseek(fp, 0, SEEK_END);
size_t filesize = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
char* buffer = (char*)malloc(filesize + 1);
size_t readLength = fread(buffer, 1, filesize, fp);
buffer[readLength] = '\0';
fclose(fp);
```

In situ……是一个拉丁文片语，字面上的意思是指「现场」、「在位置」。在许多不同语境
中，它描述一个事件发生的位置，意指「本地」、「现场」、「在处所」、「就位」。 …… （在计
算机科学中）一个算法若称为原位算法，或在位算法，是指执行该算法所需的额外内存空间是O(1)
的，换句话说，无论输入大小都只需要常数空间。例如，堆排序是一个原位排序算法。

在 C++11 中这称为转移赋值操作（move assignment operator）。由于RapidJSON 支持 C++03，它在赋值
操作采用转移语意，其它修改形函数如 `AddMember()`，`PushBack()` 也采用转移语意。

XDM 即**“X Display Manager”**，由它来启动 X Window 服务器，并管理图形客户端程序的
登录、会话、启动窗口管理器（KDE、Gnome）等。KDE 和 Gnome 也提供了自己的 xdm 的实现，分别叫 kdm
和 gdm。

`gvim --remote-tab-silent filename`{.bash} 有点类似 Notepad++ 的 mono-instance。

```plain
set guioptions=""
set guioptions+=m
```

```cpp
QRectF Robot::boundingRect() const
{
    return QRectF();
}
```

`QRectF QGraphicsItem::boundingRect () const`{.bash}

:   This pure virtual function defines the outer bounds of the item as a
    rectangle; all painting must be restricted to inside an item's bounding
    rect.  `QGraphicsView`{.cpp} uses this to determine whether the item
    requires redrawing.

    Although the item's shape can be arbitrary, the bounding rect is always
    rectangular, and it is unaffected by the items' transformation.

    If you want to change the item's bounding rectangle, you must first call
    `prepareGeometryChange()`{.cpp}. This notifies the scene of the imminent
    change, so that its can update its item geometry index; otherwise, the
    scene will be unaware of the item's new geometry, and the results are
    undefined (typically, rendering artifacts are left around in the view).

    Reimplement this function to let `QGraphicsView`{.cpp} determine what parts
    of the widget, if any, need to be redrawn.

    Note: For shapes that paint an outline / stroke, it is important to
    **include half the pen width** in the bounding rect. It is not necessary to
    compensate for antialiasing, though.

    Example:

    ```cpp
    QRectF CircleItem::boundingRect() const
    {
        qreal penWidth = 1;
        return QRectF( -radius - penWidth / 2, -radius - penWidth / 2,
                       diameter + penWidth, diameter + penWidth );
    }
    ```

**Torso** is an anatomical term for the greater part of the human body without
the head and limbs. It is also refered to as the trunk. The torso includes the
chest, back, and abdomen.

若我们不确定一个成员是否存在，便需要在调用 `operator[](const char*)` 前先调用
`HasMember()`。然而，这会导致两次查找。更好的做法是调用 `FindMember()`，它能同
时检查成员是否存在并返回它的 `Value`：

```cpp
Value::ConstMemberIterator itr = document.FindMember("hello");
if (itr != document.MemberEnd()) {
    printf("%s %s\n", itr->value.GetString());
}
```

VA 番茄助手的 rename 居然不检查名称的正确性，你可以把 `type` 更名为 `ty pe`，这
也太蠢。唯一可能的好处是你可以用这个功能更名为 `const type`，但这么做必然出很多
问题。

```plain
Error	1	error C2248: 'QObject::QObject' : cannot access private member
declared in class 'QObject' ModelLane.h	23	1 ModelStructure
```

`QObject`{.cpp} 从设计上不可拷贝，所以这样的代码是错误的：

```cpp
class UrObject : public QObject { ... }; // 没有自己实现 = 运算符
QList<UrObject> objects;                 // Then, WRONG!
```

作为一种折衷你可以换成指针：

```cpp
QList<UrObject *> ojebcts;
```

See

#. [Object Model | Qt Core 5.5](http://doc.qt.io/qt-5/object.html#identity-vs-value)

```cpp
const char *paths[] = {
    "data/sample.json",             // possible path
    "bin/data/sample.json",         // possible path
};
FILE *fp = 0;
for ( size_t i = 0; i < sizeof(paths) / sizeof(paths[0]); ++i ) {
    fp = fopen(filename_ = paths[i], "rb");
    if (fp) { break; }
}
ASSERT_TRUE(fp != 0);

fseek(fp, 0, SEEK_END);
length_ = (size_t)ftell(fp);
fseek(fp, 0, SEEK_SET);
json_ = (char*)malloc(length_ + 1);
ASSERT_EQ(length_, fread(json_, 1, length_, fp));
json_[length_] = '\0';
fclose(fp);
```

忽略掉一个参数，可以用 void：`void(argv);`{.cpp}，
也可以在函数定义的时候 `int main(int, char**)`{.cpp}，甚至 `int main()`{.cpp}。
Qt 里有 `Q_UNUSED(object)` 宏。

Windows 下的 Git Bash 不能直接输入文件名打开文件，提示 Cannot execute binary file（我试着打开 docx 文件），
但 CMD 下可以，`$ demo.docx` 便可以自动用 Word（或者别的你关联的打开方式）打开这个文件。
当然，在 Bash 下输入 `cmd`{.bash} 是一种解决方案。

如何 base64 编码一个图片？

:   可以用 Firefox 浏览器，在 F12 下面，对着图片右键，可以“Copy Image Data-URL”
    ，就复制到了 Base64 编码的图片。

1450496760: Numbers
-------------------

一些数字：

用二进制可以快速地估算，下面是一些常用数字：

Hex | Bin
--- | ---
360 | 2^^8.5^^
10 | 2^^3.32^^
100 | 2^^6.64^^
1000 | 2^^9.96^^ &asymp; 2^^10^^
pi = 3.14 | 2^^1.651^^
e = 2.72 | 2^^1.44^^
$\sqrt{2} = 1.414$ | 2^^0.5^^
地球半径 R = 6371 km = 6371 &times; 10^^3^^ m | 2^^22.6^^

怎么用，举例：

比如你想知道赤道上一个经度对应的长度，

地球半径为 $R$ = 6371 千米 = 2 ^^22.6^^ m，
则 distance = $\frac{2\pi \times R}{360}$ = 2^^(1+1.651+22.6-8.5)^^ = 2^^10+6.75^^ = 1000 * 100 = 100 km。
和实际用计算器计算的 110 km 差不多。

你也看到我们需要反向计算 2^^x^^ 的十进制是多少，所以再列一个表：

Bin | Hex
--- | ---
2^^1^^ | 2
2^^2^^ | 4
2^^3^^ | 8
2^^4^^ | 16
2^^5^^ | 32
2^^6^^ | 64
2^^7^^ | 128
2^^8^^ | 256
2^^9^^ | 512 = 500
2^^10^^ | 1024 = 1000
2^^11^^ | 2048
2^^12^^ | 4096
2^^13^^ | 8192
2^^14^^ | 16384
2^^15^^ = 2^^10^^ * 2^^5^^ | 1000 * 32 = 32 k （实际为 32768）
2^^16^^ | 65536
2^^31^^ | 1k * 1k * 1k * 2 = 1m * 1k * 2 = 1g * 2 = 2g（2 billion） （实际为 2.147484e9）^[Control + R, `=`, `pow(2,31)`]
2^^32^^ | 4g

* k: thousand
* m: million
* g: billion

Value | SI[^SI]
----- | -------
1000 | k | kilo
1000^^2^^ | M | mega
1000^^3^^ | G | giga
1000^^4^^ | T | tera
1000^^5^^ | P | peta
1000^^6^^ | E | exa
1000^^7^^ | Z | zetta
1000^^8^^ | Y | yotta

Value | IEC[^IEC] | JEDEC
----- | --------- | -----
1024 | Ki | kibi | K | kilo
1024^^2^^ | Mi | mebi | M | mega
1024^^3^^ | Gi | gibi | G | giga
1024^^4^^ | Ti | tebi | – |
1024^^5^^ | Pi | pebi | – |
1024^^6^^ | Ei | exbi | – |
1024^^7^^ | Zi | zebi | – |
1024^^8^^ | Yi | yobi | –

[^SI]: The SI prefixes (metric prefix) are standardized for use in the
    International System of Units (SI) by the International Bureau of Weights
    and Measures (BIPM) in resolutions dating from 1960 to 1991.
[^IEC]: IEC 80000-13:2008 is an international standard that defines quantities
    and units used in information science, and specifies names and symbols for
    these quantities and units. The standard is published by the International
    Electrotechnical Commission (IEC) and is part of the group of standards
    called ISO/IEC 80000, published jointly by the IEC and the International
    Organization for Standardization (ISO).

#. We were unable to load Disqus. If you are a moderator please see our troubleshooting guide.
#. buzzword
#. Remember，Windows 开始菜单有个“默认程序”，`控制面板\程序\默认程序\设置关联`

`cat /etc/issue`{.bash }
`ifdown eth0 && ifup eth0`{.bash}
`ifdown --exclude=lo -a && sudo ifup --exclude=lo -a`{.bash}

Bing:

#. `related:http://sharelatex.com`
#. `inurl:<KEY_WORD>`

> 希望大家不要因为被关得太久，就忘记了自由的感觉

```bash
$ vim -p files*.txt
```

#. `c-o`, backward
#. `c-i`, forward
#. `c-]`, jump to
#. `:ju`, show jumpables
#. `earlier 10s`, 10 secs ago

#. 可能我是一个天生就爱折腾， 爱完美的男人（虽然我不是处女座）
#. 妈妈对你外表修饰和穿衣搭配的指点，包含了她浓浓的爱，当着她的面一定要虚心地全盘接受。在离开她的视线后，继续该穿啥穿啥。

idiomatic `[,ɪdɪə'mætɪk]` (惯用的；符合语言习惯的；通顺的)

```perl
#!/bin/perl

foreach (1..10) {
    print "Iteration number $_.\n\n";
    print "Please choose: last, next, redo, or none of the above? ";
    chomp(my $choice = <STDIN>);
    print "\n";
    last if $choice =~ /last/i;
    next if $choice =~ /next/i;
    redo if $choice =~ /redo/i;
    print "That wasn't any of the choice... onward!\n\n";
}
```

Learn Perl

#. [Tutorials - perldoc.perl.org](http://perldoc.perl.org/index-tutorials.html)
#. [perlreftut - perldoc.perl.org](http://perldoc.perl.org/perlreftut.html)

3333333333: MISC (TMP)
----------------------

在欧美国家，一些大红的明星因某一专辑，或者某一行为，成绩大不如前（单曲、专辑销售
量惨淡，演唱会无人买单、惹人讨厌等等）都可以称为“flop”。

```bash
# d: debug, e: evaluate (one liner), l: ?process line ending
$ perl -del # Perl REPL
```

```bash
$ set    KEY=val        # windows
$ setenv KEY val        # csh
$ export KEY=val        # bash
```

```bash
#!/bin/bash
FILES=./markdown/*
for fin in $FILES
do
    fout=${fin/markdown/articles}   # path       # smart
    fout=${fout/\.markdown/.html}   # extension  # smart
    pandoc $fin -t html5 -o $fout \
            --toc --smart --standalone \
            --template=template
done
```

~~上面的脚本很巧妙，我从来没想过可以用正则表达式。~~

VimFx

:   ```plain
    o               ; address bar
    O               ; search bar
    p               ; paste and go，
                    ; 和地址栏的 Bing 结合意味着你可以随时
                    ; 选择文字，复制，然后 p 搜索。
    P               ; paste and go in new window
    yy              ; yank tab url
    g/              ; links only
    /               ; normal text search
    gJ, gK, gw      ; move tab left, right, to new window
    g0, g^, g$      ; move to tab (first, first non-pinned, last)
    gp              ; pin tab
    gt, gT          ; next, previous tab (感觉 J，K 用起来是反的，果断抛弃)
    x, X            ; close, restore
    gxa, gx$        ; close multiple tabs
    s, sa           ; stop loading
    ```

Firefox 浏览器的优点：

#. 默认的字体大点。

`c-d`, bookmark
`c-h`, history
`c-b`, bookmarks sidebar
`c-s-h`, library list


```html
<img src="extension/skin/icon128.png" alt="" align="right">
```

![](http://www.imagemagick.org/Usage/img_diagrams/glyph_metrics.gif)

```cpp
int main(int argc, char **argv)
 {
     QApplication app(argc, argv);

     QTabWidget *tabWidget = new QTabWidget;

     QGraphicsScene scene;
     QGraphicsProxyWidget *proxy = scene.addWidget(tabWidget);

     QGraphicsView view(&scene);
     view.show();

     return app.exec();
 }

 int myfunc(int n)
 {
     QVarLengthArray<int, 1024> array(n + 1);
     ...
     return array[n];
 }
```

<kbd>Win+R</kbd>: %windir%

`net stop/start WuAuServ`{.cmd} (windows update)

```plain
In vim `g#` v.s. `#`

Jumplist `:h jumplist`, `:h CTRL-O` (older), `:h CTRL-I`, `:h ju[mp]`
```

#. “先辈的罪”（Sins of our Forefathers）
#. Mental Speedbump（头脑减速杠）
#. vim statistics: selection &rarr; `g<C-g>`{.vim}

`<link rel="stylesheet" href="main.css">`{.html}
  ~ link 是连接到一个内容，所以用 `href`{.html}

`<script type="text/javascript" src="main.js"></script>`{.html}
  ~ script 是脚本，插入到本地，所以是 `src`{.html}，类似 LaTeX 里的 `\input{path}`{.tex}

`<img src="http://gnat.qiniudn.com/pics/projection2.png" alt="" />`{.html}
  ~ img 也是插入的内容，所以用 `src`{.html}，`alt`{.html} 既可以在无法加载图片的时候显示提示，也可以用在 <kbd>Control+C</kbd>

`git remote set-url origin git@git.coding.net:xxxx/yyyy.git`{.bash}

<kbd>ctrl-t</kbd>, <kbd>ctrl-d</kbd>: Indent/un-indent in insert mode

```
:syntax off
:set syntax=perl

[{ block start
]} function end
```

#. <http://ww2.sinaimg.cn/large/6aa09e8fjw1ey30zhd9v0j20go11atcj.jpg>
#. <http://ww2.sinaimg.cn/bmiddle/6aa09e8fjw1ey2qlvrw54j217f1kkah6.jpg>
#. [Word of the Year](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zr5ge1j20yi0s678c.jpg)
#. [Why the 'Cry of Joy' Emoji?](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey43zsq9tgj20yi2lq7ma.jpg)

Emoji or Emojis（个人倾向于用这个）

谷大白话:

作为 fetish，cuckold 的嗜好是让老婆跟其他男性嘿嘿嘿并以此为乐。
而被老公出轨背叛的女性叫 cuckquean。 RT @谷大白话:#每日一词#
【戴绿帽子】cuckold。来自 cuckoo 杜鹃，因雌性常到别的鸟窝下蛋，
所以有了红杏出墙的含义。cuckold 可以是名词，指被戴绿帽子的男子。
也可以做动词，指给人戴绿帽子。形容词是 cuckolded。
还有种说法是 wearing the horns。
所以可以用手指在头上比划出角，表示辱骂对方是被戴绿帽子的乌龟。

Call me John Snow, I know nothing.

![谷大白话: 美国某网站的调查显示：
    61% 的人在淋浴中尿尿，41% 在泳池尿过尿。
    50% 的人擦屁股前会叠起厕纸，30% 把厕纸随便揉成一团。
    60% 擦屁股是从前往后，20% 是从后往前。43% 冲水前会看一眼马桶，
    37% 擦屁股后会看一眼厕纸。45% 表示上厕所前会把厕纸铺在马桶圈上，
    36% 用脚踩冲水按钮，35% 上厕所时不会坐在马桶圈上。](http://ww1.sinaimg.cn/large/6aa09e8fjw1ey3rjcbr4yj210k11awod.jpg)

```cpp
int i;
for(i = 0; i < argc; ++i)
{
    if(argv[i])
        commandLine.push_back(argv[i]);  // Reads each argument from the
                                         // command line and pushes it on the vector
    else
        return i;
}
return i;

string CommandLine::GetNextWord()
{
	if((int)pos < (int)commandLine.size())
		return commandLine[pos++];   // Retrieves the next word from the command line vector.
	else							 // State is maintained by 'pos'
		return "";
}
```

```cpp
enum ERRTYPE {NOERROR, WARNING, FATAL};

class VCOption
{
public:
	string vc;
	bool space;
	ERRTYPE error;
};

#include <string>
using namespace std;
#include "VCOption.h"
/* This class simply encapsulates
 * the three string items we'd like to return. */
class ReturnItem
{
public:
	ReturnItem() {bestMatch = ""; bestMap = ""; remainingString = ""; space = true; error=NOERROR;}
	~ReturnItem() {} ;
	// ReturnItem& operator=(ReturnItem const *rhs);
	string bestMatch, bestMap, remainingString;
	bool space;
	ERRTYPE error;
};

#define CCSTATE (0)
#define VCSTATE (1)
#define LINESIZE (80)

class Input
{
public:
	Input() {};
	~Input() {};
	int ReadInputFile(char const *fileName);
	int CreatePairsFromCode();
	ReturnItem BestMapping(string &origOpt);
private:
	bool AddPair(string other, string vc, bool space = true);
	bool AddPair(string other, string vc, ERRTYPE error);
	vector<pair<string, VCOption> > optionPairs;
};

#include <fstream>
#include <iostream>
#include <string>
#include "Input.h"
#include "ReturnItem.h"
#include "VCOption.h"

/*
Function Name: AddPair
Parameters:
string other - This is the switch from the "other" compiler.
string vc - This is the switch that 'other' maps to on VC.
Return Value: true
Actions: This pushes the pair <other, vc> onto the vector optionPairs.
*/
bool Input::AddPair(string other, string vc, bool space)
{
	VCOption vcOption;
	vcOption.space = space;
	vcOption.vc = vc;
	vcOption.error = NOERROR;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

bool Input::AddPair(string other, string vc, ERRTYPE error)
{
	VCOption vcOption;
	vcOption.space = true;
	vcOption.vc = vc;
	vcOption.error = error;
	optionPairs.push_back(make_pair(other, vcOption));
	return true;
}

/*
Function Name: ReadInputFile
Parameters:
char const *fileName - The name of the input file we will be reading from.
Return Value:
-1 if there is an error (unspecified what the error is)
1 if the function executes successfully
Actions: The Input::optionPairs vector is filled with the pairings as specified by the input
file named fileName.
*/
int Input::ReadInputFile(char const *fileName)
{

	if(fileName == NULL)
		return -1;
	string ccOption, vcOption;
	string option;
	char temp[LINESIZE];
	ifstream inputFile(fileName);
	if(!inputFile)
	{
		cerr << "No file named : " << fileName << endl;
		return -1;
	}
	bool spaceState = false;
	int state = CCSTATE;
	while(inputFile >> option)
	{
		switch(state)
		{
		case CCSTATE:
			if(option == "@@@")
			{
				inputFile.getline(temp, LINESIZE);
				break;
			}
			if(option == "~~~")
			{
				return 1;
			}
			if(option == "***")
			{
				spaceState = false;
				state = VCSTATE;
			}
			else
			{
				if(spaceState)
				{
					ccOption += " ";
				}
				spaceState = true;
				ccOption += option;
			}
			break;
		case VCSTATE:
			if(option == "!!!")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "###")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, false);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "EEE")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, FATAL);
				ccOption = "";
				vcOption = "";
			}
			else if(option == "^^^")
			{
				spaceState = false;
				state = CCSTATE;
				AddPair(ccOption, vcOption, WARNING);
				ccOption = "";
				vcOption = "";
			}
			else
			{
				if(spaceState)
				{
					vcOption += " ";
				}
				spaceState = true;
				vcOption += option;
			}
			break;
		default:
			cerr << "Invalid State" << endl;
			return -1;
		}
	}
	return 1;
}

// This code here just loads the optionPairs from the code.  It acts like ReadInputFile.
// This is only called if you define CCMEMORY
int Input::CreatePairsFromCode()
{
	AddPair("-Wall", "/Wall");
	AddPair("-O2", "/O2");
	AddPair("-c", "/c");
	AddPair("-S", "/s");
	AddPair("-E", "/EP");
   /*
    $ ./ccWrapper.exe test -E
    cl test /EP
    ...
    */

	AddPair("-o", "/Fe", false);
	AddPair("--help", "/?");
	AddPair("-ansi", "/Za");
	AddPair("-funsigned-char", "/J");
	AddPair("-pedantic", "/Za");
	AddPair("-pedantic-errors", "/Za");
	AddPair("-w", "/W0");
	AddPair("-ggdb", "/Zi");
	AddPair("-gstabs", "/Zi");
	AddPair("-gstabs+", "/Zi");
	AddPair("-gcoff", "/Zi");
	AddPair("-gxcoff", "/Zi");
	AddPair("-O0", "/Od");
	AddPair("-O1", "/O2");
	AddPair("-O2", "/O2");
	AddPair("-O3", "/Ox");
	AddPair("-Os", "/O1");
	AddPair("-float-store", "/Op");
	AddPair("-fno-default-inline", "/Ob0");
	AddPair("-fomit-frame-pointer", "/Oy");
	AddPair("-fno-inline", "/Ob0");
	AddPair("-finline-functions", "/Ob2");
	AddPair("-include", "/FI");
	AddPair("-nostdinc", "/X" );
	AddPair("-undef", "/u" );
	AddPair("-C", "/C" );
	AddPair("-P", "/P" );
	AddPair("-D", "/D");
	AddPair("-U", "/U");
	AddPair("-nodefaultlibs", "/link /NODEFAULTLIB");
	AddPair("-nostdlib",  "/link /NODEFAULTLIB");
	AddPair("-I", "/I");
	AddPair("-L", "/link /LIBPATH:");
	AddPair("-fpack-struct", "/Zp1");
	AddPair("-fstack-check", "/GS");
	return 1;
}

/*
Function Name: BestMapping
Parameters:
string &origOpt - The switch to be mapped from.
Return Value: ReturnItem
This ReturnItem class contains the .bestMatch string which is the best matching switch.
The .bestMap string is the VC switch that .bestMatch maps too.
The .remainingString is what is left of the origOpt string after you remove the .bestMatch string.
Actions: This method finds the switch that best matches origOpt.
If there is more than one switch that matches origOpt then the longest match is selected.
*/
ReturnItem Input::BestMapping(string &origOpt)
{
	ReturnItem bestItem;
	string currentStr;
	string::size_type idx;
	vector<pair<string, VCOption> >::iterator iterOpt, endOpt;
	endOpt = optionPairs.end();
	bestItem.remainingString = origOpt;
	for(iterOpt = optionPairs.begin(); iterOpt != endOpt; ++iterOpt)
	{
		currentStr = iterOpt->first;
		idx = origOpt.find(currentStr, 0);
		if(idx == 0)
		{
			if(currentStr.size() > bestItem.bestMatch.size())
			{
				bestItem.bestMatch = currentStr;
				bestItem.bestMap = iterOpt->second.vc;
				bestItem.remainingString = origOpt.substr(currentStr.size());
				bestItem.space = iterOpt->second.space;
				bestItem.error = iterOpt->second.error;
			}
		}
	}

	return bestItem;
}
```

```cpp
@@@ Sun Flag Mappings
@@@ Simple mappings
-xO1 *** /O2 !!!
-xO2 *** /O2 !!!
-xO3 *** /Ox !!!
-xO4 *** /Ox !!!
-xO5 *** /Ox !!!
-xO *** /O2 !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-O4 *** /Ox !!!
-O5 *** /Ox !!!
-D *** /D ###
-I *** /I !!!
-c *** /c !!!
-mt *** /MT !!!
-P *** /P !!!
-P *** /P !!!

@@@ More involved Mappings
-xspace *** /O1 !!!
-386 *** /G3 !!!
-486 *** /G4 !!!
-cg *** see -xcg
+d *** /Ob0 !!!
-g *** /Zi !!!
-E *** /EP !!!
-g0 *** /Zi !!!
-H *** /showIncludes !!!
-xhelp=flags *** /? !!!
-xsbfast *** /FR ###
-xsb *** /FR ###
-fns ***  !!!
-fns=yes ***  !!!
-fns=no *** /Op !!!
-fsimple=0 *** /Op !!!
-fsimple=1 *** /Op !!!
-fsimple=2 ***  !!!
-fstore *** /Op !!!
-G *** /LD !!!
-o  *** /Fe ###
-L *** /link /LIBPATH: !!!
+w *** /W4 !!!
+w2 *** /Wall !!!
-w *** /W1 !!!
-z *** /link !!!
-xwe *** /WX !!!
-fast *** /Ox !!!

@@@ gcc Flag Mappings
@@@ Simple Mappings
-Wall *** /Wall !!!
-O2  *** /O2 !!!
-c *** /c !!!
-S *** /s !!!
-O0 *** /Od !!!
-O1 *** /O2 !!!
-O2 *** /O2 !!!
-O3 *** /Ox !!!
-Os *** /O1 !!!
-C *** /C !!!
-P *** /P !!!
-D *** /D ###
-U *** /U ###
-I *** /I !!!

@@@ More involved Mappings
-E *** /EP !!!
-o *** /Fe ###
--help *** /? !!!
-ansi *** /Za !!!
-funsigned-char *** /J !!!
-pedantic *** /Za !!!
-pedantic-errors *** /Za !!!
-w *** /W0 !!!
-ggdb *** /Zi !!!
-gstabs *** /Zi !!!
-gstabs+ *** /Zi !!!
-gcoff *** /Zi !!!
-gxcoff *** /Zi !!!
-float-store *** /Op !!!
-fno-default-inline *** /Ob0 !!!
-fomit-frame-pointer *** /Oy !!!
-fno-inline *** /Ob0 !!!
-finline-functions *** /Ob2 !!!
-include *** /FI !!!
-nostdinc *** /X !!!
-undef *** /u !!!
-nodefaultlibs *** /link /NODEFAULTLIB !!!
-nostdlib *** /link /NODEFAULTLIB !!!
-L *** /link /LIBPATH: !!!
-fpack-struct *** /Zp1 !!!
-fstack-check *** /GS !!!
-Wno-unknown-pragmas ***  !!!
-Wno-format ***  !!!

@@@ Fatal Errors
-fvolatile *** EEE
-fvolatile-global *** EEE
-fvolatile-static *** EEE

@@@ Warnings
-Xlinker *** ^^^
-aux-info *** ^^^
-fno-asm *** ^^^
-fno-builtin *** ^^^
-fhosted *** ^^^
-ffreestanding *** ^^^
-trigraphs *** ^^^

~~~ All Done!
Nothing down here is processed.  Can be used for additional comments.
No mappings that I know of
-a
-xa

-v
--target-help
-x
-std
-traditional
-traditional-cpp
-fcond-mismatch
-fsigned-char
-fwritable-strings  --- sorta like /Gf
-fshort-wchar
-fno-access-control
-fcheck-new
-fconserve-space
-fno-const-strings
-finline-limit=
-ftrapv
-foptimize-sibling-calls
-fkeep-inline-functions
-fkeep-static-consts
-fno-function-cse
-fstrict-aliasing
-idirafter
-imacros
-iprefix
-iwithprefix
-M
-MM
-MD
-MMD
-MF
-MG
-MP
-MQ
-MT
-H
-A
-l
-dM
-dD
-dN
-dI
-fpreprocessed
-s
-statuc
-shared
-symbolic
-shared-libgcc
-static-libgcc

-u
-I-
-fshort-double
-funwind-tables
-fshared-data
-fno-ident
-pipe
-pass-exit-codes
```

```cpp
#include <string>
#include <iostream>
#include <string.h>
#include <process.h>
#include "Input.h"
#include "CommandLine.h"
#include "ReturnItem.h"

using namespace std;


int main(int argc, char *argv[])
{
	if(argc < 2)
		return -1;

	string theOutput = "cl ";
	string currentArg;
	ReturnItem mapping;
	Input theInput;
	CommandLine theCommandLine;

#ifndef CCMEMORY  // if we compile to read from memory or to read from a file
	if(theInput.ReadInputFile("ccFile.cfg") == -1)  // the file name is fixed
		return -1;
#else
	theInput.CreatePairsFromCode();
#endif
	// here we read in the command line
	theCommandLine.ReadCommandLine(argc - 1, &argv[1]);
	// iterate over each word in the command line
	while("" != (currentArg = theCommandLine.GetNextWord()))
	{
		// find the best mapping for each word
		mapping = theInput.BestMapping(currentArg);
		// create the output string
		if(mapping.error == FATAL)
		{
			cerr << "Error with flag " << mapping.bestMap << " -- ABORTING\n";
			return -1;
		}
		if(mapping.error == WARNING)
		{
			cerr << "Warning: Flag may not be properly supported: " << mapping.bestMap << endl;
		}
		theOutput += mapping.bestMap + mapping.remainingString;
		if(mapping.space)
			theOutput += " ";

	}
	cout << theOutput << endl;
	// execute the generated output string.  'cl.exe' will need to be in the users path
	system(theOutput.c_str());
	return 0;
}
```

#. <kbd>Control+f/b</kbd>, move one screen down/up.
#. The Viola/Jones Face Detector

A seminal approach to real-time object detection Key ideas

* Integral images for fast feature evaluation
* Boosting for feature selection
* Attentional cascade for fast rejection of non-face windows

#. P. Viola and M. Jones. Rapid object detection using a boosted cascade of simple features.  CVPR 2001.
#. P. Viola and M. Jones. Robust real-time face detection. IJCV 57(2), 2004.

1. Feature Computation
The “Integral” image representation
2. Feature Selection
The AdaBoost training algorithm
3. Real-timeliness
A cascade of classifiers

All faces share some similar properties
– The eyes region is darker than the
upper-cheeks.
– The nose bridge region is brighter than
the eyes.
– That is useful domain knowledge
• Need for encoding of Domain Knowledge:
– Location - Size:  eyes & nose bridge
region
– Value:  darker / brighter



Integral Image Representation (check back-up slide)

Using the integral image
representation we can compute the
value of any rectangular sum (part of
features) in  constant time
– For example the integral sum inside
rectangle D can be computed as:
ii(d) + ii(a) – ii(b) – ii(c)

Feature Computation: features must be
computed as quickly as possible
2. Feature Selection: select the most
discriminating features
3. Real-timeliness: must focus on potentially
positive image areas (that contain faces)

AdaBoost

:   #. stands for “Adaptive” boost
    #. Constructs a “strong” classifier as a
    #. linear combination of weighted simple
    #. “weak” classifiers

![parental advisory](http://img.xiami.net/images/album/img82/28482/4126011392865064_2.jpg)

#. &#x2611; [User Ciro Santilli 六四事件 法轮功 包卓轩 - Stack Overflow](http://stackoverflow.com/users/895245/ciro-santilli-%e5%85%ad%e5%9b%9b%e4%ba%8b%e4%bb%b6-%e6%b3%95%e8%bd%ae%e5%8a%9f-%e5%8c%85%e5%8d%93%e8%bd%a9)
#. &#x2611; [User Yu Hao - Stack Overflow](http://stackoverflow.com/users/1009479/yu-hao)


`OBJ = 		$(SRC:.c=.o)`{.makefile}

palette `['pælət]`

back off from '`\0`'

gilarus，快乐的基因, nomados，流浪的基因

#. &#x2610; (hex: `&#x2610;` / dec: `&#9744`;): ballot box (empty, that's how it's supposed to be)
#. &#x2611; (hex: `&#x2611;` / dec: `&#9745`;): ballot box with check
#. &#x2612; (hex: `&#x2612;` / dec: `&#9746`;): ballot box with x
#. &#x2713; (hex: `&#x2713;` / dec: `&#10003`;): check mark, equivalent to `&checkmark;` and `&check;` in most browsers
#. &#x2714; (hex: `&#x2714;` / dec: `&#10004`;): heavy check mark
#. &#x2717; (hex: `&#x2717;` / dec: `&#10007`;): ballot x
#. &#x2718; (hex: `&#x2718;` / dec: `&#10008`;): heavy ballot x

Checking out web fonts for tick symbols? Here's a ready to use s

#. &#x2611; [Unicode Character 0x2713 - "✓" from Unicode Map](http://www.unicodemap.org/details/0x2713/index.html)
#. &#x2611; [Tick symbol in HTML/XHTML - Stack Overflow](http://stackoverflow.com/questions/658044/tick-symbol-in-html-xhtml)

1449986090: Good CS Notes
-------------------------

#. &#x2610; [你所读的计算机科学方向，有哪些不错的讲义（Notes）？ - 书籍推荐 - 知乎](http://www.zhihu.com/question/38300204)
#. &#x2610; [6.858 / Fall 2014 / Schedule](http://css.csail.mit.edu/6.858/2014/schedule.html)
#. &#x2610; [CSCI-UA.0202: Operating Systems (Undergrad)](http://www.cs.nyu.edu/~mwalfish/classes/15sp/index.html)

1449826581: Read!!
------------------

#. &#x2610; [cirosantilli/cpp-cheat](https://github.com/cirosantilli/cpp-cheat)
#. &#x2610; [cirosantilli/linux-cheat](https://github.com/cirosantilli/linux-cheat)


1449216222: Bézier Curve
------------------------

Try online: [The Bézier Game](http://bezier.method.ac/)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/d/db/B%C3%A9zier_3_big.gif/240px-B%C3%A9zier_3_big.gif)
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/B%C3%A9zier_4_big.gif/240px-B%C3%A9zier_4_big.gif)

Refs

#. &#x2611; [Bézier curve - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/B%C3%A9zier_curve)
#. &#x2611; [Bézier Curve -- from Wolfram MathWorld](http://mathworld.wolfram.com/BezierCurve.html)

1449214645: Fonts
-----------------

Computer Font

:   A computer font (or font) is an electronic data file containing **a set of
    glyphs, characters, or symbols** such as dingbats^[sometimes more formally
    known as a printer's ornament or printer's character, is an ornament,
    character, or spacer used in typesetting, often employed for the creation
    of box frames.]. Although the term font first
    referred to a set of metal type sorts in one style and size, since the 1990s it
    is generally used to refer to a scalable set of digital shapes that may be
    printed at many different sizes.

    There are three basic kinds of computer font file data formats:

    #. **Bitmap fonts** consist of a matrix of dots or pixels representing the image of
       each glyph in each face and size.
    #. **Outline fonts** (also called vector fonts) use
       Bézier curves, drawing instructions and mathematical formulae to describe each
       glyph, which make the character outlines scalable to any size.
    #. **Stroke fonts** use a series of specified lines and additional
       information to define the profile, or size and shape of the line in a
       specific face, which together describe the appearance of the glyph.

Outline fonts

:   Outline fonts or **vector fonts** are collections of vector images,
    consisting of lines and curves defining the **boundary of glyphs**. Early vector
    fonts were used by vector monitors and vector plotters using their own internal
    fonts, usually with thin single strokes instead of thick outlined glyphs. The
    advent of desktop publishing brought the need for a universal standard to
    integrate the graphical user interface of the first Macintosh and laser
    printers. The term to describe the integration technology was WYSIWYG (What You
    See Is What You Get). **The universal standard was (and still is) Adobe
    PostScript.** Examples are **PostScript Type 1** and **Type 3 fonts**, **TrueType** and
    **OpenType**.

**PostScript fonts** are outline font specifications developed by Adobe Systems for
professional digital typesetting, which uses PostScript file format to encode
font information.

Type 1

:   Type 1 (also known as PostScript, PostScript Type 1, PS1, T1 or Adobe Type
    1) is the font format for single-byte digital fonts for use with Adobe Type
    Manager software and with PostScript printers. It can support font hinting.  It
    was originally a proprietary specification, but Adobe released the
    specification to third-party font manufacturers provided that all Type 1 fonts
    adhere to it.

    Type 1 fonts are natively supported in Mac OS X, and in Windows
    XP and later via the GDI API. (They are not supported in the Windows GDI+, WPF
    or DirectWrite APIs.)

Type 2, 3, 4, 5, 9, 10, 11, 14, 32, 42

**TrueType** is an outline font standard developed by Apple and Microsoft in the
late 1980s as a competitor to Adobe's Type 1 fonts used in PostScript. It has
become the most common format for fonts on both the Mac OS and Microsoft
Windows operating systems.

The primary strength of TrueType was originally that it offered font developers
a high degree of control over precisely how their fonts are displayed, right
down to particular pixels, at various font sizes. With widely varying rendering
technologies in use today, pixel-level control is no longer certain in a
TrueType font.

**OpenType** is a format for scalable computer fonts. It was built on its
predecessor TrueType, retaining TrueType's basic structure and adding many
intricate（复杂的） data structures for prescribing typographic behavior.
**OpenType is a registered trademark of Microsoft Corporation.**

Refs

#. &#x2611; [Computer font - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Computer_font#OUTLINE)
#. &#x2611; [PostScript fonts - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/PostScript_fonts)
#. &#x2611; [OpenType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/OpenType)
#. &#x2611; [Web Open Font Format - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Web_Open_Font_Format)
#. &#x2611; [TrueType - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/TrueType)

1447936648: 设置 Git 的 Upstream
--------------------------------

```bash
# 看看当前的 upstream
$ git remote -v
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 添加一个
$ git remote add coding https://git.coding.net/dvorak4tzx/blog.git

# 看看是否加入成功
$ git remote -v
coding	https://git.coding.net/dvorak4tzx/blog.git (fetch)
coding	https://git.coding.net/dvorak4tzx/blog.git (push)
origin	git@github.com:district10/blog.git (fetch)
origin	git@github.com:district10/blog.git (push)

# 把代码传上去
$ git push coding master

# 重命名一个 upstream
git remote rename coding backup

# 换个 url
$ git remote set-url backup git@github.com:USERNAME/OTHERREPOSITORY.git

# 删除 upstream
$ git remote rm backup

# 补充点备忘（`user.name` 和 `user.email` 就不说了）
$ git config --global core.editor vim
$ git remote add origin url.git
$ git push origin master
```

Refs

#. &#x2611; [github - Git push existing repo to a new and different remote repo server? - Stack Overflow](http://stackoverflow.com/questions/5181845/git-push-existing-repo-to-a-new-and-different-remote-repo-server)
#. &#x2611; [Changing a remote's URL - User Documentation](https://help.github.com/articles/changing-a-remote-s-url/)
#. &#x2611; [git命令之git remote的用法 - wangjia55的专栏 - 博客频道 - CSDN.NET](http://blog.csdn.net/wangjia55/article/details/8802490)

1447923065: 以前存的 Emojis
---------------------------

|            |      01     |      02     |      03     |      04     |      05     |      06     |      07     |      08     |      09     |      10     |
| :---------:| :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: | :---------: |
|     A      | ![][qq-001] | ![][qq-002] | ![][qq-003] | ![][qq-004] | ![][qq-005] | ![][qq-006] | ![][qq-007] | ![][qq-008] | ![][qq-009] | ![][qq-010] |
|     B      | ![][qq-011] | ![][qq-012] | ![][qq-013] | ![][qq-014] | ![][qq-015] | ![][qq-016] | ![][qq-017] | ![][qq-018] | ![][qq-019] | ![][qq-020] |
|     C      | ![][qq-021] | ![][qq-022] | ![][qq-023] | ![][qq-024] | ![][qq-025] | ![][qq-026] | ![][qq-027] | ![][qq-028] | ![][qq-029] | ![][qq-030] |
|     D      | ![][qq-031] | ![][qq-032] | ![][qq-033] | ![][qq-034] | ![][qq-035] | ![][qq-036] | ![][qq-037] | ![][qq-038] | ![][qq-039] | ![][qq-040] |
|     E      | ![][qq-041] | ![][qq-042] | ![][qq-043] | ![][qq-044] | ![][qq-045] | ![][qq-046] | ![][qq-047] | ![][qq-048] | ![][qq-049] | ![][qq-050] |
|     F      | ![][qq-051] | ![][qq-052] | ![][qq-053] | ![][qq-054] | ![][qq-055] | ![][qq-056] | ![][qq-057] | ![][qq-058] | ![][qq-059] | ![][qq-060] |
|     G      | ![][qq-061] | ![][qq-062] | ![][qq-063] | ![][qq-064] | ![][qq-065] | ![][qq-066] | ![][qq-067] | ![][qq-068] | ![][qq-069] | ![][qq-070] |
|     H      | ![][qq-071] | ![][qq-072] | ![][qq-073] | ![][qq-074] | ![][qq-075] | ![][qq-076] | ![][qq-077] | ![][qq-078] | ![][qq-079] | ![][qq-080] |
|     I      | ![][qq-081] | ![][qq-082] | ![][qq-083] | ![][qq-084] | ![][qq-085] | ![][qq-086] | ![][qq-087] | ![][qq-088] | ![][qq-089] | ![][qq-090] |
|     J      | ![][qq-091] | ![][qq-092] | ![][qq-093] | ![][qq-094] | ![][qq-095] | ![][qq-096] | ![][qq-097] | ![][qq-098] | ![][qq-099] | ![][qq-100] |
|     K      | ![][qq-101] | ![][qq-102] | ![][qq-103] | ![][qq-104] | ![][qq-105] | ![][qq-106] | ![][qq-107] | ![][qq-108] | ![][qq-109] | ![][qq-110] |
|     L      | ![][qq-111] | ![][qq-112] | ![][qq-113] | ![][qq-114] | ![][qq-115] | ![][qq-116] | ![][qq-117] | ![][qq-118] | ![][qq-119] | ![][qq-120] |
|     M      | ![][qq-121] | ![][qq-122] | ![][qq-123] | ![][qq-124] | ![][qq-125] | ![][qq-126] | ![][qq-127] | ![][qq-128] | ![][qq-129] | ![][qq-130] |
|     N      | ![][qq-131] | ![][qq-132] | ![][001]    | ![][002]    | ![][003]    | ![][004]    | ![][005]    |

[qq-001]: http://gnat-tang-shared-image.qiniudn.com/emoji/1.gif
[qq-002]: http://gnat-tang-shared-image.qiniudn.com/emoji/2.gif
[qq-003]: http://gnat-tang-shared-image.qiniudn.com/emoji/3.gif
[qq-004]: http://gnat-tang-shared-image.qiniudn.com/emoji/4.gif
[qq-005]: http://gnat-tang-shared-image.qiniudn.com/emoji/5.gif
[qq-006]: http://gnat-tang-shared-image.qiniudn.com/emoji/6.gif
[qq-007]: http://gnat-tang-shared-image.qiniudn.com/emoji/7.gif
[qq-008]: http://gnat-tang-shared-image.qiniudn.com/emoji/8.gif
[qq-009]: http://gnat-tang-shared-image.qiniudn.com/emoji/9.gif
[qq-010]: http://gnat-tang-shared-image.qiniudn.com/emoji/10.gif
[qq-011]: http://gnat-tang-shared-image.qiniudn.com/emoji/11.gif
[qq-012]: http://gnat-tang-shared-image.qiniudn.com/emoji/12.gif
[qq-013]: http://gnat-tang-shared-image.qiniudn.com/emoji/13.gif
[qq-014]: http://gnat-tang-shared-image.qiniudn.com/emoji/14.gif
[qq-015]: http://gnat-tang-shared-image.qiniudn.com/emoji/15.gif
[qq-016]: http://gnat-tang-shared-image.qiniudn.com/emoji/16.gif
[qq-017]: http://gnat-tang-shared-image.qiniudn.com/emoji/17.gif
[qq-018]: http://gnat-tang-shared-image.qiniudn.com/emoji/18.gif
[qq-019]: http://gnat-tang-shared-image.qiniudn.com/emoji/19.gif
[qq-020]: http://gnat-tang-shared-image.qiniudn.com/emoji/20.gif
[qq-021]: http://gnat-tang-shared-image.qiniudn.com/emoji/21.gif
[qq-022]: http://gnat-tang-shared-image.qiniudn.com/emoji/22.gif
[qq-023]: http://gnat-tang-shared-image.qiniudn.com/emoji/23.gif
[qq-024]: http://gnat-tang-shared-image.qiniudn.com/emoji/24.gif
[qq-025]: http://gnat-tang-shared-image.qiniudn.com/emoji/25.gif
[qq-026]: http://gnat-tang-shared-image.qiniudn.com/emoji/26.gif
[qq-027]: http://gnat-tang-shared-image.qiniudn.com/emoji/27.gif
[qq-028]: http://gnat-tang-shared-image.qiniudn.com/emoji/28.gif
[qq-029]: http://gnat-tang-shared-image.qiniudn.com/emoji/29.gif
[qq-030]: http://gnat-tang-shared-image.qiniudn.com/emoji/30.gif
[qq-031]: http://gnat-tang-shared-image.qiniudn.com/emoji/31.gif
[qq-032]: http://gnat-tang-shared-image.qiniudn.com/emoji/32.gif
[qq-033]: http://gnat-tang-shared-image.qiniudn.com/emoji/33.gif
[qq-034]: http://gnat-tang-shared-image.qiniudn.com/emoji/34.gif
[qq-035]: http://gnat-tang-shared-image.qiniudn.com/emoji/35.gif
[qq-036]: http://gnat-tang-shared-image.qiniudn.com/emoji/36.gif
[qq-037]: http://gnat-tang-shared-image.qiniudn.com/emoji/37.gif
[qq-038]: http://gnat-tang-shared-image.qiniudn.com/emoji/38.gif
[qq-039]: http://gnat-tang-shared-image.qiniudn.com/emoji/39.gif
[qq-040]: http://gnat-tang-shared-image.qiniudn.com/emoji/40.gif
[qq-041]: http://gnat-tang-shared-image.qiniudn.com/emoji/41.gif
[qq-042]: http://gnat-tang-shared-image.qiniudn.com/emoji/42.gif
[qq-043]: http://gnat-tang-shared-image.qiniudn.com/emoji/43.gif
[qq-044]: http://gnat-tang-shared-image.qiniudn.com/emoji/44.gif
[qq-045]: http://gnat-tang-shared-image.qiniudn.com/emoji/45.gif
[qq-046]: http://gnat-tang-shared-image.qiniudn.com/emoji/46.gif
[qq-047]: http://gnat-tang-shared-image.qiniudn.com/emoji/47.gif
[qq-048]: http://gnat-tang-shared-image.qiniudn.com/emoji/48.gif
[qq-049]: http://gnat-tang-shared-image.qiniudn.com/emoji/49.gif
[qq-050]: http://gnat-tang-shared-image.qiniudn.com/emoji/50.gif
[qq-051]: http://gnat-tang-shared-image.qiniudn.com/emoji/51.gif
[qq-052]: http://gnat-tang-shared-image.qiniudn.com/emoji/52.gif
[qq-053]: http://gnat-tang-shared-image.qiniudn.com/emoji/53.gif
[qq-054]: http://gnat-tang-shared-image.qiniudn.com/emoji/54.gif
[qq-055]: http://gnat-tang-shared-image.qiniudn.com/emoji/55.gif
[qq-056]: http://gnat-tang-shared-image.qiniudn.com/emoji/56.gif
[qq-057]: http://gnat-tang-shared-image.qiniudn.com/emoji/57.gif
[qq-058]: http://gnat-tang-shared-image.qiniudn.com/emoji/58.gif
[qq-059]: http://gnat-tang-shared-image.qiniudn.com/emoji/59.gif
[qq-060]: http://gnat-tang-shared-image.qiniudn.com/emoji/60.gif
[qq-061]: http://gnat-tang-shared-image.qiniudn.com/emoji/61.gif
[qq-062]: http://gnat-tang-shared-image.qiniudn.com/emoji/62.gif
[qq-063]: http://gnat-tang-shared-image.qiniudn.com/emoji/63.gif
[qq-064]: http://gnat-tang-shared-image.qiniudn.com/emoji/64.gif
[qq-065]: http://gnat-tang-shared-image.qiniudn.com/emoji/65.gif
[qq-066]: http://gnat-tang-shared-image.qiniudn.com/emoji/66.gif
[qq-067]: http://gnat-tang-shared-image.qiniudn.com/emoji/67.gif
[qq-068]: http://gnat-tang-shared-image.qiniudn.com/emoji/68.gif
[qq-069]: http://gnat-tang-shared-image.qiniudn.com/emoji/69.gif
[qq-070]: http://gnat-tang-shared-image.qiniudn.com/emoji/70.gif
[qq-071]: http://gnat-tang-shared-image.qiniudn.com/emoji/71.gif
[qq-072]: http://gnat-tang-shared-image.qiniudn.com/emoji/72.gif
[qq-073]: http://gnat-tang-shared-image.qiniudn.com/emoji/73.gif
[qq-074]: http://gnat-tang-shared-image.qiniudn.com/emoji/74.gif
[qq-075]: http://gnat-tang-shared-image.qiniudn.com/emoji/75.gif
[qq-076]: http://gnat-tang-shared-image.qiniudn.com/emoji/76.gif
[qq-077]: http://gnat-tang-shared-image.qiniudn.com/emoji/77.gif
[qq-078]: http://gnat-tang-shared-image.qiniudn.com/emoji/78.gif
[qq-079]: http://gnat-tang-shared-image.qiniudn.com/emoji/79.gif
[qq-080]: http://gnat-tang-shared-image.qiniudn.com/emoji/80.gif
[qq-081]: http://gnat-tang-shared-image.qiniudn.com/emoji/81.gif
[qq-082]: http://gnat-tang-shared-image.qiniudn.com/emoji/82.gif
[qq-083]: http://gnat-tang-shared-image.qiniudn.com/emoji/83.gif
[qq-084]: http://gnat-tang-shared-image.qiniudn.com/emoji/84.gif
[qq-085]: http://gnat-tang-shared-image.qiniudn.com/emoji/85.gif
[qq-086]: http://gnat-tang-shared-image.qiniudn.com/emoji/86.gif
[qq-087]: http://gnat-tang-shared-image.qiniudn.com/emoji/87.gif
[qq-088]: http://gnat-tang-shared-image.qiniudn.com/emoji/88.gif
[qq-089]: http://gnat-tang-shared-image.qiniudn.com/emoji/89.gif
[qq-090]: http://gnat-tang-shared-image.qiniudn.com/emoji/90.gif
[qq-091]: http://gnat-tang-shared-image.qiniudn.com/emoji/91.gif
[qq-092]: http://gnat-tang-shared-image.qiniudn.com/emoji/92.gif
[qq-093]: http://gnat-tang-shared-image.qiniudn.com/emoji/93.gif
[qq-094]: http://gnat-tang-shared-image.qiniudn.com/emoji/94.gif
[qq-095]: http://gnat-tang-shared-image.qiniudn.com/emoji/95.gif
[qq-096]: http://gnat-tang-shared-image.qiniudn.com/emoji/96.gif
[qq-097]: http://gnat-tang-shared-image.qiniudn.com/emoji/97.gif
[qq-098]: http://gnat-tang-shared-image.qiniudn.com/emoji/98.gif
[qq-099]: http://gnat-tang-shared-image.qiniudn.com/emoji/99.gif
[qq-100]: http://gnat-tang-shared-image.qiniudn.com/emoji/100.gif
[qq-101]: http://gnat-tang-shared-image.qiniudn.com/emoji/101.gif
[qq-102]: http://gnat-tang-shared-image.qiniudn.com/emoji/102.gif
[qq-103]: http://gnat-tang-shared-image.qiniudn.com/emoji/103.gif
[qq-104]: http://gnat-tang-shared-image.qiniudn.com/emoji/104.gif
[qq-105]: http://gnat-tang-shared-image.qiniudn.com/emoji/105.gif
[qq-106]: http://gnat-tang-shared-image.qiniudn.com/emoji/106.gif
[qq-107]: http://gnat-tang-shared-image.qiniudn.com/emoji/107.gif
[qq-108]: http://gnat-tang-shared-image.qiniudn.com/emoji/108.gif
[qq-109]: http://gnat-tang-shared-image.qiniudn.com/emoji/109.gif
[qq-110]: http://gnat-tang-shared-image.qiniudn.com/emoji/110.gif
[qq-111]: http://gnat-tang-shared-image.qiniudn.com/emoji/111.gif
[qq-112]: http://gnat-tang-shared-image.qiniudn.com/emoji/112.gif
[qq-113]: http://gnat-tang-shared-image.qiniudn.com/emoji/113.gif
[qq-114]: http://gnat-tang-shared-image.qiniudn.com/emoji/114.gif
[qq-115]: http://gnat-tang-shared-image.qiniudn.com/emoji/115.gif
[qq-116]: http://gnat-tang-shared-image.qiniudn.com/emoji/116.gif
[qq-117]: http://gnat-tang-shared-image.qiniudn.com/emoji/117.gif
[qq-118]: http://gnat-tang-shared-image.qiniudn.com/emoji/118.gif
[qq-119]: http://gnat-tang-shared-image.qiniudn.com/emoji/119.gif
[qq-120]: http://gnat-tang-shared-image.qiniudn.com/emoji/120.gif
[qq-121]: http://gnat-tang-shared-image.qiniudn.com/emoji/121.gif
[qq-122]: http://gnat-tang-shared-image.qiniudn.com/emoji/122.gif
[qq-123]: http://gnat-tang-shared-image.qiniudn.com/emoji/123.gif
[qq-124]: http://gnat-tang-shared-image.qiniudn.com/emoji/124.gif
[qq-125]: http://gnat-tang-shared-image.qiniudn.com/emoji/125.gif
[qq-126]: http://gnat-tang-shared-image.qiniudn.com/emoji/126.gif
[qq-127]: http://gnat-tang-shared-image.qiniudn.com/emoji/127.gif
[qq-128]: http://gnat-tang-shared-image.qiniudn.com/emoji/128.gif
[qq-129]: http://gnat-tang-shared-image.qiniudn.com/emoji/129.gif
[qq-130]: http://gnat-tang-shared-image.qiniudn.com/emoji/130.gif
[qq-131]: http://gnat-tang-shared-image.qiniudn.com/emoji/131.gif
[qq-132]: http://gnat-tang-shared-image.qiniudn.com/emoji/132.gif
[001]: http://gnat-tang-shared-image.qiniudn.com/emoj/green-happy.png
[002]: http://gnat-tang-shared-image.qiniudn.com/emoj/red-angry.png
[003]: http://gnat-tang-shared-image.qiniudn.com/emoj/white-question.png
[004]: http://gnat-tang-shared-image.qiniudn.com/emoj/yellow-plain.png
[005]: http://gnat-tang-shared-image.qiniudn.com/pic/gnat-favicon.ico

1447650064: Craigslist
----------------------

被 GFW 墙了。其实不怎么样，天朝这样的网站多了去。（不过还是要吐槽这蛋疼的 GFW。）

Refs

#. &#x2611; [Craigslist - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Craigslist)
#. &#x2611; [Craigslist_百度百科](http://baike.baidu.com/view/703783.htm)

1447597757: Vim Macro
---------------------

就跟其它所有编辑器一样，宏很好用。

但我不知道在 Vim 里怎么 apply 一个 macro 到文件末尾（在 Notepad++ 里很容易）。

查到的是：`VG:normal @x` 或者 `:%normal @x`，总之就是在一定范围内，用 `normal @x`。
~~可惜我没成功，不知道是不是系统是 Windows 的原因。~~又试了一下，Windows 也可以。

Refs

#. &#x2610; [replay a vim macro until end of buffer - Stack Overflow](http://stackoverflow.com/questions/1291962/replay-a-vim-macro-until-end-of-buffer)

1447597000: NetBIOS Names
-------------------------

Character | ASCII Code  |  Hex Code
--------- | ----------- | -----------
A             | EB   |  45 42
B             | EC   |  45 43
C             | ED   |  45 44
D             | EE   |  45 45
E             | EF   |  45 46
F             | EG   |  45 47
G             | EH   |  45 48
...           | ...  |  ...

NOTE: The above mapping list can be useful while reading network traces because information is sent on the wire in the above encoded format.

（世上还有这么神奇的表示法。）

Refs

#. &#x2611; [Microsoft Support](https://support.microsoft.com/en-us/kb/194203)

1447595203: HTML Entity
-----------------------

在 [Learning HTML](post-0022-learning-html.html#html-entities) 里有部分笔记。
但感觉不够，有时候我都开始用 LaTeX 来标记，但那也太蠢了……

℃，℉，★，☆，☺，☻，☼

* &quot; `&quot;`{.html}
* &amp; `&amp;`{.html}
* &nbsp; `&nbsp;`{.html}
* &yen; `&yen;`{.html}
* &brvbar; `&brvbar;`{.html} broken vertical bar
* &sect; `&sect;`{.html}
* &laquo; `&laquo;`{.html} left double angle quotes
* &raquo; `&raquo;`{.html}
* &deg; `&deg;`{.html}
* &plusmn; `&plusmn;`{.html} plus minus
* &micro; `&micro;`{.html}
* &para; `&para;`{.html}
* &iquest; `&iquest;`{.html}
* &frac14; `&frac14;`{.html}
* &frac12; `&frac12;`{.html}
* &frac34; `&frac34;`{.html}
* &times; `&times;`{.html}
* &divide; `&divide;`{.html}
* &aelig; `&aelig;`{.html} latin small letter ae
* &bull; `&bull;`{.html} bullet
* &hellip; `&hellip;`{.html} horizontal ellipsis
* &prime; `&prime;`{.html}
* &Prime; `&Prime;`{.html}
* &frasl; `&frasl;`{.html} fraction slash
* &larr; `&larr;`{.html}
* &rarr; `&rarr;`{.html}
* &uarr; `&uarr;`{.html}
* &darr; `&darr;`{.html}
* &harr; `&harr;`{.html}
* &lArr; `&lArr;`{.html}
* &rArr; `&rArr;`{.html}
* &uArr; `&hearts;`{.html}
* &dArr; `&dArr;`{.html}
* &hArr; `&hArr;`{.html}
* &crarr; `&crarr;`{.html} downwards arrow wiht corner leftwards (carriage return)
* &not; `&not;`{.html}
* &forall; `&forall;`{.html}
* &exist; `&exist;`{.html}
* &part; `&part;`{.html}
* &nabla; `&nabla;`{.html} `['næblə]`, 劈形算符；微分算符
* &isin; `&isin;`{.html}
* &notin; `&notin;`{.html}
* &ni; `&ni;`{.html}
* &prod; `&prod;`{.html}
* &sum; `&sum;`{.html}
* &minus; `&minus;`{.html}
* &lowast; `&lowast;`{.html} asterisk
* &radic; `&radic;`{.html} square root
* &prop; `&prop;`{.html}
* &infin; `&infin;`{.html}
* &ang; `&ang;`{.html}
* &and; `&and;`{.html}
* &or; `&or;`{.html}
* &cap; `&cap;`{.html}
* &cup; `&cup;`{.html}
* &int; `&int;`{.html} integral
* &there4; `&there4;`{.html} therefore
* &cong; `&cong;`{.html} approximately equal to
* &asymp; `&asymp;`{.html} almost equal to
* &ne; `&ne;`{.html}
* &equiv; `&equiv;`{.html}
* &lt; `&lt;`{.html}
* &gt; `&gt;`{.html}
* &le; `&le;`{.html}
* &ge; `&ge;`{.html}
* &sub; `&sub;`{.html} subset
* &sup; `&sup;`{.html} superset
* &sube; `&sube;`{.html}
* &supe; `&supe;`{.html}
* &nsub; `&nsub;`{.html}
* &oplus; `&oplus;`{.html} circled plus
* &otimes; `&otimes;`{.html} circled times
* &perp; `&perp;`{.html} up tack
* &sdot; `&sdot;`{.html}
* &lceil; `&lceil;`{.html}
* &rceil; `&rceil;`{.html}
* &lfloor; `&lfloor;`{.html}
* &rfloor; `&rfloor;`{.html}
* &lang; `&lang;`{.html}
* &rang; `&rang;`{.html}
* &loz; `&loz;`{.html} lozenge, `['lɑzɪndʒ]`, 菱形
* &hearts; `&hearts;`{.html}

<!--
![WWII "ruptured duck" Honorable Discharge Emblem lozenge](https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Ruptured_Duck_patch.JPG/220px-Ruptured_Duck_patch.JPG)
-->

Refs

#. &#x2611; [HTML Codes - Table of ascii characters and symbols](http://www.ascii.cl/htmlcodes.htm)
#. &#x2611; [Entity Reference](http://arpc65.arm.ac.uk/~hmm/Entity_Reference.html)
#. &#x2611; [List of XML and HTML character entity references - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references)
#. &#x2611; [List of emoticons - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/List_of_emoticons)

1447590832: 赋值表达式
----------------------

Assignment Expression

:   **An assignment expression has the value of the left operand after the assignment.**

    出自 C99 standard, section 6.5.16

有赋值表达式的情况下

:   ```python
    if result=func1(...):
        print func2(result)
    ```

无赋值表达式的情况下

:   ```python
    result=func1(...)
    if result:
        print func2(result)
    ```

然后你就知道什么叫赋值表达式了。

Python: `import this`{.python} => The Zen of Python, by Tim Peters

:   ```plain
    Beautiful is better than ugly.
    **Explicit is better than implicit.**
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than right now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!
    ```

Refs

#. &#x2611; [为什么我不喜欢赋值表达式 - SegmentFault](http://segmentfault.com/a/1190000000402506)
#. &#x2611; [c - What does an assignment return? - Stack Overflow](http://stackoverflow.com/questions/9514569/what-does-an-assignment-return)
#. &#x2611; [C99 - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/C99#References)

Read more

#. &#x2610; [Memory part 5: What programmers can do [LWN.net]](https://lwn.net/Articles/255364/)
#. &#x2611; [Yoda 表示法错在哪里](http://www.yinwang.org/blog-cn/2013/04/14/yoda-notation/)

1447577960: To Read
-------------------

有些是以前读过的，但觉得应再读一遍。

&#x2610; [Citation signal - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Citation_signal)

:   A Legal **citation signal** or **introductory signal** is a set of brief abbreviated phrases or
    words used to clarify the authority or significance of a legal citation as it relates to a proposition.

    * Signal Details
        + Signals that indicate **support**

            #. no signal（直接在后面把引用列出来）
            #. *e.g.*, "exempli gratia"（比如说）
               > The placebo effect is well established. See, *e.g.*, Anne Harrington, The Placebo Effect: An Interdisciplinary Exploration (1999).
            #. Accord（还有，也）
              ~ “I have just cited something that supports my proposition, and now here’s another thing that supports it too.”
            #. See（这个很直接，不解释了）
            #. See also
            #. *Cf.*, compare（就像是说：“他们也是类似的观点”）

               > The Massachusetts Court of Appeals did not reach that question and we decline to address it in the first instance.
               > *Cf.* Coy v. Iowa, 487 U.S. 1012, 1021-1022, 108 S.Ct. 2798, 101 L.Ed.2d 857 (1988).

        + Signals that indicate **background material**
            #. See generally
        + Signals that indicate **contradiction**
            #. *Contra*
            #. But see
            #. *But cf.*
        + Signals that indicate **a useful comparison**
            #. Compare _____ with _______
            #.
        + Using signals as verbs（这是在 footnote 里常用的）
            #. > See Christina L. Anderson, Comment, Double Jeopardy: The Modern Dilemma for Juvenile Justice,
               > 152 U. Pa. L. Rev. 1181, 1204-07 (2004) (discussing four main types of restorative justice programs).
            #. "*Cf.*" becomes "compare" and "*e.g.*" becomes "for example" when these signals are used as verbs.

    * Signal formatting（TODO）

    Read more | 下面是关于 citation 和英文写作比较著名的几本书

    #. [The Bluebook: A Uniform System of Citation](https://en.wikipedia.org/wiki/Bluebook)
    #. [The Chicago Manual of Style Online: Chicago-Style Citation Quick Guide](http://www.chicagomanualofstyle.org/tools_citationguide.html)
    #. [The Elements of Style (豆瓣)](http://book.douban.com/subject/1433835/)
    #. [Style (豆瓣)](http://book.douban.com/subject/4107521/)

&#x2610; [Pitfalls of C](http://www.math.pku.edu.cn/teachers/qiuzy/c/reading/pitfall.htm)

:   这书居然在网上直接放着（其实考研复试那段时间我看完了，有时间再看一下，note some）

&#x2610; [裘宗燕主页 :: Main Page of Qiu Zongyan](http://www.math.pku.edu.cn/teachers/qiuzy/)

:   从 C Traps and Pitfalls 看到这里。这老师很著名。

    里面有一些课程：

    #. 2015年春季课程：计算概论（基于Python的课程）
    #. 2014年秋季课程：数据结构（基于Python的课程）
    #. 2014年春季课程：计算概论（基于Python的课程）
    #. 2014年春季课程：程序设计技术与方法（面向数学学院和信息学院三年级本科生）
       采用MIT的著名教科书Structure and Interpretation of Computer Programs。
    #. 2012年秋季课程：程序设计技术与方法
    #. 2012年春季课程：程序设计语言原理（研究生课程）
    #. 2011年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：程序设计技术与方法
    #. 2010年秋季课程：算法与数据结构---基于Maple的课程
    #. 2010年春季课程：形式化方法 --- 基于 B 方法的软件开发（研究生课）
    #. 2010年春季课程：低年级讨论班（软件）
    #. 2009年秋季课程：程序设计技术与方法


&#x2610; [Requirements for Chinese Text Layout 中文排版需求](http://www.w3.org/TR/clreq/)

:   [w3c/clreq](https://github.com/w3c/clreq)

    句號 `U+3002` IDEOGRAPHIC FULL STOP `[。]`、逗號 `U+FF0C` FULLWIDTH COMMA `[，]`
    以及頓號 `U+3001` IDEOGRAPHIC COMMA `[、]`。句號表示語句結束、逗點表示語氣停頓、
    頓號使用於並列連用、表示次序的字詞之間。

    許多理工書籍、科技文獻、西文教科书语法书籍等內含大量西文詞句，並採用橫排，為求標點符號體例一致，
    也有採用 `U+FF0E` FULLWIDTH FULL STOP `[．]` 為句號、採 `U+002C` COMMA `[,]` 或 `U+FF0C` FULLWIDTH COMMA `[，]`
    為逗號與頓號的案例。^[我也记得从哪儿看到论文里中文也最好用英文标点。]

    橫排時，西文使用比例字體；阿拉伯數字則常用比例字體或等寬字體。
    原則上，漢字與西文字母、數字間使用四分之一個漢字寬的字距或空白。
    但西文出現在行頭或行尾時，則毋須加入空白。（最好中英文就之间加个空格，see [中文排版指北]）
    或可使用西文詞間空格（U+0020 SPACE [ ]，其寬度隨不同字體有所變化）。

&#x2610; [Caliphate - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Caliph)

:   哈里发，`key-lif, kal-if`

1447562957: Je suis Charlie
---------------------------

"Je suis Charlie" (French pronunciation: `​[ʒə sɥi ʃaʁli]`, French for "**I am Charlie**") is
a slogan and a logo created by French art director Joachim Roncin and adopted
by supporters of freedom of speech and freedom of the press after the 7 January 2015 massacre
in which twelve people were killed at the offices of the French satirical weekly newspaper Charlie Hebdo.

![The front cover of edition of 14 January 2015, with a cartoon in the same style
  as 3 November 2011 cover, uses the phrase "Je suis Charlie"](https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg/220px-Charlie_Hebdo_Tout_est_pardonn%C3%A9.jpg)

Refs

#. [Je suis Charlie - Wikipedia, the free encyclopedia](https://en.wikipedia.org/wiki/Je_suis_Charlie)

1447560321: Marked
------------------

Markded

:   ```html
    <!doctype html>
    <html>
    <head>
      <meta charset="utf-8"/>
      <title>Marked in the browser</title>
    </head>
    <body>
    <div class="tzxMarked">**nice**</div>
    <div class="tzxMarked">
    # good
    **bad**
    ## nice
    ## terrible
    > quoted
    </div>

    <script src="lib/marked.js"></script>
    <script>
    tzxMarkeds = document.getElementsByClassName('tzxMarked');
    for ( var i = 0; i < tzxMarkeds.length; ++i ) {
        m = tzxMarkeds[i];
        ms = m.textContent;
        console.log( ms );
        m.innerHTML = marked( ms );
    }
    </script>
    </body>
    </html>
    ```

Strapdown

:   ```html
    <!DOCTYPE html>
    <html>
    <title>Hello Strapdown</title>

    <xmp theme="united" style="display:none;">
    # Markdown text goes in here

    ## Chapter 1

    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
    et dolore magna aliqua.

    ## Chapter 2

    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
    aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
    culpa qui officia deserunt mollit anim id est laborum.
    </xmp>

    <script src="http://strapdownjs.com/v/0.2/strapdown.js"></script>
    </html>
    ```

Refs

#. [chjj/marked](https://github.com/chjj/marked)
#. [Strapdown.js - Instant and elegant Markdown documents](http://strapdownjs.com/)

1447555692: Get Emoji
---------------------

那什么 [Emoji cheat sheet for GitHub, Basecamp and other services](http://www.emoji-cheat-sheet.com/)，
不比这个好：[Emoji searcher](http://emoji.muan.co/)

![Emoji 的各种玩法……](https://cloud.githubusercontent.com/assets/1369170/8635052/e333474e-27c7-11e5-8af8-5b0bc2281095.gif)

:sweat_smile:

Refs

#. [notwaldorf/emoji-translate](https://github.com/notwaldorf/emoji-translate)

1447490203: BALLOT BOX
----------------------

Unicode Block (Miscellaneous Symbols)

:   `U+2600` ~ `U+26FF`, #characters = 256

    BALLOT BOX WITH CHECK
      ~ &#x2611; `&#x2611;`{.html}

    BALLOT BOX
      ~ &#x2610; `&#x2610;`{.html}

ballot 英 `['bælət]` 美 `['bælət]` n. 投票；投票用纸；投票总数 vi. 投票；抽签决定

Refs

#. [Unicode Character 'BALLOT BOX' (U+2610)](http://www.fileformat.info/info/unicode/char/2610/index.htm)
#. [Unicode Character 'BALLOT BOX WITH CHECK' (U+2611)](http://www.fileformat.info/info/unicode/char/2611/index.htm)

1447469470: French Terror Attacks
---------------------------------

French terror attacks: Victim obituaries^[obituaries `oh-bich-oo-er-ee` n. 讣告；讣闻（obituary的复数形式）]

Twelve people died when a bloody attack was launched on the office of France's satirical magazine Charlie Hebdo. The following day a policewoman was murdered by Amedy Coulibaly, who held up a Jewish supermarket the next day, killing four people. Here are brief profiles of all 17 victims.

```
![19 Sep 2012 issue: An Orthodox Jew pushes an old Muslim in a wheelchair, both shouting “You mustn’t make fun!”](http://ichef-1.bbci.co.uk/news/624/media/images/80116000/jpg/_80116101_charliemuslimandjew464.jpg)
```

死的很多 cartoonist 和 editor，以及一两个 economist，

警察里有 Ahmed Merabet，是个 muslim，"He was a Muslim - a fact picked up by bloggers seeking to defend the community against "terrorist" slurs."

Witnesses have been describing the dramatic events in France, where two sieges came to a violent end.

Hostage's mother:

> "My daughter, she's in the supermarket. She's with her Jewish boyfriend. They went shopping.
> he called me 10 minutes ago. She said mum - there's dead people."

Golda, shopper

> "There is a big Jewish community in the area - this area is actually in the middle of three Jewish communities.
> "Do I feel threatened? Yes. For the Jewish community, once again we are being attacked."

```
![Video footage showed two gunmen firing assault weapons at police in the street outside the office](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124628_025311653-1.jpg)

![France has been left reeling from the brutal attack](http://ichef.bbci.co.uk/news/624/media/images/80124000/jpg/_80124630_025308133-1.jpg)
```

'Rivers of blood'

:   One witness told AFP the attack was reminiscent of a scene from a movie:
    "I saw them leaving and shooting. They were wearing masks.
    These guys were serious.... At first I thought it was special forces
    chasing drug traffickers or something."

```
![Vigil（~~戒严~~祈福） held in Sète, France](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126207_joeytranchinasetevigil.jpg)

![Police officers stand guard outside a flat in Reims as investigators search inside.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126297_025315148-1.jpg)

![Rallies condemning the attack are taking place across the world, including this one in Quebec, Canada.](http://ichef.bbci.co.uk/live-experience/cps/704/mcs/media/images/80126000/jpg/_80126293_025314033-1.jpg)

![Cartoon by Alex Green](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80126000/png/_80126203_alexgreencartoon.png)

![Barbaric](http://ichef.bbci.co.uk/live-experience/cps/512/mcs/media/images/80125000/png/_80125156_mirror.png)

![Victims lay on the pavement in a Paris restaurant Nov. 13, 2015.](http://gnat.qiniudn.com/paris-in-terror/paris-in-terror.png)
```

法国人唱着国歌撤离球场。What a feel，a hard one。

Ernest Hemingway (*For Whom the Bell Tolls*):

> 不要问丧钟为谁鸣，丧钟为你而鸣。

Refs

#. [French terror attacks: Victim obituaries - BBC News](http://www.bbc.com/news/world-europe-30724678)
#. [France sieges end: Witness accounts - BBC News](http://www.bbc.com/news/world-europe-30755914)
#. [As it happened: Charlie Hebdo attack - BBC News](http://www.bbc.com/news/live/world-europe-30710777)
#. [Charlie Hebdo: Gun attack on French magazine kills 12 - BBC News](http://www.bbc.com/news/world-europe-30710883)
#. [Paris attacks: Suspects' profiles - BBC News](http://www.bbc.com/news/world-europe-30722038)
#. [Paris attacks: Dozens killed in series of terror attacks across French capital - CBS News](http://www.cbsnews.com/news/paris-explosion-stadium-shootout-restaurant/)

1447425369: 翻转屏幕
--------------------

<kbd>Control</kbd> + <kbd>Alt</kbd> + <kbd>Up</kbd>/<kbd>Down</kbd>/<kbd>Left</kbd>/<kbd>Right</kbd>

不知道的话，突然碰到可能会有点不知所措。

1447248588: 把爬虫放进来
------------------------

为了把爬虫放进来[^qiniu-robots-default]，参考 [The Web Robots Pages](http://www.robotstxt.org/robotstxt.html) 写了一个 robots.txt，里面只有两行：

```plain
User-agent: *
Disallow:
```

加了后去百度的 [Robots_站长工具_robots文件检测及生成](http://zhanzhang.baidu.com/robots) 看看生效没。

[^qiniu-robots-default]: 七牛默认在每个 bucket 加了一个 robots 文件，禁止所有爬虫的爬取。
