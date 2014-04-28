% A LaTeX class for short research notes

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{research_note}[2014/02/25 A LaTeX class for short research notes]


% This is to pass unknown options to the article class
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{amsart}%
}
\ProcessOptions\relax
% Use article as base class
\LoadClass{article}

% We will use the titlesec package to process the title

\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{parskip}
\RequirePackage{titling}
\RequirePackage[small,sf,compact]{titlesec}

% These packages are commonly used.
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage[style=alphabetic]{biblatex}
\RequirePackage{xcolor}
\definecolor{lc}{HTML}{F2594B}
\definecolor{cc}{HTML}{00A388}
\definecolor{uc}{HTML}{1659A3}
\RequirePackage{hyperref}
\hypersetup{xetex, colorlinks, linkcolor=lc, urlcolor=uc, citecolor=cc}

\newtheorem{Theorem}[equation]{Theorem}
\newtheorem{Proposition}[equation]{Proposition}
\newtheorem{Lemma}[equation]{Lemma}
\newtheorem{Corollary}[equation]{Corollary}
\newtheorem{Conjecture}[equation]{Conjecture}
\theoremstyle{definition}
\newtheorem{Definition}[equation]{Definition}
\newtheorem{Example}[equation]{Example}
\newtheorem{Remark}[equation]{Remark}

\numberwithin{equation}{section}

% small piece of code to fix a clash between amsthm and parkip which causes
% theorems to have zero space to previous line
\makeatletter
\def\thm@space@setup{%
  \thm@preskip=\parskip \thm@postskip=0pt
}
\makeatother


%%% Set global fonts
\setmainfont[
    BoldFont       ={* Bold}, 
    ItalicFont     ={* Italic},
    BoldItalicFont ={* Bold Italic}]
{DTLAlbertinaT}
\setsansfont{Helvetica Neue Light}


%%% Set font (with colors etc) for title

\newfontfamily\titlefont[Color=121212]{Helvetica Neue Light}
\newfontfamily\metafont[Color=303030]{Helvetica Neue Light}

\renewcommand{\normalsize}{\fontsize{10}{13}\normalfont}

%%% Heading and author/date

\pretitle{\fontsize{24pt}{28pt}
    \titlefont
}
\posttitle{\par\vspace{8pt}\hrule\vspace{5pt}}
\predate{}
\postdate{}
%\preauthor{}
\preauthor{\fontsize{8pt}{10pt}\metafont\enspace\textbullet\enspace\emph}
\postauthor{\par}

\date{} %date needs to be set to null so it doesn't conflict with datestamp below

% The titling package automatically prints the title, author and then date.
% To rectify this we define a new command \date_stamp which prints before the author.
\newcommand{\datestamp}[1]{%
   \gdef\dstamp{#1}}
\newcommand{\dstamp}{}
\renewcommand{\maketitlehookb}{%
   \fontsize{8pt}{11pt}\metafont\emph\dstamp}

% We also add a comman to add a short paragraph to put the note into context with 
% other notes.
\newcommand{\comments}[1]{%
   \gdef\cmnt{#1}}
\newcommand{\cmnt}{}
\renewcommand{\maketitlehookd}{%
   \fontsize{8pt}{11pt}\metafont\emph\cmnt}

% Tell titlesec the format for sections etc
\titleformat{\section}[hang]{\fontsize{16pt}{18pt}\sffamily}{\thesection}{10pt}{}[]
\titleformat{\subsection}[hang]{\fontsize{12pt}{14pt}\sffamily}{\thesubsection}{10pt}{}
\titleformat{\subsubsection}[runin]{\bf\rmfamily}{\thesubsubsection}{0.5em}{}[.]

% Here we collect some standard commands we use frequently
% for f:X -> Y; the default spacing isn't great
\newcommand{\map}[2]{\,{:}\,#1\!\longrightarrow\!#2}
% set with conditions (fixes spacing issues) 
% e.g: \set{x\in |R}{x>0} is the set of all possible real numbers
\newcommand{\setc}[2]{\left\{\:\!#1\:\middle|\;\!#2\!\:\right\}}
% set without conditions e.g. \set{1,2,3}, just fixes spacing issues
\newcommand{\set}[1]{\left\{\,\!#1\,\!\right\}}

\newcommand{\CC}{\mathbb{C}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\QQ}{\mathbb{Q}}
\newcommand{\ZZ}{\mathbb{Z}}
\newcommand{\NN}{\mathbb{N}}
\newcommand{\PP}{\mathbb{P}}
\renewcommand{\AA}{\mathbb{A}}

\DeclareMathOperator{\Hom}{Hom}
\DeclareMathOperator{\End}{End}
\DeclareMathOperator{\Spec}{Spec}
