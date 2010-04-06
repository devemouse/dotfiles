"------------------------------------
"
"         AUTOR: Dariusz Synowiec
"
"          PLIK: .vimrc
"        WERSJA: 1.0
"
"------------------------------------

"source $VIMRUNTIME/mswin.vim

"""""""""""""""""""""""""""""""""""""""" SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
" and now alt kays are not used for menu entries ;)
set winaltkeys=no

" LATEX SUITE
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set guifont=Anonymous:h10

set nocompatible
behave mswin

"show status line
set laststatus=2

"and finally I will know which function am I in ;)
set statusline=%<%f%h%m%r\ /%{&ff}/\ %y%=%b\ 0x%B\ \ %l,%c%V\ %P%=%([%{Tlist_Get_Tagname_By_Line()}]%)

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:?\ ,eol:�

set foldmethod=marker
let mapleader = ","
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
let Tlist_Use_SingleClick = 1
let Tlist_WinWidth = 40
set tabstop=3 shiftwidth=3 expandtab
set cursorline
set cursorcolumn
set ignorecase
set smartcase
set number
set autowrite
set spell spelllang=en,pl
set spellsuggest=best,10
set backupdir=~\\.backup

set hid             " Can hide buffers without closing them
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hls

set tags+=~\vimfiles\tags\winapi

syntax on

if !has("unix")
  set guioptions-=a
endif
 
set diffexpr=MyDiff()


" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]

" turn of that useless toolbar
set guioptions-=T

" Stops the cursor reaching the bottom of the screen which is a god send
" because when you're writing huge functions you end up typing on the bottom
" line else and you can't see how much space you have.
set scrolloff=3

"syntax highlighting options
syn sync fromstart
colorscheme desert

"}}}
"""""""""""""""""""""""""""""""""""""""" MAPPINGS: """"""""""""""""""""""""""""""""""""""""{{{

"let g:vikiHomePage = "C:/Darek/wiki/index.vik"
"let g:vikiLowerCharacters = "a-zaceln�szz"
"let g:vikiUpperCharacters = "A-ZACELN�SZZ"
"let g:vikiUseParentSuffix = 1
"let g:vikiNameSuffix=".vik"
"autocmd BufRead,BufAdd,BufNewFile C:/Darek/wiki/* VikiMinorMode


"map <F2> :tabnew<CR>:so ~/gtd.vim<CR>
"map <F3> :g/ PW:\\| W:\\| WP:\\| P:/#<CR>
"map <F4> :g/ O:/#<CR>
"map <F7> :g/ WAITING FOR:/p<CR>
"map <F9> :VikiMinorMode<CR>

" Function keys
" F1
map <F1> <C-w>}
map <C-F1> :help<CR>

" F1
" F2
" F3
" F4
"nmap <F4> :w<CR>:!ruby %<CR>
nmap <F4> :w<CR>:make debug<CR><CR>:clist<CR>
" F5
" generate the list of word under cursor
map <F5> :vimgrep // **/*.c **/*.h<CR>

" F6
map <F6> :clist<CR>

" F7
map <F7> :cprev<CR>zz:cc<CR>

" F8
map <F8> :cnext<CR>zz:cc<CR>

" F9

" F10
:nnoremap <silent> <F10> :YRShow<CR>

" F11
nmap <silent> <F11> :TlistToggle<CR>
nmap <silent> <C-F11> :call InitSrcExpl()<CR>

" F12
nmap <silent> <F12> :unmap <F12><CR>:so ~\vimfiles\plugin_on_demand\project.vim<CR>:nmap <silent> <F12> <Plug>ToggleProject<CR><F12>
" refresh ctags
map <C-F12> :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" ponoc lepsze niz esc
imap jj <Esc>

" other
nmap <leader>ic :unmap <leader>ic<cr>:so ~\vimfiles\plugin_on_demand\CodeReviewer.vim<CR><leader>ic

nmap <leader>e :e $MYVIMRC<CR>

nmap <leader>l :b#<CR>

nmap <leader>o :FuzzyFinderTextMate<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>q :set list!<CR>

" remap j and k to scroll by visual lines
"nnoremap j gj
"nnoremap k gk

map <M-J> <C-W>j<C-W>_
map <M-K> <C-W>k<C-W>_
map <M-H> :tabprevious<CR>
map <M-L> :tabnext<CR>

"duplicate line (like in eclipse)
map <C-j> yyp
map <C-k> yyP

"move line
map <C-J> ddp
map <C-K> ddkP

"center view after search next/prevoius
map n nzz
map N Nzz
map ]] ]]zz
map [[ [[zz
map * *zz
map # #zz

nnoremap Y y$

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
 
" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>		"+gP
map <S-Insert>		"+gP
cmap <C-V>		<C-R>+
cmap <S-Insert>		<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" CTRL-F4 is Close window
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

imap <S-Insert>		<C-V>
vmap <S-Insert>		<C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>		<C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
 
"to brake the undo chain (allow udoing single lines when entering many in single insert session)
inoremap <BS> <c-g>u<BS>
inoremap <CR> <c-g>u<CR>
inoremap <del> <c-g>u<del>
inoremap <c-w> <c-g>u<c-w>
inoremap <Space> <Space><C-g>u

"add empty line
map <silent> <M-o> o<Esc>k
map <silent> <M-O> O<Esc>j


"remove highlighting by pressing esc and when refreshing the screen <C-l>
nnoremap <esc> :nohlsearch<cr><esc>
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <s-tab> <c-n>

"}}}
"""""""""""""""""""""""""""""""""""""""" WORK OR HOME SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
if $COMPUTERNAME =~ "R01772"
   "we are at work 
   autocmd BufRead,BufAdd,BufNewFile C:/Projects/AECU/CoreDev/E2061006_02/07_SW/uC_1/* compiler cg7

   au GUIEnter * simalt ~x
else
   "we are at home ;)

   au GUIEnter * simalt ~s
endif


"}}}
"""""""""""""""""""""""""""""""""""""""" AUTO COMMANDS: """"""""""""""""""""""""""""""""""""""""{{{ 

"highlight AlmostOverLength ctermbg=red ctermfg=white guibg=grey30
"match AlmostOverLength /\%81v.\+%100v/

"highlight OverLength ctermbg=red ctermfg=white guibg=grey50
"match OverLength /\%101v.\+/

if has("autocmd")

   autocmd! BufWritePost .vimrc source % " automatically interpret vimrc when saving

   filetype plugin indent on

   " Put these in an autocmd group, so that we can delete them easily.
   augroup vimrcEx
      au!

      " For all text files set 'textwidth' to 78 characters.
      autocmd FileType text setlocal textwidth=100


      " When editing a file, always jump to the last known cursor position.
      " Don't do it when the position is invalid or when inside an event handler
      " (happens when dropping a file on gvim).
      " Also don't do it when the mark is in the first line, that is the default
      " position when opening a file.
      autocmd BufReadPost *
               \ if line("'\"") > 1 && line("'\"") <= line("$") |
               \   exe "normal! g`\"" |
               \ endif

		
   augroup END

   set verbosefile=~/vimfiles/startup_log.txt
   augroup StartupLog
      autocmd!
      autocmd SourcePre * silent echom expand('<afile>')
      autocmd VimEnter * set verbosefile& | autocmd! StartupLog
   augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

"}}}
"""""""""""""""""""""""""""""""""""""""" PLUGIN SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{

" CALLENDAR OPTIONS
let g:calendar_monday = 1

" YankRing
let g:yankring_min_element_length = 2

let g:SrcExpl_isUpdateTags = 0
"proj flags, imst is default, v will cause using vimgrep instead of grep
let g:proj_flags="imstv"
let g:VCSCommandMapPrefix="<Leader>v"

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"set completeopt=menuone,menu,longest,preview

"}}}
"""""""""""""""""""""""""""""""""""""""" FUNCTIONS: """"""""""""""""""""""""""""""""""""""""{{{
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.

" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

fun! InitSrcExpl()   
   unmap <F10>
   so ~\vimfiles\plugin_on_demand\srcexpl.vim
   nmap <silent> <F10> :SrcExplToggle<CR>
   SrcExplToggle
endfunction

"}}}
"""""""""""""""""""""""""""""""""""""""" TRASH: """"""""""""""""""""""""""""""""""""""""{{{

":nmap <F5> :redir! >~/../wiki/TODO.yaml<CR>:g//<CR>:redir END<CR>:new ~/../wiki/TODO.yaml<CR><CR>:q<CR>:!ruby c:\Darek\Config\bath\formatTasks.rb<CR><CR>
":nmap <F5> :redir! >~/../wiki/TODO.yaml<CR>:g/ PW:\\| W:\\| WP:\\| P:\\| O:/p<CR>:redir END<CR>:new ~/../wiki/TODO.yaml<CR><CR>:q<CR>:!ruby c:\Darek\Config\bath\formatTasks.rb<CR><CR>
":nmap <F5> :redir! >~/../wiki/TODO.yaml<CR>:g/ PW:\\| W:\\| WP:\\| P:\\| O:/p<CR>:redir END<CR>:!ruby c:\Darek\Config\bath\formatTasks.rb<CR><CR>
" without numbers
":nmap <F5> :let @b=&number<CR>:set nonumber<CR>:redir! >~/../wiki/TODO.yaml<CR>:g/ PW:\\| W:\\| WP:\\| P:\\| O:/p<CR>:redir END<CR>:let &number=@b<CR>:!ruby c:\Darek\Config\bath\formatTasks.rb<CR><CR>
":nmap <F5> :let @b=&number<CR>:set nonumber<CR>:redir!  >~/../wiki/TODO.yaml<CR>:g/ PW:\\| W:\\| WP:\\| P:\\| O:/p<CR>:redir END<CR>:let &number=@b<CR>:silent !ruby c:\Darek\Config\bath\formatTasks.rb<CR><CR>


"script that adds do not modify on selected section
"I/*  DO NOT MODIFY    DO NOT MODIFY     DO NOT MODIFY   j
"A /*DO NOT MODIFYj


"hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

"}}}

