"-----------------------------------
"
"         AUTOR: Dariusz Synowiec
"
"          PLIK: .vimrc
"        WERSJA: 1.0
"
"------------------------------------

for f in split(glob('~/vimfiles/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

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


let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey25   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey15 ctermbg=4

