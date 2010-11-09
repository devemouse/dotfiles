
"""""""""""""""""""""""""""""""""""""""" PLUGIN SETTINGS: """"""""""""""""""""""""""""""""""""""""{{{

"silent! ruby require 'rubygems'
"ruby VIM::command( 'let g:ruby_path = "%s"' % (Gem.all_load_paths.sort.uniq).join(',') )
"let g:ruby_path = '.,' . substitute(g:ruby_path, '\%(^\|,\)\.\%(,\|$\)', ',,', '')


" CALLENDAR OPTIONS
let g:calendar_monday = 1

"fuzzy finder

let g:fuf_coveragefile_globPatterns = ['**/*.c', '**/*.h, **/makefile, **/*.txt, **/*.vim']
let g:fuf_autoPreview = 1
let g:fuf_previewHeight = 30
let g:fuf_modesDisable = []

" YankRing
let g:yankring_min_element_length = 1

"QuickFilter
let g:filteringDefaultContextLines = 0
let g:filteringDefaultAutoFollow = 1

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

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

let g:C_Ctrl_j = 'off'

"}}}
