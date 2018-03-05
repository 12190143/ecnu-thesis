%%
%% This is file `ecnuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ecnuthesis.dtx  (with options: `class')
%%   ecnuthesis Document Class (N. Danner)
%% ecnuthesis:  Document class for ECNU Thesis.
%% Yezhi Lin (lyzinfo@gmail.com)
%% Copyright 2012
%% RCS Info:
%%      ecnuuthesis.cls,v 0.1 2012/12/27 00:00:00 Yezhi Lin Exp
%% define the verison

%\def\fileversion{0.1}
%\def\filedate{2012/12/27}

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{ECNU}

%%定义硕士与博士论文的区别
\newif\ifECNU@master\ECNU@masterfalse
\newif\ifECNU@doctor\ECNU@doctorfalse
\DeclareOption{master}{\ECNU@mastertrue}
\DeclareOption{doctor}{\ECNU@doctortrue}
\newif\ifECNU@typeinfo \ECNU@typeinfotrue
\DeclareOption{notypeinfo}{\ECNU@typeinfofalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%\LoadClass[openany,cs4size,a4paper,fancyhdr]{ctexbook}[2007/10/19]
\LoadClass[cs4size,a4paper,fancyhdr,twoside]{ctexbook}[2007/10/19]

%% \AmSTeX{} 宏包，用来排出更加漂亮的公式。
\RequirePackage{amsmath,amsthm,amsfonts,amssymb,bm}
%% 图形支持宏包。
\RequirePackage{graphicx,psfrag}
\RequirePackage{epstopdf}
%% 生成有书签的 pdf 及其开关，请结合 gbk2uni 避免书签乱码。
\RequirePackage{hyperref}
\hypersetup{CJKbookmarks=true,%
       bookmarksnumbered,%
               %colorlinks,%
               %linkcolor=blue,%
               plainpages=false,%
               %pdfencoding=unicode,
               pdfstartview=FitH
               }
%\AtBeginDvi{\special{pdf:tounicode GBK-EUC-UCS2}}
%% 参考文献引用宏包。
\RequirePackage[numbers,super,square,sort&compress]{natbib}
%% 改变行距
\RequirePackage{setspace}
\RequirePackage{array}
%% 公式与正文之间的空格
\RequirePackage{CJKspace}
%% 定义字体

%%图片目录
\graphicspath{{figures/}}
%%页边距设置
\setlength{\textwidth}{6.45truein} \setlength{\textheight}{9.6truein}
\ifECNU@master  \setlength{\oddsidemargin}{0.0in} \setlength{\evensidemargin}{-0.0in}
\else \setlength{\oddsidemargin}{0.1in} \setlength{\evensidemargin}{-0.1in}
\fi
\setlength{\topmargin}{-0.4truein}
%%设置行间距
\setlength{\baselineskip}{23pt}{\setlength\arraycolsep{2pt}
\addtolength{\bibsep}{-0.5 em} % 缩小参考文献间的垂直间距
%%设置表格行距为1.3
\renewcommand\arraystretch{1.3}
%%设置行间距
%\renewcommand{\baselinestretch}{1.56} \normalsize
%\renewcommand{\baselinestretch}{1.2} \normalsize

%% 封面与封底
\newcommand\ECNUspace{\protect\CTEX@spaceChar\protect\CTEX@spaceChar}

%%单双页
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else\thispagestyle{empty}%
\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
%% 页眉页脚
\fancypagestyle{plain}{%
        \fancyhf{}%
        \renewcommand{\headrulewidth}{0pt}%
        \renewcommand{\footrulewidth}{0pt}%
}

\pagestyle{fancy}
        \fancyhf{}
        %\fancyhead[RE]{\small \ZJU@value@titlemark}
        %\fancyhead[LO]{\small \leftmark}
        %\fancyhead[LE,RO]{\small ~\thepage~}
       \fancyhead[RO,LE]{华东师范大学博士学位论文}
       \fancyhead[RE,LO]{\small \rightmark}
       \fancyfoot[RO,LE]{\thepage}


%%定理、定义的一些定义
\theoremstyle{plain}
  \newtheorem{algo}{\ECNUspace 算法~}[chapter]
  \newtheorem{thm}{\ECNUspace 定理~}[chapter]
  \newtheorem{lem}[thm]{\ECNUspace 引理~}
  \newtheorem{prop}[thm]{\ECNUspace 命题~}
  \newtheorem{cor}[thm]{\ECNUspace 推论~}
\theoremstyle{definition}
  \newtheorem{defn}{\ECNUspace 定义~}[chapter]
  \newtheorem{conj}{\ECNUspace 猜想~}[chapter]
  \newtheorem{exmp}{\ECNUspace 例~}[chapter]
  \newtheorem{rem}{\ECNUspace 注~}
  \newtheorem{case}{\ECNUspace 情形~}
\renewcommand{\proofname}{\bf 证明}

%% labels in the title page
\def\ECNU@label@master{硕士}
\def\ECNU@label@doctor{博士}
\def\ECNU@label@author{研究生:}
\def\ECNU@label@engauthor{Author:}
\def\ECNU@label@supervisor{指~导~~教~师:}
\def\ECNU@label@engsupervisor{Supervisor:}
\def\ECNU@label@interest{研~究~~方~向:}
\def\ECNU@label@enginterest{Subject:}
\def\ECNU@label@major{专~\quad~~\quad~业:}
\def\ECNU@label@engmajor{Major:}
\def\ECNU@label@institute{院~\quad~~\quad~系:}
\def\ECNU@label@enginstitute{Department:}
\def\ECNU@label@schoolcode{学校代码:~}
\def\ECNU@label@engschoolcode{School Code:~}
\def\ECNU@label@ID{学\qquad 号:~}
\def\ECNU@label@engID{Student Number:~}
\def\ECNU@label@doctorthesis{届研究生博士学位论文}
\def\ECNU@label@masterthesis{届研究生硕士学位论文}
\def\ECNU@label@doctorengthesis{~Doctoral Dissertation}
\def\ECNU@label@masterengthesis{~Master Thesis}
\def\ECNU@label@date{完成}
\def\ECNU@label@schoolname{East China Normal University}

%%
%% string values filled in the title page
%%
\def\ECNU@value@schoolcode{10269}
\def\ECNU@value@ID{}
\def\ECNU@value@institute{}
\def\ECNU@value@year{}
\def\ECNU@value@title{}
\def\ECNU@value@major{}
\def\ECNU@value@interest{}
\def\ECNU@value@supervisor{}
\def\ECNU@value@author{}
\def\ECNU@value@einstitute{}
\def\ECNU@value@eyear{}
\def\ECNU@value@etitle{}
\def\ECNU@value@emajor{}
\def\ECNU@value@einterest{}
\def\ECNU@value@esupervisor{}
\def\ECNU@value@eauthor{}

%% 定义接口
\newcommand\ID[1]{\def\ECNU@value@ID{#1}}
\newcommand\cyear[1]{\def\ecnu@year{#1}}
\newcommand\cdate[2]{\def\ECNU@value@year{#1}\def\ECNU@value@eyear{#2}}
\renewcommand\title[2]{\def\ECNU@value@title{#1}\def\ECNU@value@etitle{#2}}
\newcommand\institute[2]{\def\ECNU@value@institute{#1}\def\ECNU@value@einstitute{#2}}
\newcommand\major[2]{\def\ECNU@value@major{#1}\def\ECNU@value@emajor{#2}}
\newcommand\interest[2]{\def\ECNU@value@interest{#1}\def\ECNU@value@einterest{#2}}
\newcommand\supervisor[2]{\def\ECNU@value@supervisor{#1}\def\ECNU@value@esupervisor{#2}}
\renewcommand\author[2]{\def\ECNU@value@author{#1}\def\ECNU@value@eauthor{#2}}

%% 定义下划线
\def\ECNU@underline[#1]#2{%
        \underline{\hbox to #1{\hfill#2\hfill}}}
\def\ECNUunderline{\@ifnextchar[\ECNU@underline\underline}
\def\ECNUbox[#1]#2{%
        \hbox to #1{#2\hfill}}

%% 生成中文封面
\newcommand\makechinesecover{%
        \thispagestyle{empty}
        \begin{center}
                \songti\zihao{4} \ecnu@year
                \ifECNU@master \ECNU@label@masterthesis \else \ECNU@label@doctorthesis \fi
                \hfill
                \ECNU@label@schoolcode\ECNUbox[115pt]{\ECNU@value@schoolcode}\\
                \vspace{5mm}
                \hfill\ECNU@label@ID\ECNUbox[115pt]{\ECNU@value@ID}\\
                \vspace{22mm}
                \includegraphics[width=153mm]{ECNU} \\
                \vfill%\vspace{28mm}
                {\heiti\zihao{1}\ECNU@value@title}\\
                \vfill%\vspace{27mm}
                \begin{tabular}{rl}
                      \songti\zihao{4} \ECNU@label@institute& \ECNUunderline[160pt]{\ECNU@value@institute}  \\[3mm]
                      \ECNU@label@major & \ECNUunderline[160pt]{\ECNU@value@major}  \\[3mm]
                      \ECNU@label@interest & \ECNUunderline[160pt]{\ECNU@value@interest}  \\[3mm]
                      \ECNU@label@supervisor & \ECNUunderline[160pt]{\ECNU@value@supervisor}  \\[3mm]
                      \ifECNU@master \ECNU@label@master\else \ECNU@label@doctor\fi\ECNU@label@author
                      & \ECNUunderline[160pt]{\ECNU@value@author}  \\[3mm]
                \end{tabular}\\
                \vspace{15mm}
                \ECNU@value@year\ECNU@label@date
        \end{center}
}

%% 生成英文封面
\newcommand{\fonttitle}{\fontsize{30.5bp}{30.5bp}\selectfont}
\newcommand\makeenglishcover{%
         \thispagestyle{empty}
         \begin{center}
                \zihao{4} \ecnu@year
                \ifECNU@master \ECNU@label@masterengthesis \else \ECNU@label@doctorengthesis \fi
                \hfill
                \ECNU@label@engschoolcode\ECNUbox[100pt]{\ECNU@value@schoolcode}\\
                \vspace{3mm}
                \hfill\ECNU@label@engID\ECNUbox[75pt]{\ECNU@value@ID}\\
                \vspace{22mm}
                 {\fonttitle \bf  \ECNU@label@schoolname}\\
                 \vfill
                 \begin{center}
                    \huge \bf  \MakeUppercase \ECNU@value@etitle
                 \end{center}
                 \vfill
                 \begin{tabular}{rl}
                      \songti\zihao{4} \ECNU@label@enginstitute& \ECNUunderline[300pt]{\ECNU@value@einstitute}  \\[2mm]
                      \ECNU@label@engmajor & \ECNUunderline[300pt]{\ECNU@value@emajor}  \\
                      \ECNU@label@enginterest & \ECNUunderline[300pt]{\ECNU@value@einterest}  \\
                      \ECNU@label@engsupervisor & \ECNUunderline[300pt]{\ECNU@value@esupervisor}  \\
                      \ECNU@label@engauthor& \ECNUunderline[300pt]{\ECNU@value@eauthor}  \\
                \end{tabular}\\
                \vspace{25mm}
                \ECNU@value@eyear
        \end{center}
}



%% CopyRight
\newcommand\makecopyright{
        \thispagestyle{empty}
        \begin{center}
        \end{center}
        \begin{center}
        \zihao{3}{\bf 华东师范大学学位论文原创性声明}
        \end{center}
        \vspace{2mm}
        {\zihao{-4} \qquad 郑重声明：本人呈交的学位论文《\ECNU@value@title 》，
        是在华东师范大学攻读硕士/博士（请勾选）学位期间，
        在导师的指导下进行的研究工作及取得的研究成果。
        除文中已经注明引用的内容外，本论文不包含其他个人已经发表或撰写过的研究成果。
        对本文的研究做出重要贡献的个人和集体，均已在文中作了明确说明并表示谢意。}\\
        \begin{center}
        \hspace{13mm}{\bf 作者签名:~}\ECNU@underline[82pt]{}\hfill
         {\bf 日期:}\ECNUbox[30pt]{}年\ECNUbox[20pt]{}月\ECNUbox[20pt]{}日\ECNUbox[70pt]{}
        \end{center}
        \vfill%\vspace{10mm}
        \begin{center}
               \zihao{3}{\bf 华东师范大学学位论文著作权使用声明}
        \end{center}
        \vspace{2mm}%2mm
        {\zihao{-4} \qquad 《\ECNU@value@title 》系本人在华东师范大学攻读学位期间在导师指导下完成的硕士/博士（请勾选）学位论文，
        本论文的研究成果归华东师范大学所有。本人同意华东师范大学根据相关规定保留和使用此学位论文，
        并向主管部门和相关机构如国家图书馆、中信所和“知网”送交学位论文的印刷版和电子版；
        允许学位论文进入华东师范大学图书馆及数据库被查阅、借阅；
        同意学校将学位论文加入全国博士、硕士学位论文共建单位数据库进行检索，
        将学位论文的标题和摘要汇编出版，采用影印、缩印或者其它方式合理复制学位论文。\\
        \ECNUbox[19.5pt]{}  本学位论文属于（请勾选）\\
        \ECNUbox[19.5pt]{} （ \ECNUbox[5pt]{} ）1.经华东师范大学相关部门审查核定的“内部”或“涉密”学位论文*，\\
        于 \ECNUbox[20pt]{}    年\ECNUbox[20pt]{}  月\ECNUbox[20pt]{}    日解密，解密后适用上述授权。\\
        \ECNUbox[19.5pt]{} （ \ECNUbox[5pt]{} ）2.不保密，适用上述授权。 }\\
        \vspace{4mm}%2mm
        \begin{center}
        \hspace{13mm}{导师签名~}\ECNU@underline[120pt]{}\hfill
        {本人签名~}\ECNU@underline[120pt]{}\ECNUbox[20pt]{}\\
         \vspace{9mm}
         \hfill
         \ECNUbox[30pt]{}年\ECNUbox[30pt]{}月\ECNUbox[30pt]{}日\ECNUbox[50pt]{}
        \end{center}
        \vspace{3mm}
        \begin{spacing}{1.26}
         \zihao{5} * “涉密”学位论文应是已经华东师范大学学位评定委员会办公室或保密委员会审定过的学位\\
         \ECNUbox[20pt]{}论文（需附获批的《华东师范大学研究生申请学位论文“涉密”审批表》方为有效），未经上\\
         \ECNUbox[20pt]{}述部门审定的学位论文均为公开学位论文。此声明栏不填写的，默认为公开学位论文，均适用\\
         \ECNUbox[20pt]{}上述授权）。
       \end{spacing}
}


%%定义辩委员会成员名单
\newcommand\makemember{
        \thispagestyle{empty}
        \begin{center}
                {\zihao{3} \bf \underline{\ECNU@value@author}~
                \ifECNU@master \ECNU@label@master \else \ECNU@label@doctor \fi
                学位论文答辩委员会成员名单}\\
                \vspace{15mm}
                \zihao{4}
                \begin{tabular}[c]{| p{30mm}<{\centering} | p{30mm}<{\centering} | p{30mm}<{\centering} |  p{30mm}<{\centering} |}\hline
                   姓名 &职称 &单位  &  备注 \\ \hline
                  & & &   主席   \\ \hline
                  & & &     \\ \hline
                  & & &     \\  \hline
                  & & &    \\ \hline
                  & & &    \\ \hline
                  & & &   \\ \hline
                  & & &    \\ \hline
                \end{tabular}
        \end{center}
}

%% 生成封面和CopyRight
\newcommand\makecover{
        \makechinesecover
        \newpage
        \makeenglishcover
        \newpage
        \makecopyright
        \newpage
        \makemember
}

%%版面格式
\newcommand\Nchapter[1]{%
\if@mainmatter%
        \@mainmatterfalse%
                \chapter{#1}%
        \@mainmattertrue%
\else
        \chapter{#1}%
\fi
}

%% 摘要
\def \ECNU@label@abstract{摘\ECNUspace 要}
\newenvironment{abstract}{
        \Nchapter{\ECNU@label@abstract}
        }{}
%% 英语摘要
\def \ECNU@label@englishabstract{Abstract}
\newenvironment{englishabstract}{
        \Nchapter{\ECNU@label@englishabstract}}{}
%% 关键词
\def \ECNU@label@keywords{关键词：}
\newcommand\keywords[1]{%
        \vspace{2ex}\noindent{\heiti \ECNU@label@keywords} #1}
%% 英语关键词
\def \ECNU@label@englishkeywords{Keywords:~}
\newcommand\englishkeywords[1]{%
        \vspace{2ex}\noindent{\bf \ECNU@label@englishkeywords} #1}

%%目录
\renewcommand\tableofcontents{%
        \if@twocolumn
                \@restonecoltrue\onecolumn
        \else
                \@restonecolfalse
        \fi
        \Nchapter{\contentsname}%
        \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
        \@starttoc{toc}%
        \if@restonecol\twocolumn\fi
    }
\addtocontents{toc}{\let\string\CTEX@spaceChar\relax}

%%参考文献在目录中显示
\let\oldbibsection\bibsection
\renewcommand{\bibsection}{\oldbibsection\addcontentsline{toc}{chapter}{参考文献}}

%%参考文献的上下标定义


%%致谢
\def \ECNU@label@thanks{后\ECNUspace 记}
\renewenvironment{thanks}
  {\Nchapter{\ECNU@label@thanks}\kaishu}
  {}
%%发表的论文
\def \ECNU@label@publications{在读期间发表或将到发表的学术论文情况}
\newenvironment{publications}[1]
     {\Nchapter{\ECNU@label@publications}%
      \@mkboth{\MakeUppercase\ECNU@label@publications}
              {\MakeUppercase\ECNU@label@publications}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `publications' environment}}%
      \endlist}

%%参与的科研课题
\def \ECNU@label@project{在读期间参与的科研项目情况}
\newenvironment{project}[1]
     {\begin{center}\zihao{-1}\bfseries\ECNU@label@project\end{center}%
      \@mkboth{\MakeUppercase\ECNU@label@project}
              {\MakeUppercase\ECNU@label@project}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `project' environment}}%
      \endlist}

\def \ECNU@label@resume{个人简历}
\newenvironment{resume}
  {\Nchapter{\ECNU@label@resume}\kaishu}
  {}
\endinput
%%
%% End of file `ecnuthesis.cls'.
