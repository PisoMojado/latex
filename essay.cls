\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{essay}[2016/01/04 Standard Essay Format]
\LoadClass[12pt]{extarticle}
%----------------------------------------------------------------------------------------------------
%GENERAL PAGE SETTINGS
%----------------------------------------------------------------------------------------------------
\RequirePackage[margin=1in, headheight=35pt]{geometry}
\RequirePackage{times}
\RequirePackage[scaled]{helvet} % Helvetica, scaled 95%
\RequirePackage[T1]{fontenc} % better glyphs
\setlength\parindent{1em}
\linespread{1.5} % Palatino appreciates some space.

\makeatletter % macro definitions - redifine this?
%----------------------------------------------------------------------------------------------------
%IMAGES
%----------------------------------------------------------------------------------------------------
\RequirePackage{graphicx}
\RequirePackage{wrapfig} % inline figures.
%----------------------------------------------------------------------------------------------------
%SECTION FORMATTING
%----------------------------------------------------------------------------------------------------
\RequirePackage[hidelinks]{hyperref} % Linking ToC, no link chrome.
\RequirePackage{enumitem}
%\RequirePackage{cite} %simple bibtex - numeric citations
\RequirePackage[round, authoryear]{natbib} % simple bibtex - textual citations
%\RequirePackage[style=numeric,backend=biber]{biblatex} % complicated bibtex
\hypersetup{
  linktoc=all,
}
%\RequirePackage[sf]{titlesec} % Section Title Options (switches to sans-serif)

%right-aligned two-part header, with title on top and authorship information below.
\renewcommand{\maketitle}{
  \begin{flushright}
    \textsf{
    {\LARGE\textbf{\@title}}\vspace{2pt}\\
    {\large\@subtitle}\\
    \vspace{40pt}
    {\small\linespread{0.9}\selectfont
    \textbf{\textsc{\@author}}\\
    \@class\\
    \@institution\\
    \@date
    }
    \linespread{1.05}\selectfont
    \vspace{40pt}
  }
  \end{flushright}
}

%macro definitions for the `\maketitle` command.
\def\@subtitle{}
\newcommand{\subtitle}[1]{
  \def\@subtitle{#1}
}

\def\@class{}
\newcommand{\class}[1]{
  \def\@class{#1}
}

\def\@institution{The University of Texas at Austin}
\newcommand{\institution}[1]{
  \def\@institution{#1}
}

\renewcommand{\abstractname}{\textsf{Summary}} % Change the display title of the `abstract` environment.

\endinput
