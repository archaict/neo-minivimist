local cmd = vim.cmd

-- Visual
cmd "au ColorScheme * hi Visual guifg='#999999' guibg='#303030' ctermbg=240"
cmd "au ColorScheme * hi Search guibg=NONE guifg='#CC241D'"
cmd "au ColorScheme * hi VertSplit     ctermfg=black ctermbg=NONE guifg=black guibg=NONE"
cmd "au ColorScheme * hi Error             guifg='#CC241D' guibg=NONE"
cmd "au ColorScheme * hi ErrorMsg          guifg='#CC241D' guibg=NONE"
cmd "au ColorScheme * hi NvimInternalError guifg='#CC241D' guibg=NONE"

