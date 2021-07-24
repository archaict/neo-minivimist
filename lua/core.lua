-- Core Lua
-- Welcome to opinionated configuration files for vim this is a minimalist
-- version of my original configuratio hopefully without plugins and use all
-- vim internals.

local M = {}
local codex = M

  -- [ CORE ]
  -- These are core configurations that you can change any suggestion
  -- is welcome. ( I'm not good with gits, so you might want to send it into
  -- the discussion page ).

codex.core = { -- [ Core configuration defaults ] -----------------------------

-- [ Essentials ] -------------------------------------------------------------
    init  = true,                 -- essentials
    mouse = true,                 -- enable or disable mouse
    timeout = 1000,               -- fill this for whichkey
-------------------------------------------------------------------------------

-- [ Syntaxes ] ---------------------------------------------------------------
    syntax = true,                -- enable syntaxes
    completion = true,            -- enable completion
-------------------------------------------------------------------------------

-- [ Themes ] -----------------------------------------------------------------
    colorscheme = "ayu",          -- your colorscheme
    dark_theme = true,            -- enable dark_mode
    transparency = true,
-------------------------------------------------------------------------------

-- [ Fonts ] ------------------------------------------------------------------
    guifont = 'Iosevka SS08 Semibold', -- font type
    guifont_size = '12',          -- font size
    comment_style = 'italic',     -- italic / bold / none
-------------------------------------------------------------------------------

-- NOTE: Color is not all implemented like below, but if people wants it, then
-- it can be implemented in [ config.lua ]. It is written as below to be easily
-- defined

-- [ Lines ] ------------------------------------------------------------------
------ [ Tabline ] ------------------------------------------------------------
    tabline = 'toggle',              -- enable tab in top
    tabline_colorize = false,        -- enable to change color
---------- [ Tabline Color ] --------------------------------------------------
-- This is an example as of how to change each table, you can fill it out, or
-- use default by disabling tabline_colorize. Change tabline to tabline_fill
-- tabline_selected as you wish, to use all, just copy and paste code below and
-- fill the others!
    -- tabline = { -- change to tabline | tabline_fill | tabline_selected
    --   cfg = 'NONE', cbg = 'NONE', cstyle = 'italic',
    --   fg = '#101010', bg = '#707070', style = 'italic',
    -- }, -- end of tabline_colorize
------ [ Column ] -------------------------------------------------------------
    max_column = 0,              -- change to 0 to disable, hi max_column
    cursorline = true,            -- enable cursorline
    bettersplits = true,          -- splits below and right
---------- [ Column Color ] ---------------------------------------------------
-- If this should be written as above
    column_color = 'guibg=#303030', -- only bg_color can be changed
    cursorline_color = 'guibg=#303030', -- same as above
-------------------------------------------------------------------------------

-- [ StatusLine ] -------------------------------------------------------------
    history = 5000,
    show_mode = true,             -- show active mode
    statusline = true,            -- enable bottom statusline
    show_command = true,          -- show commands
    command_screen_height = 1,    -- height for commands
-------------------------------------------------------------------------------

-- [ Numbers ] ----------------------------------------------------------------
    number = true,
    relative_number = true,
-------------------------------------------------------------------------------

-- [ Terminals ] --------------------------------------------------------------
    terminal_shell = "/bin/zsh",  -- initialize terminal
    smart_terminal = true,        -- smarter terminal mode
-------------------------------------------------------------------------------

-- [ Highlights ] -------------------------------------------------------------
    wildmenu = true,
    highlights = true,
-------------------------------------------------------------------------------

-- [ Shiftings ] --------------------------------------------------------------
    wrap = true,                 -- wrap text around window
    shifts = 2,                  -- shifts amount for tabs
    indentation = true,          -- all indentation stuff
-------------------------------------------------------------------------------

-- [ Spaces ] -----------------------------------------------------------------
    show_spaces = true,
    tab_to_space = true,
    show_characters = 'tab:» ,trail:·',
-------------------------------------------------------------------------------

-- [ Clipboard ] --------------------------------------------------------------
    system_clipboard = true,
-------------------------------------------------------------------------------

-- [ Restore ] ----------------------------------------------------------------
    swap  = false,
    undo  = true,                -- enable undofile & dirs
    undodir  = '/undo',          -- undodir location in 'cache' directory
-------------------------------------------------------------------------------

-- [ NO-MESS ] ----------------------------------------------------------------
    shortmess = false,            -- FIXME still on-progress
-------------------------------------------------------------------------------

-- [ Folds ] ------------------------------------------------------------------
    fold = true,                 -- edit in config.lua
    fold_expr = '',              -- custom fold expressions
    fold_method = 'marker',      -- method used for folds
-------------------------------------------------------------------------------

-- [ Scrolls ] ----------------------------------------------------------------
    scrolloff = 10,              -- scroll offside verticals
    sidescrolloff= 4,            -- scroll offside horizontals
-------------------------------------------------------------------------------

-- [ Pop-Up ] -----------------------------------------------------------------
  -- popup = true,                -- enable popup
  -- popup_height = 10,           -- pmenu height
-------------------------------------------------------------------------------

-- [ Sessions ] ---------------------------------------------------------------
    -- autosave = true,            -- save session on quit
    session_dir = "~/.local/share/nvim/sessions", -- dirs
    session_path = "~/.local/share/nvim/sessions/obsessed",
-------------------------------------------------------------------------------

-- [ Automate it! ] -----------------------------------------------------------
    auto_read_on_change = true,    -- autoread on changes
    auto_change_directory = true,  -- autochdir
    auto_resize_splits = true,     -- refresh on vim resize
    hide_buffers_on_change = true, -- hides instead of kills
    remove_whitespaces = true,     -- remove trails on save
    remember_cursor_position =true, -- mark cursors on quit
-------------------------------------------------------------------------------

-- [ Filetype ] ---------------------------------------------------------------
    filetype = true,
-------------------------------------------------------------------------------

} -----------------------------------------------------------------------------

  -- [ Keymaps ]
  -- Some keymaps are annoying o binds, especially those leader key, there're
  -- multiple fixme in here! #FIXME if you also notice, there's no codex
  -- prefixes here, this idea is taken from nvim_like_me. Check them out!

Keymaps = { -- [ Core keymaps defaults ] --------------------------------------

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

} --------------------------------------- [ KM ] ------------------------------

  -- [ Modules ]
  -- This is builtins, tho you can add more by using plugins, I didn't include
  -- those for this one, but you can add it later, I recommend you read two
  -- plugin manager, packer and paq

codex.modules = { -- [ Core keymaps defaults ] --------------------------------

  -- [ Netrw ]
  -- Since this one is builtins, why not use this one? disable this if you want
  -- to use NerdTree or NvimTree.
  netrw = true;

  -- [ Tpope Plugins]
  -- I only use some that I used daily, you might want to add more depending on
  -- your usage. Complete-ing your vim experiences!
  tpope = true;
} --------------------------------------- [ MD ] ------------------------------

return codex
