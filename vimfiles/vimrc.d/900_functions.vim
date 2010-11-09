
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
