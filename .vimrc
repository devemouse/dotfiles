"-----------------------------------
"
" Author: Dariusz Synowiec (devemouse)
" URL: https://github.com/devemouse/dotfiles
" Version: 0.3
" Desctiption: Vim configuration file containing initialization for .vimrc
"
"------------------------------------

scriptencoding utf-8
set nocompatible
"================= display settings (NOT colors) ===========" {{{
set notitle " disable 'Thanks for flying vim'

"shortens messages to avoid 'press a key' prompt
set shortmess=atI

"make cursor more visible
set gcr=n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff200-blinkon175,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff100-blinkon125
set ruler      " show the cursor position all the time

if has("gui_running")
   "do not source menu.vim
   set guioptions-=M
   " turn of that useless toolbar
   set guioptions-=T

   if !has("unix")
   endif

   if has("gui_win32") || has("gui_win32s")
      set guioptions-=a
      set guifont=Consolas:h12
      set enc=utf-8
   endif
   " and now alt keys are not used for menu entries ;)
   set winaltkeys=no

endif

"and finally I will know which function am I in ;)
set statusline=%<%f%h%m%r\ /%{&ff}/\ %y%=%b\ 0x%B\ \ %l,%c%V\ %P\ %{fugitive#statusline()}\ %=%([%{Tlist_Get_Tagname_By_Line()}]%)

"show status line
set laststatus=2

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:>-,trail:·,extends:#,nbsp:.,eol:¬
set list

set ttyfast " smoother changes, alt:nottyfast
set lz              " Don't re-draw while running macros

set number
if version >=703
   set cc=+1  " highlight column after 'textwidth'
   "set cc=+1,+5,+3  " highlight three columns after 'textwidth'
   hi ColorColumn ctermbg=darkgrey guibg=#393939 

   set relativenumber
endif

"}}}

"================= default behaviours modification ===========" {{{
"=== moving in files ==={{{
" Stops the cursor reaching the bottom of the screen which is a god send
" because when you're writing huge functions you end up typing on the bottom
" line else and you can't see how much space you have.
set scrolloff=3
"}}}
"=== editing ==={{{
set tabstop=3 shiftwidth=3 expandtab
" backspace and cursor keys wrap to previous/next line
set backspace=indent,eol,start whichwrap+=<,>,[,]
"}}}
"=== file handling ==={{{
set autowrite
set nobackup
set noswapfile
if version >=703
   set undodir=~/vimfiles/undofiles
   set undofile
endif
"}}}
"=== searching ==={{{
set ignorecase
set smartcase
set incsearch     " do incremental searching
set hls " highlight searches

"always use ver-magic option
nnoremap / /\v
vnoremap / /\v
set gdefault "use global replacements always
"}}}
"=== buffers ==={{{
set hid             " Can hide buffers without closing them
"}}}
"=== ex commands ==={{{
set wildmenu "Turn on WiLd menu
set wildignore=*.bak,*.o,*.e,*~,*.pyc
set history=50    " keep 50 lines of command line history
set showcmd    " display incomplete commands
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class,.pyc
"}}}
"=== folding ==={{{
set foldmethod=syntax
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo " which commands trigger auto-unfold
"}}}
"=== spelling ==={{{
set spellsuggest=best,10
"}}}
"}}}

"load plugins
filetype off
call pathogen#runtime_append_all_bundles()
"call pathogen#helptags() "this is slow...

set tags+=~/vimfiles/tags/wxWidgets
"set tags+=~/vimfiles/tags/winapi
"cscope add ~/vimfiles/tags/wxWidgets.out
set path+=c:\Darek\app\wxWidgets\include

"set shell=C:\Darek\app\git\bin\bash.exe shellcmdflag=-c shellxquote=\"

"================= mappings ===========" {{{
let mapleader = ","
"=== devemouse mappings ==={{{
"fast access to .vimrc
nmap <leader>de :e $MYVIMRC<CR>

"Shortcut to rapidly toggle 'set list'
nmap <leader>dl :set list!<CR>

nmap <leader>dcl :clist<CR>
nmap <leader>p :cprev<CR>zz:cc<CR>
nmap <leader>n :cnext<CR>zz:cc<CR>
nmap <leader>dt :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=*.s .<CR>
nmap <leader>dc :!cscope -R -b<CR>:cs add ./cscope.out<CR>
nmap <leader>dp :unmap <leader>dp<CR>:so ~/vimfiles/plugin_on_demand/project.vim<CR>:nmap <silent> <leader>dp <Plug>ToggleProject<CR><F12>

"when showing my desktop to other via i.e. NetMeeting cursorlines destroy display
nmap <leader>dr :call devefunc#ToggleCursorLines()<CR>

" Tame the quickfix window (open/close using ,dq)
nmap <silent> <leader>dq :call devefunc#QFixToggle()<CR>
"}}}
"=== movement and tabs ==={{{
"move to upper/lower window resizing it to max available space
map <M-J> <C-W>j<C-W>_
map <M-K> <C-W>k<C-W>_

"move between tabs
map <M-H> :tabprevious<CR>
map <M-L> :tabnext<CR>

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

" ctrl modified cursors to operate on tabs
map <C-up>    :tabedit %<CR>
map <C-down>  :tabclose<CR>
map <C-right> :tabnext<CR>
map <C-left>  :tabprevious<CR>

" map otherwise useless arrow keys to navigate between window splits
map <up>    :wincmd k<CR>
map <down>  :wincmd j<CR>
map <right> :wincmd l<CR>
map <left>  :wincmd h<CR>

" alt-right and alt-left to cycle buffers in a split
map <A-right> :bnext<CR>
map <A-left>  :bprevious<CR>
" compensate for terminal
map <right> :bnext<CR>
map <left>  :bprevious<CR>

" swap ` (backtick) and ' (single quote)
nnoremap ' `
nnoremap ` '
"}}}
"=== text editing ==={{{

" Don't use Ex mode, use Q for formatting
map Q gq

"to brake the undo chain (allow udoing single lines when entering many in single insert session)
inoremap <BS> <c-g>u<BS>
inoremap <CR> <c-g>u<CR>
inoremap <del> <c-g>u<del>
inoremap <c-w> <c-g>u<c-w>
inoremap <Space> <Space><C-g>u

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

""""""""""""""""""""""""""""""""
"" fixers:
"Fix trailing spaces
nmap <silent> <leader>fs :%s/\([^\ ]*\) \+$/\1/g<CR>
"Fix Tabs
nmap <silent> <leader>ft :retab<CR>
"Fix Comments
nmap <silent> <leader>fc :echo "TODO: Add comments fixer to Vim."<CR>
"Fix Fix (fix all)
nmap <silent> <leader>ff :retab<CR>:%s/\([^\ ]*\) \+$/\1/g<CR>
""""""""""""""""""""""""""""""""

" Line operations (from http://github.com/tpope/vim-unimpaired/blob/master/plugin/unimpaired.vim) {{{
" I have this plugin in my repo but for performance reasons I did not include whole plugin in my
" config.

nnoremap <silent> <Plug>unimpairedBlankUp   :<C-U>put!=repeat(nr2char(10),v:count)<Bar>']+1<CR>
nnoremap <silent> <Plug>unimpairedBlankDown :<C-U>put =repeat(nr2char(10),v:count)<Bar>'[-1<CR>

"add empty line
map <silent> <M-o> <Plug>unimpairedBlankDown
map <silent> <M-O> <Plug>unimpairedBlankUp
nmap [<Space> <Plug>unimpairedBlankUp
nmap ]<Space> <Plug>unimpairedBlankDown

nnoremap <silent> <Plug>unimpairedMoveUp   :<C-U>exe 'norm m`'<Bar>exe 'move--'.v:count1<CR>``
nnoremap <silent> <Plug>unimpairedMoveDown :<C-U>exe 'norm m`'<Bar>exe 'move+'.v:count1<CR>``
xnoremap <silent> <Plug>unimpairedMoveUp   :<C-U>exe 'norm m`'<Bar>exe '''<,''>move--'.v:count1<CR>gv
xnoremap <silent> <Plug>unimpairedMoveDown :<C-U>exe 'norm m`'<Bar>exe '''<,''>move''>+'.v:count1<CR>gv

nmap [e <Plug>unimpairedMoveUp
nmap ]e <Plug>unimpairedMoveDown
xmap [e <Plug>unimpairedMoveUp
xmap ]e <Plug>unimpairedMoveDown

" }}}
" }}}
"=== yank/paste and clipboard management ==={{{
imap <S-Insert>      <C-V>
vmap <S-Insert>      <C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>     <C-V>
" CTRL-V and SHIFT-Insert are Paste
map <C-V>      "+gP
map <S-Insert>    "+gP
imap <C-V>     <C-R>+
imap <S-Insert>      <C-R>+

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x
nnoremap Y y$

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

"}}}
"=== searching ==={{{
"center view after search next/prevoius
map n nzz
map N Nzz
map ]] ]]zz
map [[ [[zz
map * *zz
map # #zz

"remove highlighting by pressing esc and when refreshing the screen <C-l>
nnoremap <esc> :nohlsearch<cr><esc>
nnoremap <silent> <C-l> :nohl<CR><C-l>

" search in visual range
vnoremap <M-/> <Esc>/\%V

"}}}
"=== other ==={{{
noremap <leader>sp :spell spelllang=en,pl<CR>

" Visually select the text that was last edited/pasted
nnoremap <expr> gV '`[' . strpart(getregtype(), 0, 1) . '`]'

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>     :update<CR>
vnoremap <C-S>    <C-C>:update<CR>
inoremap <C-S>    <C-O>:update<CR>

" alternate buffer, ',l' is fast to type ;)
nmap <leader>l :b#<CR>

"some function keys actions remaped to leader
" SingleCompile
nnoremap <Leader>sc :SCCompile<CR>
nnoremap <Leader>scr :SCCompileRun<CR>

" CodeReviewer
nmap <leader>ic :unmap <leader>ic<cr>:so ~/vimfiles/plugin_on_demand/CodeReviewer.vim<CR><leader>ic

" FullScreen
inoremap <Leader>df <C-o>:Fullscreen<CR>
nnoremap <Leader>df :Fullscreen<CR>

" call open window
inoremap <Leader>op <C-o>:Open<CR>
nnoremap <Leader>op :Open<CR>

" Rainbows!
nmap <leader>dR :RainbowParenthesesToggle<CR>

" could be better than esc
imap ,, <Esc>
imap ;; <Esc>

"}}}
"=== Function keys ==={{{
" F1 - help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
map <C-F1> :help<CR>

" F2 - NERD Tree
nmap <F2> :NERDTreeToggle<CR>
nmap <C-F2> :NERDTreeClose<CR>

" F3
map <S-F3> !ruby ramRom.rb -c -f %<CR>

" F4 - compile
"nmap <F4> :w<CR>:!ruby %<CR>
nmap <F4> :bufdo update<CR>:make<CR><CR>
nmap <C-F4> :wa<CR>:!make qac %<CR>
nmap <C-S-F4> :wa<CR>:!make standard %<CR>

" F5 - search (Ack)
" generate the list of word under cursor
map <F5> :Ack --cc 
map <S-F5> :Ack --cc <CR>

" F6 - show quick error list
map <F6> :clist<CR>

" F7 - previous error
map <F7> :cprev<CR>zz:cc<CR>

" F8 - next error
map <F8> :cnext<CR>zz:cc<CR>

" F9 - empty

" F10 - TODO - source explorer (to fix)
nmap <silent> <F10> :call InitSrcExpl()<CR>

" F11 - Tags (list and generate)
nmap <silent> <F11> :TlistToggle<CR>
map <C-F11> :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=*.s .<CR>

" F12 - project and cscope generation
nmap <silent> <F12> :unmap <F12><CR>:so ~/vimfiles/plugin_on_demand/project.vim<CR>:nmap <silent> <F12> <Plug>ToggleProject<CR><F12>
map <C-F12> :silent! cscope kill cscope.out<CR>:!cscope -Rbc <CR>:cs add ./cscope.out<CR>
"}}}
"}}}

"================= plugins settings ===========" {{{
"=== Tlist ==={{{
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
let Tlist_Use_SingleClick = 1
let Tlist_WinWidth = 40
" show function/method prototypes in the list
let Tlist_Display_Prototype=1
"let Tlist_Process_File_Always=1     " process files in the background, even when the TagList window isn't open

"}}}
"=== NERDTree ==={{{
" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/vimfiles/NERDTreeBookmarks")
" Show hidden files, too
let NERDTreeShowFiles=1
" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
"}}}
"=== Ack ==={{{
let g:ackprg="perl c:/Darek/bin/ack -H --nocolor --nogroup --column"
"}}}
"=== QuickFilter ==={{{
let g:filteringDefaultContextLines = 0
let g:filteringDefaultAutoFollow = 1
"}}}
"=== SnipMate ==={{{
let g:snips_author = 'Dariusz Synowiec'
"}}}
"=== Project ==={{{
"proj flags, imst is default, v will cause using vimgrep instead of grep
let g:proj_flags="imstv"
"}}}
"=== SRCExplorer ==={{{
let g:SrcExpl_isUpdateTags = 0
"}}}
"=== TODO: Omnicpp ==={{{
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
"=== Shell ==={{{
" enable shell shortcuts in ex - command line
let g:shell_mappings_enabled = 0
"}}}
"=== IndentGuides ==={{{
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
"}}}
"=== SingleCompile ==={{{
"disable menu
let g:SingleCompile_menumode = 0
"}}}
"=== NERDCommenter ==={{{
let NERDMenuMode = 0
"}}}
"}}}

"================= auto commands ===========" {{{
if has("autocmd")
   " Put these in an autocmd group, so that we can delete them easily.
   augroup vimrcEx
      "clear all commands for current group
      au!

      autocmd! BufWritePost .vimrc source % " automatically interpret vimrc when saving
      autocmd BufNewFile,BufRead,BufEnter,BufWritePost .vimrc set foldmethod=marker

      autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=grey25 ctermbg=3
      autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey15 ctermbg=4

      autocmd BufEnter *.c,*.h,*.rb  set foldlevel=99
      autocmd BufEnter *.c,*.h,*.rb  set foldcolumn=7

      " For all text files set 'textwidth' to 100 characters.
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

   "au BufNewFile,BufRead * call SetLocalOptions(bufname("%"))

else

  set autoindent     " always set autoindenting on

endif " has("autocmd")
"}}}

"source all extra files in vimrc.d (i.e local ones)
for f in split(glob('~/vimfiles/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor

behave mswin

"syntax highlighting options
syn region myFold start="\#if" end="\#endif" transparent fold
syn sync fromstart
colorscheme darek

filetype plugin indent on

syntax on "LONG

" vim: set foldmethod=marker
