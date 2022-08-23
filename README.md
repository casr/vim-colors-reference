reference.vim
=============

A colour scheme that tries to replicate Vim's default. Effectively it
should be a no-op or equivalent to:

```vim
highlight clear
syntax reset
```


Why?
----

Making a colour scheme is time-consuming enough without having to go
hunting for what the default highlight groups are.


How to trigger various highlight groups
---------------------------------------

| Highlight group    | When it’s used                                                                         |
|--------------------|----------------------------------------------------------------------------------------|
| `Normal`           | main background and text colour                                                        |
| `Directory`        | `:Ex /`                                                                                |
| `EndOfBuffer`      | the tildes at the end of the buffer                                                    |
| `ErrorMsg`         | `:echoerr 'My error'`                                                                  |
| `VertSplit`        | open a vertical split and see the bar                                                  |
| `IncSearch`        | `set incsearch` and then `:%s/mysearch` it will highlight as you type                  |
| `LineNr`           | the numbers after `:set number`                                                        |
| `LineNrAbove`      | `:set number relativenumber`. Numbers above current line are styled this way           |
| `LineNrBelow`      | `:set number relativenumber`. Numbers below current line are styled this way           |
| `CursorLineNr`     | same as `LineNr` but specific to the line the cursor is on                             |
| `MatchParen`       | a matching pair of brackets                                                            |
| `ModeMsg`          | enter insert mode to see the style                                                     |
| `MoreMsg`          | view the output of a command like `:hi` or `:map`                                      |
| `NonText`          | `:set nowrap`, write a long line and the character that shows at the end of the screen |
| `Pmenu`            | enter insert mode, type a letter and then press C-n                                    |
| `PmenuSel`         | as above, selected item                                                                |
| `PmenuSbar`        | as above, scroll bar                                                                   |
| `PmenuThumb`       | as above, scroll bar position                                                          |
| `Question`         | `:!ls` (the hit-enter prompt)                                                          |
| `QuickFixLine`     | `:vimgrep 'a' %:h/**`, `:copen`, `<CR>`. Highlights line                               |
| `Search`           | `/Search`                                                                              |
| `CurSearch`        | `/Search`. The current match is styled this way                                        |
| `SpecialKey`       | `:set list` or `:map`                                                                  |
| `StatusLine`       | `:set laststatus=2`, active status bar                                                 |
| `StatusLineNC`     | `:sp`, inactive status bar                                                             |
| `TabLine`          | `:tabnew`, inactive tab colour and close button                                        |
| `TabLineFill`      | the space between tabs and the right-hand side                                         |
| `TabLineSel`       | selected tab                                                                           |
| `Title`            | the number in a tab when it has more than one window                                   |
| `Visual`           | `V`                                                                                    |
| `WarningMsg`       | perform a search then let it wrap                                                      |
| `VisualNOS`        | when Vim loses the X selection but is still in visual mode                             |
| `DiffAdd`          | `vim -d /tmp/a /tmp/b`                                                                 |
| `DiffChange`       | as above                                                                               |
| `DiffDelete`       | as above                                                                               |
| `DiffText`         | as above, this is the text that changed in DiffChange line                             |
| `Folded`           | how a fold looks                                                                       |
| `FoldColumn`       | how fold areas are displayed in the fold column                                        |
| `CursorLineFold`   | fold column style when `:set cursorline` is active                                     |
| `ToolbarLine`      | ???                                                                                    |
| `ToolbarButton`    | ???                                                                                    |
| `SpellBad`         | `:set spell spelllang=en_gb`, teh                                                      |
| `SpellCap`         | as above, start sentence without a capital                                             |
| `SpellLocal`       | as above, color vs colour                                                              |
| `SpellRare`        | ?                                                                                      |
| `ColorColumn`      | `:set colorcolumn=80`                                                                  |
| `CursorColumn`     | `:set cursorcolumn`                                                                    |
| `CursorLine`       | `:set cursorline`                                                                      |
| `Comment`          | based on a language's syntax file                                                      |
| `Constant`         | based on a language's syntax file                                                      |
| `Special`          | based on a language's syntax file                                                      |
| `Identifier`       | based on a language's syntax file                                                      |
| `Statement`        | based on a language's syntax file                                                      |
| `PreProc`          | based on a language's syntax file                                                      |
| `Type`             | based on a language's syntax file                                                      |
| `Underlined`       | based on a language's syntax file                                                      |
| `Ignore`           | based on a language's syntax file                                                      |
| `Error`            | based on a language's syntax file                                                      |
| `Todo`             | based on a language's syntax file                                                      |
| `WildMenu`         | `:e /<Tab>`                                                                            |
| `Conceal`          | `:set conceallevel=1`, write out a link in Markdown                                    |
| `SignColumn`       | `:set signcolumn=yes`                                                                  |
| `CursorLineSign`   | sign column style when `:set cursorline` is active                                     |
| `StatusLineTerm`   | `:terminal`                                                                            |
| `StatusLineTermNC` | as above but not the current window, `<Esc><C-w><C-w>`                                 |


See also
--------

  - [vim:src/highlight.c](https://github.com/vim/vim/blob/471c0fa3ee/src/highlight.c#L129)
  - [vim:runtime/syntax/syncolor.vim](https://github.com/vim/vim/blob/ebdf3c964a/runtime/syntax/syncolor.vim)
  - [vim:src/optiondefs.h](https://github.com/vim/vim/blob/adce965162/src/optiondefs.h#L293)
  - [casr/vim-colors-normalise](https://github.com/casr/vim-colors-normalise)
  - [casr/vim-colors-chromatine](https://github.com/casr/vim-colors-chromatine)
