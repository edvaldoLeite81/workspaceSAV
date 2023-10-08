      *begin {iscobol}compiler-directives
       >>IMP OPTION "-sns=200"
      *end {iscobol}compiler-directives
      *begin {iscobol}prog-comment
      *CRECX1.cbl
      *CRECX1.cbl is generated from C:\Users\edval\OneDrive\Área de Trabalho\SAV WORKSPACE\ws-2023\savReport\screen\CRECX1.isp
      *end {iscobol}prog-comment
       identification division.
      *begin {iscobol}progid
       program-id. CRECX1.
       author. edval.
       remarks.
      *end {iscobol}progid
       environment division.
       configuration section.
       special-names.
      *begin {iscobol}activex-def
      *end {iscobol}activex-def
      *begin {iscobol}alphabet
      *end {iscobol}alphabet
      *begin {iscobol}decimal-point
      *end {iscobol}decimal-point
       repository.
      *begin {iscobol}repository
           class iscobol-html-renderer as "com.iscobol.htmlexporter.Exte
      -    "ndedHTMLRenderer"
           class io-file as "java.io.File"
           .
      *end {iscobol}repository
       input-output section.
       file-control.
      *begin {iscobol}file-control
       select printf
          assign to print ptr-dev-name
          file status is stat-printf.
      *end {iscobol}file-control
       data division.
       file section.
      *begin {iscobol}file-section
       fd printf label record omitted.
       01 printf-r.
          03 printf-01 pic x occurs 1024.
      *end {iscobol}file-section
       working-storage section.
      *begin {iscobol}is-def
       copy "isgui.def".
       copy "iscobol.def".
       copy "iscrt.def".
       copy "isfonts.def".
       copy "isresize.def".
       copy "isreport.def".
       copy "ismsg.def".
      *end {iscobol}is-def
      *begin {iscobol}copy-working
       copy "CRECX1.wrk".
      *end {iscobol}copy-working
      *begin {iscobol}external-definitions
      *end {iscobol}external-definitions
      *begin {iscobol}copy-local
      *end {iscobol}copy-local
      *begin {iscobol}copy-thread-local
      *end {iscobol}copy-local
       linkage section.
      *begin {iscobol}copy-linkage
       copy "CRECX1.lks".
      *end {iscobol}copy-linkage
       screen section.
      *begin {iscobol}copy-screen
       copy "CRECX1.scr".
      *end {iscobol}copy-screen
      *begin {iscobol}procedure-using
       procedure division using COMG01LK.
      *end {iscobol}procedure-using
      *begin {iscobol}declarative
      *end {iscobol}declarative
       main-logic.
      *begin {iscobol}entry-bef-prog
      *end {iscobol}entry-bef-prog
      *begin {iscobol}initial-routines
           perform is-initial-routine
      *end {iscobol}initial-routines
      *begin {iscobol}run-main-screen
           perform is-screen-1-routine
      *end {iscobol}run-main-screen
      *begin {iscobol}exit-routines
           perform is-exit-rtn.
      *end {iscobol}exit-routines
      *begin {iscobol}copy-procedure
       copy "ismsg.cpy".
       copy "CRECX1.prd".
       copy "CRECX1.rpt".
       copy "CRECX1.evt".
      *end {iscobol}copy-procedure
       report-composer section.
      *begin {iscobol}external-copyfiles
      *end {iscobol}external-copyfiles
      *begin {iscobol}report-1-master-print-para
       is-report-1-master-print-loop.
           perform report-1-bef-do-print
           perform until report-1-doprintrtn-loop = 0
              perform is-report-1-do-print-rtn
              perform report-1-aft-do-print
           end-perform.
      *end {iscobol}report-1-master-print-para
