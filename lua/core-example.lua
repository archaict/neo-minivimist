-- [ Core Lua ] --

local M = {}
local codex = M

  -- [ CORE ]
  -- Core configuration that you can change, type is bool, string, and int
  -- in each respective field

codex.core = { -- [ Core configuration defaults ] ------------------------------

-- [ Essentials ] --------------------------------------------------------------

    init  = true,
    mouse = true,
    timeout = 1000,

-- [ Syntaxes ] ----------------------------------------------------------------

    syntax = true,
    completion = true,

-- [ Themes ] ------------------------------------------------------------------

    colorscheme = "ayu",
    dark_theme = true,
    transparency = true,

-- [ Fonts ] -------------------------------------------------------------------

    guifont = 'Iosevka SS08 Semibold',
    guifont_size = '12',
    comment_style = 'italic',

-- [ Lines ] -------------------------------------------------------------------

    tabline = 'toggle',
    tabline_colorize = false,

    tabline = { -- change to tabline | tabline_fill | tabline_selected
      cfg = 'NONE', cbg = 'NONE', cstyle = 'italic',
      fg = '#101010', bg = '#707070', style = 'italic',
    }, -- end of tabline_colorize

    max_column = 0,
    cursorline = true,
    bettersplits = true,

    -- column_color = 'guibg=#303030',
    -- cursorline_color = 'guibg=#303030',

-- [ StatusLine ] --------------------------------------------------------------

    history = 5000,
    show_mode = true,
    statusline = true,
    show_command = true,
    command_screen_height = 1,

-- [ Numbers ] -----------------------------------------------------------------

    number = true,
    relative_number = true,

-- [ Terminals ] ---------------------------------------------------------------

    terminal_shell = "/bin/zsh",
    smart_terminal = true,

-- [ Highlights ] --------------------------------------------------------------

    wildmenu = true,
    highlights = true,

-- [ Shiftings ] ---------------------------------------------------------------

    wrap = true,
    shifts = 2,
    indentation = true,

-- [ Spaces ] ------------------------------------------------------------------

    show_spaces = true,
    tab_to_space = true,
    show_characters = 'tab:» ,trail:·',

-- [ Clipboard ] ---------------------------------------------------------------

    system_clipboard = true,

-- [ Restore ] -----------------------------------------------------------------

    swap  = false,
    undo  = true,
    undodir  = '/undo',

-- [ NO-MESS ] -----------------------------------------------------------------

    shortmess = false,

-- [ Folds ] -------------------------------------------------------------------

    fold = true,
    fold_expr = '',
    fold_method = 'marker',

-- [ Scrolls ] -----------------------------------------------------------------

    scrolloff = 10,
    sidescrolloff= 4,

-- [ Pop-Up ] ------------------------------------------------------------------

  -- popup = true,
  -- popup_height = 10,

-- [ Sessions ] ----------------------------------------------------------------

    -- autosave = true,
    session_dir = "~/.local/share/nvim/sessions",
    session_path = "~/.local/share/nvim/sessions/obsessed",

-- [ Automate it! ] ------------------------------------------------------------

    auto_read_on_change = true,
    auto_change_directory = true,
    auto_resize_splits = true,
    hide_buffers_on_change = true,
    remove_whitespaces = true,
    remember_cursor_position =true,

-- [ Filetype ] ----------------------------------------------------------------

    filetype = true,

} ------------------------------------------------------------------------------

-- [ Keymaps ]

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

codex.modules = { -- [ Core keymaps defaults ] ---------------------------------
  netrw = true; -- enable netrw config
  tpope = true; -- enable tpope module
} --------------------------------------- [ MD ] -------------------------------

return codex
