"-----------------------------------
"
"         AUTOR: Dariusz Synowiec
"
"          PLIK: .vimrc
"        WERSJA: 1.0
"
"------------------------------------

"source $VIMRUNTIME/mswin.vim
source $HOME/vimfiles/vimrc.d/001_init.vim
source $HOME/vimfiles/vimrc.d/010_local.vim
source $HOME/vimfiles/vimrc.d/011_mappings.vim
"""""""""""""""""""""""""""""""""""""""" WORK OR HOME SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
if $COMPUTERNAME =~ "R"
   "we are at work 

   au GUIEnter * simalt ~x
   "execute "silent! source " . glob("~/.vimrc_work")
else
   "we are at home ;)

   if has("gui_running")
      set lines=45 columns=100
   endif
   "au GUIEnter * simalt ~s
endif


"}}}
source $HOME/vimfiles/vimrc.d/020_autocmd.vim
source $HOME/vimfiles/vimrc.d/030_plug.vim
source $HOME/vimfiles/vimrc.d/900_functions.vim



