-- [ init.lua ]
-- Neovim Opinionated Configuration
-- First stratup, you need to run
-- :PackerInstall followed by :PackerCompile

-- [ File Structure ]
--   * nvim/
--     - colors/
--         ayu-core.vim
--     - lua/
--       + core/        -- where core configuration files resides
--       + modules/     -- modules [ base ] and [ plugins ] TODO at later date
--       + utils/       -- swiss-army-knife to help with wrinting functions
--       + core.lua     -- your core configuration < you should edit this file
--       init.lua

-- Utility
require('utils.util')
require('core')
require('core.highlights')
require('core.functions')
require('core.config')
require('core.binds')
require('core.modules')
