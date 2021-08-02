---
title: Karnaugh Map
author: Praktikum Rangkaian Digital
institute: Ilmu Komputer IPB
date: 2019
theme: Dresden
header-includes:
    - \usepackage[labelformat=empty]{caption}
    - \renewcommand{\figurename}{Gambar}
    - \usepackage{karnaugh-map}
---

## K-Map

\centering
\begin{karnaugh-map}[4][4][1][$cd$][$ab$]
    \minterms{0,2,4,6,8,9,10}
    \implicantedge{0}{4}{2}{6}
    \implicantcorner
    \implicant{8}{9}
\end{karnaugh-map}

$F = a'd' + b'd' + ab'c'$

## K-Map

\centering
\begin{karnaugh-map}[4][4][1][$cd$][$ab$]
    \maxterms{1,3,5,7,11,12,13,14,15}
    \implicant{12}{14}
    \implicant{3}{11}
    \implicant{1}{7}
\end{karnaugh-map}

$F' = ab + cd + a'd$


## Fungsi Boolean

$F(a,b,c,d) = \sum (0,2,4,6,8,9,10)$

### SOP

$F = a'd' + b'd' + ab'c'$

$F' = ab + cd + a'd$

### POS

$F = (a'+b')(c'+d')(a+d')$

$F' = (a+d)(b+d)(a'+b+c)$
