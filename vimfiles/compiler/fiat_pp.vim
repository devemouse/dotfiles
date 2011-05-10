
if exists("current_compiler")
  finish
endif
let current_compiler = "fiat_pp"

let s:cpo_save = &cpo
set cpo-=C

"if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  "command -nargs=* CompilerSet setlocal <args>
"endif

function! AsyncBuild(target)
    let command = "cc.bat ". a:target
    let vim_func = "OnCompleteLoadErrorFile"

    if len(v:servername) == 0
        echo "Error: AsyncCommand requires vim to be started with a servername."
        echo "       See :help --servername"
        return
    endif

    " String together and execute.
    let temp_file = 'build.log'

    " Grab output and error in case there's something we should see
    let tool_cmd = command

    let vim_cmd = "vim --servername ".v:servername." --remote-expr \"" . vim_func . "('" . temp_file . "')\" "

    silent exec "!start cmd /c \"".tool_cmd." & ".vim_cmd."\""
endfunction

if has("gui_running")
   let $PATH="c:\\Darek\\app\\vim\\vim73;c:\\Darek\\app\\git\\bin;" .$PATH
   CompilerSet makeprg=cc
   nmap <F4> :bufdo update<CR>:call AsyncBuild('RELEASE')<CR>
else
   let $PATH = "./sw_tools;" . $PATH
   set shellpipe=2>&1\|tee\ build.log
   set makeef=err.log
   nmap <F4> :wa<CR>:!start make RELEASE<CR><CR>:clist<CR>
endif


CompilerSet errorformat=
         \%E\"%f\"\\,\ line\ %l:\ fatal\ error\ #%n%.%#,%Z\ \ %p^,%C%m,
         \%E\"%f\"\\,\ line\ %l:\ error\ #%n:%m%.%#,%Z\ \ %p^,%C%m,
         \%W\"%f\"\\,\ line\ %l:\ warning\ #%n-D:%m%.%#,%Z\ \ %p^,%C%m,
         \%I\"%f\"\\,\ line\ %l:\ remark\ #%n-D:%m%.%#,%Z\ \ %p^,%C%m
         "\\|\|\ %m,
   "uncomment this to get compiler remarks
   "uncomment this to get compiler warnings

   "TODO:
"[elxr] (error) unresolved symbols: 2
" MemCmp         from Com.o
" ICC_FENFETControl      from sqenftest.o

   set path=.,,,
   set path+=alg-8f,
   set path+=adc,
   set path+=adh,
   set path+=llse_usr,
   set path+=mcal,
   set path+=mcal_cfg,
   set path+=rtos,
   set path+=rtos_cfg,
   set path+=rtos_Usr,
   set path+=system,
   set path+=system_status,
   set path+=wdog,
   set path+=wdog_usr,
   set path+=app/RSCI,
   set path+=app/algint,
   set path+=app/awl,
   set path+=app/bin,
   set path+=app/buckle,
   set path+=app/can,
   set path+=app/cim,
   set path+=app/cl,
   set path+=app/crc,
   set path+=app/diagsrv,
   set path+=app/discdiag,
   set path+=app/dtc,
   set path+=app/edr_1_8,
   set path+=app/flog,
   set path+=app/hwdtc,
   set path+=app/llse,
   set path+=app/lock,
   set path+=app/nvm,
   set path+=app/osek,
   set path+=app/pads,
   set path+=app/perl,
   set path+=app/pmon,
   set path+=app/proxi,
   set path+=app/ptm,
   set path+=app/s19Tools,
   set path+=app/sinit,
   set path+=app/sq,
   set path+=app/sys,
   set path+=app/timer,
   set path+=app/tp,
   set path+=app/trw_libc,
   set path+=app/uds,
   set path+=app/util,
   set path+=app/vin,
   set path+=app/wdog,
   set path+=core/RSCI,
   set path+=core/arch,
   set path+=core/arch/ppc/can,
   set path+=core/arch/ppc/crc,
   set path+=core/arch/ppc/ecsm,
   set path+=core/arch/ppc/flash,
   set path+=core/arch/ppc/linflex,
   set path+=core/arch/ppc/ppc5604p.h,
   set path+=core/arch/ppc/spi,
   set path+=core/arch/ppc/startup,
   set path+=core/arch/ppc/uart,
   set path+=core/can,
   set path+=core/crc,
   set path+=core/diagsrv/iso14229,
   set path+=core/diagsrv/rdbi,
   set path+=core/diagsrv/rdbi/didtab,
   set path+=core/diagsrv,
   set path+=core/dsi,
   set path+=core/flog,
   set path+=core/isotp,
   set path+=core/lib,
   set path+=core/net,
   set path+=core/nvm,
   set path+=core/sinit,
   set path+=core/sq,
   set path+=core/timer,
   set path+=core/trw_libc,
   set path+=core/wdog,


   let g:CodeReviewer_reviewFile="reviews/" . strftime("%Y-%m-%d") . "_review_notes.rev"   " Set review file name
let &cpo = s:cpo_save
unlet s:cpo_save

