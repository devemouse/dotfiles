
if exists("current_compiler")
  finish
endif
let current_compiler = "bric"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=cc.bat

CompilerSet errorformat=%f(%l)\ :\ C%n\ (%t)\ %m

   set path=.,,,
   set path+=alg-8f,
   set path+=app\RSCI,
   set path+=app\acn,
   set path+=app\adc,
   set path+=app\algint,
   set path+=app\awl,
   set path+=app\bin,
   set path+=app\buckle,
   set path+=app\can,
   set path+=app\cim,
   set path+=app\cl,
   set path+=app\crc,
   set path+=app\diagsrv,
   set path+=app\discdiag,
   set path+=app\dtc,
   set path+=app\edr_1_2,
   set path+=app\edr_1_8,
   set path+=app\flog,
   set path+=app\hwdtc,
   set path+=app\kwp,
   set path+=app\lib,
   set path+=app\llse,
   set path+=app\lock,
   set path+=app\net,
   set path+=app\nvm,
   set path+=app\ods,
   set path+=app\osek,
   set path+=app\padl,
   set path+=app\pads,
   set path+=app\perl,
   set path+=app\pmon,
   set path+=app\prox,
   set path+=app\ptm,
   set path+=app\s19Tools,
   set path+=app\sbr,
   set path+=app\sinit,
   set path+=app\sq,
   set path+=app\stps,
   set path+=app\sys,
   set path+=app\timer,
   set path+=app\tp,
   set path+=app\trw_libc,
   set path+=app\uart,
   set path+=app\uds,
   set path+=app\util,
   set path+=app\vin,
   set path+=app\wdog,
   set path+=core\RSCI,
   set path+=core\crc,
   set path+=core\dsi,
   set path+=core\flog,
   set path+=core\nvm,
   set path+=core\sinit,
   set path+=core\sq,
   set path+=core\wdog,

   "let g:CodeReviewer_reviewFile="reviews/" . strftime("%Y-%m-%d") . "_review_notes.rev"   " Set review file name
