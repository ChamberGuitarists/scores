%{
  ***********************************************************************
  *                                                                     *
  * Generation of Cover Page to be inserted at the top of the           *
  * Conductor's edition                                                 * 
  *                                                                     *
  * Construction de la couverture à insérer en en-tête du fichier de    *
  * partition directrice - modifier les proportion si modification de   *
  * set-global-staff-size                                               *
  *                                                                     *
  * SETUP: * Adjust the Table of Contents Layout as explained in the    *
  *          corresponding section below.                               *
  *        * Change the proportions upon changes                        *
  *          to 'set-global-staff-size                                  *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"
\include "variables.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%      Cover and TOC pages               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\paper {
  first-page-number = 0    %----------------------- Takes into account 2 cover pages
  left-margin = 12\mm
  top-margin = 12.6\mm
  bottom-margin = 8\mm
}

%% - Formatting of titles for Cover page and TOC
%% - all variables in this section are defined in /common/variables.ily
%coverComposer =  	\markup { \abs-fontsize #24 \thisComposer }
coverDedication = \markup { \abs-fontsize #14 \italic "for Janet" }
coverComposer =  	\markup { \abs-fontsize #17 "Boismortier, Loiellet, Handel, Mozart" }
coverDates =		\markup { \abs-fontsize #17 \thisDates }
coverVolutesUp = 	\markup {\epsfile #X #80 #"./common/scroll-one-top.eps"}
coverTitle = 		\markup { \abs-fontsize #30 \medium \smallCaps \thisWork }
coverTonality = 	\markup { \abs-fontsize #22 \medium \thisTonality }
coverVolume = 		\markup { \abs-fontsize #22 \medium \thisVolume }
coverSubtitle = 	\markup { \abs-fontsize #16 \medium \thisOrchester }
coverDateCollection = 	\markup { \abs-fontsize #20 \medium \thisDateOfPublication }
coverVolutesDown = 	\markup {\epsfile #X #80 #"./common/scroll-one-btm.eps"}
%coverGenre = 		\markup { \abs-fontsize #28 \combinedPublicationName }
coverGenre = 		\markup { \italic \abs-fontsize #12 "Typeset and compiled by M. Blackstock" }
coverLicense= \markup { \abs-fontsize #12 "Creative Commons Attribution 4.0 International Public License"}
%TocComposer = 	\markup { \abs-fontsize #14 \thisComposer }
TocComposer = 	\markup { \abs-fontsize #14 "Boismortier et al" }
TocTitle = 	\markup { \abs-fontsize #18 \medium \smallCaps \thisWork }
TocTonality = 	\markup { \abs-fontsize #14 \medium \thisTonality }
TocHeading = 	\markup { \abs-fontsize #22 "Table of Contents" }
TocSource = 	\markup { \abs-fontsize #11 \medium \thisSource }


%%% Table of Contents functions
#(define-markup-command (toc-line layout props label text) (symbol? markup?)
   (interpret-markup layout props(markup #:abs-fontsize 14  #:fill-line (text #:page-ref label "8" "?"))))


%%% Title Page Text Layout
%%  all variables in this section are defined above (this file)

CoverA = \markup {
  \override #'(line-width . 145)
  \column {
    \fontsize #3 \bold \override #'(box-padding . 0.0)  \override #'(thickness . 4.0)
%   \box
    \column {
      \fill-line { \lower #14 \coverDedication }
      \fill-line { \lower #8 \coverComposer }
%      \fill-line { \lower #8 \coverDates }
      \combine \null \vspace #2
      \fill-line { \lower #22 \coverVolutesUp }
      \fill-line { \lower #15 \coverTitle }
      \fill-line { \lower #10 \coverTonality }
      \fill-line { \lower #14 \coverVolume }
      \fill-line { \lower #9 \coverSubtitle}
      \fill-line { \lower #6 \draw-line #'(20 . 0) }
      \fill-line { \lower #9 \coverDateCollection }
      \combine \null \vspace #1
      \fill-line { \lower #19 \coverVolutesDown }
      \fill-line { \lower #14 \coverGenre }
      \combine \null \vspace #3.7
    }
  }
}


%%% Table of Contents Text Layout
%%  all variables in this section are defined above (this file) except where noted

PageToc = \markup {
  \override #'(line-width . 145)
    \fontsize #3
    \column {
      \fill-line {\lower #27  \TocComposer}
      \fill-line {\lower #7 \TocTitle}
      \fill-line {\lower #6 \TocTonality}
      \fill-line {\lower #22 \TocHeading}
      \fill-line {\lower #6 \override #'(thickness . 3) \draw-line #'(70 . 0)}
      \fill-line { \null }
      %---------------------- TOC lines reference variables from /common/variables.ily
      %---------------------- SETUP: (a) Copy and adjust movement-specific variables, one entry per movement
      %----------------------        (b) May need to adjust horizontal spacing values
      \fill-line {\override #'(line-width . 70) \lower #10 \toc-line #'WorkI \concat { \hspace #1.5 \thisWorkI  " - " \thisComposer_WorkI } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'WorkII \concat { \hspace #1.5 \thisWorkII " - " \thisComposer_WorkII } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'WorkII \concat { \hspace #1.5   " - " \thisTempo_WorkII_MovI } }
 \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'WorkII_II \concat { \hspace #1.5   " - " \thisTempo_WorkII_MovII } }
 \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'WorkII_III \concat { \hspace #1.5   " - " \thisTempo_WorkII_MovIII } }
 \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'WorkII_IV \concat { \hspace #1.5   " - " \thisTempo_WorkII_MovIV } }
%      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'secondScore \concat { \hspace #1.5 "Lento " - " "" } }

%      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line \thisLabelMovIII \concat { \hspace #0 \thisIdentifierMovIII " - " \thisTempoMovIII } }
      %---------------------------------------------- end TOC entry lines
      \fill-line {\lower #8 \override #'(thickness . 3) \draw-line #'(70 . 0)}
%      \fill-line {\lower #20 \concat { "Source: " \TocSource }}
%      \fill-line {\lower #25 \coverGenre}
      \combine \null \vspace #4.4
  }
}


























