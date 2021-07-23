-- core.lua -- [ setting up local variables ] -----
local g = vim.g      -- global variables
local o = vim.o      -- global options
local b = vim.bo     -- buffer -scoped options
local w = vim.wo     -- windows-scoped options
local cmd = vim.cmd  -- execute Vim commands
CACHE = vim.fn.stdpath 'cache'
---------------------------------------------------

-- [ Initialize ] --------------------------------
o.fileencoding = 'utf-8'            -- defaults for encoding
g.colors_name  = 'ayu-core'         -- your colorscheme
o.background   = 'dark'             -- bacground color
o.fileformats  = 'unix,dos,mac'     -- supported file formats
o.completeopt  = 'menuone,longest,preview'
o.nrformats    = 'octal'
o.backspace    = 'indent,eol,start'
o.complete     = 'i'
o.shell        = '/bin/zsh'        -- default shell terminal
o.clipboard    = 'unnamedplus'     -- copy/paste to system clipboard
---------------------------------------------------

-- [ Neovim GUI ] ---------------------------------
o.guifont       = 'Iosevka SS08 Semibold:h12' -- Iosevka your font!
o.showtabline   = 2            -- no need to see tablines
o.cursorline    = true         -- highlight the cursorline
o.termguicolors = true         -- set those colors on your terminal
-- o.colorcolumn  = '99999'      -- for those in the 80s
---------------------------------------------------

-- [ Neovim UI ] ----------------------------------
b.swapfile     = false        -- don't use swapfile
o.autoindent   = true         -- enable autoindent
-- o.autoread     = true
-- o.autochdir    = true         -- auto change to current buffer dir
o.cmdheight    = 1            -- change for bigger command line
o.expandtab    = true         -- tab into spaces!!
o.foldexpr     = ''           -- for those treesitter
o.hidden       = true         -- keep buffers hidden on change
o.history      = 5000
o.hlsearch     = true
o.ignorecase   = true         -- ignore case letters on search
o.incsearch    = true
o.laststatus   = 2
o.list         = true
o.number       = true         -- enable numbering / relative?
o.numberwidth  = 4            -- set number column width to 2 {default 4}
o.pumheight    = 10           -- pop up menu height
o.ruler        = true
o.scrolloff    = 10           -- add 'padding' on vertical scroll
o.sidescrolloff= 4            -- add 'side-padding' on horz scrolling
o.shiftround   = true
o.shiftwidth   = 2            -- smaller than most {default 4}
o.showcmd      = true
o.showmatch    = true         -- highlight matching parenthesis
o.showmode     = false        -- those --INSERT-- on cmd
o.smartcase    = true         -- ignore lowercase for the whole pattern
o.smarttab     = true         -- add those spaces and indentation
o.smartindent  = true         -- smarter indentation
o.splitbelow   = true         -- orizontal split to the bottom
o.splitright   = true         -- vertical split to the right
o.syntax       = 'enable'     -- enable syntax highlighting
o.tabstop      = 2            -- smaller than most {default 4}
o.ttimeout     = true
o.ttimeoutlen  = 50
o.updatetime   = 300          -- faster completion
o.wildmenu     = true
o.wildmode     = 'list:full'

o.mouse        = 'a'          -- enable mouse support
o.timeout      = true         -- disable this if you use which-key

w.wrap = true                 -- wrap text around frame
w.number = true               -- show line number
w.foldmethod = 'marker'       -- enable folding (default 'foldmarker')

o.undofile = true             -- enable undo file support
o.undodir  = CACHE .. '/undo' -- move undodir
---------------------------------------------------

------ [ autocommands ] -------------------------------------------------------
cmd('au! Vimresized * :wincmd =')           -- resize splits when winresized
cmd('au! BufLeave * silent! normal! m"')    -- marking cursor position
cmd('au! BufEnter * silent! normal! g`"')   -- remember cursor position
cmd('au! BufWritePre * silent! normal! m"') -- save cursor position on save
-- cmd('au! BufWinEnter,WinEnter term://* startinsert') -- auto INSERT mode in terminal
cmd('autocmd TermOpen * setlocal nonumber norelativenumber') -- no nonsense
cmd('au! FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2')
-- cmd("au! FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler")
-- cmd("au BufEnter * if expand('%:p:h') !~ '^/tmp' | silent! lcd %:p:h | endif") -- autochdir - create opts
-------------------------------------------------------------------------------

------ [ management ] ---------------------------------------------------------
cmd("au! BufWritePre * :%s/\\s\\+$//e")     -- remove trailing whitespaces
-- cmd("au! VimLeavePre * SessionSave codex")  -- autosave session on quit
cmd('au! FocusLost,WinLeave * :silent! noautocmd w') -- autoread on buffers
-------------------------------------------------------------------------------

------ [ ftplugin ] -----------------------------------------------------------
cmd "filetype on"             -- enable ftplugin
cmd "filetype plugin on"      -- enable ftplugin
cmd "filetype plugin indent on"
cmd "set iskeyword+=-"
cmd "set inccommand=split"
