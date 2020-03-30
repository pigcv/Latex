\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oucart}[2015/05/20 OUC Undergraduate Thesis Template]

\LoadClass[11pt,a4paper]{article}

\newif\iflangcn
\newif\iflangen

\DeclareOption{cn}{\langcntrue}
\DeclareOption{en}{\langentrue}
\ProcessOptions\relax

\RequirePackage{ctex}
\RequirePackage{CJKutf8}
% Windows用户使用以下字体配置
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{FangSong}

% macOS用户使用以下字体配置 
%\setCJKmainfont[BoldFont=STHeiti,ItalicFont=STKaiti]{STSong}
%\setCJKsansfont[BoldFont=STHeiti]{STXihei}
%\setCJKmonofont{STFangsong}

\RequirePackage{amsmath}
\RequirePackage{booktabs}
\RequirePackage{caption}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{subfigure}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ulem}

% 页边距设置
\RequirePackage{geometry}
\geometry{top=2.54cm,bottom=2.54cm,left=1.91cm,right=1.91cm}  % 对应于Word的中等页边距
\linespread{1.25}  % 1.25倍行距

\RequirePackage{fancyhdr}
\pagestyle{fancy}

% 导入自定义样式
\RequirePackage{assets/cover}
\RequirePackage{assets/abstractkeywords}
\RequirePackage{assets/signature}
\RequirePackage{assets/gbt7714}

% ``目录'', ``参考文献''样式  黑体 三号 居中
\iflangcn
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{目$\qquad$录}}}}
\renewcommand{\refname}{\centerline{参考文献}}
\fi
\iflangen
\renewcommand{\contentsname}{\centerline{\zihao{3}{\heiti{Contents}}}}
\renewcommand{\refname}{\centerline{References}}
\fi

% 调整页边距
%\geometry{top=2.54cm,bottom=2.54cm,left=2.54cm,right=2.54cm} 

\makeatletter

% 修改引用标记为上角标
\def\@cite#1#2{\textsuperscript{[{#1\if@tempswa , #2\fi}]}}

% 定义基本信息
\newcommand*{\entitle}[1]{
  \def\@entitle{#1}
}
\newcommand*{\advisor}[1]{
  \def\@advisor{#1}
}
\newcommand*{\studentid}[1]{
  \def\@studentid{#1}
}
\newcommand*{\department}[2]{
  \def\@college{#1}
  \def\@department{#2}
}
\newcommand*{\dateyear}[1]{
  \def\@dateyear{#1}
}
\newcommand*{\datemonth}[1]{
  \def\@datemonth{#1}
}
\newcommand*{\dateday}[1]{
  \def\@dateday{#1}
}


\lhead{}
\rhead{}
\chead{\small{\@title}} % 页眉

% \fancyhead[RO]{\thepage\scriptsize{-5}}  % 加

\cfoot{\songti\zihao{-5}{\thepage}}


\makeatother





% 修改标题样式
\titleformat{\section}
            {\zihao{3}\heiti\raggedright}
            {\arabic{section}.}{1em}
            {}
\titleformat{\subsection}
            {\zihao{4}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}}{1em}
            {}
\titleformat{\subsubsection}
            {\zihao{4}\heiti\raggedright}
            {\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}{1em}
            {}

% 修改目录样式
\titlecontents{section}
              [10mm]
              {\zihao{4}\songti}
              {\contentslabel{1em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsection}
              [17mm]
              {\zihao{-4}\songti}
              {\contentslabel{2em}}
              {}
              {\titlerule*{.}\contentspage}
\titlecontents{subsubsection}
              [25mm]
              {\zihao{-4}\songti}
              {\contentslabel{3em}}
              {}
              {\titlerule*{.}\contentspage}

% 修改部分页眉样式，无需修改


% 图、表、公式样式
\captionsetup{figurewithin=section}
\captionsetup{tablewithin=section}
\renewcommand{\figurename}{图}
\renewcommand{\tablename}{表}
\renewcommand\thefigure{\arabic{section}-\arabic{figure}}
\renewcommand\thetable{\arabic{section}-\arabic{table}}
\renewcommand{\labelenumi}{(\theenumi)}
\renewcommand{\captionfont}{\zihao{5}\heiti} 
\numberwithin{equation}{section}
