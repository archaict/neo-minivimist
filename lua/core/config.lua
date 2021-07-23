-- core.lua -- [ setting up local variables ] -----
local g = vim.g -- global variables
local o = vim.o -- global options
local b = vim.bo -- buffer -scoped options
local w = vim.wo -- windows-scoped options
local cmd = vim.cmd -- execute Vim commands
CACHE = vim.fn.stdpath "cache"
---------------------------------------------------
local config = require("core")

-- [ Initialize ] --------------------------------
if config.core.init then
    o.fileencoding = "utf-8" -- defaults for encoding
    o.fileformats = "unix,dos,mac" -- supported file formats
    o.nrformats = "octal"
    o.backspace = "indent,eol,start"
end
---------------------------------------------------

if config.core.mouse then
    o.mouse = "a" -- enable mouse support
end

-- [ User Interfaces ] ----------------------------
if config.core.colorscheme then
    o.termguicolors = true -- set those colors on your terminal
    g.colors_name = config.core.colorscheme
    cmd("autocmd TermOpen * setlocal nonumber norelativenumber") -- no nonsense
end

if config.core.dark_theme then
    o.background = "dark"
else
    o.background = "light"
end

if config.core.guifont then
    o.guifont = config.core.guifont .. ":h" .. config.core.guifont_size
end

if config.core.max_column then -- for those in the 80s
    o.colorcolumn = tostring(config.core.max_column)
end

if config.core.tabline == "toggle" then
    o.showtabline = 1 -- no need to see tablines
elseif config.core.tabline then
    o.showtabline = 2 -- no need to see tablines
else
    o.showtabline = 0 -- no need to see tablines
end

if config.core.cursorline then
    o.cursorline = true -- highlight the cursorline
end

-- normal command line size [1]
if config.core.command_screen_height then
    o.cmdheight = config.core.command_screen_height
end

if config.core.number then
    vim.opt.number = true
    o.numberwidth = 4 -- set number column width to 2 {default 4}
else
    vim.opt.number = false
    o.numberwidth = 4 -- set number column width to 2 {default 4}
end

if config.core.relative_number then
    vim.cmd("set rnu")
else
    vim.cmd("set nornu")
end

if config.core.statusline then
    o.laststatus = 2
    o.ruler = true -- show cursor position in statusline
else
    o.laststatus = 0 -- disable statusline
    o.ruler = false -- show cursor position in statusline
end

if config.core.bettersplits then
    o.splitbelow = true -- horizontal split to the bottom
    o.splitright = true -- vertical split to the right
end
---------------------------------------------------

---------------------------------------------------
if config.core.indentation then
    o.autoindent = true -- enable autoindent
    o.smartindent = true -- smarter indentation
end

if config.core.shifts > 0 then
    o.shiftround = true
    o.smarttab = true -- add those spaces and indentation
    o.shiftwidth = config.core.shifts -- smaller than most {default 4}
    o.tabstop = config.core.shifts -- smaller than most {default 4}
end

if config.core.show_spaces then
    vim.wo.list = true
    -- show_characters = 'tab:» ,trail:·,eol:↵,nbsp:⍽',
    vim.wo.listchars = config.core.show_characters
    vim.o.list = vim.wo.list
    vim.o.listchars = vim.wo.listchars
end

if config.core.tab_to_space then
    o.expandtab = true -- tab into spaces!!
end

if config.core.syntax then
    o.syntax = "enable" -- enable syntax highlighting
end

if config.core.completion then
    o.complete = "i"
    o.completeopt = "menuone,longest,preview"
    o.updatetime = 300 -- faster completion
    vim.cmd("set path+=**")
end

if config.core.highlights then
    o.hlsearch = true
    o.ignorecase = true -- ignore case letters on search
    o.incsearch = true
    o.showmatch = true -- highlight matching parenthesis
    o.smartcase = true -- ignore lowercase for the whole pattern
end
---------------------------------------------------

---------------------------------------------------
if not config.core.swap then
    b.swapfile = false -- don't use swapfile
else
    b.swapfile = true -- don't use swapfile
end

if config.core.undo then
    o.undofile = true -- enable undo file support
    o.undodir = config.core.undodir -- move undodir
end
---------------------------------------------------

---------------------------------------------------
if config.core.hide_buffers_on_change then
    o.hidden = true -- keep buffers hidden on change
end
---------------------------------------------------

---------------------------------------------------
if config.core.system_clipboard then
    o.clipboard = "unnamedplus" -- copy/paste to system clipboard
end
---------------------------------------------------

---------------------------------------------------
if config.core.shortmess then
    o.shortmess = "c"
end
---------------------------------------------------

---------------------------------------------------
if config.core.setup_terminal then
    o.shell = "/bin/zsh" -- default shell terminal
    o.ttimeout = true
    o.ttimeoutlen = 50
end

if config.core.smart_terminal then
    cmd("au! BufWinEnter,WinEnter term://* startinsert") -- auto INSERT mode in terminal
end
---------------------------------------------------

---------------------------------------------------
if config.core.show_command then
    o.showcmd = true
end

if config.core.show_mode then
    o.showmode = false -- those --INSERT-- on cmd
end
---------------------------------------------------

---------------------------------------------------
if config.core.sidescrolloff >= 0 then
    o.sidescrolloff = config.core.sidescrolloff
end

if not config.core.wrap then
    w.wrap = false -- do not wrap text around frame
else
    w.wrap = true -- wrap text around frame
end
---------------------------------------------------

---------------------------------------------------
if config.core.scrolloff then
    o.scrolloff = config.core.scrolloff -- add 'padding' on vertical scroll
end
---------------------------------------------------

if config.core.history > 0 then
    o.history = config.core.history
end

if config.core.popup then
    o.pumheight = config.core.popup_height
end

if config.core.timeout then
    o.timeout = true -- enable this if you use which-key
else
    o.timeout = false -- enable this if you use which-key
end
if config.core.wildmenu then
    o.wildmenu = true
    o.wildmode = "list:full"
end

if config.core.fold then
    o.foldexpr = config.core.fold_expr -- for those treesitter
    w.foldmethod = config.core.fold_method -- enable folding (default 'foldmarker')
end

-- Automation

if config.core.auto_read_on_change then
    o.autoread = true -- read again when changed out of vim
    cmd("au! FocusLost,WinLeave * :silent! noautocmd w") -- autoread on buffers
end

if config.core.auto_change_directory then
    o.autochdir = true -- auto change to current buffer dir
end

if config.core.auto_resize_splits then
    cmd("au! Vimresized * :wincmd =") -- resize splits when winresized
end

------ [ autocommands ] -------------------------------------------------------

if config.core.remember_cursor_position then
    cmd('au! BufLeave * silent! normal! m"') -- marking cursor position
    cmd('au! BufEnter * silent! normal! g`"') -- remember cursor position
    cmd('au! BufWritePre * silent! normal! m"') -- save cursor position on save
end

if config.core.remove_whitespaces then
    cmd("au! BufWritePre * :%s/\\s\\+$//e") -- remove trailing whitespaces
end
cmd("au! FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2")
-------------------------------------------------------------------------------

-- cmd("au! FileType fzf set laststatus=0 noshowmode noruler | autocmd BufLeave <buffer> set laststatus=2 showmode ruler")
-- cmd("au BufEnter * if expand('%:p:h') !~ '^/tmp' | silent! lcd %:p:h | endif") -- autochdir - create opts

------ [ management ] ---------------------------------------------------------
-- cmd("au! VimLeavePre * SessionSave codex")  -- autosave session on quit
-------------------------------------------------------------------------------

------ [ ftplugin ] -----------------------------------------------------------
if config.core.filetype then
    cmd "filetype on" -- enable ftplugin
    cmd "filetype plugin on" -- enable ftplugin
    cmd "filetype plugin indent on"
    cmd "set iskeyword+=-"
    cmd "set inccommand=split"
end
