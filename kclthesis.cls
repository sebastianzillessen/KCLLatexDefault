\ProvidesClass{kclthesis}[2016/02/13 KCL MSc Thesis Class by Sebastian Zillessen and Andre Mueller]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[11pt,a4paper]{article}


\newif\ifkclthesis@isdraft

\DeclareOption{isdraft}{\kclthesis@isdrafttrue}
\DeclareOption{nodraft}{\kclthesis@isdraftfalse}

\ExecuteOptions{nodraft}

\ProcessOptions*% process options it the order the user provides them


\ifkclthesis@isdraft
	\RequirePackage{draftwatermark}
	\SetWatermarkText{DRAFT}
	\SetWatermarkScale{8}
\fi




% Mathfonts
\RequirePackage{amsmath, amsfonts, amsthm, amssymb}
\RequirePackage{wasysym}

%Additional Packages
\RequirePackage{color}
\RequirePackage[nottoc,notlot,notlof]{tocbibind}
\RequirePackage{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{subfigure}
\RequirePackage[textsize=tiny,figwidth=8cm]{todonotes}

% Cover Page
\RequirePackage{graphicx}
\RequirePackage[paper=a4paper]{geometry}
\RequirePackage{setspace}
\RequirePackage{framed}


% Variables
\newcommand*{\modulecode}[1]{\gdef\@modulecode{#1}}
\newcommand*{\@modulecode}{\red{Missing Module Code}}
\newcommand*{\subfooter}[1]{\gdef\@subfooter{#1}}
\newcommand*{\@subfooter}{}

\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\@department}{\red{Missing Department}}
\newcommand*{\submissiontitle}[1]{\gdef\@submissiontitle{#1}}
\newcommand*{\@submissiontitle}{\red{Missing Submission title}}
\newcommand*{\studentnumber}[1]{\gdef\@studentnumber{#1}}
\newcommand*{\@studentnumber}{\red{Missing Studentnumber}}
\newcommand*{\programme}[1]{\gdef\@programme{#1}}
\newcommand*{\@programme}{\red{Missing Program}}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{\red{Missing supervisor}}
\newcommand*{\wordcount}[1]{\gdef\@wordcount{#1}}
\newcommand*{\@wordcount}{\red{Missing wordcount}}
\newcommand*{\signdate}[1]{\gdef\@signdate{#1}}
\newcommand*{\@signdate}{\today}


% MAcros

\linespread{1.5}
\newfam\msbfam
\def\Bbb#1{\fam\msbfam\relax#1}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{exa}{Example}[section]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{notation}[theorem]{Notation}
\newtheorem{assumption}[theorem]{Assumption}
\newtheorem{conjecture}[theorem]{Conjecture}

\newcommand{\ind}{1\hspace{-2.1mm}{1}} %Indicator Function
\newcommand{\I}{\mathtt{i}}
\newcommand{\D}{\mathrm{d}}
\newcommand{\E}{\mathrm{e}}
\newcommand{\RR}{\mathbb{R}}
\newcommand{\sgn}{\mathrm{sgn}}
\newcommand{\atanh}{\mathrm{arctanh}}
\def\equalDistrib{\,{\buildrel \Delta \over =}\,}
\numberwithin{equation}{section}
\def\blue#1{\textcolor{blue}{#1}}
\def\red#1{\textcolor{red}{#1}}


% New Comment for todonotes
\newcommand{\insertref}[1]{\todo[color=green!40]{RefMissing: #1}}\newcommand{\explainindetail}[1]{\todo[color=red!40]{Explain: #1}}
\newcommand{\askfeedback}[1]{\todo[color=blue!40]{Feedback Required: #1}}

\renewcommand*{\maketitle}{

% Cover Page

\begin{titlepage}
\thispagestyle{empty}
\null\vskip0.2in%

\begin{center}
\@department \\ 
King's College London \\
WC2R 2LS London \\ 
United Kingdom
\end{center}


\vspace{1.5cm}

\begin{center}
\LARGE{{\bf 
\@title
}}\\
\vspace{0.2cm}
\vskip\bigskipamount % or other desired dimension
\leaders\vrule width \textwidth\vskip0.4pt % or other desired thickness
\vskip\bigskipamount % ditto
\nointerlineskip
\end{center}

\vspace{0.2cm}

\begin{center}
{\bf \@author}\\
\vspace{0.2cm}
\begin{tabular}{r l}
Student Number: & \@studentnumber\\
Course:  & \@programme\\
Module:  & \@modulecode\\
Wordcount:  & \@wordcount\\
\end{tabular}
\end{center}

\vspace{1.0cm}
\begin{center}
\bf{Supervisor:} \@supervisor
\end{center}

\vspace{1cm}

\begin{figure}[!h]
\centering
\includegraphics[width=3.5cm]{img/kcl}
\end{figure}

\vspace{1.2cm}

\begin{center}
\@subfooter
\end{center}
\end{titlepage}
}

\onehalfspacing
\endinput
