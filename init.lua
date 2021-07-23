-- [ init.lua ]
-- Neovim Opinionated Configuration
-- First stratup, you need to run
-- :PackerInstall followed by :PackerCompile

-- [ File Structure ]
--   * nvim/
--     - colors/
--         ayu-core.vim
--     - lua/
--       + core/        -- core configuration
--       + modules/     -- modules [ base ] and [ plugins ]
--       + utils/       -- swiss-army-knife
--       + core.lua     -- your core configuration
--       init.lua


-- Utility
require('utils.util')
require('core')
require('core.highlights')
require('core.functions')
require('core.config')
require('core.binds')
require('core.modules')
