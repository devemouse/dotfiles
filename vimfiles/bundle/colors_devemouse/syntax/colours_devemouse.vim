syn clear

" based on colours_bandit.vim
" Highlight colors/devemouse.vim in the devemouse.vim colour scheme!

runtime! syntax/vim.vim

redir => highlights
silent hi
redir END

let lines = split(highlights, '\n')
let keywords = []
for line in lines
	let keyword = split(line)[0]
	let keywords += [keyword,]
endfor

syn clear vimVar

for keyword in keywords
	if keyword =~ '^\k*$'
		execute 'syn match '.keyword." /HiSet\\['".keyword."'\\]/me=s+5"
	endif
endfor


let b:current_syntax = "colours_devemouse"
