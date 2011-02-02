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
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey25 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey15 ctermbg=4

set relativenumber
nnoremap / /\v
vnoremap / /\v
set gdefault
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


let g:ackprg="perl c:/Darek/bin/ack -H --nocolor --nogroup --column"
let g:indent_guides_guide_size = 1

let g:indent_guides_start_level = 2

"add folding for preprocessor directives
syn region myFold start="\#if" end="\#endif" transparent fold
set foldmethod=syntax
autocmd BufEnter *.c,*.h,*.rb  set foldlevel=99
autocmd BufEnter *.c,*.h,*.rb  set foldcolumn=7

