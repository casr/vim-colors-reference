" Vim color file
" Description: Vim's default colour scheme
" Maintainer: Chris Rawnsley <chris@puny.agency>
" Version: Vim 9.0.0364, Neovim 0.8.0
" Source: https://github.com/casr/vim-colors-reference
" Modified: 2022 Oct 20

" Attempts to represent Vim & Neovim's default highlight groups referenced in:
"
"   - [vim/vim@c99e182e1f] src/highlight.c
"   - [vim/vim@ebdf3c964a] runtime/syntax/syncolor.vim
"   - [vim/vim@49846fb1a3] src/optiondefs.h
"   - [neovim/neovim@d879331b0d] src/nvim/highlight_defs.h
"   - [neovim/neovim@df646572c5] src/nvim/highlight_group.c

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
	hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black

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
	hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black

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

if has('nvim')
	" src/nvim/highlight_group.c
	" ---------------
	" ### highlight_init_both
	hi TermCursor cterm=reverse gui=reverse
	hi WinBar cterm=bold gui=bold
	hi default link VertSplit Normal
	hi default link WinSeparator VertSplit
	hi default link WinBarNC WinBar
	hi default link LineNrAbove LineNr
	hi default link LineNrBelow LineNr
	hi default link Substitute Search
	hi default link Whitespace NonText
	hi default link MsgSeparator StatusLine
	hi default link NormalFloat Pmenu
	hi default link FloatBorder WinSeparator
	hi default FloatShadow blend=80 guibg=Black
	hi default FloatShadowThrough blend=100 guibg=Black
	hi RedrawDebugNormal cterm=reverse gui=reverse
	hi RedrawDebugClear ctermbg=Yellow guibg=Yellow
	hi RedrawDebugComposed ctermbg=Green guibg=Green
	hi RedrawDebugRecompose ctermbg=Red guibg=Red
	hi default DiagnosticError ctermfg=1 guifg=Red
	hi default DiagnosticWarn ctermfg=3 guifg=Orange
	hi default DiagnosticInfo ctermfg=4 guifg=LightBlue
	hi default DiagnosticHint ctermfg=7 guifg=LightGrey
	hi default DiagnosticUnderlineError cterm=underline gui=underline guisp=Red
	hi default DiagnosticUnderlineWarn cterm=underline gui=underline guisp=Orange
	hi default DiagnosticUnderlineInfo cterm=underline gui=underline guisp=LightBlue
	hi default DiagnosticUnderlineHint cterm=underline gui=underline guisp=LightGrey
	hi default link DiagnosticVirtualTextError DiagnosticError
	hi default link DiagnosticVirtualTextWarn DiagnosticWarn
	hi default link DiagnosticVirtualTextInfo DiagnosticInfo
	hi default link DiagnosticVirtualTextHint DiagnosticHint
	hi default link DiagnosticFloatingError DiagnosticError
	hi default link DiagnosticFloatingWarn DiagnosticWarn
	hi default link DiagnosticFloatingInfo DiagnosticInfo
	hi default link DiagnosticFloatingHint DiagnosticHint
	hi default link DiagnosticSignError DiagnosticError
	hi default link DiagnosticSignWarn DiagnosticWarn
	hi default link DiagnosticSignInfo DiagnosticInfo
	hi default link DiagnosticSignHint DiagnosticHint

	if has("nvim-0.8")
		" Treesitter Highlight Groups

		hi default link @text.underline Underlined
		hi default link @todo Todo
		hi default link @debug Debug

		" Miscs
		hi default link @comment Comment
		hi default link @punctuation Delimiter

		" Constants
		hi default link @constant Constant
		hi default link @constant.builtin Special
		hi default link @constant.macro Define
		hi default link @define Define
		hi default link @macro Macro
		hi default link @string String
		hi default link @string.escape SpecialChar
		hi default link @character Character
		hi default link @character.special SpecialChar
		hi default link @number Number
		hi default link @boolean Boolean
		hi default link @float Float

		" Functions
		hi default link @function Function
		hi default link @function.builtin Special
		hi default link @function.macro Macro
		hi default link @parameter Identifier
		hi default link @method Function
		hi default link @field Identifier
		hi default link @property Identifier
		hi default link @constructor Special

		" Keywords
		hi default link @conditional Conditional
		hi default link @repeat Repeat
		hi default link @label Label
		hi default link @operator Operator
		hi default link @keyword Keyword
		hi default link @exception Exception

		hi default link @type Type
		hi default link @type.definition Typedef
		hi default link @storageclass StorageClass
		hi default link @structure Structure
		hi default link @include Include
		hi default link @preproc PreProc
	endif

	" ### highlight_init_light
	" nothing new

	" ### highlight_init_dark
	" nothing new

	" ### highlight_init_cmdline
	hi NvimInternalError ctermfg=Red ctermbg=Red guifg=Red guibg=Red
	hi default link NvimAssignment Operator
	hi default link NvimPlainAssignment NvimAssignment
	hi default link NvimAugmentedAssignment NvimAssignment
	hi default link NvimAssignmentWithAddition NvimAugmentedAssignment
	hi default link NvimAssignmentWithSubtraction NvimAugmentedAssignment
	hi default link NvimAssignmentWithConcatenation NvimAugmentedAssignment
	hi default link NvimOperator Operator
	hi default link NvimUnaryOperator NvimOperator
	hi default link NvimUnaryPlus NvimUnaryOperator
	hi default link NvimUnaryMinus NvimUnaryOperator
	hi default link NvimNot NvimUnaryOperator
	hi default link NvimBinaryOperator NvimOperator
	hi default link NvimComparison NvimBinaryOperator
	hi default link NvimComparisonModifier NvimComparison
	hi default link NvimBinaryPlus NvimBinaryOperator
	hi default link NvimBinaryMinus NvimBinaryOperator
	hi default link NvimConcat NvimBinaryOperator
	hi default link NvimConcatOrSubscript NvimConcat
	hi default link NvimOr NvimBinaryOperator
	hi default link NvimAnd NvimBinaryOperator
	hi default link NvimMultiplication NvimBinaryOperator
	hi default link NvimDivision NvimBinaryOperator
	hi default link NvimMod NvimBinaryOperator
	hi default link NvimTernary NvimOperator
	hi default link NvimTernaryColon NvimTernary
	hi default link NvimParenthesis Delimiter
	hi default link NvimLambda NvimParenthesis
	hi default link NvimNestingParenthesis NvimParenthesis
	hi default link NvimCallingParenthesis NvimParenthesis
	hi default link NvimSubscript NvimParenthesis
	hi default link NvimSubscriptBracket NvimSubscript
	hi default link NvimSubscriptColon NvimSubscript
	hi default link NvimCurly NvimSubscript
	hi default link NvimContainer NvimParenthesis
	hi default link NvimDict NvimContainer
	hi default link NvimList NvimContainer
	hi default link NvimIdentifier Identifier
	hi default link NvimIdentifierScope NvimIdentifier
	hi default link NvimIdentifierScopeDelimiter NvimIdentifier
	hi default link NvimIdentifierName NvimIdentifier
	hi default link NvimIdentifierKey NvimIdentifier
	hi default link NvimColon Delimiter
	hi default link NvimComma Delimiter
	hi default link NvimArrow Delimiter
	hi default link NvimRegister SpecialChar
	hi default link NvimNumber Number
	hi default link NvimFloat NvimNumber
	hi default link NvimNumberPrefix Type
	hi default link NvimOptionSigil Type
	hi default link NvimOptionName NvimIdentifier
	hi default link NvimOptionScope NvimIdentifierScope
	hi default link NvimOptionScopeDelimiter NvimIdentifierScopeDelimiter
	hi default link NvimEnvironmentSigil NvimOptionSigil
	hi default link NvimEnvironmentName NvimIdentifier
	hi default link NvimString String
	hi default link NvimStringBody NvimString
	hi default link NvimStringQuote NvimString
	hi default link NvimStringSpecial SpecialChar
	hi default link NvimSingleQuote NvimStringQuote
	hi default link NvimSingleQuotedBody NvimStringBody
	hi default link NvimSingleQuotedQuote NvimStringSpecial
	hi default link NvimDoubleQuote NvimStringQuote
	hi default link NvimDoubleQuotedBody NvimStringBody
	hi default link NvimDoubleQuotedEscape NvimStringSpecial
	hi default link NvimFigureBrace NvimInternalError
	hi default link NvimSingleQuotedUnknownEscape NvimInternalError
	hi default link NvimSpacing Normal
	hi default link NvimInvalidSingleQuotedUnknownEscape NvimInternalError
	hi default link NvimInvalid Error
	hi default link NvimInvalidAssignment NvimInvalid
	hi default link NvimInvalidPlainAssignment NvimInvalidAssignment
	hi default link NvimInvalidAugmentedAssignment NvimInvalidAssignment
	hi default link NvimInvalidAssignmentWithAddition NvimInvalidAugmentedAssignment
	hi default link NvimInvalidAssignmentWithSubtraction NvimInvalidAugmentedAssignment
	hi default link NvimInvalidAssignmentWithConcatenation NvimInvalidAugmentedAssignment
	hi default link NvimInvalidOperator NvimInvalid
	hi default link NvimInvalidUnaryOperator NvimInvalidOperator
	hi default link NvimInvalidUnaryPlus NvimInvalidUnaryOperator
	hi default link NvimInvalidUnaryMinus NvimInvalidUnaryOperator
	hi default link NvimInvalidNot NvimInvalidUnaryOperator
	hi default link NvimInvalidBinaryOperator NvimInvalidOperator
	hi default link NvimInvalidComparison NvimInvalidBinaryOperator
	hi default link NvimInvalidComparisonModifier NvimInvalidComparison
	hi default link NvimInvalidBinaryPlus NvimInvalidBinaryOperator
	hi default link NvimInvalidBinaryMinus NvimInvalidBinaryOperator
	hi default link NvimInvalidConcat NvimInvalidBinaryOperator
	hi default link NvimInvalidConcatOrSubscript NvimInvalidConcat
	hi default link NvimInvalidOr NvimInvalidBinaryOperator
	hi default link NvimInvalidAnd NvimInvalidBinaryOperator
	hi default link NvimInvalidMultiplication NvimInvalidBinaryOperator
	hi default link NvimInvalidDivision NvimInvalidBinaryOperator
	hi default link NvimInvalidMod NvimInvalidBinaryOperator
	hi default link NvimInvalidTernary NvimInvalidOperator
	hi default link NvimInvalidTernaryColon NvimInvalidTernary
	hi default link NvimInvalidDelimiter NvimInvalid
	hi default link NvimInvalidParenthesis NvimInvalidDelimiter
	hi default link NvimInvalidLambda NvimInvalidParenthesis
	hi default link NvimInvalidNestingParenthesis NvimInvalidParenthesis
	hi default link NvimInvalidCallingParenthesis NvimInvalidParenthesis
	hi default link NvimInvalidSubscript NvimInvalidParenthesis
	hi default link NvimInvalidSubscriptBracket NvimInvalidSubscript
	hi default link NvimInvalidSubscriptColon NvimInvalidSubscript
	hi default link NvimInvalidCurly NvimInvalidSubscript
	hi default link NvimInvalidContainer NvimInvalidParenthesis
	hi default link NvimInvalidDict NvimInvalidContainer
	hi default link NvimInvalidList NvimInvalidContainer
	hi default link NvimInvalidValue NvimInvalid
	hi default link NvimInvalidIdentifier NvimInvalidValue
	hi default link NvimInvalidIdentifierScope NvimInvalidIdentifier
	hi default link NvimInvalidIdentifierScopeDelimiter NvimInvalidIdentifier
	hi default link NvimInvalidIdentifierName NvimInvalidIdentifier
	hi default link NvimInvalidIdentifierKey NvimInvalidIdentifier
	hi default link NvimInvalidColon NvimInvalidDelimiter
	hi default link NvimInvalidComma NvimInvalidDelimiter
	hi default link NvimInvalidArrow NvimInvalidDelimiter
	hi default link NvimInvalidRegister NvimInvalidValue
	hi default link NvimInvalidNumber NvimInvalidValue
	hi default link NvimInvalidFloat NvimInvalidNumber
	hi default link NvimInvalidNumberPrefix NvimInvalidNumber
	hi default link NvimInvalidOptionSigil NvimInvalidIdentifier
	hi default link NvimInvalidOptionName NvimInvalidIdentifier
	hi default link NvimInvalidOptionScope NvimInvalidIdentifierScope
	hi default link NvimInvalidOptionScopeDelimiter NvimInvalidIdentifierScopeDelimiter
	hi default link NvimInvalidEnvironmentSigil NvimInvalidOptionSigil
	hi default link NvimInvalidEnvironmentName NvimInvalidIdentifier
	hi default link NvimInvalidString NvimInvalidValue
	hi default link NvimInvalidStringBody NvimStringBody
	hi default link NvimInvalidStringQuote NvimInvalidString
	hi default link NvimInvalidStringSpecial NvimStringSpecial
	hi default link NvimInvalidSingleQuote NvimInvalidStringQuote
	hi default link NvimInvalidSingleQuotedBody NvimInvalidStringBody
	hi default link NvimInvalidSingleQuotedQuote NvimInvalidStringSpecial
	hi default link NvimInvalidDoubleQuote NvimInvalidStringQuote
	hi default link NvimInvalidDoubleQuotedBody NvimInvalidStringBody
	hi default link NvimInvalidDoubleQuotedEscape NvimInvalidStringSpecial
	hi default link NvimInvalidDoubleQuotedUnknownEscape NvimInvalidValue
	hi default link NvimInvalidFigureBrace NvimInvalidDelimiter
	hi default link NvimInvalidSpacing ErrorMsg
	hi default link NvimDoubleQuotedUnknownEscape NvimInvalidValue

	" ### hlf_names[]
	hi clear TermCursorNC
	hi clear VisualNC
	hi clear NormalNC
	hi clear MsgArea
endif
