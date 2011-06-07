" vim: tw=0 ts=4 sw=4 noet ft=colours_devemouse foldmethod=diff
" Vim colour file
" Maintainer:	Dariusz Synowiec (devemouse)
" BasedOn:	Bnadit color scheme by A. S. Budden
" LastUpdate: 2011-04-06
"
" COMMENTS ARE NOT YET UPDATED!!!

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "devemouse"

set background=dark

" Highlights Settings
let HiSet = {}

" Unspecified colours default to NONE, EXCEPT cterm(.*) which default to matching gui(.*)
" ctermfg will default to 'Blue' and ctermbg to 'NONE' if gui(.*) are RGB
"
" In most cases, only GUIFG is therefore important unless support for Black and White
" terminals is essential

" colors were picked using:
"  - for gui: http://www.w3schools.com/tags/ref_colorpicker.asp
"  - for cterm (256 colors): http://www.tareeinternet.com/forum/knowledgebase/223-web-safe-color-chart.html

" By default, assume the background colour is dark (changes for light backgrounds are handled later)

" Default text
let HiSet['Normal']            = {"GUIFG": 'White', "GUIBG":  '#1B001B'}

let HiSet['Cursor']            = {"GUIFG": 'red',   "GUIBG":  'yellow'}

" Comments
let HiSet['Comment']           = {"GUIFG": '#6eca6e',     "CTERMFG": 'darkcyan',     "TERM":   'Bold'}
let HiSet['TagbarComment']     = {"GUIFG": '#6eca6e',     "CTERMFG": 'darkcyan',     "TERM":   'Bold'}

" These are considered to be a different sort of comment, so they get a different shade
" of green: this also allows the doxygen todo error highlighter to be able to spot
" erroneous @todo flags in non-doxygen comments (requires Doxygen Comment Matcher)
let HiSet['DoxygenComment']    = {"GUIFG": '#00AA00',     "CTERMFG": 'Green',     "TERM":  'Bold'}
let HiSet['DoxygenKeyword']    = {"GUIFG": '#88ffdd',     "CTERMFG": 'Blue'}
let HiSet['DoxygenLink']       = {"GUIFG": '#8888ff',     "CTERMFG": 'Blue'}
let HiSet['DoxygenTable']      = {"GUIFG": '#00cc00',     "CTERMFG": 'Green',     "TERM":  'Bold'}
let HiSet['DoxygenTableLines'] = {"GUIFG": '#88ffdd',     "CTERMFG": 'Blue'}

" Constants are shades of yellow or brown
let HiSet['Constant']          = {"GUIFG": '#FFFF66',     "CTERMFG": 'brown'}
let HiSet['String']            = {"GUIFG": 'LightYellow'}
let HiSet['Character']         = {"GUIFG": 'DarkYellow'}

" Preprocessor directives are bold shades of blue
let HiSet['PreProc']           = {"GUIFG": '#5050FF',     "GUI":     'Bold', "CTERMFG":  '6'}
let HiSet['Include']           = {"GUIFG": '#5050FF',     "GUI":     'Bold'}
let HiSet['Define']            = {"GUIFG": '#5F5FFF',     "GUI":     'Bold'}
let HiSet['Macro']             = {"GUIFG": '#5F5FFF',     "GUI":     'Bold'}
let HiSet['PreCondit']         = {"GUIFG": '#8888FF',     "GUI":     'Bold'}

" Statements are shades of Blue
let HiSet['Statement']         = {"GUIFG": '#5A5AFF',        "CTERMFG":    '3'}
let HiSet['Conditional']       = {"GUIFG": '#9999FF'} " if, then, else, endif, switch, etc.
let HiSet['Repeat']            = {"GUIFG": '#BBBBFF'} " for, do, while, etc.
let HiSet['Label']             = {"GUIFG": '#8888Ff'} " case, default, etc.
let HiSet['Exception']         = {"GUIFG": '#5A5AAA'} " try, catch, throw

" Operators (+, =, -, % etc): not defined by default C syntax
let HiSet['Operator']          = {"GUIFG": '#CCCCFF'}

" Identifiers are shades of Cyan
let HiSet['Identifier']        = {"GUIFG": 'cyan',   "CTERMFG": '6'}
let HiSet['Function']          = {"GUIFG": '#007777',     "CTERMFG": 'Cyan'}
let HiSet['Method']            = {"GUIFG": '#009966',     "CTERMFG": 'Cyan'}
let HiSet['TagbarKind']        = {"GUIFG": 'cyan',   "CTERMFG": '6'}

" Special additions created by mktypes.py are shades of Purple or Grey
let HiSet['Class']             = {"GUIFG": 'Purple',      "TERM":  'Underline'}
let HiSet['DefinedName']       = {"GUIFG": '#ee82ee',     "TERM":    'Underline'}
let HiSet['EnumerationValue']  = {"GUIFG": '#c000c0'}
let HiSet['EnumerationName']   = {"GUIFG": '#ff22ff',     "TERM":  'Underline'}
let HiSet['Member']            = {"GUIFG": 'DarkGrey',    "TERM":    'Underline'}
let HiSet['Union']             = {"GUIFG": 'Grey',        "TERM":    'Underline'}
let HiSet['GlobalVariable']    = {"GUIFG": '#666600',     "CTERMFG": 'Cyan',      "TERM":  'Underline'}
let HiSet['LocalVariable']     = {"GUIFG": '#aaa14c',     "CTERMFG": 'Cyan'}
let HiSet['GlobalConstant']    = {"GUIFG": '#bbbb00',     "CTERMFG": 'Yellow',      "TERM":  'Underline'}
let HiSet['TAgbarScope']       = {"GUIFG": 'Purple',      "TERM":  'Underline'}

" Types/storage classes etc are shades of orangey-red
let HiSet['Type']              = {"GUIFG": '#ff8000',     "CTERMFG":    '2'}
let HiSet['StorageClass']      = {"GUIFG": '#ff4040'} " static, register, volatile, etc.
let HiSet['Structure']         = {"GUIFG": '#ff8080'} " struct, union, enum, etc.
let HiSet['TagbarType']        = {"GUIFG": '#ff8000',     "CTERMFG":    '2'}

" Special Stuff
let HiSet['Special']           = {"GUIFG": 'red',         "CTERMFG":    '5'}
let HiSet['SpecialChar']       = {"GUIFG": '#AA0000'}     " special character in a constant
let HiSet['SpecialKey']        = {"GUIFG": '#666666', "CTERMFG": 'darkgreen'}     " special highlighting for 'listchars' etc
let HiSet['NonText']           = {"GUIFG": '#666666',  "CTERM": 'bold', "CTERMFG": 'darkblue'}     " special highlighting for 'listchars' etc
let HiSet['MatchParen']        = {"GUI":   'Underline',   "GUIFG": "Yellow"}   " Highlighting of matching parentheses

" Errors
let HiSet['Error']             = {"GUIFG": 'White',       "GUIBG":   'Red',       "TERM":  'Reverse'}
let HiSet['ErrorMsg']          = {"GUIFG": 'White',       "GUIBG":   'Red',       "TERM":  'Reverse'}
let HiSet['NonIndentTabError'] ={"GUISP": '#FFAA00',     "GUI":   'undercurl',   "CTERMBG": 'Red'}

" Stuff needing doing
let HiSet['Todo']              = {"GUIFG": 'blue',   "GUIBG":   'Yellow2',    "TERM":  'Standout'}

" Folding
let HiSet['Folded']            = {"GUIFG": '#888888',    "GUIBG":  '#303030',   "CTERMFG": "darkgrey",   "CTERMBG": "NONE"}
let HiSet['FoldColumn']        = {"GUIFG": '#AAAAAA',    "GUIBG":   '#303030',   "CTERMFG": "darkgrey",   "CTERMBG": "NONE"}

" Searching
let HiSet['IncSearch']         = {"GUIFG": 'slategray',   "GUIBG":  'khaki', "CTERM": 'NONE', "CTERMFG": "yellow",   "CTERMBG": "blue"}
let HiSet['Search']            = {"GUIFG": 'wheat',   "GUIBG":  'peru', "CTERM": 'NONE', "CTERMFG": "grey",   "CTERMBG": "blue"}

" form my old sheme
let HiSet['ModeMsg']           = {"GUIFG": 'goldenrod', "CTERM": 'NONE', "CTERMFG": "brown"}
let HiSet['MoreMsg']           = {"GUIFG": 'SeaGreen', "CTERMFG": "darkgreen"}
let HiSet['Question']          = {"GUIFG": 'springgreen', "CTERMFG": "green"}
let HiSet['Visual']            = {"GUIFG": 'khaki',   "GUIBG":  'olivedrab', "GUI": 'none', "CTERM": 'reverse'}
let HiSet['VisualNOS']         = {"CTERM": 'bold,underline'}
let HiSet['WarningMsg']        = {"GUIFG": 'salmon', "CTERMFG": "1"}
let HiSet['Directory']         = {"GUIFG": "cyan", "CTERMFG": "darkcyan"}
let HiSet['WildMenu']          = {"CTERMFG": "0",   "CTERMBG": "3"}
let HiSet['DiffAdd']           = {"CTERMBG": "4"}
let HiSet['DiffChange']        = {"CTERMBG": "5"}
let HiSet['DiffDelete']        = {"CTERM": 'bold', "CTERMFG": "4",   "CTERMBG": "6"}
let HiSet['DiffText']          = {"CTERM": 'bold', "CTERMBG": "1"}
let HiSet['Underlined']        = {"CTERM": 'underline', "CTERMFG": "7"}

" Popup Menu
let HiSet['Pmenu']             = {"GUIFG": '#442206',     "GUIBG": '#ffff77',     "CTERMFG": "Black",   "CTERMBG": "Yellow"}

" Line Numbering
let HiSet['LineNr']            = {"GUIFG": 'yellow',      "CTERMFG": 'yellow'}

" Status Lines
let HiSet['StatusLine']        = {"GUIFG": 'Black',      "GUIBG": 'lightgrey',  "CTERM": 'bold,reverse'}
let HiSet['StatusLineNC']      = {"GUIFG": 'black',      "GUIBG": 'darkgrey',  "CTERM": 'reverse'}

" Vertical Splits
let HiSet['VertSplit']         = {"GUIFG": 'black',       "GUIBG": 'white', "GUI": 'none', "CTERM": 'reverse'}

" Signs Column
let HiSet['SignColumn']        = {"GUIBG": '#222222'}

" Text Titles
let HiSet['Title']             = {"GUIFG": '#6060FF', "GUI": 'bold', "CTERMFG": "5"}
let HiSet['htmlH1']            = {"GUIFG": '#6060FF'}
let HiSet['htmlH2']            = {"GUIFG": '#8888FF'}
let HiSet['htmlH3']            = {"GUIFG": '#9999DD'}
let HiSet['htmlH4']            = {"GUIFG": '#5555AA'}
let HiSet['htmlH5']            = {"GUIFG": '#8888AA'}
let HiSet['htmlH6']            = {"GUIFG": '#888888'}


" Delimiters
let HiSet['Delimiter']         = {"GUIFG": 'DarkCyan'}
" Rainbow highlighting of nested brackets
" TODO: Find the closest ctermfg match to the various guifg colours
let HiSet['hlLevel0']          = {"GUIFG": 'DarkCyan',    "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel1']          = {"GUIFG": '#bfbf00',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel2']          = {"GUIFG": '#990033',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel3']          = {"GUIFG": '#334488',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel4']          = {"GUIFG": '#996622',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel5']          = {"GUIFG": '#ff2222',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel6']          = {"GUIFG": '#4444ff',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel7']          = {"GUIFG": '#ffff44',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel8']          = {"GUIFG": '#96cdcd',     "CTERMFG": 'DarkCyan'}
let HiSet['hlLevel9']          = {"GUIFG": '#698b22',     "CTERMFG": 'DarkCyan'}
" Stop rainbow.vim from overwriting these colours (requires modifications to rainbow.vim v2a
let g:rainbow_delimiter_colours_defined = 1

" ========================================================================
" Other available highlighting groups are listed at the bottom of the file
" Light Background stuff is below the MakeDarker function
" ========================================================================

function! s:MakeDarker(rgb)
	let rgbSplitter = '^#\(\x\{2}\)\(\x\{2}\)\(\x\{2}\)$'
	let matches = matchlist(a:rgb, rgbSplitter)
	if empty(matches)
		return a:rgb
	endif
	let Red = matches[1]
	let Green = matches[2]
	let Blue = matches[3]
	let percentage = 70
	let darken_above_here = 0x7f*3

	let Red = str2nr(Red, 16)
	let Green = str2nr(Green, 16)
	let Blue = str2nr(Blue, 16)
	if (Red+Green+Blue) < darken_above_here
		return a:rgb
	endif

	let Red = Red*percentage/100
	let Green = Green*percentage/100
	let Blue = Blue*percentage/100

	let result = printf("#%02x%02x%02x", Red, Green, Blue)

	return result
	
endfunction


" Now change those that are different for the light background
if &background == 'light'
	" Automatically change any LightXxxxx Colours to DarkXxxxx
	for s:group in keys(HiSet)
		for s:Component in keys(HiSet[s:group])
			if match(HiSet[s:group][s:Component], 'Light') == 0
				let HiSet[s:group][s:Component] = 'Dark'.HiSet[s:group][s:Component][5:]
			elseif match(HiSet[s:group][s:Component], '^#\x\{6}$') != -1
				let HiSet[s:group][s:Component] = s:MakeDarker(HiSet[s:group][s:Component])
			endif
		endfor
	endfor

	" Now add manual alterations
	let HiSet['Normal']              = {"GUIFG": 'Black',     "GUIBG": 'White'}
	let HiSet['Comment']["GUIFG"]    = 'DarkGreen'
	let HiSet['String']["GUIFG"]     = '#663300'
	let HiSet['String']["CTERMFG"]   = 'DarkYellow'
	let HiSet['Union']["GUIFG"]      = 'DarkGrey'
	let HiSet['Identifier']["GUIFG"] = 'Blue'
	let HiSet['Operator']["GUIFG"]   = '#222288'
	let HiSet['LineNr']["GUIBG"]     = 'Grey'
	let HiSet['StatusLine']["GUIBG"] = 'Black'
	let HiSet['StatusLine']["GUIFG"] = 'White'
	let HiSet['SignColumn']["GUIBG"] = "LightGrey"
	let HiSet['SpecialKey']["GUIFG"] = '#AAAAAA'
	let HiSet['NonText']["GUIFG"]    = '#AAAAAA'
endif

hi Ignore ctermfg=DarkGrey guifg=grey40 cterm=bold ctermfg=7

" Unless there is a need to change the links at the bottom, don't change anything below this line

let s:colours = {}
let valid_cterm_colours = 
			\ [
			\     'Black', 'DarkBlue', 'DarkGreen', 'DarkCyan',
			\     'DarkRed', 'DarkMagenta', 'Brown', 'DarkYellow',
			\     'LightGray', 'LightGrey', 'Gray', 'Grey',
			\     'DarkGray', 'DarkGrey', 'Blue', 'LightBlue',
			\     'Green', 'LightGreen', 'Cyan', 'LightCyan',
			\     'Red', 'LightRed', 'Magenta', 'LightMagenta',
			\     'Yellow', 'LightYellow', 'White',
			\ ]
for key in keys(HiSet)
	let s:colours = HiSet[key]
	if has_key(s:colours, 'TERM')
		let term = s:colours['TERM']
	else
		let term = 'NONE'
	endif
	if has_key(s:colours, 'GUI')
		let gui = s:colours['GUI']
	else
		let gui='NONE'
	endif
	if has_key(s:colours, 'GUIFG')
		let guifg = s:colours['GUIFG']
	else
		let guifg='NONE'
	endif
	if has_key(s:colours, 'GUIBG')
		let guibg = s:colours['GUIBG']
	else
		let guibg='NONE'
	endif
	if has_key(s:colours, 'CTERM')
		let cterm = s:colours['CTERM']
	else
		let cterm=gui
	endif
	if has_key(s:colours, 'CTERMFG')
		let ctermfg = s:colours['CTERMFG']
	else
		if index(valid_cterm_colours, guifg) != -1
			let ctermfg=guifg
		else
			let ctermfg='Blue'
		endif
	endif
	if has_key(s:colours, 'CTERMBG')
		let ctermbg = s:colours['CTERMBG']
	else
		if index(valid_cterm_colours, guibg) != -1
			let ctermbg=guibg
		else
			let ctermbg='NONE'
		endif
	endif
	if has_key(s:colours, 'GUISP')
		let guisp = s:colours['GUISP']
	else
		let guisp='NONE'
	endif

	if key =~ '^\k*$'
		execute "hi ".key." term=".term." cterm=".cterm." gui=".gui." ctermfg=".ctermfg." guifg=".guifg." ctermbg=".ctermbg." guibg=".guibg." guisp=".guisp
	endif
endfor

hi! link MoreMsg        Comment
hi  link ErrorMsg       Visual
hi  link WarningMsg     ErrorMsg
hi  link Question       Comment
hi  link Number         Constant
hi  link Boolean        Number
hi  link Float          Number
hi  link Keyword        Statement
hi  link Typedef        Type
hi  link SpecialComment Special
hi  link Debug          Special

hi link javaParen  hlLevel0
hi link javaParen1 hlLevel1
hi link javaParen2 hlLevel2

" For reference, roughly equivalent syntax highlighting in diffuse
" (http://diffuse.sourceforge.net)
" This is for C++ syntax:
"
" # colours
" colour c++_comment 0.0 0.5 0.0
" colour c++_fixme 0.5 0.5 0.0
" colour c++_keyword 0.2 0.2 0.7
" colour c++_type 0.7 0.3 0.0
" colour c++_cpp 0.0 0.0 0.0
" colour c++_cppkeyword 0.4 0.4 0.7
" colour c++_literal 0.7 0.7 0.3
" colour c++_string 0.4 0.2 0.0
" colour c++_escapedchar 0.7 0.0 0.0
" colour c++_punctuation 0.1 0.1 0.5

