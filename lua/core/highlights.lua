local cmd = vim.cmd

-- Transparency | from LunarVim conf
cmd "au ColorScheme * hi Normal          ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi SignColumn      ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi NormalNC        ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi MsgArea         ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi TelescopeBorder ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi NvimTreeNormal  ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi EndOfBuffer     ctermbg=NONE guibg=NONE ctermfg=black guifg=black"
cmd "let &fcs='eob:  '"

-- Visual
cmd "au ColorScheme * hi Visual guifg='#999999' guibg='#303030' ctermbg=240"
cmd "au ColorScheme * hi Visual guifg='#999999' guibg='#303030' ctermbg=240"
cmd "au ColorScheme * hi TabLine guifg='#999999' guibg='#303030' ctermbg=240"


cmd "au ColorScheme * hi Pmenu ctermbg=NONE guibg=NONE"
cmd "au ColorScheme * hi Search guibg=NONE guifg='#CC241D'"
cmd "au ColorScheme * hi CursorLine ctermbg=NONE guibg='#101010'"

cmd "au ColorScheme * hi NeorgHeading1 guifg='#fabd2f'"
cmd "au ColorScheme * hi Comment cterm=italic gui=italic"
cmd "au ColorScheme * hi CursorLineConceal cterm=italic gui=italic guifg=comment"

cmd "au ColorScheme * hi VertSplit     ctermfg=black ctermbg=NONE guifg=black guibg=NONE"

cmd "au ColorScheme * hi TelescopeSelection      guifg=#909090 gui=bold " -- Selected item
cmd "au ColorScheme * hi TelescopeSelectionCaret guifg=#CC241D          " -- Selection caret
cmd "au ColorScheme * hi TelescopeMultiSelection guifg=#928374          " -- Multisections
cmd "au ColorScheme * hi TelescopeNormal         guibg=NONE             " -- Floating windows

cmd "au ColorScheme * hi Error             guifg='#CC241D' guibg=NONE"
cmd "au ColorScheme * hi ErrorMsg          guifg='#CC241D' guibg=NONE"
cmd "au ColorScheme * hi NvimInternalError guifg='#CC241D' guibg=NONE"

cmd "au ColorScheme * hi ColorColumn  guifg=white guibg=NONE ctermbg=NONE"
cmd "au ColorScheme * hi CursorColumn guifg=white guibg=NONE ctermbg=NONE"
cmd "au ColorScheme * hi TermCursor   guifg=white guibg=black ctermbg=NONE"
-- cmd "au ColorScheme * hi Todo         guifg='#fabd2f' guibg=black ctermbg=black"
