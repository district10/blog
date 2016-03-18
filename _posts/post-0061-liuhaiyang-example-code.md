% LaTeX 入门（刘海洋） --- 配套 TeX 源码
% TANG ZhiXiong
% 2015-08-06

LaTeX 入门（刘海洋） --- 配套 TeX 源码
======================================

> 注：
>
> 个人备份，这是刘海洋《LaTeX 入门》配套的 TeX 源码

`% !Mode:: "TeX:UTF-8"`

### src/0-1.tex

```latex
$\Delta = b^2 - 4ac$
```


### src/0-2.tex

```latex
\[
  x_{1,2} = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
\]
```


### src/1-1-01.tex

```latex
\documentclass{article}

\begin{document}
This is my first document.

Happy \TeX ing!
\end{document}
```


### src/1-1-02.tex

```tex
\documentclass[UTF8]{ctexart}
\begin{document}
\section{文字}
特可爱排版。
\section{数学}
\[
  a^2 + b^2 = c^2
\]
\end{document}
```


### src/1-2-01.tex

```latex
\begin{equation}
  a(b+c) = ab + ac
\end{equation}
```


### src/1-2-02.tex

```latex
$\angle ACB = \pi / 2$
```


### src/1-2-03.tex

```latex
\begin{equation}
AB^2 = BC^2 + AC^2.
\end{equation}
```


### src/1-2-04.tex

```latex
\includegraphics[width=3cm]{xiantu.pdf}
```


### src/1-2-05.tex

```latex
\begin{table}[H]
\begin{tabular}{|rrr|}
\hline
直角边 $a$ & 直角边 $b$ & 斜边 $c$\\
\hline
3 & 4 & 5 \\
5 & 12 & 13 \\
\hline
\end{tabular}%
\qquad
($a^2 + b^2 = c^2$)
\end{table}
```


### src/2-1-01.tex

```latex
% UTF-8 编码
café\quad Gödel\quad Antonín Dvořák

χαϊδεύης\qquad Крюкова
```


### src/2-1-02.tex

```latex
\usepackage[greek,english]{babel}
```


### src/2-1-03.tex

```latex
% 导言区 \usepackage[OT2,OT1]{fontenc}
{\fontencoding{OT2}\selectfont ABCabc}
```


### src/2-1-04.tex

```latex
% coding: utf-8
% pdflatex 命令编译
\documentclass{article}
\usepackage[OT2,T1]{fontenc}
\usepackage[utf8]{inputenc}
\begin{document}
café \qquad Gödel
{\fontencoding{OT2}\selectfont Крюкова}
\end{document}
```


### src/2-1-05.tex

```latex
differ find flight difficlut ruffle
```


### src/2-1-06.tex

```latex
  shelfful shelf{}ful shelf\/ful
```


### src/2-1-07.tex

```latex
``\,`A' or `B?'\,'' he asked.
```


### src/2-1-08.tex

```latex
An inter-word dash or, hyphen, as in X-ray.

A medium dash for number ranges, like 1--2.

A punctuation dash---like this.
```


### src/2-1-09.tex

```latex
Good: One, two, three\ldots

Bad: One, two, three...
```


### src/2-1-10.tex

```latex
She $\ldots$ she got it.

I've no idea\ldots.
```


### src/2-1-11.tex

```latex
\# \quad \$ \quad \% \quad \& \quad
\{ \quad \} \quad \_ \quad
\textbackslash
```


### src/2-1-12.tex

```latex
This is     a short
sentence.   This is
            another.
```


### src/2-1-13.tex

```latex
Happy \TeX ing. Happy \TeX\ ing.
Happy \TeX{} ing. Happy {\TeX} ing.
```


### src/2-1-14.tex

```latex
Question~1          % 名称与编号间
Donald~E. Knuth     % 教名之间，但姓可以断行
Mr.~Knuth           % 称谓缩写与名字间
function~$f(x)$     % 名字后的短公式
1,~2, and~3         % 序列的部分符号间
```


### src/2-1-15.tex

```latex
A sentence. And another.

U.S.A. means United States Army?

Tinker et al.\ made the double play.

Roman number XII\@. Yes.
```


### src/2-1-16.tex

```latex
中文和English的混排效果
并不依赖于 space 的有无。
```


### src/2-1-17.tex

```latex
\mbox{条目}-a 不同于条目-b
```


### src/2-1-18.tex

```latex
\CJKsetecglue{}
汉字word
```


### src/2-1-19.tex

```latex
幻影\phantom{参数}速速隐形

幻影参数速速显形
```


### src/2-1-20.tex

```latex
这是一行文字\\另一行

这是一行文字\linebreak 另一行
```


### src/2-1-21.tex

```latex
\begin{align*}
[2 - (3+5)]\times 7 &= 42 \\{}
[2 + (3-5)]\times 7 &= 0
\end{align*}
```


### src/2-1-22.tex

```latex
® © £ § ¶ † ‡ • ™ € ‰
```


### src/2-1-23.tex

```latex
\usefont{T1}{t1xr}{m}{n}
\symbol{"DE}\symbol{"FE}
```


### src/2-1-24.tex

```latex
\symbol{28450}\symbol{35486}
```


### src/2-1-25.tex

```latex
\textit{Italic font test}

{\bfseries Bold font test}
```


### src/2-1-26.tex

```latex
\sffamily
\textbf{This is a paragraph of bold and
\textit{italic font, sometimes returning
to \textnormal{normal font} is necessary.}}
```


### src/2-1-27.tex

```latex
{\itshape M}M

\textit{M}M

{\itshape M\/}M
```


### src/2-1-28.tex

```latex
Bold `{\bfseries leaf}'

Bold `{\bfseries leaf\/}'

Bold `\textbf{leaf}'
```


### src/2-1-29.tex

```latex
\textit{M}M

\textit{M\nocorr}M
```


### src/2-1-30.tex

```latex
{\CJKfamily{hei}这是黑体}

{\CJKfamily{kai}这是楷书}
```


### src/2-1-31.tex

```latex
{\songti 宋体}   \quad {\heiti 黑体} \quad
{\fangsong 仿宋} \quad {\kaishu 楷书}
```


### src/2-1-32.tex

```latex
% ctex 宏包下默认相当于 \CJKfamily{rm}
% \rmfamily 或 \textrm 也会同时设置此字体
中文字体的\textbf{粗体}与\textit{斜体}
```


### src/2-1-33.tex

```latex
\fontencoding{OT1}\fontfamily{pzc}
\fontseries{mb}\fontshape{it}
\fontsize{14}{17}\selectfont
PostScript New Century Schoolbook
```


### src/2-1-34.tex

```latex
\usefont{T1}{pbk}{db}{n}
PostScript Bookman Demibold Normal
```


### src/2-1-35.tex

```latex
\documentclass{article}
\usepackage{txfonts}
\begin{document}
Test text
\end{document}
```


### src/2-1-36.tex

```latex
\documentclass{article}
\usepackage[T1]{fontenc}
\usepackage{ccfonts,eulervm}
\begin{document}
Test text
\end{document}
```


### src/2-1-37.tex

```latex
% 在导言区设置全文字体为 Windows 提供的
% Times New Roman, Verdana, Courier New 字体
\usepackage{fontspec}
\setmainfont{Times New Roman}
\setsansfont{Verdana}
\setmonofont{Courier New}
```


### src/2-1-38.tex

```latex
% 导言区使用
\newfontfamily\lucidasans{Lucida Sans}
% 正文使用
{\lucidasans This is Lucida Sans.}
```


### src/2-1-39.tex

```latex
\newfontfamily\minion[Numbers=SlashedZero]{Minion Pro}
\minion 100, OK.
```


### src/2-1-40.tex

```latex
\documentclass{article}
\usepackage{ccfonts}% 公式使用 Concrete 系列字体
\usepackage[no-math]{fontspec}% \mathrm 等也使用 Concrete 系列字体
\setmainfont{Latin Modern Mono Prop}% 正文使用 Ladin Modern Mono 字体
```


### src/2-1-41.tex

```latex
\documentclass[no-math]{ctexart}
\usepackage[utopia]{mathdesign}% 数字字体使用 mathdesign 与 Utopia
\usepackage[EU1]{fontenc}% 恢复正文字体的 Unicode 编码
\setmainfont{Utopia Std}% 正文字体使用 OpenType 格式的 Adobe Utopia
```


### src/2-1-42.tex

```latex
\documentclass[UTF8]{ctexart}
% 西文正文和数学字体
\let\hbar\relax % 解决 xunicode 与 fourier 的符号冲突
\usepackage{fourier}
% 设置默认编码为 T1，以支持 fourier 宏包
\usepackage[T1]{fontenc}
% 定义新的西文 Times 字体族
\newfontfamily\times{Times New Roman}
% 设置西文等宽字体，并重定义 \ttfamily 来切换到 EU1 编码
\setmonofont{Consolas}
\let\oldttfamily\ttfamily
\def\ttfamily{\oldttfamily\fontencoding{EU1}\selectfont}
% 设置中文字体
\setCJKmainfont{Adobe Kaiti Std}
\begin{document}
Utopia text and $\sum math$ fonts.

汉字楷书与 {\times Times New Roman} 字体。

\texttt{Consolas 0123}
\end{document}
```


### src/2-1-43.tex

```latex
% XeLaTeX 编译
\documentclass[UTF8]{ctexart}
% 不需要 tipa 宏包，xunicode 已经实现其功能
\setmainfont{CMU Serif} % Computer Modern Roman 的 Unicode 版本
\begin{document}
\LaTeX{} 读音为 \textipa{["lA:tEx]}。
\end{document}
```


### src/2-1-44.tex

```latex
% XeLaTeX 编译
\documentclass[UTF8]{ctexart}
\usepackage{tipa}% 宏包已经正确加载 fontenc
% \mytipa 的定义参考原来的 \textipa 的旧定义，手工切换编码
\newcommand\mytipa[1]{{\fontencoding{T3}\selectfont#1}}
\begin{document}
\LaTeX{} 读音为 \mytipa{["lA:tEx]}。
\end{document}
```


### src/2-1-45.tex

```latex
\fontfamily{cmfib}\selectfont
Computer Modern Fibonacci Roman
```


### src/2-1-46.tex

```latex
% 导言区修改全文默认字体 Computer Modern Fibonacci 字体族
\renewcommand\rmdefault{cmfib}
```


### src/2-1-47.tex

```latex
% 导言区修改全文默认字体为无衬线字体族 phv（Helvetica）
\renewcommand\familydefault{\sfdefault}
\renewcommand\sfdefault{phv}
```


### src/2-1-48.tex

```latex
\renewcommand\CJKfamilydefault{\CJKsfdefault}
```


### src/2-1-49.tex

```latex
\xfonttable{OT1}{lmr}{m}{n}
```


### src/2-1-50.tex

```latex
You \emph{should} use fonts carefully.

\textit{%
You \emph{should} use fonts carefully.}
```


### src/2-1-51.tex

```latex
This is {\em emphasized\/} text.
```


### src/2-1-52.tex

```latex
\newcommand\Emph{\textbf}
This is \Emph{emphasized} text.
```


### src/2-1-53.tex

```latex
\underline{Emphasized} text and
\underline{another}.
```


### src/2-1-54.tex

```latex
% 导言区用 \usepackage{ulem}
\uline{Emphasized} text and \uline{another}.

A \emph{very very very very very very very
very very very very very} long sentence.
```


### src/2-1-55.tex

```latex
\uuline{urgent}\qquad \uwave{boat}\qquad
\sout{wrong}\qquad \xout{removed}\qquad
\dashuline{dashing}\qquad \dotuline{dotty}
```


### src/2-1-56.tex

```latex
\CJKunderdot{汉字，下加点}\\
\CJKunderline{汉字，下划线} \\
\CJKunderdblline{汉字，下划线} \\
\CJKunderwave{汉字，下划线} \\
\CJKsout{汉字，删除线}\\
\CJKxout{汉字，删除线}
```


### src/2-1-57.tex

```latex
\begin{CJKfilltwosides}{5cm}
汉字，分散对齐
\end{CJKfilltwosides}
```


### src/2-1-58.tex

```latex
\emph{汉字，强调}\\
\CTEXunderdot{汉字，加点}
```


### src/2-1-59.tex

```latex
The text can be {\Large larger}.
```


### src/2-1-60.tex

```latex
\setlength{\lineskiplimit}{2.625bp} % 五号字 1/4 字高
\setlength{\lineskip}{2.625bp}
```


### src/2-1-61.tex

```latex
1\,234\,567\,890
```


### src/2-1-62.tex

```latex
\newcommand\dbldag{\dag\!\dag}
\dbldag\ versus \dag\dag
```


### src/2-1-63.tex

```latex
Space\hspace{1cm}1\,cm
```


### src/2-1-64.tex

```latex
text\\
\hspace{1cm}text\\
\hspace*{1cm}text
```


### src/2-1-65.tex

```latex
\newcommand\test{longggggggg%
  \hspace{2em plus 1em minus 0.25em}}
\test\test\test\test\test\test\test\test
```


### src/2-1-66.tex

```latex
left\hspace{\fill}middle%
\hfill right
```


### src/2-1-67.tex

```latex
left\hspace{\stretch{2}}$2/3$%
\hspace{\fill}right
```


### src/2-1-68.tex

```latex
left\hrulefill middle\dotfill right
```


### src/2-1-69.tex

```latex
\setlength{\parindent}{8em}
Paragraph indent can be very wide in \LaTeX.
```


### src/2-1-70.tex

```latex
Para\par
\addtolength{\parindent}{2em}Para\par
\addtolength{\parindent}{2em}Para\par
```


### src/2-1-71.tex

```latex
\mbox{cannot be broken}
```


### src/2-1-72.tex

```latex
\makebox[1em]{\textbullet}text \\
\makebox[5cm][s]{some stretched text}
```


### src/2-1-73.tex

```latex
语言文字\llap{word}\\
\rlap{word}语言文字
```


### src/2-1-74.tex

```latex
\fbox{framed} \\
\framebox[3cm][s]{framed box}
```


### src/2-1-75.tex

```latex
\setlength{\fboxsep}{0pt} \fbox{tight}
\setlength{\fboxsep}{1em} \fbox{loose}
```


### src/2-1-76.tex

```latex
\newsavebox{\mybox} % 通常在导言区定义
\sbox{\mybox}{test text}
\usebox{\mybox} \fbox{\usebox{\mybox}}
```


### src/2-1-77.tex

```latex
\newsavebox{\verbbox} % 通常在导言区定义
\begin{lrbox}{\verbbox}
\verb|#$%^&{}|
\end{lrbox}
\usebox{\verbbox} \fbox{\usebox{\verbbox}}
```


### src/2-1-78.tex

```latex
\framebox[2\width]{带边框}
```


### src/2-2-01.tex

```latex
\setlength{\parskip}{0pt}
```


### src/2-2-02.tex

```latex
\raggedright
English words like `technology' stem from a
Greek root beginning with the letters τεχ\dots
```


### src/2-2-03.tex

```latex
\begin{center}
居中
\end{center}
```


### src/2-2-04.tex

```latex
\hyphenation{man-u-script com-pu-ter gym-na-sium}
```


### src/2-2-05.tex

```latex
% 导言区 \usepackage{ragged2e}
\RaggedRight
English words like `technology' stem from a
Greek root beginning with the letters τεχ\dots
```


### src/2-2-06.tex

```latex
\setlength{\leftskip}{4em}
\setlength{\rightskip}{1em}
These parameters tell \TeX{} how much glue
to place at the left and at the right end
of each line of the current paragraph.
```


### src/2-2-07.tex

```latex
\hangindent=5pc \hangafter=-2
These two parameters jointly specify
``hanging indentation'' for a paragraph.
The hanging indentation indicates to \TeX{}
that certain lines of the paragraph should
be indented and the remaining lines should
have their normal width.
```


### src/2-2-08.tex

```latex
% 导言区 \usepackage{lettrine}
\lettrine{T}{he} \TeX{} in \LaTeX{} refers
to Donald Knuth's \TeX{} typesetting system.
The \LaTeX{} program is a special version of
\TeX{} that understands \LaTeX{} commands.
```


### src/2-2-09.tex

```latex
% 导言区 \usepackage{shapepar}
\heartpar{%
  绿草苍苍，白雾茫茫，有位佳人，在水一方。
  绿草萋萋，白雾迷离，有位佳人，靠水而居。
  我愿逆流而上，依偎在她身旁。无奈前有险滩，道路又远又长。
  我愿顺流而下，找寻她的方向。却见依稀仿佛，她在水的中央。
  我愿逆流而上，与她轻言细语。无奈前有险滩，道路曲折无已。
  我愿顺流而下，找寻她的足迹。却见仿佛依稀，她在水中伫立。}
```


### src/2-2-10.tex

```latex
前文……
\begin{quote}
学而时习之，不亦说乎？
有朋自远方来，不亦乐乎？
\end{quote}
后文……
```


### src/2-2-11.tex

```latex
前文……
\begin{quotation}
学而时习之，不亦说乎？
有朋自远方来，不亦乐乎？

默而识之，学而不厌，诲人不倦，何有于我哉？
\end{quotation}
后文……
```


### src/2-2-12.tex

```latex
\begin{verse}
在一段内使用 \verb=\\= 换行，\\
分段仍用空行。

过长的长会在折行时悬挂缩进，
就像现在这一句。
\end{verse}
```


### src/2-2-13.tex

```latex
\begin{abstract}
本书讲解 \LaTeX{} 的使用。
\end{abstract}
```


### src/2-2-14.tex

```latex
\CTEXoptions[abstractname={摘\quad 要}]
```


### src/2-2-15.tex

```latex
\begin{enumerate}
  \item 中文
  \item English
  \item Français
\end{enumerate}
```


### src/2-2-16.tex

```latex
\begin{itemize}
  \item 中文
  \item English
  \item Français
\end{itemize}
```


### src/2-2-17.tex

```latex
\begin{description}
  \item[中文] 中国的语言文字
  \item[English] The language of England
  \item[Français] La langue de France
\end{description}
```


### src/2-2-18.tex

```latex
\begin{enumerate}
  \item 中文
  \begin{enumerate}
    \item 古代汉语
    \item 现代汉语
    \begin{enumerate}
      \item 口语
      \begin{enumerate}
        \item 普通话
        \item 方言
      \end{enumerate}
      \item 书面语
    \end{enumerate}
  \end{enumerate}
  \item English
  \item Français
\end{enumerate}
```


### src/2-2-19.tex

```latex
\begin{enumerate}
  \item 中文
  \item[1a.] 汉语
  \item English
\end{enumerate}
```


### src/2-2-20.tex

```latex
\begin{itemize}
  \item[\dag] 中文
  \item English
  \item Français
\end{itemize}
```


### src/2-2-21.tex

```latex
\begin{enumerate}
  \item 这是编号 \theenumi
  \item 这是编号 \theenumi
\end{enumerate}
```


### src/2-2-22.tex

```latex
\begin{enumerate}
\item 编号
  \arabic{enumi}, \roman{enumi}, \Roman{enumi},
  \alph{enumi}, \Alph{enumi}, \fnsymbol{enumi}
\item 编号
  \arabic{enumi}, \roman{enumi}, \Roman{enumi},
  \alph{enumi}, \Alph{enumi}, \fnsymbol{enumi}
\item 编号
  \arabic{enumi}, \roman{enumi}, \Roman{enumi},
  \alph{enumi}, \Alph{enumi}, \fnsymbol{enumi}
\end{enumerate}
```


### src/2-2-23.tex

```latex
\renewcommand\theenumi{\roman{enumi}}
\renewcommand\labelenumi{(\theenumi)}
\begin{enumerate}
  \item 使用中文
  \item Using English
\end{enumerate}
```


### src/2-2-24.tex

```latex
% 计数器设置，通常在导言区
\newcounter{mycnt}
\setcounter{mycnt}{0}                   % 默认值就是 0
\renewcommand\themycnt{\arabic{mycnt}}  % 默认值就是阿拉伯数字
% 计数器使用，通常做成自定义命令的一部分
\stepcounter{mycnt}\themycnt 输出计数器值为 1；
\stepcounter{mycnt}\themycnt 输出计数器值为 2；
\addtocounter{mycnt}{1}\themycnt 输出计数器值为 3；
\addtocounter{mycnt}{-1}\themycnt 输出计数器值为 2；
\addtocounter{mycnt}{-1}\themycnt 输出计数器值为 1。
```


### src/2-2-25.tex

```latex
\usepackage{amsmath}
\numberwithin{equation}{section}
```


### src/2-2-26.tex

```latex
{% 使用分组让 \descriptionlabel 的修改局部化
\renewcommand\descriptionlabel[1]{\normalfont\Large\itshape
  \textbullet\ #1}
\begin{description}
  \item[标签] 可以修改 \verb=\descriptionlabel= 改变标签的格式。
  \item[其他] 其他格式的也可以参考后面的列表环境修改。
\end{description}
}
```


### src/2-2-27.tex

```latex
\newcounter{mylist}
\begin{list}{\#\themylist}%
  {\usecounter{mylist}}
  \item 中文
  \item English
\end{list}
```


### src/2-2-28.tex

```latex
\begin{list}{\textbullet}{%
  \setlength{\topsep}{0pt}  \setlength{\partopsep}{0pt}
  \setlength{\parsep}{0pt}  \setlength{\itemsep}{0pt}}
  \item 中文

    又一段中文

  \item English
  \item Français
\end{list}
```


### src/2-2-29.tex

```latex
\newenvironment{myitemize}{%
    \begin{list}{\textbullet}{%
      \setlength{\topsep}{0pt}  \setlength{\partopsep}{0pt}
      \setlength{\parsep}{0pt}  \setlength{\itemsep}{0pt}}}
  {\end{list}}
```


### src/2-2-30.tex

```latex
\newenvironment{mycenter}
  {\begin{trivlist}
     \centering
     \item[]}
  {\end{trivlist}}
```


### src/2-2-31.tex

```latex
% \usepackage{enumitem}
\begin{enumerate}[itemsep=0pt,parsep=0pt,
    label=(\arabic*)]
  \item 中文
  \item English
  \item Français
\end{enumerate}
```


### src/2-2-32.tex

```latex
\usepackage{enumitem}
% 仿照 enumerate 环境定义可二级嵌套的 mylist
\newlist{mylist}{enumerate}{2}
% 分别定义每级的格式
\setlist[mylist,1]{itemsep=0pt,parsep=0pt,label=(\arabic*)}
\setlist[mylist,2]{itemsep=0pt,parsep=0pt,label=(\alph*)}
```


### src/2-2-33.tex

```latex
% \usepackage{enumitem}
\AddEnumerateCounter{\chinese}{\chinese}{}
\begin{enumerate}[label={\chinese*、},labelsep=0pt]
  \item 内容清晰
  \item 格式美观
\end{enumerate}
```


### src/2-2-34.tex

```latex
\newtheorem{thm}{定理}  % 一般在导言区
\begin{thm}
直角三角形斜边的平方等于两腰的平方和。
\end{thm}
```


### src/2-2-35.tex

```latex
\begin{thm}[勾股定理]
直角三角形斜边的平方等于两腰的平方和。
\end{thm}
```


### src/2-2-36.tex

```latex
\newtheorem{lemma}{引理}[chapter]% 按章
\begin{lemma} 偏序集可良序化。 \end{lemma}
\begin{lemma} 实数集不可数。   \end{lemma}
```


### src/2-2-37.tex

```latex
\newtheorem{prop}[thm]{命题}
\begin{prop}
直角三角形的斜边大于直角边。
\end{prop}
```


### src/2-2-38.tex

```latex
% 导言区
\usepackage{theorem}
\theoremstyle{changebreak}
\theoremheaderfont{\sffamily\bfseries}
\theorembodyfont{\normalfont}
\newtheorem{definition}{定义}[chapter]
```


### src/2-2-39.tex

```latex
\begin{definition}
有一个角是直角的三角形是\emph{直角三角形}。
\end{definition}
```


### src/2-2-40.tex

```latex
% 导言区
\usepackage[thmmarks]{ntheorem}
{   % 利用分组，格式设置只作用于证明环境
  \theoremstyle{nonumberplain}
  \theoremheaderfont{\bfseries}
  \theorembodyfont{\normalfont}
  \theoremsymbol{\mbox{$\Box$}} % 放进盒子，或用 \ensuremath
  \newtheorem{proof}{证明}
}
```


### src/2-2-41.tex

```latex
\begin{proof}
证明是显然的。
\end{proof}
```


### src/2-2-42.tex

```latex
\usepackage{amsthm}
\renewcommand\proofname{证明}
\renewcommand\qedsymbol{\ensuremath{\Box}}
```


### src/2-2-43.tex

```latex
% \usepackage{amsthm}
\begin{proof}
最后我们有
\[
  f(x) = 0. \qedhere
\]
\end{proof}
```


### src/2-2-44.tex

```latex
\verb"\LaTeX \& \TeX" \qquad
\verb!\/}{#$%&~!
```


### src/2-2-45.tex

```latex
显示空格 \verb*!1 2  3   4!
```


### src/2-2-46.tex

```latex
\begin{verbatim}
#!usr/bin/env perl
$name = "guy";
print "Hello, $name!\n";
\end{verbatim}
```


### src/2-2-47.tex

```latex
\begin{verbatim*}
#include <stdio.h>
main() {
    printf("Hello, world.\n");
}
\end{verbatim*}
```


### src/2-2-48.tex

```latex
% \usepackage{fancyvrb}
\SaveVerb{myverb}|#$%^&|
\fbox{套中 \UseVerb{myverb}}
```


### src/2-2-49.tex

```latex
% \usepackage{cprotect}
\cprotect\fbox{套中 \verb|#$%^&|}
```


### src/2-2-50.tex

```latex
verbatim |\LaTeX|
```


### src/2-2-51.tex

```latex
\begin{lstlisting}[language=C]
/* hello.c */
#include <stdio.h>
main() {
    printf("Hello.\n");
}
\end{lstlisting}
```


### src/2-2-52.tex

```latex
\lstset{ % 整体设置
  basicstyle=\sffamily,
  keywordstyle=\bfseries,
  commentstyle=\rmfamily\itshape,
  stringstyle=\ttfamily}
\begin{lstlisting}[language=C]
/* hello.c */
#include <stdio.h>
main() {
    printf("Hello.\n");
}
\end{lstlisting}
```


### src/2-2-53.tex

```latex
\lstset{flexiblecolumns}% column=flexible
\begin{lstlisting}[language=C]
/* hello.c */
#include <stdio.h>
main() {
    printf("Hello.\n");
}
\end{lstlisting}
```


### src/2-2-54.tex

```latex
\lstset{columns=flexible,
  numbers=left,numberstyle=\footnotesize}
\begin{lstlisting}[language=C]
/* hello.c */
#include <stdio.h>
main() {
    printf("Hello.\n");
}
\end{lstlisting}
```


### src/2-2-55.tex

```latex
\lstset{language=C,flexiblecolumns}
语句 \lstinline!typedef char byte!
```


### src/2-2-56.tex

```latex
\lstset{language=C,flexiblecolumns,
  escapechar=`} % 设置 ` 为逃逸字符
\begin{lstlisting}
int n;  // `一个整数`
\end{lstlisting}
```


### src/2-2-57.tex

```latex
\lstset{language=C,flexiblecolumns,
  escapechar=`}
\begin{lstlisting}
double x = 1/sin(x); // `$\frac1{\sin x}$`
\end{lstlisting}
```


### src/2-2-58.tex

```latex
\begin{tabbing}
格式\hspace{3em} \= 作者 \\
Plain \TeX  \> 高德纳 \\
\LaTeX      \> Leslie Lamport
\end{tabbing}
```


### src/2-2-59.tex

```latex
\begin{tabbing}
格式\hspace{3em} \= 作者 \kill
Plain \TeX  \> 高德纳 \\
\LaTeX      \> Leslie Lamport
\end{tabbing}
```


### src/2-2-60.tex

```latex
\newcommand\kw{\textbf} % 表示描述算法的关键字
\begin{tabbing}
\pushtabs
算法：在序列 $A$ 中对 $x$ 做二分检索 \\
输入：$A$, $x$ 及下标上下界 $L$, $H$ \\
\qquad\=\+\kw{integer} $L, H, M, j$ \\
\kw{while} \=\+ $L \leq H$ \kw{do} \` $L$ 与 $H$ 是左右分点 \\
           $M \gets \lfloor(L+H)/2\rfloor$ \` $M$ 是中间分点 \\
           \kw{case} \=\+\\
                   condition \= foo \+\kill
                   $x > A[M]$:\' $H \gets M-1$ \\
                   $x < A[M]$:\' $H \gets M+1$ \\
                    \kw{else}:\' \= $j \gets M$ \` 找到 $x$，返回位置\\
                                 \> \kw{return}$(j)$ \\
           \<\< \kw{endcase} \-\-\-\\
$j \gets 0$ \\
\kw{return}$(j)$ \-\\
\poptabs
算法示例：\\
$A = \{2, 3, 5, 7, 11\}$, $x=3$\\
\qquad\=\+ $M$\qquad \= $L$\qquad \= $H$\qquad \= \\
           无      \> 1       \> 5             \> 初始值，进入循环 \\
           3       \> 1       \> 2             \> $H$ 变化 \\
           2       \> 无      \> 无            \> 找到 $x$，输出位置 2
\end{tabbing}
```


### src/2-2-61.tex

```latex
例如\footnote{这是一个脚注。}。
```


### src/2-2-62.tex

```latex
\begin{minipage}{8em}
这是小页环境\footnote{脚注。}中的脚注。
\end{minipage}
```


### src/2-2-63.tex

```latex
\renewcommand\thefootnote{\fnsymbol{footnote}}
```


### src/2-2-64.tex

```latex
\usepackage{pifont}
\renewcommand\thefootnote{\ding{\numexpr171+\value{footnote}}}
```


### src/2-2-65.tex

```latex
\begin{tabular}{r|r}
  自变量 & 因变量\footnotemark \\ \hline
  $x$ & $y$
\end{tabular}
\footnotetext{$y=x^2$。}
```


### src/2-2-66.tex

```latex
\section[节标题]{节标题\protect\footnote{标题中的脚注}}
```


### src/2-2-67.tex

```latex
\usepackage[perpage]{footmisc}
```


### src/2-2-68.tex

```latex
有边注的文字\marginpar[\hfill 左 $\rightarrow$]{$\leftarrow$ 右}
```


### src/2-2-69.tex

```latex
前言\parbox{2em}{不搭后语}。
```


### src/2-2-70.tex

```latex
前言\parbox[t]{2em}{不搭后语}。
后语\parbox[b]{2em}{不搭前言}。
```


### src/2-2-71.tex

```latex
\begin{minipage}[c][2.5cm][t]{2em} 两个 \end{minipage}\quad
\begin{minipage}[c][2.5cm][c]{3em} 黄鹂鸣翠柳， \end{minipage}\quad
\begin{minipage}[c][2.5cm][b]{3em} 一行白鹭上青天。 \end{minipage}\quad
\begin{minipage}[c][2.5cm][s]{4em}
\setlength{\parskip}{0pt plus 1pt}% 恢复正文默认段间距
窗含西岭千秋雪，\par
门泊东吴万里船。
\end{minipage}
```


### src/2-2-72.tex

```latex
\newsavebox{\verbatimbox} % 通常在导言区定义
\begin{lrbox}{\verbatimbox}
\begin{minipage}{10em}
\begin{verbatim}
#!/bin/sh
cat ~/${file}
\end{verbatim}
\end{minipage}
\end{lrbox}
\fbox{\usebox{\verbatimbox}}\quad\fbox{\usebox{\verbatimbox}}
```


### src/2-2-73.tex

```latex
\rule{1pt}{1em}Middle\rule{1pt}{1em} \\
Left\rule[0.5ex]{2cm}{0.6pt}Right \\
\rule[-0.1em]{1em}{1em} 也可以用作证毕符号
```


### src/2-2-74.tex

```latex
\fbox{---}\qquad
\fbox{\strut---}\qquad
\fbox{\rule{0pt}{2em}---}
```


### src/2-2-75.tex

```latex
% 这与实际 \TeX 的定义基本等价
\mbox{T\hspace{-0.1667em}%
\raisebox{-0.5ex}{E}%
\hspace{-0.125em}X}
```


### src/2-2-76.tex

```latex
\fbox{\begin{varwidth}{10cm}
自然\\宽度
\end{varwidth}}
```


### src/2-3-01.tex

```latex
\title{杂谈勾股定理\\——勾股定理的历史与现状}
\author{张三\\九章学堂}
\date{庚寅盛夏}
```


### src/2-3-02.tex

```latex
\author{张三\\九章学堂 \and 李四\\天元研究所}
```


### src/2-3-03.tex

```latex
\title{杂谈勾股定理\thanks{本文由九章基金会赞助。}}
\author{张三\thanks{九章学堂讲师。}\\九章学堂}
```


### src/2-3-04.tex

```latex
% 手工排版的标题页
\begin{titlepage}
  \vspace*{\fill}
  \begin{center}
  \normalfont
  {\Huge\bfseries 杂谈勾股定理}

  \bigskip
  {\Large\itshape 张三}

  \medskip
  \today
  \end{center}
  \vspace{\stretch{3}}
\end{titlepage}
```


### src/2-3-05.tex

```latex
\documentclass{book}
\title{Languages}\author{someone}
\begin{document}
\maketitle
\tableofcontents
% 这里用缩进显示层次
\part{Introduction}                         % Part I
  \chapter{Background}                      %   Chapter 1
\part{Classification}                       % Part II
  \chapter{Natural Language}                %   Chapter 2
  \chapter{Computer Languages}              %   Chapter 3
    \section{Machine Languages}             %     3.1
    \section{High Level Languages}          %     3.2
      \subsection{Compiled Language}        %       3.2.1
      \subsection{Interpretative Language}  %       3.2.2
      \subsubsection{Lisp}
        \paragraph{Common Lisp}
        \paragraph{Scheme}
      \subsubsection{Perl}
\end{document}
```


### src/2-3-06.tex

```latex
% languages.tex
%   整个文档的主文件
\documentclass{ctexbook}
\usepackage{syntonly}
\syntaxonly     % 只检查语法，不输出 DVI/PDF 文件
\begin{document}
……
\end{document}
```


### src/2-3-07.tex

```latex
\usepackage[sf,bf,it,centering]{titlesec}
```


### src/2-3-08.tex

```latex
\titlelabel{\S~\thetitle\quad}
```


### src/2-3-09.tex

```latex
\titleformat*{\section}{\Large\itshape\centering}
```


### src/2-4-01.tex

```latex
\documentclass[a4paper,titlepage]{article}
```


### src/2-4-02.tex

```latex
\documentclass{moderncv}
\usepackage{ctex}
\zihao{-4}
\begin{document}
…………
\end{document}
```


### src/2-4-03.tex

```latex
\XeTeXinputencoding "GBK"
\documentclass{ctexart}
\begin{document}
GBK 编码的中文文档。
\end{document}
```


### src/2-4-04.tex

```latex
\usepackage[a4paper,left=3cm,right=3cm]{geometry}
```


### src/2-4-05.tex

```latex
\usepackage{geometry}
\geometry{a4paper,left=3cm,right=3cm}
```


### src/2-4-06.tex

```latex
\pagenumbering{roman}
```


### src/2-4-07.tex

```latex
\documentclass{article}
\pagestyle{headings}
```


### src/2-4-08.tex

```latex
\begin{figure}[p]
  \thispagestyle{plain}
  …………
\end{figure}
```


### src/2-4-09.tex

```latex
\documentclass{ctexart}
\pagestyle{headings}
\markright{张三}
```


### src/2-4-10.tex

```latex
\documentclass[twoside]{ctexrep}
\usepackage{fancyhdr}
\pagestyle{fancy}       % 使用 fancy 风格
\fancyhf{}              % 清除所有页眉页脚
\cfoot{\thepage}        % 页脚居中页码
\fancyhead[CO]{张三}    % 奇数页居中页眉作者名
\fancyhead[CE]{论语言}  % 偶数页居中页眉文章题目
\fancyfoot[RO,LE]{$\heartsuit$}
    % 奇数页脚右，偶数页脚左（即外侧）装饰符号
```


### src/2-4-11.tex

```latex
\documentclass[twoside,fancyhdr]{ctexrep}
\fancyhf{}
% ……
```


### src/2-4-12.tex

```latex
\renewcommand\headrulewidth{0.6pt}  % 默认为 0.4pt
\renewcommand\footrulewidth{0.6pt}  % 默认为 0pt
```


### src/2-4-13.tex

```latex
\fancypagestyle{plain}{%
  \fancyhf{}
  \cfoot{--\textit{\thepage}--}     % 改变页码形状
  \renewcommand\headrulewidth{0pt}  % 无页眉线
  \renewcommand\footrulewidth{0pt}  % 无页脚线
}
```


### src/2-4-14.tex

```latex
\newcommand\PRC{People's Republic of \emph{China}}
```


### src/2-4-15.tex

```latex
\newcommand\loves[2]{#1喜欢#2}
\newcommand\hatedby[2]{#2不受#1喜欢}
```


### src/2-4-16.tex

```latex
\newcommand\loves[3][喜欢]{{#2#1#3}}
```


### src/2-4-17.tex

```latex
\newcommand\Emph[1]{\emph{#1}}
\newcommand\setEmph[1]{%
  \renewcommand\Emph[1]{%
    #1{##1}}}
```


### src/2-4-18.tex

```latex
\newenvironment{myabstract}[1][摘要]%
  {\small
   \begin{center}\bfseries #1\end{center}%
   \begin{quotation}}%
  {\end{quotation}}
```


### src/2-4-19.tex

```latex
\newenvironment{Quotation}[1]%
  {\newcommand\quotesource{#1}%
   \begin{quotation}}%
   {\par\hfill ——《\textit{\quotesource}》%
   \end{quotation}}

\begin{Quotation}{易·乾}
初九，潜龙勿用。
\end{Quotation}
```


### src/3-1-01.tex

```latex
\documentclass{article}
\begin{document}
\tableofcontents
\section{Foo}
\subsection{blah}
\section{Bar}
\end{document}
```


### src/3-1-02.tex

```latex
\setcounter{secnumdepth}{4} % 增加编号深度
\setcounter{tocdepth}{4}    % 增加目录深度
```


### src/3-1-03.tex

```latex
\addcontentsline{toc}{section}{Title}
\maketitle
\tableofcontents
```


### src/3-1-04.tex

```latex
\usepackage{tocbibind}
```


### src/3-1-05.tex

```latex
\addtocontents{toc}{\newpage}
\part{Foo}
```


### src/3-1-06.tex

```latex
% \usepackage{tocloft}
\renewcommand\cfttoctitlefont{\hfill\Large\sffamily\bfseries}
\renewcommand\cftaftertoctitle{\hfill}
\setlength\cftbeforetoctitleskip{2ex}
\setlength\cftaftertoctitleskip{2ex}
```


### src/3-1-07.tex

```latex
% \usepackage{tocloft}
\renewcommand\cftdot{…}
\renewcommand{\cftdotsep}{0}
```


### src/3-1-08.tex

```latex
\settowidth{\cftchapternumwidth}{第几十几章}        % 最宽的可能编号
\renewcommand\cftchapteraftersnumb{\hspace{0.5em}}  % 额外间距
```


### src/3-1-09.tex

```latex
\documentclass{ctexbook} % 或 ctexrep, ctexart
\usepackage{tocloft}
\makeatletter
\renewcommand{\numberline}[1]{%
  \settowidth\@tempdimb{#1\hspace{0.5em}}%
  \ifdim\@tempdima<\@tempdimb%
    \@tempdima=\@tempdimb%
  \fi%
  \hb@xt@\@tempdima{\@cftbsnum #1\@cftasnum\hfil}\@cftasnumb}
\makeatother
```


### src/3-2-01.tex

```latex
\section{Lanuages}
\label{sec:lang}
```


### src/3-2-02.tex

```latex
\begin{align}
  c^2 &= a^2 + b^2
    \label{eq:gougu-formula} \\
  5^2 &= 3^2 + 4^2
    \label{eq:gougu-example}
\end{align}
```


### src/3-2-03.tex

```latex
勾股定理公式 (\ref{eq:gougu-formula})
出现在 \pageref{eq:gougu-formula}~页。
```


### src/3-2-04.tex

```latex
\newcommand\thmref[1]{定理~\ref{#1}}
```


### src/3-2-05.tex

```latex
See \autoref{fig:xref}.
```


### src/3-2-06.tex

```latex
\renewcommand\figureautorefname{图}
参见\autoref{fig:xref}。
```


### src/3-2-07.tex

```latex
% 导言区 \usepackage{nameref}
见“\nameref{fig:xref}”。
```


### src/3-2-08.tex

```latex
page \thepage\ of \pageref{LastPage}
```


### src/3-2-09.tex

```latex
% languages.tex 导言区
\usepackage{xr}
\externaldocument[ch:]{chinese}
```


### src/3-2-10.tex

```latex
\documentclass[hyperref,UTF8]{ctexart}
```


### src/3-2-11.tex

```latex
\documentclass[hyperref,UTF8]{ctexbook}
\usepackage{geometry}
\geometry{screen}
\hypersetup{
  colorlinks=true,
  bookmarks=true,
  bookmarksopen=false,
  pdfpagemode=FullScreen,
  pdfstartview=Fit,
  pdftitle={初等几何教程（电子版）},
  pdfauthor={张三}
}
```


### src/3-2-12.tex

```latex
\url{http://bbs.ctex.org/forum.php?mod=viewthread&tid=48244#pid337079}
```


### src/3-2-13.tex

```latex
\href{http://bbs.ctex.org/}{CTeX 论坛}
```


### src/3-2-14.tex

```latex
\hyperref[eq:gougu-formula]{点击查看勾股定理公式}
```


### src/3-2-15.tex

```latex
\phantomsection
\addcontentsline{toc}{section}{习题}
\section*{本章习题}
```


### src/3-2-16.tex

```latex
\pdfbookmark[2]{勾股定理证明}{gouguproof}
\begin{proof} …… \end{proof}
```


### src/3-2-17.tex

```latex
\section{\texorpdfstring{$\frac{1}{\pi}$}{1/π} 的计算}
```


### src/3-3-01.bib**

```latex
% tex.bib 中的一条
@BOOK{mittelbach2004,
  title = {The {{\LaTeX}} Companion},
  publisher = {Addison-Wesley},
  year = {2004},
  author = {Frank Mittelbach and Michel Goossens},
  series = {Tools and Techniques for Computer Typesetting},
  address = {Boston},
  edition = {Second}
}
```


### src/3-3-02.bib**

```latex
@String{ j-CJ = "The Computer Journal" }

@Article{Knuth:CJ-2-27-97,
  author =       "Donald E. Knuth",
  title =        "Literate Programming",
  journal =      j-CJ,
  year =         "1984",
  number =       "2",
  volume =       "27",
  pages =        "97--111",
  month =        may,
}
```


### src/3-3-03.tex

```latex
% 导言区
% \usepackage{natbib}
% \bibliographystyle{plainnat}
% 正文
在 \citet{lamport1994} 中提到了利用 \BibTeX{} 自动处理文献的方式，
在另一本书 \citep{mittelbach2004} 中则有进一步的格式与工具的说明。
```


### src/3-3-04.tex

```latex
\citet{Abrahams1990} \\
\citet*{Abrahams1990}
```


### src/3-3-05.tex

```latex
\citep[\S~4.3~节]{lamport1994} \\
\cite[又见][第~13~章]{mittelbach2004}
```


### src/3-3-06.tex

```latex
\citeauthor{Abrahams1990} \\
\citefullauthor{Abrahams1990} \\ % 或加 *
\citeyear{Abrahams1990} \\
\citeyearpar{Abrahams1990} \\
\citenum{Abrahams1990}
```


### src/3-3-07.tex

```latex
\citealt{Patashnik1988:btxdoc}\\
\citealp{Patashnik1988:btxdoc}\\% 有逗号
\citetext{同前} \\
\citetext{参见 \citealp{Shell2007}，
  以及 \citealp{Markey2009}}
```


### src/3-3-08.tex

```latex
\usepackage[numbers,square]{natbib}
```


### src/3-3-09.tex

```latex
\CTEXoptions[bibname={本书引用的文献}]
% 或 \renewcommand\bibname{本书引用的文献}
```


### src/3-3-10.tex

```latex
\renewcommand\bibpreamble{下面给出本文参考的几篇文章。}
```


### src/3-3-11.tex

```latex
\renewcommand\bibfont{\small}
```


### src/3-3-12.tex

```latex
\renewcommand\citenumfont{\itshape}
```


### src/3-3-13.tex

```latex
\renewcommand\bibnumfmt[1]{\textbf{#1.}}
```


### src/3-3-14.tex

```latex
\setlength{\bibsep}{0pt}
```


### src/3-3-15.tex

```latex
% main.tex
% 主文档
\documentclass{book}
\usepackage{chapterbib}
\usepackage[sectionbib]{natbib}
\begin{document}
  % ...
  \include{chap-intro}
  \include{chap-research}
  \include{chap-conclusion}
\end{document}

% chap-intro.tex
% 其中一章
\chapter{Introduction}
% ...
\bibliographystyle{plainnat}
\bibliography{foo}

% chap-research.tex
% ...
```


### src/3-3-16.tex

```latex
\usepackage[numbers,sort&compress]{natbib}
```


### src/3-3-17.tex

```latex
% 导言 \usepackage[merge]{natbib}
\citep*{knuthtex1986, *lamport1994, *mittelbach2004}
```


### src/3-3-20.tex

```latex
\documentclass[openbib]{article}
\bibliographystyle{plain}
\begin{document}
\TeX{} and \LaTeX{} see \cite{knuthtex1986}, \cite{Lamport1994}.
\nocite{mittelbach2004}
\bibliography{tex}
\end{document}
```


### src/3-4-01.tex

```latex
% foo.tex
\documentclass{ctexart}
\usepackage{makeidx}
\makeindex
% ...
\begin{document}
\section{勾股定理}
% 第 1 页
勾股定理在西方称为毕达哥拉斯定理（Pythagoras' theorem）。
\index{Pythagoras}
% ...
% 第 2 页
在中国常称勾股定理为商高定理。\index{商高}

\printindex
\end{document}
```


### src/3-4-02.tex

```latex
\renewcommand\seename{参见}
\renewcommand\alsoname{又见}
```


### src/3-4-03.tex

```latex
\newcommand*\numsee[2]{#2（\emph{参见} #1）}
```


### src/3-4-04.tex

```latex
\documentclass[UTF8]{ctexart}
\usepackage{imakeidx}
\makeindex[title={名词索引}]
\makeindex[name=persons,title={人名索引}]

\begin{document}
... \index{名词}
... \index[persons]{人名}
...
\printindex           % 输出名词索引
\printindex[persons]  % 输出人名索引
\end{document}
```


### src/3-4-05.tex

```latex
\newcommand*\keyword[1]{\texttt{#1}\index{#1@\texttt{#1}}}
```


### src/3-4-06.tex

```latex
\documentclass[UTF8]{ctexbook}
\usepackage{imakeidx}
\makeindex[%
  name=persons,           % 索引文件名（默认为 \jobname，即主文件名）
  title={人名索引},       % 索引表标题（默认为 \indexname）
  intoc=true,             % 加入目录（默认为 false，不加入目录）
  columns=2,              % 分栏（默认为 1）
  columnsep=1cm,          % 栏间距（默认为 35pt）
  columnseprule=true,     % 分栏线（默认为 false）
  program=makeindex,      % 调用的索引程序（或用 xindy、texindy）
  options={-s mkind.ist}, % 索引程序的选项（默认为空）
  noautomatic=false       % 不自动调用索引程序（默认为 false）
]
\indexsetup{%
  level=\section*,        % 标题级别（默认 \chapter* 即不编号的章）
  toclevel=section,       % 目录级别（不带反斜线，又如 chapter）
  firstpagestyle=empty,   % 索引第一页的页面风格（默认为 plain）
  headers={人名}{人名},   % 索引的奇偶页眉
  othercode={             % 将在索引条目之前生效的任意代码
    \renewcommand{\indexspace}{\smallskip}}
}
\begin{document}
张三\index[persons]{张三} \newpage
李四\index[persons]{李四} \newpage
王五\index[persons]{王五}

\indexprologue{这里列出本文涉及的所有人名。}
\printindex[persons]
\end{document}
```


### src/3-4-08.tex

```latex
\documentclass[UTF8]{ctexart}
\usepackage{glossaries}
\makeglossaries
\begin{document}

\newglossaryentry{gloss}{
  name=glossary,
  description={A vocabulary with annotations for a particular subject},
  plural=glossaries}

\Glspl{gloss} are important for technical documents.

\newglossaryentry{sec}{
  name=分节,
  description={把文章分成章节}}
\gls{sec}对于长文档非常重要。

\printglossaries
\end{document}
```


### src/4-1-01.tex

```latex
交换律是 $a+b=b+a$，如 $1+2=2+1=3$。
```


### src/4-1-02.tex

```latex
% 用于 ntheorem 宏包
\renewcommand\qedsymbol{\ensuremath{\Box}}
证毕符号：\qedsymbol 或 $\qedsymbol$。
```


### src/4-1-03.tex

```latex
交换律是
\[ a+b=b+a, \]
如
\[
  1+2=2+1=3.
\]
```


### src/4-1-04.tex

```latex
\begin{equation}
  a+b=b+a \label{eq:commutative}
\end{equation}
```


### src/4-1-05.tex

```latex
$\text{被减数} - \text{减数} = \text{差}$
```


### src/4-1-06.tex

```latex
已知的变量有 $a$, $b$, $c$, $d$, $S$, $R$ 和 $T$。
```


### src/4-2-01.tex

```latex
$A_{ij} = 2^{i+j}$
```


### src/4-2-02.tex

```latex
$A_i^k = B^k_i$ \qquad
$K_{n_i} = K_{2^i} = 2^{n_i}
         = 2^{2^i}$ \qquad
$3^{3^{3^{\cdot^{\cdot^{\cdot^3}}}}}$
```


### src/4-2-03.tex

```latex
$a = a'$, $b_0' = b_0''$,
${c'}^2 = (c')^2$
```


### src/4-2-04.tex

```latex
$A = 90^\circ$
```


### src/4-2-05.tex

```latex
\newcommand\degree{^\circ}
```


### src/4-2-06.tex

```latex
\[
  \max_n f(n) = \sum_{i=0}^n A_i
\]
```


### src/4-2-07.tex

```latex
% 导言区 \DeclareMathOperator\dif{d\!}
\[ \int_0^1 f(t) \dif t
= \iint_D g(x,y) \dif x \dif y \]
```


### src/4-2-08.tex

```latex
\[
  \iiint\limits_D \mathrm{d}f
    = \max\nolimits_D g
\]
```


### src/4-2-09.tex

```latex
% \usepackage{mathtools}
$\prescript{n}{m}{H}_i^j < L$
```


### src/4-2-10.tex

```latex
\[ \sideset{_a^b}{_c^d} \sum_{i=0}^n A_i
 = \sideset{}{'} \prod_k f_i \]
```


### src/4-2-11.tex

```latex
$\overset{*}{X}$ \qquad
$\underset{*}{X}$ \qquad
$\overset{*}{\underset{\dag}{X}}$
```


### src/4-2-12.tex

```latex
$A_m{}^n$ 或 $A_m^{\phantom{m}n}$
```


### src/4-2-13.tex

```latex
% 导言区 \usepackage{tensor}
$M\indices{^a_b^{cd}_e}$ \qquad
$\tensor[^a_b^c_d]{M}{^a_b^c_d}$
```


### src/4-2-14.tex

```latex
% 导言区 \usepackage{mhchem}
醋中主要是 \ce{H2O}，含有 \ce{CH3COO-}。

\ce{^{227}_{90}Th} 元素具有强放射性。
```


### src/4-2-15.tex

```latex
\begin{equation}
\ce{2H2 + O2 ->[\text{燃烧}] 2H2O}
\end{equation}
```


### src/4-2-16.tex

```latex
$\overline{a+b} =
  \overline a + \overline b$ \\
$\underline a = (a_0, a_1, a_2, \dots)$
```


### src/4-2-17.tex

```latex
$ \overline{\underline{\underline a}
+ \overline{b}^2} - c^{\underline n} $
```


### src/4-2-18.tex

```latex
$\overleftarrow{a+b}$\\
$\overrightarrow{a+b}$\\
$\overleftrightarrow{a+b}$\\
$\underleftarrow{a-b}$\\
$\underrightarrow{a-b}$\\
$\underleftrightarrow{a-b}$
```


### src/4-2-19.tex

```latex
$\vec x = \overrightarrow{AB}$
```


### src/4-2-20.tex

```latex
$\overbrace{a+b+c} = \underbrace{1+2+3}$
```


### src/4-2-21.tex

```latex
\[ ( \overbrace{a_0,a_1,\dots,a_n}
  ^{\text{共 $n+1$ 项}} ) =
( \underbrace{0,0,\dots,0}_{n} , 1 ) \]
```


### src/4-2-22.tex

```latex
\[ \underbracket{\overbracket{1+2}+3}_3 \]
```


### src/4-2-23.tex

```latex
\[
\frac 12 + \frac 1a = \frac{2+a}{2a}
\]
```


### src/4-2-24.tex

```latex
\[  \frac{1}{\frac 12 (a+b)}
= \frac{2}{a+b}  \]
```


### src/4-2-25.tex

```latex
\[
\tfrac 12 f(x) =
  \frac{1}{\dfrac 1a + \dfrac 1b + c}
\]
```


### src/4-2-26.tex

```latex
\[  \cfrac{1}{1+\cfrac{2}{%
      1+\cfrac{3}{1+x}}}  =
    \cfrac[r]{1}{1+\cfrac{2}{%
      1+\cfrac[l]{3}{1+x}}}   \]
```


### src/4-2-27.tex

```latex
% \usepackage{xfrac}
区别 $\sfrac 1a + b$ 和 $1/(a+b)$
```


### src/4-2-28.tex

```latex
\[
(a+b)^2 = \binom 20 a^2
  + \binom 21 ab + \binom 22 b^2
\]
```


### src/4-2-29.tex

```latex
\newcommand\stiring[2]{\genfrac{[}{]}{0pt}{}{#1}{#2}}
\newcommand\dstiring[2]{\genfrac{[}{]}{0pt}{0}{#1}{#2}}
\newcommand\tstiring[2]{\genfrac{[}{]}{0pt}{1}{#1}{#2}}
\[  \stiring{n}{1} = (n-1)!, \qquad n > 0.  \]
```


### src/4-2-30.tex

```latex
$\sqrt 4 = \sqrt[3]{8} = 2$
```


### src/4-2-31.tex

```latex
\[
\sqrt[n]{\frac{x^2 + \sqrt 2}{x+y}}
\]
```


### src/4-2-32.tex

```latex
\[
(x^p+y^q)^{\frac{1}{1/p+1/q}}
\]
```


### src/4-2-33.tex

```latex
\[
\sqrt[\uproot{16}\leftroot{-2}n]
  {\frac{x^2 + \sqrt 2}{x+y}}
\]
```


### src/4-2-34.tex

```latex
$\sqrt{\frac 12} <
  \sqrt{\vphantom{\frac12}2}$
```


### src/4-2-35.tex

```latex
$\sqrt b \sqrt y$ \qquad
$\sqrt{\mathstrut b} \sqrt{\mathstrut y}$
```


### src/4-2-36.tex

```latex
\[  A = \begin{pmatrix}
  a_{11} & a_{12} & a_{13} \\
  0 & a_{22} & a_{23} \\
  0 & 0 & a_{33}
\end{pmatrix}  \]
```


### src/4-2-37.tex

```latex
\[  A = \begin{bmatrix}
  a_{11} & \dots & a_{1n} \\
   & \ddots & \vdots \\
  0 & & a_{nn}
\end{bmatrix}_{n\times n}  \]
```


### src/4-2-38.tex

```latex
\[  \begin{pmatrix}
1 & \frac 12 & \dots & \frac 1n \\
\hdotsfor{4} \\
m & \frac m2 & \dots & \frac mn
\end{pmatrix}  \]
```


### src/4-2-39.tex

```latex
\[  \begin{pmatrix}
\begin{matrix} 1&0\\0&1 \end{matrix}
& \text{\Large 0} \\
\text{\Large 0} &
\begin{matrix} 1&0\\0&-1 \end{matrix}
\end{pmatrix} \]
```


### src/4-2-40.tex

```latex
复数 $z = (x,y)$ 也可用矩阵 \begin{math}
\left( \begin{smallmatrix}
x & -y \\ y & x
\end{smallmatrix} \right)
\end{math} 来表示。
```


### src/4-2-41.tex

```latex
\[
\sum_{\substack{0<i<n \\ 0<j<i}} A_{ij}
\]
```


### src/4-2-42.tex

```latex
\[  \sum_{\begin{subarray}{l}
  i<10 \\ j<100 \\ k<1000
\end{subarray}} X(i,j,k)  \]
```


### src/4-2-43.tex

```latex
\[  \setcounter{MaxMatrixCols}{15}
\begin{Bmatrix}
0 & 0 & 0 & 0 & 0 & 1 & 0 & 1 & 0 & 0 & 1 & 1 & 1 & 0 & 1\\
1 & 1 & 1 & 1 & 1 & 0 & 1 & 0 & 1 & 1 & 0 & 0 & 0 & 1 & 0
\end{Bmatrix}  \]
```


### src/4-2-44.tex

```latex
% \usepackage{mathtools}
\[  \begin{pmatrix*}[r]
  10 & -10 \\ -20 &  3
\end{pmatrix*}  \]
```


### src/4-2-45.tex

```latex
\[  \bordermatrix{
  & 1 & 2 & 3 \cr
1 & A & B & C \cr
2 & D & E & F \cr}  \]
```


### src/4-3-01.tex

```latex
\newcommand\mi{\mathrm{i}}
\newcommand\me{\mathrm{e}}
```


### src/4-3-02.tex

```latex
% \usepackage{accents}
$\accentset{*}{A}$, $\accentset{@}{X}$,
$\underaccent{\check}{a}$,
$\underaccent{\hat}{b}$,
$\undertilde{abc}$
```


### src/4-3-03.tex

```latex
% \usepackage{bm}
% \hm 的效果需要实际字体支持
\textbf{勾股定理 $\bm{a^2+b^2=c^2}$}
\[  \bm u + \bm v = (1,0) + (0,1)  \]
\[  \hm\int > \bm\int > \int  \]
```


### src/4-3-04.tex

```latex
\[
\mathcal{F}(x) = \sum_{k=0}^\infty
  \oint_0^1 f_k(x,t) \,\mathrm{d}t
\]
```


### src/4-3-05.tex

```latex
\[  \int f(x) \,\mathrm{d} x  \]
```


### src/4-3-06.tex

```latex
\newcommand\diff{\,\mathrm{d}}
\[  \iiint\limits_{0<x,y,z<1} f(x,y,z)
  \diff x \diff y \diff z  \]
```


### src/4-3-07.tex

```latex
$  \cos 2x = \cos(x+x)
= \cos^2 x - \sin^2 x  $
```


### src/4-3-08.tex

```latex
\begin{equation}
  \varlimsup_{k\to\infty} A_k = \lim_{J\to\infty} \lim_{K\to\infty}
    \bigcap_{j=1}^J \bigcup_{k=j}^K A_k
\end{equation}
```


### src/4-3-09.tex

```latex
% 导言区 \usepackage{amsmath}
\DeclareMathOperator{\card}{card}         % 集合基数
\DeclareMathOperator*{\esssup}{ess\,sup}  % 本性上确界
```


### src/4-3-10.tex

```latex
\[  \operatorname*{Prob}_{\{1,\ldots,n\}}
  (\bar X) =
\operatorname{card}(\varnothing)/n = 0. \]
```


### src/4-3-11.tex

```latex
% 导言区 \DeclareMathOperator\dif{d\!}
\[
\int_0^1 \int_0^1 f(x,y) \int_0^1 \frac{\dif z}{g(x,y,z)} \dif x\dif y
\]
```


### src/4-3-12.tex

```latex
群 $G$ 的 $(H,K)$-双陪集为
$H\backslash G/K$。

$S\cup T = (S\cap T)\cup (S\setminus T)$
```


### src/4-3-13.tex

```latex
\newcommand\defeq{\stackrel{\text{d}}{=}}
$f(x) \defeq ax^2+bx+c$
```


### src/4-3-14.tex

```latex
\[ A  \xleftarrow{0<x<1} B
  \xrightarrow[x\leq 0]{x\geq 1} C  \]
```


### src/4-3-15.tex

```latex
$x=y \implies x+a=y+a$ \\
$x=y \impliedby x+a=y+a$ \\
$x=y \iff x\le y \And x\ge y$
```


### src/4-3-16.tex

```latex
运算 $\heartsuit$ 的交换律：
\[  a \mathbin{\heartsuit} b =
b \mathbin{\heartsuit} a  \]
```


### src/4-3-17.tex

```latex
\newcommand\varnotin{%
  \mathrel{\overline{\in}}}
$\forall x$, $\forall S$, $x\varnotin S$.
```


### src/4-3-18.tex

```latex
\newcommand*\abs[1]{\lvert#1\rvert}
$\abs{x+y} \le \abs{x} + \abs{y}$
```


### src/4-3-19.tex

```latex
\[
\partial_x \partial_y \left[
\frac12 \left( x^2+y^2 \right)^2 + xy
\right]
\]
```


### src/4-3-20.tex

```latex
\[  \left.
\int_0^x f(t,\lambda) \,\mathrm{d}t
    \right|_{x=1}, \qquad
\lambda \in
  \left[\frac12,\infty\right).  \]
```


### src/4-3-21.tex

```latex
\[
  \Pr \left( X>\frac12
  \middle\vert Y=0 \right)
= \left.
  \int_0^1 p(t)\,\mathrm{d}t
  \middle/ ( N^2+1 ) \right.
\]
```


### src/4-3-22.tex

```latex
\[
\biggl( \sum_{i=1}^n A_i \biggr) \cdot
\biggl( \sum_{i=1}^n B_i \biggr) > 0
\]
```


### src/4-3-23.tex

```latex
$ 1 + \Bigl(2 - \bigl(3 \times
  (4 \div 5) \bigr) \Bigr) $
```


### src/4-3-24.tex

```latex
\[  P = \biggl< \frac12 \biggr>, \qquad
M = \left< \begin{matrix}
  a & b \\ c & d \\
\end{matrix}\right>  \]
```


### src/4-3-25.tex

```latex
$a:b = ac:bc$
```


### src/4-3-26.tex

```latex
\[  \Pr(x\colon g(x)>5) = 0.25,
  \qquad g\colon x \mapsto x^2  \]
```


### src/4-3-27.tex

```latex
\[  (1,\dots,n) \qquad 1+\dots+n
\qquad  a=\dots=z  \]
```


### src/4-3-28.tex

```latex
\[  \prod_{i=1}^n a_i = a_1 \dotsm a_n
\qquad \int_0^1\dotsi\int_0^1  \]
```


### src/4-4-01.tex

```latex
\begin{gather}
a+b = b+a \\
ab = ba
\end{gather}
```


### src/4-4-02.tex

```latex
\begin{gather*}
3+5 = 5+3 = 8 \\
3\times 5 = 5\times 3
\end{gather*}
```


### src/4-4-03.tex

```latex
\begin{gather}
3^2 + 4^2 = 5^2 \notag \\
5^2 + 12^2 = 13^2 \notag \\
a^2 + b^2 = c^2
\end{gather}
```


### src/4-4-04.tex

```latex
\begin{align}
  x &= t + \cos t + 1 \\
  y &= 2\sin t
\end{align}
```


### src/4-4-05.tex

```latex
\begin{align*}
x &= t  & x &= \cos t    & x &= t \\
y &= 2t & y &= \sin(t+1) & y &= \sin t
\end{align*}
```


### src/4-4-06.tex

```latex
% 关系符后对齐，需要使用空的分组
% 代替关系符右侧符号，保证间距
\begin{align*}
    & (a+b)(a^2-ab+b^2) \notag \\
={} & a^3 - a^2b + ab^2 + a^2b
      - ab^2 + b^2 \notag \\
={} & a^3 + b^3 \label{eq:cubesum}
\end{align*}
```


### src/4-4-07.tex

```latex
% 缺少关系符，需要使用幻影给关系符
% 占位，并利用 \mathrel 保证间距
\begin{align*}
&\mathrel{\phantom{=}}
   (a+b)(a^2-ab+b^2) \notag \\
&= a^3 - a^2b + ab^2 + a^2b
   - ab^2 + b^2 \notag \\
&= a^3 + b^3 \label{eq:cubesum}
\end{align*}
```


### src/4-4-08.tex

```latex
\begin{flalign}
  x &= t  & x &= 2 \\
  y &= 2t & y &= 4
\end{flalign}
```


### src/4-4-09.tex

```latex
\begin{alignat}{2}
  x &= \sin t &\quad&\text{水平方向} \\
  y &= \cos t &&\text{垂直方向}
\end{alignat}
```


### src/4-4-10.tex

```latex
\begin{alignat*}{6}
 &1 & &+2 & &+3 & &+4 & &+5 & &=15 \\
 &1 & &   & &+3 & &   & &+5 & &=9 \\
 &  & &+2 & &   & &+4 & &   & &=6
\end{alignat*}
```


### src/4-4-11.tex

```latex
\begin{align*}
x^2 + 2x &= -1
\intertext{移项得}
x^2 + 2x + 1 &= 0
\end{align*}
```


### src/4-4-12.tex

```latex
设 $G$ 是一个带有运算 $*$ 的集合，则 $G$ 是\emph{群}，当且仅当：
\begin{subequations}\label{eq:group}
\begin{alignat}{2}
\forall a,b,c &\in G, &\qquad (a*b)*c &= a*(b*c);\label{subeq:assoc}\\
\exists e, \forall a &\in G, &  e*a &= a; \\
\forall a, \exists b &\in G, &  b*a &= e.
\end{alignat}
\end{subequations}
式~\eqref{eq:group} 的三个条件中，\eqref{subeq:assoc}~又称为结合律。
```


### src/4-4-13.tex

```latex
\begin{multline}
a+b+c+d+e \\
 +f+g+h+i+j \\
 +k+l+m+n+o \\
   +p+q+r+s+t
\end{multline}
```


### src/4-4-14.tex

```latex
\setlength{\multlinegap}{3em}
\setlength{\multlinetaggap}{3em}
\begin{multline*}
1+2+3 \\ \shoveleft{+4+5+6} \\
+7+8+9 \\
\shoveright{+10+11+12} \\ +13+14+15
\end{multline*}
```


### src/4-4-15.tex

```latex
\begin{equation}  \begin{split}
\cos 2x &= \cos^2 x - \sin^2 x \\
        &= 2\cos^2 x - 1
\end{split}  \end{equation}
```


### src/4-4-16.tex

```latex
\begin{equation}\label{eq:trigonometric}
\begin{split}
\frac12 (\sin(x+y) + \sin(x-y))
  &= \frac12(\sin x\cos y + \cos x\sin y) \\
  &\quad + \frac12(\sin x\cos y - \cos x\sin y) \\
  &= \sin x\cos y
\end{split}
\end{equation}
```


### src/4-4-17.tex

```latex
% \usepackage{breqn}
\begin{dmath}\label{eq:trigonometric}
\frac12 (\sin(x+y) + \sin(x-y)) = \frac12(\sin x\cos y + \cos x\sin y)
+ \frac12(\sin x\cos y - \cos x\sin y) = \sin x\cos y
\end{dmath}
```


### src/4-4-18.tex

```latex
\begin{equation}\label{eq:dirichlet}
D(x) = \begin{cases}
1, & \text{if } x \in \mathbb{Q}; \\
0, & \text{if } x \in
     \mathbb{R}\setminus\mathbb{Q}.
\end{cases}
\end{equation}
```


### src/4-4-19.tex

```latex
% \usepackage{mathtools}
\[ \left\lvert x - \frac12 \right\rvert
= \begin{dcases}
x-\frac12,  & x \geq \frac12;\\
\frac12-x,  & x < \frac12.
\end{dcases}  \]
```


### src/4-4-20.tex

```latex
% \usepackage{cases}
\begin{numcases}{f(x)=}
  1/q, & if $x = p/q \in \mathbb{Q}$; \\
  0,   & else.
\end{numcases}
```


### src/4-4-21.tex

```latex
\[  \left. \begin{gathered}
  S \subseteq T \\
  S \supseteq T
\end{gathered} \right\}
\implies S = T  \]
```


### src/4-4-22.tex

```latex
% \usepackage{mathtools}
\[  \text{比较曲线}
\left\{ \begin{lgathered}
  x = \sin t, y = \cos t \\
  x = t + \sin t, y = \cos t
\end{lgathered} \right.  \]
```


### src/4-4-23.tex

```latex
\begin{equation}\label{eq:trinary}
\begin{aligned} x+y &= -1 \\ x+y+z &= 2 \\ xyz &= -6 \end{aligned}
\implies
\begin{aligned} x+y &= -1 \\ xy &= -2 \\ z &= 3 \end{aligned}
\implies
\begin{alignedat}{3}
             x &= 1,  &\quad y &= -2, &\quad z &= 3 \\
\text{或\ }  x &= -2, &      y &= 1,  &      z &= 3
\end{alignedat}
\end{equation}
```


### src/4-4-24.tex

```latex
% \usepackage{mathtools}
\newcommand\Set[2]{%
  \left\{#1\ \middle\vert\ #2 \right\}}
\[  \Omega = \Set{x}{\begin{multlined}
x^7+x^6+x^5 \\ +x^4+x^3+x^2 \\ +x+1=0
\end{multlined}}  \]
```


### src/4-4-25.tex

```latex
\begin{align*}
2^5 &= (1+1)^5 \\
&= \begin{multlined}[t]
\binom50\cdot 1^5 + \binom51\cdot 1^4 \cdot 1
  + \binom52\cdot 1^3 \cdot 1^2 \\
+ \binom53\cdot 1^2 \cdot 1^3 + \binom54\cdot 1 \cdot 1^4
  + \binom55\cdot 1^5
\end{multlined} \\
&= \binom50 + \binom51 + \binom52 + \binom53 + \binom54 + \binom55
\end{align*}
```


### src/4-5-01.tex

```latex
\documentclass[fleqn,leqno]{article}
\usepackage[tbtags]{amsmath}
```


### src/4-5-02.tex

```latex
\begin{equation*}
  a^2 + b^2 = c^2 \tag{$\star$}
\end{equation*}
```


### src/4-5-03.tex

```latex
\begin{equation*}
\sum_{k=1}^n \frac1k
  = \ln n + \mathrm{C} \tag*{[Euler]}
\end{equation*}
```


### src/4-5-04.tex

```latex
\newtagform{bracket}[\textit]{[}{]}
\usetagform{bracket}
\begin{equation}
\sum_{k=1}^n \frac1k = \ln n + \mathrm{C}
\end{equation}
```


### src/4-5-05.tex

```latex
\renewcommand\theequation{%
  \thechapter.\roman{equation}}
\begin{equation}\label{eq:euler}
  \chi = V + F - E = 2
\end{equation}
```


### src/4-5-06.tex

```latex
\newenvironment{mysubeqn}%
  {\begin{subequations}
    \renewcommand\theequation{\theparentequation-\roman{equation}}}%
  {\end{subequations}}
\begin{mysubeqn}
\begin{gather}
  \zeta(2) = \frac{\uppi^2}{6} \\
  \zeta(s) = \prod_{p\text{ prime}} \frac{1}{1 - p^{-s}}
\end{gather}
\end{mysubeqn}
```


### src/4-5-07.tex

```latex
\documentclass{book}
\usepackage{chngcntr}
\counterwithout{equation}{chapter}
```


### src/4-5-08.tex

```latex
{\Large\[F(x) \equiv 0\]}
```


### src/4-5-09.tex

```latex
\newcommand\D{\displaystyle}
\[  \mathop{\text{\Large$\D\sum_i$}}
  \dfrac{\D\int f_i(x)\,\mathrm{d}x}
    {\D\oint g_i(x)\,\mathrm{d}x}  \]
```


### src/4-5-10.tex

```latex
% 单位 pt，中文五号字（10.5 bp）
\DeclareMathSizes{10.54}{10.54}{6.32}{4.22}
% 默认标号尺寸是正文 0.6 倍
\renewcommand\defaultscriptratio{0.6}
% 默认小标号尺寸是正文 0.4 倍
\renewcommand\defaultscriptscriptratio{0.4}
```


### src/4-5-11.tex

```latex
\fbox{\parbox{17em}{%
$F(x,y,z)\* G(x,y,z)$ 不同于 $F(x,y,z)\* G(x,y,z)$ 吗？}}
```


### src/4-5-12.tex

```latex
\[  \left\{
  0, 1, -1, 2, -2, \frac12, -\frac12, \frac13, -\frac13, \dotsc
\right\}  \]
```


### src/4-5-13.tex

```latex
\renewcommand\*{%
  \discretionary{\,\mbox{$\cdot$}}{}{}}
\fbox{\parbox{17em}{%
$F(x,y,z)\* G(x,y,z)$ 不同于 $F(x,y,z)\* G(x,y,z)$}}
```


### src/4-5-14.tex

```latex
\begin{align*}
& \int f(x)\,\mathrm{d}x\,\mathrm{d}y \\
& \sqrt2 \, x   && \sqrt{\,\log x} \\
& x^2 \! / 2    && |\!{\gets} 5 {\to}\!|
\end{align*}
```


### src/4-5-15.tex

```latex
\[
  f(x) \equiv 0, \qquad x > 0
\]
```


### src/4-5-16.tex

```latex
\newcommand\lowint{%
  \mspace{2mu}\underline{\vphantom{\int}\mspace{7mu}}\mspace{-9mu}\int}
\[
  \lowint_a^b f(x)\,\mathrm{d}x = \inf_P s(P).
\]
```


### src/4-5-17.tex

```latex
\zihao{7}% 5.5bp
\setlength{\abovedisplayskip}%
  {2pt plus 1pt minus 3pt}
当文字非常小时也应该同时减小
显示公式与文字的间距：
\[ 1+2+3+4+5 = 15 \]
```


### src/4-5-18.tex

```latex
\setlength\jot{9pt}% 用来分开分式
\begin{gather}
a = \frac12 \\ b = \frac34
\end{gather}
```


### src/4-5-19.tex

```latex
\setlength{\mathsurround}{3pt}
公式 $a+b$ 与文字比较松散。
```


### src/4-5-20.tex

```latex
$\ddot{h} \iff \skew{-2}{\ddot}{h}$
```


### src/4-5-21.tex

```latex
\begin{equation*}
\begin{split}
f(x) &= \left(\vphantom{\frac1x}
x+2+3+4\right. \\
  & \left.\phantom{=\biggl(x+{}}
5+6+7+\frac1x \right)^2 \\
  &= g(x)
\end{split}
\end{equation*}
```


### src/4-5-22.tex

```latex
\[  \underline{
\smash{\int f(x)\,\mathrm{d}x}
}  \]
```


### src/4-5-23.tex

```latex
$\sqrt{A_{n_k}} \qquad
\sqrt{\smash[b]{A_{n_k}}}$
```


### src/4-5-24.tex

```latex
\vspace{\baselineskip}% 被忽略的高度
\[
  \text{实数} \begin{cases}
    \text{有理数}\smash[t]{\begin{cases}
      \text{整数}\smash{\begin{cases}
          \text{奇数} \\ \text{偶数}
        \end{cases}}\\
      \text{分数}
    \end{cases}} \\[4ex]
    \text{无理数}\smash[b]{\begin{cases}
      \text{代数无理数} \\ \text{超越数}
    \end{cases}}
  \end{cases}
\]
```


### src/5-1-01.tex

```latex
\begin{tabular}{lcr}
left & center & right \\
本列左对齐 & 本列居中
  & 本列右对齐 \\
\end{tabular}
```


### src/5-1-02.tex

```latex
\begin{tabular}{ll}
\bfseries 功能 & \bfseries 环境 \\
表格 & \ttfamily tabular \\
对齐 & \ttfamily tabbing \\
\end{tabular}
```


### src/5-1-03.tex

```latex
\[
  \begin{array}{r|r}
    \frac12 & 0 \\
    \hline
    0 & -\frac12 \\
  \end{array}
\]
```


### src/5-1-04.tex

```latex
\begin{tabular}[b]{c}
上 \\ 中间 \\ 下
\end{tabular}
与底部对齐。
```


### src/5-1-05.tex

```latex
\begin{tabular}{|rr|}
\hline
  输入 & 输出 \\ \hline
  $-2$ & 4 \\
  0 & 0 \\
  2 & 4 \\
\hline
\end{tabular}
\qquad
输入与输出有关系 $y = x^2$。
```


### src/5-1-06.tex

```latex
\begin{tabular}{|c|rrr|p{4em}|}
\hline
  姓名 & 语文 & 数学 & 外语 & 备注 \\
\hline
  张三 & 87 & 100 & 93 & 优秀 \\
  李四 & 75 & 63 & \emph{52} & 补考另行通知 \\
  王小二 & 80 & 82 & 78 & \\
\hline
\end{tabular}
```


### src/5-1-07.tex

```latex
\begin{tabular}{|c|r@{.}l|}
  \hline
  收入 & 12345&6  \\ \hline
  支出 &   765&43 \\ \hline
  节余 & 11580&17 \\ \hline
\end{tabular}
```


### src/5-1-08.tex

```latex
\[
\begin{array}{|c|*{3}{r@{.}l|}}  % 相当于 |c|r@{.}l|r@{.}l|r@{.}l|
\hline
\text{收入} & 12345&6  & 5000&0 &   1020&55 \\ \hline
\text{支出} &   765&43 & 5120&5 &  98760&0  \\ \hline
\text{节余} & 11580&17 & -120&5 & -97739&45 \\ \hline
\end{array}
\]
```


### src/5-1-09.tex

```latex
% 导言区 \usepackage{dcolumn}
\newcolumntype{d}{D{.}{.}{2}}
\begin{tabular}{|c|*{3}{d|}}  % 相当于 |c|d|d|d|
\hline
姓名 & \multicolumn{1}{c|}{张三} & \multicolumn{1}{c|}{李四}
     & \multicolumn{1}{c|}{王五} \\ \hline
收入 & 12345.6  & 5000   &   1020.55 \\ \hline
支出 &   765.43 & 5120.5 &  98760    \\ \hline
节余 & 11580.17 & -120.5 & -97739.45 \\ \hline
\end{tabular}
```


### src/5-1-10.tex

```latex
\verb=tabular= 环境可以在
$\left(\begin{tabular}{@{}c@{}}
  文本 \\ 数学
\end{tabular}\right)$
模式下通用。
```


### src/5-1-11.tex

```latex
% 第 1 列前是原始间距，第 2 列前只有 1em 间距
% 第 3、4 列前则是原始间距加 1em
\begin{tabular}{|c|@{\extracolsep{1em}}c|c|c|}
\hline
  1 & 2 & 3 & 4 \\
  1 & 2 & 3 & 4 \\
\hline
\end{tabular}
```


### src/5-1-12.tex

```latex
\renewcommand\arraystretch{2}
\begin{tabular}{|l|r|}
\hline
这是一个 & 宽松的表格 \\ \hline
loose & table \\ \hline
\end{tabular}
```


### src/5-1-13.tex

```latex
% 导言区 \usepackage{array}
\begin{tabular}[b]{|c|}
\firsthline
上 \\ 中间 \\ 下 \\
\lasthline
\end{tabular}
与底部对齐。
```


### src/5-1-14.tex

```latex
\begin{tabular}{|r|r|}
  \hline
  \multicolumn{2}{|c|}{成绩} \\ \hline
  语文 & 数学 \\ \hline
  87 & 100 \\ \hline
\end{tabular}
```


### src/5-1-15.tex

```latex
\begin{tabular}{|r|r|}
  \hline
  \multicolumn{1}{|c|}{输入} &
  \multicolumn{1}{c|}{输出} \\ \hline
  1 & 1 \\ 5 & 25 \\ 15 & 225 \\ \hline
\end{tabular}
```


### src/5-1-16.tex

```latex
\begin{tabular}{|c|r|r|}
\hline
& \multicolumn{2}{c|}{成绩} \\ \cline{2-3}
姓名 & 语文 & 数学 \\ \hline
张三 & 87 & 100 \\ \hline
\end{tabular}
```


### src/5-1-17.tex

```latex
\begin{tabular}{|c|}
\hline
1 \\ \hline
\begin{tabular}{@{}c|c@{}} 1 & 2 \end{tabular} \\ \hline
\begin{tabular}{@{}c|c|c@{}} 1 & 2 & 3\end{tabular} \\ \hline
\end{tabular}
```


### src/5-1-18.tex

```latex
% 导言区 \usepackage{multirow}
\begin{tabular}{|c|r|r|}
\hline
\multirow{2}*{姓名} &
\multicolumn{2}{c|}{成绩} \\ \cline{2-3}
     & 语文 & 数学 \\ \hline
张三 & 87   & 100  \\ \hline
\end{tabular}
```


### src/5-1-19.tex

```latex
% 导言区 \usepackage{makecell}
\begin{tabular}{|r|r|}
\hline
\makecell{处理前\\数据} &
\makecell{处理后\\数据} \\ \hline
4934 & 8945 \\
\hline
\end{tabular}
```


### src/5-1-20.tex

```latex
% 导言区 \usepackage{makecell}
\begin{tabular}{|r|r|}
\hline
\thead{处理前\\数据} &
\thead{处理后\\数据} \\ \hline
4934 & 8945 \\
\hline
\end{tabular}
```


### src/5-1-21.tex

```latex
% 导言区 \usepackage{rotating,makecell}
\settowidth\rotheadsize{\theadfont 数学课}
\begin{tabular}{|c|c|}
\hline
\thead{姓名} & \rothead{数学课\\成绩} \\\hline
张三 & 100 \\\hline
\end{tabular}
```


### src/5-1-22.tex

```latex
% 导言区 \usepackage{multirow,makecell}
\begin{tabular}{|c|r|}
\hline
\multirowcell{3}{各科\\成绩} & 78 \\
\cline{2-2} & 82 \\ \cline{2-2}
 & 86 \\ \hline
\end{tabular}
```


### src/5-1-23.tex

```latex
% 导言区 \usepackage{diagbox}
\begin{tabular}{|c|*{4}{c}|}
\hline
\diagbox{天干}{地支} & 子 & 丑 & 寅 & 卯 \\
\hline
甲 &  1 && 51 & \\
乙 &&  2 && 52 \\
丙 & 13 && 3 & \\
丁 && 14 && 4\\
\hline
\end{tabular}
```


### src/5-1-24.tex

```latex
% 导言区 \usepackage{diagbox}
\begin{tabular}{|c|*{4}{c}|}
\hline
\diagbox{天干}{序号}{地支} & 子 & 丑 & 寅 & 卯 \\
\hline
甲 &  1 && 51 & \\
乙 &&  2 && 52 \\
丙 & 13 && 3 & \\
丁 && 14 && 4\\
\hline
\end{tabular}
```


### src/5-1-25.tex

```latex
\begin{tabular*}{\textwidth}{|c@{\extracolsep{\fill}}ccccc|}
\hline
  数字 & 1 & 2 & 3 & 4 & 5 \\
  字母 & A & B & C & D & E \\
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\
\hline
\end{tabular*}
```


### src/5-1-26.tex

```latex
% 导言区 \usepackage{tabularx}
\begin{tabularx}{\textwidth}{|c|X|X|X|X|X|}
\hline
  数字 & 1 & 2 & 3 & 4 & 5 \\ \hline
  字母 & A & B & C & D & E \\ \hline
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\
\hline
\end{tabularx}
```


### src/5-1-27.tex

```latex
% 导言区 \usepackage{tabularx}
\newcolumntype{Y}{>{\centering\arraybackslash}X}
\begin{tabularx}{\textwidth}{|c|Y|Y|Y|Y|Y|}
\hline
  数字 & 1 & 2 & 3 & 4 & 5 \\ \hline
  字母 & A & B & C & D & E \\ \hline
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\
\hline
\end{tabularx}
```


### src/5-1-28.tex

```latex
% 导言区使用 \usepackage{longtable}
\newcommand\meta[1]{\emph{$\langle$#1$\rangle$}}
\begin{longtable}{|l|l|}
\caption{\texttt{longtable} 环境中的命令汇总} \\
\hline
\endfirsthead
\caption{\texttt{longtable} 环境中的命令汇总（续表）} \\
\hline
\endhead
\hline
\multicolumn{2}{c}{\itshape 接下一页表格……} \\[2ex]
\endfoot
\hline
\endlastfoot
\multicolumn{2}{|c|}{环境的水平对齐可选项} \\ \hline
留空 & 表格居中%
\footnote{实际上，留空的对齐方式是由一组命令控制的，参见宏包文档。} \\
\verb=[c]= & 表格居中 \\
\verb=[l]= & 表格左对齐 \\
\verb=[r]= & 表格右对齐 \\
\hline \multicolumn{2}{|c|}{结束表格一行的命令} \\ \hline
\verb=\\= & 普通的结束一行表格 \\
\verb=\\[=\meta{距离}\verb=]= & 结束一行，并增加额外间距 \\
\verb=\\*= & 结束一行，禁止在此分页 \\
\verb=\kill= & 当前行不输出，只参与宽度计算 \\
\verb=\endhead= & 此命令以上部分是每页的表头 \\
\verb=\endfirsthead= & 此命令以上部分是表格第一页的表头 \\
\verb=\endfoot= & 此命令以上部分是每页的表尾 \\
\verb=\endlastfoot= & 此命令以上部分是表格最后一页的表尾 \\
\hline \multicolumn{2}{|c|}{标题命令} \\ \hline
\verb=\caption{=\meta{标题}\verb=}= & 生成带编号的表格标题 \\
\verb=\caption*{=\meta{标题}\verb=}= & 生成不带编号的表格标题 \\
\hline \multicolumn{2}{|c|}{分页控制} \\ \hline
\verb=\newpage= & 强制分页 \\
\verb=\pagebreak[=\meta{程度}\verb=]= & 允许分页的程度（0--4） \\
\verb=\nopagebreak[=\meta{程度}\verb=]= & 禁止分页的程度（0--4） \\
\hline \multicolumn{2}{|c|}{脚注控制} \\ \hline
\verb=\footnote= & 使用脚注\footnote{普通表格中不能用。}，
  注意不能用在表格头尾 \\
\verb=\footnotemark= & 单独产生脚注编号，不能用在表格头尾 \\
\verb=\footnotetext= & 单独产生脚注文字 \\
\hline \multicolumn{2}{|c|}{长度参数} \\ \hline
\verb=\LTleft= & 对齐方式留空时，表格左边的间距，默认为 \verb=\fill= \\
\verb=\LTright= & 对齐方式留空时，表格右边的间距，默认为 \verb=\fill= \\
\verb=\LTpre= & 表格上方间距，默认为 \verb=\bigskipamount= \\
\verb=\LTpost= & 表格下方间距，默认为 \verb=\bigskipamount= \\
\verb=\LTcapwidth= & 表格标题的宽度，默认为 4\,in \\
\end{longtable}
```


### src/5-1-29.tex

```latex
% foo.tex
% 导言区用：
\usepackage{ltxtable}
% 正文使用：
\LTXtable{\textwidth}{mytable}
```


### src/5-1-30.tex

```latex
% mytable.tex
\begin{longtable}{|X|X|X|}
  ...
\end{longtable}
```


### src/5-1-31.tex

```latex
% 导言区使用
% \usepackage{ltxtable}
% \usepackage{fancyvrb}
\begin{VerbatimOut}{\jobname.vrb}
\begin{longtable}{|c|X|X|X|X|X|}
\caption{各种序号} \\ \hline
\endfirsthead
\hline
\endhead
\hline
\endfoot
  数字 & 1 & 2 & 3 & 4 & 5 \\ \hline
  字母 & A & B & C & D & E \\ \hline
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\
\end{longtable}
\end{VerbatimOut}
\LTXtable{0.5\textwidth}{\jobname.vrb}
```


### src/5-1-32.tex

```latex
% \usepackage{tabu}
% \usepackage{longtable} % 仍然需要载入 longtable
\begin{longtabu}to 0.5\textwidth{|c|X|X|X|X|X|}
\hline
\endhead
\hline
\endfoot
\caption{各种序号} \\ \hline
\endfirsthead
  数字 & 1 & 2 & 3 & 4 & 5 \\ \hline
  字母 & A & B & C & D & E \\ \hline
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\
\end{longtabu}
```


### src/5-1-33.tex

```latex
% \usepackage{xtab}
\begin{center}
\tablecaption{各种序号}
\tablefirsthead{\hline}
\tabletail{\hline \multicolumn{6}{r}{\small 接下页}\\}
\tablelasttail{\hline}
\begin{xtabular}{|*{6}{c|}}
  数字 & 1 & 2 & 3 & 4 & 5 \\ \hline
  字母 & A & B & C & D & E \\ \hline
  天干 & 甲 & 乙 & 丙 & 丁 & 戊 \\ \hline
\end{xtabular}
\end{center}
```


### src/5-1-34.tex

```latex
\begin{tabular}{ccccc}
  \toprule
  序号 & 性别 & 年龄 & 身高/cm & 体重/kg \\
  \midrule
  1 & F & 14 & 156 & 42 \\
  2 & F & 16 & 158 & 45 \\
  3 & M & 14 & 162 & 48 \\
  4 & M & 15 & 163 & 50 \\
  \bottomrule
\end{tabular}
```


### src/5-1-35.tex

```latex
% 导言区 \usepackage{multirow,booktabs}
\begin{tabular}{*{6}{c}}
\bottomrule
\multirow{2}*{姓名} & \multicolumn{2}{c}{文科} &
  \multicolumn{2}{c}{理科} & \\
\cmidrule(lr){2-3}\cmidrule(lr){4-5}\cmidrule(lr){6-6}
  \morecmidrules\cmidrule(lr){6-6}
& 历史 & 文学 & 物理 & 化学 & 总评 \\
\midrule
张三 & A & A & B & A & A \\
\bottomrule
\end{tabular}
```


### src/5-1-36.tex

```latex
% 导言区 \usepackage{makecell}
\begin{tabular}{c|cc}
\Xhline{2pt}
自变量 & \multicolumn{2}{c}{因变量} \\
\Xcline{2-3}{0.4pt}
半径 & 周长 & 面积 \\
\Xhline{1pt}
1.00 & 6.28 & 6.28 \\
2.00 & 12.57 & 12.57 \\
3.00 & 18.85 & 28.27 \\
\Xhline{2pt}
\end{tabular}
```


### src/5-1-37.tex

```latex
% \usepackage{makecell}
\newcolumntype{V}{!{\vrule width 2pt}}
\begin{tabular}{Vc|ccV}
\Xhline{2pt}
自变量 & \multicolumn{2}{cV}{因变量} \\
\Xcline{2-3}{0.4pt}
半径 & 周长 & 面积 \\
\Xhline{1pt}
1.00 & 6.28 & 6.28 \\
2.00 & 12.57 & 12.57 \\
3.00 & 18.85 & 28.27 \\
\Xhline{2pt}
\end{tabular}
```


### src/5-1-38.tex

```latex
\begin{tabular}{|c||cc|}
\hline\hline
自变量 & \multicolumn{2}{c|}{因变量} \\
\cline{2-3}
半径 & 周长 & 面积 \\
\hline\hline
1.00 & 6.28 & 6.28 \\
2.00 & 12.57 & 12.57 \\
3.00 & 18.85 & 28.27 \\
\hline\hline
\end{tabular}
```


### src/5-1-39.tex

```latex
% \usepackage{hhline}
\begin{tabular}{|c||cc|}
\hhline{|=:t:==|}
半径 & 周长 & 面积 \\
\hhline{|=::==|}
1.00 & 6.28 & 6.28 \\
\hhline{|=:b:==|}
\end{tabular}
```


### src/5-1-40.tex

```latex
% \usepackage{arydshln}
\[
\left(
\begin{array}{@{}ccc:c@{}}
  a_{11} & a_{12} & a_{13} & b_1 \\
  a_{21} & a_{22} & a_{23} & b_2 \\
  a_{31} & a_{32} & a_{33} & b_3 \\
  \cdashline{1-3}
  0 & 0 & 0 & b_4 \\
\end{array}
\right)
\]
```


### src/5-1-41.tex

```latex
% \usepackage{arydshln}
\setlength\dashlinedash{1pt}
\setlength\dashlinegap{2pt}
\begin{tabular}{:cc:cc:}
\hdashline
上 & 上 & 上 & 上 \\
\cdashline{1-2}
下 & 下 & 下 & 下 \\
\hdashline
\end{tabular}
```


### src/5-1-42.tex

```latex
% \usepackage{arydshln}
\begin{tabular}{;{8pt/2pt}cc;{2pt/2pt}cc;{8pt/2pt}}
\hdashline[8pt/2pt]
上 & 上 & 上 & 上 \\
\cdashline{1-2}[2pt/2pt]
下 & 下 & 下 & 下 \\
\hdashline[8pt/2pt]
\end{tabular}
```


### src/5-1-43.tex

```latex
% 解决 arydshln 与 hhline, makecell 的冲突
\usepackage{array}
\newcolumntype{|}{!{\vline}}
```


### src/5-1-44.tex

```latex
% \usepackage{array} 或调用其他依赖 array 的宏包
\begin{tabular}{>{\bfseries}c|>{\itshape}c>{$}c<{$}}
\hline
姓名 & \textnormal{得分} & \multicolumn{1}{c}{额外加分} \\
\hline
张三 & 85 & +7 \\
李四 & 82 & 0 \\
王五 & 70 & -2 \\
\hline
\end{tabular}
```


### src/5-1-45.tex

```latex
% \usepackage{array}
\begin{tabular}{|>{$}r<{$}|>{\setlength\parindent{2em}}m{15em}|%
  >{\centering\arraybackslash}m{4em}|}
\hline
\pi & 希腊字母，多用于表示圆周率，也常用作变量。表示圆周率时多使用
  直立体。 & 常用 \\
\hline
\aleph & 希伯来字母的第一个，在数学中通常用于表示特殊集合的基数。
  & 不常用 \\
\hline
\end{tabular}
```


### src/5-1-46.tex

```latex
% \usepackage{array}
\begin{tabular}{c!{$\Rightarrow$}c}
张三 & 85 \\
李四 & 82 \\
王五 & 70 \\
\end{tabular}
```


### src/5-1-47.tex

```latex
% \usepackage{array}
\newcolumntype{M}{>{$}c<{$}}
\newcolumntype{P}[1]{>{\setlength\parindent{2em}}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}
% 使用新的列格式：
\begin{tabular}{|M|P{15em}|C{4em}|}
  ...
\end{tabular}
```


### src/5-1-48.tex

```latex
% \usepackage{tabu}
\begin{tabu}{ccc}
\hline
\rowfont{\bfseries}
姓名 & 得分 & 额外加分 \\
\hline
张三 & 85 & $+7$ \\
\rowfont{\itshape}
李四 & 82 & 0 \\
王五 & 70 & $-2$ \\
\hline
\end{tabu}
```


### src/5-1-49.tex

```latex
\[ \left\{ \begin{matrix}
  1 & 2 \\ 3 & 4
\end{matrix} \right. \]
```


### src/5-1-50.tex

```latex
% \usepackage{delarray}
\[
  \begin{array}({cc}]   % 左边圆括号，右边方括号
    1 & 2 \\
    3 & 4
  \end{array}
\]
```


### src/5-1-51.tex

```latex
% \usepackage[delarray]{tabu}
\[  \begin{tabu}({cc})
    1 & 2 \\
    3 & 4
\end{tabu}  \]
```


### src/5-1-52.tex

```latex
% \usepackage{blkarray}
% 如果不用 &| 说明，则竖线 | 将会被看成是中间一列的内容
\begin{blockarray}{|l|c&|r|}
  张三 & Zhang & 80 \\
       % 不用在 r 后面用 |，也不影响表格线
  李四 & \BAmulticolumn{1}{r}{Li} & 78 \\
  王五 & Wang & 100 \\
\end{blockarray}
```


### src/5-1-53.tex

```latex
% \usepackage{blkarray}
\[  \begin{blockarray}{(cc]}
  1 & 2 \\
  3 & 4
\end{blockarray}  \]
```


### src/5-1-54.tex

```latex
% \usepackage{blkarray}
\[  \left[
\begin{blockarray}{*4r}
\begin{block}{(rr)rr}
 a & -b & 0 & 0 \\
-c &  d & 0 & 0 \\
\end{block}
\begin{block}{rr(rr)}
0 & 0 & -a &  b \\
0 & 0 &  c & -d \\
\end{block}
\end{blockarray}
\right]  \]
```


### src/5-1-55.tex

```latex
\[
\begin{blockarray}{ccc}
\begin{block}{cc\}\BAmultirow{4em}}
1 & 2 & 自然数 \\
3 & 4 & {} \\ % 空白 {} 占位
\end{block}
\begin{block}{cc\}l}
-1.5 & \frac12 & \BAmultirow{4em}{实数} \\
3.5 & 40 & \\
\end{block}
\end{blockarray}
\]
```


### src/5-1-56.tex

```latex
\usepackage{blkarray}
\makeatletter
\newbox\BA@first@box
\makeatother
```


### src/5-2-01.tex

```latex
% 导言区 \usepackage{graphics}
% 或 \usepackage{graphicx}
狮子：\includegraphics{lion}
```


### src/5-2-02.tex

```latex
\includegraphics[width=2em]{lion}
\includegraphics[height=1cm]{lion}
\includegraphics[scale=0.5]{lion}
```


### src/5-2-03.tex

```latex
旋转的狮子：
\includegraphics[angle=90]
  {lion.eps}
\includegraphics[angle=-45,origin=c]
  {lion.eps}
```


### src/5-2-04.tex

```latex
基线\rule{2cm}{0.4pt}%
\includegraphics[angle=90,origin=b,
  totalheight=1.5cm]{lion.eps}
```


### src/5-2-05.tex

```latex
% 导言区 \usepackage[draft]{graphicx}
\includegraphics{lion}
```


### src/5-2-06.tex

```latex
\graphicspath{{figures/}} % 本书的设置，图片在当前目录下的 figures 目录
\graphicspath{{pdf/}{png/}{jpg/}} % 按图片类型管理的
```


### src/5-2-07.tex

```latex
\scalebox{2}{大字}
\scalebox{2}[1]{扁字}
\scalebox{1}[2]{长字}
```


### src/5-2-08.tex

```latex
\LARGE 汉字\reflectbox{汉字}
```


### src/5-2-09.tex

```latex
\resizebox{2cm}{1cm}{扁}
\resizebox{!}{1cm}{\fbox{高 1cm}}
```


### src/5-2-10.tex

```latex
\rotatebox[origin=c]{90}{旋}%
\rotatebox[origin=c]{90}{转}%
的汉字
```


### src/5-2-11.tex

```latex
% 导言区 \usepackage{lscape}
\begin{landscape}
\subsection{页面旋转}
……
\end{landscape}
```


### src/5-2-12.tex

```latex
\begin{sidewaysfigure}[p]
  \centering
  \includegraphics[width=7in]{photo.jpg}
  \caption{贵州少数民族地区剪影}
\end{sidewaysfigure}
```


### src/5-3-01.tex

```latex
\begin{figure}[htbp] % 允许各个位置
  \centering
  \includegraphics{lion.eps}
\end{figure}
\begin{table} % 默认在页面顶部或单独一页
  \centering
  \begin{tabular}{|c|c|}
    \hline
    图形 & \verb=figure= 环境 \\
    \hline
    表格 & \verb=table= 环境 \\
    \hline
  \end{tabular}
\end{table}
```


### src/5-3-02.tex

```latex
\begin{figure}[htp]
  \centering
  \includegraphics{lion.eps}
  \caption[小狮子]{\TeX{} 系统的吉祥物——小狮子}\label{fig-lion}
% 或作 \caption[小狮子]{\label{fig-lion}\TeX{} 系统的吉祥物——小狮子}
\end{figure}
```


### src/5-3-03.tex

```latex
% 放宽浮动体的一些参数
\setcounter{topnumber}{3}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{7}
\renewcommand\bottomcaption{0.7}
\renewcommand\textfraction{0.1}
% 严格浮动页的要求
\renewcommand\floatpagefraction{0.7}
```


### src/5-3-04.tex

```latex
\usepackage{fixltx2e}
```


### src/5-3-05.tex

```latex
\usepackage[font=small,labelfont=bf]{caption}
```


### src/5-3-06.tex

```latex
\usepackage{caption}
\captionsetup{font=small,labelfont=bf}
```


### src/5-3-07.tex

```latex
\usepackage{caption}
\captionsetup[figure]{font=small,labelfont=bf}
```


### src/5-3-08.tex

```latex
\usepackage{caption}
\captionsetup[figure]{font=small,labelfont=bf}
```


### src/5-3-09.tex

```latex
\caption{默认居中的短标题}
```


### src/5-3-10.tex

```latex
\caption[plain 格式]{plian 格式下，
如果标题很长，折成几行，就会像普通的
正文段落一样显示。

只要设置好前面的短标题，可以把浮动
标题分成好几段。}
```


### src/5-3-11.tex

```latex
\captionsetup{format=hang}
\caption[hang 格式]{hang 格式的效果
是，对于很长的标题，前面的数字标签会
进行悬挂缩进，就好像 \LaTeX{} 的列表
环境一样。}
```


### src/5-3-12.tex

```latex
% \captionsetup{labelformat=default}
\caption{默认格式，同 simple}
```


### src/5-3-13.tex

```latex
\captionsetup{labelformat=empty}
\caption{空格式}
```


### src/5-3-14.tex

```latex
\captionsetup{labelformat=simple}
\caption{简单格式，直接输出}
```


### src/5-3-15.tex

```latex
\captionsetup{labelformat=brace}
\caption{数字右括号，无文字}
```


### src/5-3-16.tex

```latex
\captionsetup{labelformat=parens}
\caption{带括号数字，无文字}
```


### src/5-3-17.tex

```latex
\captionsetup{labelsep=none}
\caption{没间隔}
```


### src/5-3-18.tex

```latex
% \captionsetup{labelsep=colon}
\caption{英文分号（默认）}
```


### src/5-3-19.tex

```latex
\captionsetup{labelsep=period}
\caption{英文句点}
```


### src/5-3-20.tex

```latex
\captionsetup{labelsep=space}
\caption{空格}
```


### src/5-3-21.tex

```latex
\captionsetup{labelsep=quad}
\caption{一个 em 的间隔}
```


### src/5-3-22.tex

```latex
\captionsetup{labelsep=newline}
\caption{标题会另起一行}
```


### src/5-3-23.tex

```latex
\captionsetup{labelsep=endash}
\caption{en dash 连接符}
```


### src/5-3-24.tex

```latex
\captionsetup{
  justification=raggedleft,
  singlelinecheck=false}
\caption{右对齐的标题}
```


### src/5-3-25.tex

```latex
\captionsetup{font={small,sf},
              labelfont=bf}
\caption{小号加粗无衬线体 Caption}
```


### src/5-3-26.tex

```latex
\captionsetup{font=small}
\captionsetup{font+=bf}
\caption{小号加粗字体 Caption}
```


### src/5-3-27.tex

```latex
\captionsetup{margin=4em}
\caption{标题距离左右各 4\,em
  的距离。}
```


### src/5-3-28.tex

```latex
\captionsetup{width=6em}
\caption{标题最多只有 8\,em 宽。}
```


### src/5-3-29.tex

```latex
\captionsetup{skip=0pt}
浮动体的内容。
\caption{与前面无额外间距。}
```


### src/5-3-30.tex

```latex
\begin{figure}
\begin{minipage}[b]{.5\textwidth}
\centering
\includegraphics[width=.4\textwidth]{texlive-lion.pdf}
\caption{\TeX\ Live 吉祥物狮子}
\end{minipage}%
\begin{minipage}[b]{.5\textwidth}
\centering
\begin{tabular}{|*{5}{c|}}
  \hline
  1996 & 1998 & 1999 & 2000 & 2001 \\ \hline
  2002 & 2003 & 2004 & 2005 & 2007 \\ \hline
  2008 & 2009 & 2010 & \dots & \\
  \hline
\end{tabular}
\captionsetup{type=table}
\caption{\TeX\ Live 的版本}
\end{minipage}
\end{figure}
```


### src/5-3-31.tex

```latex
% 导言区
\usepackage{caption}
\captionsetup{figurename=图片}
```


### src/5-3-32.tex

```latex
\captionsetup{
  type=figure,name=空图片}
\caption{标签名称可以修改}
```


### src/5-3-33.tex

```latex
\captionof{figure}{空图片标题}
```


### src/5-3-34.tex

```latex
\captionsetup{font=sf}
\caption*{没有编号的标题，只保留格式}
```


### src/5-3-35.tex

```latex
\begin{figure}
\ContinuedFloat
  ……
\caption{某图形}
\end{figure}
\begin{figure}
\ContinuedFloat
  ……
\caption{某图形（续）}
\end{figure}
```


### src/5-3-36.tex

```latex
% 一般在导言区使用
\DeclareCaptionLabelSeparator{fullcolon}{：} % 声明中文的全角冒号分隔符
\captionsetup{labelsep=fullcolon} % 为中文的标题设置全角冒号分隔符
```


### src/5-3-37.tex

```latex
% 中文文档类会设定好标题的第一种语言
\documentclass{ctexart}
\usepackage{bicaption}
% 声明 english 选项重定义第二种语言的标签名，选项没有参数
\DeclareCaptionOption{english}[]{%
  \renewcommand\figurename{Figure}%
  \renewcommand\tablename{Table}}
\captionsetup[bi-second]{english}
```


### src/5-3-38.tex

```latex
\begin{figure}
  \centering FIGURE
  \bicaption{中文标题}{English Title}
\end{figure}
```


### src/5-3-39.tex

```latex
\begin{table}
  \centering
  \caption{并排的表格}
  \begin{tabular}{|c|c|}
    \hline 图 & 表 \\ \hline
  \end{tabular}%
  \qquad
  \begin{tabular}{|c|c|}
    \hline Figure & Table \\ \hline A & B \\ \hline
  \end{tabular}
\end{table}
```


### src/5-3-40.tex

```latex
\begin{figure}
  \centering
  \includegraphics[width=0.4\textwidth]{texlive-lion.pdf}%
  \qquad
  \parbox[b]{0.4\textwidth}{这只狮子是由画师 Duane Bibby 专门为著名的
  \TeX{} 发行版 \TeXLive{} 绘制的作品。狮子是 \TeX{} 系统的吉祥物，
  Duane Bibby 创作了大量有关 \TeX{} 狮子的插图，如高德纳的 \textit{The
  \TeX{}book} 与 Lamport 的 \textit{\LaTeX: A Document Preparation
  System} 两书中的狮子插图，就是由 Duane Bibby 创作的。}
  \caption{\TeX{} 狮子}\label{fig:texlivelion}
\end{figure}
```


### src/5-3-41.tex

```latex
\begin{figure}
  \centering
  \begin{varwidth}[t]{\textwidth}
    \vspace{0pt}
    \includegraphics{lion.eps}
  \end{varwidth}%
  \qquad
  \begin{varwidth}[t]{\textwidth}
    \vspace{0pt}
    \includegraphics[height=4cm]{texlive-lion.pdf}
  \end{varwidth}
  \caption{两幅狮子图形的按顶部对齐}
\end{figure}
```


### src/5-3-42.tex

```latex
\begin{table}
\parbox[b]{.5\textwidth}{\centering
  \caption{文字表格}
  \begin{tabular}{|c|c|}
    \hline 图 & 表 \\ \hline
  \end{tabular}}%
\parbox[b]{.5\textwidth}{\centering
  \caption{数学表格}
  $\begin{array}{|c|c|}
    \hline \sqrt{2} & 1.414\dots \\ \hline
    \sqrt{3} & 1.732\dots \\ \hline
  \end{array}$}
\end{table}
```


### src/5-3-43.tex

```latex
% \usepackage{caption,subcaption}
\begin{table}
\caption{图表的子标题}
\parbox[b]{.5\textwidth}{\centering
  \begin{tabular}{|c|c|}
    \hline 图 & 表 \\ \hline
  \end{tabular}
  \subcaption{文字表格}}%
\parbox[b]{.5\textwidth}{\centering
  $\begin{array}{|c|c|}
    \hline \sqrt{2} & 1.414\dots \\ \hline
    \sqrt{3} & 1.732\dots \\ \hline
  \end{array}$
  \subcaption{数学表格}}
\end{table}
```


### src/5-3-44.tex

```latex
% \usepackage{caption,subcaption}
\begin{table}
  \caption{子图表环境}
  \begin{subtable}[b]{.5\textwidth}
    \centering
    \begin{tabular}{|c|c|} \hline 图 & 表 \\ \hline \end{tabular}
    \caption{文字表格}
  \end{subtable}%
  \begin{subtable}[b]{.5\textwidth}
    \centering
    $\begin{array}{|c|c|}
      \hline \sqrt{2} & 1.414\dots \\ \hline
      \sqrt{3} & 1.732\dots \\ \hline
    \end{array}$
    \caption{数学表格}
  \end{subtable}
\end{table}
```


### src/5-3-45.tex

```latex
% \usepackage{caption,subcaption}
\begin{table}
\caption{子图表盒子}
\centering
\subcaptionbox{文字表格\label{subtab:test}}[6em]{%
  \begin{tabular}{|c|c|} \hline 图 & 表 \\ \hline \end{tabular}}\qquad
\subcaptionbox{数学表格}{%
  $\begin{array}{|c|c|}
    \hline \sqrt{2} & 1.414\dots \\ \hline
    \sqrt{3} & 1.732\dots \\ \hline
  \end{array}$}
\end{table}
```


### src/5-3-46.tex

```latex
\usepackage{caption}
\usepackage{subcaption}
\captionsetup[sub]{font={small,it}} % 设置所有子标题
\captionsetup[subtable]{labelformat=simple,labelsep=colon} % 设置子表格
```


### src/5-3-47.tex

```latex
% \usepackage{float}
\begin{figure}[H]
\centering
\includegraphics[height=1cm]{lion.eps}
\caption{不浮动的图表}
\end{figure}
```


### src/5-3-48.tex

```latex
% 导言区
% \usepackage{float}
\newfloat{flowchart}{htbp}{loflow}[chapter]
\floatname{flowchart}{流程图}
% 正文
\begin{flowchart}
  \centering
  \includegraphics{turing-reverse.pdf}
  \caption{求逆字符串的图灵机}
\end{flowchart}
```


### src/5-3-49.tex

```latex
\floatstyle{ruled}
\restylefloat{flowchart}
% 正文
\begin{flowchart}
  \fbox{A} $\longrightarrow$ \fbox{B} \\
  \fbox{C} $\longrightarrow$ \fbox{D}
\caption{基本流程图}
\end{flowchart}
```


### src/5-3-50.tex

```latex
\floatplacement{figure}{htbp}
\floatplacement{table}{htbp}
```


### src/5-3-51.tex

```latex
\listof{flowchart}{流程图目录}
```


### src/5-3-52.tex

```latex
% \usepackage{afterpage}
\afterpage{\begin{figure}[H]
  ...
\end{figure}}
```


### src/5-3-53.tex

```latex
% \usepackage{afterpage}
\afterpage{\clearpge}
```


### src/5-3-54.tex

```latex
% \usepackage{picinpar}
\begin{figwindow}[2,c,% 跨过段落的前两行，中间位置
  \includegraphics{lion.eps},Lion\label{fig:wraplion}]
\lipsum*[1] % 足够长的文本段落
\end{figwindow}
```


### src/5-3-55.tex

```latex
% \usepackage{wrapfig}
\begin{wraptable}[4]{r}[1.5cm]{4.5cm}
  \centering
  \begin{tabular}{|c|c|c|c|}
    \hline 甲 & 乙 & 丙 & 丁 \\ \hline
  \end{tabular}
  \caption{向右伸出的绕排表格}\label{tag:wraptable}
\end{wraptable}
```


### src/5-3-56.tex

```latex
% \usepackage{shapepar}
% \usepackage{tikz,lipsum}
\cutout{r}(-1cm,1cm)\shapepar[2cm]{\circleshape}%
\begin{tikzpicture}[overlay]
  \filldraw[fill=lightgray] (0.5,-0.5) circle (1);
\end{tikzpicture}\par
\small\lipsum[1]
```


### src/5-4-01.tex

```latex
% \usepackage{color}
\color{red}红色文字夹杂%
\textcolor{blue}{蓝色}文字
```


### src/5-4-02.tex

```latex
\colorbox{yellow}{黄色盒子} \\
\fcolorbox{black}{green}{黑框绿盒子}
```


### src/5-4-03.tex

```latex
\textcolor[gray]{0.5}{50\% 灰色} \\
\color[rgb]{0.6,0.6,0}暗黄色
```


### src/5-4-04.tex

```latex
% \usepackage[dvipsnames]{color}
\textcolor{Purple}{紫色文字}
```


### src/5-4-05.tex

```latex
\definecolor{Purple}{cmyk}{0.45,0.86,0,0}
```


### src/5-4-06.tex

```latex
% 将所有色彩转换为 CMYK 模型
\usepackage[cmyk]{xcolor}
```


### src/5-4-07.tex

```latex
\textcolor{purple!70}{淡紫色}

{\color{blue!60!black}60\% 蓝与 40\% 黑混合的深蓝色}

\colorbox{-red}{青色与红色互补}
```


### src/5-4-08.tex

```latex
\colorlet{darkred}{red!50!black}
\textcolor{darkred}{定义暗红色}
```


### src/5-4-09.tex

```latex
% \usepackage{colortbl}
% \usepackage{xcolor}
\begin{tabular}{>{\columncolor{gray}}c >{\columncolor{lightgray}}c}
  深 & 浅 \\
  darker & lighter \\
\end{tabular}
```


### src/5-4-10.tex

```latex
\begin{tabular}{|c|@{}>{\columncolor{lightgray}[0pt][\tabcolsep]}c|}
  表列 & 左紧右松 \\
\end{tabular}
```


### src/5-4-11.tex

```latex
\begin{tabular}{|ccc|}
\hline \rowcolor{lightgray} A & B & C \\
  一 & 二 & 三 \\\hline % 保持白色
\end{tabular}
```


### src/5-4-12.tex

```latex
\begin{tabular}{cccc}
  No & No & \cellcolor{lightgray}Yes & No \\
  \cellcolor{lightgray}Yes & No & No & No \\
\end{tabular}
```


### src/5-4-13.tex

```latex
% \usepackage{xcolor, colortbl}
\arrayrulecolor{gray}
\doublerulesepcolor{lightgray}
\begin{tabular}{|c|c|}
\hline\hline 灰色表线 & 浅灰色间隙 \\
\arrayrulecolor{black}\hline
以下为原色 & 表线 \\
\doublerulesepcolor{white}\hline\hline
\end{tabular}
\arrayrulecolor{black} % 恢复默认值
```


### src/5-4-14.tex

```latex
% \usepackage[table]{xcolor}
\begin{table}[htbp]
  \centering
  \rowcolors{2}{black!20}{black!10} % 交错的表行
  \begin{tabular}{crrr}
  \rowcolor{black!30} % 第一行的表头单独设置背景色
    项目 & 数值 & 数值 & 数值 \\
    A & 10 & 20 & 30 \\
    B & 20 & 15 & 40 \\
    C & 15 & 25 & 37
  \end{tabular}
\end{table}
```


### src/5-4-15.tex

```latex
% \usepackage[table]{xcolor} % 将调入 colortbl
% \usepackage{arydshln} % 在 colortbl 后面使用
\rowcolors*[\hline]{1}{black!20}{black!10}
\begin{tabular}{|c:r|}
  A & 10 \\
  B & 20 \\
\hiderowcolors
\end{tabular}
```


### src/5-4-16.tex

```latex
\begin{tabular}{|cc|} \hline
 & foo \\
\rowcolor{lightgray}
\multirow{-2}*{Test} & bar \\\hline
\end{tabular}
```


### src/5-5-01.tex

```latex
\xymatrix{
  a & b & a+b \\
  1 & 2 & 3 \\
}
```


### src/5-5-02.tex

```latex
\xymatrix{
  a & b\ar[rd] & a+b \\ % 指向右下方
  1 & 2 & 3\ar"1,1"     % 指向 (1,1)
  \ar"1,1";"2,2"  % 直接从 (1,1) 到 (2,2)
}
```


### src/5-5-03.tex

```latex
\xymatrix{
  A\ar[r]^{\alpha} & B\ar[d]_{\beta} \\
  C\ar[ur]|{\Sigma} & D \\
}
```


### src/5-5-04.tex

```latex
\xymatrix{
  A\ar[rd]|\hole & B \\
  C\ar[ru] & D
}
```


### src/5-5-05.tex

```latex
\xymatrix{
  A \ar[r]^>{f} & B \\
  C \ar[r]^>>{g} & D \\
  E \ar[r]^(0.6){h} & F
}
```


### src/5-5-06.tex

```latex
\xymatrix{
  A \ar[drr]|!{[d];[r]}\hole & B & \\
  C \ar[ur] & & D
}
```


### src/5-5-07.tex

```latex
\begin{equation}
\begin{gathered} \xymatrix{
  S\ar[r]^{f_s} \ar[d]_{\lambda}
    & T\ar[d]^{\bar\lambda} \\
  S' \ar[r]_{f_{s'}} & T' \\
} \end{gathered}
\end{equation}
```


### src/5-5-08.tex

```latex
映射 $\xymatrix@1{A\ar[r]^{f} & B}$
是同态。
```


### src/5-5-09.tex

```latex
\[ \xymatrix{
  A \ar@/^/[r]^{\phi} & B \ar@/^/[l]^{\psi}
} \]
```


### src/5-5-10.tex

```latex
\[ \xymatrix{
  A \ar[r] & B \ar@(ur,dr)
} \]
```


### src/5-5-11.tex

```latex
\[ \xymatrix{
  A \ar@<.5ex>[r]^f &
  \ar@<.5ex>[l]^g B
} \]
```


### src/5-5-12.tex

```latex
\[ \xymatrix@=2cm{
  *[F]{A} \ar[r]^*+[F=]{k} & *+[o][F]{B}
} \]
```


### src/5-5-13.tex

```latex
\xymatrix{
  *++=[o][F]\txt{猫猫} \ar@{<->}[r] &
  *+[F]\txt{狗\\狗}
}
```


### src/5-5-14.tex

```latex
\xymatrix{
  *+[F.]{\composite{*+[o][F]{a\quad} * *+[F]{\quad b}}} \ar[r]
    & *+[F]{c}
}
```


### src/5-5-15.tex

```latex
\xymatrix@R=2ex{
  A \ar[drr]& B & C \\
  D & E & F
}
```


### src/5-5-16.tex

```latex
\xymatrix@ru{
  A \ar[r] & B \ar[d] \\
  C \ar[u] & D \ar[l]
}
```


### src/5-5-17.tex

```latex
\usepackage{pst-plot,pst-node}
```


### src/5-5-18.tex

```latex
\usepackage{pstricks-add} % 同时载入内核与常用的功能模块
```


### src/5-5-19.tex

```latex
直线
\psline(0,0)(1,1em)(1.5,0)
直线
```


### src/5-5-20.tex

```latex
直线
\begin{pspicture}(1.5,1em)
\psline(0,0)(1,1em)(1.5,0)
\end{pspicture}
直线
```


### src/5-5-21.tex

```latex
\begin{pspicture}(-1.2,-1.2)(1.2,1.2)
  \psaxes(0,0)(-1.2,-1.2)(1.2,1.2)
  \pscircle(0,0){1}
\end{pspicture}
```


### src/5-5-22.tex

```latex
\psset{linewidth=0.4pt}
\begin{pspicture}(-1.2,-1.2)(1.2,1.2)
  \psaxes[labels=none,ticks=none]
    {->}(0,0)(-1.2,-1.2)(1.2,1.2)
  \pscircle[linewidth=0.8pt](0,0){1}
\end{pspicture}
```


### src/5-5-23.tex

```latex
\begin{pspicture}(-0.5,0)(1,1)
  \pswedge(0,0){1}{0}{120}
\end{pspicture}
```


### src/5-5-24.tex

```latex
\begin{pspicture}(-0.5,0)(1.2,1.2)
\psaxes[labels=none,ticks=none]{->}(1.2,1.2)
\pswedge[fillstyle=solid,fillcolor=gray,
  opacity=0.2](0,0){1}{0}{120}
\end{pspicture}
```


### src/5-5-25.tex

```latex
\uput[120](1;120){$P$}
```


### src/5-5-26.tex

```latex
\pnode(1;120){P}
\uput[120](P){$P$}
```


### src/5-5-27.tex

```latex
\pnode(1;120){P}
\pnode(P|0,0){P0}
```


### src/5-5-28.tex

```latex
\pnode(1;120){P}
\pnode(P|0,0){P0}
\ncline{-}{P}{P0} % 等价于 \psline(P)(P0)
```


### src/5-5-29.tex

```latex
\psset{linewidth=0.4pt}
\begin{pspicture}(-1.2,-1.2)(1.2,1.2)
  \psaxes[labels=none,ticks=none]{->}(0,0)(-1.2,-1.2)(1.2,1.2)
  \pscircle[linewidth=0.8pt](0,0){1}
  \pswedge[fillstyle=solid,fillcolor=gray,opacity=0.2]
    (0,0){1}{0}{120}
  \pswedge[fillstyle=solid,fillcolor=gray,opacity=0.5]
    (0,0){0.3}{0}{120}
  \uput[60](0.3;60){$120^\circ$} % 在扇形中间标注角度
  \pnode(1;120){P}
  \pnode(P|0,0){P0}
  \ncline{-}{P}{P0}            % 正弦线
  \uput[120](P){$P$}
  \uput[d](P0){$P_0$}
\end{pspicture}
```


### src/5-5-30.tex

```latex
\begin{pspicture}(-1,-1.2)(3.5,1.2)
  \psaxes{->}(0,0)(0,-1.2)(3.5,1.2)
  \psplot{0}{3.5}{x 180 Pi div mul sin} % 三角函数单位是度
\end{pspicture}
```


### src/5-5-31.tex

```latex
\psset{algebraic=true}
\begin{pspicture}(-1,-1.2)(3.5,1.2)
  \psaxes{->}(0,0)(0,-1.2)(3.5,1.2)
  \psplot{0}{3.5}{sin(x)} % 三角函数单位是弧度
\end{pspicture}
```


### src/5-5-32.tex

```latex
\psset{algebraic=true}
\begin{pspicture}(0,-1.2)(3.5,1.2)
\psaxes[labels=none,dx=1.57]
  {->}(0,0)(0,-1.2)(3.5,1.2)
\psplot{0}{3.5}{sin(x)}
\uput*[d](0,0){$0^\circ$}
\uput*[d](1.57,0){$90^\circ$}
\uput*[d](3.14,0){$180^\circ$}
\end{pspicture}
```


### src/5-5-33.tex

```latex
\multido{\n=0+1.57,\i=0+90}{3}{
  \uput*[d](\n,0){$\i^\circ$}
}
```


### src/5-5-34.tex

```latex
\pnode(!120 Pi mul 180 div 120 sin){Q}
\pnode(Q|0,0){Q0}
```


### src/5-5-35.tex

```latex
\uput[r](*{3.5} {sin(x)}){$\sin x$}
```


### src/5-5-36.tex

```latex
\begin{pspicture}(-1.5,-0.5)(1.5,0.5)
\pscircle*(0,0){0.5}
\rput(-1,0){
  \pscircle(0,0){0.5}
}
\rput(1,0){
  \pscircle(0,0){0.5}
}
\end{pspicture}
```


### src/5-5-37.tex

```latex
% \newcommand\iangle{120}
\pnode(!\iangle\space Pi mul 180 div \iangle\space sin){Q}
```


### src/5-5-38.tex

```latex
% \usepackage{pstricks-add}
% \usepackage{siunitx}
\begin{figure}
\centering
\newcommand\iangle{120}
\psset{unit=1.5cm,linewidth=0.4pt,algebraic=true}
\begin{pspicture}(-3.5,-1.5)(4.5,1.5)
\rput(-2,0){
  \psaxes[labels=none,ticks=none]{->}(0,0)(-1.2,-1.2)(1.2,1.2)
  \pscircle[linewidth=0.8pt](0,0){1}
  \pswedge[fillstyle=solid,fillcolor=gray,opacity=0.2]
    (0,0){1}{0}{\iangle}
  \pswedge[fillstyle=solid,fillcolor=gray,opacity=0.5]
    (0,0){0.3}{0}{\iangle}
  \uput[!\iangle\space 2 div]
    (0.3;!\iangle\space 2 div) {\ang{\iangle}}
  \pnode(1;\iangle){P}
  \pnode(P|0,0){P0}
  \ncline{-}{P}{P0}
  \uput[\iangle](P){$P$}
  \uput[d](P0){$P_0$}
}

\psaxes[labels=none,dx=1.57]
  {->}(0,0)(0,-1.2)(3.5,1.2)
\psplot[linewidth=0.8pt]{0}{3.5}{sin(x)}
\multido{\n=0+1.57,\i=0+90}{3}{
  \uput*[d](\n,0){\small\ang{\i}}
}
\uput[r](*{3.5} {sin(x)}){$\sin x$}
\pnode(!\iangle\space Pi mul 180 div \iangle\space sin){Q}
\pnode(Q|0,0){Q0}
\uput[u](Q){$Q$}
\uput[d](Q0){$Q_0$}
\ncline{-}{Q}{Q0}

\psline[linestyle=dashed](P)(Q)
\end{pspicture}
  \caption{正弦函数与单位圆（\textsf{PSTricks} 实现）}
  \label{fig:pstsine}
\end{figure}
```


### src/5-5-39.tex

```latex
\usepackage{tikz}
```


### src/5-5-40.tex

```latex
% 使用 latex + dvipdfmx 编译时
\usepackage[dvipdfmx]{graphicx}
\usepackage{tikz}
```


### src/5-5-41.tex

```latex
\begin{tikzpicture}
\draw (0,0) circle (1ex);
\end{tikzpicture}
```


### src/5-5-42.tex

```latex
圆形
\tikz \draw (0,0) circle (1ex);
```


### src/5-5-43.tex

```latex
\tikz \fill (0,0) circle (1ex);
```


### src/5-5-44.tex

```latex
\tikz \filldraw[thick,fill=gray]
  (0,0) circle (0.5cm);
```


### src/5-5-45.tex

```latex
\begin{tikzpicture}
  \draw[->] (-1.2,0) -- (1.2,0);
  \draw[->] (0,-1.2) -- (0,1.2);
  \draw[thick] (0,0) circle (1);
\end{tikzpicture}
```


### src/5-5-46.tex

```latex
\tikz\draw (30:0.5) arc (30:150:0.5);
```


### src/5-5-47.tex

```latex
\begin{tikzpicture}
  \draw[thick] (0,0) circle (1);
  \fill[fill=gray, fill opacity=0.3]
    (0,0) -- (0:1) arc (0:120:1) -- cycle;
  \filldraw[fill=gray,fill opacity=0.5]
    (0,0) -- (0:0.3) arc (0:120:0.3) -- cycle;
\end{tikzpicture}
```


### src/5-5-48.tex

```latex
\begin{tikzpicture}
\draw (0,0) circle (1);
\fill (120:1) circle (2pt);
\node[above left] (P) at (120:1) {$P$};
\end{tikzpicture}
```


### src/5-5-49.tex

```latex
\begin{tikzpicture}
\draw (0,0) circle (1);
\coordinate[label=120:$P$] (P) at (120:1);
\draw (0,0) -- (P);
\end{tikzpicture}
```


### src/5-5-50.tex

```latex
\coordinate[label=below:$P_0$] (P0) at (P |- 0,0);
```


### src/5-5-51.tex

```latex
% \usepackage{siunitx}
\begin{tikzpicture}
  \newcommand\iangle{120}
  \draw[->] (-1.2,0) -- (1.2,0);
  \draw[->] (0,-1.2) -- (0,1.2);
  \draw[thick] (0,0) circle (1);
  \coordinate[label=\iangle:$P$] (P) at (\iangle:1);
  \coordinate[label=below:$P_0$] (P0) at (P |- 0,0);
  \draw (0,0) -- (P);
  \draw (P) -- (P0);
  \fill[fill=gray,fill opacity=0.2]
    (0,0) -- (0:1) arc (0:\iangle:1) -- cycle;
  \filldraw[fill=gray,fill opacity=0.5]
    (0,0) -- (0:0.3) arc (0:\iangle:0.3) -- cycle;
  \node[right] at (\iangle/2:0.3) {\ang{\iangle}};
\end{tikzpicture}
```


### src/5-5-52.tex

```latex
\begin{tikzpicture}
  % 从 0 度到 360 度的正弦函数曲线，rad 函数和单位 r 把度转换为弧度
  \draw[domain=0:rad(360)] plot (\x, {sin(\x r)});
\end{tikzpicture}
```


### src/5-5-53.tex

```latex
\begin{tikzpicture}
\draw (0,0) -- (2,0) node[right] {右};
\draw (0,-1) -- node[above] {连线} (2,-1);
\end{tikzpicture}
```


### src/5-5-54.tex

```latex
\begin{tikzpicture}
% 坐标轴
\draw[->] (0,0) -- ({rad(210)}, 0);
\draw[->] (0,-1.2) -- (0,1.2);
% 文字标签与刻度
\foreach \t in {0, 90, 180} {                           % 遍历三个角度
  \draw ({rad(\t)}, -0.05) -- ({rad(\t)}, 0.05);        % 画刻度线
  \node[below, outer sep=2pt, fill=white, font=\small]  % 标注横轴角度
    at ({rad(\t)}, 0) {\ang{\t}};
}
\foreach \y in {-1,1} {\draw (-0.05,\y) -- (0.05,\y);}  % 纵轴刻度
\end{tikzpicture}
```


### src/5-5-55.tex

```latex
\begin{tikzpicture}[fill=lightgray] % 全局选项
\begin{scope}[thick,->,fill=gray,xshift=-3cm] % 区块内整体向左平移
  \filldraw (0,0) circle (1);
  \draw (-1.2,0) -- (1.2,0);
  \draw (0,-1.2) -- (0,1.2);
\end{scope}
\filldraw (0,0) circle (1); % 原位置
\end{tikzpicture}
```


### src/5-5-56.tex

```latex
\begin{figure}
\centering
% \usepackage{siunitx}
\begin{tikzpicture}[scale=1.5] % 整体放大坐标，但不影响字号
  \newcommand\iangle{120}
  % 左边的单位圆
  \begin{scope}[xshift=-2cm]
    \draw[->] (-1.2,0) -- (1.2,0);
    \draw[->] (0,-1.2) -- (0,1.2);
    \draw[thick] (0,0) circle (1);
    \coordinate[label=\iangle:$P$] (P) at (\iangle:1);
    \coordinate[label=below:$P_0$] (P0) at (P |- 0,0);
    \draw (0,0) -- (P);
    \draw (P) -- (P0);
    \fill[fill=gray,fill opacity=0.2]
      (0,0) -- (0:1) arc (0:\iangle:1) -- cycle;
    \filldraw[fill=gray,fill opacity=0.5]
      (0,0) -- (0:0.3) arc (0:\iangle:0.3) -- cycle;
    \node[right] at (\iangle/2:0.3) {\ang{\iangle}};
  \end{scope}
  % 右边的函数图
  \draw[->] (0,0) -- ({rad(210)}, 0);
  \draw[->] (0,-1.2) -- (0,1.2);
  \draw[thick, domain=0:rad(210)] plot (\x, {sin(\x r)})
    node[right] {$\sin x$};
  \foreach \t in {0, 90, 180} {
    \draw ({rad(\t)}, -0.05) -- ({rad(\t)}, 0.05);
    \node[below, outer sep=2pt, fill=white, font=\small]
      at ({rad(\t)}, 0) {\ang{\t}};
  }
  \foreach \y in {-1,1} {\draw (-0.05,\y) -- (0.05,\y);}
  \coordinate[label=above:$Q$] (Q) at ({rad(\iangle)}, {sin(\iangle)});
  \coordinate[label=below:$Q_0$] (Q0) at (Q |- 0,0);
  \draw (Q) -- (Q0);
  \draw[dashed] (P) -- (Q);
\end{tikzpicture}
\caption{正弦函数与单位圆（\textsf{TikZ} 实现）}
\label{fig:tikzsine}
\end{figure}
```


### src/5-5-57.tex

```latex
\setlength\unitlength{1cm}
\begin{picture}(1,1)
\put(0,0) {左下} \put(1,1) {右上}
\end{picture}
```


### src/5-5-58.mp**

```latex
% 主要代码片断
draw (0,0) .. tension 2 .. (1cm,1cm){right} .. (2cm,0){right}
  .. (5cm,1cm);
```


### src/5-5-59.mp**

```latex
% 主要代码片断
z1 = (0,0);   z2 = (2cm,0);   z3 = (0,1cm);   z4 = (3cm,1.5cm);
dotlabel.lft(btex $z_1$ etex, z1);  dotlabel.rt(btex $z_2$ etex, z2);
dotlabel.lft(btex $z_3$ etex, z3);  dotlabel.rt(btex $z_4$ etex, z4);
draw z1 -- z4;  draw z2 -- z3;
z5 = whatever[z1, z4] = whatever[z2, z3];  % 计算交点
dotlabel.bot(btex $z_5$ etex, z5);
```


### src/5-5-60.mp**

```latex
input metaobj;
beginfig(1);
x = new_Tree( new_Box(btex root etex) )
  ( new_Circle(btex child etex),
    new_Circle(btex child etex));
Obj(x).c=origin;
draw_Obj(x);
endfig;
end.
```


### src/5-5-61.mp**

```latex
prologues := 3;
```


### src/5-5-62.tex

```latex
% pdfTeX，设置插入 MetaPost 图形
\DeclareGraphicsRule{*}{mps}{*}{}
```


### src/5-5-63.tex

```latex
% XeTeX，设置插入 MetaPost 图形
\DeclareGraphicsRule{*}{eps}{*}{}
```


### src/5-5-64.mp**

```latex
outputtemplate := "%j-%c.mps";
```


### src/5-5-65.tex

```latex
% XeTeX，设置插入 MetaPost 图形
\DeclareGraphicsRule{.mps}{eps}{.mps}{}
```


### src/5-5-66.mp**

```latex
% 带有 LaTeX 标签的 MetaPost 文件
% 需要使用 mpost -tex=latex 或 mptopdf --latex 命令编译

verbatimtex
\documentclass{article}
\usepackage{amssymb}
\begin{document}% 后面可以省去 \end{document}
etex

beginfig(1);
draw fullcircle scaled 2cm;
label.rt(btex $\Lleftarrow$ unit circle etex, (1cm,0));
endfig;
end.
```


### src/5-5-67.mp**

```latex
% 带有 LaTeX 标签的 MetaPost 文件
% 需要使用 mpost 或 mptopdf 命令编译两遍
input latexmp;
setupLaTeXMP(packages="amssymb");
beginfig(1);
draw fullcircle scaled 2cm;
label.rt(textext("$\Lleftarrow$ unit circle"), (1cm,0));
endfig;
end.
```


### src/5-5-68.mp**

```latex
% 带有中文 LaTeX 标签的 MetaPost 文件
% 需要使用 mpost 或 mptopdf 命令编译两遍
input latexmp;
setupLaTeXMP(
  packages="amssymb,CJK",
  preamble=("\AtBeginDocument{\begin{CJK}{UTF8}{gbsn}}" &
"\AtEndDocument{\end{CJK}}"));
beginfig(1);
draw fullcircle scaled 2cm;
label.rt(textext("$\Lleftarrow$ 单位圆"), (1cm,0));
endfig;
end.
```


### src/5-5-69.tex

```latex
% \usepackage[shellescape]{gmp}
% 使用 xelatex -shell-escape 命令编译
\begin{mpost}
draw ((0,0) -- (0,2) -- (1,3.25) -- (2,2) -- (2,0)
  -- (0,2) -- (2,2) -- (0,0) -- (2,0)) scaled 1cm;
\end{mpost}
```


### src/5-5-70.tex

```latex
% 导言区使用
\usepackage[shellescape,latex]{gmp}
\usempxpackage{CJKutf8}
\mpxcommands{
  \AtBeginDocument{\begin{CJK*}{UTF8}{gbsn}}
  \AtEndDocument{\clearpage\end{CJK*}}
}
```


### src/5-5-71.tex

```latex
\begin{mpost*}[mpsettings={u:=\mpdim{0.4\linewidth};}]
fill (0,0) -- (u, 1pt) -- (2u, 0) -- (u, -1pt) -- cycle;
label.top(btex 示例 etex, (u, 1pt));
label.bot(btex \textit{Example} etex, (u, -1pt));
\end{mpost*}
```


### src/5-5-72.asy**

```latex
draw((0,0) .. tension 2 .. (1cm,1cm){right} .. (2cm,0){right}
  .. (5cm,1cm));
```


### src/5-5-73.asy**

```latex
guide star(int n = 5, real r0 = 1)
{
    guide unitstar;
    if (n < 5) return nullpath;
    real theta = 180/n;
    real r = Cos(2theta) / Cos(theta);
    for (int k = 0; k < n; ++k)
        unitstar = unitstar -- dir(90+2k*theta)
            -- r * dir(90+(2k+1)*theta);
    unitstar = unitstar -- cycle;
    return scale(r0) * unitstar;
}
for (int i = 5; i <= 8; ++i)
    filldraw(shift(i*2cm,0) * star(i,1cm), lightgray, gray+1mm);
```


### src/5-5-74.asy**

```latex
import binarytree;
binarytree bt=searchtree(4,2,1,3,5,6);
draw(bt);
```


### src/5-5-75.asy**

```latex
import solids;
size(4cm);
currentprojection = orthographic(1, 1, 1);
real a = 4;
real h = 2.2a;
draw(scale3(a) * unitsphere, white);
draw(shift((a/2,0,-h/2)) * scale(a/2,a/2,h) * unitcylinder, gray);
```


### src/5-5-76.tex

```latex
% \usepackage{asymptote}
\begin{asy}
real r = 0.8cm;
for (int i = 0; i < 360; i+=10)
    draw(circle(dir(i)*r, r));
\end{asy}
```


### src/5-5-77.tex

```latex
\usepackage{asymptote}
\begin{asydef}
import graph;
unitsize(1cm);
\end{asydef}
```


### src/6-1-01.tex

```latex
\documentclass{beamer}
\usepackage[UTF8,noindent]{ctexcap}
\begin{document}
% ...
\end{document}
```


### src/6-1-02.tex

```latex
\makeatletter
\def\beamer@linkspace#1{%
  \begin{pgfpicture}{0pt}{-1.5pt}{#1}{5.5pt}
    \pgfsetfillopacity{0}
    \pgftext[x=0pt,y=-1.5pt]{.}
    \pgftext[x=#1,y=5.5pt]{.}
  \end{pgfpicture}}
\makeatother
```


### src/6-1-03.tex

```latex
\begin{frame}
这是简单的一帧。

帧里的内容是垂直居中的。
\end{frame}
```


### src/6-1-04.tex

```latex
\begin{frame}
  \frametitle{标题}
  \framesubtitle{小标题}
  这是简单的一帧。
\end{frame}
```


### src/6-1-05.tex

```latex
\begin{frame}{标题}{小标题}
  这是简单的一帧。
\end{frame}
```


### src/6-1-06.tex

```latex
\begin{frame}{古中国数学}{定理发现}
中国在 3000 多年前就知道勾股数的概念，比古希腊更早一些。

《周髀算经》的记载：
\begin{itemize}
\item 公元前 11 世纪，商高答周公问：
\begin{quote}
勾广三，股修四，径隅五。
\end{quote}
\item 又载公元前 7--6 世纪陈子答荣方问，表述了勾股定理的一般形式：
\begin{quote}
若求邪至日者，以日下为勾，日高为股，勾股各自乘，并而开方除之，得邪至日。
\end{quote}
\end{itemize}
\end{frame}
```


### src/6-1-07.tex

```latex
% beamer 导言区
\title{杂谈勾股定理}
\subtitle{数学史讲座之一}
\institute{九章学堂}
\author{张三}
\date{\today}
\subject{勾股定理}
\keywords{勾股定理, 历史}
```


### src/6-1-08.tex

```latex
\part{引言}
\begin{frame}
  \partpage
\end{frame}
```


### src/6-1-09.tex

```latex
\lecture{杂谈勾股定理}{gougu} % 讲座标题和讲座标签
```


### src/6-1-10.tex

```latex
% 导言区
\AtBeginLecture{
  \begin{frame}
    \Large
    本周论题：\insertlecture
  \end{frame}
}
```


### src/6-1-11.tex

```latex
% 导言区
\AtBeginSection[]{  % 空的可选项表示 \section* 前不加目录
  \begin{frame}{本节提要}
    \tableofcontents[currentsection]
  \end{frame}
}
```


### src/6-1-12.tex

```latex
\begin{frame}{参考文献}
\nocite{Shiye}
\bibliography{math}
\end{frame}
```


### src/6-1-13.tex

```latex
% 提供简单的作者年代引用格式
\bibliographystyle{apalike}
```


### src/6-1-14.tex

```latex
\newtheorem{thm}{定理}
```


### src/6-1-15.tex

```latex
\renewcommand\proofname{证明}
```


### src/6-1-16.tex

```latex
\begin{frame}{现代叙述}
\begin{thm}[勾股定理]
直角三角形斜边的平方等于两直角边的平方和。
\end{thm}
\end{frame}
```


### src/6-1-17.tex

```latex
\begin{frame}
\begin{block}{块标题}
这是一个区块
\end{block}

\begin{block}{}% 无标题
这是另一个区块
\end{block}
\end{frame}
```


### src/6-1-18.tex

```latex
\begin{frame}{古中国数学}{定理证明}
有论者认为早在公元前 11 世纪商高即已证明勾股定理\cite{quanjing}。
完整的证明见于三国时（公元 3 世纪）赵爽对《周髀算经》的注释。
\begin{figure}
\centering
\includegraphics[height=0.4\textheight]{xiantu.pdf}
\caption{赵爽的弦图可给出勾股定理的一个富于对称美的证明}
\end{figure}
\end{frame}
```


### src/6-1-19.tex

```latex
\logo{\includegraphics{logo.pdf}}
```


### src/6-1-20.tex

```latex
% 在 thm 环境最后：
\begin{center}
\begin{tikzpicture}[scale=0.5,font=\small]
\draw[thick] (0,0) node[left] {$A$}
   -- (4,0) node[right] {$C$}
   -- (4,3) node[above right] {$B$} -- cycle;
\draw (3.5,0) |- (4,0.5);
\end{tikzpicture}
\end{center}
```


### src/6-1-21.tex

```latex
\documentclass[xcolor=table]{beamer}
```


### src/6-1-22.tex

```latex
% 颜色 craneorange 是在 crane 色彩主题中定义的
\rowcolors{2}{craneorange!25}{craneorange!50}
\begin{tabular}{rrr}
\rowcolor{craneorange}直角边 $a$ & 直角边 $b$ & 斜边 $c$\\
3 & 4 & 5 \\
5 & 12 & 13 \\
7 & 24 & 25 \\
8 & 15 & 17 \\
\end{tabular}
```


### src/6-2-01.tex

```latex
\usetheme{PaloAlto}
```


### src/6-2-02.tex

```latex
\usecolortheme{crane}
```


### src/6-2-03.tex

```latex
\usebeamerfonttheme{professionalfonts}
\usepackage{arev}
```


### src/6-2-04.tex

```latex
% XeLaTeX 编译
\usepackage[noindent,UTF8]{ctexcap}
\setCJKsansfont[ItalicFont={华文新魏}]{黑体}
\renewcommand\CJKfamilydefault{\CJKsfdefault}
```


### src/6-2-05.tex

```latex
\documentclass[no-math]{beamer}
\usepackage[noindent,UTF8]{ctexcap}
\setCJKsansfont[ItalicFont={华文新魏}]{黑体}
\renewcommand\CJKfamilydefault{\CJKsfdefault}
```


### src/6-2-06.tex

```latex
\setbeamertemplate{itemize items}[circle]
\setbeamercolor{itemize item}[fg=black]
\setbeamercolor{itemize/enumerate body}{fg=gray}
\setbeamerfont{itemize/enumerate body}{family=\rmfamily}
```


### src/6-3-01.tex

```latex
\begin{frame}
  \onslide<1>{只有第 1 步}

  \onslide<2->{第 2 步之后}

  \onslide<1,3>{第 1, 3 两步}
\end{frame}
```


### src/6-3-02.tex

```latex
\begin{frame}
计数：\only<1>{1}\only<2>{2}\only<3>{3}\only<4->{4}

\onslide<5> 数完了。
\end{frame}
```


### src/6-3-03.tex

```latex
\begin{frame}
\textbf<3>{只在第 3 步加粗}
\end{frame}
```


### src/6-3-04.tex

```latex
\begin{frame}
\begin{theorem}<2->
  第 2 步以后显示的定理
\end{theorem}
\end{frame}
```


### src/6-3-05.tex

```latex
\begin{frame}
\begin{itemize}
  \item<1-> 开始显示
  \item<3-> 最后显示
  \item<2-> 然后显示
\end{itemize}
\end{frame}
```


### src/6-3-06.tex

```latex
\begin{frame}
\begin{itemize}[<+->]
  \item 开始显示
  \item 其次显示
  \item 最后显示
\end{itemize}
\end{frame}
```


### src/6-3-07.tex

```latex
\alert<2>{在第 2 步强调重要的内容}
```


### src/6-3-08.tex

```latex
\begin{itemize}
\item<+-| alert@+>
  公元前 6 世纪，毕达哥拉斯学派发现一个法则，可以构造直角三角形的边长；
\item<+-| alert@+>
  公元前 3 世纪，欧几里德《几何原本》使用面积法证明勾股定理。
\end{itemize}
```


### src/6-3-09.tex

```latex
\newdimen\xoffset
\begin{frame}
% 第一步是静止的，之后自动运动
\animate<2-10>
\animatevalue<1-10>{\xoffset}{0cm}{5cm}
\hspace{\xoffset}从左到右
\end{frame}
```


### src/6-3-10.tex

```latex
% \usepackage{multimedia}
\begin{frame}{AVI movie}
\movie[width=4cm,height=3cm]{Click to play}{foo.avi}
\end{frame}
```


### src/6-3-11.tex

```latex
% \usepackage{multimedia}
\begin{frame}{Music}
% 自动播放，无显示内容
\sound[autostart]{}{foo.au}
\end{frame}
```


### src/6-3-12.tex

```latex
% \usepackage{tdclock}
\begin{frame}
  当前时间：\tdtime；已经过去时间：\crono
\end{frame}
```


### src/6-3-13.tex

```latex
% \usepackage{ocgtools}
\begin{frame}
  % 点击公式会显示定理名称
  \ocgminitext{$a^2+b^2=c^2$}{Pythagoras Theorem}
\end{frame}
```


### src/7-1-01.tex

```latex
\documentclass{article} % 包含错误的文档
\begin{document}
\secton{Start}
A simple equation
\begin{equation}
  x = \overline{a+b
\end{equation}
\end{document}
```


### src/7-1-02.tex

```latex
% 当出现 ! No room for a new ... 的错误时使用
\usepackage{etex}
```


### src/7-1-03.tex

```latex
% 将 txfonts 定义的重积分符号定义为 \TXFiint，保留原来 amsmath 的 \iint
\usepackage{savesym}
\usepackage{amsmath}
\savesymbol{iint}
\usepackage{txfonts}
\restoresymbol{TXF}{iint}
```


### src/7-2-01.tex

```latex
\newcommand\Emph[1]{\textbf{\textit{#1}}}
\show\Emph
```


### src/7-2-02.tex

```latex
\newcommand\Emph[1]{\textbf{\textit{#1}}}
\texttt{\meaning\Emph}
```


### src/7-2-03.tex

```latex
版面宽度是：
\texttt{\the\textwidth}
```


### src/7-2-04.tex

```latex
\showhyphens{information technology}
```


### src/7-2-05.tex

```latex
\draftmode=1
```


### src/7-2-06.tex

```latex
% 导言区 \usepackage{trace}
\newcommand\test[2]{(#1-#2)}
\traceon
\test{a}{b}
\traceoff
```


### src/7-2-07.tex

```latex
\usepackage[l2tabu, orthodox]{nag}
```


### src/7-2-08.tex

```latex
% \usepackage{lipsum}
\linespread{1}\usefont{T1}{bch}{m}{n}
\lipsum[1-2]
```


### src/7-3-01.tex

```latex
\documentclass{article}
\usepackage{amsmath}
\begin{document}
\[
  \cases{ a & b \cr
          c & d \cr}
\]
\end{document}
```


### src/7-3-02.tex

```latex
\documentclass{minimal}
\usepackage{amsmath}
\listfiles
\begin{document}
\[
  \cases{ a & b \cr
          c & d \cr}
\]
\end{document}
```


### src/8-1-01.tex

```latex
\def\testsentence{This is a test.}
\def\Emph#1{\textbf{#1}}
```


### src/8-1-02.tex

```latex
\def\exchange(#1,#2){#2 and #1}
\exchange(left,right)
```


### src/8-1-03.tex

```latex
\def\multi#1{(#1,#1)}
\edef\multi#1{[\multi{#1}, \multi{#1}]}
\multi{X}
```


### src/8-1-04.tex

```latex
\let\oldemph=\emph
\renewcommand\emph[1]{\textbf{#1}}
An \emph{important} command
```


### src/8-1-05.tex

```latex
\let\oldemph=\emph
\renewcommand\emph[1]{%
  \oldemph{\Large #1}}
An \emph{important} command
```


### src/8-1-06.tex

```latex
\ifnum 0=1 不\fi 相等，
\ifnum \value{page}>100 大页码
  \else 小页码\fi，
\ifdim \linewidth<5cm 窄行\else 宽行\fi。
```


### src/8-1-07.tex

```latex
% \usepackage{changepage}
\def\outside#1{%
  \checkoddpage % 设置自动交叉引用
  \ifoddpage    % 使用交叉引用并检查页码奇偶
    {\raggedleft #1$\rightarrow$}% 奇数页右侧
  \else
    {\raggedright $\leftarrow$#1}% 偶数页左侧
  \fi}
\outside{\textsf{向外侧对齐}}
```


### src/8-1-08.tex

```latex
\def\bigchinese#1{%
  \ifcase\value{#1}%
    零\or 壹\or 贰\or 叁\or 肆\or 伍\or 陆\or 柒\or 捌\or 玖\else 溢出
  \fi}
\renewcommand\theenumi{\bigchinese{enumi}}
\begin{enumerate}\sffamily
  \item 1 \item 2 \item 3
\end{enumerate}
```


### src/8-1-09.tex

```latex
\ifnum 0=1\relax 0\else 1\fi
```


### src/8-1-10.tex

```latex
% 将参数 #2 输出 2^#1 次
\def\recur#1#2{%
  \ifnum #1=0\relax%
    #2 %
  \else
    \setcounter{enumi}{#1}%
    \addtocounter{enumi}{-1}%
    \recur{\value{enumi}}{#2 #2}%
  \fi}
\textsf{\recur0a\recur1b\recur2c\recur3d}
```


### src/8-1-11.tex

```latex
% \usepackage{etoolbox}
\sffamily
\ifnumcomp{\value{page}+1}>{10*10}{大页码}{小页码}，
\ifboolexpr{not test {\ifnumodd{\value{page}}}
            and test {\ifdimcomp{\linewidth}>{5cm+20pt/2}}}%
  {是}{不是}%
偶数页宽行。
```


### src/8-1-12.tex

```latex
% \usepackage{etoolbox}
\begin{math}
\setcounter{enumi}{1}
\whileboolexpr{not test {\ifnumcomp{\value{enumi}}>{30}}}%
{
  \mathsf{\theenumi}\rightarrow
  \stepcounter{enumi}
}
\cdots
\end{math}
```


### src/8-1-13.tex

```latex
\catcode`\"=\active
\def"#1"{\textbf{#1}}
An "important" usage.
```


### src/8-1-14.tex

```latex
\makeatletter
\setlength\@fpsep{1cm}% 浮动页中不同浮动体间距
\makeatother
```


### src/8-1-15.tex

```latex
% boldmath.sty
\ProvidesPackage{boldmath}[2010/10/10 v1.0 emphasis using bold font]
\newcommand\Emph[1]{\textbf{#1}}
```


### src/8-1-16.tex

```latex
% myarticle.cls
\ProvidesClass{myarticle}[2010/10/10 v1.0]
\LoadClass[a4paper,11pt]{article}
\RequirePackage{boldemph}[2010/10/10]
```


### src/8-1-17.tex

```latex
\DeclareOption{hyperref}{%
  \RequirePackage{hyperref}%
}
```


### src/8-1-18.tex

```latex
\AtEndDocument{%
  \begin{center}
    \includegraphics{logo.pdf}
  \end{center}}
```


### src/8-1-19.tex

```latex
% 在 boldemph.sty 中，给 emph 增加加粗的功能
\let\boldmath@oldemph\emph
\def\emph#1{\textbf{\boldemph@oldemph{#1}}}
```


### src/8-1-20.tex

```latex
% 通常是在某 .sty 或 .cls 中
% \RequirePackage{keyval}
% 定义 text 族的 emph 选项，控制 \emph 命令的定义
\let\text@emph=\emph
\define@key{text}{emph}[\text@emph]{%
  \let\emph=#1}
\newcommand\settext[1]{%
  \setkeys{text}{#1}}

% 在 .tex 文件中使用
\begin{quotation}
\settext{emph=\textbf}  % 粗体
An \emph{important} example.

\settext{emph}  % 默认的格式
An \emph{important} example.
\end{quotation}
```


### src/8-1.tex

```latex
\begin{codebox}
\Procname{$\proc{BinSearch}(A, x, L, H)$}
\li \While $L\le H$ \RComment $L$ 与$H$ 是左右分点
\li   \Do $M \gets \lfloor(L+H)/2\rfloor$ \RComment $M$ 是中间分点
\li     \If $x > A[M]$
\li       \Then $H \gets M-1$
\li     \ElseIf $x < A[M]$
\li       \Then $H \gets M+1$
\li     \ElseNoIf \RComment 找到 $x$，返回位置
\li       $j \gets M$
\li       \Return $j$
      \End
    \End
\li $j \gets 0$
\li \Return $j$
\end{codebox}
```


### src/8-2-01.plt**

```latex
set terminal epslatex size 8cm,4cm
set output 'sine-epslatex.tex'
set size 1,1
set xlabel '$x$'
set ylabel '$y$'
set xtics ('$-\pi$' -pi, '$-\frac12\pi$' -pi/2, 0, \
    '$\frac12\pi$' pi/2, '$\pi$' pi)
set ytics (-1, 0, 1)
set format y "$%g$"
plot [-pi:pi] [-1:1] sin(x) title '$\sin x$'
```


### src/8-2-02.tex

```latex
% \usepackage{pgfplotstable}
\pgfplotstabletypeset{
  Input Output
  -1    10
  0     1500
  1     1235.7
  2     1.53e6
}
```


### src/8-2-03.tex

```latex
% \usepackage{pgfplotstable,booktabs}
\pgfplotstableset{
  every head row/.style={
    before row=\toprule,after row=\midrule},
  every last row/.style={
    after row=\bottomrule},
  column type=r, col sep=comma}
\pgfplotstabletypeset{temperature.csv}
```


### src/8-2-04.markdown**

```latex
C 语言的循环语句
================

C 语言可以使用 `for` 循环语句，例如计算 $s = \sum_k k^2$：

    int s = 0;
    for (int k = 1; k < 10; ++k)
        s += k * k;
```


### src/temperature.csv**

```latex
华式,摄式,开尔文
1,-17.22222222,255.9277778
20,-6.666666667,266.4833333
40,4.444444444,277.5944444
60,15.55555556,288.7055556
80,26.66666667,299.8166667
100,37.77777778,310.9277778
```




