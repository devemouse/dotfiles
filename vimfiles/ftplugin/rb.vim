
"echo bla

"let bla = &makeprg

"let &makeprg=":w<CR>:!ruby %<CR>"

"autocmd BufEnter,BufAdd,BufNewFile 
"
"let &makeprg=":w<CR>:!ruby %<CR>"

autocmd BufEnter,BufAdd,BufNewFile *.rb[w] 
         \ let g:bla = &makeprg
         \ let &makeprg=":w<CR>:!ruby %<CR>"

autocmd BufLeave *.rb[w] 
         \ let &makeprg=g:bla


"echo bla



