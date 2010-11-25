
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
nmap <F4> :bufdo update<CR>:make<CR><CR>
nmap <C-F4> :wa<CR>:!make qac %<CR>
nmap <C-S-F4> :wa<CR>:!make standard %<CR>
" F5
" generate the list of word under cursor
map <F5> :vimgrep // **/*.c **/*.h<CR>
map <S-F5> :vimgrep // **/*.c **/*.h

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
map <C-F12> :silent! cscope kill cscope.out<CR>:!cscope -Rbc <CR>:cs add ./cscope.out<CR>
" refresh ctags

"nmap <C-1> :1tabn<CR>
"nmap <C-2> :2tabn<CR>
"nmap <C-3> :3tabn<CR>
"nmap <C-4> :4tabn<CR>
"nmap <C-5> :5tabn<CR>
"nmap <C-6> :6tabn<CR>
"nmap <C-7> :7tabn<CR>
"nmap <C-8> :8tabn<CR>

" could be better than esc
imap ,, <Esc>
imap ;; <Esc>

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
nmap <leader>dcl :clist<CR>
nmap <leader>p :cprev<CR>zz:cc<CR>
nmap <leader>n :cnext<CR>zz:cc<CR>
map <leader>dt :silent !start ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=.git --exclude=*.s .<CR>
map <leader>dc :!cscope -R -b<CR>:cs add ./cscope.out<CR>
nmap <leader>dr :call HideCursorLines()<CR>
nmap <leader>di :!echo echo string(input("IN: "))<CR>

nmap <silent> <leader>gi :call InitGist()<CR>

nmap <leader>dl :set list!<CR>

" Tame the quickfix window (open/close using ,f)
nmap <silent> <leader>dq :QFix<CR>

let g:shell_mappings_enabled = 0
inoremap <Leader>df <C-o>:Fullscreen<CR>
nnoremap <Leader>df :Fullscreen<CR>
inoremap <Leader>op <C-o>:Open<CR>
nnoremap <Leader>op :Open<CR>

" Rainbows!
nmap <leader>dR :RainbowParenthesesToggle<CR>

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

" Line operations (from http://github.com/tpope/vim-unimpaired/blob/master/plugin/unimpaired.vim) {{{
" I have this plugin in my repo but for performance reasons I did not include whole plugin in my
" config.

nnoremap <silent> <Plug>unimpairedBlankUp   :<C-U>put!=repeat(nr2char(10),v:count)<Bar>']+1<CR>
nnoremap <silent> <Plug>unimpairedBlankDown :<C-U>put =repeat(nr2char(10),v:count)<Bar>'[-1<CR>

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


" Visually select the text that was last edited/pasted
nmap gV `[v`]


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
