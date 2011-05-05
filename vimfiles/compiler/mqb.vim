
"if exists("current_compiler")
  "finish
"endif
"let current_compiler2 = "mqb"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

"CompilerSet makeprg=02_SDE\03_Batch\gmake_PR12061_MQB_1.bat
CompilerSet makeprg=02_SDE\04_Utils\01_Build\gmake.exe\ GMAKE_PRJ=PR12061_MQB_1\ MKFILE_PATH=\"01_Binaries\01_hex\"\ -f\ 01_Binaries\01_hex\makefile

set shellpipe=2>&1\|02_SDE\\04_Utils\\01_Build\\tee.exe


CompilerSet errorformat=
         \\|\|\ %m,
         \%E%*[\"]%f%*[\"]\\,\ line\ %l:\ fatal\ error\ #%n%.%#,%Z\ \ %p^,%C%m,
         \%E%*[\"]%f%*[\"]\\,\ line\ %l:\ error\ #%n:%m%.%#,%Z\ \ %p^,%C%m,
         \%W%*[\"]%f%*[\"]\\,\ line\ %l:\ warning\ #%n-D:%m%.%#,%Z\ \ %p^,%C%m,
         \%I%*[\"]%f%*[\"]\\,\ line\ %l:\ remark\ #%n-D:%m%.%#,%Z\ \ %p^,%C%m
   "uncomment this to get compiler remarks
   "TODO:
"[elxr] (error) unresolved symbols: 2
" MemCmp         from Com.o
" ICC_FENFETControl      from sqenftest.o

   set mef=err.log

   set path=.,,,
   set path+=ADC\03_Source\01_inc,
   set path+=ADH\03_Source\01_inc,
   set path+=AIM\03_Source\01_inc,
   set path+=ALG\03_Source\01_inc,
   set path+=Buckle\03_Source\01_inc,
   set path+=CanIf\03_Source\01_inc,
   set path+=CanSM\03_Source\01_inc,
   set path+=CanTP\03_Source\01_inc,
   set path+=CIM\03_Source\01_inc,
   set path+=COM\03_Source\01_inc,
   set path+=CRC\03_Source\01_inc,
   set path+=DCM\03_Source\01_inc,
   set path+=DDM\03_Source\01_inc,
   set path+=DEM\03_Source\01_inc,
   set path+=DET\03_Source\01_inc,
   set path+=DSI\03_Source\01_inc,
   set path+=DTC\03_Source\01_inc,
   set path+=FLOG\03_Source\01_inc,
   set path+=FSM_Drv\03_Source\01_inc,
   set path+=ICC\03_Source\01_inc,
   set path+=ICCP\03_Source\01_inc,
   set path+=LAMPS\03_Source\01_inc,
   set path+=LIB_Startup\03_Source\01_inc,
   set path+=LLSE\03_Source\01_inc,
   set path+=mcal\03_Source\01_inc,
   set path+=MCAL_DSI\03_Source\01_inc,
   set path+=MCAL_PSI5\03_Source\01_inc,
   set path+=NVM\03_Source\01_inc,
   set path+=PADL\03_Source\01_inc,
   set path+=PADS\03_Source\01_inc,
   set path+=PDUR\03_Source\01_inc,
   set path+=PMON\03_Source\01_inc,
   set path+=PSH\03_Source\01_inc,
   set path+=PSI5\03_Source\01_inc,
   set path+=PUH\03_Source\01_inc,
   set path+=reviews\03_Source\01_inc,
   set path+=RSCI\03_Source\01_inc,
   set path+=rtos\03_Source\01_inc,
   set path+=SENSORS\03_Source\01_inc,
   set path+=SQDA\03_Source\01_inc,
   set path+=Squibs\03_Source\01_inc,
   set path+=Switch\03_Source\01_inc,
   set path+=system\03_Source\01_inc,
   set path+=SYSTEM_DSI\03_Source\01_inc,
   set path+=SYSTEM_PSI5\03_Source\01_inc,
   set path+=SystemStatus\03_Source\01_inc,
   set path+=TRW_FEE\03_Source\01_inc,
   set path+=WDOG\03_Source\01_inc,

   let g:CodeReviewer_reviewFile="reviews/" . strftime("%Y-%m-%d") . "_review_notes.rev"   " Set review file name

nmap <F4> :wa<CR>:make DEBUG<CR><CR>:clist<CR>
