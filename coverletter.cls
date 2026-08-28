\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}[2024/08/28 Cover Letter class]

\LoadClass[12pt,a4paper]{article}
\usepackage{times}
\usepackage{enumitem}
\usepackage{xcolor}
\usepackage[top=2cm,bottom=2cm,right=2.5cm,left=2.5cm]{geometry}

\setlength{\parindent}{0em}
\setlist{nosep,left=0em,labelindent=5pt,labelwidth=1.25em}

% Contact information
\newcommand{\@name}{}
\newcommand{\@jobtitle}{}
\newcommand{\@email}{}
\newcommand{\@phone}{}
\newcommand{\@linkedin}{}
\newcommand{\@portfolio}{}

\newcommand{\name}[1]{\renewcommand{\@name}{#1}}
\newcommand{\jobtitle}[1]{\renewcommand{\@jobtitle}{#1}}
\newcommand{\email}[1]{\renewcommand{\@email}{#1}}
\newcommand{\phone}[1]{\renewcommand{\@phone}{#1}}
\newcommand{\linkedin}[1]{\renewcommand{\@linkedin}{#1}}
\newcommand{\portfolio}[1]{\renewcommand{\@portfolio}{#1}}

% Company information
\newcommand{\@company}{}
\newcommand{\@position}{}

\newcommand{\company}[1]{\renewcommand{\@company}{#1}}
\newcommand{\position}[1]{\renewcommand{\@position}{#1}}
\renewcommand{\date}[1]{\def\@date{#1}}

% Header - Left aligned name with right-aligned contact
\newcommand{\makeheader}{
    \noindent
    \begin{minipage}[t]{0.6\textwidth}
        {\LARGE\bfseries \@name} \\
        \vspace{0.3em}
        {\large\color{darkgray} \@jobtitle}
    \end{minipage}%
    \hfill
    \begin{minipage}[t]{0.38\textwidth}
        \raggedleft
        {\small \@email} \\
        {\small \@phone} \\
        {\small \@linkedin} \\
        {\small \@portfolio}
    \end{minipage}
    \vspace{1em}
    \hrule
    \vspace{1em}
}

% Date and company info
\newcommand{\makecompanyinfo}{
    \@date
    
    \vspace{1.5em}
    Dear Hiring Manager,
}

% Opening paragraph
\newcommand{\opening}[1]{
    \vspace{1em}
    #1
}

% Body paragraphs
\newcommand{\body}[1]{
    \vspace{1em}
    #1
}

% Closing
\newcommand{\closing}[1]{
    \vspace{1em}
    #1
    
    \vspace{2em}
    Sincerely,
    
    \vspace{2.5em}
    {\bfseries \@name}
}

\endinput