-- core.lua -- [ setting up local variables ] ------------
-- This file is polluted with many functions, for
-- more info, you can check configuration.lua, it
-- is basically same, but this file is used for
-- options. If you want to remove this one, you
-- can delete the codex.core part in [ core.lua ]!
----------------------------------------------------------
local g = vim.g -- global variables
local o = vim.o -- global options
local b = vim.bo -- buffer -scoped options
local w = vim.wo -- windows-scoped options
local cmd = vim.cmd -- execute Vim commands
CACHE = vim.fn.stdpath "cache"
---------------------------------------------------------
local config = require("core")

-- FIXME : Recategorize or do something about this mess.

-- [ Initialize ] ---------------------------------------
if config.core.init then
    o.fileencoding = "utf-8"       -- defaults for encoding
    o.fileformats = "unix,dos,mac" -- supported file formats
    o.nrformats = "octal"
    o.backspace = "indent,eol,start" -- the originial BS!
end
----------------------------------------------------------

if config.core.mouse then
    o.mouse = "a" -- enable mouse support
end

-- [ User Interfaces ] -----------------------------------
if config.core.colorscheme then
    o.termguicolors = true -- set those colors on your terminal
    g.colors_name = config.core.colorscheme
end

if config.core.dark_theme then
    o.background = "dark"
else
    o.background = "light"
end

if config.core.guifont then
    o.guifont = config.core.guifont .. ":h" .. config.core.guifont_size
end

if config.core.comment_style == "italic" then
    cmd "au ColorScheme * hi Comment cterm=italic gui=italic"
elseif config.core.comment_style == "bold" then
    cmd "au ColorScheme * hi Comment cterm=bold gui=bold"
elseif config.core.comment_style == "none" then
    cmd "au ColorScheme * hi Comment cterm=none gui=none"
end

if not config.core.max_column then -- for those in the 80s
    o.colorcolumn = ""
  else
    o.colorcolumn = tostring(config.core.max_column)
end

if config.core.column_color then -- for those in the 80s
    cmd("au ColorScheme * hi ColorColumn " .. config.core.column_color)
end

if not config.core.tabline then
    o.showtabline = 0 -- show tablines
  elseif config.core.tabline == 'toggle' then
    o.showtabline = 1 -- toggle tablines
  else
    o.showtabline = 2 -- no need to see tablines
end


if not config.core.tabline_colorize then

  cmd([[
    au ColorScheme * hi Tabline     cterm=none ctermfg=none ctermbg=none
    au ColorScheme * hi Tabline     gui=none guifg=#909090 guibg=#14191F
    au ColorScheme * hi TablineFill cterm=none ctermfg=none ctermbg=none
    au ColorScheme * hi TablineFill gui=none guifg=#909090 guibg=none
    au ColorScheme * hi TablineSel  cterm=none ctermfg=none ctermbg=none
    au ColorScheme * hi TablineSel  gui=italic guifg=#dddddd guibg=#404040
  ]])

end

if config.core.tabline_colorize and config.core.tabline_normal then
    cmd( "au ColorScheme * hi TabLine " ..
    "cterm="   .. config.core.tabline_normal.cstyle .. " " ..
    "ctermfg=" .. config.core.tabline_normal.cfg .. " " ..
    "ctermbg=" .. config.core.tabline_normal.cbg .. " " ..
    "gui="   .. config.core.tabline_normal.style .. " " ..
    "guifg=" .. config.core.tabline_normal.fg .. " " ..
    "guibg=" .. config.core.tabline_normal.bg
    )
end

if config.core.tabline_colorize and config.core.tabline_fill then
    cmd( "au ColorScheme * hi TabLineFill " ..
    "cterm="   .. config.core.tabline_fill.cstyle .. " " ..
    "ctermfg=" .. config.core.tabline_fill.cfg .. " " ..
    "ctermbg=" .. config.core.tabline_fill.cbg .. " " ..
    "gui="   .. config.core.tabline_fill.style .. " " ..
    "guifg=" .. config.core.tabline_fill.fg .. " " ..
    "guibg=" .. config.core.tabline_fill.bg
    )
end

if config.core.tabline_colorize and config.core.tabline_selected then
    cmd( "au ColorScheme * hi TabLineSel " ..
    "cterm="   .. config.core.tabline_selected.cstyle .. " " ..
    "ctermfg=" .. config.core.tabline_selected.cfg .. " " ..
    "ctermbg=" .. config.core.tabline_selected.cbg .. " " ..
    "gui="   .. config.core.tabline_selected.style .. " " ..
    "guifg=" .. config.core.tabline_selected.fg .. " " ..
    "guibg=" .. config.core.tabline_selected.bg
    )
end

if config.core.cursorline then
    o.cursorline = true -- highlight the cursorline
    cmd "au ColorScheme * hi CursorLine ctermbg=NONE guibg='#101010'"
  else
    o.cursorline = false -- highlight the cursorline
end
if not config.core.cursorline_color then
    cmd("au ColorScheme * hi CursorLine guibg=none ctermbg=none")
  else
    cmd("au ColorScheme * hi CursorLine " .. config.core.cursorline_color)
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

if config.core.sign_column then
    vim.cmd("set signcolumn=yes:"
    .. config.core.sign_column_width ..
    " ")
  else
    vim.cmd("set signcolumn=no")
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
----------------------------------------------------------

----------------------------------------------------------
if config.core.indentation then
    o.autoindent = true -- enable autoindent
    o.smartindent = true -- smarter indentation
end

if not config.core.shifts then
    o.shiftround = true
    o.smarttab = true -- add those spaces and indentation
    o.shiftwidth = 2 -- smaller than most {default 4}
    o.tabstop = 2 -- smaller than most {default 4}
else
    o.shiftround = true
    o.smarttab = true -- add those spaces and indentation
    o.shiftwidth = config.core.shifts -- smaller than most {default 4}
    o.tabstop = config.core.shifts -- smaller than most {default 4}
end

if config.core.show_spaces then
    vim.wo.list = true
    -- show_characters = 'tab:?? ,trail:??,eol:???,nbsp:???',
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

if config.core.fuzzy then
  vim.cmd([[
  set path=$PWD/**
  set wildignore+=**/.git/**,**/__pycache__/**,**/venv/**
  set wildignore+=**/node_modules/**,**/dist/**,**/build/**,*.o,*.pyc,*.swp
  set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
  set wildignore+=*.pdf,*.psd
  ]])
end

----------------------------------------------------------

----------------------------------------------------------
if not config.core.swap then
    b.swapfile = false -- don't use swapfile
else
    b.swapfile = true -- don't use swapfile
end

if config.core.undo then
    o.undofile = true -- enable undo file support
    o.undodir = vim.fn.stdpath 'cache' .. config.core.undodir
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.hide_buffers_on_change then
    o.hidden = true -- keep buffers hidden on change
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.system_clipboard then
    o.clipboard = "unnamedplus" -- copy/paste to system clipboard
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.shortmess then
    o.shortmess = "c"
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.terminal_shell then
    o.shell = config.core.terminal_shell -- default shell terminal
    o.ttimeout = true
    o.ttimeoutlen = 50
end
if not config.core.terminal_number then
    -- This one is to set no number on terminal
    cmd("autocmd TermOpen * setlocal nonumber norelativenumber")
  else
    -- Do you think so?
    cmd("autocmd TermOpen * setlocal number")
end

if config.core.smart_terminal then
    cmd("au! BufWinEnter,WinEnter term://* startinsert") -- auto INSERT mode in terminal
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.show_command then
    o.showcmd = true
end

if config.core.show_mode then
    o.showmode = true -- those --INSERT-- on cmd
end
----------------------------------------------------------

----------------------------------------------------------
if not config.core.sidescrolloff then
    o.sidescrolloff = 8
	else
    o.sidescrolloff = config.core.sidescrolloff
end

if not config.core.wrap then
    w.wrap = false -- do not wrap text around frame
	else
    w.wrap = true -- wrap text around frame
end
----------------------------------------------------------

----------------------------------------------------------
if config.core.scrolloff then
    o.scrolloff = config.core.scrolloff -- add 'padding' on vertical scroll
end
----------------------------------------------------------

if config.core.history then
    o.history = config.core.history
end

if config.core.popup then -- TODO: Check if its supported wihtout plugins
    o.pumheight = config.core.popup_height
end

if config.core.timeout then
    o.timeout = true  -- enable this if you use which-key
    o.timeoutlen = config.core.timeout
else
    o.timeout = false -- disable | this one is optional
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
    cmd("au BufEnter * if expand('%:p:h') !~ '^/tmp' | silent! lcd %:p:h | endif") -- autochdir
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
  cmd("set sessionoptions-=options")
end
-------------------------------------------------------------------------------

------ [ management ] ---------------------------------------------------------
if config.core.auto_save_session then
  local session = config.core.session_dir
  local session_name = config.core.session_name
  cmd("set sessionoptions-=options")
  cmd("silent! !mkdir -p " .. session )
  cmd("au! VimLeavePre * mks! " .. session .. session_name)
end

if config.core.auto_load_session then
  local session = config.core.session_dir
  local session_name = config.core.session_name
  cmd([[
    fu! RestoreSess()
      if filereadable(expand( ']] .. session .. session_name .. [[' ))
        execute 'source ]] .. session .. session_name .. [['
        if bufexists(1)
          for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
              exec 'sbuffer ' . l
            endif
          endfor
        endif
      endif
    endfunction
    au VimEnter * nested :call RestoreSess()
  ]])
end

-------------------------------------------------------------------------------

------ [ Transparency ] -------------------------------------------------------
if config.core.transparency then
  -- Transparency | from LunarVim conf
  cmd ([[
   "augroup transparency
   "  autocmd!
      au ColorScheme * hi Normal      ctermbg=NONE guibg=NONE
      au ColorScheme * hi Pmenu       ctermbg=NONE guibg=NONE
      au ColorScheme * hi SignColumn  ctermbg=NONE guibg=NONE
      au ColorScheme * hi NormalNC    ctermbg=NONE guibg=NONE
      au ColorScheme * hi MsgArea     ctermbg=NONE guibg=NONE
      au ColorScheme * hi EndOfBuffer ctermbg=NONE guibg=NONE ctermfg=black guifg=#404040
   "augroup END
  ]])
else
  cmd ([[
    au ColorScheme * hi Normal      ctermbg=NONE guibg=#0F1419
    au ColorScheme * hi Pmenu       ctermbg=NONE guibg=#0F1419
    au ColorScheme * hi SignColumn  ctermbg=NONE guibg=#0F1419
    au ColorScheme * hi NormalNC    ctermbg=NONE guibg=#0F1419
    au ColorScheme * hi MsgArea     ctermbg=NONE guibg=#0F1419
  ]])
  -- EoS
end

if config.core.remove_eob then
  cmd "set fcs=eob:\\ "   -- remove whitespaces
  cmd "let &fcs='eob: '"
end
-------------------------------------------------------------------------------
------ [ ftplugin ] -----------------------------------------------------------
if config.core.filetype then
    cmd "filetype on" -- enable ftplugin
    cmd "filetype plugin on" -- enable ftplugin
    cmd "filetype plugin indent on"
    cmd "set iskeyword+=-"
    cmd "set inccommand=split"
end

------ [ reload ] -------------------------------------------------------------

if config.core.reload_config then
  map ( 'n' , '<space>hr', ':lua reload_config{}<cr>', { noremap = true} )
  function reload_config()
    vim.cmd "source ~/.config/nvim/init.lua"
    vim.cmd "source ~/.config/nvim/lua/core/binds.lua"
    vim.cmd "echomsg 'Neo-Minivimist Reloaded!'"
  end
end
