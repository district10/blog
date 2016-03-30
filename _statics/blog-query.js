// works like a url shortener
var tzx_goto = {
    "got": 'http://tangzx.qiniudn.com/post-0086-game-of-throne-series.html',            // game of throne
    "bms": 'http://tangzx.qiniudn.com/links.html',                                      // bookmarks
    "me": 'http://cvrs.whu.edu.cn/index.php?m=content&c=index&a=show&catid=18&id=57',   // me
}

// query and go
var tzx_link_prefix = '.';
// format: [{url: ..., title: ..., query: ...}, ...]
var tzx_links = [
    {
        url: '/404.html',
        title: "404 Page",
        query: ['page', 'tag']
    },
    {
        url: '/about.html',
        title: "About | 关于",
        query: ['page', 'tag']
    },
    {
        url: '/projects.html',
        title: "Projects | 项目",
        query: ['project', 'github']
    },
    {
        url: '/ring.html',
        title: "One Ring, to Rule Them All",
        query: ['ring', 'extras']
    },
    {
        url: '/tags.html',
        title: "All Tags",
        query: ['tags', 'extras']
    },
    {
        url: '/reads.html',
        title: "Reads | 斋读",
        query: ['tag', 'read', 'extras']
    },
    {
        url: '/days.html',
        title: "Day In and Day Out | 我们的生活不可能那么日常",
        query: ['page', 'tag', 'gtd', 'diary']
    },
    {
        url: '/dents.html',
        title: "Dents | 乱象",
        query: ['page', 'tag']
    },
    {
        url: '/douban.html',
        title: "Bovie | 书影",
        query: ['page', 'tag', 'book', 'movie', 'douban']
    },
    {
        url: '/friends.html',
        title: "Friends | 友链",
        query: ['page', 'tag', 'friends']
    },
    {
        url: '/fun.html',
        title: "Fun | 逗我呢？",
        query: ['page', 'tag', 'fun', 'funny']
    },
    {
        url: '/koans.html',
        title: "Koans | 呓语",
        query: ['page', 'tag']
    },
    {
        url: '/links.html',
        title: "Links | 链签",
        query: ['page', 'tag', 'bookmark']
    },
    {
        url: '/notice.html',
        title: "Notice | 公告",
        query: ['page', 'tag', 'notice']
    },
    {
        url: '/orgit.html',
        title: "Orgit | 唐凤",
        query: ['page', 'tag', 'org-mode', 'emacs']
    },
    {
        url: '/poems.html',
        title: "Poems | 诗",
        query: ['page', 'tag', 'poem']
    },
    {
        url: '/quotes.html',
        title: "Quotes | 言论",
        query: ['page', 'tag', 'quote']
    },
    {
        url: '/notes.html',
        title: "Notes | 笔记",
        query: ['page', 'tag', 'note']
    },
    {
        url: '/typing.html',
        title: "Typing | 打字",
        query: ['page', 'tag', 'typing']
    },
    {
        url: '/xiami.html',
        title: "Music | 乐音",
        query: ['page', 'tag', 'music', 'xiami']
    },
    {
        url: '/post-0001-pandoc-readme.html',
        title: "Pandoc's User Guide",
        query: ['pandoc', 'doc']
    },
    {
        url: '/post-0002-how-to-make-this-blog.html',
        title: "这是怎样一个博客生成器",
        query: ['blog', 'doc', 'pandoc']
    },
    {
        url: '/post-0003-debian-configurations.html',
        title: "Debian Configurations",
        query: ['system', 'config', 'debian', 'linux']
    },
    {
        url: '/post-0004-gphoto2.html',
        title: "gPhoto2",
        query: ['gphoto2', 'util', 'linux', 'doc']
    },
    {
        url: '/post-0005-tao-of-programming.html',
        title: "The Tao of Programming",
        query: ['philosophy', 'programming', 'book']
    },
    {
        url: '/post-0006-why-emacs-users-favor-dvorak.html',
        title: "为什么 Emacs 用户爱德沃夏克",
        query: ['dvorak', 'keyboard', 'emacs']
    },
    {
        url: '/post-0007-windows-configurations.html',
        title: "Windows 系统配置",
        query: ['windows', 'config', 'system']
    },
    {
        url: '/post-0008-argc-argv-in-c.html',
        title: "C 语言的 argc、argv 干嘛的？",
        query: ['c', 'programming', 'argc', 'argv', 'grammer']
    },
    {
        url: '/post-0009-ascii-art.html',
        title: "ASCII Art",
        query: ['art', 'ascii', 'hobby']
    },
    {
        url: '/post-0010-as-an-it-bird.html',
        title: "我是一只 IT 小小鸟",
        query: ['it', 'programming', 'book']
    },
    {
        url: '/post-0011-academic-integrity-at-princeton.html',
        title: "Academic Integrity at Princeton | 普林斯顿大学学术道德",
        query: ['book', 'guide', 'academic', 'honor']
    },
    {
        url: '/post-0012-awk.html',
        title: "AWK 文字处理",
        query: ['awk', 'util', 'book']
    },
    {
        url: '/post-0013-duckduckgo-another-search-engine.html',
        title: "DuckDuckGo：另一个搜索引擎",
        query: ['intro', 'search-engine', 'translation', 'wikipedia']
    },
    {
        url: '/post-0014-free-as-in-freedom.html',
        title: "Free as in Freedom",
        query: ['freedom', 'rms', 'linux', 'fsf']
    },
    {
        url: '/post-0015-jacobian-and-determinant.html',
        title: "雅各比行列式和矩阵的秩",
        query: ['math', 'linear-algebra', 'jacobian', 'determinant', 'matrix']
    },
    {
        url: '/post-0016-wikipedia-china.html',
        title: "维基上的中国",
        query: ['china', 'intro', 'translation', 'wikipedia']
    },
    {
        url: '/post-0017-wikipedia-japan.html',
        title: "维基上的日本",
        query: ['japan', 'intro', 'translation', 'wikipedia']
    },
    {
        url: '/post-0018-spatial-analysis.html',
        title: "空间分析实习报告",
        query: ['report', 'homework', 'spatial-analysis', 'gis']
    },
    {
        url: '/post-0019-opencv-computer-vision-with-python.html',
        title: "OpenCV Computer Vision with Python",
        query: ['opencv', 'cv', 'computer vision', 'python', 'book']
    },
    {
        url: '/post-0020-kaoyan-english.html',
        title: "考研英语习作",
        query: ['english', 'writing', 'homework']
    },
    {
        url: '/post-0021-wikileaks.html',
        title: "维基上的维基解密",
        query: ['wikileaks', 'wikipedia']
    },
    {
        url: '/post-0022-learning-html.html',
        title: "Learning HTML",
        query: ['html', 'html5', 'intro', 'guide', 'book']
    },
    {
        url: '/post-0023-learning-html5.html',
        title: "Learning HTML5",
        query: ['html5', 'intro', 'guide', 'doc']
    },
    {
        url: '/post-0024-linux-shell-scripting-cookbook.html',
        title: "Linux Shell 脚本菜谱 | Linux Shell Scripting Cookbook",
        query: ['linux', 'scripts', 'bash', 'shell']
    },
    {
        url: '/post-0025-doc-bridge-texture.html',
        title: "桥梁模型贴纹理文档",
        query: ['doc', 'homework']
    },
    {
        url: '/post-0026-english-or-chinese.html',
        title: "说中文还是说英文？无所谓！（演讲稿）",
        query: ['report', 'english']
    },
    {
        url: '/post-0027-ai-will-kill-us.html',
        title: "人工智能是否会导致人类灭亡？（演讲稿）",
        query: ['report', 'english', 'ai', 'intelligence', 'human']
    },
    {
        url: '/post-0028-pinboard.html',
        title: "Pinboard：奇葩的注册费",
        query: ['panboard', 'product', 'intro', 'wikipedia', 'bussness-model']
    },
    {
        url: '/post-0029-kl-transform.html',
        title: "KL Transform （记一次作业）",
        query: ['pca', 'kl', 'algorithm', 'homework', 'eign', 'computer vision', 'ndvi']
    },
    {
        url: '/post-0030-fucking-day.html',
        title: "What a fucking day （记一篇 Essay）",
        query: ['essay', 'koan', 'english']
    },
    {
        url: '/post-0031-brain-hole.html',
        title: "虚拟现实的实习报告（脑洞最大的一次实习报告）",
        query: ['report', 'homework']
    },
    {
        url: '/post-0032-dvorak.html',
        title: "Dvorak 键盘布局（演讲稿）",
        query: ['dvorak', 'report', 'english']
    },
    {
        url: '/post-0033-md2docx.html',
        title: "Pandoc 转成 Word",
        query: ['pandoc', 'util', 'word', 'docx', 'markdown']
    },
    {
        url: '/post-0034-github-dmca.html',
        title: "GitHub 的 DMCA 干嘛的？",
        query: ['github', 'dmca', 'intro']
    },
    {
        url: '/post-0035-pkg-config.html',
        title: "你就编译一个 cpp，用 CMake 还不如用 pkg-config 呢",
        query: ['util', 'pkg-config', 'cmake', 'cpp']
    },
    {
        url: '/post-0036-clipboard.html',
        title: "你的笔记本里有几个剪切板？",
        query: ['intro', 'clipboard', 'vim']
    },
    {
        url: '/post-0037-pangu.html',
        title: "召唤空格之神",
        query: ['util', 'browser', 'virgo']
    },
    {
        url: '/post-0038-salute-to-big-fish.html',
        title: "向《大鱼》致敬",
        query: ['story', 'movie', 'love', 'faith']
    },
    {
        url: '/post-0039-newton-method.html',
        title: "想起了 CASIO-82ES 调牛顿解方程",
        query: ['casio', 'memory']
    },
    {
        url: '/post-0040-shell-is-kidding-me.html',
        title: "让 Shell 喊你回家吃饭",
        query: ['shell', 'cowsay', 'util', 'linux']
    },
    {
        url: '/post-0041-lists-read-at-random.html',
        title: "随便翻翻 & Men Lists & Words Lists",
        query: ['reading', 'archive']
    },
    {
        url: '/post-0042-rules-and-logic.html',
        title: "遵守规则还是符合逻辑？",
        query: ['essay', 'argument']
    },
    {
        url: '/post-0043-awesome-c.html',
        title: "Function Pointer Stack in C",
        query: ['c', 'programming', 'pointer']
    },
    {
        url: '/post-0044-git-github-notes.html',
        title: "Git、GitHub 和 Windows",
        query: ['git', 'github', 'windows']
    },
    {
        url: '/post-0045-learning-vim.html',
        title: "Learning Vim | 学习 Vim 编辑器",
        query: ['vim', 'editor', 'tool', 'master', 'Katana']
    },
    {
        url: '/post-0046-awk.html',
        title: "The AWK Programming Language | AWK 编程语言",
        query: ['awk', 'reading', 'book', 'programming', 'text-edit']
    },
    {
        url: '/post-0047-more-about-vim.html',
        title: "More About Vim | Vim 杂记",
        query: ['vim', 'archive']
    },
    {
        url: '/post-0048-low-poly-in-practice.html',
        title: "设计领域新风潮：Low Poly 风格",
        query: ['poly', 'design', 'computer vision', 'cv', 'html']
    },
    {
        url: '/post-0049-imocap.html',
        title: "GIS 理论与技术 -- 作业 5：设计一个物联网 GIS 应用的方案",
        query: ['gis', 'internet-of-things', 'imocap']
    },
    {
        url: '/post-0050-gis-overall.html',
        title: "GIS 理论与技术 -- 作业 2：GIS 研究综述",
        query: ['gis', 'intro', 'guide', 'report', 'homework']
    },
    {
        url: '/post-0051-spatial-gis.html',
        title: "GIS 理论与技术 -- 作业 3：时空 GIS 的研究分析报告",
        query: ['gis', 'spatial-gis', 'homework', 'report']
    },
    {
        url: '/post-0052-men-and-women.html',
        title: "城会玩之微软 Emotion Recognition",
        query: ['intro', 'microsoft', 'emotion', 'computer vision', 'cv']
    },
    {
        url: '/post-0053-regexpr-in-practice.html',
        title: "实际应用的正则表达式",
        query: ['regexp', 'practice', 'intro']
    },
    {
        url: '/post-0054-get-things-done.html',
        title: "摘自阳志平的博客",
        query: ['archive', 'gtd']
    },
    {
        url: '/post-0055-writing-guide-to-hackers.html',
        title: "码字规范",
        query: ['guide', 'doc', 'rule']
    },
    {
        url: '/post-0056-lms-chunk.html',
        title: "LMS 数据量",
        query: ['intro', 'lms', 'archive']
    },
    {
        url: '/post-0057-code-on-windows.html',
        title: "在 Windows 系统上学编程",
        query: ['windows', 'programming', 'intro']
    },
    {
        url: '/post-0058-script-boy.html',
        title: "一些脚本（豆瓣，etc）",
        query: ['scrips', 'javascript', 'html', 'utils']
    },
    {
        url: '/post-0059-exe-wrapper.html',
        title: "封装说明",
        query: ['doc', 'homework']
    },
    {
        url: '/post-0060-coding-style.html',
        title: "CVRS C++ Coding Style Guidelines",
        query: ['doc', 'guide', 'rule']
    },
    {
        url: '/post-0061-liuhaiyang-example-code.html',
        title: "LaTeX 入门（刘海洋） --- 配套 TeX 源码",
        query: ['archive', 'code', 'latex', 'book']
    },
    {
        url: '/post-0062-pretty-diff.html',
        title: "Pretty Diff | 听歌学英语",
        query: []
    },
    {
        url: '/post-0063-stackoverflow.html',
        title: "Stack Overflow",
        query: ['stackoverflow', 'guide']
    },
    {
        url: '/post-0064-rm-pitfall.html',
        title: "一个空格引发的惨剧（remix）",
        query: ['pitfall', 'story', 'linux', 'funny']
    },
    {
        url: '/post-0065-get-things-done.html',
        title: "Get Things Done",
        query: ['gtd']
    },
    {
        url: '/post-0066-about-encoding.html',
        title: "All About Encoding",
        query: ['encoding', 'guide', 'doc', 'programming']
    },
    {
        url: '/post-0067-learn-c-in-project.html',
        title: "Learn C in Project",
        query: ['c', 'guide', 'project', 'programming']
    },
    {
        url: '/post-0068-cxx-gui-programming-with-qt4.html',
        title: "C++ GUI Programming with Qt4 | C++ GUI Qt4 编程（第二版）",
        query: ['qt', 'doc', 'book', 'programming', 'intro', 'gui', 'master']
    },
    {
        url: '/post-0069-gis-spatial-analysis-application-modeling.html',
        title: "GIS Spatial Analysis and Application Modeling | GIS 空间分析与应用建模",
        query: ['gis', 'spatial-gis', 'analysis']
    },
    {
        url: '/post-0070-some-vim-rules.html',
        title: "Vim Rules",
        query: ['vim', 'rules']
    },
    {
        url: '/post-0071-selected-qt-code.html',
        title: "Selected Qt Code",
        query: ['qt', 'progarmming', 'code']
    },
    {
        url: '/post-0072-cvann-mlp.html',
        title: "OpenCV::CvANN_MLP",
        query: ['opencv', 'computer vision']
    },
    {
        url: '/post-0073-opencv-notes.html',
        title: "OpenCV Notes",
        query: ['opencv', 'notes']
    },
    {
        url: '/post-0074-qt-design-patterns.html',
        title: "Introduction to Design Patterns in C++ with Qt",
        query: ['design', 'design-patterns', 'cpp', 'qt', 'book']
    },
    {
        url: '/post-0075-what-is-projection.html',
        title: "什么是投影？",
        query: ['math', 'matrix', 'linear-algebra', 'projection', 'msr']
    },
    {
        url: '/post-0076-real-hacker.html',
        title: "膜拜大神",
        query: ['master', 'guru', 'hacker', 'pandoc', 'issue', 'github', 'haskel']
    },
    {
        url: '/post-0077-wavelet-transform.html',
        title: "小波变换在图像处理分析中的应用",
        query: ['paper', 'report', 'image-processing', 'wavelet', 'application']
    },
    {
        url: '/post-0078-learning-perl.html',
        title: "Learning Perl",
        query: ['perl', 'book', 'intro', 'doc']
    },
    {
        url: '/post-0079-lingoes-dict.html',
        title: "Lingoes 网络词典",
        query: ['lingoes', 'dict', 'english', 'tool']
    },
    {
        url: '/post-0080-apprenticeship.html',
        title: "软件开发者路线图",
        query: ['development', 'master']
    },
    {
        url: '/post-0081-learning-jquery.html',
        title: "Learning jQuery",
        query: ['jquery', 'html', 'javascript']
    },
    {
        url: '/post-0082-whu-mooc-academic-integrity.html',
        title: "WHU MOOC Academic Integrity",
        query: ['whu', 'mooc', 'integrity']
    },
    {
        url: '/post-0083-designer-needs-to-know.html',
        title: "100 Things Every Designer Needs to Know About People",
        query: ['design', 'book', 'color', 'taste']
    },
    {
        url: '/post-0084-complex-network-notes.html',
        title: "Complex Network Notes",
        query: ['comple-network', 'notes', 'intro', 'homework']
    },
    {
        url: '/post-0085-cvrs-presentation.html',
        title: "Presentation",
        query: ['cvrs', 'presentation', 'tools']
    },
    {
        url: '/post-0086-game-of-throne-series.html',
        title: "Game of Throne",
        query: ['game-of-throne', 'got', 'tv', 'movie']
    },
    {
        url: '/post-0087-leetcode.html',
        title: "Leet Code",
        query: ['leet-code', 'code', 'programming', 'algorithms']
    },
    {
        url: '/post-0088-font-awesome.html',
        title: "Font Awesome",
        query: ['awesome', 'font', 'ui-ux']
    },
    {
        url: '/post-0089-kaggle.html',
        title: "Kaggle",
        query: ['kaggle', 'competition', 'data-science', 'data-mining']
    },
    {
        url: '/post-0090-prerequisites.html',
        title: "背景知识的重要性",
        query: ['background', 'prerequisites', 'common-sense']
    },
    {
        url: '/post-0091-gis-misc.html',
        title: "GIS 理论与技术 - 作业 1, 6, 7",
        query: ['gis', 'homework']
    },
];
