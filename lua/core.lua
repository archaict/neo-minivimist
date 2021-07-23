-- Core Lua
-- Welcome to opinionated configuration files for vim
-- this is a minimalist version of my original configuration
-- hopefully without plugins and use all vim internals

local M = {}
local codex = M

  -- [ CORE ]
  -- These are core configurations that you can change,
  -- any suggestion is welcome.
  -- ( I'm not good with gits, so you might want to
  -- send it into the discussion page )

codex.core = { -- [ Core configuration defaults ] --------

-- [ Essentials ] ----------------------------------------
  init  = true,                 -- essentials
  mouse = true,                 -- enable or disable mouse
----------------------------------------------------------

-- [ Syntaxes ] ------------------------------------------
  syntax = true,                -- enable syntaxes
  completion = true,            -- enable completion
----------------------------------------------------------

-- [ Themes ] --------------------------------------------
  colorscheme = "ayu-core",     -- your colorscheme
  dark_theme = true,            -- enable dark_mode
----------------------------------------------------------

-- [ Fonts ] ---------------------------------------------
  guifont = 'Iosevka SS08 Semibold', -- font type
  guifont_size = '12',          -- font size
----------------------------------------------------------

-- [ Lines ] ---------------------------------------------
  tabline = false,              -- enable tab in top
  max_column = 80,              -- highglight max_column
  cursorline = true,            -- enable cursorline
  bettersplits = true,          -- splits below and right
----------------------------------------------------------

-- [ StatusLine ] ----------------------------------------
  show_mode = true,             -- show active mode
  statusline = true,            -- enable bottom statusline
  show_command = true,          -- show commands
  command_screen_height = 1,    -- height for commands
----------------------------------------------------------

-- [ Numbers ] -------------------------------------------
  number = true,
  relative_number = true,
----------------------------------------------------------

-- [ Terminals ] -----------------------------------------
  setup_terminal = true,        -- initialize terminal
  smart_terminal = true,        -- smarter terminal mode
----------------------------------------------------------

-- [ Highlights ] ----------------------------------------
  wildmenu = true,
  highlights = true,
----------------------------------------------------------

-- [ Shiftings ] -----------------------------------------
  wrap = true,                 -- wrap text around window
  shifts = 2,                  -- shifts amount for tabs
  indentation = true,          -- all indentation stuff
----------------------------------------------------------

-- [ Spaces ] --------------------------------------------
  show_spaces = true,
  tab_to_space = true,
  show_characters = 'tab:» ,trail:·',
----------------------------------------------------------

-- [ Clipboard ] -----------------------------------------
  system_clipboard = true,
----------------------------------------------------------

-- [ Restore ] -------------------------------------------
  swap  = false,
  undo  = true,                -- enable undofile & dirs
  undodir  = vim.fn.stdpath 'cache' .. '/undo',
----------------------------------------------------------

-- [ NO-MESS ] -------------------------------------------
  shortmess = true,
----------------------------------------------------------

-- [ Folds ] ---------------------------------------------
  fold = true,                 -- edit in config.lua
  fold_expr = '',
  fold_method = 'marker',
----------------------------------------------------------

-- [ Scrolls ] -------------------------------------------
  scrolloff = 10,              -- scroll offside verticals
  sidescrolloff= 4,            -- scroll offside horizontals
----------------------------------------------------------

-- [ Pop-Up ] --------------------------------------------
  popup = true,
  popup_height = 10,
----------------------------------------------------------


-- [ Automate it! ] --------------------------------------
  auto_read_on_change = true,
  auto_change_directory = true,
  auto_resize_splits = true,
  hide_buffers_on_change = true,
  remove_whitespaces = true,
  remember_cursor_position =true,
----------------------------------------------------------

-- [ Others ] --------------------------------------------
  history = 5000,
  timeout = true,
  filetype = true,
----------------------------------------------------------

} --------------------------------------------------------

  -- [ Keymaps ]
  -- Some keymaps are annoying o binds, especially those
  -- leader key, there're multiple fixme in here! #FIXME
  -- if you also notice, there's no codex prefixes here,
  -- this idea is taken from nvim_like_me. Check them out!

Keymaps = { ----------------------------------------------

--'autopairs',                 -- Closing the door
  'essentials',                -- Needed to reduce annoyance
  'movement',                  -- Movementes in NVI mode
  'shifting',                  -- Indentation and up down
  'tabs',                      -- Moving between tabs
  'buffers',                   -- Moving between buffers
  'terminal',                  -- Terminal movements
  'window',                    -- Navigate splits
  'quit',                      -- Do you need more desc?
  'netrw',                     -- Navigation from netrw

} --------------------------------------- [ KM ] ---------

  -- [ Modules ]
  -- This is builtins, tho you can add more by using
  -- plugins, I didn't include those for this one, but
  -- you can add it later, I recommend you read two
  -- plugin manager, packer and paq

codex.modules = { ----------------------------------------

  -- [ Netrw ]
  -- Since this one is builtins, why not use this one?
  -- disable this if you want to use NerdTree or NvimTree.
  netrw = true;

  -- [ Tpope Plugins]
  -- I only use some that I used daily, you might want to
  -- add more depending on your usage. Complete-ing
  -- your vim experiences!
  tpope = true;
} --------------------------------------- [ MD ] ---------

return codex
