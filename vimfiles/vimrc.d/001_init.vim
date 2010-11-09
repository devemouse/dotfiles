"-----------------------------------
"
" Author: Dariusz Synowiec
" Last Change: TBD
" URL: TBD
" Version: 0.1 
" Desctiption: Vim configuration file containing initialization for .vimrc
"
"------------------------------------


"""""""""""""""""""""""""""""""""""""""" SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{
set nocompatible

filetype plugin indent on

behave mswin

scriptencoding utf-8
set encoding=utf-8

set notitle " disable 'Thanks for flying vim'

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"shortens messages to avoid 'press a key' prompt
set shortmess=atI

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
set wildignore=*.bak,*.o,*.e,*~,*.pyc

map <F3> :call Filetest()<CR>

"function! Filetest(...)
   "ruby << EOR
   "VIM::message(VIM::Buffer.current.name)
   "#VIM::message("Hello world")
"EOR
"endfunction

"show status line
set laststatus=2

function! GetRAMROMusage(...)
   return ""
endfunction

" When you do a "cw" command to replace a word, or "C" to replace the remainder of a line, vi will
" normally immediately blank out what you are changing. With this setting, the original word or line
" you are replacing is still visible as you type over it. This is purely a visual change, and does
" not change the actions of "change" in any way. Helps you keep context on what you are replacing.
set cpoptions=$

"function! GetRAMROMusage2(...)
   "!ruby ramRom.rb -c -f %
   "ruby << EOF
   "#fn = File.basename(file).gsub(Regexp.new(File.extname(file)), "")
   "#regex = fn + "\.o"
   "#path = File.dirname(file).split(File::SEPARATOR)[0]
"
   "#$config[0] = Array.new(1, {:name => fn, :regex => regex, :path => path})
   "#$config = [
   "#[
   "#{:name => "Com"       , :regex => "Com\.o"      , :path => "Com"},
   "#],
   "#{
   "#"data"    => :ram,
   "#"bss"     => :ram,
   "#"rodata"  => :rom,
   "#"vletext" => :rom,
   "#}
   "#]
   "#VIM::Buffer @buffer = VIM::Buffer.current
   "#cb = VIM::Buffer.current
   "VIM::message(VIM::Buffer.current.name)
"EOF
"endfunction

"and finally I will know which function am I in ;)
set statusline=%<%f%h%m%r\ /%{&ff}/\ %y%=%b\ 0x%B\ \ %l,%c%V\ %P\ %{fugitive#statusline()}\ %=%([%{GetRAMROMusage()}]%)%([%{Tlist_Get_Tagname_By_Line()}]%)


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
"set cursorline
"set cursorcolumn
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

   "undo settings
   set undodir=~/vimfiles/undofiles
   set undofile
endif



"}}}
