\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/08/31 Modern Resume Class]

\LoadClass[12pt,a4paper]{article}
\usepackage{xcolor}
\usepackage{enumitem}
\usepackage[top=2cm,bottom=2cm,right=2cm,left=2cm]{geometry}
\usepackage{hyperref}

\definecolor{headercolor}{HTML}{1a1a2e}
\definecolor{accentcolor}{HTML}{1976d2}

\setlength{\parindent}{0em}
\setlist{nosep,left=0em,labelindent=5pt,labelwidth=1.25em}

\pagestyle{empty}
\hypersetup{
    colorlinks=false,
    pdfauthor={Simon Clemente},
    pdftitle={Resume}
}

\newcommand{\@name}{}
\newcommand{\@cargo}{}

\newcommand{\name}[2]{
    \renewcommand{\@name}{#1}
    \renewcommand{\@cargo}{#2}
}

\newcommand{\makename}{
    \begin{minipage}[t]{0.65\textwidth}
        {\huge\bfseries \color{white} \@name} \\ 
        {\large\normalfont \@cargo}
    \end{minipage}
    \hfill
    \begin{minipage}[t]{0.3\textwidth}
        \raggedleft
        {\large\color{accentcolor} \textbf{Simon Clemente} \\ \small \href{mailto:simonct3ch@gmail.com}{simonct3ch@gmail.com} \\ \small \href{https://github.com/simoncra}{github.com/simoncra} \\ \small \href{https://linkedin.com/in/simonctech}{linkedin.com/in/simonctech}}
    \end{minipage}
}

\newcommand*\@contacts{}
\newcommand*\contact[1]{
    \g@addto@macro\@contacts{\par#1}
}
\def \makecontact{\llap{\parbox{\textwidth}{\footnotesize\raggedleft\@contacts}}}

\renewcommand{\makeheader}{
    \noindent
    {\color{headercolor}\rule{\textwidth}{0.8pt}}
    \makename
    {\color{headercolor}\rule{\textwidth}{0.8pt}}
}

\newenvironment{ResumeSection}[1]{
    \begin{center}
        {\large\color{headercolor}\MakeUppercase{\bf #1}}
    \end{center}
    \vspace{0.5em}
    {\color{headercolor}\rule{\linewidth}{1pt}}
    \vspace{0.5em}
}{
    \vspace{1em}
}

\define@key{subsection}{org}{\def\subsection@org{#1}}
\define@key{subsection}{location}{\defsubsection@location{#1}}
\define@key{subsection}{position}{\defsubsection@position{#1}}
\define@key{subsection}{duration}{\defsubsection@duration{#1}}
\newenvironment{ResumeSubsection}[1]{
    \setkeys{subsection}{org=,location=,position=,duration=}
    \setkeys{subsection}{#1}
    \smallskip
    \par\textbf\subsection@org\hfill\subsection@location
    \ifx\subsection@position\empty {}
    \else {\par{\em\subsection@position}\hfill{\em\subsection@duration}}
    \fi
}{
    \bigskip
}