%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Parts : Flute                                                    *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\version "2.18.2"

\include "../common/variables.ily"
\include "../common/mutopia-header.ily"
\include "../common/definitions.ily"
\include "../common/parts-dimension.ily"
%\include "../common/part-cover.ily"
\pointAndClickOff
%--------Part-specific settings
thisInstrName = \thisInstrNameI  %----------- /common/variables.ily
Part = \thisInstrName            %------------[fixed for parts]
thisClef = \thisClefInstrI       %----------- [manual entry]

%\bookpart { \CoverA }  

%---------------First Piece
\include "../BoismortierJB/O52/Premier_Balet_de_Village/01/music.ily"
thisWork= "Balet de Village"
thisComposer= \thisComposer_WorkI
theseNotes = \flute    %--------------- /mov_/music.ily
thisTempo = \thisTempo_WorkI_MovI  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 

\pageBreak


%---------------First Piece -2nd mov't
\include "../BoismortierJB/O52/Premier_Balet_de_Village/02/music.ily"
thisWork= ""
thisComposer= ""
theseNotes = \flute   %--------------- /mov_/music.ily
thisTempo = "Gracieusement"  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 
%\pageBreak

%---------------First Piece -3rd mov't
\include "../BoismortierJB/O52/Premier_Balet_de_Village/03/music.ily"
thisWork= ""
thisComposer= ""
theseNotes = \flute    %--------------- /mov_/music.ily
thisTempo = "Vivement"  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 
\pageBreak

%---------------Handel - first Mov
\include "../HandelGF/HWV189/01/music.ily"
thisWork= "Nò, di voi non vo' fidarmi"
thisComposer= "G.F. Handel"
theseNotes = \flute    %--------------- /mov_/music.ily
thisTempo = "Allegro"  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 
\pageBreak







%---------------First Mov
\include "../LoielletJB/Op2-No12/01/music.ily"
thisWork= "Trio Sonata"
thisComposer= \thisComposer_WorkII
theseNotes = \flute      %--------------- /mov_/music.ily
thisTempo = \thisTempo_WorkII_MovI  %--------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovI %------ /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 

%---------------Second Mov
\include "../LoielletJB/Op2-No12/02/music.ily"
thisWork= ""
thisComposer= ""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  \thisTempo_WorkII_MovII %-------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovII %----- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"

%--------------Third Mov
\include "../LoielletJB/Op2-No12/03/music.ily"
thisWork= ""
thisComposer=""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo = \thisTempo_WorkII_MovIII  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIII %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily" 

%--------------Fourth Mov
\pageBreak
\include "../LoielletJB/Op2-No12/04/music.ily"
thisWork= ""
thisComposer=""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  "Allegro" %\thisTempo_Work_II_MovIV  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"

\pageBreak

%--------------- Mozart - 1st movement
\include "../MozartWA/KV525-Trio/01_allegro/music.ily" 
thisWork = "Eine Kleine Nachtmusik" %\thisWorkMovI
thisComposer="Wolfgang Amadeus Mozart"
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  "Allegro" %\thisTempo_Work_II_MovIV  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"

%--------------- Mozart - 2nd movement
\include "../MozartWA/KV525-Trio/02_andante/music.ily" 
thisWork = "" %\thisWorkMovI
thisComposer=""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  "Andante" %\thisTempo_Work_II_MovIV  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"

%--------------- Mozart - 3rd movement
\include "../MozartWA/KV525-Trio/03_allegretto/music.ily" 
thisWork = "" %\thisWorkMovI
thisComposer=""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  "Allegretto" %\thisTempo_Work_II_MovIV  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"


%--------------- Mozart - 4th movement
\include "../MozartWA/KV525-Trio/04_allegro/music.ily" 
thisWork = "" %\thisWorkMovI
thisComposer=""
theseNotes = \flute       %--------------- /mov_/music.ily
thisTempo =  "Allegro" %\thisTempo_Work_II_MovIV  %------------- /common/variables.ily
%thisIdentifier = \thisIdentifierMovIV %---- /common/variables.ily
\include "../common/parts-staff-single-instr.ily"
