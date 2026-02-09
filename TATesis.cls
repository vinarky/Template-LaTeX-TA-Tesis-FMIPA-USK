\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TATesis}[2026/01/23 Template Tugas Akhir/Tesis FMIPA USK]

% --- CLASS DASAR ---
\LoadClass[a4paper,12pt]{report}

% --- PAKET MANDATORI ---
\RequirePackage[a4paper, top=3cm, bottom=3cm, left=3.5cm, right=3cm]{geometry}
\RequirePackage[indonesian]{babel}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{newtxtext, newtxmath} % Font Times New Roman style
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{textcase}
\RequirePackage{etoolbox}
\RequirePackage{siunitx}
\RequirePackage{subcaption}
\RequirePackage{caption}
\RequirePackage{tabularx}
\RequirePackage{array}
\RequirePackage[indentafter]{titlesec}
\RequirePackage{tocloft}
\RequirePackage{enumitem}
\RequirePackage{natbib}
\RequirePackage{datetime}
\RequirePackage{lipsum}
\RequirePackage{booktabs}

% --- KONFIGURASI PENOMORAN ---
\renewcommand{\thechapter}{\Roman{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}.}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}

% --- FORMAT JUDUL (BAB & SUBBAB) ---
\titleformat{\chapter}[display]
    {\normalfont\bfseries\centering\fontsize{14pt}{14pt}\selectfont}
    {BAB \thechapter}
    {0pt}
    {\MakeUppercase}
\titlespacing{\chapter}{0pt}{-14pt}{42pt}

\titleformat{\section}
    {\normalfont\bfseries\fontsize{12pt}{12pt}\selectfont}
    {\thesection}{1.5em}
    {\MakeUppercase}
\titlespacing{\section}{0pt}{28pt}{0pt}

\titleformat{\subsection}
    {\normalfont\bfseries\fontsize{12pt}{14pt}\selectfont}
    {\thesubsection}{0.75em}
    {}
\titlespacing{\subsection}{0pt}{0pt}{0pt}

% --- FORMAT DAFTAR ISI, GAMBAR, & TABEL ---
\addtocontents{toc}{~\hfill \textit{Halaman}\par}
\addtocontents{lof}{~\hfill \textit{Halaman}\par\vspace{-12pt}}
\addtocontents{lot}{~\hfill \textit{Halaman}\par\vspace{-12pt}}

\addto\extrasindonesian{
    \renewcommand{\contentsname}{\centerline{\fontsize{14}{14}\selectfont DAFTAR ISI}}
    \renewcommand{\listfigurename}{\centerline{\fontsize{14}{14}\selectfont DAFTAR GAMBAR}}
    \renewcommand{\listtablename}{\centerline{\fontsize{14}{14}\selectfont DAFTAR TABEL}}
    \renewcommand{\bibname}{\centerline{\fontsize{14}{14}\selectfont DAFTAR KEPUSTAKAAN}}
}

\setlength{\cftbeforetoctitleskip}{-24pt}
\setcounter{tocdepth}{3}
\renewcommand{\cftchappresnum}{BAB }
\cftsetindents{chapter}{1.5em}{3.7em}
\cftsetindents{section}{4.5em}{2em}
\cftsetindents{subsection}{6.5em}{2.5em}
\cftpagenumbersoff{chapter}
\setlength{\cftsubsubsecindent}{0em}
\setlength{\cftbeforechapskip}{16pt} 

\newcommand{\daftarIsi}{
    \clearpage
    {\singlespacing\tableofcontents}
}

\setlength{\cftbeforeloftitleskip}{-24pt}
\captionsetup[figure]{labelsep=space}
\renewcommand{\cftfigpresnum}{\hspace{-1.5em}Gambar~}
\renewcommand{\cftfignumwidth}{4.5em}
\newcommand{\daftarGambar}{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Daftar Gambar}
    {\singlespacing\listoffigures}
}

\setlength{\cftbeforelottitleskip}{-24pt}
\captionsetup[table]{labelsep=space}
\renewcommand{\cfttabpresnum}{\hspace{-1.5em}Tabel~}
\renewcommand{\cfttabnumwidth}{3.5em}
\newcommand{\daftarTabel}{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Daftar Tabel}
    {\singlespacing\listoftables}
}

% --- PENGATURAN MATEMATIKA ---
\setlength{\mathindent}{1.25cm}

% --- GAMBAR DAN TABEL---
\setlength{\intextsep}{36pt}
\setlength{\textfloatsep}{36pt}
\captionsetup[figure]{
    position=bottom,
    skip=0pt,
    belowskip=0pt,
    format=hang,
    justification=justified,
    singlelinecheck=true,
    labelsep=period
}

\captionsetup[subfigure]{
    skip=0pt,
    belowskip=0pt,
    position=bottom,
    format=hang,
    justification=justified,
    singlelinecheck=true,
    labelsep=period
}

\captionsetup[table]{
    position=top,
    skip=0pt,
    format=hang,
    justification=justified,
    singlelinecheck=true,
    labelsep=period
}

\setlength{\belowcaptionskip}{1.0cm}

\AtBeginEnvironment{equation}{
    \setlength{\abovedisplayskip}{4pt}
    \setlength{\belowdisplayskip}{4pt}
}
\AtBeginEnvironment{align}{
    \setlength{\abovedisplayskip}{4pt}
    \setlength{\belowdisplayskip}{4pt}
}

% --- TEKS, PARAGRAF & LISTING ---
\setlength{\parindent}{1.25cm}
\setstretch{1.5}

\setlist[enumerate]{labelsep=0.25cm, left=0.70cm, itemsep=0pt, topsep=0pt, parsep=0pt}
\setlist[itemize]{labelsep=0.25cm, left=0.70cm, itemsep=6pt, topsep=0pt, parsep=0pt}

% --- HEADER & FOOTER ---
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\let\ps@plain\ps@fancy

% --- DAFTAR KEPUSTAKAAN ---
\setlength{\bibsep}{0pt}
\setlength{\bibhang}{1.25cm}
\newcommand{\daftarKepustakaan}[1]{
    \addcontentsline{toc}{chapter}{\vspace*{-1.5em}}
    \clearpage
    \addcontentsline{toc}{subsubsection}{\textbf{\hspace{1.5em}DAFTAR KEPUSTAKAAN}}
    \bibliographystyle{bibFMIPAUSK}
    {\singlespacing\bibliography{#1}}
    \clearpage
}

% --- 1. Identitas Mahasiswa ---
\def\@penulis{Nama Lengkapmu}\newcommand{\penulis}[1]{\def\@penulis{#1}}
\newcommand{\nama}[1]{\def\@penulis{#1}} 
\def\@ttl{Banda Aceh, 1 Januari 2000}\newcommand{\ttl}[1]{\def\@ttl{#1}}
\def\@npm{26XXXXXXXXXXXXX}\newcommand{\npm}[1]{\def\@npm{#1}}
\def\@prodi{Matematika}\newcommand{\prodi}[1]{\def\@prodi{#1}}
\def\@departemen{Matematika}\newcommand{\departemen}[1]{\def\@departemen{#1}}

% --- 2. Informasi Dokumen ---
\def\@jenis{1}\newcommand{\jenis}[1]{\def\@jenis{#1}}
\def\@judulID{Judul Bahasa Indonesia}\newcommand{\judulID}[1]{\def\@judulID{#1}}
\def\@judulEN{Judul Bahasa Inggris}\newcommand{\judulEN}[1]{\def\@judulEN{#1}}

\newcommand{\@getStrata}{\ifnum\@jenis=1 Sarjana\else\ifnum\@jenis=3 Sarjana\else Magister\fi\fi}
\newcommand{\@getJenjang}{\ifnum\@jenis=1 S1\else\ifnum\@jenis=3 S1\else S2\fi\fi}

% --- 3. Pembimbing ---
\def\@pembimbingSatu{Dr. Fulan Satu}\def\@nipSatu{19XXXXXXXXXXXXXXXX}
\newcommand{\pembimbingSatu}[2]{\def\@pembimbingSatu{#1}\def\@nipSatu{#2}}
\def\@pembimbingDua{Dr. Fulan Dua}\def\@nipDua{19XXXXXXXXXXXXXXXX}
\newcommand{\pembimbingDua}[2]{\def\@pembimbingDua{#1}\def\@nipDua{#2}}

% --- 4. Pejabat ---
\def\@dekan{Prof. Dr. Dekan}\def\@nipDekan{19XXXXXXXXXXXXXXXX}
\newcommand{\dekan}[2]{\def\@dekan{#1}\def\@nipDekan{#2}}
\def\@koordinator{Dr. Koordinator}\def\@nipKoordinator{19XXXXXXXXXXXXXXXX}
\newcommand{\koordinator}[2]{\def\@koordinator{#1}\def\@nipKoordinator{#2}}

% --- 5. Tanggal ---
\def\@bulan{\ifcase\month\or Januari\or Februari\or Maret\or April\or Mei\or Juni\or Juli\or Agustus\or September\or Oktober\or November\or Desember\fi}
\newcommand{\bulan}[1]{\def\@bulan{#1}}
\def\@hariSidang{}\newcommand{\hariSidang}[1]{\def\@hariSidang{#1}}
\def\@hariSah{}\newcommand{\hariSah}[1]{\def\@hariSah{#1}}

% --- PENGATURAN HALAMAN JUDUL (COVER) ---
\newcommand{\halamanJudul}{
    \fancyhf{} 
    \pagenumbering{roman}
    \fancyfoot[C]{\thepage}
    \phantomsection
    \addcontentsline{toc}{subsubsection}{Halaman Judul}
    \begin{titlepage}
        \newgeometry{left=1.3cm, right=1.3cm, top=3cm, bottom=3cm}
        \singlespacing
        \begin{center}
            \vspace*{64pt}
            \fontsize{18pt}{20pt}\selectfont
            \textbf{\MakeUppercase{\@judulID}} \\
            \vspace{42pt}
            \fontsize{16pt}{16pt}\selectfont
            \textbf{\MakeUppercase{%
                \ifnum\@jenis<3 PROPOSAL PENELITIAN\else
                \ifnum\@jenis=3 TUGAS AKHIR\else TESIS\fi\fi
            }} \\
            \vspace{42pt}
            \fontsize{12pt}{14pt}\selectfont
            Diajukan untuk melengkapi tugas-tugas dan\\
            memenuhi syarat-syarat guna
            \ifnum\@jenis<3
                \ifnum\@jenis=1 \space pelaksanaan penelitian Tugas Akhir\else \space pelaksanaan penelitian Tesis\fi
            \else
                \space memperoleh gelar \@getStrata\ \@prodi
            \fi
            \\
            \vspace{42pt}
            \fontsize{14pt}{14pt}\selectfont
            Oleh:\\
            \vspace{42pt}
            \underline{\textbf{\MakeUppercase{\@penulis}}} \\
            \textbf{\@npm} \\
            
            \vfill
            \includegraphics[width=7cm]{figures/USK-BW.png} \\
            
            \vfill 
            \fontsize{14pt}{14pt}\selectfont
            \textbf{PROGRAM STUDI \MakeUppercase{\@getStrata\ \@prodi} DEPARTEMEN \MakeUppercase{\@departemen}} \\
            \fontsize{14pt}{14pt}\selectfont
            \textbf{FAKULTAS MATEMATIKA DAN ILMU PENGETAHUAN ALAM} \\
            \textbf{UNIVERSITAS SYIAH KUALA, BANDA ACEH} \\
            \textbf{\MakeUppercase{\@bulan}}
        \end{center}
        \restoregeometry
    \end{titlepage}
    \clearpage
}

\newcommand{\halamanPengesahan}{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Halaman Pengesahan}
    \thispagestyle{empty}
    \newgeometry{left=2.5cm, right=2.5cm, top=3cm, bottom=3cm}
    \setcounter{page}{2}
    {\singlespacing
    \begin{center}
        \vspace*{28pt}
        \fontsize{16pt}{16pt}\selectfont \textbf{PENGESAHAN} \\
        \vspace{42pt}
        \fontsize{16pt}{16pt}\selectfont \textbf{\MakeUppercase{\@judulID}} \\
        \ifnum\@jenis>2
        \vspace{28pt}
        \fontsize{16pt}{16pt}\selectfont \textbf{\textit{\MakeUppercase{\@judulEN}}} \\
        \fi
        \vspace{42pt}
        \fontsize{14pt}{14pt}\selectfont Oleh \\
        \vspace{28pt}
    \end{center}

    \noindent
    \hspace{2.5cm} 
    \begin{tabular}{l c l}
        Nama          & : & \@penulis \\
        NPM           & : & \@npm \\
        Program Studi & : & \@getStrata\ \@prodi
    \end{tabular}

    \vfill
    \begin{center} Menyetujui: \end{center}
    
    \noindent
    \begin{tabular}{@{}p{0.5\textwidth} p{0.5\textwidth}@{}}
        Pembimbing I, & Pembimbing II, \\
        &\\
        &\\
        &\\
        \underline{\@pembimbingSatu} & \underline{\@pembimbingDua} \\
        NIP. \@nipSatu & NIP. \@nipDua
    \end{tabular}

    \vfill
    \begin{center} Mengetahui: \end{center}
    
    \noindent
    \ifnum\@jenis<3
        \begin{center}
            \begin{tabular}{c}
                Koordinator Prodi \@getJenjang\ \@prodi, FMIPA \\
                Universitas Syiah Kuala \\
                \\
                \\
                \\
                \underline{\@koordinator} \\
                NIP. \@nipKoordinator
            \end{tabular}
        \end{center}
    \else
        \begin{tabular}{@{}p{0.5\textwidth} p{0.5\textwidth}@{}}
            Dekan Fakultas MIPA, & Koordinator Prodi \@getJenjang\ \@prodi, FMIPA \\
            &\\
            &\\
            &\\
            Universitas Syiah Kuala & Universitas Syiah Kuala \\[3\baselineskip]
            \underline{\@dekan} & \underline{\@koordinator} \\
            NIP. \@nipDekan & NIP. \@nipKoordinator
        \end{tabular}
    \fi

    \vfill
    \begin{center}
        \ifnum\@jenis>2
            \ifdefempty{\@hariSidang}{}{%
                Lulus Sidang \ifnum\@jenis=4 Magister \else Sarjana \fi pada \@hariSidang %
                \ifdefempty{\@hariSah}{}{\\}%
            }%
            \ifdefempty{\@hariSah}{}{%
                \ifnum\@jenis=4 Tesis \else Tugas Akhir \fi disahkan pada \@hariSah
            }%
        \fi
    \end{center}
    }
    \restoregeometry
    \clearpage
}

\newcommand{\bebasPlagiasi}{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Pernyataan Bebas Plagiasi}
    {%
    \chapter*{PERNYATAAN BEBAS PLAGIASI}
        
    \noindent Saya yang bertanda tangan di bawah ini, \\
    
    \vspace{-1em}
    \noindent
    \hspace{0.5cm}
    \begin{tabular}{p{3.5cm} c p{9.25cm}} % Sesuaikan 9cm dengan sisa ruang di kertas
    Nama lengkap          & : & \@penulis \\
    Tempat/tanggal lahir  & : & \@ttl \\
    NPM                   & : & \@npm \\
    Program Studi         & : & \@getStrata\ \@prodi \\
    Fakultas              & : & Matematika dan Ilmu Pengetahuan Alam \\
    Judul \ifnum\@jenis=2 Tesis\else\ifnum\@jenis=4 Tesis\else Tugas Akhir\fi\fi & : & \@judulID
\end{tabular}

    \vspace{1em}
    
    \noindent Menyatakan dengan sesungguhnya bahwa Laporan \ifnum\@jenis=2 Tesis\else\ifnum\@jenis=4 Tesis\else Tugas Akhir\fi\fi\ saya dengan judul di atas adalah \textbf{hasil karya saya sendiri} bersama dosen pembimbing dan \textbf{bebas plagiasi}. \\

    \vspace{1em}
    \noindent Jika ternyata di kemudian hari terbukti bahwa Laporan \ifnum\@jenis=2 Tesis\else\ifnum\@jenis=4 Tesis\else Tugas Akhir\fi\fi\ merupakan hasil plagiasi, saya bersedia menerima sanksi yang berlaku di Universitas Syiah Kuala. \\

    \vspace{2em}
    \begin{flushright}
        \begin{tabular}{l}
            Banda Aceh, \@bulan \\
            Yang menyatakan, \\
            \\
            \\
            \\
            \\
            \@penulis \\
            NPM. \@npm
        \end{tabular}
    \end{flushright}
    }%
    \clearpage
}

\newcommand{\abstrakID}[2]{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Abstrak}
    \chapter*{ABSTRAK}
    {\singlespacing
    \noindent #2
    
    \vspace{14pt}
    
    \noindent Kata kunci: #1
    }
    \clearpage
}

\newcommand{\abstrakEN}[2]{
    \clearpage
    \addcontentsline{toc}{subsubsection}{\textit{Abstract}}
    \chapter*{\textit{ABSTRACT}}
    {\singlespacing
    \noindent \textit{#2}
    
    \vspace{14pt}
    
    \noindent \textit{Keywords: #1}
    }
    \clearpage
}

\newcommand{\kataPengantar}[1]{
    \clearpage
    \addcontentsline{toc}{subsubsection}{Kata Pengantar}
    \chapter*{KATA PENGANTAR}
    \vspace{-14pt}
    \noindent \textit{Bismillahirrahmanirrahim}
    \vspace{12pt}
    
    Syukur Alhamdulillah dipanjatkan ke hadirat Allah SWT yang telah melimpahkan rahmat-Nya sehingga \ifnum\@jenis<3 Proposal Penelitian \else \ifnum\@jenis=4 Tesis \else Tugas Akhir \fi \fi yang berjudul "\@judulID" dapat diselesaikan. Selawat dan salam disanjungkan kepada Nabi Besar Muhammad SAW.

\vspace{12pt}
\ifnum\@jenis<3 
    Proposal Penelitian ini merupakan salah satu syarat yang harus dipenuhi untuk melakukan penelitian \ifnum\@jenis=1 Tugas Akhir \else Tesis \fi
\else 
    \ifnum\@jenis=4 Tesis \else Tugas Akhir \fi ini merupakan salah satu syarat yang harus dipenuhi untuk memperoleh gelar \@getStrata \ 
\fi di Departemen \@departemen, Fakultas Matematika dan Ilmu Pengetahuan Alam, Universitas Syiah Kuala. Penyelesaian penulisan \ifnum\@jenis<3 proposal \else \ifnum\@jenis=4 Tesis \else Tugas Akhir \fi \fi ini tidak terlepas dari bantuan dan dorongan dari berbagai pihak, baik secara moril maupun materil. Pada kesempatan ini, ucapan terima kasih diucapkan kepada:

    #1

    \vspace{16pt}
    {\singlespacing
    \hspace{8cm} Banda Aceh, \@bulan

    \vspace{2cm}

    \hspace{8cm} \fontsize{12pt}{12pt}\selectfont\underline{\@penulis}
        
    \fontsize{12pt}{14pt}\selectfont\hspace{8cm} NPM. \@npm
    }
    \clearpage
}

% --- Penanganan Daftar Lampiran ---
\newcommand{\daftarLampiran}{%
    \clearpage
    \chapter*{DAFTAR LAMPIRAN}
    \addcontentsline{toc}{subsubsection}{Daftar Lampiran}
    {\singlespacing \@starttoc{lomp}} 
}

% --- Counter untuk penomoran lampiran ---
\newcounter{nolampiran}
\renewcommand{\thenolampiran}{\arabic{nolampiran}}

% --- Definisi Environment Lampiran ---
\newenvironment{lampiran}[1]{%
    \refstepcounter{nolampiran}
    \clearpage
    \ifnum\value{nolampiran}=1
        \chapter*{LAMPIRAN}
    \fi
    \par\noindent
    {\bfseries Lampiran \thenolampiran. #1}
    \par\vspace{12pt}
    \addcontentsline{lomp}{subsubsection}{Lampiran \thenolampiran. #1}
}{%
    \noindent\par
}

\endinput
