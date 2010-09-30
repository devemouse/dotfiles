"-----------------------------------
"
"         AUTOR: Dariusz Synowiec
"
"          PLIK: .vimrc
"        WERSJA: 1.0
"
"------------------------------------

"source $VIMRUNTIME/mswin.vim

"""""""""""""""""""""""""""""""""""""""" SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
set nocompatible
behave mswin

scriptencoding utf-8
set encoding=utf-8

"set encoding=utf8
" and now alt keys are not used for menu entries ;)
set winaltkeys=no

set gcr=n-v-c:block-Cursor/lCursor-blinkwait700-blinkoff200-blinkon175,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff100-blinkon125

" LATEX SUITE
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

if $HOSTTYPE =~ "linux"
set guifont=Anonymous:h10
endif

set wildmenu "Turn on WiLd menu





set notitle " disable 'Thanks for flying vim'

map <F3> :call Filetest()<CR>

function! Filetest(...)
   ruby << EOR
   VIM::message(VIM::Buffer.current.name)
   #VIM::message("Hello world")
EOR
endfunction

"show status line
set laststatus=2

function! GetRAMROMusage(...)
   return ""
endfunction

function! GetRAMROMusage2(...)
   "!ruby ramRom.rb -c -f %
   ruby << EOF
   #fn = File.basename(file).gsub(Regexp.new(File.extname(file)), "")
   #regex = fn + "\.o"
   #path = File.dirname(file).split(File::SEPARATOR)[0]

   #$config[0] = Array.new(1, {:name => fn, :regex => regex, :path => path})
   #$config = [
   #[
   #{:name => "Com"       , :regex => "Com\.o"      , :path => "Com"},
   #],
   #{
   #"data"    => :ram,
   #"bss"     => :ram,
   #"rodata"  => :rom,
   #"vletext" => :rom,
   #}
   #]
   #VIM::Buffer @buffer = VIM::Buffer.current
   #cb = VIM::Buffer.current
   VIM::message(VIM::Buffer.current.name)
EOF
endfunction

"and finally I will know which function am I in ;)
set statusline=%<%f%h%m%r\ /%{&ff}/\ %y%=%b\ 0x%B\ \ %l,%c%V\ %P%=%([%{GetRAMROMusage()}]%)%([%{Tlist_Get_Tagname_By_Line()}]%)


" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:>-,trail:·,extends:#,nbsp:.,eol:¬
set list


set foldmethod=marker
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo " which commands trigger auto-unfold
let mapleader = ","
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Show_One_File = 1
let Tlist_Use_SingleClick = 1
let Tlist_WinWidth = 40
" show function/method prototypes in the list
let Tlist_Display_Prototype=1
"let Tlist_Process_File_Always=1     " process files in the background, even when the TagList window isn't open

" Store the bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/vimfiles/NERDTreeBookmarks")
" Show hidden files, too
let NERDTreeShowFiles=1

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2


set tabstop=3 shiftwidth=3 expandtab
set cursorline
set cursorcolumn
set ignorecase
set smartcase
set number
set autowrite
set spell spelllang=en,pl
set spellsuggest=best,10

set nobackup
set noswapfile

set ttyfast " smoother changes, alt:nottyfast

set hid             " Can hide buffers without closing them
set lz              " Don't re-draw while running macros

set history=50    " keep 50 lines of command line history
set ruler      " show the cursor position all the time
set showcmd    " display incomplete commands
set incsearch     " do incremental searching
set hls

set wildignore=*.bak,*.o,*.e,*~,*.pyc
" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class,.pyc


set tags+=~/vimfiles/tags/wxWidgets
"set tags+=~/vimfiles/tags/winapi
"cscope add ~/vimfiles/tags/wxWidgets.out
set path+=c:\Darek\app\wxWidgets\include

"set shell=C:\Darek\app\git\bin\bash.exe shellcmdflag=-c shellxquote=\"

syntax on

if !has("unix")
  set guioptions-=a
endif

"set diffexpr=MyDiff()


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
colorscheme darek

set textwidth=100

if version >=703
   set cc=+1  " highlight column after 'textwidth'
   "set cc=+1,+5,+3  " highlight three columns after 'textwidth'
   hi ColorColumn ctermbg=darkgrey guibg=#393939
endif



"}}}
"""""""""""""""""""""""""""""""""""""""" MAPPINGS: """"""""""""""""""""""""""""""""""""""""{{{

"let g:vikiHomePage = "C:/Darek/wiki/index.vik"
"let g:vikiLowerCharacters = "a-zacelnószz"
"let g:vikiUpperCharacters = "A-ZACELNÓSZZ"
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
nmap <F2> :NERDTreeToggle<CR>
nmap <C-F2> :NERDTreeClose<CR>

" F3
map <S-F3> !ruby ramRom.rb -c -f %<CR>
" F4
"nmap <F4> :w<CR>:!ruby %<CR>
nmap <F4> :wa<CR>:make<CR><CR>:clist<CR>
nmap <C-F4> :wa<CR>:!make qac %<CR>
nmap <C-S-F4> :wa<CR>:!make standard %<CR>
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
nnoremap <silent> <F10> :YRShow<CR>
nmap <silent> <C-F10> :call InitSrcExpl()<CR>

" F11
nmap <silent> <F11> :TlistToggle<CR>
map <C-F11> :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=*.s .<CR>

" F12
nmap <silent> <F12> :unmap <F12><CR>:so ~/vimfiles/plugin_on_demand/project.vim<CR>:nmap <silent> <F12> <Plug>ToggleProject<CR><F12>
map <C-F12> :silent! cscope kill cscope.out<CR>:!cscope -Rb <CR>:cs add ./cscope.out<CR>
" refresh ctags

" ponoc lepsze niz esc
imap jj <Esc>

" other
nmap <leader>ic :unmap <leader>ic<cr>:so ~/vimfiles/plugin_on_demand/CodeReviewer.vim<CR><leader>ic


nmap <leader>l :b#<CR>


"nmap <leader>o :FuzzyFinderTextMate<CR>
nmap <leader>o :FufFile<CR>

" Shortcut to rapidly toggle 'set list'
nmap <leader>q :set list!<CR>

" darek mappings:
nmap <leader>de :e $MYVIMRC<CR>
nmap <leader>dp :unmap <leader>dp<CR>:so ~/vimfiles/plugin_on_demand/project.vim<CR>:nmap <silent> <leader>dp <Plug>ToggleProject<CR><F12>
nmap <leader>dl :clist<CR>
nmap <leader>p :cprev<CR>zz:cc<CR>
nmap <leader>n :cnext<CR>zz:cc<CR>
map <leader>dt :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=*.s .<CR>
map <leader>dc :!cscope -R -b<CR>:cs add ./cscope.out<CR>
nmap <leader>dr :call HideCursorLines()<CR>
nmap <silent> <leader>gi :call InitGist()<CR>

" Tame the quickfix window (open/close using ,f)
nmap <silent> <leader>dq :QFix<CR>

let g:shell_mappings_enabled = 0
inoremap <Leader>df <C-o>:Fullscreen<CR>
nnoremap <Leader>df :Fullscreen<CR>
inoremap <Leader>op <C-o>:Open<CR>
nnoremap <Leader>op :Open<CR>

""""""""""""""""""""""""""""""""
"fixers:
"Fix trailing spaces
nmap <silent> <leader>fs :%s/\([^\ ]*\) \+$/\1/g<CR>

"Fix Tabs
nmap <silent> <leader>ft :retab<CR>

"Fix Comments
nmap <silent> <leader>fc :echo "TODO: Add comments fixer to Vim."<CR>

"Fix Fix (fix all)
nmap <silent> <leader>ff :retab<CR>:%s/\([^\ ]*\) \+$/\1/g<CR>
""""""""""""""""""""""""""""""""

command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

vnoremap <M-/> <Esc>/\%V

" remap j and k to scroll by visual lines
"nnoremap j gj
"nnoremap k gk

map <M-J> <C-W>j<C-W>_
map <M-K> <C-W>k<C-W>_
map <M-H> :tabprevious<CR>
map <M-L> :tabnext<CR>

"duplicate line (like in eclipse
")
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

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

nnoremap Y y$

" CTRL-X and SHIFT-Del are Cut
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C and CTRL-Insert are Copy
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V and SHIFT-Insert are Paste
map <C-V>      "+gP
map <S-Insert>    "+gP
cmap <C-V>     <C-R>+
cmap <S-Insert>      <C-R>+

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
" noremap <C-F4> <C-W>c
" inoremap <C-F4> <C-O><C-W>c
" cnoremap <C-F4> <C-C><C-W>c
" onoremap <C-F4> <C-C><C-W>c

imap <S-Insert>      <C-V>
vmap <S-Insert>      <C-V>

" Use CTRL-Q to do what CTRL-V used to do
noremap <C-Q>     <C-V>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S>     :update<CR>
vnoremap <C-S>    <C-C>:update<CR>
inoremap <C-S>    <C-O>:update<CR>

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

" map otherwise useless arrow keys to navigate between window splits
map <up>    :wincmd k<CR>
map <down>  :wincmd j<CR>
map <right> :wincmd l<CR>
map <left>  :wincmd h<CR>

" ctrl modified cursors to operate on tabs
map <C-up>    :tabedit %<CR>
map <C-down>  :tabclose<CR>
map <C-right> :tabnext<CR>
map <C-left>  :tabprevious<CR>

" alt-right and alt-left to cycle buffers in a split
map <A-right> :bnext<CR>
map <A-left>  :bprevious<CR>
" compensate for terminal
map <right> :bnext<CR>
map <left>  :bprevious<CR>

" swap ` (backtick) and ' (single quote)
nnoremap ' `
nnoremap ` '

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

iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit
iab llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi
iab lllorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor

"}}}
"""""""""""""""""""""""""""""""""""""""" WORK OR HOME SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
if $COMPUTERNAME =~ "R"
   "we are at work 


   au GUIEnter * simalt ~x
   execute "silent! source " . glob("~/.vimrc_work")
else
   "we are at home ;)

   if has("gui_running")
      set lines=45 columns=100
   endif
   "au GUIEnter * simalt ~s
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

   "au BufNewFile,BufRead * call SetLocalOptions(bufname("%"))

   set verbosefile=~/vimfiles/startup_log.txt
   augroup StartupLog
      autocmd!
      autocmd SourcePre * silent echom expand('<afile>')
      autocmd VimEnter * set verbosefile& | autocmd! StartupLog
   augroup END

else

  set autoindent     " always set autoindenting on

endif " has("autocmd")

"}}}
"""""""""""""""""""""""""""""""""""""""" PLUGIN SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{

" CALLENDAR OPTIONS
let g:calendar_monday = 1

"fuzzy finder


" YankRing
let g:yankring_min_element_length = 1

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


" Gist - github pastbin
" http://www.vim.org/scripts/script.php?script_id=2423
" :Gist
" :Gist -p (private)
" :Gist XXXX (fetch Gist XXXX and load)
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

let g:snips_author = 'Dariusz Synowiec'


"}}}
"""""""""""""""""""""""""""""""""""""""" FUNCTIONS: """"""""""""""""""""""""""""""""""""""""{{{
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.

" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

" Remap Y to y$ in Yankring
function! YRRunAfterMaps()
   nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

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
   so ~/vimfiles/plugin_on_demand/srcexpl.vim
   nmap <silent> <F10> :SrcExplToggle<CR>
   SrcExplToggle
endfunction

fun! InitGist()
   let $PATH = "c:\\Darek\\app\\Git\\bin;" . $PATH
   unmap <leader>gi
   so ~/vimfiles/plugin_on_demand/gist.vim
   nmap <silent> <leader>gi :echo "Gist already loaded"<CR>
endfunction

" Set directory-wise configuration.
" Search from the directory the file is located upwards to the root for
" a local configuration file called .lvimrc and sources it.
"
" The local configuration file is expected to have commands affecting
" only the current buffer.

function! SetLocalOptions(fname)
   let dirname = fnamemodify(a:fname, ":p:h")
   while "/" != dirname
      let lvimrc  = dirname . "/.lvimrc"
      if filereadable(lvimrc)
         execute "source " . lvimrc
         break
      endif
      let dirname = fnamemodify(dirname, ":p:h:h")
   endwhile
endfunction



fun! HideCursorLines()
   set cursorline!
   set cursorcolumn!
endfunction

command! -nargs=? -range Dec2hex call s:Dec2hex(<line1>, <line2>, '<args>')
function! s:Dec2hex(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    else
      let cmd = 's/\<\d\+\>/\=printf("0x%x",submatch(0)+0)/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No decimal number found'
    endtry
  else
    echo printf('%x', a:arg + 0)
  endif
endfunction

command! -nargs=? -range Hex2dec call s:Hex2dec(<line1>, <line2>, '<args>')
function! s:Hex2dec(line1, line2, arg) range
  if empty(a:arg)
    if histget(':', -1) =~# "^'<,'>" && visualmode() !=# 'V'
      let cmd = 's/\%V0x\x\+/\=submatch(0)+0/g'
    else
      let cmd = 's/0x\x\+/\=submatch(0)+0/g'
    endif
    try
      execute a:line1 . ',' . a:line2 . cmd
    catch
      echo 'Error: No hex number starting "0x" found'
    endtry
  else
    echo (a:arg =~? '^0x') ? a:arg + 0 : ('0x'.a:arg) + 0
  endif
endfunction

"}}}



