" Vim color file
" Description: Vim's default colour scheme
" Maintainer: Chris Rawnsley <chris@puny.agency>
" Version: Vim 9.0.0246
" Source: https://github.com/casr/vim-colors-reference
" Modified: 2022 Aug 23

" Attempts to represent Vim's default highlight groups referenced in:
"
"   - [vim/vim@471c0fa3ee] src/highlight.c
"   - [vim/vim@ebdf3c964a] runtime/syntax/syncolor.vim
"   - [vim/vim@adce965162] src/optiondefs.h

hi clear
if exists('syntax_on')
	syntax reset
endif

let g:colors_name = 'reference'

" src/highlight.c
" ---------------
" ### highlight_init_both
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi IncSearch term=reverse cterm=reverse gui=reverse
hi ModeMsg term=bold cterm=bold gui=bold
hi NonText term=bold ctermfg=Blue gui=bold guifg=Blue
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold
hi StatusLineNC term=reverse cterm=reverse gui=reverse
hi default link EndOfBuffer NonText
hi VertSplit term=reverse cterm=reverse gui=reverse

if has('clipboard')
	hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
endif

if has('diff')
	hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
endif

hi PmenuSbar ctermbg=Grey guibg=Grey
hi TabLineSel term=bold cterm=bold gui=bold
hi TabLineFill term=reverse cterm=reverse gui=reverse

if has('gui_running')
	hi Cursor guibg=fg guifg=bg
	hi lCursor guibg=fg guifg=bg
endif

hi default link QuickFixLine Search
hi default link CursorLineSign SignColumn
hi default link CursorLineFold SignColumn
hi default link CurSearch Search
hi Normal cterm=NONE gui=NONE

" ### highlight_init_light
if &background ==# 'light'
	hi Directory term=bold ctermfg=DarkBlue guifg=Blue
	hi LineNr term=underline ctermfg=Brown guifg=Brown
	hi CursorLineNr term=bold cterm=underline ctermfg=Brown gui=bold guifg=Brown
	hi MoreMsg term=bold ctermfg=DarkGreen gui=bold guifg=SeaGreen
	hi Question term=standout ctermfg=DarkGreen gui=bold guifg=SeaGreen
	hi Search term=reverse ctermbg=Yellow ctermfg=NONE guibg=Yellow guifg=NONE

	if has('spell')
		hi SpellBad term=reverse ctermbg=LightRed guisp=Red gui=undercurl
		hi SpellCap term=reverse ctermbg=LightBlue guisp=Blue gui=undercurl
		hi SpellRare term=reverse ctermbg=LightMagenta guisp=Magenta gui=undercurl
		hi SpellLocal term=underline ctermbg=Cyan guisp=DarkCyan gui=undercurl
	endif

	hi PmenuThumb ctermbg=Black guibg=Black
	hi Pmenu ctermbg=LightMagenta ctermfg=Black guibg=LightMagenta
	hi PmenuSel ctermbg=LightGrey ctermfg=Black guibg=Grey
	hi SpecialKey term=bold ctermfg=DarkBlue guifg=Blue
	hi Title term=bold ctermfg=DarkMagenta gui=bold guifg=Magenta
	hi WarningMsg term=standout ctermfg=DarkRed guifg=Red

	if has('wildmenu')
		hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	endif

	if has('folding')
		hi Folded term=standout ctermbg=Grey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
		hi FoldColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	endif

	if has('signs')
		hi SignColumn term=standout ctermbg=Grey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
	endif

	hi Visual term=reverse guibg=LightGrey

	if has('diff')
		hi DiffAdd term=bold ctermbg=LightBlue guibg=LightBlue
		hi DiffChange term=bold ctermbg=LightMagenta guibg=LightMagenta
		hi DiffDelete term=bold ctermfg=Blue ctermbg=LightCyan gui=bold guifg=Blue guibg=LightCyan
	endif

	hi TabLine term=underline cterm=underline ctermfg=black ctermbg=LightGrey gui=underline guibg=LightGrey

	if has('syntax')
		hi CursorColumn term=reverse ctermbg=LightGrey guibg=Grey90
		hi CursorLine term=underline cterm=underline guibg=Grey90
		hi ColorColumn term=reverse ctermbg=LightRed guibg=LightRed
	endif

	if has('conceal')
		hi Conceal ctermbg=DarkGrey ctermfg=LightGrey guibg=DarkGrey guifg=LightGrey
	endif

	hi MatchParen term=reverse ctermbg=Cyan guibg=Cyan

	if has('terminal')
		hi StatusLineTerm term=reverse,bold cterm=bold ctermfg=White ctermbg=DarkGreen gui=bold guifg=bg guibg=DarkGreen
		hi StatusLineTermNC term=reverse ctermfg=White ctermbg=DarkGreen guifg=bg guibg=DarkGreen
	endif

	if has('menu')
		hi ToolbarLine term=underline ctermbg=LightGrey guibg=LightGrey
		hi ToolbarButton cterm=bold ctermfg=White ctermbg=DarkGrey gui=bold guifg=White guibg=Grey40
	endif
" ### highlight_init_dark
else
	hi Directory term=bold ctermfg=LightCyan guifg=Cyan
	hi LineNr term=underline ctermfg=Yellow guifg=Yellow
	hi CursorLineNr term=bold cterm=underline ctermfg=Yellow gui=bold guifg=Yellow
	hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
	hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
	hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	hi SpecialKey term=bold ctermfg=LightBlue guifg=Cyan

	if has('spell')
		hi SpellBad term=reverse ctermbg=Red guisp=Red gui=undercurl
		hi SpellCap term=reverse ctermbg=Blue guisp=Blue gui=undercurl
		hi SpellRare term=reverse ctermbg=Magenta guisp=Magenta gui=undercurl
		hi SpellLocal term=underline ctermbg=Cyan guisp=Cyan gui=undercurl
	endif

	hi PmenuThumb ctermbg=White guibg=White
	hi Pmenu ctermbg=Magenta ctermfg=Black guibg=Magenta
	hi PmenuSel ctermbg=Black ctermfg=DarkGrey guibg=DarkGrey
	hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
	hi WarningMsg term=standout ctermfg=LightRed guifg=Red

	if has('wildmenu')
		hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
	endif

	if has('folding')
		hi Folded term=standout ctermbg=DarkGrey ctermfg=Cyan guibg=DarkGrey guifg=Cyan
		hi FoldColumn term=standout ctermbg=DarkGrey ctermfg=Cyan guibg=Grey guifg=Cyan
	endif

	if has('signs')
		hi SignColumn term=standout ctermbg=DarkGrey ctermfg=Cyan guibg=Grey guifg=Cyan
	endif

	hi Visual term=reverse guibg=DarkGrey

	if has('diff')
		hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
		hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
		hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
	endif

	hi TabLine term=underline cterm=underline ctermfg=white ctermbg=DarkGrey gui=underline guibg=DarkGrey

	if has('syntax')
		hi CursorColumn term=reverse ctermbg=DarkGrey guibg=Grey40
		hi CursorLine term=underline cterm=underline guibg=Grey40
		hi ColorColumn term=reverse ctermbg=DarkRed guibg=DarkRed
	endif

	hi MatchParen term=reverse ctermbg=DarkCyan guibg=DarkCyan

	if has('conceal')
		hi Conceal ctermbg=DarkGrey ctermfg=LightGrey guibg=DarkGrey guifg=LightGrey
	endif

	if has('terminal')
		hi StatusLineTerm term=reverse,bold cterm=bold ctermfg=Black ctermbg=LightGreen gui=bold guifg=bg guibg=LightGreen
		hi StatusLineTermNC term=reverse ctermfg=Black ctermbg=LightGreen guifg=bg guibg=LightGreen
	endif

	if has('menu')
		hi ToolbarLine term=underline ctermbg=DarkGrey guibg=Grey50
		hi ToolbarButton cterm=bold ctermfg=Black ctermbg=LightGrey gui=bold guifg=Black guibg=LightGrey
	endif
endif

if &t_Co > 8
	if &background ==# 'light'
		hi Visual cterm=NONE ctermbg=LightGrey
	else
		hi Visual cterm=NONE ctermbg=DarkGrey
	endif
else
	hi Visual cterm=reverse ctermbg=NONE

	if &background ==# 'light'
		hi Search ctermfg=black
	endif
endif

" syntax/syncolor.vim
" -------------------
if &background == "dark"
	hi Comment term=bold cterm=NONE ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#80a0ff guibg=NONE
	hi Constant term=underline cterm=NONE ctermfg=Magenta ctermbg=NONE gui=NONE guifg=#ffa0a0 guibg=NONE
	hi Special term=bold cterm=NONE ctermfg=LightRed ctermbg=NONE gui=NONE guifg=Orange guibg=NONE
	hi Identifier term=underline cterm=bold ctermfg=Cyan ctermbg=NONE gui=NONE guifg=#40ffff guibg=NONE
	hi Statement term=bold cterm=NONE ctermfg=Yellow ctermbg=NONE gui=bold guifg=#ffff60 guibg=NONE
	hi PreProc term=underline cterm=NONE ctermfg=LightBlue ctermbg=NONE gui=NONE guifg=#ff80ff guibg=NONE
	hi Type term=underline cterm=NONE ctermfg=LightGreen ctermbg=NONE gui=bold guifg=#60ff60 guibg=NONE
	hi Underlined term=underline cterm=underline ctermfg=LightBlue gui=underline guifg=#80a0ff
	hi Ignore term=NONE cterm=NONE ctermfg=black ctermbg=NONE gui=NONE guifg=bg guibg=NONE
else
	hi Comment term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
	hi Constant term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
	hi Special term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a5acd guibg=NONE
	hi Identifier term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE
	hi Statement term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=bold guifg=Brown guibg=NONE
	hi PreProc term=underline cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a0dad guibg=NONE
	hi Type term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
	hi Underlined term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=SlateBlue
	hi Ignore term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE
endif
hi Error term=reverse cterm=NONE ctermfg=White ctermbg=Red gui=NONE guifg=White guibg=Red
hi Todo term=standout cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=Blue guibg=Yellow

hi default link String Constant
hi default link Character Constant
hi default link Number Constant
hi default link Boolean Constant
hi default link Float Number
hi default link Function Identifier
hi default link Conditional Statement
hi default link Repeat Statement
hi default link Label Statement
hi default link Operator Statement
hi default link Keyword Statement
hi default link Exception Statement
hi default link Include PreProc
hi default link Define PreProc
hi default link Macro PreProc
hi default link PreCondit PreProc
hi default link StorageClass Type
hi default link Structure Type
hi default link Typedef Type
hi default link Tag Special
hi default link SpecialChar Special
hi default link Delimiter Special
hi default link SpecialComment Special
hi default link Debug Special

" Others that are initialised but cleared:

" src/optiondefs.h
" ---------------
" ### HIGHLIGHT_INIT
hi clear LineNrAbove
hi clear LineNrBelow
