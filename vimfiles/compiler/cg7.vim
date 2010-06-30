
if exists("current_compiler")
  finish
endif
let current_compiler = "cg7"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=make.bat

CompilerSet errorformat=
         \\|\|\ %m,
         \%E%*[\"]%f%*[\"]\\,\ line\ %l:\ fatal\ error\ #%n%.%#,%Z\ \ %p^,%C%m,
         \%E%*[\"]%f%*[\"]\\,\ line\ %l:\ error\ #%n%.%#,%Z\ \ %p^,%C%m,
         \%W%*[\"]%f%*[\"]\\,\ line\ %l:\ warning\ #%n-D%.%#,%Z\ \ %p^,%C%m,
         \%I%*[\"]%f%*[\"]\\,\ line\ %l:\ remark\ #%n-D%.%#,%Z\ \ %p^,%C%m
   "uncomment this to get compiler remarks

   set mef=err.log

   set path=.,,,
   set path+=mcal\03_Source\01_inc,
   set path+=rtos\03_Source\01_inc,
   set path+=system\03_Source\01_inc,
   set path+=CanIf\03_Source\01_inc,
   set path+=CanSM\03_Source\01_inc,
   set path+=CanTP\03_Source\01_inc,
   set path+=Com\03_Source\01_inc,
   set path+=Dcm\03_Source\01_inc,
   set path+=Dem\03_Source\01_inc,
   set path+=Det\03_Source\01_inc,
   set path+=FSM_Drv\03_Source\01_inc,
   set path+=Pdur\03_Source\01_inc,
   set path+=Squibs\03_Source\01_inc,
   set path+=NVM\03_Source\01_inc,
   set path+=CIM\03_Source\01_inc,
   set path+=PUH\03_Source\01_inc,
   set path+=CRC\03_Source\01_inc,
   set path+=Sensors\03_Source\01_inc,
   set path+=PSI5\03_Source\01_inc,
   set path+=PWM\03_Source\01_inc,
   set path+=PADL\03_Source\01_inc,
   set path+=RSCI\03_Source\01_inc,
   set path+=DTC\03_Source\01_inc,
   set path+=FLOG\03_Source\01_inc,
   set path+=ADH\03_Source\01_inc,
   set path+=WDOG\03_Source\01_inc,
   set path+=TRW_FEE\03_Source\01_inc,
   set path+=02_SDE\ComsPCDebug\ComsPCDebug\src,

   let g:CodeReviewer_reviewFile="reviews/" . strftime("%Y-%m-%d") . "_review_notes.rev"   " Set review file name
