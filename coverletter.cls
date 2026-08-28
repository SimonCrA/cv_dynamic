\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{coverletter}[2024/08/28 Cover Letter class]

\LoadClass[12pt,a4paper]{article}
\usepackage{times}
\usepackage{enumitem}
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
\newcommand{\@date}{}

\newcommand{\company}[1]{\renewcommand{\@company}{#1}}
\newcommand{\position}[1]{\renewcommand{\@position}{#1}}
\renewcommand{\date}[1]{\renewcommand{\@date}{#1}}

% Header
\newcommand{\makeheader}{
    \begin{minipage}[t]{\textwidth}
        \centering
        {\huge\bfseries \@name} \\
        {\large\normalfont \@jobtitle} \\
        \vspace{0.5em}
        {\small \@email ~|~ \@phone ~|~ \@linkedin ~|~ \@portfolio}
    \end{minipage}
}

% Date and company info
\newcommand{\makecompanyinfo}{
    \vspace{1em}
    \@date \\
    \vspace{0.5em}
    Hiring Manager \\
    \@company
    \vspace{1em}
}

% Opening
\newcommand{\opening}[1]{
    \vspace{1em}
    Dear Hiring Manager,
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
    
    \vspace{2em}
    \@name
}

\endinput