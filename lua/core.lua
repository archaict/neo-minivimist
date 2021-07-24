-- Core Lua
-- Welcome to opinionated configuration files for vim this is a minimalist
-- version of my original configuratio hopefully without plugins and use all
-- vim internals. READ INSTRUCTION BELOW TO CHANGE CONFIGURATIONS!

local M = {}
local codex = M

  -- [ CORE ]
  -- These are core configurations that you can change any suggestion
  -- is welcome. ( I'm not good with gits, so you might want to send it into
  -- the discussion page ). To enable stuff, just write true, and to disable
  -- just comment false in their respective field.
  -- [ bool ] : fills with boolean value, true or false
  -- [ intg ] : integers, fills with postive number or 0
  -- [ strg ] : strings, use quotation marks, exm: "hello world"

codex.core = { -- [ Core configuration defaults ] ------------------------------
--///////////////////// [ START OF CORE CONFIGURATIONS ] /////////////////////--
-- [ Essentials ] --------------------------------------------------------------
    init  = true,                 -- [ bool ] essentials
    mouse = true,                 -- [ bool ] enable or disable mouse
    timeout = 1000,               -- [ intg ] fill this for whichkey
--------------------------------------------------------------------------------

-- [ Syntaxes ] ----------------------------------------------------------------
    syntax = true,                -- [ bool ] enable syntaxes
    completion = true,            -- [ bool ] enable completion
--------------------------------------------------------------------------------

-- [ Themes ] ------------------------------------------------------------------
    colorscheme = "ayu",          -- [ strg ] your colorscheme
    dark_theme = true,            -- [ bool ] enable dark_mode
    transparency = true,          -- [ bool ] enable transparency
--------------------------------------------------------------------------------

-- [ Fonts ] -------------------------------------------------------------------
    guifont = 'Iosevka SS08 Semibold', -- [ strg ] font type
    guifont_size = '12',          -- [ strg ] font size TODO > to integers
    comment_style = 'italic',     -- [ strg ] italic / bold / none
--------------------------------------------------------------------------------

-- NOTE: Color is not all implemented like below, but if people wants it, then
-- it can be implemented in [ config.lua ]. It is written as below to be easily
-- defined

-- [ Lines ] -------------------------------------------------------------------
------ [ Tabline ] -------------------------------------------------------------
    tabline = 'toggle',            -- [ strg ] [ bool ] true | false | toggle
    tabline_colorize = false,      -- [ bool ] enable to change color
---------- [ Tabline Color ] ---------------------------------------------------
-- This is an example as of how to change each table, you can fill it out, or
-- use default by disabling tabline_colorize. Change tabline to tabline_fill
-- tabline_selected as you wish, to use all, just copy and paste code below and
-- fill the others!
    -- tabline = { -- change to tabline | tabline_fill | tabline_selected
    --   cfg = 'NONE', cbg = 'NONE', cstyle = 'italic',
    --   fg = '#101010', bg = '#707070', style = 'italic',
    -- }, -- end of tabline_colorize
------ [ Column ] --------------------------------------------------------------
    max_column = 80,               -- [ intg ] change to 0 to disable
    cursorline = true,             -- [ bool ] enable cursorline
    bettersplits = true,           -- [ bool ] splits below and right
---------- [ Column Color ] ----------------------------------------------------
-- If this should be written as above
    column_color = 'guibg=#303030', -- [ strg ] only bg_color can be changed
    cursorline_color = 'guibg=#303030', -- [ strg ] same as above
--------------------------------------------------------------------------------

-- [ StatusLine ] --------------------------------------------------------------
    history = 5000,                -- [ intg ] enable command history
    show_mode = true,              -- [ bool ] show active mode
    statusline = true,             -- [ bool ] enable bottom statusline
    show_command = true,           -- [ bool ] show commands
    command_screen_height = 1,     -- [ intg ] height for commands
--------------------------------------------------------------------------------

-- [ Numbers ] -----------------------------------------------------------------
    number = true,
    relative_number = true,
--------------------------------------------------------------------------------

-- [ Terminals ] ---------------------------------------------------------------
    terminal_shell = "/bin/zsh",   -- [ strg ] initialize terminal
    smart_terminal = true,         -- [ bool ] smarter terminal mode
--------------------------------------------------------------------------------

-- [ Highlights ] --------------------------------------------------------------
    wildmenu = true,               -- [ bool ] enable wildmenu
    highlights = true,             -- [ bool ] enable highlights option
--------------------------------------------------------------------------------

-- [ Shiftings ] ---------------------------------------------------------------
    wrap = true,                   -- [ bool ] wrap text around window
    shifts = 2,                    -- [ bool ] shifts amount for tabs
    indentation = true,            -- [ bool ] all indentation stuff
--------------------------------------------------------------------------------

-- [ Spaces ] ------------------------------------------------------------------
    show_spaces = true,            -- [ bool ] show spaces
    tab_to_space = true,           -- [ bool ] change tab to spaces | expandtab
    show_characters = 'tab:» ,trail:·', -- [ strg ]
--------------------------------------------------------------------------------

-- [ Clipboard ] ---------------------------------------------------------------
    system_clipboard = true,       -- [ bool ] enable system clipboard
--------------------------------------------------------------------------------

-- [ Restore ] -----------------------------------------------------------------
    swap  = false,                 -- [ bool ] enable swaps
    undo  = true,                  -- [ bool ] enable undofile & dirs
    undodir  = '/undo',            -- [ strg ] undodir location in 'cache' dirs
--------------------------------------------------------------------------------

-- [ NO-MESS ] -----------------------------------------------------------------
    shortmess = false,             -- [ bool ] FIXME still on-progress
--------------------------------------------------------------------------------

-- [ Folds ] -------------------------------------------------------------------
    fold = true,                   -- [ bool ] edit in config.lua
    fold_expr = '',                -- [ strg ] custom fold expressions
    fold_method = 'marker',        -- [ strg ] method used for folds
--------------------------------------------------------------------------------

-- [ Scrolls ] -----------------------------------------------------------------
    scrolloff = 10,                -- [ bool ] scroll offside verticals
    sidescrolloff= 4,              -- [ bool ] scroll offside horizontals
--------------------------------------------------------------------------------

-- [ Pop-Up ] ------------------------------------------------------------------
  -- popup = true,                -- [ bool ] enable popup
  -- popup_height = 10,           -- [ strg ] pmenu height
--------------------------------------------------------------------------------

-- [ Sessions ] ----------------------------------------------------------------
    -- autosave = true,           -- [ bool ] save session on quit
    session_dir = "~/.local/share/nvim/sessions", -- [ strg ] dirs
    session_path = "~/.local/share/nvim/sessions/obsessed", -- [ strg ]
--------------------------------------------------------------------------------

-- [ Automate it! ] ------------------------------------------------------------
    auto_read_on_change = true,     -- [ bool ] autoread on changes
    auto_change_directory = true,   -- [ bool ] autochdir
    auto_resize_splits = true,      -- [ bool ] refresh on vim resize
    hide_buffers_on_change = true,  -- [ bool ] hides instead of kills
    remove_whitespaces = true,      -- [ bool ] remove trails on save
    remember_cursor_position =true, -- [ bool ] mark cursors on quit
--------------------------------------------------------------------------------

-- [ Filetype ] ----------------------------------------------------------------
    filetype = true,              -- [ bool ] enable filetype plugins
--------------------------------------------------------------------------------
--////////////////////// [ END OF CORE CONFIGURATIONS ] //////////////////////--
} ------------------------------------------------------------------------------

-- [ Keymaps ]
-- Some keymaps are annoying o binds, especially those leader key, there're
-- multiple fixme in here! #FIXME if you also notice, there's no codex
-- prefixes here, this idea is taken from nvim_like_me. Check them out!

Keymaps = { -- [ Core keymaps defaults ] ---------------------------------------

 -- 'autopairs',                 -- Closing the brackets, disable if annoying
    'essentials',                -- Needed to reduce annoyance
    'movement',                  -- Movementes in NVI mode
    'shifting',                  -- Indentation and up down
    'tabs',                      -- Moving between tabs
    'buffers',                   -- Moving between buffers
    'sessions',                  -- Session management
    'terminal',                  -- Terminal movements
    'window',                    -- Navigate splits
    'quit',                      -- Do you need more desc?
    'netrw',                     -- Navigation from netrw

} --------------------------------------- [ KM ] -------------------------------

  -- [ Modules ]
  -- This is builtins, tho you can add more by using plugins, I didn't include
  -- those for this one, but you can add it later, I recommend you read two
  -- plugin manager, packer and paq
  -- Use boolean value to configure: true | false

codex.modules = { -- [ Core keymaps defaults ] ---------------------------------

  -- [ Netrw ]
  -- Since this one is builtins, why not use this one? disable this if you want
  -- to use NerdTree or NvimTree.
  netrw = true; -- enable netrw config

  -- [ Tpope Plugins]
  -- I only use some that I used daily, you might want to add more depending on
  -- your usage. Complete-ing your vim experiences!
  tpope = true; -- enable tpope module
} --------------------------------------- [ MD ] -------------------------------

return codex
