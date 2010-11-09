
"""""""""""""""""""""""""""""""""""""""" AUTO COMMANDS: """"""""""""""""""""""""""""""""""""""""{{{

"highlight AlmostOverLength ctermbg=red ctermfg=white guibg=grey30
"match AlmostOverLength /\%81v.\+%100v/

"highlight OverLength ctermbg=red ctermfg=white guibg=grey50
"match OverLength /\%101v.\+/

if has("autocmd")

   autocmd! BufWritePost .vimrc source % " automatically interpret vimrc when saving


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

else

  set autoindent     " always set autoindenting on

endif " has("autocmd")

"}}}
